# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect, get_object_or_404
from django.template import loader
from django.http import HttpResponse, Http404, HttpResponseRedirect

from crowdfunding.forms import CreateCampaignForm
from .models import Campaign, CampaignSector
from venturelift_profiles.models import Business
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView, ListView, FormView, DetailView
from django.core.urlresolvers import resolve
from django.core.urlresolvers import reverse
from django.views.generic.edit import CreateView, UpdateView, FormMixin
from django.contrib.auth.mixins import LoginRequiredMixin
from django.utils import timezone
from django.core.mail import send_mail, EmailMultiAlternatives
from django.db.models import Q

# Create your views here.
@login_required
def index(request):
    if request.user.is_authenticated() and not (request.user.business_creator.exists()) and not (
            request.user.supporter_creator.exists()) and not (request.user.investor_creator.exists()):
        return redirect(reverse('profile_create'))

    campaign_list = Campaign.objects.filter(campaign_status='APPROVED')
    campaign_sectors = CampaignSector.objects.all()
    template = loader.get_template('crowdfunding/investor/index.html')

    if request.user.is_authenticated() and request.user.business_creator.exists():
            campaign_list = Campaign.objects.filter(campaign_owner=request.user).order_by('-created_at')
            template = loader.get_template('crowdfunding/business/index.html')

    context = {
        'campaign_list': campaign_list,
        'campaign_sectors': campaign_sectors
    }
    return HttpResponse(template.render(context, request))


@login_required
def business_campaign_view(request, campaign_id):
    campaign_data = Campaign.objects.get(id=campaign_id)
    campaign_sectors = CampaignSector.objects.all()
    template = loader.get_template('crowdfunding/business/view_campaign.html')

    context = {
        'campaign_data': campaign_data,
        'campaign_sectors': campaign_sectors,
    }
    return HttpResponse(template.render(context, request))


@login_required
def filter_campaign_view(request):
    campaign_data = Campaign.objects.filter(campaign_name__contains=request.POST['campaign_name'])
    if empty(request.POST['sector']):
        sector_data = CampaignSector.objects.filter(id=request.POST['sector'])
        campaign_data = Campaign.objects.filter(Q(sector=sector_data) | Q(campaign_name__contains=request.POST['campaign_name']))
    campaign_sectors = CampaignSector.objects.all()
    template = loader.get_template('crowdfunding/business/index.html')

    context = {
        'campaign_list': campaign_data,
        'campaign_sectors': campaign_sectors
    }
    return HttpResponse(template.render(context, request))

def empty(value):
    try:
        value = int(value)
    except ValueError:
        pass
    return bool(value)

class CreateCampaignView(LoginRequiredMixin, CreateView):
    template_name = 'crowdfunding/business/create_campaign.html'
    form_class = CreateCampaignForm

    def form_valid(self, form):
        self.object = form.save(commit=False)
        self.object.created_at = timezone.now()
        self.object.total_funds_received = 0
        self.object.campaign_status = 'OPENED'
        self.object.funds_disbursement_status = 'PENDING'
        self.object.campaign_owner = self.request.user
        self.object.approval_status = "PENDING"
        self.object.approved = False
        self.object.rejected = False
        self.object.save()

        #campaign_path = reverse('admin:campaign', args=(self.object.id,))

        subject, from_email, to = 'Campaign Approval Request', 'tryventuretestmail@gmail.com', self.request.user.email
        text_content = 'Campaign ' + self.object.campaign_name + ' has been created and is pending approval'
        html_content = '<p>Campaign '+ self.object.campaign_name + ' has been created and is pending approval</p><p>Click <a href="http://127.0.0.1:8000/en/admin/crowdfunding/campaign/'+str(self.object.id)+'/change/" target="_blank">here</a> to action on it.</p>'
        msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
        msg.attach_alternative(html_content, "text/html")
        msg.send()

        return redirect(reverse('crowdfunding:index'))

    def form_invalid(self, form):
        errors = form.errors
        raise errors

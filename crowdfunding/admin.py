# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from crowdfunding.models import *

# Register your models here.
class CampaignSectorAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ['name', 'added_by']
    #readonly_fields = ["added_by"]
    exclude = ['added_by']

    def save_model(self, request, obj, form, change):
        obj.added_by = request.user
        obj.save()


class CampaignConfigurationAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ['name', 'transaction_fee_type','transaction_fee','processing_fee_type','processing_fee','added_by']
    exclude = ['added_by']

    def save_model(self, request, obj, form, change):
        obj.added_by = request.user
        obj.save()


class CampaignAdmin(admin.ModelAdmin):
    list_display = ('campaign_name', 'sector', 'campaign_owner','target_amount','duration','campaign_status')
    list_filter = ['created_at','sector','campaign_owner']
    search_fields = ['sector','campaign_owner']
    readonly_fields = ["campaign_status","created_at","total_funds_received","funds_disbursement_status","campaign_owner","approved_by","rejected_by"]
    exclude = ['approved','rejected']

    def has_add_permission(self, request, obj=None):
        return False

    def save_model(self, request, obj, form, change):
        if getattr(obj, 'approved') is False and getattr(obj, 'rejected') is False:
            if form.cleaned_data['approval_status'] == "APPROVE":
                obj.approved = True
                obj.approved_by = request.user
                obj.campaign_status = 'APPROVED'
                obj.save()
            elif form.cleaned_data['approval_status'] == "REJECT":
                obj.rejected = True
                obj.rejected_by = request.user
                obj.campaign_status = 'REJECTED'
                obj.save()


admin.site.register(CampaignSector, CampaignSectorAdmin)
admin.site.register(CampaignConfiguration, CampaignConfigurationAdmin)
admin.site.register(Campaign, CampaignAdmin)
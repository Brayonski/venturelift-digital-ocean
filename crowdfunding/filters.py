from .models import Campaign
from crowdfunding.models import *
import django_filters


class CampaignFilter(django_filters.FilterSet):
    class Meta:
        model = Campaign
        fields = ['campaign_name', 'campaign_type', ]
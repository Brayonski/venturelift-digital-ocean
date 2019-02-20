from __future__ import absolute_import, print_function, unicode_literals
from django.conf.urls import include, url
from django.contrib.auth import views as auth_views
from venturelift_profiles import views

urlpatterns = [
    url(r'^accounts/', include('django_registration.backends.activation.urls')),
    url(r'^accounts/', include('django.contrib.auth.urls')),
    url(r'^logout/$', auth_views.logout, name='logout'),
    url(r'^profile/$', views.SummaryView.as_view(), name='profile_summary'),
    url(r'^supporter/list/$', views.SupporterView.as_view(), name='supporter_list'),
    url(r'^business/list/$', views.BusinessView.as_view(), name='business_list'),
    url(r'^supporter/follow/(?P<pk>\d+)/$', views.SupporterView.as_view(), name='supporter_follow'),
    url(r'^supporter/unfollow/(?P<pk>\d+)/$', views.SupporterView.as_view(), name='supporter_unfollow'),
    url(r'^business/follow/(?P<pk>\d+)/$', views.BusinessView.as_view(), name='business_follow'),
    url(r'^business/unfollow/(?P<pk>\d+)/$', views.BusinessView.as_view(), name='business_unfollow'),
    url(r'^oauth/', include('social_django.urls', namespace='social')),
    url(r'^post-like/(?P<pk>\d+)/$', views.SummaryView.as_view(), name='like_post'),
    url(r'^post-dislike/(?P<pk>\d+)/$', views.SummaryView.as_view(), name='dislike_post'),
    url(r'^create-business/step-1/$', views.CreateBusinessView.as_view(), name='create_business_step1'),
    url(r'^create-business/step-1/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step1'),
    url(r'^create-business/step-2/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step2'),
    url(r'^create-business/step-3/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step3'),
    url(r'^create-business/step-4/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step4'),
    url(r'^create-business/step-5/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step5'),
    url(r'^create-business/step-6/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step6'),
    url(r'^create-business/step-7/(?P<pk>\d+)/$', views.UpdateBusinessView.as_view(), name='update_business_step7'),
    url(r'^my-business/$', views.MyBusinessView.as_view(), name='my_business'),
    url(r'^profile-create/$', views.ProfileCreateView.as_view(), name='profile_create'),
    url(r'^supporter-create/$', views.SupporterCreateView.as_view(), name='supporter_create')
]
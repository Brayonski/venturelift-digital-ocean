# -*- coding: utf-8 -*-
# Generated by Django 1.11.17 on 2020-04-29 07:29
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import djangocms_text_ckeditor.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Attendees',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('registration_date', models.DateTimeField(auto_now_add=True)),
                ('attendee', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Event Attendees',
                'verbose_name_plural': 'Event Attendees',
            },
        ),
        migrations.CreateModel(
            name='EventCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('published', models.BooleanField(default=True)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='event_category_author', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Event Category',
                'verbose_name_plural': 'Event Categories',
            },
        ),
        migrations.CreateModel(
            name='Events',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('published', models.BooleanField(default=False)),
                ('description', djangocms_text_ckeditor.fields.HTMLField()),
                ('start_date', models.DateTimeField()),
                ('end_date', models.DateTimeField()),
                ('location', models.CharField(max_length=100)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('registration_url', models.CharField(blank=True, max_length=50, null=True)),
                ('registration_required', models.CharField(choices=[('NO', 'NO'), ('YES', 'YES')], max_length=100)),
                ('event_banner', models.FileField(blank=True, help_text='Event Banners', null=True, upload_to='pic_folder/')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('category', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='events.EventCategory')),
            ],
            options={
                'verbose_name': 'VLA Events Manager',
                'verbose_name_plural': 'VLA Events Manager',
            },
        ),
        migrations.CreateModel(
            name='NetworkEvents',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('published', models.BooleanField(default=False)),
                ('organization_name', models.CharField(max_length=100)),
                ('description', djangocms_text_ckeditor.fields.HTMLField()),
                ('start_date', models.DateTimeField()),
                ('end_date', models.DateTimeField()),
                ('location', models.CharField(max_length=100)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('registration_url', models.URLField(blank=True, max_length=250, null=True)),
                ('registration_required', models.CharField(choices=[('NO', 'NO'), ('YES', 'YES')], max_length=100)),
                ('event_banner', models.FileField(blank=True, help_text='Event Banners', null=True, upload_to='pic_folder/')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('category', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='network_events', to='events.EventCategory')),
            ],
            options={
                'verbose_name': 'Network Events Manager',
                'verbose_name_plural': 'Network Events Manager',
            },
        ),
        migrations.AddField(
            model_name='attendees',
            name='event',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='event_attendee', to='events.Events'),
        ),
    ]

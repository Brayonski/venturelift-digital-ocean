from django.conf import settings
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
from django.template import Context
from django.template.loader import render_to_string


def send_business_connect_request_email(business, investor, subject, from_email, to):
    print(to)
    text_content = 'User ' + investor + ' has requested connection to '+business
    html_content = '<p>User ' + investor + \
        ' has requested connection to '+business+'</p>'
    msg = EmailMultiAlternatives(subject, text_content, from_email, to)
    msg.attach_file('doc/pdf-test.pdf')
    msg.attach_alternative(html_content, "text/html")
    return msg.send()


def send_investor_approved_connect_email(business, investor, subject, from_email, to):
    text_content = 'Your request for connection to ' + business + \
        ' has been approved.You can now access documents and contacts provided by the business owner from the portal'
    html_content = '<p>Your request for connection to ' + business + \
        ' has been approved.You can now access documents and contacts provided by the business owner from the portal</p>'
    msg = EmailMultiAlternatives(subject, text_content, from_email, to)
    msg.attach_alternative(html_content, "text/html")
    return msg.send()

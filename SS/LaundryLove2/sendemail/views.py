# sendemail/views.py
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from .forms import ContactForm
from environs import Env
from django.contrib import messages

env = Env() 
env.read_env() 

def contactView(request):
    if request.method == "GET":
        form = ContactForm()
    else:
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = form.cleaned_data["subject"]
            from_email = form.cleaned_data["from_email"]
            message = form.cleaned_data['message']
            try:
                send_mail(subject, message, env.str("EMAIL_FROM"), [from_email, 'lanabracken@yahoo.com']) #will change to laundry love emails
            except BadHeaderError:
                messages.success(request, 'Something went wrong. Please close browser and try again.')
                return HttpResponse("Invalid header found.")
            messages.success(request, 'Thanks for the information! Expect a response within 24 hours. A copy of your request was emailed to you.')
            return redirect("success")
    return render(request, "email.html", {"form": form})

def successView(request):
    return redirect(('home'))
     
from django.shortcuts import render, redirect
from .models import Car, Car_secondary_img
from django.core.mail import send_mail, EmailMessage
from django.http import HttpResponse
import requests

# Create your views here.

def home (request):
	cars = Car.objects.all()
	return render(request, 'home.html', {'cars':cars})

def order_in_progress(request):
	return render(request, 'order_in_progress.html')

def car (request, car_slug):
	try:
		car = Car.objects.get(slug = car_slug)
		imgs = Car_secondary_img.objects.all().filter(car = car)
	except Exception as e:
		raise e
	return render(request, 'car_page.html',{'car':car,'imgs':imgs})

def send_order(request):
	name = request.GET['person_name']
	phone_number = request.GET['phone_number']
	send_mail('Звявка на аренду', name + ' ' + phone_number, 'yaartur@list.ru', ['yaartur@list.ru'])
	# email = EmailMessage('заявка на аренду', name + ' ' + phone_number,	to = ['teSedge99@gmail.com'])
	# email.send()
	return redirect('order_in_progress')


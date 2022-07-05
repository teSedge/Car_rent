from django.urls import path
from . import views


urlpatterns = [
path('', views.home, name = 'home'),
path('cars/<slug:car_slug>', views.car, name='car'),
path('success/', views.send_order, name='send_order'),
path('order_in_progress/', views.order_in_progress, name='order_in_progress'),
]
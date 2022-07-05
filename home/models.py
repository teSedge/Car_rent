from django.db import models
from django.urls import reverse
from phonenumber_field.modelfields import PhoneNumberField
from django.conf import settings

# Create your models here.

class Car (models.Model):
	name = models.CharField(max_length = 250)
	slug = models.CharField(max_length = 250)
	discription = models.TextField(blank = True)
	main_image = models.ImageField(upload_to = 'car', blank = True)	
	price_1_2 = models.CharField(max_length = 250, blank = True, default = '')
	price_3_10 = models.CharField(max_length = 250, blank = True, default = '')
	price_11_20 = models.CharField(max_length = 250, blank = True, default = '')
	acceleration = models.FloatField(blank = True, null = True)
	power = models.IntegerField(blank = True, null = True)
	oil = models.CharField(max_length = 250, blank = True, null = True)
	wd = models.CharField(max_length = 250, blank = True, null = True)
	year = models.CharField(max_length = 250, blank = True, null = True)

	def get_url(self):
		return reverse('car', args = [self.slug])

	def __str__(self):
		return self.name

class Car_secondary_img(models.Model):
	name = models.CharField(max_length = 250)
	car = models.ForeignKey(Car, on_delete = models.CASCADE)
	image = models.ImageField(upload_to = 'car', blank = True)
	N = models.IntegerField()
	
	class Meta:
		ordering = ('name',)

	def __str__(self):
		return self.name

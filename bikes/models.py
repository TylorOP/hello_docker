from django.db import models

# Create your models here.
class BikeModel(models.Model):
    bikename = models.CharField(max_length=25)
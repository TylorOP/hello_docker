from django.contrib import admin
from .models import BikeModel
# Register your models here.
class BikeAdmin(admin.ModelAdmin):
    list_display = ['bikename']


admin.site.register(BikeModel,BikeAdmin)
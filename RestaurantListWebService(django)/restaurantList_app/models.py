from django.db import models


class Restaurant(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=50)
    country = models.CharField(max_length=50)
    phone_number = models.CharField(max_length=20)

    def __str__(self):
        return self.name
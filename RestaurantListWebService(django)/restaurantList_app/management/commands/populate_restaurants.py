from django.core.management.base import BaseCommand
from restaurantList_app.models import Restaurant
import random

class Command(BaseCommand):
    help = 'Populate the database with dummy restaurant data'

    def handle(self, *args, **kwargs):
        names = ['Restaurant A', 'Restaurant B', 'Restaurant C', 'Restaurant D', 'Restaurant E']
        addresses = ['123 Main St', '456 Elm St', '789 Oak St', '101 Maple St', '202 Pine St']
        cities = ['City1', 'City2', 'City3', 'City4', 'City5']
        countries = ['Country1', 'Country2', 'Country3', 'Country4', 'Country5']
        phone_numbers = ['123-456-7890', '234-567-8901', '345-678-9012', '456-789-0123', '567-890-1234']

        for _ in range(100):  # Adjust the range for the number of entries you want
            name = random.choice(names)
            address = random.choice(addresses)
            city = random.choice(cities)
            country = random.choice(countries)
            phone_number = random.choice(phone_numbers)

            Restaurant.objects.create(
                name=name,
                address=address,
                city=city,
                country=country,
                phone_number=phone_number
            )

        self.stdout.write(self.style.SUCCESS('Successfully populated the database with dummy restaurant data'))
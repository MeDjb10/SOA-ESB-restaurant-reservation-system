from django.urls import path, include
from rest_framework.routers import DefaultRouter
from restaurantList_app import views

router = DefaultRouter()
router.register(r'restaurants', views.RestaurantViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
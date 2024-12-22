from django.urls import path
from django.contrib import admin

from home.views import BlogView

urlpatterns = [
    path('blog/', BlogView.as_view()),
]
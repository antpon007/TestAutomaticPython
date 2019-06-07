"""myproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from boards import views

app_name = 'boards'
urlpatterns = [

    path('admin/', admin.site.urls),
    path('boards/', views.IndexView.as_view(), name='boards'),
    # ex: /boards/5/
    path('boards/<int:pk>/', views.DetailView.as_view(), name='detail'),
    # ex: /boards/5/results/
    path('boards/<int:pk>/results/', views.ResultsView.as_view(), name='results'),
    # ex: /boards/5/vote/
    path('boards/<int:question_id>/vote/', views.vote, name='vote'),
    path('pqr/', views.IndexPQR, name='pqr'),
    path('pqr/addPQR/', views.newPQR, name='newPQR'),
    path('pqr/search/', views.search, name='search'),
    path('pqr/searchPQR/', views.searchPQR, name='searchPQR'),
    path('pqr/add/', views.add, name='add'),
    path('pqr/<int:pqr_id>/addAnswer/', views.addAnswer, name='addAnswer'),
]

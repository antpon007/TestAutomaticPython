import datetime
from django.db import models
from django.utils import timezone
from phone_field import PhoneField
# Create your models here.


class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return self.question_text

    def was_published_recently(self):
        now = timezone.now()
        return now - datetime.timedelta(days=1) <= self.pub_date <= now


class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)

    def __str__(self):
        return self.choice_text


class PQR(models.Model):
    uuid = models.CharField(max_length=36)
    name = models.CharField(max_length=100)
    cellphone = PhoneField(blank=True, help_text='Contact phone number')
    pqr_text = models.CharField(max_length=2000)
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return self.pqr_text


class Answer(models.Model):
    pqr = models.ForeignKey(PQR, on_delete=models.CASCADE)
    answer_text = models.CharField(max_length=2000)
    answer_date = models.DateTimeField('date published')

    def __str__(self):
        return self.answer_text

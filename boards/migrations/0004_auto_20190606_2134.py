# Generated by Django 2.2.1 on 2019-06-07 02:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('boards', '0003_auto_20190603_1709'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pqr',
            name='cellphone',
            field=models.CharField(max_length=30),
        ),
    ]

# Generated by Django 4.1.7 on 2023-08-10 11:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gamequeue', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='queuedperson',
            name='finished_at',
            field=models.DateTimeField(null=True),
        ),
        migrations.AlterField(
            model_name='queuedperson',
            name='playing_at',
            field=models.DateTimeField(null=True),
        ),
    ]

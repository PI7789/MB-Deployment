# Generated by Django 5.2 on 2025-04-07 09:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0002_stock_productstock'),
    ]

    operations = [
        migrations.AlterField(
            model_name='stock',
            name='ProductStock',
            field=models.IntegerField(max_length=100),
        ),
    ]

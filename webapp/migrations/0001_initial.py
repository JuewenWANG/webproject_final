# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2018-12-13 02:11
from __future__ import unicode_literals

import django.contrib.auth.models
import django.contrib.auth.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0008_alter_user_username_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=30, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=30, verbose_name='last name')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('email', models.EmailField(blank=True, max_length=254, null=True, verbose_name='e-mail')),
                ('mobile', models.CharField(blank=True, max_length=10, null=True, unique=True, verbose_name='numéro de telephone')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'utilisateur',
                'verbose_name_plural': 'utilisateur',
                'ordering': ['-id'],
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Caritem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'verbose_name': 'items dans liste de souhaits',
                'verbose_name_plural': 'items dans liste de souhaits',
            },
        ),
        migrations.CreateModel(
            name='Difficulty',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=30, null=True, verbose_name='nom de difficulté')),
                ('index', models.IntegerField(default=1, verbose_name='ordre de difficulté')),
            ],
            options={
                'verbose_name': 'difficulté',
                'verbose_name_plural': 'difficulté',
                'ordering': ['index'],
            },
        ),
        migrations.CreateModel(
            name='Need',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=30, null=True, verbose_name='nom de besoin')),
                ('index', models.IntegerField(default=1, verbose_name='ordre de besoin')),
            ],
            options={
                'verbose_name': 'besoin',
                'verbose_name_plural': 'besoin',
                'ordering': ['index'],
            },
        ),
        migrations.CreateModel(
            name='Technology',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=100, null=True, verbose_name='nom')),
                ('desc', models.TextField(blank=True, null=True, verbose_name='description')),
                ('price', models.CharField(blank=True, max_length=100, null=True, verbose_name='prix')),
                ('source', models.CharField(blank=True, max_length=200, null=True, verbose_name='source')),
                ('article', models.TextField(blank=True, null=True, verbose_name='article')),
                ('company', models.CharField(blank=True, max_length=200, null=True, verbose_name='entreprise')),
                ('video', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(default='technologies/default.jpg', null=True, upload_to='technologies/', verbose_name='url image')),
                ('show', models.BooleanField(default=True)),
                ('difficulty', models.ManyToManyField(to='webapp.Difficulty', verbose_name='difficulté')),
                ('need', models.ManyToManyField(blank=True, to='webapp.Need', verbose_name='besoin')),
            ],
            options={
                'verbose_name': 'technologie',
                'verbose_name_plural': 'technologie',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Technotype',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=30, null=True, verbose_name='nom de type')),
                ('index', models.IntegerField(default=1, verbose_name='ordre de type')),
            ],
            options={
                'verbose_name': 'type de technologie',
                'verbose_name_plural': 'type de technologie',
                'ordering': ['index'],
            },
        ),
        migrations.AddField(
            model_name='technology',
            name='technotype',
            field=models.ManyToManyField(blank=True, to='webapp.Technotype', verbose_name='type de technologie'),
        ),
        migrations.AddField(
            model_name='caritem',
            name='technology',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='webapp.Technology', verbose_name='items dans liste de souhaits'),
        ),
    ]

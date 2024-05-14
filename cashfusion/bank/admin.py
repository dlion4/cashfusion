from django.contrib import admin

# Register your models here.
from .models  import (Account,
Transaction)

admin.site.register(Account)
class Account(admin.ModelAdmin):
    list_display = ("name", "balance", "owner")

admin.site.register(Transaction)
class Transaction(admin.ModelAdmin):
    list_display = ("account", "amount", "type")


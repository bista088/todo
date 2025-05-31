from django.http import HttpResponse


def index(request):
    return HttpResponse("Hello, world. Deepak is here to say hello to everyone.")
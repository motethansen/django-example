from django.http import HttpResponse

def home(request):
   text = """<h1>Django Example</h1>"""
   return HttpResponse(text)
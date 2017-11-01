from django.http import HttpResponse
from django.template import loader


def index(request):
    chart_data = [1, 2, 3]
    template = loader.get_template('chart/index.html')
    context = {
        'chart_data': chart_data,
    }
    return HttpResponse(template.render(context, request))
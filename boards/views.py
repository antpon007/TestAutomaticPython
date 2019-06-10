from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.views import generic
from django.utils import timezone
import uuid
# Create your views here.

from .models import Question, Choice, PQR, Answer


class IndexView(generic.ListView):
    template_name = 'boards/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """
        Return the last five published questions (not including those set to be
        published in the future).
        """
        return Question.objects.filter(
            pub_date__lte=timezone.now()
        ).order_by('-pub_date')[:5]


def home(request):
    return HttpResponse('Hello, World!')


class DetailView(generic.DetailView):
    model = Question
    template_name = 'boards/detail.html'

    def get_queryset(self):
        """
        Excludes any questions that aren't published yet.
        """
        return Question.objects.filter(pub_date__lte=timezone.now())


class ResultsView(generic.DetailView):
    model = Question
    template_name = 'boards/results.html'


def vote(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    try:
        selected_choice = question.choice_set.get(
            pk=request.POST['choice'])
    except (KeyError, Choice.DoesNotExist):
        # Redisplay the question voting form.
        return render(request, 'boards/detail.html', {
            'question': question,
            'error_message': "You didn't select a choice.",
        })
    else:
        selected_choice.votes += 1
        selected_choice.save()
        # Always return an HttpResponseRedirect after successfully dealing
        # with POST data. This prevents data from being posted twice if a
        # user hits the Back button.
        return HttpResponseRedirect(reverse('results', args=(question.id,)))


def IndexPQR(request):
    return render(request, 'pqr/index.html')


def newPQR(request):
    return render(request, 'pqr/addPQR.html')


def search(request):
    return render(request, 'pqr/search.html',)


def searchPQR(request):
    try:
        pqr = get_object_or_404(PQR, uuid=request.POST['pqr_uuid'])
    except:
        return render(request, 'pqr/search.html', {
            'error_message': "Error invalid PQR. " + request.POST['pqr_uuid'],
        })
    else:
        # Always return an HttpResponseRedirect after successfully dealing
        # with POST data. This prevents data from being posted twice if a
        # user hits the Back button.
        return render(request, 'pqr/search.html', {'pqr': pqr})


def add(request):
    try:
        q = PQR(uuid=str(uuid.uuid4().hex),
                name=str(request.POST['name']),
                cellphone=str(request.POST['cellphone']),
                pqr_text=str(request.POST['comment']),
                pub_date=timezone.now())
        q.save()
    except:
        return render(request, 'pqr/addPQR.html', {
            'error_message': "Error save PQR.",
        })
    else:
        # Always return an HttpResponseRedirect after successfully dealing
        # with POST data. This prevents data from being posted twice if a
        # user hits the Back button.
        return render(request, 'pqr/addPQR.html', {'id': q.id,
                                                   'uuid': q.uuid,
                                                   'message': "PQR successfully saved - N° PQR: " + q.uuid, })


def addAnswer(request, pqr_id):
    try:
        pqr = get_object_or_404(PQR, pk=pqr_id)
        pqr.answer_set.create(answer_text=str(request.POST['comment']),
                              answer_date=timezone.now())
    except:
        return render(request, 'pqr/search.html', {
            'error_message': "Error save answer.",
        })
    else:
        # Always return an HttpResponseRedirect after successfully dealing
        # with POST data. This prevents data from being posted twice if a
        # user hits the Back button.
        return render(request, 'pqr/search.html', {'pqr': pqr,
                                                   'message': "answer successfully saved ", })

from django.shortcuts import render, redirect
import core


def home_root(request):
    return render(request, 'index.html')

def visualdl_test(request):
    log_writter = core.LogWriter('./tmp/sdk_test', 1)
    train_log_writer = log_writter.as_mode('train')
    scalar = train_log_writer.new_scalar_int('s1')
    scalar.add_record(0, 1)
    scalar.add_record(1, 10)
    scalar.add_record(2, 20)
    scalar.add_record(3, 30)

    log_reader = core.LogReader('./tmp/sdk_test')
    train_log_reader = log_reader.as_mode('train')
    scalar_reader = train_log_reader.get_scalar_int('s1')
    message = '<b><u>VisualDL SDK Results:</u></b> <br/> <ul><li>modes: %s </li><li> tags: %s </li><li> records: %s</li></ul>' % \
              (train_log_reader.modes(),
               train_log_reader.tags('scalar'),
               scalar_reader.records())

    return render(request, 'index.html', { 'message': message} )
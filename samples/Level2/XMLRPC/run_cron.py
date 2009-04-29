'''

added a crontab that runs this script.
basically checks every 10 minutes whether the server is running, if not, relaunches the server.

'''
import os

user = os.environ['LOGNAME'] # your username
_file = '/home/maxturnheim/webapps/pythonocc_xmlrpc/garbage_server.py' # change this to the correct script you'd like to keep running

if _file not in os.popen('ps -acf -u ' + user).read():
    os.system('python %s &' % _file)
    print 'launched', _file
else:
    print _file, 'is running nice and smooth'

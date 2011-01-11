'''
Created on May 13, 2010

@author: henrik
'''
from django.http import HttpResponse
from django.conf import settings
from django.utils import translation
from django.core.urlresolvers import get_callable
from jinja2 import FileSystemLoader, Environment, PackageLoader, ChoiceLoader
import docutils
from sphinx.environment import BuildEnvironment

 
loader_array = []
for pth in getattr(settings, 'TEMPLATE_DIRS', ()):
    loader_array.append(FileSystemLoader(pth))
 
for app in settings.INSTALLED_APPS:
    loader_array.append(PackageLoader(app))
 
default_mimetype = getattr(settings, 'DEFAULT_CONTENT_TYPE')
global_exts = getattr(settings, 'JINJA_EXTS', ())
env = Environment(extensions=global_exts, loader=ChoiceLoader(loader_array))


if 'jinja2.ext.i18n' in global_exts:
    env.install_gettext_translations(translation)
 
global_imports = getattr(settings, 'JINJA_GLOBALS', ())
for imp in global_imports:
    method = get_callable(imp)
    method_name = getattr(method,'jinja_name',None)
    if not method_name == None:
        env.globals[method_name] = method
    else:
        env.globals[method.__name__] = method
 
global_filters = getattr(settings, 'JINJA_FILTERS', ())
for imp in global_filters:
    method = get_callable(imp)
    method_name = getattr(method,'jinja_name',None)
    if not method_name == None:
        env.filters[method_name] = method
    else:
        env.filters[method.__name__] = method
 
global_tests = getattr(settings, 'JINJA_TESTS', ())
for imp in global_tests:
    method = get_callable(imp)
    method_name = getattr(method,'jinja_name',None)
    if not method_name == None:
        env.tests[method_name] = method
    else:
        env.tests[method.__name__] = method
        
        
def render_to_string(filename, context={}):
    template = env.get_template(filename)
    rendered = template.render(**context)
    return rendered
 
def render_to_response(filename, context={}, request=None, mimetype=default_mimetype):
    if request:
        context['request'] = request
        context['user'] = request.user
    rendered = render_to_string(filename, context)
    return HttpResponse(rendered,mimetype=mimetype)




def rst(s):
    """
    Add in the restructured text filter.
    This was in Jinja1.1, but somehow got lost in jinja2
    """
    
    
    import urllib
    from docutils.core import publish_parts
    from server.directives import desc, code, other
    from sphinx import environment
    from sphinx.config import Config
    #docutils.frontend.Values.env = BuildEnvironment("","", Config(None, None, None, None))
    
    
    #try:
    s = str(s.encode("utf-8"))
        #try:
    parts = publish_parts(source=s, writer_name='html4css1')
    return str(parts['fragment'])
        #except:
        #    return "<code>%s</code>" % s
    #except:
    #  return "Error decoding comment"
  
  
env.filters['rst'] = rst
env.filters['restructuredtext'] = rst
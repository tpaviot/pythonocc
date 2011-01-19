
from django.contrib import admin
from django.conf.urls.defaults import patterns, include
admin.autodiscover()

#urlpatterns = patterns('',
#    (r'^modules/$', 'server.source.views.modules'),
#    (r'^module/(?P<module_name>\w+)/$', 'server.source.views.module'),
#   (r'^module/(?P<module_name>\w+)/declarations/$', 'server.source.views.module_declarations'),
#    (r'^module/(?P<module_name>\w+)/declaration/(?P<decl_name>\w+)$', 'server.source.views.module_declaration'),
#    ),
#)

urlpatterns = patterns('',
                       
                       (r'^occ_modules/(?P<queries>.+)$', 'server.source.views.api_query'),
                       (r'^occ_modules/', 'server.source.views.modules_index'),
                       (r'^admin/', include(admin.site.urls)))


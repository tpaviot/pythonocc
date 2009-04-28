import xmlrpclib
import sys
import pickle
from OCC.TopoDS import *
from OCC.Display.wxSamplesGui import add_menu, display, start_display, add_function_to_menu

def get_box(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")
    dumped_box = shape_factory.getBox(10.,10.,10.)
    box = pickle.loads(dumped_box)
    display.DisplayShape(box)

def get_sphere(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")
    dumped_sphere = shape_factory.getSphere(50.)
    sphere = pickle.loads(dumped_sphere)
    display.DisplayShape(sphere)

def get_surface_from_revolution(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")    
    dumped_surf = shape_factory.getSurfaceFromRevolution()
    surf = pickle.loads(dumped_surf)
    display.DisplayShape(surf)
    
def exit(event=None):
    sys.exit()
    
if __name__=='__main__':
    add_menu('geometry')
    add_function_to_menu('geometry',get_box)
    add_function_to_menu('geometry',get_sphere)
    add_function_to_menu('geometry',get_surface_from_revolution)
    add_function_to_menu('geometry',exit)
    start_display()

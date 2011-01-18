modules=[
    'Adaptor2d',
    'GProp',
    'Geom2d',
    'Geom2dAdaptor',
    'Geom2dLProp',
    'LProp',
    'TColGeom2d',
    'TopAbs'
    ]

import sys
import os, os.path
from distutils import sysconfig

for module in modules:
    modulepath = os.path.join(sysconfig.get_python_lib(),'OCC','%s.py'%module)
    if os.path.isfile(modulepath):
        exec("from OCC.%s import *"%module)
        globals()['%s'%module] = sys.modules['OCC.%s'%module]
    else:
        print "Module %s not found."%module

            


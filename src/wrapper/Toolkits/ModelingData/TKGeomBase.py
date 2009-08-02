modules=[
    'AdvApp2Var',
    'AppCont',
    'AppDef',
    'AppParCurves',
    'Approx',
    'BndLib',
    'CPnts',
    'Extrema',
    'FEmTool',
    'GC',
    'GCE2d',
    'GCPnts',
    'Geom2dConvert',
    'GeomConvert',
    'GeomLib',
    'GeomProjLib',
    'GeomTools',
    'Hermit',
    'IntAna',
    'IntAna2d',
    'ProjLib',
    'gce',
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

            


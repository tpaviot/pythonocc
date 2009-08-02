modules = [
'BSplCLib',
'BSplSLib',
'Bnd',
'CSLib',
'Convert',
'ElCLib',
'ElSLib',
'GeomAbs',
'PLib',
'Poly',
'Precision',
'TColgp',
'TopLoc',
'gp',
'math']

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

            


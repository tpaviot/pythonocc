##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import threading
import random
import time
from OCC.BRepPrimAPI import *

display.EraseAll()

def CreateBox():
    time.sleep(random.random()*10)
    b = BRepPrimAPI_MakeBox(random.random()*50.,random.random()*50.,random.random()*50.).Shape()
    display.DisplayShape(b)
    
for i in range(500):
    thread = threading.Thread(None, CreateBox, None,())
    thread.start()

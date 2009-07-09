##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.Display.wxSamplesGui import start_display, display, add_function_to_menu, add_menu
from OCC.TPrsStd import *
from OCC.TNaming import *
from wx import SafeYield

class Presentation(object):
    """ For rendering geometry
    """
    def __init__(self,context):
        self.root = context.doc.Main().Root()
        self.viewer = TPrsStd_AISViewer().New(self.root, display.Context_handle).GetObject()
        self.pres = [] #a list of all objects currently displayed

    def register_object(self,obj,color=0):
        result_label = obj.GetLastFunction().GetObject().GetEntry().FindChild(2)
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
        prs.SetColor(color)
        prs.Display(True)
        self.pres.append(prs)
        display.FitAll()
        return prs

    def update(self):
        for prs in self.pres:
            prs.Update()
        self.viewer.Update()
        display.FitAll()
        SafeYield() #to prevent window freeze 
    

##Copyright 2009-2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.BRep import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.BRepBuilderAPI import *
from OCC.BRepMesh import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.TopAbs import *
from OCC.TopLoc import *
from OCC.Poly import *
from OCC.TColgp import *
from OCC.gp import *
from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()


def simple_mesh(event=None):    
    #
    # Create the shape
    #
    shape = BRepPrimAPI_MakeBox(200, 200, 200).Shape()
    theBox = BRepPrimAPI_MakeBox(200,60,60).Shape()
    theSphere = BRepPrimAPI_MakeSphere(gp_Pnt(100,20,20),80).Shape()
    shape = theSphere#BRepAlgoAPI_Fuse(theSphere,theBox).Shape()
    #
    # Mesh the shape
    #
    BRepMesh().Mesh(shape,0.8)
    builder = BRep_Builder()
    Comp = TopoDS_Compound()
    builder.MakeCompound(Comp)
    
    ex = TopExp_Explorer(shape,TopAbs_FACE)
    while ex.More():
        F = TopoDS().Face(ex.Current())
        L = TopLoc_Location()       
        facing = (BRep_Tool().Triangulation(F,L)).GetObject()
        tab = facing.Nodes()
        tri = facing.Triangles()
        for i in range(1,facing.NbTriangles()+1):
            trian = tri.Value(i)
            print trian
            index1, index2, index3 = trian.Get()
            for j in range(1,4):
                if j==1:    
                    M = index1
                    N = index2
                elif j==2:    
                    N = index3
                elif j==3:
                    M = index2  
                ME = BRepBuilderAPI_MakeEdge(tab.Value(M),tab.Value(N))
                if ME.IsDone():
                    builder.Add(Comp,ME.Edge())
        ex.Next()
    display.EraseAll()
    display.DisplayShape(shape)
    display.DisplayShape(Comp)
    
if __name__ == '__main__':
    add_menu('mesh')
    add_function_to_menu('mesh', simple_mesh)
    start_display()



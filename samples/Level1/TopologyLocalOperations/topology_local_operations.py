from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *
from OCC.TopExp import *
from OCC.TopAbs import *
import OCC.TopoDS
from OCC.BRep import *
from OCC.Geom import *
from OCC.GCE2d import *
from OCC.Geom2d import *
from OCC.BRepLib import *
from OCC.BRepFeat import *

from OCC.Utils.Topology import Topo
from OCC.Display.wxSamplesGui import display
from OCC.BRepLib import *
from OCC.TopTools import *

from math import pi
from OCC.BRepOffsetAPI import *
import sys

def extrusion(event=None):
    #
    # Make a box
    #
    Box = BRepPrimAPI_MakeBox(400.,250.,300.)
    S = Box.Shape()
    #
    # Choose the first Face of the box
    #
    Ex = TopExp_Explorer()
    Ex.Init(S,TopAbs_FACE)
    Ex.Next()
    F = TopoDS.TopoDS().Face(Ex.Current())
    surf = BRep_Tool().Surface(F)
    #
    # Make a plane from this face
    #
    Pl = Handle_Geom_Plane().DownCast(surf)
    Pln = Pl.GetObject()
    # 
    # Get the normal of this plane. This will be the direction of extrusion.
    #
    D = Pln.Axis().Direction()
    #
    # Inverse normal
    #
    D.Reverse()
    #
    # Create the 2D planar sketch
    #
    MW = BRepBuilderAPI_MakeWire()
    p1 = gp_Pnt2d(200.,-100.)
    p2 = gp_Pnt2d(100.,-100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    Edge1 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
    MW.Add(Edge1.Edge())
    p1 = p2
    p2 = gp_Pnt2d(100.,-200.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    Edge2 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
    MW.Add(Edge2.Edge())
    p1 = p2
    p2 = gp_Pnt2d(200.,-200.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    Edge3 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
    MW.Add(Edge3.Edge())
    p1 = p2
    p2 = gp_Pnt2d(200.,-100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    Edge4 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)) 
    MW.Add(Edge4.Edge())
    #
    # Build Face from Wire. NB: a face is required to generate a solid.
    #
    MKF = BRepBuilderAPI_MakeFace()
    MKF.Init(surf,False)
    MKF.Add(MW.Wire())
    FP = MKF.Face()
    BRepLib().BuildCurves3d(FP)
    MKP = BRepFeat_MakePrism(S,FP,F,D,0,True)
    MKP.Perform(200.)
    res1 = MKP.Shape()
    
    display.EraseAll()
    display.DisplayColoredShape(res1,'BLUE')
    
def brepfeat_prism(event=None):
    box = BRepPrimAPI_MakeBox(400,250,300).Shape()
    faces = Topo(box).faces()
    
    for i in range(5):
        face = faces.next()
    
    srf = BRep_Tool().Surface(face)
    
    c = gp_Circ2d(gp_Ax2d(gp_Pnt2d(200,130),
                          gp_Dir2d(1,0)),
                  75
                  )
    
    circle = Geom2d_Circle(c).GetHandle()
    
    wire = BRepBuilderAPI_MakeWire()
    wire.Add( BRepBuilderAPI_MakeEdge( circle, srf, 0., pi ).Edge() )
    wire.Add( BRepBuilderAPI_MakeEdge( circle, srf, pi, 2.*pi ).Edge() )
    wire.Build()
    
    mkf = BRepBuilderAPI_MakeFace()
    mkf.Init(srf, False)
    mkf.Add(wire.Wire())
    mkf.Build()
    #import ipdb; ipdb.set_trace()
    
    # bit obscure why this is nessecary...
    # segfaults without...
    new_face = mkf.Face()
    BRepLib().BuildCurves3d(new_face)
    
    prism = BRepFeat_MakeDPrism(box,
                                mkf.Face(),
                                 face,
                                 #gp_Dir(10,0,0),
                                 100,
                                  True,
                                   True
                               )
    
    prism.Perform(400)
    display.EraseAll()
    display.DisplayShape(prism.Shape())
    display.DisplayColoredShape(wire.Wire(), 'RED')


def thick_solid(event=None):
    S = BRepPrimAPI_MakeBox(150,200,110).Shape()
    
    topo = Topo(S)
    vert = topo.vertices().next()
    
    shapes = TopTools_ListOfShape()
    for f in topo.faces_from_vertex(vert):
        shapes.Append(f)
    
    #    TopTools_ListOfShape aList    
    #    TopExp_Explorer Ex(S,TopAbs_FACE)    
    #    Ex.Next()    //in order to recover the front face    
    #    TopoDS_Shape aFace = Ex.Current()    
    #    aList.Append(aFace)    
    
    _thick_solid = BRepOffsetAPI_MakeThickSolid(S,shapes, 15,0.01)
    display.EraseAll()
    display.DisplayShape(_thick_solid.Shape())

def exit(event=None):
	sys.exit()
    
if __name__ == '__main__':
    from OCC.Display.wxSamplesGui import start_display, add_function_to_menu, add_menu
    add_menu('topology local operations')
    add_function_to_menu('topology local operations', brepfeat_prism)
    add_function_to_menu('topology local operations', extrusion)
    add_function_to_menu('topology local operations', thick_solid)
    add_function_to_menu('topology local operations', exit)
    start_display()
    
    
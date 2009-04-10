
from OCC.gp import *
from OCC.BRepPrimAPI import *
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
from OCC.TopTools import *

from math import pi
from OCC.BRepOffsetAPI import *
from OCC.BRepOffset import *
from OCC.GeomAbs import *
from OCC.AIS import *
from OCC.BRepBuilderAPI import *
from OCC.BRepFeat import *
from OCC.BRepAlgoAPI import *
from OCC.LocOpe import *
from OCC.TColgp import *

from OCC.Display.wxSamplesGui import display
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
    
    _thick_solid = BRepOffsetAPI_MakeThickSolid(S,shapes, 15,0.01)
    display.EraseAll()
    display.DisplayShape(_thick_solid.Shape())

def offset_cube(event=None):
    # smoothed
    S1 = BRepPrimAPI_MakeBox(150,200,110).Shape()    
    offsetA = BRepOffsetAPI_MakeOffsetShape(S1,60,0.01)    
    display.EraseAll()
    display.Context
    display.DisplayColoredShape(S1, 'BLUE')
    offA = display.DisplayColoredShape(offsetA.Shape(), 'GREEN')
    display.Context.SetTransparency( offA, 0.3 )
    # sharp
    S2 = BRepPrimAPI_MakeBox(gp_Pnt(300,0,0),220,140,180).Shape()    
    
    offsetB = BRepOffsetAPI_MakeOffsetShape(S2,-20,0.01,BRepOffset_Skin,False,False,GeomAbs_Arc)    
    offB = display.DisplayColoredShape(S2, 'BLUE')
    display.Context.SetTransparency( offB, 0.3 )
    display.DisplayColoredShape(offsetB.Shape(), 'GREEN')
    
    from OCC.TCollection import TCollection_ExtendedString
    topo = Topo(S2)
    faces = topo.faces()
#    faceA, faceB = topo.faces_from_edge(topo.edges().next())
    faceA = faces.next()
    faces.next();faces.next(); faces.next()
    faceB = faces.next()
    
    dim = AIS_LengthDimension(faceA, faceB, 120, TCollection_ExtendedString('jelle'))
    dim.SetValue(30)
    display.Context.Display(dim.GetHandle())
    
    import ipdb; ipdb.set_trace()
    display.FitAll()

def split_shape(event=None):
    S = BRepPrimAPI_MakeBox(gp_Pnt(-100,-60,-80),150,200,170).Shape()     
    
    asect = BRepAlgoAPI_Section(S, gp_Pln(1,2,1,-15),False)
    asect.ComputePCurveOn1(True)    
    asect.Approximation(True)    
    asect.Build()    
    R = asect.Shape()    

    asplit = BRepFeat_SplitShape(S)    
    
    for edg in Topo(R).edges():
        face = TopoDS.TopoDS().Face(TopoDS.TopoDS_Shape())
        if asect.HasAncestorFaceOn1(edg, face):
            asplit.Add(edg, face)
        
    asplit.Build()    
    display.EraseAll()
    display.DisplayShape(asplit.Shape())    

def glue_solids(event=None):
    # Without common edges 
    S1 = BRepPrimAPI_MakeBox(gp_Pnt(500.,500.,0.),gp_Pnt(100.,250.,300.)).Shape()
    facesA = Topo(S1).faces()
    F1 = [facesA.next() for i in range(5)][-1]
    
    S2 = BRepPrimAPI_MakeBox(gp_Pnt(400.,400.,300.),gp_Pnt(200.,300.,500.)).Shape()
    facesB = Topo(S2).faces()
    F2 = [facesB.next() for i in range(4)][-1]
    
    glue1 = BRepFeat_Gluer(S2,S1)
    glue1.Bind(F2,F1)
    display.EraseAll()
    display.DisplayShape(glue1.Shape())
    
#    # With common edges 
#    S3 = BRepPrimAPI_MakeBox(500.,400.,300.).Shape()
#    facesC = Topo(S3).faces()
#    F3 = [facesC.next() for i in range(5)][-1]
#    
#    S4 = BRepPrimAPI_MakeBox(gp_Pnt(0.,0.,300.),gp_Pnt(200.,200.,500.)).Shape()
#    facesD = Topo(S4).faces()
#    F4 = [facesD.next() for i in range(4)][-1]
#    
#    glue2 = BRepFeat_Gluer(S4,S3)
#    glue2.Bind(F4,F3)
#
#    common_edges = LocOpe_FindEdges(F4,F3)
#    common_edges.InitIterator()
#    import ipdb; ipdb.set_trace()
#    print 'loop common edges'
#    while common_edges.More():
#        print 'common edges',common_edges.EdgeFrom(),common_edges.EdgeTo()
#        glue2.Bind(common_edges.EdgeFrom(),common_edges.EdgeTo())
#        common_edges.Next()
##    for ( common_edges.More() common_edges.Next())
##    display.EraseAll()
#    glue2.Build()
#    display.DisplayShape(glue2.Shape())

def brep_feat_rib(event=None):
    mkw = BRepBuilderAPI_MakeWire()
    
    mkw.Add(BRepBuilderAPI_MakeEdge( gp_Pnt(0.,0.,0.), gp_Pnt(200.,0.,0.)).Edge())
    mkw.Add(BRepBuilderAPI_MakeEdge(gp_Pnt(200.,0.,0.),gp_Pnt(200.,0.,50.)).Edge())
    mkw.Add(BRepBuilderAPI_MakeEdge(gp_Pnt(200.,0.,50.),gp_Pnt(50.,0.,50.)).Edge())
    mkw.Add(BRepBuilderAPI_MakeEdge(gp_Pnt(50.,0.,50.),gp_Pnt(50.,0.,200.)).Edge())
    mkw.Add(BRepBuilderAPI_MakeEdge(gp_Pnt(50.,0.,200.),gp_Pnt(0.,0.,200.)).Edge())
    mkw.Add(BRepBuilderAPI_MakeEdge(gp_Pnt(0.,0.,200.),gp_Pnt(0.,0.,0.)).Edge())
    
    S = BRepPrimAPI_MakePrism(BRepBuilderAPI_MakeFace(mkw.Wire()).Face(), 
                                       gp_Vec(gp_Pnt(0.,0.,0.),gp_Pnt(0.,100.,0.)))
    display.EraseAll()
#    display.DisplayShape(S.Shape())
    
    W = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(gp_Pnt(50.,45.,100.),
                                                        gp_Pnt(100.,45.,50.)).Edge()
                                                      )
       
    aplane = Geom_Plane(0.,1.,0.,-45.)
    
    aform = BRepFeat_MakeLinearForm( S.Shape(), W.Wire(), aplane.GetHandle(),
                                     gp_Vec(0.,10.,0.), gp_Vec(0.,0.,0.),
                                     1, True
                                     )
    aform.Perform()
    display.DisplayShape(aform.Shape())

def brep_feat_local_pipe(event=None):
    S = BRepPrimAPI_MakeBox(400.,250.,300.).Shape()
    faces = Topo(S).faces()
    faces.next()
    F1 = faces.next()
    surf = BRep_Tool().Surface(F1)
    
    MW1 = BRepBuilderAPI_MakeWire() 
    p1 = gp_Pnt2d(100.,100.)
    p2 = gp_Pnt2d(200.,100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    p1 = gp_Pnt2d(200.,100.)
    p2 = gp_Pnt2d(150.,200.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    p1 = gp_Pnt2d(150.,200.)
    p2 = gp_Pnt2d(100.,100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    MKF1 = BRepBuilderAPI_MakeFace() 
    MKF1.Init(surf,False)
    MKF1.Add(MW1.Wire())
    
    FP = MKF1.Face()
    BRepLib().BuildCurves3d(FP)
    
    CurvePoles = TColgp_Array1OfPnt(1,3)
    CurvePoles.SetValue(1, gp_Pnt(150.,0.,150.))
    CurvePoles.SetValue(2, gp_Pnt(200.,-100.,150.))
    CurvePoles.SetValue(3, gp_Pnt(150.,-200.,150.))
    
    curve = Geom_BezierCurve(CurvePoles)
    
    E = BRepBuilderAPI_MakeEdge(curve.GetHandle()).Edge()
    W = BRepBuilderAPI_MakeWire(E).Wire()
    MKPipe = BRepFeat_MakePipe(S,FP,F1,W,1,True)
    
    MKPipe.Perform()
    display.EraseAll()
    display.DisplayShape(MKPipe.Shape())

def brep_feat_local_revolution(event=None):
    S = BRepPrimAPI_MakeBox(400.,250.,300.).Shape()
    faces = Topo(S).faces()
    faces.next()
    F1 = faces.next()
    surf = BRep_Tool().Surface(F1)
    Pl = Handle_Geom_Plane().DownCast(surf)
    
    D = gp.gp().OX()
    
    MW1 = BRepBuilderAPI_MakeWire() 
    p1 = gp_Pnt2d(100.,100.)
    p2 = gp_Pnt2d(200.,100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    p1 = gp_Pnt2d(200.,100.)
    p2 = gp_Pnt2d(150.,200.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    p1 = gp_Pnt2d(150.,200.)
    p2 = gp_Pnt2d(100.,100.)
    aline = GCE2d_MakeLine(p1,p2).Value()
    MW1.Add(BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)).Edge())
    
    MKF1 = BRepBuilderAPI_MakeFace() 
    MKF1.Init(surf,False)
    MKF1.Add(MW1.Wire())
    FP = MKF1.Face()
    BRepLib().BuildCurves3d(FP)
    MKrev = BRepFeat_MakeRevol(S,FP,F1,D,1,True)
    F2 = faces.next()
    MKrev.Perform(F2)
    display.EraseAll()
    display.DisplayShape(MKrev.Shape())


def exit(event=None):
	sys.exit()
    
if __name__ == '__main__':
    from OCC.Display.wxSamplesGui import start_display, add_function_to_menu, add_menu
    add_menu('topology local operations')
    add_function_to_menu('topology local operations', brepfeat_prism)
    add_function_to_menu('topology local operations', extrusion)
    add_function_to_menu('topology local operations', thick_solid)
    add_function_to_menu('topology local operations', offset_cube)
    add_function_to_menu('topology local operations', split_shape)
    add_function_to_menu('topology local operations', glue_solids)
    add_function_to_menu('topology local operations', brep_feat_rib)
    add_function_to_menu('topology local operations', brep_feat_local_pipe)
    add_function_to_menu('topology local operations', brep_feat_local_revolution)
    add_function_to_menu('topology local operations', brep_feat_draft_angle)
    add_function_to_menu('topology local operations', exit)
    start_display()
    
    
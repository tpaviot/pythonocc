#!/usr/bin/env python

##Copyright 2009 Jelle Ferina (jelleferinga@gmail.com)
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

'''
refactor:

range(1,NbSol+1) -> range(NbSol)
"a string"+`i` -> "a string %s" % (i) 


TODO:

    *curves3d_from_points doesnt work well; missing a spline
    *make_text is a TOTAL joke... completely unacceptable...
    *in the bspline example, the conversion from a list to TColgp_* fails somehow...
        usually the call to _Tcol_* seems to work, not here though...
    *630: circle not rendered
    *pipes gives terrible results... 
    *1109 converting list to TCol* flips...

'''
from OCC.gp import *
from OCC.Geom2d import *
from OCC.Geom2dAdaptor import *
from OCC.Geom2dAPI import *
from OCC.GCPnts import *


# gui
#from examples_gui import display, loop
from OCC.Geom import *
from OCC.GeomAPI import *

from OCC.Precision import *
# stands for intersections analytical
from OCC.IntAna import *
from OCC.GC import *
from OCC.GCE2d import *
from OCC.Geom2dConvert import *
from OCC.TopAbs import *
from OCC.GccEnt import *
from OCC.gce import *
from OCC.GccAna import *
from OCC.Quantity import *
from OCC.GeomConvert import *
from OCC.TColGeom import *
from OCC.BRepBuilderAPI import *
from OCC.Graphic2d import *
from OCC.TCollection import *
from OCC.Graphic3d import *
from OCC.BRepPrimAPI import *
from OCC.AIS import *
from OCC.Prs3d import *
from OCC.TColgp import * 
from OCC.GeomFill import *

from OCC.Display.wxSamplesGui import display

import time, sys


#===============================================================================
# Utility functions
#===============================================================================


def _Tcol_dim_1(li, _type):
    '''function factory for 1-dimensional TCol* types'''
    pts = _type(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    return pts

def _Tcol_dim_2(li, _type):
    '''function factory for 2-dimensional TCol* types'''
    length_nested = len(li[0])-1
    pts = _type(0, len(li)-1, 0, length_nested)
    return pts
    for n1,i in enumerate(li):
        for n2,j in enumerate(i):
            pts.SetValue(n1,n2,j)
    return pts

def point_list_to_TColgp_Array1OfPnt(li):
    pts = TColgp_Array1OfPnt(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    return pts

def point2d_list_to_TColgp_Array1OfPnt2d(li):
    return _Tcol_dim_1(li, TColgp_Array1OfPnt2d)

# graphic; point annotations
#def circle_marker(pnt):
#    aGraphObj = Graphic2d_GraphicObject()
#    return Graphic2d_CircleMarker(aGraphObj.GetHandle(), i.X(), i.Y(), 0, 0, 1)
#
#def text_marker_2d(txt):
#    aGraphObj = Graphic2d_GraphicObject()
#    string = TCollection_ExtendedString('jelle')
#    return Graphic2d_Text(aGraphObj.GetHandle(), string, 0, 1)
#
#def text_marker_3d(txt):
#    pass

# This is all crap that should not be here.
# It should be cleaned up the moment we have a Visual3d wrapper


def make_text(string, pnt, height):
    '''
    render a bunch of text
    @param string: string to be rendered
    @param pnt:    location of the string
    @param myGroup:OCC.Graphic3d.Graphic3d_Group instance
    @param height: max height
    '''
    global display
    # returns a Handle_Visual3d_ViewManager instance
    # the only thing is that you need the Visual3d class to make this work well
    # now we have to make a presenation for a stupid sphere as a workaround to get to the object
#    viewer = display.GetContext().GetObject().CurrentViewer().GetObject().Viewer()
#    hstruct = Graphic3d_Structure(viewer)

#===============================================================================
#    STOOPID!!
#     The reason for recreating is that myGroup is gone after an EraseAll call
#===============================================================================
    stupid_sphere = BRepPrimAPI_MakeSphere(1,1,1,1)
    prs_sphere = AIS_Shape(stupid_sphere.Shape())   
    d_ctx           = display.GetContext().GetObject()
    prsMgr          = d_ctx.CollectorPrsMgr().GetObject()
    d_ctx.Display(prs_sphere.GetHandle(), 1)
    aPresentation   = prsMgr.CastPresentation(prs_sphere.GetHandle()).GetObject()
    global myGroup
    myGroup = Prs3d_Root().CurrentGroup(aPresentation.Presentation()).GetObject()
#===============================================================================
#    FINE
#===============================================================================
    _string = TCollection_ExtendedString(string)
    if isinstance( pnt, gp.gp_Pnt2d):
        _vertex = Graphic3d_Vertex(pnt.X(), pnt.Y(), 0)
    else:
        _vertex = Graphic3d_Vertex(pnt.X(), pnt.Y(), pnt.Z())
    myGroup.Text(_string, _vertex, height)



def make_edge2d(shape):
    spline = BRepBuilderAPI_MakeEdge2d(shape)
    spline.Build()
    return spline.Shape()

def make_edge(shape):
    spline = BRepBuilderAPI_MakeEdge(shape)
    spline.Build()
    return spline.Shape()

def make_vertex(pnt):
    if isinstance(pnt, gp.gp_Pnt2d):
        vertex = BRepBuilderAPI_MakeVertex( gp_Pnt(pnt.X(), pnt.Y(), 0))
    else: 
        vertex = BRepBuilderAPI_MakeVertex( pnt )
    vertex.Build()
    return vertex.Shape()

def make_face(shape):
    face = BRepBuilderAPI_MakeFace(shape)
    face.Build()
    return face.Shape()


#===============================================================================
# Examples
#===============================================================================


def point_from_curve( event=None ):
    '''
    @param display: instance of wxViewer3d
    '''
    global myGroup
    display.EraseAll()
    radius, abscissa = 5., 3.                              
    C = Geom2d_Circle( gp.gp().OX2d(), radius, 1 )
    GAC = Geom2dAdaptor_Curve( C.GetHandle() )
    UA = GCPnts_UniformAbscissa( GAC, abscissa )
    
    aSequence = []
    if UA.IsDone():       
        N = UA.NbPoints()
        for count in range( 1, N + 1 ):
            P = gp_Pnt2d()                                            
            C.D0( UA.Parameter( count ), P )                  
            Parameter = UA.Parameter( count ) 
            aSequence.append( P )
    
    Abscissa = UA.Abscissa()
    assert abscissa == Abscissa, 'abscissas dont match up...'
    
    # convert analytic to bspline
    display.DisplayShape( make_edge2d( C.Circ2d() ) )
    
    i = 0
    for P in aSequence:
        i = i + 1
        pstring = 'P' + `i` + ': Parameter :' + `UA.Parameter( i )`
        YOffset = - 0.3;
        YOffset += 0.2 * ( i == 1 )
        YOffset += 0.4 * ( i == 4 )
        YOffset += - 0.3 * ( i == len( aSequence ) )
        pnt = gp_Pnt( P.X(), P.Y(), 0 )
        display.DisplayShape( make_vertex(pnt) )
        make_text(pstring, pnt, 6)
        
    print 'completed point_from_curve, moving on...'

def project_point_on_curve(event=None):
    '''
    '''
    global myGroup
    display.EraseAll()
    P = gp_Pnt(1,2,3)
    distance, radius = 5, 5
    
    C = Geom_Circle(gp.gp().XOY(),radius)
    PPC = GeomAPI_ProjectPointOnCurve(P,C.GetHandle())                     
    N = PPC.NearestPoint()
    NbResults = PPC.NbPoints()
    
    edg  = make_edge(C.GetHandle())
    display.DisplayShape(edg)
    
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPC.Point(i)
            distance = PPC.Distance(i)
            # do something with Q or distance here
                
    make_text("P", P, 6)
    display.DisplayShape(make_vertex(P))
    
    pstring = "N : at Distance : " + `PPC.LowerDistance()`       
    #display.DisplayPoint(N,pstring,0,0,0,1,0.5)
    make_text(pstring, N, 6)
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPC.Point(i)
            distance = PPC.Distance(i)
            pstring = "Q" + `i` + ": at Distance :" + `PPC.Distance(i)`
#            display.DisplayPoint(Q,pstring,0.0,-0.5,0.3,1,0.5)
            make_text(pstring, Q, 6)
            display.DisplayShape(make_vertex(Q))
    print 'completed project_point_on_curve, moving on...'

def point_from_projections(event=None):
    '''
    '''
    display.EraseAll()
    P = gp_Pnt(7,8,9)                                     
    radius = 5;
    SP = Geom_SphericalSurface(gp_Ax3(gp.gp().XOY()),radius)
    
    display.DisplayShape( make_face(SP.GetHandle() ) )
    
    
    PPS = GeomAPI_ProjectPointOnSurf(P,SP.GetHandle())                    
    N = PPS.NearestPoint()
    NbResults = PPS.NbPoints()
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPS.Point(i)
            distance = PPS.Distance(i)
            # do something with Q or distance here
            
    display.DisplayShape(make_vertex(P))
    make_text("P", P, 6)
    
    pstring = "N  : at Distance : " + `PPS.LowerDistance()`
    
    display.DisplayShape(make_vertex(N))
    make_text(pstring, N, 6)
    
    
    # TODO
    #aSurface = ISession_Surface(SP)
    #CurDrawer = aSurface.Attributes()
    #uisoaspect = CurDrawer.UIsoAspect()
    #visoaspect = CurDrawer.VIsoAspect()
    #uisoaspect.SetNumber(10)
    #visoaspect.SetNumber(10)
    #self.interactive_context.SetLocalAttributes(aSurface, CurDrawer,1)       
    #self.interactive_context.Display(aSurface,1)
    
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPS.Point(i)
            distance = PPS.Distance(i)
            pstring = "Q" + `i` + ": at Distance :" + `PPS.Distance(i)`
            make_text(pstring, Q, 6)
        
    print 'completed point_from_curve, moving on...'

def points_from_intersection(event=None):
    '''
    
    @param display:
    '''
    display.EraseAll()
    PL = gp_Pln( gp_Ax3( gp.gp().XOY() ) )
    MinorRadius, MajorRadius = 5, 8    
    
    EL = gp_Elips( gp.gp().YOZ(), MajorRadius, MinorRadius )
    print Precision().Angular()
    ICQ = IntAna_IntConicQuad( EL, PL, Precision().Angular(), Precision().Confusion() )
     
    if ICQ.IsDone():
        NbResults = ICQ.NbPoints()
        if NbResults > 0:
            for i in range( 1, NbResults + 1 ):
                P = ICQ.Point( i )                              
   
    aPlane = GC_MakePlane( PL ).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 8., 8., - 12., 12., 1, 1 )
    display.DisplayShape(make_face(aSurface.GetHandle()))
        
    anEllips = GC_MakeEllipse( EL ).Value()
    display.DisplayShape(make_edge(anEllips))
     
    if ICQ.IsDone():
        NbResults = ICQ.NbPoints()
        if NbResults > 0:
            for i in range( 1, NbResults + 1 ):
                P = ICQ.Point( i );                                
                pstring = "P" + `i`
                display.DisplayShape( make_vertex(P) )
                make_text(pstring, P, 6)    
    
def parabola(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    # P is the vertex point                  
    # P and D give the axis of symmetry     
    # 6 is the focal length of the parabola 
    P = gp_Pnt2d(2,3)                         
    D = gp_Dir2d(4,5)                         
    A = gp_Ax22d(P,D,1)                         
    Para = gp_Parab2d(A,6)                    
    display.DisplayShape(make_vertex(P))
    make_text("P", P, 6)
    # TODO
    #aDirection = ISession_Direction(P,D,200)
    #display.myISessionContext.Display(aDirection,1)
    
    aParabola = GCE2d_MakeParabola(Para)
    gParabola = aParabola.Value()
    
    aTrimmedCurve = Geom2d_TrimmedCurve(gParabola,-100,100,1);
    
    display.DisplayShape(make_edge2d(aTrimmedCurve.GetHandle()))
    
    #display.DisplayCurve(aTrimmedCurve,4,1)
               
    print " The entity A of type gp_Ax22d is not displayable \n "
    print " The entity D of type gp_Dir2d is displayed as a vector \n    ( mean with a length != 1 ) \n "


# TODO
# Didnt find an equivalent of the direction element...
def axis(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    P1 = gp_Pnt(2,3,4)                          
    D = gp_Dir(4,5,6)                           
    A = gp_Ax3(P1,D)                             
    IsDirectA = A.Direct()   
           
    AXDirection = A.XDirection()      
    AYDirection = A.YDirection()     
           
    P2 = gp_Pnt(5,3,4)                          
    A2 = gp_Ax3(P2,D);                           
    A2.YReverse()                              
    # axis3 is now left handed                
    IsDirectA2 = A2.Direct() 
                                       
    A2XDirection = A2.XDirection()     
    A2YDirection = A2.YDirection()
     
    #display.DisplayPoint(P1,"P1",0.0,0.0,0.0,0,0.1)
    
    display.DisplayShape(make_vertex(P1))
    make_text("P1", P1, 6)

    # TODO
    #aDirection = ISession_Direction(P1,D,2,0)
    #self.interactive_context.Display(aDirection,1)
     
    #aDirection2 = ISession_Direction(P1,AXDirection,2,1)
    #aDirection2.SetText("A.XDirection")
    #self.interactive_context.Display(aDirection2,1)
    #               
    #aDirection3 = ISession_Direction(P1,AYDirection,2,1)
    #aDirection3.SetText("A.YDirection");
    #self.interactive_context.Display(aDirection3,1)
     
#display.DisplayPoint(P2,"P2",0.0,0.0,0.0,0,0.1)
    display.DisplayShape(make_vertex(P2))
    make_text("P2", P2, 6)

    #aDirection4 = ISession_Direction(P2,D,2,1)
    #self.interactive_context.Display(aDirection4,1)
     
    #aDirection5 = ISession_Direction(P2,A2XDirection,2,1)
    #aDirection5.SetText("A2 XDirection")
    #self.interactive_context.Display(aDirection5,1)
    # 
    #aDirection6 = ISession_Direction(P2,A2YDirection,2,1)
    #aDirection6.SetText("A2 YDirection")
    #self.interactive_context.Display(aDirection6,1)
    
def bspline(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    array = []
    array.append(gp_Pnt2d (0,0))
    array.append(gp_Pnt2d (1,2))
    array.append(gp_Pnt2d (2,3))
    array.append(gp_Pnt2d (4,3))
    array.append(gp_Pnt2d (5,5))
    
    xxx = point2d_list_to_TColgp_Array1OfPnt2d(array)
    SPL1 = Geom2dAPI_PointsToBSpline(xxx).Curve()
    display.DisplayShape(make_edge2d(SPL1))
        
    #harray = []
    #harray.append(gp_Pnt2d (7+ 0,0))
    #harray.append(gp_Pnt2d (7+ 1,2))
    #harray.append(gp_Pnt2d (7+ 2,3))
    #harray.append(gp_Pnt2d (7+ 4,3))
    #harray.append(gp_Pnt2d (7+ 5,5))
    
    harray  = TColgp_HArray1OfPnt2d (1,5)                
    harray.SetValue(1,gp_Pnt2d (7+ 0,0))                               
    harray.SetValue(2,gp_Pnt2d (7+ 1,2))                               
    harray.SetValue(3,gp_Pnt2d (7+ 2,3))                               
    harray.SetValue(4,gp_Pnt2d (7+ 4,3))                               
    harray.SetValue(5,gp_Pnt2d (7+ 5,5))   
    
    #yyy = _Tcol_dim_1(harray, TColgp_HArray1OfPnt2d).GetHandle()
    #anInterpolation = Geom2dAPI_Interpolate(yyy, False, 0.01)
    anInterpolation = Geom2dAPI_Interpolate(harray.GetHandle(), False, 0.01)
    anInterpolation.Perform()
    SPL2 = anInterpolation.Curve()
    display.DisplayShape(make_edge2d(SPL2))
    
    
    # conversion of the lists fails, really weird since the call to the converter should be fine...
    #harray2 = []
    #harray2.append(gp_Pnt2d (11+ 0,0))
    #harray2.append(gp_Pnt2d (11+ 1,2))
    #harray2.append(gp_Pnt2d (11+ 2,3))
    #harray2.append(gp_Pnt2d (11+ 4,3))
    #harray2.append(gp_Pnt2d (11+ 5,5))
    
    harray2  = TColgp_HArray1OfPnt2d (1,5)                
    harray2.SetValue(1,gp_Pnt2d (11+ 0,0))
    harray2.SetValue(2,gp_Pnt2d (11+ 1,2))
    harray2.SetValue(3,gp_Pnt2d (11+ 2,3))
    harray2.SetValue(4,gp_Pnt2d (11+ 4,3))
    harray2.SetValue(5,gp_Pnt2d (11+ 5,5))
    
    anInterpolation2 = Geom2dAPI_Interpolate(harray2.GetHandle(),1,0.01)
    anInterpolation2.Perform()
    SPL3 = anInterpolation2.Curve()         
    display.DisplayShape(make_edge2d(SPL3))
    
    i = 0
    for P in array:
        i = i+1
        pstring = 'array'+`i`
    #        display.DisplayPoint(P,pstring,0,0,0,0.05)
        make_vertex(P); make_text(pstring, P, 6)
     
    for j in range(harray.Lower(), harray.Upper()+1):
        i = i+1
        pstring = 'harray'+`i`
        P = harray.Value(j)
        make_vertex(P); make_text(pstring, P, 6)
       
    for j in range(harray2.Lower(),harray2.Upper()+1):
        i = i+1
        pstring = 'harray2'+`i`
        P = harray2.Value(j)
        make_vertex(P); make_text(pstring, P, 6)    


def curves2d_from_curves(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    major, minor = 12, 4                                              
    axis = gp.gp().OX2d()                                             
    
    ell = GCE2d_MakeEllipse(axis,major,minor)
    E = ell.Value()
     
    TC = Geom2d_TrimmedCurve(E,-1,2,1)
    SPL = Geom2dConvert().CurveToBSplineCurve(TC.GetHandle(), Convert.Convert_TgtThetaOver2 )
    
    display.DisplayShape(make_edge2d(SPL))

    # TODO
    #session_curve = ISession2D_Curve(E,Aspect_TOL_DOTDASH,Aspect_WOL_MEDIUM,4)
    #session_curve.SetColorIndex(3)
    #self.myISessionContext.Display(session_curve,1)

def curves2d_from_offset(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    array =[]
    array.append(gp_Pnt2d(-4,0))
    array.append(gp_Pnt2d(-7,2))
    array.append(gp_Pnt2d(-6,3))
    array.append(gp_Pnt2d(-4,3))
    array.append(gp_Pnt2d(-3,5))
    
    xxx = point2d_list_to_TColgp_Array1OfPnt2d(array)
    
    SPL1 = Geom2dAPI_PointsToBSpline(xxx).Curve()
     
    dist = 1
    OC = Geom2d_OffsetCurve(SPL1,dist)
    result = OC.IsCN(2)
     
    dist2 = 1.5
    OC2 = Geom2d_OffsetCurve(SPL1,dist2)
    result2 = OC2.IsCN(2)
    
    # extra arguments??       
    #    display.DisplayCurve(OC2,3,0)
                
    
    display.DisplayShape( make_edge2d(SPL1) )
    display.DisplayShape( make_edge2d(OC.GetHandle()) )
    display.DisplayShape( make_edge2d(OC2.GetHandle()) )

def circles2d_from_curves(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    P1 = gp_Pnt2d(9,6)                                                        
    P2 = gp_Pnt2d(10,4)                                                          
    P3 = gp_Pnt2d(6,7)
    C = gce_MakeCirc2d(P1,P2,P3).Value()
    
    QC = GccEnt.GccEnt().Outside(C)
    P4 = gp_Pnt2d(-2,7)
    P5 = gp_Pnt2d(12,-3)                                                         
    L = GccAna_Lin2d2Tan(P4,P5,Precision().Confusion()).ThisSolution(1)
     
    QL = GccEnt.GccEnt().Unqualified(L)
    radius = 2.
    TR = GccAna_Circ2d2TanRad(QC,QL,radius,Precision().Confusion())
    
    if TR.IsDone():
        NbSol = TR.NbSolutions()
        for k in range(1,NbSol+1):
            circ = TR.ThisSolution(k)
            # find the solution circle                             
            pnt1 = gp_Pnt2d()
            parsol,pararg = TR.Tangency1(k, pnt1)
            # find the first tangent point                                    
            pnt2 = gp_Pnt2d()
            parsol,pararg = TR.Tangency2(k, pnt2)
            # find the second tangent point                                    
     
    make_text("P1", P1, 6)
    make_text("P2", P2, 6)
    make_text("P3", P3, 6)
    make_text("P4", P4, 6)
    make_text("P5", P5, 6)
    [display.DisplayShape(make_vertex(i)) for i in [P1,P2,P3,P4,P5]]
     
#    aCircle = Geom2d_Circle(C)
#    display.DisplayShape(make_edge2d(aCircle.GetHandle()))
    # BUG: this circle is not rendered somehow
    display.DisplayShape(make_edge2d(C))
    
     
    aLine = GCE2d_MakeSegment(L,-2,20).Value()
    display.DisplayShape(make_edge2d(aLine))
    
     
    if TR.IsDone():
        NbSol = TR.NbSolutions()
        for k in range(1,NbSol+1):
            circ = TR.ThisSolution(k)
            aCircle = Geom2d_Circle(circ)
            display.DisplayShape(make_edge2d(aCircle.GetHandle()))
            # find the solution circle ( index, outvalue, outvalue, gp_Pnt2d )
            pnt3 = gp_Pnt2d()                         
            parsol,pararg = TR.Tangency1(k, pnt3)
            # find the first tangent point                                    
    #        display.DisplayPoint(pnt3,"tangentpoint1",0,0.1,0,0.05)
            make_text("tangentpoint1", pnt3, 6)
            
            pnt4 = gp_Pnt2d()                         
            parsol,pararg = TR.Tangency2(k, pnt4)
    #        display.DisplayPoint(pnt4,"tangentpoint2",0,0.1,0,0.05)
            make_text("tangentpoint2", pnt4, 6)
            # find the second tangent point                                         

def curves3d_from_points(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    P1 = gp_Pnt(0,0,1)
    P2 = gp_Pnt(1,2,2)
    P3 = gp_Pnt(2,3,3)
    P4 = gp_Pnt(4,3,4)       
    P5 = gp_Pnt(5,5,5)
     
    array = []
    array.append(P1)                                                                       
    array.append(P2)                                                                      
    array.append(P3)                                                                      
    array.append(P4)                                                                       
    array.append(P5)
     
    SPL1 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array)).Curve()
    display.DisplayShape(make_edge(SPL1))
    
    harray = []
    harray.append(P1.Translated(gp_Vec(4,0,0)))
    harray.append(P2.Translated(gp_Vec(4,0,0)))
    harray.append(P3.Translated(gp_Vec(4,0,0)))
    harray.append(P4.Translated(gp_Vec(4,0,0)))
    harray.append(P5.Translated(gp_Vec(4,0,0)))
        
        
    aaa = _Tcol_dim_1(harray, TColgp_HArray1OfPnt)
    anInterpolation = GeomAPI_Interpolate(aaa.GetHandle(), False, Precision().Approximation())
    # TODO, raises a ConstructionError, something is wrong with the aaa  TColgp_HArray1OfPnt
    #anInterpolation.Perform()
    #anInterpolation.IsDone()
    
    if anInterpolation.IsDone():
        SPL2 = anInterpolation.Curve()
        display.DisplayShape(make_edge(SPL2))
    else:
        print "The Interpolation is Not done"
     
    for i in range(0,len(array)):
        P = array[i]
        pstring = "P"+`i+1`
        if i == 0:
            pstring = pstring + " (array)  "
        display.DisplayShape(make_vertex(P))
        make_text(pstring, P, 6)
           
    for i in range(0,len(harray)):
        P = harray[i]
        pstring = "P"+`i+1`
        if i == 0:
            pstring = pstring + " (harray)  "
        display.DisplayShape(make_vertex(P))
        make_text(pstring, P, 6)
     
    #aCurve = ISession_Curve(SPL1)
    #display.interactive_context.SetDisplayMode(aCurve,1,1)
    #display.interactive_context.Display(aCurve,1)
     
    if anInterpolation.IsDone():
        SPL2 = anInterpolation.Curve()
        display.DisplayShape(make_edge(SPL2))
        #    aCurve2 = ISession_Curve(SPL2)
        #    display.interactive_context.SetDisplayMode(aCurve2,1,1)
        #    display.interactive_context.Display(aCurve2,1)


def surface_from_curves(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    array = []
    array.append(gp_Pnt(-4,0,2 ))                                                                      
    array.append(gp_Pnt(-7,2,2 ))                                                                       
    array.append(gp_Pnt(-6,3,1 ))                                                                      
    array.append(gp_Pnt(-4,3,-1))                                                                      
    array.append(gp_Pnt(-3,5,-2))

    aaa = point_list_to_TColgp_Array1OfPnt(array) 
    SPL1 = GeomAPI_PointsToBSpline(aaa).Curve()
    SPL1_c = SPL1.GetObject()
    
    a2 = []
    a2.append(gp_Pnt(-4,0,2 ))                                                                      
    a2.append(gp_Pnt(-2,2,0 ))                                                                      
    a2.append(gp_Pnt(2,3,-1 ))                                                                      
    a2.append(gp_Pnt(3,7,-2))                                                                       
    a2.append(gp_Pnt(4,9,-1))
    bbb = point_list_to_TColgp_Array1OfPnt(a2)
    SPL2 = GeomAPI_PointsToBSpline(bbb).Curve()
    SPL2_c = SPL2.GetObject()
    
    aGeomFill1 = GeomFill_BSplineCurves(SPL1,
                                        SPL2,
                                        GeomFill_StretchStyle)
    
    SPL3 = Handle_Geom_BSplineCurve().DownCast(SPL1_c.Translated(gp_Vec(10,0,0)))
    SPL4 = Handle_Geom_BSplineCurve().DownCast(SPL2_c.Translated(gp_Vec(10,0,0)))
    aGeomFill2 = GeomFill_BSplineCurves(SPL3,
                                        SPL4,
                                        GeomFill_CoonsStyle)
    
    SPL5 = Handle_Geom_BSplineCurve().DownCast(SPL1_c.Translated(gp_Vec(20,0,0)))
    SPL6 = Handle_Geom_BSplineCurve().DownCast(SPL2_c.Translated(gp_Vec(20,0,0)))
    aGeomFill3 = GeomFill_BSplineCurves(SPL5,
                                        SPL6,
                                        GeomFill_CurvedStyle)
    
    aBSplineSurface1 = aGeomFill1.Surface()
    display.DisplayShape(make_face(aBSplineSurface1))
    aBSplineSurface2 = aGeomFill2.Surface()
    display.DisplayShape(make_face(aBSplineSurface2))
    aBSplineSurface3 = aGeomFill3.Surface()
    display.DisplayShape(make_face(aBSplineSurface3))
    
    # annotate
    make_text("GeomFill_StretchStyle", SPL1_c.StartPoint(), 6)
    make_text("GeomFill_CoonsStyle", SPL3.GetObject().StartPoint(), 6)
    make_text("GeomFill_CurvedStyle", SPL5.GetObject().StartPoint(), 6)


    #for i in range(0,3):
    #    aCurve1 = ISession_Curve(Geom_Curve().DownCast(SPL1.Translated(gp_Vec(i * 10,0,0))))
    #    display.interactive_context.SetDisplayMode(aCurve1,0,1)
    #    display.interactive_context.SetColor(aCurve1,Quantity_NOC_RED,1)
    #    aCurve1.Attributes().LineAspect().SetColor(Quantity_NOC_RED)
    #    display.interactive_context.Display(aCurve1,1)
    #    aCurve2 = ISession_Curve(Geom_Curve().DownCast(SPL2.Translated(gp_Vec(i * 10,0,0))))
    #    display.interactive_context.SetDisplayMode(aCurve2,0,1)
    #    display.interactive_context.SetColor(aCurve2,Quantity_NOC_GREEN,1)
    #    aCurve1.Attributes().LineAspect().SetColor(Quantity_NOC_GREEN)
    #    display.interactive_context.Display(aCurve2,1)

def pipes(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    a1 = []
    a1.append(gp_Pnt(-4,0,2 ))                                                                      
    a1.append(gp_Pnt(-5,1,0 ))                                                                      
    a1.append(gp_Pnt(-6,2,-2))                                                                      
    a1.append(gp_Pnt(-5,4,-7))                                                                      
    a1.append(gp_Pnt(-3,5,-12))
     
    xxx = point_list_to_TColgp_Array1OfPnt(a1)
    SPL1 = GeomAPI_PointsToBSpline(xxx).Curve()
    display.DisplayShape(make_edge(SPL1))
    
    aPipe = GeomFill_Pipe(SPL1,1)
    aPipe.Perform(0,0)
    aSurface= aPipe.Surface()
    
    E = GC_MakeEllipse( gp.gp().XOY(), 2,1).Value()
    aPipe2 = GeomFill_Pipe(SPL1,E, GeomFill_IsConstantNormal)                                   
    aPipe2.Perform(0,0)                                  
    aSurface2= aPipe2.Surface()
    aSurface2.GetObject().Translate(gp_Vec(5,0,0))
    display.DisplayShape(make_face(aSurface2))
    
    TC1 = GC_MakeSegment(gp_Pnt(1,1,1),gp_Pnt(2,2,2)).Value()
    TC2 = GC_MakeSegment(gp_Pnt(1,1,0),gp_Pnt(3,2,1)).Value()
    display.DisplayShape(make_edge(TC1))
    display.DisplayShape(make_edge(TC2))
    aPipe3 = GeomFill_Pipe(SPL1,TC1,TC2)                            
    aPipe3.Perform(0,0)                                                  
    aSurface3= aPipe3.Surface()
    aSurface3.GetObject().Translate(gp_Vec(10,0,0))                       
    display.DisplayShape(make_face(aSurface))
    display.DisplayShape(make_face(aSurface3))

    for i,mode in enumerate([ GeomFill_IsConstantNormal, GeomFill_IsCorrectedFrenet, GeomFill_IsDarboux,\
                  GeomFill_IsFrenet, GeomFill_IsGuideAC, GeomFill_IsGuideACWithContact,\
                  GeomFill_IsGuidePlan, GeomFill_IsGuidePlanWithContact,\
                  ]):
    
        E = GC_MakeEllipse( gp.gp().XOY(), 2,1).Value()
        display.DisplayShape(make_edge(E))
    
        try:
            aPipe2 = GeomFill_Pipe(SPL1,TC1,TC2, mode)                                   
            aPipe2.Perform(0,0)                                  
            aSurface2= aPipe2.Surface()
            aSurface2.GetObject().Translate(gp_Vec(5,5,0))
            display.DisplayShape(make_face(aSurface2))
        except RuntimeError:
            print 'failed with mode:', mode
            pass

def bezier_surfaces(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    array1 = TColgp_Array2OfPnt (1,3,1,3)                              
    array2 = TColgp_Array2OfPnt (1,3,1,3)                              
    array3 = TColgp_Array2OfPnt (1,3,1,3)                            
    array4 = TColgp_Array2OfPnt (1,3,1,3)                              
    
    array1.SetValue(1,1,gp_Pnt(1,1,1))
    array1.SetValue(1,2,gp_Pnt(2,1,2))
    array1.SetValue(1,3,gp_Pnt(3,1,1))
    array1.SetValue(2,1,gp_Pnt(1,2,1))
    array1.SetValue(2,2,gp_Pnt(2,2,2))
    array1.SetValue(2,3,gp_Pnt(3,2,0))
    array1.SetValue(3,1,gp_Pnt(1,3,2))
    array1.SetValue(3,2,gp_Pnt(2,3,1))
    array1.SetValue(3,3,gp_Pnt(3,3,0))
    
    array2.SetValue(1,1,gp_Pnt(3,1,1))
    array2.SetValue(1,2,gp_Pnt(4,1,1))
    array2.SetValue(1,3,gp_Pnt(5,1,2))
    array2.SetValue(2,1,gp_Pnt(3,2,0))
    array2.SetValue(2,2,gp_Pnt(4,2,1))
    array2.SetValue(2,3,gp_Pnt(5,2,2))
    array2.SetValue(3,1,gp_Pnt(3,3,0))
    array2.SetValue(3,2,gp_Pnt(4,3,0))
    array2.SetValue(3,3,gp_Pnt(5,3,1))
    
    array3.SetValue(1,1,gp_Pnt(1,3,2))
    array3.SetValue(1,2,gp_Pnt(2,3,1))
    array3.SetValue(1,3,gp_Pnt(3,3,0))
    array3.SetValue(2,1,gp_Pnt(1,4,1))
    array3.SetValue(2,2,gp_Pnt(2,4,0))
    array3.SetValue(2,3,gp_Pnt(3,4,1))
    array3.SetValue(3,1,gp_Pnt(1,5,1))
    array3.SetValue(3,2,gp_Pnt(2,5,1))
    array3.SetValue(3,3,gp_Pnt(3,5,2))
    
    array4.SetValue(1,1,gp_Pnt(3,3,0))
    array4.SetValue(1,2,gp_Pnt(4,3,0))
    array4.SetValue(1,3,gp_Pnt(5,3,1))
    array4.SetValue(2,1,gp_Pnt(3,4,1))
    array4.SetValue(2,2,gp_Pnt(4,4,1))
    array4.SetValue(2,3,gp_Pnt(5,4,1))
    array4.SetValue(3,1,gp_Pnt(3,5,2))
    array4.SetValue(3,2,gp_Pnt(4,5,2))
    array4.SetValue(3,3,gp_Pnt(5,5,1))
    
    BZ1, BZ2, BZ3, BZ4 = Geom_BezierSurface(array1),Geom_BezierSurface(array2),Geom_BezierSurface(array3),Geom_BezierSurface(array4)
    
    bezierarray = TColGeom_Array2OfBezierSurface(1,2,1,2)              
    bezierarray.SetValue(1,1,BZ1.GetHandle())                                    
    bezierarray.SetValue(1,2,BZ2.GetHandle())                                    
    bezierarray.SetValue(2,1,BZ3.GetHandle())                          
    bezierarray.SetValue(2,2,BZ4.GetHandle()) 
    
    
    BB = GeomConvert_CompBezierSurfacesToBSplineSurface(bezierarray)
    if BB.IsDone():
        poles = BB.Poles().GetObject().Array2()
        uknots = BB.UKnots().GetObject().Array1()
        vknots = BB.VKnots().GetObject().Array1()
        umult = BB.UMultiplicities().GetObject().Array1()
        vmult = BB.VMultiplicities().GetObject().Array1()
        udeg = BB.UDegree()
        vdeg = BB.VDegree()
                                       
        BSPLSURF = Geom_BSplineSurface( poles, uknots, vknots, umult, vmult, udeg, vdeg, 0, 0 )
        BSPLSURF.Translate(gp_Vec(0,0,2))
           
    display.DisplayShape(make_face(BSPLSURF.GetHandle()))
    
    
    
    #
    #
    #
#    a1,a2,a3,a4 = [],[],[],[]
#     
#    a1.append([gp_Pnt(1,1,1),gp_Pnt(2,1,2),gp_Pnt(3,1,1)])
#    a1.append([gp_Pnt(1,2,1),gp_Pnt(2,2,2),gp_Pnt(3,2,0)])
#    a1.append([gp_Pnt(1,3,2),gp_Pnt(2,3,1),gp_Pnt(3,3,0)])      
#    
#    a2.append([gp_Pnt(3,1,1),gp_Pnt(4,1,1),gp_Pnt(5,1,2)])
#    a2.append([gp_Pnt(3,2,0),gp_Pnt(4,2,1),gp_Pnt(5,2,2)])
#    a2.append([gp_Pnt(3,3,0),gp_Pnt(4,3,0),gp_Pnt(5,3,1)])
#    
#    a3.append([gp_Pnt(1,3,2),gp_Pnt(2,3,1),gp_Pnt(3,3,0)])
#    a3.append([gp_Pnt(1,4,1),gp_Pnt(2,4,0),gp_Pnt(3,4,1)])
#    a3.append([gp_Pnt(1,5,1),gp_Pnt(2,5,1),gp_Pnt(3,5,2)])
#    
#    a4.append([gp_Pnt(3,3,0),gp_Pnt(4,3,0),gp_Pnt(5,3,1)])
#    a4.append([gp_Pnt(3,4,1),gp_Pnt(4,4,1),gp_Pnt(5,4,1)])
#    a4.append([gp_Pnt(3,5,2),gp_Pnt(4,5,2),gp_Pnt(5,5,1)])

    #
#    bezier_input = [_Tcol_dim_2(i, TColgp_Array2OfPnt) for i in [a1,a2,a3,a4]]
#    BZ1, BZ2, BZ3, BZ4 = map( Geom_BezierSurface, bezier_input ) 
    #BZ1, BZ2, BZ3, BZ4 = [Geom_BezierSurface(i) for i in bezier_input] 
    #BZ1, BZ2, BZ3, BZ4 = Geom_BezierSurface(bezier_input[0]),Geom_BezierSurface(bezier_input[1]),Geom_BezierSurface(bezier_input[2]),Geom_BezierSurface(bezier_input[3]) 
    
    
    #for i in [BZ1,BZ2,BZ3,BZ4]:
    #    display.DisplayShape(make_face(i.GetHandle()))
    
    #display.DisplayShape(make_face(BZ1.GetHandle()))
    
    
    
    # building the array is ok, but crashed when coupling the surfaces together ( line 905 ) 
#    ttt = [[BZ1.GetHandle(),BZ2.GetHandle()],[BZ3.GetHandle(),BZ4.GetHandle()]]

#    bezierarray = _Tcol_dim_2(ttt, TColGeom_Array2OfBezierSurface)
#    
#    bezierarray = TColGeom_Array2OfBezierSurface(0,1,0,1)
    #bezierarray.SetValue(0,0,BZ1.GetHandle())
    #bezierarray.SetValue(0,1,BZ2.GetHandle())
    #bezierarray.SetValue(1,0,BZ3.GetHandle())
    #bezierarray.SetValue(0,1,BZ4.GetHandle())
    #
    #
    # SEGFAULTS HERE!!!
#    BB = GeomConvert_CompBezierSurfacesToBSplineSurface(bezierarray)
    #if BB.IsDone():
    #    BSPLSURF = Geom_BSplineSurface(BB.Poles(),BB.UKnots(),BB.VKnots(),BB.UMultiplicities(),BB.VMultiplicities(),BB.UDegree(),BB.VDegree(),0,0 )    
    #    BSPLSURF.Translate(gp_Vec(0,0,2))
    #       
    #display.DisplaySurface(BZ1,1,color = Quantity_NOC_RED)
    #display.DisplaySurface(BZ2,1,color = Quantity_NOC_GREEN)
    #display.DisplaySurface(BZ3,1,color = Quantity_NOC_BLUE1)
    #display.DisplaySurface(BZ4,1,color = Quantity_NOC_BROWN)
    # 
    #if BB.IsDone():
    #    display.DisplaySurface(BSPLSURF,1,color = Quantity_NOC_HOTPINK)

def surfaces_from_offsets(event=None):
    display.EraseAll()
    array1 = []
    array1.append(gp_Pnt (-4,5,5 ))                                           
    array1.append(gp_Pnt (-3,6,6 ))                                            
    array1.append(gp_Pnt (-1,7,7 ))                                             
    array1.append(gp_Pnt (0,8,8))
    array1.append(gp_Pnt (2,9,9))                                              
    SPL1 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array1)).Curve()                                    
    
    array2 = []                                                
    array2.append(gp_Pnt (-4,5,2 ))
    array2.append(gp_Pnt (-3,6,3 ))
    array2.append(gp_Pnt (-1,7,4 ))
    array2.append(gp_Pnt (0,8,5))                                              
    array2.append(gp_Pnt (2,9,6))
    SPL2 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array2)).Curve()                                    
    
    aGeomFill1 = GeomFill_BSplineCurves(SPL1,SPL2,GeomFill_StretchStyle)
    aGeomSurface = aGeomFill1.Surface()
    
    offset = 1                                                       
    GOS = Geom_OffsetSurface(aGeomSurface, offset)  
    offset = 2                                                                     
    GOS1 = Geom_OffsetSurface(aGeomSurface, offset)
    offset = 3                                                                     
    GOS2 = Geom_OffsetSurface(aGeomSurface, offset) 
       
    display.DisplayShape(make_face(aGeomSurface))
    display.DisplayShape(make_face(GOS.GetHandle()))
    display.DisplayShape(make_face(GOS1.GetHandle()))
    display.DisplayShape(make_face(GOS2.GetHandle()))
    
def surfaces_from_revolution(event=None):
    display.EraseAll()
    array = []
    array.append(gp_Pnt(0,0,1))                                         
           
    array.append(gp_Pnt(1,2,2))                                         
    array.append(gp_Pnt(2,3,3))                                         
    array.append(gp_Pnt(4,3,4))                                         
    array.append(gp_Pnt(5,5,5))                                         
    aCurve = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array)).Curve()
    
    SOR =Geom_SurfaceOfRevolution(aCurve, gp.gp().OX())
    
    display.DisplayShape(make_edge(aCurve))
    display.DisplayShape(make_face(SOR.GetHandle()))
 
def distances(event=None):
    display.EraseAll()
    array1 = []
    array1.append(gp_Pnt (-5,1,2))
    array1.append(gp_Pnt(-5,2,2))            
    array1.append(gp_Pnt(-5.3,3,1))
    array1.append(gp_Pnt(-5,4,1))
    array1.append(gp_Pnt(-5,5,2))
    SPL1 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array1)).Curve()
                                                                                         
    array2 = []                                    
    array2.append(gp_Pnt(4,1,2))
    array2.append(gp_Pnt(4,2,2))
    array2.append(gp_Pnt(3.7,3,1))
    array2.append(gp_Pnt(4,4,1))
    array2.append(gp_Pnt(4,5,2))
    SPL2 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array2)).Curve()
    
    aGeomFill1 = GeomFill_BSplineCurves(SPL1,SPL2,GeomFill_StretchStyle)
    aSurf1 = aGeomFill1.Surface()
     
    array3 = [] 
    
    array3= TColgp_Array2OfPnt(1,5, 1,5)
    array3.SetValue(1,1,gp_Pnt (-4,-4,5))
    array3.SetValue(1,2,gp_Pnt (-4,-2,5))
    array3.SetValue(1,3,gp_Pnt (-4,0,4))
    array3.SetValue(1,4,gp_Pnt (-4,2,5))
    array3.SetValue(1,5,gp_Pnt (-4,4,5))
    
    array3.SetValue(2,1,gp_Pnt (-2,-4,4))
    array3.SetValue(2,2,gp_Pnt (-2,-2,4))
    array3.SetValue(2,3,gp_Pnt (-2,0,4))
    array3.SetValue(2,4,gp_Pnt (-2,2,4))
    array3.SetValue(2,5,gp_Pnt (-2,5,4))
    
    array3.SetValue(3,1,gp_Pnt (0,-4,3.5))
    array3.SetValue(3,2,gp_Pnt (0,-2,3.5))
    array3.SetValue(3,3,gp_Pnt (0,0,3.5))
    array3.SetValue(3,4,gp_Pnt (0,2,3.5))
    array3.SetValue(3,5,gp_Pnt (0,5,3.5))
    
    array3.SetValue(4,1,gp_Pnt (2,-4,4))
    array3.SetValue(4,2,gp_Pnt (2,-2,4))
    array3.SetValue(4,3,gp_Pnt (2,0,3.5))
    array3.SetValue(4,4,gp_Pnt (2,2,5))
    array3.SetValue(4,5,gp_Pnt (2,5,4))
    
    array3.SetValue(5,1,gp_Pnt (4,-4,5))
    array3.SetValue(5,2,gp_Pnt (4,-2,5))
    array3.SetValue(5,3,gp_Pnt (4,0,5))
    array3.SetValue(5,4,gp_Pnt (4,2,6))
    array3.SetValue(5,5,gp_Pnt (4,5,5))
    
    
    # Clearly this function is broken, cant see why?
    #def _Tcol_dim_2(li, _type):
    #    '''function factory for 2-dimensional TCol* types'''
    #    length, length_nested = len(li), len(li[0])
    #    pts = _type(1, length, 1, length_nested)
    #    pts.thisown = False
    #    return pts
    #    for n1,i in enumerate(li):
    #        for n2,j in enumerate(i):
    #            pts.SetValue(n1+1,n2+1,j)
    #    return pts
    
    #yyy = _Tcol_dim_2(array3, TColgp_Array2OfPnt)
    aSurf2 = GeomAPI_PointsToBSplineSurface(array3).Surface()
    
    ESS = GeomAPI_ExtremaSurfaceSurface(aSurf1,aSurf2)
    dist = ESS.LowerDistance()
    a,b = gp_Pnt(), gp_Pnt()
    ESS.NearestPoints(a,b)
    
    NbExtrema = ESS.NbExtrema()
    for k in range(1,NbExtrema+1):
        P3,P4 = gp_Pnt(), gp_Pnt()
        ESS.Points(k, P3, P4)                              
        aCurve= GC_MakeSegment(P3,P4).Value()
        display.DisplayShape(make_vertex(P3))
        display.DisplayShape(make_vertex(P4))
        display.DisplayShape(make_edge(aCurve))
        make_text("P3", P3, 6)
        make_text("P4", P4, 6)
    
    display.DisplayShape(make_face(aSurf1))
    display.DisplayShape(make_face(aSurf2))
    
    display.DisplayShape(make_edge(SPL1))
    display.DisplayShape(make_edge(SPL2))
     
    make_text("P1", a, 6)
    make_text("P2", b, 6)
    display.DisplayShape(make_vertex(a))
    display.DisplayShape(make_vertex(b))

def exit(event=None):
    sys.exit() 

if __name__ == '__main__':
        from OCC.Display.wxSamplesGui import add_function_to_menu, add_menu, start_display
        add_menu('geometry')
        for f in [point_from_curve,
                  project_point_on_curve,
                  point_from_projections,
                  points_from_intersection,
                  parabola,
                  axis,
                  bspline,
                  curves2d_from_curves,
                  curves2d_from_offset,
                  circles2d_from_curves,
                  curves3d_from_points,
                  surface_from_curves,
                  pipes,
                  bezier_surfaces,
                  surfaces_from_offsets,
                  surfaces_from_revolution,
                  distances,
                  exit
                  ]:
            add_function_to_menu('geometry', f)
        start_display()

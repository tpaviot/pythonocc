#!/usr/bin/env python

##Copyright 2009-2011 Jelle Ferina (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
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


from OCC.Geom import *
from OCC.GeomAPI import *
from OCC.Precision import *
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

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
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
#===============================================================================
#     The reason for recreating is that myGroup is gone after an EraseAll call
#===============================================================================
    stupid_sphere = BRepPrimAPI_MakeSphere(1,1,1,1)
    prs_sphere = AIS_Shape(stupid_sphere.Shape())   
    d_ctx           = display.GetContext().GetObject()
    prsMgr          = d_ctx.CollectorPrsMgr().GetObject()
    d_ctx.Display(prs_sphere.GetHandle(), 1)
    aPresentation   = prsMgr.CastPresentation(prs_sphere.GetHandle()).GetObject()
    global myGroup
    myGroup = Prs3d_Root_CurrentGroup(aPresentation.Presentation()).GetObject()
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
    C = Geom2d_Circle( gp_OX2d(), radius, 1 )
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
    display.DisplayShape( make_edge2d( C.Circ2d() ) , update=True )
    
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
    
    C = Geom_Circle(gp_XOY(),radius)
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
    display.DisplayShape(make_vertex(P) , update=True)
    
    pstring = "N : at Distance : " + `PPC.LowerDistance()`       
    make_text(pstring, N, 6)
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPC.Point(i)
            distance = PPC.Distance(i)
            pstring = "Q" + `i` + ": at Distance :" + `PPC.Distance(i)`
            make_text(pstring, Q, 6)
            display.DisplayShape(make_vertex(Q))
    print 'completed project_point_on_curve, moving on...'

def point_from_projections(event=None):
    '''
    '''
    display.EraseAll()
    P = gp_Pnt(7,8,9)                                     
    radius = 5;
    SP = Geom_SphericalSurface(gp_Ax3(gp_XOY()),radius)
    
    display.DisplayShape( make_face(SP.GetHandle() ) )
    
    
    PPS = GeomAPI_ProjectPointOnSurf(P,SP.GetHandle())                    
    N = PPS.NearestPoint()
    NbResults = PPS.NbPoints()
    if NbResults > 0:
        for i in range(1,NbResults+1):
            Q = PPS.Point(i)
            distance = PPS.Distance(i)

    display.DisplayShape(make_vertex(P) , update=True)
    make_text("P", P, 6)
    
    pstring = "N  : at Distance : " + `PPS.LowerDistance()`
    
    display.DisplayShape(make_vertex(N))
    make_text(pstring, N, 6)

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
    PL = gp_Pln( gp_Ax3( gp_XOY() ) )
    MinorRadius, MajorRadius = 5, 8    
    
    EL = gp_Elips( gp_YOZ(), MajorRadius, MinorRadius )
    print Precision_Angular()
    ICQ = IntAna_IntConicQuad( EL, PL, Precision_Angular(), Precision_Confusion() )
     
    if ICQ.IsDone():
        NbResults = ICQ.NbPoints()
        if NbResults > 0:
            for i in range( 1, NbResults + 1 ):
                P = ICQ.Point( i )                              
   
    aPlane = GC_MakePlane( PL ).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 8., 8., - 12., 12., 1, 1 )
    display.DisplayShape(make_face(aSurface.GetHandle()) , update=True)
        
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

    aParabola = GCE2d_MakeParabola(Para)
    gParabola = aParabola.Value()
    
    aTrimmedCurve = Geom2d_TrimmedCurve(gParabola,-100,100,1);
    
    display.DisplayShape(make_edge2d(aTrimmedCurve.GetHandle()) , update=True)
                   
    print " The entity A of type gp_Ax22d is not displayable \n "
    print " The entity D of type gp_Dir2d is displayed as a vector \n    ( mean with a length != 1 ) \n "

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
     
    display.DisplayShape(make_vertex(P1) , update=True)
    make_text("P1", P1, 6)

   
    display.DisplayShape(make_vertex(P2) , update=True)
    make_text("P2", P2, 6)
    
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
    
    pt2d_list = point2d_list_to_TColgp_Array1OfPnt2d(array)
    SPL1 = Geom2dAPI_PointsToBSpline(pt2d_list).Curve()
    
    harray  = TColgp_HArray1OfPnt2d (1,5)                
    harray.SetValue(1,gp_Pnt2d (7+ 0,0))                               
    harray.SetValue(2,gp_Pnt2d (7+ 1,2))                               
    harray.SetValue(3,gp_Pnt2d (7+ 2,3))                               
    harray.SetValue(4,gp_Pnt2d (7+ 4,3))                               
    harray.SetValue(5,gp_Pnt2d (7+ 5,5))   
    
    anInterpolation = Geom2dAPI_Interpolate(harray.GetHandle(), False, 0.01)
    anInterpolation.Perform()
    SPL2 = anInterpolation.Curve()
    
    harray2  = TColgp_HArray1OfPnt2d (1,5)                
    harray2.SetValue(1,gp_Pnt2d (11,0))
    harray2.SetValue(2,gp_Pnt2d (12,2))
    harray2.SetValue(3,gp_Pnt2d (13,3))
    harray2.SetValue(4,gp_Pnt2d (15,3))
    harray2.SetValue(5,gp_Pnt2d (16,5))
    
    anInterpolation2 = Geom2dAPI_Interpolate(harray2.GetHandle(),1,0.01)
    anInterpolation2.Perform()
    SPL3 = anInterpolation2.Curve()
    
    i = 0
    for P in array:
        i = i+1
        pstring = 'array'+`i`
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
    
    display.DisplayShape(make_edge2d(SPL1) , update=True)
    display.DisplayShape(make_edge2d(SPL2) , update=True)   
    display.DisplayShape(make_edge2d(SPL3) , update=True)

def curves2d_from_curves(event=None):
    '''
    @param display:
    '''
    display.EraseAll()
    major, minor = 12, 4                                              
    axis = gp_OX2d()                                             
    
    ell = GCE2d_MakeEllipse(axis,major,minor)
    E = ell.Value()
     
    TC = Geom2d_TrimmedCurve(E,-1,2,1)
    SPL = Geom2dConvert_CurveToBSplineCurve(TC.GetHandle(), Convert.Convert_TgtThetaOver2 )
    
    display.DisplayShape(make_edge2d(SPL) , update=True)

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
              
    display.DisplayShape( make_edge2d(SPL1), update=True )
    display.DisplayShape( make_edge2d(OC.GetHandle()) , update=True)
    display.DisplayShape( make_edge2d(OC2.GetHandle()), update=True )

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
    L = GccAna_Lin2d2Tan(P4,P5,Precision_Confusion()).ThisSolution(1)
     
    QL = GccEnt.GccEnt().Unqualified(L)
    radius = 2.
    TR = GccAna_Circ2d2TanRad(QC,QL,radius,Precision_Confusion())
    
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
    
    display.DisplayShape(make_edge2d(C))
    
     
    aLine = GCE2d_MakeSegment(L,-2,20).Value()
    display.DisplayShape(make_edge2d(aLine))
    
     
    if TR.IsDone():
        NbSol = TR.NbSolutions()
        for k in range(1,NbSol+1):
            circ = TR.ThisSolution(k)
            aCircle = Geom2d_Circle(circ)
            display.DisplayShape(make_edge2d(aCircle.GetHandle()), update=True)
            # find the solution circle ( index, outvalue, outvalue, gp_Pnt2d )
            pnt3 = gp_Pnt2d()                         
            parsol,pararg = TR.Tangency1(k, pnt3)
            # find the first tangent point                                    
            make_text("tangentpoint1", pnt3, 6)            
            pnt4 = gp_Pnt2d()                         
            parsol,pararg = TR.Tangency2(k, pnt4)
            make_text("tangentpoint2", pnt4, 6)
  
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
    
    for i in range(0,len(array)):
        P = array[i]
        pstring = "P"+`i+1`
        if i == 0:
            pstring = pstring + " (array)  "
        display.DisplayShape(make_vertex(P), update=True)
        make_text(pstring, P, 6)
           
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

    pt_list1 = point_list_to_TColgp_Array1OfPnt(array) 
    SPL1 = GeomAPI_PointsToBSpline(pt_list1).Curve()
    SPL1_c = SPL1.GetObject()
    
    a2 = []
    a2.append(gp_Pnt(-4,0,2 ))                                                                      
    a2.append(gp_Pnt(-2,2,0 ))                                                                      
    a2.append(gp_Pnt(2,3,-1 ))                                                                      
    a2.append(gp_Pnt(3,7,-2))                                                                       
    a2.append(gp_Pnt(4,9,-1))
    pt_list2 = point_list_to_TColgp_Array1OfPnt(a2)
    SPL2 = GeomAPI_PointsToBSpline(pt_list2).Curve()
    SPL2_c = SPL2.GetObject()
    
    aGeomFill1 = GeomFill_BSplineCurves(SPL1,
                                        SPL2,
                                        GeomFill_StretchStyle)
    
    SPL3 = Handle_Geom_BSplineCurve_DownCast(SPL1_c.Translated(gp_Vec(10,0,0)))
    SPL4 = Handle_Geom_BSplineCurve_DownCast(SPL2_c.Translated(gp_Vec(10,0,0)))
    aGeomFill2 = GeomFill_BSplineCurves(SPL3,
                                        SPL4,
                                        GeomFill_CoonsStyle)
    
    SPL5 = Handle_Geom_BSplineCurve_DownCast(SPL1_c.Translated(gp_Vec(20,0,0)))
    SPL6 = Handle_Geom_BSplineCurve_DownCast(SPL2_c.Translated(gp_Vec(20,0,0)))
    aGeomFill3 = GeomFill_BSplineCurves(SPL5,
                                        SPL6,
                                        GeomFill_CurvedStyle)
    
    aBSplineSurface1 = aGeomFill1.Surface()
    aBSplineSurface2 = aGeomFill2.Surface()
    aBSplineSurface3 = aGeomFill3.Surface()
    
    # annotate
    make_text("GeomFill_StretchStyle", SPL1_c.StartPoint(), 6)
    make_text("GeomFill_CoonsStyle", SPL3.GetObject().StartPoint(), 6)
    make_text("GeomFill_CurvedStyle", SPL5.GetObject().StartPoint(), 6)

    display.DisplayShape(make_face(aBSplineSurface1))
    display.DisplayShape(make_face(aBSplineSurface2))
    display.DisplayShape(make_face(aBSplineSurface3), update=True )

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
     
    pt_list1 = point_list_to_TColgp_Array1OfPnt(a1)
    SPL1 = GeomAPI_PointsToBSpline(pt_list1).Curve()
    display.DisplayShape(make_edge(SPL1))
    
    aPipe = GeomFill_Pipe(SPL1,1)
    aPipe.Perform(0,0)
    aSurface= aPipe.Surface()
    
    E = GC_MakeEllipse( gp_XOY(), 2,1).Value()
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
    
        E = GC_MakeEllipse( gp_XOY(), 2,1).Value()
        display.DisplayShape(make_edge(E))
    
        try:
            aPipe2 = GeomFill_Pipe(SPL1,TC1,TC2, mode)                                   
            aPipe2.Perform(0,0)                                  
            aSurface2= aPipe2.Surface()
            aSurface2.GetObject().Translate(gp_Vec(5,5,0))
            display.DisplayShape(make_face(aSurface2), update=True )
        except RuntimeError:
            print 'failed with mode:', mode
            
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
           
    display.DisplayShape(make_face(BSPLSURF.GetHandle()), update=True )

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
    display.DisplayShape(make_face(GOS2.GetHandle()), update=True )
    
def surfaces_from_revolution(event=None):
    display.EraseAll()
    array = []
    array.append(gp_Pnt(0,0,1))                                         
           
    array.append(gp_Pnt(1,2,2))                                         
    array.append(gp_Pnt(2,3,3))                                         
    array.append(gp_Pnt(4,3,4))                                         
    array.append(gp_Pnt(5,5,5))                                         
    aCurve = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array)).Curve()
    
    SOR =Geom_SurfaceOfRevolution(aCurve, gp_OX())
    
    display.DisplayShape(make_edge(aCurve))
    display.DisplayShape(make_face(SOR.GetHandle()), update=True )
 
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
    display.DisplayShape(make_vertex(b), update=True )

def exit(event=None):
    sys.exit() 

if __name__ == '__main__':
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

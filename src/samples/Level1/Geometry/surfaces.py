from OCC.TopoDS import *
import random, operator

from OCC.Adaptor3d import *
from OCC.BRepBuilderAPI import *
from OCC.gp import *

from OCC.Geom import *
from OCC.GeomAPI import *
from OCC.GeomFill import *
from OCC.GeomAdaptor import *
from OCC.TColgp import *

from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()

def point_list_to_TColgp_Array1OfPnt(li):
    pts = TColgp_Array1OfPnt(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    return pts

def rndPts(npts, upper_bound, lower_bound):
    '''
    '''
    _rndpts = []
    for i in xrange(npts):
        a = [random.uniform(upper_bound, lower_bound) for i in range(3)]
        _rndpts.append(a)
    
    _rndpts = sorted(_rndpts, key=operator.itemgetter(0))
    _out = [] 
    for i in _rndpts:
        _out.append(gp_Pnt(i[0], i[1], i[2]))
    
    points = point_list_to_TColgp_Array1OfPnt(_out)
    return points



def get_simple_bound(rndPts0):    
    spl1 = GeomAPI_PointsToBSpline(rndPts0).Curve()
    spl1_adap_h = GeomAdaptor_HCurve(spl1).GetHandle()
    bound1 = GeomFill_SimpleBound(spl1_adap_h, 0.001, 0.001).GetHandle()
    return spl1, bound1

def constrained_filling(event=None):
    
    # left
    pts1 = point_list_to_TColgp_Array1OfPnt(
           (gp_Pnt(0, 0, 0.0),
            gp_Pnt(0, 1, 0.3),
            gp_Pnt(0, 2, -0.3),
            gp_Pnt(0, 3, 0.15),
            gp_Pnt(0, 4, 0),
           )
        )
    
    # front
    pts2 = point_list_to_TColgp_Array1OfPnt(
           (gp_Pnt(0, 0, 0.0),
            gp_Pnt(1, 0, -0.3),
            gp_Pnt(2, 0, 0.15),
            gp_Pnt(3, 0, 0),
            gp_Pnt(4, 0, 0),
           )
        )
    
    # back
    pts3 = point_list_to_TColgp_Array1OfPnt(
           (gp_Pnt(0, 4, 0),
            gp_Pnt(1, 4, 0.3),
            gp_Pnt(2, 4, -0.15),
            gp_Pnt(3, 4, 0),
            gp_Pnt(4, 4, 1),
           )
        )
    
    # rechts
    pts4 = point_list_to_TColgp_Array1OfPnt(
            (gp_Pnt(4, 0, 0),
            gp_Pnt(4, 1, 0),
            gp_Pnt(4, 2, 0.3),
            gp_Pnt(4, 3, -0.15),
            gp_Pnt(4, 4, 1),
           )
        )
    
    
    spl1, b1 = get_simple_bound(pts1)
    spl2, b2 = get_simple_bound(pts2)
    spl3, b3 = get_simple_bound(pts3)
    spl4, b4 = get_simple_bound(pts4)
    
    # build the constrained surface
    bConstrainedFilling = GeomFill_ConstrainedFilling(8, 2)
    
    bConstrainedFilling.Init(b1,
                             b2,
                             b3,
                             b4,
                            False)
    
    srf1 = bConstrainedFilling.Surface()
    
    display.EraseAll()
    for i in [spl1, spl2, spl3, spl4]:
        edg = BRepBuilderAPI_MakeEdge(i)
        edg.Build()
        _edg = edg.Shape()
        display.DisplayShape(_edg)
    
    f = BRepBuilderAPI_MakeFace(srf1)
    f.Build()
    shp = f.Shape()
    display.DisplayShape(shp)
    
if __name__ == '__main__':
    add_menu('surfaces')
    add_function_to_menu('surfaces', constrained_filling)
    start_display()

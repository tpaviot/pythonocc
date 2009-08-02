from OCC.gp import *
from OCC.Geom2d import *
from OCC.FairCurve import *

from OCC.Display.wxSamplesGui import *
from OCC.Utils.Construct import *

def batten_curve( pt1, pt2, height, slope, angle1, angle2):
    fc = FairCurve_Batten(pt1, pt2, height, slope)
    fc.SetConstraintOrder1(1)
    fc.SetConstraintOrder2(1)
    fc.SetAngle1(angle1)
    fc.SetAngle2(angle2)
    print fc.DumpToString()
    #fc.Compute()
#    virtual Standard_EXPORT Standard_Boolean     Compute (FairCurve_AnalysisCode &Code, const Standard_Integer NbIterations=50, const Standard_Real Tolerance=1.0e-3)
#     Performs the algorithm, using the arguments Code, 
#NbIterations and Tolerance and computes the curve 
#with respect to the constraints. 
#Code will have one of the following values: 
#- OK 
#- NotConverged 
#- InfiniteSliding 
#- NullHeight 
#The parameters Tolerance and NbIterations control 
#how precise the computation is, and how long it will take. 
    return fc.Curve()

pt1 = gp_Pnt2d(0,0)
pt2 = gp_Pnt2d(-3,12)
height = 3.
slope = 1.3

for i in range(0, 100, 5):
    bc = batten_curve(pt1, pt2, height, i/10., i, -i)
    cc = make_edge2d(bc)
    
    #display.DisplayShape([make_vertex(pt1),
    #                      make_vertex(pt2)
    #                      ]
    #                     )
    
    display.DisplayColoredShape(cc)
    
start_display()
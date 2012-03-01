from OCC.Utils.Construct import *
from OCC.Display.SimpleGui import init_display
from OCC.Bisector import *

from OCC.Geom2d import *
from OCC.GCE2d import *
from OCC.GccAna import *
from OCC.gce import gce_MakeLin, gce_MakeLin2d
from OCC.GccInt import *

# start gui
display, start_display, add_menu, add_function_to_menu = init_display()


def bisect_lineline(event=None):
    display.EraseAll()
    li1 = gp_Lin2d(gp_Pnt2d(), gp_Dir2d(1,0) )
    li2 = gp_Lin2d(gp_Pnt2d(), gp_Dir2d(0,1) )

    bi = GccAna_Lin2dBisec(li1,li2)
    bi_li1 = bi.ThisSolution(1)
    bi_li2 = bi.ThisSolution(2)

    for i in [li1,li2]:
        display.DisplayShape( make_edge2d(i) )
    for i in [bi_li1,bi_li2]:
        display.DisplayColoredShape( make_edge2d(i), 'BLUE' )

def bisect_linecircle(event=None):
    display.EraseAll()
    ci1 = gp_Circ2d(gp_Ax22d(), 10000)
    li1 = gp_Lin2d(gp_Pnt2d(2000000,20), gp_Dir2d(0,1) )
    bi = GccAna_CircLin2dBisec(ci1,li1)
    aaa = bi.ThisSolution(1).GetObject()
    # enum GccInt_Lin, GccInt_Cir, GccInt_Ell, GccInt_Par, GccInt_Hpr, GccInt_Pnt
    assert aaa.ArcType() == 3, 'not a parabola'
    pb = aaa.Parabola()
    display.DisplayShape([make_edge2d(ci1), make_edge2d(li1)]) # make_edge2d(li1)
    display.DisplayColoredShape( make_edge2d(pb), 'BLUE' )

def bisect_pnt(event=None):
    display.EraseAll()
    p1 = gp_Pnt2d(1,0.5)
    p2 = gp_Pnt2d(0,1e5)
    bi = GccAna_Pnt2dBisec(p1,p2)
    aaa = bi.ThisSolution()
    # enum GccInt_Lin, GccInt_Cir, GccInt_Ell, GccInt_Par, GccInt_Hpr, GccInt_Pnt
    p1_ = make_vertex(gp_Pnt(p1.X(), p1.Y(), 0))
    p2_ = make_vertex(gp_Pnt(p2.X(), p2.Y(), 0))
    display.DisplayShape([p1_, p2_])
    display.DisplayColoredShape( make_edge2d(aaa), 'BLUE' )

def bisect_crvcrv(event=None):
    # I have *no* idea how to use this API...
    # however, its really important...
    Bisector_BisecCC


if __name__ == '__main__':
    add_menu('bisector')
    add_function_to_menu('bisector', bisect_lineline)
    add_function_to_menu('bisector', bisect_linecircle)
    add_function_to_menu('bisector', bisect_pnt)
    add_function_to_menu('bisector', bisect_crvcrv)
    start_display()
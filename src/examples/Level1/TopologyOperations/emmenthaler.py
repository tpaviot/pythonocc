from OCC.BRepPrimAPI import *
from OCC.gp import *
from OCC.BRepAlgoAPI import *
from OCC.KBE.base import Display
from OCC.Utils.Common import random_vec

from OCC.Utils.DataExchange.utils import shape_to_file

import random, time


def random_pnt():
    x,y,z = [random.uniform(0,1) for i in range(3)]
    return gp_Pnt(x,y,z)

def main():
    import random

    scope = 200
    box = BRepPrimAPI_MakeBox(scope, scope, scope)
    box_shape = box.Shape()
    
    
    spheres, bool_geom_shape = {}, {}   
    bool_geom = None
    
    def do_cyl():
        axe = gp_Ax2()
        axe.SetLocation(gp_Pnt((random_vec()*scope).XYZ()))
        axe.SetDirection(gp_Dir(random_vec()))                                
        cyl = BRepPrimAPI_MakeCylinder(axe, random.uniform(8,36), 5000.)
        return cyl, cyl.Shape()
    
    def do_cone():
        axe = gp_Ax2()
        axe.SetLocation(gp_Pnt((random_vec()*scope).XYZ()))
        axe.SetDirection(gp_Dir(random_vec()))
        cone = BRepPrimAPI_MakeCone( axe,
                                         0, #random.uniform(0,), # r1
                                         random.uniform(10,30), # r2
                                         random.uniform(30,1500), # h
                                         )
        return cone, cone.Shape()

    disp = Display()

    n =100
    for i in range(n):
        if i == 0:
            cyl, cyl_shell = do_cyl()
            print 'all good, let bool cut', box.Shape(), cyl_shell
            tmp = BRepAlgoAPI_Cut(box_shape, cyl_shell) # ttt_shape
            bool_geom_shape[i] = tmp
            print 'bool:', tmp           
        else:
            cyl, cyl_shape = do_cyl()
            tA = time.time()
            try:
                bool_geom_shape[i] = BRepAlgoAPI_Cut(bool_geom_shape[i-1].Shape(),
                                                      cyl_shape )
                #disp.display.DisplayShape(cyl_shape)
            except:
                pass
            
            print 'boolean cylinder:', i, 'took', time.time()-tA


        tA = time.time()
        disp.display.Repaint()
        print 'window update:', time.time()-tA
    disp.display.SetModeShaded()
    disp.display.DisplayShape(bool_geom_shape[i].Shape())
    shape_to_file(bool_geom_shape[i].Shape(), '/Users/localadmin/Desktop', 'emmenthaler', 'step')
    disp.start_display()

if __name__ == "__main__":
    main()






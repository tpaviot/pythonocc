from OCC.Display.WebGl import webgl_renderer
from OCC.BRepPrimAPI import *
from OCC.Utils.Construct import *
    
def fuse(event=None):
    box1 = BRepPrimAPI_MakeBox(20,10,10).Shape()
    sphere = translate_topods_from_vector(BRepPrimAPI_MakeSphere(10).Shape(),gp_Vec(.5,.5,0))
    box1 = translate_topods_from_vector(box1,gp_Vec(.5,.5,0) )
    fuse = BRepAlgoAPI_Fuse(box1,sphere).Shape()
    my_renderer = webgl_renderer.WebGlRenderer()
    my_renderer.DisplayShape(fuse)

if __name__ == '__main__':
    fuse()

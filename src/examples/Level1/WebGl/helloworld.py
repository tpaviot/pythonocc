from OCC.Display.WebGl import webgl_renderer
from OCC.BRepPrimAPI import *

#sh = BRepPrimAPI_MakeBox(100,100,100).Shape()
sh = BRepPrimAPI_MakeTorus(50,10).Shape()
my_renderer = webgl_renderer.WebGlRenderer()
my_renderer.DisplayShape(sh)


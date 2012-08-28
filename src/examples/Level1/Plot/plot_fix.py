from OCC.Prs3d import *
from OCC.HLRBRep import *
from OCC.HLRAlgo import *

# for 2d version
#from plot_view import display, start_display
from OCC.Display.SimpleGui import *

display, start_display, add_menu, add_function_to_menu = init_display()

from OCC.DataExchange.utils import file_to_shape
box = file_to_shape('../../../../data/_3dmodels/Pump_Bottom.brep')

# build projector
proj = display.View.Proj()
# V3d_Coordinate is missing
at = display.View.At()
up = display.View.Up()

projector = Prs3d_Projector(False, 1, proj[0],
                                       proj[1],
                                        proj[2],
                                      at[0],
                                       at[1],
                                        at[2],
                                      up[0],
                                       up[1],
                                        up[2]
                                )



proj = HLRAlgo_Projector()
hlr = HLRBRep_PolyAlgo()
#hlr.Projector(proj)
hlr.Projector(projector.Projector())

hlr.Load(box)
hlr.Update()

hlr_to_shp = HLRBRep_PolyHLRToShape()
hlr_to_shp.Update(hlr.GetHandle())

#    hlr_to_shp.HCompound(),
#    hlr_to_shp.Rg1LineHCompound(),
#    hlr_to_shp.Rg1LineVCompound(),
#    hlr_to_shp.RgNLineHCompound(),
#    hlr_to_shp.RgNLineVCompound(),
#    hlr_to_shp.OutLineVCompound(),
#    hlr_to_shp.OutLineHCompound(),
display.DisplayColoredShape(hlr_to_shp.HCompound(), 'BLUE')
display.DisplayColoredShape(hlr_to_shp.VCompound(), 'RED')
display.DisplayColoredShape(hlr_to_shp.OutLineVCompound(), 'GREEN')
display.DisplayColoredShape(hlr_to_shp.OutLineHCompound(), 'BLACK')
display.DisplayColoredShape(hlr_to_shp.Rg1LineHCompound(), 'WHITE')
display.DisplayColoredShape(hlr_to_shp.Rg1LineVCompound(), 'CYAN')
display.DisplayColoredShape(hlr_to_shp.RgNLineHCompound(), 'YELLOW')
display.DisplayColoredShape(hlr_to_shp.RgNLineVCompound(), 'WHITE')

from OCC.Utils.Construct import translate_topods_from_vector, gp_Vec
boxed = translate_topods_from_vector(box, gp_Vec(0,1000,0))
display.DisplayShape(boxed, transparency=0.8)

start_display()
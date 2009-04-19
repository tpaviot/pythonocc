from OCC.BRepPrimAPI import *
from OCC.HLRBRep import *
from OCC.TopoDS import *
from OCC.Prs3d import *
from OCC.HLRBRep import *
from OCC.HLRAlgo import *


# for 2d version
#from plot_view import display, start_display
from OCC.Display.wxSamplesGui import display, start_display


# interesting display.View.PostScriptOutput

#box = BRepPrimAPI_MakeBox(1,1,1).Shape()


from occ_utils import file_to_shape
box = file_to_shape('')

display.DisplayShape(box)

# make the PostScript plotter 

from OCC.PS_Driver import *
from OCC.PlotMgt import *

from OCC.TCollection import *
from OCC.TColStd import *

printer_list = PlotMgt().DeviceList().GetObject()
tmp = [printer_list.Value(i) for i in range(1,printer_list.Length())]

# crashes otherwise
printer_available = tmp[0].ToCString()

#plt_mgr = PlotMgt_Plotter(tmp[1], False)
#ps = PS.PS_Driver(tmp[0].ToCString(), 1000,1000)

img = PlotMgt_ImageDriver(tmp[0].ToCString())

#display.View.SetPlotter(img)


# build projector
proj = display.View.Proj()
# V3d_Coordinate is missing
#at = display.View.At()


proj = HLRAlgo_Projector()
hlr = HLRBRep_PolyAlgo()
hlr.Projector(proj)

hlr.Load(box) 
hlr.Update()

hlr_to_shp = HLRBRep_PolyHLRToShape()
hlr_to_shp.Update(hlr.GetHandle())

display.EraseAll()
display.DisplayShape(hlr_to_shp.VCompound())
display.DisplayShape(hlr_to_shp.HCompound())


display.DisplayShape(hlr_to_shp.Rg1LineHCompound())
display.DisplayShape(hlr_to_shp.Rg1LineVCompound())

display.DisplayShape(hlr_to_shp.RgNLineHCompound())
display.DisplayShape(hlr_to_shp.RgNLineVCompound())


display.DisplayShape(hlr_to_shp.OutLineVCompound())
display.DisplayShape(hlr_to_shp.OutLineHCompound())


#_pres_proj = Prs3d_Projector()

#_proj = HLRBRep_P


start_display()

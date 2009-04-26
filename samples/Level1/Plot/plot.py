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
from OCC.Aspect import *
box = file_to_shape('/Volumes/DATA/Jelle_prive/Jelle_dev/workspace/SVN/phd_code/chair_II/open_cube/open_voxel_chair_1.iges')

box_ais = display.DisplayShape(box)
#display.Context.SetTransparency(box_ais, 0.8)

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
at = display.View.At()
up = display.View.Up()

'''

    V3d_Coordinate DX,DY,DZ,XAt,YAt,ZAt, Vx,Vy,Vz ; 
    myActiveView->Proj(DX,DY,DZ); 
    myActiveView->At(XAt,YAt,ZAt); 
    myActiveView->Up( Vx,Vy,Vz );
    OnDisplay(false);
    Standard_Boolean IsPerspective = (myActiveView->Type() == V3d_PERSPECTIVE);
    Quantity_Length aFocus = 1;
    Prs3d_Projector aPrs3dProjector(IsPerspective,aFocus,DX,DY,DZ,XAt,YAt,ZAt,Vx,Vy,Vz);
    HLRAlgo_Projector aProjector = aPrs3dProjector.Projector();
 
    if (myDisplayableShape.IsNull()) return;
    myDisplayableShape->SetProjector(aProjector);
'''

#import ipdb; ipdb.set_trace()
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


for i in [
    hlr_to_shp.VCompound(),
#    hlr_to_shp.HCompound(),
#    hlr_to_shp.Rg1LineHCompound(),
#    hlr_to_shp.Rg1LineVCompound(),
#    hlr_to_shp.RgNLineHCompound(),
#    hlr_to_shp.RgNLineVCompound(),
#    hlr_to_shp.OutLineVCompound(),
#    hlr_to_shp.OutLineHCompound(),
    ]:
    
#    display.EraseAll()
    display.DisplayShape(i)
#    import ipdb; ipdb.set_trace()
    # works
    display.View.ScreenCopy(img.GetHandle())
    # crash
#    img.Spool(Aspect_PM_NPLOTTER, tmp[0] )
    
'''

notes printing: 
    
    display.View.ScreenCopy
    display.View.ProjModel


'''


#_pres_proj = Prs3d_Projector()

#_proj = HLRBRep_P


start_display()

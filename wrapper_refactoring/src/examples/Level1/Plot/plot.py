from OCC.BRepPrimAPI import *
from OCC.HLRBRep import *
from OCC.TopoDS import *
from OCC.Prs3d import *
from OCC.HLRBRep import *
from OCC.HLRAlgo import *
from OCC.PS import *

# for 2d version
#from plot_view import display, start_display
from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

#from OCC.Display.wxSamplesGui2d import display2d, start_display2d

# interesting display.View.PostScriptOutput
#box = BRepPrimAPI_MakeBox(1,1,1).Shape()

from OCC.Utils.DataExchange.utils import file_to_shape
from OCC.Aspect import *
from OCC.AIS2D import *
#box = file_to_shape('../../../../data/_3dmodels/aube_pleine.stp')
#box = file_to_shape('../../../../data/_3dmodels/Pump_Bottom.brep')
box = BRepPrimAPI_MakeSphere(40).Shape()


box_ais = display.DisplayShape(box)
display.Context.SetTransparency(box_ais, 0.8)

# make the PostScript plotter 

from OCC.PS import *
from OCC.PlotMgt import *

from OCC.TCollection import *
from OCC.TColStd import *
import os

def get_available_printers():

    printer_list = PlotMgt().DeviceList().GetObject()
    tmp = [printer_list.Value(i) for i in range(1,printer_list.Length())]
    print '%i available printers:'%len(tmp)
    for printer in tmp:
        print printer.ToCString()
    #plt_mgr = PlotMgt_Plotter(tmp[0], True)
    # The Postscript PS driver needs 2 env variable to be set:
    # DIRPLO and DIRPARPLOT
    os.environ['DIRPLOT'] = os.getcwd()
    os.environ['DIRPARPLO'] = os.getcwd()
    #ps = PS_Driver(tmp[0].ToCString(), 1000,1000)
    ps = PS_Driver("my_ps_file.ps", 1000,1000)
    print dir(ps)
    print ps.Plotter()
    img = PlotMgt_ImageDriver(tmp[0].ToCString())
#    except:
#        print 'Looks like you havent got a printer installed?'
#        import traceback
#        print 'Anyways, OCC complained with this message:'
#        traceback.print_exc()
    return img

img = get_available_printers()
#try:
#    printer_list = PlotMgt().DeviceList().GetObject()
#    tmp = [printer_list.Value(i) for i in range(1,printer_list.Length())]
#    print tmp
#    # crashes otherwise
#    printer_available = tmp[0].ToCString()
#    print printer_available
#    #plt_mgr = PlotMgt_Plotter(tmp[1], False)
#    #ps = PS.PS_Driver(tmp[0].ToCString(), 1000,1000)
#    img = PlotMgt_ImageDriver(tmp[0].ToCString())
#    print img
#except:
#    print 'Looks like you havent got a printer installed?'
#    import traceback
#    print 'Anyways, OCC complained with this message:'
#    traceback.print_exc()
   
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

#    hlr_to_shp.HCompound(),
#    hlr_to_shp.Rg1LineHCompound(),
#    hlr_to_shp.Rg1LineVCompound(),
#    hlr_to_shp.RgNLineHCompound(),
#    hlr_to_shp.RgNLineVCompound(),
#    hlr_to_shp.OutLineVCompound(),
#    hlr_to_shp.OutLineHCompound(),
display.DisplayColoredShape(hlr_to_shp.HCompound(), 'BLUE')
display.DisplayColoredShape(hlr_to_shp.VCompound(), 'RED')
#display.DisplayColoredShape(hlr_to_shp.HCompound(), 'GREEN')

#    display.EraseAll()
#    display.DisplayShape(i)
#    import ipdb; ipdb.set_trace()
    # works
#    display.View.ScreenCopy(img.GetHandle())
    # crash
#    img.Spool(Aspect_PM_NPLOTTER, tmp[0] )
    
'''

notes printing: 
    
    display.View.ScreenCopy
    display.View.ProjModel


'''


#_pres_proj = Prs3d_Projector()

#_proj = HLRBRep_P


#===============================================================================
# THIS IS THER INTERESTING PART
# FAILS WHEN CALLING projection.Add
#===============================================================================
#import ipdb; ipdb.set_trace()
#projection = AIS2D_ProjShape()
projection = AIS2D_ProjShape(proj, 3, True, True)
#projection.SetContext(display2d.Context_handle)
##projection.SetProjector(proj)
#projection.SetPolyAlgo(False) # if not set construction error is raised!
##
##projection.SetNbIsos(0)
##projection.SetHLMode(False)
#
projection.Add(box)
#
#display2d.Context.Load( projection.GetHandle() )
#display2d.Context.Display( projection.GetHandle() )

start_display()
#start_display2d()


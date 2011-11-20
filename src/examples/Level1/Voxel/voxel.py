__author__ = 'localadmin'

from OCC.Utils.Construct import *
from OCC.BRepPrimAPI import BRepPrimAPI_MakeSphere
from OCC.KBE.base import Display
from OCC.Voxel import *
from OCC.Quantity import *

sph = BRepPrimAPI_MakeSphere(12,12,12).Shape()
jjj = [sph]
xmin, ymin, zmin, xmax, ymax, zmax = get_boundingbox(sph).Get()
xL,yL,zL = xmax-xmin, ymax-ymin, zmax-zmin
xN,yN,zN = 0.2,0.2,0.2

print 'xmin, ymin, zmin,xL,yL,zL,xN,yN,zN', xmin, ymin, zmin,xL,yL,zL,xN,yN,zN


voxels = Voxel_ROctBoolDS()
#voxels = Voxel_BoolDS()
#voxels = Voxel_ColorDS()

#voxels = Voxel_BoolDS(0,0,0,
#                       1,1,1,
#                        xN,yN,zN )

fcp = Voxel_FastConverter(sph, voxels) #, 1, 10,10,10, 1)

fcp = Voxel_FastConverter(sph, voxels)
fcp.Convert()

import ipdb; ipdb.set_trace()

voxprs = Voxel_Prs()
voxprs.SetBoolVoxels(voxels)
voxprs.SetDisplayMode(Voxel_VDM_POINTS)
voxprs.SetColor(Quantity_Color(Quantity_NOC_AZURE))
voxprs.SetPointSize(1.)
voxprs.SetQuadrangleSize(100)
voxprs.SetTransparency(0)

#myAISContext->SetColor(theVPrs,Quantity_NOC_GRAY,Standard_False);
#myAISContext->SetMaterial(theVPrs,Graphic3d_NOM_DEFAULT,Standard_False);
#myAISContext->Display(theVPrs,Standard_True);
#Fit();

#Display()(sph)

#void OCCViewer::CreateVoxelfromShape(TopoDS_Shape& theShape)
#{
#Voxel_VisDrawer::Init();
#Voxel_BoolDS theVoxels;
#Voxel_FastConverter fcp(theShape, theVoxels); Standard_Integer progress; Standard_Boolean c1ok= fcp.Convert(progress);
#Handle(Voxel_Prs) theVPrs= new Voxel_Prs;
#theVPrs->SetBoolVoxels(&theVoxels);
#theVPrs->SetDisplayMode(Voxel_VDM_POINTS);//
#theVPrs->SetColor(Quantity_NOC_AZURE);
#theVPrs->SetPointSize(10.);
#theVPrs->SetQuadrangleSize(progress);
#theVPrs->SetTransparency(0);
#myAISContext->Display(theVPrs,Standard_True);
#}

#
#from OCC.Display.SimpleGui import *
#from OCC.BRepPrimAPI import *
#from OCC.Voxel import *
#from OCC.Quantity import *
#
#display, start_display, add_menu, add_function_to_menu = init_display()
#
#box = BRepPrimAPI_MakeBox(10,10,20)
#
#box_voxel = Voxel_BoolDS()
#fc = Voxel_FastConverter(box.Shape(),box_voxel, 0.1, 10,10,10, 4)
#fc.Convert()
#
##===============================================================================
## Voxel_VisDrawer::Init(); is missing!!!
##===============================================================================
#
#visu = Voxel_Prs()
#visu.SetBoolVoxels(box_voxel)
#visu.SetDisplayMode(Voxel_VDM_POINTS)
#visu.SetColor(Quantity_Color(Quantity_NOC_AZURE))
#visu.SetPointSize(1.)
#visu.SetQuadrangleSize(100)
#visu.SetTransparency(0)
#
###display.DisplayShape(box.Shape())
#display.Context.Display(visu.GetHandle(),True)
#display.FitAll()
#start_display()
#

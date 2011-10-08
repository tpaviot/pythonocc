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

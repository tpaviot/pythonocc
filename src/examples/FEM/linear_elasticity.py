from OCC.BRepPrimAPI import *
from OCC.gp import *
from OCC.Utils.Topology import Topo

# FEM meshing modules
from OCC.SMESH import *
# FEM meshing display
from OCC.MeshVS import *
from OCC.SMDSAbs import *
from OCC.SMESHDS import *
from OCC.SMDS import *
from OCC.StdMeshers import *
from OCC.PAF.Parametric import Parameters
from OCC.PAF import Parametric
from OCC.SGEOM import *
from OCC.Quantity import *

#===============================================================================
# HELPER CLASSES, FROM SMESH EXAMPLES
#===============================================================================

def mesh_shape(aShape):
    aMeshGen = SMESH_Gen()
    aMesh = aMeshGen.CreateMesh(0,True)
    
    # 1D
    an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)#discretization of the wire
    an1DHypothesis.SetLength(3,False) #the smallest distance between 2 points
    an1DHypothesis.SetLength(6,True) # the longest distance between 2 points
    an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen) # interpolation
    
    # 2D
    a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen) #define the boundary
    a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen) # the 2D mesh
    
    # 3D: Just uncomment the line to use the volumic mesher you want
    a3dHypothesis = StdMeshers_Prism_3D(4,0,aMeshGen) #OK
    #a3dHypothesis = StdMeshers_Hexa_3D(4,0,aMeshGen) #OK
    #a3dHypothesis = StdMeshers_CompositeHexa_3D(4,0,aMeshGen) #Ok
    #a3dHypothesis = StdMeshers_RadialPrism_3D(4,0,aMeshGen) # Don't work?
    
    #Calculate mesh
    aMesh.ShapeToMesh(aShape)
    
    #Assign hyptothesis to mesh
    aMesh.AddHypothesis(aShape,0)
    aMesh.AddHypothesis(aShape,1)
    aMesh.AddHypothesis(aShape,2)
    aMesh.AddHypothesis(aShape,3)
    aMesh.AddHypothesis(aShape,4)
    
    #Compute the data
    aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())
    return aMesh, aMeshGen

def display_fem_mesh(aMesh):
    aDS = SMESH_MeshVSLink(aMesh)
    aMeshVS = MeshVS_Mesh(True)
    DMF = 1 # to wrap!
    MeshVS_BP_Mesh       =  5 # To wrap!
    
    aPrsBuilder = MeshVS_MeshPrsBuilder(aMeshVS.GetHandle(),DMF,aDS.GetHandle(),0,MeshVS_BP_Mesh)
    aMeshVS.SetDataSource(aDS.GetHandle())
    aMeshVS.AddBuilder(aPrsBuilder.GetHandle(),True)
    context = display.Context
    context.Display(aMeshVS.GetHandle())
    context.Deactivate(aMeshVS.GetHandle())
    #display.DisplayShape(aShape)



#===============================================================================
# HONESTLY STOLEN FROM geomDC.py
#===============================================================================
ShapeType = {"COMPOUND":0, "COMPSOLID":1, "SOLID":2, "SHELL":3, "FACE":4, "WIRE":5, "EDGE":6, "VERTEX":7, "SHAPE":8}

from OCC.PAF.Context import Parameters, ParametricModelingContext
p = Parameters()
my_context = ParametricModelingContext(p)

p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4                                   # Create 7 parameters
my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=False)   # Create the first point
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=False)   # Create the second point
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=False)            # Create the box

#===============================================================================
# FROM geomDC.py: SubShapeAllSorted 
#===============================================================================
# Explode a shape on subshapes of a given type.
#  Sub-shapes will be sorted by coordinates of their gravity centers.
#  @param aShape Shape to be exploded.
#  @param aType Type of sub-shapes to be retrieved.
#  @return List of sub-shapes of type theShapeType, contained in theShape.
exploded_box = my_context.shapes_operations.MakeExplode(my_box, ShapeType['FACE'], 1)
#exploded_box = exploded_box.GetObject()
## so I know this creates GEOM_Object, just how do I get these?!!!
## geompy returns a nice python list... perhaps we should check that out...
#aaa = [Handle_GEOM_Object() for i in range(exploded_box.Length())]
#bbb = [exploded_box.Value(i+1) for i in range(exploded_box.Length())]
#ccc = [handle.DownCast(trans) for handle,trans in zip(aaa, bbb)]


def list_from_transient(li_trans):
    '''
    '''
    li_trans= li_trans.GetObject()
    aaa = [Handle_GEOM_Object() for i in range(li_trans.Length())]
    bbb = [li_trans.Value(i+1) for i in range(li_trans.Length())]
    ccc = [handle.DownCast(trans) for handle,trans in zip(aaa, bbb)]
    return ccc

aaa = list_from_transient(exploded_box)


#===============================================================================
# Make some hypothesis for meshing
#===============================================================================
aMeshGen = SMESH_Gen()
aMesh = aMeshGen.CreateMesh(0,True)
my_box_shape = my_box.GetObject().GetValue()
aMesh.ShapeToMesh(my_box_shape)

an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)#discretization of the wire
an1DHypothesis.SetLength(3,False) #the smallest distance between 2 points
an1DHypothesis.SetLength(6,True) # the longest distance between 2 points
an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen) # interpolation

# 2D
a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen) #define the boundary
a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen) # the 2D mesh

# 3D: Just uncomment the line to use the volumic mesher you want
a3dHypothesis = StdMeshers_Prism_3D(4,0,aMeshGen) #OK

aMesh.AddHypothesis(my_box_shape,0)
aMesh.AddHypothesis(my_box_shape,1)
aMesh.AddHypothesis(my_box_shape,2)
aMesh.AddHypothesis(my_box_shape,3)

#===============================================================================
# build the mesh, we're using SMESHDS since there the we cannot create groups on geom with SMESH_Mesh
#===============================================================================

face_load, face_lock = aaa[0], aaa[3]


group_load = my_context.group_operations.CreateGroup(face_load, ShapeType['FACE'])
group_lock = my_context.group_operations.CreateGroup(face_lock, ShapeType['FACE'])



 


msh = SMESHDS_Mesh(0,1)
msh.AddHypothesis(my_box_shape, an1DHypothesis)
msh.AddHypothesis(my_box_shape, a2dHypothseis)

theMesh = SMESHDS_Mesh(0,0)
theID = 0
theType = SMDSAbs_Face
theShape = face_load.GetObject().GetValue()


#===============================================================================
# THIS IS INTERESTING, SETTING SOME GROUPS
#===============================================================================

group_load = SMESHDS_GroupOnGeom( 0, aMesh.GetMeshDS(), SMDSAbs_Face, face_load.GetObject().GetValue() )
group_lock = SMESHDS_GroupOnGeom( 1, aMesh.GetMeshDS(), SMDSAbs_Face, face_lock.GetObject().GetValue() )
group_load.SetColor( Quantity_Color(0,1,0,1) )

# missing method
group_load.GetElements()

GR = SMESH_Group(0, aMesh, theType, 'jelle', theShape)

#===============================================================================
# MAKING A SUBMESH
#===============================================================================

submesh = aMesh.GetSubMesh(face_load.GetObject().GetValue())

#import ipdb; ipdb.set_trace()


aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())
GR = SMESH_Group(0, aMesh, theType, 'jelle', theShape)

# compute the mesh, set the group
aMesh.AddGroup( group_load.GetType(), 'load', 0, group_load.GetShape())
aMesh.AddGroup( group_lock.GetType(), 'lock', 1, group_lock.GetShape())

#msh_grp = SMDS_MeshGroup()


#===============================================================================
# SO WE GOT 2 CALID GROUPS, BUT NONE CAN BE ADDED TO "aMesh" !!!
#===============================================================================



#group_lock = SMESHDS_GroupOnGeom( 0, aMesh, SMDSAbs_Face, face_lock.GetObject().GetValue() )

#submesh_load = aMesh.GetSubMesh(face_load.GetObject().GetValue())
#submesh_lock = aMesh.GetSubMesh(face_lock.GetObject().GetValue())
##import ipdb; ipdb.set_trace()
#submesh_load.SetIsAlwaysComputed(True)
#submesh_lock.SetIsAlwaysComputed(True)


#aMesh.ExportMED("_TEST.med")  # write it to a file that can be solve with Code_Aster
aMesh.ExportUNV("_TEST_GROUPS.UNV")  # write it to a file that can be solve with Code_Aster


#f, auto_groups=0, version=MED_V2_2
# aMesh.ExportMED("/Users/localadmin/Documents/workspace/pyocc/src/examples/Level2/FEM/_TEST.med")  # write it to a file that can be solve with Code_Aster


#
# see documentation: 
# file:///Users/localadmin/Documents/Documentation/doc5.1.3/SMESH/doc/salome/tui/SMESH/classSMESHDS__Hypothesis.html
# msh.AddHypothesis(my_box_shape, a3dHypothesis) 



#aMesh, aMeshGen = mesh_shape(my_box.GetObject().GetValue())                   # construct the FEM mesh

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
display_fem_mesh(aMesh)                     # show the mesh


#SMESHDS_GroupOnGeom(id,theMesh,theType,theShape)


#===============================================================================
# START GUI
#===============================================================================
start_display()

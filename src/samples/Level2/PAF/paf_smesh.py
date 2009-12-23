#
# This sample shows a PAF geometry mixed with a SMESH meshing
#

# import PAF
from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters
# import SMESH
from OCC.SMESH import *
from OCC.StdMeshers import *
from OCC.MeshVS import *

#
# Init PAF
#
p = Parameters()            # Create a parameters set
my_context = ParametricModelingContext(p)     # Create and initialize a parametric context
my_context.init_display()   # start display#
my_context.register_operations(my_context.basic_operations,
                               my_context.prim_operations,
                               my_context.local_operations)
#
# Set Wireframe mode
#
#my_context.display.SetModeWireFrame()

#
# Create parameters and geometry
#

# First create the box
p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4                                   # Create 7 parameters
my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=False)   # Create the first point
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=False)   # Create the second point
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=False)            # Create the box

# Then create the cylinder to remove
p.X3 = 20
p.Y3 = 50.0
p.Z3 = 0.0
my_pnt3 = my_context.basic_operations.MakePointXYZ( p.X3, p.Y3, p.Z3, name="Pnt3" )
# Direction of the cylinder
p.DX1 = 0.0
p.DY1 = 0.0
p.DZ1 = 1.0
my_vec1 = my_context.basic_operations.MakeVectorDXDYDZ( p.DX1, p.DY1, p.DZ1, name="Vec1" )
# Parameters of the cylinder
p.R1 = 5.0 #radius
p.H1 = 40.0 #height
p.Angle1 = 0.0
cyl1 = my_context.prim_operations.MakeCylinderPntVecRH( my_pnt3, my_vec1, p.R1, p.H1, p.Angle1, name="Cylinder1", show=False )
# boolean subtract cyl1 from my_box
final_shape = my_context.boolean_operations.MakeBoolean( my_box, cyl1, 2, name='BooleanBox', show=True)

#
# The function to display the mesh
#
old_mesh_to_erase = None
display = my_context.display
#
# The meshing function. It is added as a callback to the ParametricModelingContext
#
def mesh_and_display():
    # First erase old mesh
    #global old_mesh_to_erase
        # First, erase all
    #display.EraseAll()
    if old_mesh_to_erase is not None:
        display.Context.Erase(old_mesh_to_erase)
        display.Repaint()
    aShape = my_context.get_shapes()[0]#.pop() #returns the last one, i.e. the box shape
    aMeshGen = SMESH_Gen()
    aMesh = aMeshGen.CreateMesh(0,True)
    # 1D
    an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)#discretization of the wire
    an1DHypothesis.SetLength(1,False) #the smallest distance between 2 points
    an1DHypothesis.SetLength(3,True) # the longest distance between 2 points
    an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen) # interpolation
    # 2D
    a2dHypothseis = StdMeshers_TrianglePreference(2,0,aMeshGen) #define the boundary
    #a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen) # the 2D mesh
    a2dAlgo = StdMeshers_MEFISTO_2D(3,0,aMeshGen) # the 2D mesh
    #Calculate mesh
    aMesh.ShapeToMesh(aShape)
    #Assign hyptothesis to mesh
    aMesh.AddHypothesis(aShape,0)
    aMesh.AddHypothesis(aShape,1)
    aMesh.AddHypothesis(aShape,2)
    aMesh.AddHypothesis(aShape,3)
    #Compute the data
    aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())
    # Display the data
    display_mesh(aShape,aMesh)

def display_mesh(the_shape,the_mesh):
    global old_mesh_to_erase
    # then redisplay the shape
    #display.DisplayShape(aShape)
    # then the mesh
    aDS = SMESH_MeshVSLink(the_mesh)
    aMeshVS = MeshVS_Mesh(True)
    DMF = 1 # to wrap!
    MeshVS_BP_Mesh       =  5 # To wrap!
    aPrsBuilder = MeshVS_MeshPrsBuilder(aMeshVS.GetHandle(),DMF,aDS.GetHandle(),0,MeshVS_BP_Mesh)
    aMeshVS.SetDataSource(aDS.GetHandle())
    aMeshVS.AddBuilder(aPrsBuilder.GetHandle(),True)
    #Create the graphic window and display the mesh
    context = my_context.display.Context
    context.Display(aMeshVS.GetHandle())
    old_mesh_to_erase  = aMeshVS.GetHandle()
    context.Deactivate(aMeshVS.GetHandle())
    #display.DisplayShape(the_shape)
    display.FitAll()
    
my_context.register_post_solver_callback(mesh_and_display)

#
# Modify parameters
#
##for i in range(14,100):
#    print 'changed parameter p.Z2 and p.Y2 from %s to %s' % ( i-1, i ) 
#    p.Z2 = i
#    p.R1 += 0.2
#print my_context.get_shapes()
my_context.start_display()


'''

skeleton for a high-level FEM framework
all fictional for the moment...

'''

# meshing driver
from OCC.SGEOM import GEOM_IOperations, GEOM_Engine

# topology
from OCC.TopoDS import *
from OCC.Utils.Topology import Topo 


#===============================================================================
# MESHING DRIVERS
#===============================================================================

class MeshDriver(object):
    '''
    abstract class for an associative FEM mesh driver
    '''
    def __init__(self, hypothesis):
        '''
        @param hypothesis: the SMESH hypothesis that will be used to mesh the shape
        '''
        engine = GEOM_Engine()
        # SHIT! Cannot initialize!
        #GEOM_IOperations.__init__(engine, 100)
        # this does work
        ops = GEOM_IOperations(engine, 100)
        self.hypothesis = hypothesis
        pass
    
    def _set_shape(self, shape):
        '''
        when the MeshDriver instance will be registered to the FEM instance
        this method will be called in order to set the shape-to-be-meshed
        @param shape:
        '''
        self.shape = shape


class NetGenMeshDriver(MeshDriver):
    '''
    concrete class implmenting a 
    '''
    def __init__(self, hypothesis):
        MeshDriver.__init__(hypothesis)

    
class QuadMeshDriver(MeshDriver):
    '''
    concrete class implementing a Quad mesher
    '''
    def __init__(self, hypothesis):
        MeshDriver.__init__(hypothesis)

#===============================================================================
# ANALYSIS
#===============================================================================

class Analysis(object):
    '''
    abstract class for FEM analysis types
    think of these as building blocks for simulations
    so, ElasticityAnalysis | ThermalAnalysis and so on...
    
    following the concept of Bricks in getfem++
    where a analysis has been wrapped in a high-level class
    '''
    def __init__(self):
        '''
        '''
        pass


class LinearElasticityAnalysis(Analysis):
    '''
    concrete class implementing elasticity 
    '''
    def __init__(self):
        Analysis.__init__()


class NonLinearElasticityAnalysis(Analysis):
    '''
    concrete class implementing non-linear elasticity 
    '''
    def __init__(self):
        Analysis.__init__()

#===============================================================================
# SOLVERS
#===============================================================================
    
class Solver(object):
    '''
    abstract class for implementing FEM solver ( abacus, ls-dyna, getfem++, code aster, * ) 
    '''
    def __init__(self):
        pass

    
class AbacusSolver(Solver):
    '''
    concrete class implementing the abacus solver
    '''
    def __init__(self):
        Solver.__init__()


class GetFemPlusPlusSolver(Solver):
    '''
    concrete class implementing the GetFem++ solver
    '''
    def __init__(self):
        Solver.__init__()

#===============================================================================
# FEM
#===============================================================================

class FEM(object):
    def __init__(self, solid):
        '''
        initialize a Finite Element Analysis
        @param solid: the TopoDS_Solid that will be analyzed
        
        NOTE TO SELF: FEM isnt limited to solids, right?
        so perhaps, FEM should be an abstract class, with concrete classes
        such as FEMShell, FEMFace, FEMSolid, FEMWire?
        
        arrrrrrgh clueless already...
        
        '''
        assert isinstance(solid, TopoDS_Solid)
        self.solid = solid
        
        # attributes
        self.mesh_driver = None
        self.analysis = None
        self.solver = None
        
        # status
        self._stat_solver_set   = False
        self._stat_analysis_set = False
        self._stat_mesh_driver_set = False
        
        
    def lock(self, topological_element, x=True, y=True, z=True):
        '''
        sets a locked boundary conditions to a topological element
        that way a face, wire, edge or vertex will not move
        
        degrees of freedom can be set using the x,y,z arguments
         
        @param topological_element: a topological element like a face, edge, wire or vertex
        @param x: locks X axis
        @param y: locks X axis
        @param z: locks X axis
        '''
        raise NotImplementedError
    
    def load(self, topological_element, vector=None):
        '''
        add a force to a topological element
        @param topological_element: a topological element like a face, edge, wire or vertex
        @param vector: the direction of the force; if None, the normal will be used
        '''
        raise NotImplementedError
        
    def register_solver(self, solver):
        '''
        register the solver that will compute the FEM analysis
        @param solver: a subclass of Solver
        '''
        self.solver = solver
        assert issubclass(solver.__class__, Solver), 'need a subclass of Solver, got %s ' % ( solver.__class__)
    
    def register_analysis(self, analysis):
        '''
        register the type of analysis that will be solved
        @param solver: a subclass of Analysis
        '''
        self.analysis = analysis
        assert issubclass(analysis.__class__, Analysis), 'need a subclass of Solver, got %s ' % ( analysis.__class__)

    def register_mesh_driver(self, mesh_driver):
        '''
        register the type of analysis that will be solved
        @param solver: a subclass of Analysis
        '''
        self.mesh_driver = mesh_driver
        assert issubclass(mesh_driver.__class__, Analysis), 'need a subclass of Solver, got %s ' % ( mesh_driver.__class__)
        # attach the shape to the mesh driver
        mesh_driver._set_shape(self.solid)
    
    @property
    def is_solved(self):
        '''
        returns boolean indicating whether the analysis has been completed 
        '''
        raise NotImplementedError
    
    @property
    def is_setup(self):
        '''
        returns boolean indicating whether the analysis has been set up correctly
        meaning that all nessecary co-operating classes ( Analysis, Solver ) have been registered
        ''' 

    def __repr__(self):
        msg = '< FEM instance >\n'
        msg += 'Shape: %s \n' % ( self.solid )
        
        if self._stat_analysis_set:
            msg += 'Analysis set: %s \n' % ( self.analysis )
        else:
            msg += 'No analysis set\n'
        
        if self._stat_mesh_driver_set:
            msg += 'Mesh driver set: %s \n' % ( self.mesh_driver ) 
        else:
            msg += 'No mesh driver set\n'
            
        if self._stat_solver_set:
            msg += 'Solver set: %s \n' % ( self.solver )
        else:
            msg += 'No solver set\n'
        
        return msg


class FEMShell(FEM):
    '''
    !!! No clue whether its a good idea to implement FEM classes for topological types
    '''
    def __init__(self):
        FEM.__init__()


class FEMSolid(FEM):
    '''
    !!! No clue whether its a good idea to implement FEM classes for topological types
    '''
    def __init__(self):
        FEM.__init__()
        
        
#===============================================================================
# VISUALIZATION
#===============================================================================


class VisualizeAnalysis(object):
    def __init__(self, FEM):
        '''
        visualize the results of the analysis
        @param FEM: FEM subclass instance
        '''
        self.FEM = FEM
        
    def display(self):
        '''
        if VTK is installed, show the resulting 
        '''
        raise NotImplementedError
    
    def set_camera(self, occ_camera):
        '''
        if we have 2 panels, a cad viewer, and a fem viewer, it would be cool to have 
        synchronized views
        @param occ_camera: the cad viewer camera
        '''
        self.occ_camera = occ_camera
        raise NotImplementedError
        
    def get_camera(self):
        raise NotImplementedError
    
    def sync_cameras(self):
        raise NotImplementedError
    
    camera = property(set_camera,get_camera) 


#===============================================================================
# Example of usage of the future framework
#===============================================================================

from OCC.BRepPrimAPI import *
from OCC.gp import *

shape = BRepPrimAPI_MakeBox(1,1,1).Shape()  # stupid shape for analysis
topo = Topo(shape)                          # for traversing the topology
faces = topo.faces()                        # faces of the box  
face1 = faces.next()                        # face used for loads
face2 = faces.next()                        # face that will be locked

mesh_driver = QuadMeshDriver('nadah')       # set up the mesh driver. when geometry is updated, so will the mesh before solving it
analysis    = LinearElasticityAnalysis()    # set up the problem to be solved
solver      = AbacusSolver()                # configure the solver

fem = FEM(shape)            
fem.load(face1, gp_Vec())       
fem.lock(face2, x=False, y=False, z=True)
fem.register_analysis(analysis)
fem.register_solver(solver)
fem.solve()

viz = VisualizeAnalysis(fem)                # show the Von Mises stresses in VTK
viz.display()                               # would be really cool to have a viz. panel next to the CAD viewer, with synchronized cameras!

#===============================================================================
# UNITTEST
#===============================================================================

if __name__=='__main__':
    # you have got to love doctest ;')
    import doctest, sys
    doctest.testmod(sys.modules[__name__])
        

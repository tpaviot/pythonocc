'''

scaffold for a high-level FEMSimulation framework
all fictional for the moment...

'''

# meshing driver
from OCC.SGEOM import GEOM_IOperations, GEOM_Engine

# topology
from OCC.TopoDS import *
from OCC.Utils.Topology import Topo 
from OCC.Display.wxSamplesGui import display


'''

LINKS OF INTEREST:

# med->abacus ( med is salome's neutral FEMSimulation file )
http://caelinux.com/CMS/index.php?option=com_joomlaboard&Itemid=52&func=view&catid=16&id=800

# I know they have been working too on a OCC backend for reading geometry
# Note that its free for academics $ for industry 
http://cubit.sandia.gov/fact/cubit-fact-sheet.html


'''

#===============================================================================
# EXCEPTIONS
#===============================================================================


class Unsolved(Exception):
    '''
    when for instance looking up values on a simulation that has not yet run
    '''
    pass

class SolverError(Exception):
    pass

class AbacusSolverError(SolverError):
    '''
    when errors occur while solving with Abacus
    '''
    pass

class MeshingError(Exception):
    '''
    when meshing fails
    '''
    pass

class QuadMeshingError(MeshingError):
    '''
    when failing to mesh with the QuadMeshDriver
    '''
    pass

#===============================================================================
# MESHING DRIVERS ---
#===============================================================================

#class tmp(GEOM_IOperations):
#    def __init__(self):
#        engine = GEOM_Engine()
#        GEOM_IOperations.__init__(engine, 100)
#
#tmp()

class MeshDriver(object):
    '''
    abstract class for an associative FEMSimulation mesh driver
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
    
    def _set_shape(self, shape):
        '''
        when the MeshDriver instance will be registered to the FEMSimulation instance
        this method will be called in order to set the shape-to-be-meshed
        @param shape:
        '''
        self.shape = shape


class NetGenMeshDriver(MeshDriver):
    '''
    concrete class implementing a netgen mesher 
    '''
    def __init__(self, hypothesis):
        MeshDriver.__init__(hypothesis)

    
class QuadMeshDriver(MeshDriver):
    '''
    concrete class implementing a quad mesher
    '''
    def __init__(self, hypothesis):
        MeshDriver.__init__(hypothesis)

#===============================================================================
# ANALYSIS ---
#===============================================================================


class Analysis(object):
    '''
    abstract class for FEMSimulation analysis types
    think of these as building blocks for simulations
    so, ElasticityAnalysis | ThermalAnalysis and so on...
    
    following the concept of Bricks in getFEMSimulation++
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
# SOLVERS ---
#===============================================================================
    
class Solver(object):
    '''
    abstract class for implementing FEMSimulation solver ( abacus, ls-dyna, getFEMSimulation++, code aster, * ) 
    '''
    def __init__(self):
        pass

    
class AbacusSolver(Solver):
    '''
    concrete class implementing the abacus solver
    '''
    def __init__(self):
        Solver.__init__()


class GetFEMSimulationPlusPlusSolver(Solver):
    '''
    concrete class implementing the GetFEMSimulation++ solver
    '''
    def __init__(self):
        Solver.__init__()

#===============================================================================
# FEMSimulation ---
#===============================================================================


class FEMSimulation(object):
    
    '''

    Perhaps it would be elegant to have few methods on the co-operating classes, and have this class 
    be the main interface to the simulation
    
    
    Possible a set of methods between
    #===============================================================================
    # I just like to do this
    #===============================================================================
    Could become another co-operating class
    So, that's why its important to keep related methods together ;')
    
    
    '''

    
    def __init__(self, solid):
        '''
        initialize a Finite Element Analysis
        @param solid: the TopoDS_Solid that will be analyzed
        
        NOTE TO SELF: FEMSimulation isnt limited to solids, right?
        so perhaps, FEMSimulation should be an abstract class, with concrete classes
        such as FEMSimulationShell, FEMSimulationFace, FEMSimulationSolid, FEMSimulationWire?
        
        arrrrrrgh clueless already...
        
        '''
        assert isinstance(solid, TopoDS_Solid)
        
        # shape to analyze
        self._solid = solid
        
        # attributes
        self._mesh_driver = None
        self._analysis = None
        self._solver = None
        
        # status
        self._stat_solver_set   = False
        self._stat_analysis_set = False
        self._stat_mesh_driver_set = False
        self._stat_output_set = False
        
        # administration
        self._output_dir = None
        self._start_time = None     # tracking how long it took to solve simulation 
        self._finish_time = None
        
    #===============================================================================
    # administration boooooooooooooh boring! ---
    #===============================================================================
    
    def get_output_dir(self):
        return self._output_dir
    
    def set_output_dir(self, pth):
        raise NotImplementedError
    
    output_dir = property(get_output_dir, set_output_dir)

    #===============================================================================
    # setting up the simulation --- 
    #===============================================================================
        
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
    
    
    def boundary(self):
        '''
        I've got to follow some MIT courseware on FEMSimulation...
        ;')
        '''
        raise NotImplementedError
    
    #===============================================================================
    # register co-operating classes ---
    #===============================================================================
    
    def set_solver(self, solver):
        '''
        register the solver that will compute the FEMSimulation analysis
        @param solver: a subclass of Solver
        '''
        self._solver = solver
        assert issubclass(solver.__class__, Solver), 'need a subclass of Solver, got %s ' % ( solver.__class__)
    
    def get_solver(self):
        return self._solver
    
    solver = property(get_solver, set_solver)
    
    def set_analysis(self, analysis):
        '''
        register the type of analysis that will be solved
        @param solver: a subclass of Analysis
        '''
        self._analysis = analysis
        assert issubclass(analysis.__class__, Analysis), 'need a subclass of Solver, got %s ' % ( analysis.__class__)

    def get_analysis(self):
        return self._analysis
    
    analysis = property(get_analysis, set_analysis)

    def set_mesh_driver(self, mesh_driver):
        '''
        register the type of analysis that will be solved
        @param solver: a subclass of Analysis
        '''
        self._mesh_driver = mesh_driver
        assert issubclass(mesh_driver.__class__, Analysis), 'need a subclass of Solver, got %s ' % ( mesh_driver.__class__)
        # attach the shape to the mesh driver
        self._mesh_driver._set_shape(self.solid)
        
    def get_mesh_driver(self):
        return self._mesh_driver
    
    mesh_driver = property(get_mesh_driver, set_mesh_driver)

    # make shape readonly
    @property
    def shape(self):
        return self._shape 
    
    #===============================================================================
    # query results ---
    #===============================================================================

    def value_by_face(self, face, u,v ):
        '''
        retrieve the corresponding value on the FEMSimulation mesh at a given location `u,v` on `face`
        @param face: the face to query
        @param u,v: coordinate on the surface of the face
        
        >>> fem_sim.value_by_face( face, u,v )
        12e2
        
        '''
        raise NotImplementedError
        
    def value_by_point(self, point):
        '''
        retrieve the corresponding value on the FEMSimulation mesh at `point` 
        '''
        raise NotImplementedError
    
    def value_by_averaged_face(self, face):
        '''
        returns the average result on `face` 
        '''
        raise NotImplementedError
    
    def locate_value(self, value, radius):
        '''
        locate `value` on shape
        returns an iterator of locations ( face, u,v, point ) of a given `value` on the shape
        
        in order not to return an infinity of results a radius has to be set 
        
        @param value:
        @param radius:
        '''
        raise NotImplementedError
    
    def locate_range(self, value_min, value_max, radius):
        '''
        locate a range of values on shape
        similar to locate_value, but for a range of values
        
        returns an iterator of locations ( face, u,v, point )
        between `value_max` and `value_min` on the shape
        
        in order not to return an infinity of results a radius has to be set 
        
        @param value_min: lowest value in range
        @param value_max: upper value in range 
        @param radius: used to filter the number of found locations
        '''
        raise NotImplementedError

    def locate_minimum(self):
        '''
        locate the lowest value on shape
        returns a location ( face, u,v, point )
        '''
        raise NotImplementedError
        
    def locate_maximum(self):
        '''
        locate the lowest value on shape
        returns a location ( face, u,v, point )
        '''
        raise NotImplementedError

    #===============================================================================
    # start crunching ---
    #===============================================================================
    
    def solve(self, nprocs=2):
        '''
        fires up the simulation
        @param nprocs: the number of processes you can spare
        '''
        raise NotImplementedError
        
    def solve_distributed(self):
        '''
        havent got a clue, but it sounds promising
        '''
        raise NotImplementedError

    @property
    def solve_duration(self):
        '''
        print time it took to solve simulation 
        '''
        assert self.is_solved()
        return self._finish_time - self._start_time
    
    #===============================================================================
    # status administration ---
    #===============================================================================
    
    def is_solved(self):
        '''
        returns boolean indicating whether the analysis has been completed 
        '''
        raise NotImplementedError
    
    def is_setup(self):
        '''
        returns boolean indicating whether the analysis has been set up correctly
        meaning that all nessecary co-operating classes ( Analysis, Solver ) have been registered
        ''' 
        raise NotImplementedError
    
    def error(self):
        '''
        report the error of the resulting simulation
        '''
        raise NotImplementedError
        
    def report(self):
        '''
        one could make some pdf report with lots of stats and images here
        '''
        raise NotImplementedError
    
    def progress(self, interval=10):
        '''
        would be really cool if progress would be reported every 10 seconds by default
        while the simulation is being solved
        '''
        raise NotImplementedError
            
    #===============================================================================
    # representation prints status of the simulation ---
    #===============================================================================

    def __repr__(self):
        msg = '< FEMSimulation instance >\n'
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
            msg += 'No solver set \n'
            
        if self._stat_output_dir:
            msg += 'Output directory set: %s \n' % ( self._output_dir)
        else:
            msg += 'No output directory set \n'
        
        return msg


class FEMSimulationShell(FEMSimulation):
    '''
    !!! No clue whether its a good idea to implement FEMSimulation classes for topological types
    '''
    def __init__(self):
        FEMSimulation.__init__()


class FEMSimulationSolid(FEMSimulation):
    '''
    !!! No clue whether its a good idea to implement FEMSimulation classes for topological types
    '''
    def __init__(self):
        FEMSimulation.__init__()
        
        
#===============================================================================
# VISUALIZATION ---
#===============================================================================


class VisualizeAnalysis(object):
    def __init__(self, FEMSimulation):
        '''
        abstract class to visualize the results of the analysis
        @param FEMSimulation: FEMSimulation subclass instance
        '''
        self.FEMSimulation = FEMSimulation
        self.occ_camera = None
        
    def display(self):
        '''
        if VTK is installed, show the resulting 
        '''
        raise NotImplementedError
    
    def set_camera(self, occ_camera):
        '''
        if we have 2 panels, a cad viewer, and a FEMSimulation viewer, it would be cool to have 
        synchronized views
        @param occ_camera: the cad viewer camera
        '''
        self.occ_camera = occ_camera
        raise NotImplementedError
        
    def get_camera(self):
        raise NotImplementedError
    
    def sync_cameras(self):
        '''
        would be cool if the CAD panel and FEM viz. panel would be synchronized
        that would be pretty insightful
        '''
        raise NotImplementedError
    
    camera = property(set_camera,get_camera) 


class GmShVisualizeAnalysis(VisualizeAnalysis):
    '''
    concrete visualization class, using the gmsh viewer
    '''
    raise NotImplementedError

    
class VtkVisualizeAnalysis(VisualizeAnalysis):
    '''
    concrete visualization class, using the vtk
    '''
    raise NotImplementedError
    

#===============================================================================
# Example of usage of the future framework ---
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

FEMSimulation = FEMSimulation(shape)            
FEMSimulation.load(face1, gp_Vec())       
FEMSimulation.lock(face2, x=False, y=False, z=True)
FEMSimulation.analysis = analysis
FEMSimulation.solver = solver
FEMSimulation.mesh_driver = mesh_driver
FEMSimulation.output_dir = '/dev/null/simulation.fem'
FEMSimulation.solve()

viz = VtkVisualizeAnalysis(FEMSimulation)   # show the Von Mises stresses in VTK
viz.camera = display                        # display is the OCC viewer instance we use
viz.display()                               # would be really cool to have a viz. panel next to the CAD viewer, with synchronized cameras!

#===============================================================================
# MAIN == UNITTEST ---
#===============================================================================

if __name__=='__main__':
    # you have got to love doctest ;')
    import doctest, sys
    doctest.testmod(sys.modules[__name__])
        

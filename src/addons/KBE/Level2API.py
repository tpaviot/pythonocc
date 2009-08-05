from __future__ import with_statement
'''
Sketch for a high-level API for pythonOCC

Please note the following;
@readonly 
means that the decorated method is a readonly descriptor
@property 
means that the decorated method can be set / get using the descriptor
( irony is that just using @property *would* result in a readonly descriptor :")

Sometimes a set of methods should be contained in another module or class, or simply grouped.
For instance the set of methods after:
#===============================================================================
#    Curve.local_properties
#===============================================================================

Can be a module, class or namespace.

'''
from OCC.gp import *

from OCC.TopoDS import *
from OCC.Geom import *
from OCC.BRep import *
# for projection
from OCC.GeomAPI import *
from OCC.Extrema import *
# for checking if a surface is planar
from OCC.GeomLib import *
from OCC.TopExp import *
from OCC.BRepBuilderAPI import *

# for generalizing edges/curves/analytic types
from OCC.Adaptor2d import *
from OCC.Adaptor3d import *
# we'll use this, really
from OCC.BRepAdaptor import *

from OCC.GCPnts import *

#===============================================================================
# HELPER CLASSES
#===============================================================================
from TypesLookup import GeometryLookup, ShapeToTopology
from OCC.Utils.Context import assert_isdone
from OCC.Utils.Construct import *
from OCC.Geom import *
import warnings


'''

Level 2 API pythonOCC
author: Jelle Feringa

The high-level API is build on several classes that are generic for a lot of
Topological types. This way, the high-level API will be able to use generic classes 
( class factory pattern ) and specialize on instantiation 



Idea; can we resolve the topology in the same manner as CGAL.Polyhedron?
That sure would be ideal...


'''

#===============================================================================
# Utility methods for Level 2 API
#===============================================================================

#===============================================================================
# Curve API
#===============================================================================


class DiffGeomCurve(object):
    def __init__(self, instance):
        self.instance = instance
        from OCC.GeomLProp import GeomLProp_CLProps
        from OCC.BRepLProp import BRepLProp_CLProps
        # initialize with random parameter: 0
        if self.instance.is_edge:
            self._curvature = BRepLProp_CLProps(self.instance.brep_adaptor, 0, 2, 1e-5)
#            self.instance.brep_adaptor, 0, 1e-12
#            self._curvature.SetParameter(0)
        
        elif self.instance.is_wire:
            warnings.warn('DiffGeom not yet implemented for Wire') 
            self._curvature = None
        
        else:
            self._curvature = GeomLProp_CLProps(self.instance.crv_handle, 0, 2, 1e-5)
        
    def curvature(self, u, n, resolution=1e-7):
        from OCC.GeomLProp import GeomLProp_CLProps
        if not self._curvature_init:
            self._curvature = GeomLProp_CLProps(self.crv, u, n, resolution)
            self._curvature_init=True
        else:
            self._curvature.SetParameter(u)

    def radius(self, u):
        '''returns the radius at u
        '''
        # NOT SO SURE IF THIS IS THE SAME THING!!!
        self._curvature.SetParameter(u)
        pnt = gp_Pnt()
        self._curvature.CentreOfCurvature(pnt)
        return pnt    

    def curvature(self, u):
        # UGLYYYYYYYYYYYY
        self._curvature.SetParameter(u)
        return self._curvature.Curvature()

    def tangent(self, u ):
        '''sets or gets ( iff vector ) the tangency at the u parameter
        tangency can be constrained so when setting the tangency, you're constrainting it in fact
        '''
        self._curvature.SetParameter(u)
        if self._curvature.IsTangentDefined():
            ddd = gp_Dir()
            self._curvature.Tangent(ddd)
            return ddd
        else:
            raise ValueError('no tangent defined')

    def normal(self, u):
        '''returns the normal at u
        '''
        try:
            self._curvature.SetParameter(u)
            ddd = gp_Dir()
            self._curvature.Normal(ddd)
            return ddd
        except:
            raise ValueError('no normal was found')
    
    def derivative(self, u, n):
        '''
        returns n derivatives at parameter b 
        '''
        self._curvature.SetParameter(u)
        deriv = {1:self._curvature.D1,
                 2:self._curvature.D2,
                 3:self._curvature.D3,
                 }
        try:
            return deriv[n]
        except KeyError:
            raise AssertionError, 'n of derivative is one of [1,2,3]'
    
    def points_from_tangential_deflection(self):
        from OCC.GCPnts import GCPnts_TangentialDeflection
        pass
    
class IntersectCurve(object):
    def __init__(self, Instance):
        self.Instance = Instance
    
    def intersect(self, other):
        '''intersect self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        '''
        raise NotImplementedError

#===============================================================================
#    Curve.construct
#===============================================================================

class ConstructFromCurve():
    def __init__(self, instance):
        self.Instance = instance
    
    def make_edge(d2=False):
        '''returns a brep edge
        '''
        if d2:
            BRepBuilderAPI_MakeEdge2d(self.instance.crv).Edge()
        return BRepBuilderAPI_MakeEdge(self.instance.crv).Edge()
    
    def make_face(self):
        '''returns a brep face iff self.closed()
        '''
        raise NotImplementedError
    
    def make_wire(self):
        '''returns a brep face iff self.closed()
        '''
        if self.closed():
            raise AssertionError, 'curve is not closed'
        return BRepBuilderAPI_MakeWire(self.make_edge(self.instance.crv)).Wire()
    
    def make_offset(self, offset, vec):
        '''
        returns an offsetted curve
        @param offset: the distance between self.crv and the curve to offset
        @param vec:    offset direction
        '''
        
        return Geom_OffsetCurve(self.instance.h_crv, offset, vec)
    
    def approximate_on_surface(self):
            '''
            approximation of a curve on surface
            '''
            from OCC.Approx import Approx_CurveOnSurface
            pass
        
class GraphicCurve(object):
    '''
    '''
    def __init__(self, display):
        '''
        
        @param display: set the wxViewer.display object
        '''
        self.display = display

class Curve(object):
    '''
    
    
    
    DEALS WITH E*D*G*E*S ___only___
    
    otherwise this is becoming a total nightmare!!!
    get rid of crv nonsense...
    
    
    
    
    '''
    
    
    
    """Design for a high level API for Curves in PythonOCC
    To be implemented as a GSoC project!
    """
    
    def __init__(self, crv, tolerance=1e-7):
        '''
        There are *tons* of object that could be used to instantiate from...
        Such as:
        Geom_Circle, Geom_BezierCurve, Geom_BSplineCurve, Geom_Conic
        Which are high level geometric objects that can be cast in Bsplines
        
        In the end most of them would inherit CHECK... 
        
        Comes down to Adaptor3d_Curve or Geom_Curve
        
        
        '''        
        self.crv = crv
        self.brep = None
        self.tolerance = tolerance
        
        # lets you know what topology type we're working with
        # all level2 api objects support this
        self.is_wire = False
        self.is_edge = False
        self.is_brep = False
        self.is_curve = False
        
        # cannot support many methods ( diff_geom )  for Wire!
        # we could make a single edge from the wire? 
        if isinstance(self.crv, TopoDS_Wire):
            raise TypeError('Wires not allowed')
#            print 'got wire, adapted to curve'
#            self.brep_adaptor = BRepAdaptor_CompCurve(self.crv)
#            #TODO: pure evil, this should be done by GeometryLookup
#            self.is_wire = True
#            self.is_brep = True
            
        elif isinstance(self.crv, TopoDS_Edge):
            self.brep_adaptor = BRepAdaptor_Curve(self.crv)
            self.is_edge = True
            self.is_brep = True
            self.brep = crv
            self.crv_handle = BRep_Tool().Curve(crv)[0]
            self.crv = self.crv_handle.GetObject()
        
        elif issubclass(self.crv.__class__, Geom_Curve):
            self.is_curve = True
            self.crv_handle = self.crv.GetHandle()
        
        else:
            raise TypeError, 'only adapts Wires and Edges, and subclasses of Geom_Curve for the moment\nGot a %s' % ( self.crv.__class__ )
        
#        if self.is_brep:
#            if self.brep_adaptor.GetType() in [6,7]:
                # bitch if we have anything other than a bspline
                # again, fix with GeometryLookup
                # note that 6 is a line
#                try:
#                    self.adapted_curve = self.brep_adaptor.BSpline()
#                except RuntimeError:
##                    raise  RuntimeError('no bspline found on adaptor...')
#                    print 'no bspline found on adaptor...'
        
        # instantiating cooperative classes
        self.diff_geom = DiffGeomCurve(self)
        self.intersect = IntersectCurve(self)
        self.construct = ConstructFromCurve(self)
        self.graphic   = GraphicCurve(self)
        
        # GeomLProp object
        self._curvature = None
        self._local_properties()

        # STATE; whether cooperative classes are initialized
        self._local_properties_init    = False
        self._curvature_init           = False
        self._geometry_lookup_init     = False
    
    def _local_properties(self):
        from OCC.GeomLProp import GeomLProp_CurveTool
        self._lprops_curve_tool = GeomLProp_CurveTool()
        self._local_properties_init = True
    
    def _convert(self, crv):
        '''
        we could accept gp_* primitives and convert 'em here...
        @param crv: the object to be converted
        '''
        from OCC.Convert import *
        
        
    
    def _subclass(self):
        '''
        return from which class self.crv inherts
        '''
        if issubclass(self.crv, ):
            return Geom_Curve
        elif issubclass(self.crv, Geom_Conic):
            return Geom
        
        def subClassed(crv, _class):
            if issubclass(crv, _class):
                return _class
        
        
        _classes_to_check = [Geom_Curve, Geom_Conic] 
        for i in _classes_to_check:
            subClassed(self.crv,i)
        else:
            raise AssertionError, 'self.crv is none of ', _classes_to_check
    
    def domain(self):
        '''returns the u,v domain of the curve'''
        return self.brep_adaptor.FirstParameter(), self.brep_adaptor.LastParameter()
    
    def project( self, other ):
        '''projects self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        '''        
        raise NotImplementedError
    
#===============================================================================
#    Curve.global_properties
#===============================================================================

    def _global_properties(self):
        from OCC.GProp import GProp_GProps
        from OCC.BRepGProp import BRepGProp
        # also for inertia, centre_of_mass
        system = GProp_GProps()
        if self.is_brep:
            props  = BRepGProp().LinearProperties(self.brep, system)
            return system
        else:
            raise NotImplementedError('no global properties for non brep geometry yet')
    
    def length(self, lbound=None, ubound=None, tolerance=1e-5):
        '''returns the curve length
        if two tuples with u,v coords are given, return the length over this interval    
        '''
        if lbound is None and ubound is None:
            return self._global_properties().Mass()
        else:
            _min, _max = self.domain()
            
            if _min < self.brep_adaptor.FirstParameter():
                raise ValueError('the lbound argument is lower than the first parameter of the curve: %s ' % (self.brep_adaptor.FirstParameter()))
            if _max > self.brep_adaptor.LastParameter():
                raise ValueError('the ubound argument is greater than the last parameter of the curve: %s ' % (self.brep_adaptor.LastParameter()))
            
            if lbound and ubound is None:
                return GCPnts_AbscissaPoint().Length(self.brep_adaptor, lbound, _max, tolerance)
            elif lbound is None and ubound:
                return GCPnts_AbscissaPoint().Length(self.brep_adaptor, _min, ubound, tolerance)
            else:
                return GCPnts_AbscissaPoint().Length(self.brep_adaptor, lbound, ubound, tolerance)
                
                 
        
    def inertia(self):
        system = self._global_properties()
        return system.MatrixOfInertia(), system.MomentOfInertia()
    

#===============================================================================
#    Curve.modify
#===============================================================================

    def trim(self, lbound=None, ubound=None):
        '''
        trim the curve
        @param lbound:
        @param ubound:
        '''
        from OCC.Approx import Approx_CurvlinFunc
        acf = Approx_CurvlinFunc(self.crv, self.tolerance)
        _ubound, _lbound = self.domain()
        if lbound:
            _lbound=lbound
        elif ubound:
            _ubound=ubound
        return acf.Trim(_lbound, _ubound, self.tolerance)
        
    def extend_by_point(self, pnt, degree=3, beginning=True):
        '''extends the curve to point
        
        does not extend if the degree of self.crv > 3
        @param pnt:
        @param degree:
        @param beginning:
        '''
        if self.degree > 3:
            raise ValueError, 'to extend you self.crv should be <= 3, is %s ' % (self.degree)
        from OCC.GeomLib import GeomLib
        return GeomLib().ExtendCurveToPoint(self.crv, pnt, degree, beginning)

#===============================================================================
#    Curve.
#===============================================================================

    def closest(self, other, minimum=True, verbose=False):
        '''returns the [parameter, TopoDS_*, closes_point ] of self.crv with a point, curve, edge, face, solid
        
        ----
        Can be called with gp_Pnt and TopoDS_Vertex for now
        
        distanceType can be:
            maximum
            minimum
        '''
        from OCC.BRepExtrema import BRepExtrema_DistanceSS, BRepExtrema_ExtPC, BRepExtrema_DistShapeShape
        from OCC.Utils.Construct import make_vertex
        from KBE.TypesLookup import ShapeToTopology

        
        # abstract input
        if isinstance(other, gp_Pnt):
            other = make_vertex(other)
        
        # we need TopoDS_* types
#        assert issubclass(other.__class__, TopoDS_Shape), '%s is not a subclass of TopoDS_Shape, nor a point' %  ( other.__class__ )
#        assert self.is_brep, 'closest not implemented for other than Edge'
        
        '''
        
        Its possible that all this can be easily abstracted with BRepExtrema_DistanceSS
        
        '''
        
        if self.is_brep:
            extrem = BRepExtrema_DistShapeShape(self.brep, other)
            te = ShapeToTopology()
            
            if verbose:
                print extrem.DumpToString()
            
            def get_parameter_and_topology(indx):
                _topo  = te(extrem.SupportOnShape1(indx))
                if isinstance(_topo, TopoDS_Edge):
                    _param = extrem.ParOnEdgeS1(indx)
                elif isinstance(_topo, TopoDS_Face):
                    _param = extrem.ParOnFaceS1(indx)
                else:
                    _param = None
                return _param, _topo
            
            with assert_isdone(extrem, 'no extremeties found'):
                if extrem.NbSolution() == 1:
                    print 'one solution found'
                    _param, _topo = get_parameter_and_topology(1)
                    _pnt  = extrem.PointOnShape1(1)
                    return [[[_param, _topo, _pnt], extrem]]
                else:
                    print  extrem.NbSolution(), 'solutions found'
                    li = []
                    for i in range(1, extrem.NbSolution()+1):
                        _param, _topo = get_parameter_and_topology(i)
                        _pnt = extrem.PointOnShape1(i)
                        li.append([_param, _topo, _pnt])
                    return [li, extrem]
        
#        
#        warnings.warn('closest only works for non-trimmed curves!!!')
#        
        elif self.is_curve:
            # can only use vertex when self.crv is an Edge
            crv = make_edge(self.crv_handle)
            assert isinstance(crv, TopoDS_Edge), 'can only use an Edge to compute distances, got a %s' % ( self.crv.__class__ )
            extrem = BRepExtrema_ExtPC(other, crv)
            
            if isinstance(other, TopoDS_Vertex):
                pnt = BRep_Tool().Pnt(other)
            else:
                pnt = other
                
            extreme_point = None
            
            with assert_isdone(extrem, 'could not compute closest distance'):
                if extrem.NbExt() > 1:
                    for i in range(1, extrem.NbExt()):
                        if extrem.IsMin(i):
                            print 'extreme found'
                            return [[[extrem.Parameter(i), crv, extrem.Point(i)], extrem]]
                        else:
                            _extreme_param, _extreme_point = extrem.Parameter(i), extrem.Point(i)
                            if extreme_point:
                                if pnt.Distance(_extreme_point) < pnt.Distance(extreme_point):
                                    extreme_param, extreme_point = _extreme_param, _extreme_point
                            else:
                                extreme_param, extreme_point = _extreme_param, _extreme_point 
                    # when extrem.IsMin() has not returned any of the point
                    # then return the extreme_point we've kept ourselves
                    return extreme_param, extreme_point
                            
                elif extrem.NbExt()==1:
                    return [[[extrem.Parameter(1), crv, extrem.Point(1)], extrem]]
                elif extrem.NbExt()==0:
                    warnings.warn('no nearest points were found')
                    return None
                else:
                    raise AssertionError, 'closest f*cked up'
                    # wouldnt know what other condition...
#        
#        elif self.is_wire:
#            pass
        
        # works, but this is an orthogonal projection
        '''
        elif isinstance(other, gp.gp_Pnt):
            warnings.warn('this is the orthogonal project, perhaps ***NOT*** the closest point!!!')
            from OCC.GeomAPI import GeomAPI_ProjectPointOnCurve
            poc = GeomAPI_ProjectPointOnCurve(other, self.adapted_curve)
            return poc.LowerDistanceParameter(), poc.NearestPoint()
        '''
        
    def distance_on_curve(self, distance, close_parameter, estimate_parameter, check_seam=True):
        '''returns the parameter if there is a parameter
        on the curve with a distance length from u
        raises OutOfBoundary if no such parameter exists
        '''
        from OCC.GCPnts import GCPnts_AbscissaPoint
        
        #===============================================================================
        # check if we're close to the seam
        # close means that `distance` is 
        # if so, set the seam of the brep_adaptor to the middle of the curve
        #===============================================================================

#        HAS_SEAM_CHANGED = False
#        _min, _max = self.domain()
#        print 'close_parameter, estimate_parameter',close_parameter, estimate_parameter
#        import ipdb; ipdb.set_trace()
#        trim_crv_start = Geom_TrimmedCurve( self.crv_handle, _min, close_parameter)
#        trim_crv_end   = Geom_TrimmedCurve( self.crv_handle, close_parameter, _max)
#        length_min = Curve(make_edge(trim_crv_start.GetHandle())).length()
#        length_max = Curve(make_edge(trim_crv_end.GetHandle())).length()
#        if length_max < abs(distance) or length_min < abs(distance):
            # gotta set the seam somewhere else...
#            raise ValueError, 'distance greater than the parametric range!!!'
#            print 'distance greater than the parametric range!!!'
#            bsp = self.brep_adaptor.BSpline().GetObject()
#            _mid = (_min+_max) / 2.
#            bsp.SetOrigin(_mid, 1e-5)
#            '''
#            not sure if this helps, or if it simply places the problem somewhere else
#            '''
        
        ccc = GCPnts_AbscissaPoint(self.brep_adaptor, distance, close_parameter, estimate_parameter, 1e-5)
        with assert_isdone(ccc, 'couldnt compute distance on curve'):
            return ccc.Parameter()
        
    def mid_point(self):
        _min, _max = self.domain()
        _mid = (_min+_max) / 2.
        return self.brep_adaptor.Value(_mid)
        
    def divide_by_number_of_points(self, n_pts, lbound=None, ubound=None):
        from OCC.GCPnts import GCPnts_UniformAbscissa
        _lbound, _ubound = self.domain()
        
        if lbound:
            _lbound = lbound
        elif ubound:
            _ubound = ubound
        
        npts = GCPnts_UniformAbscissa(self.crv, n_pts, _lbound, _ubound)
        if npts.IsDone():
            for i in xrange(npts.NbPoints()):
                yield npts.Parameter(i)
        else:
            yield None
    
        #BRepAdaptor_Curve Adaptor11(TopoDS::Edge(Ex11.Current()));
        #//cout<<"Curve type: "<<Adaptor11.GetType()<<"."<<endl;
        #//MajViewerDomaine(TopoDS::Edge(Ex11.Current()), "Arete_");
        #
        #gp_aPnt= Adaptor11.Value(k*(Adaptor11.LastParameter() - Adaptor11.FirstParameter())/aNbreInc);
    
    @property
    def color(self, indx=None):
        '''sets or gets the color of self, possible also on a specified controlPoint index
        '''
        raise NotImplementedError
    
    @property
    def weight(self, indx):
        '''descriptor sets or gets the weight of a control point at the index
        '''
        #TODO self.crv has to be generalized to a bspline for this...
        raise NotImplementedError
    
    def control_pt_coord(self, indx):
        #TODO confused; vertices != control points
        '''descriptor setting or getting the coordinate of a control point at indx'''
        raise NotImplementedError
    
    def greville_points(self):
        #TODO confused; vertices != greville points
        '''descriptor setting or getting the coordinate of a control point at indx'''
        raise NotImplementedError
    
    @property
    def is_closed(self):
        '''test if curve is closed
        '''
        raise NotImplementedError

    def close(self):
        '''iff possible, close self'''
        raise NotImplementedError

    def control_point(self, indx, pt=None):
        '''gets or sets the coordinate of the control point
        '''
        raise NotImplementedError

    def size_of_control_points(self):
        '''n control points
        '''
        raise NotImplementedError

    def type(self):
        '''returns edge, wire, curve
        determines whether the curve is part of a topology
        '''
        raise NotImplementedError
    
    def kind(self):
        if not self._geometry_lookup_init:
            self._geometry_lookup = GeometryTypeLookup()
            self._geometry_lookup_init = True
        return self._geometry_lookup[self.crv]

#===============================================================================
#    Curve.topology
#    Follows the CGAL Polyhedron API
#    Mimicking a halfedge topology
#     See: http://www.cgal.org/Manual/3.4/doc_html/cgal_manual/HalfedgeDS/Chapter_main.html
#===============================================================================


    def next_edge(self):
        '''returns the next ( ordered! ) edge iff self is edge
        '''
        raise NotImplementedError

    def prev_edge(self):
        '''returns the previous ( ordered! ) edge iff self is edge
        '''
        raise NotImplementedError
    
    def opposite_edge(self):
        '''returns the opposite edge
        which is the edge shared by the two faces, similar to self
        but in the opposite direction 
        '''
        raise NotImplementedError
    
    def vertex(self):
        '''returns the vertex in the direction of the edge
        use opposite_edge().vertex() to get the opposite vertex of this edge
        '''
        raise NotImplementedError

    def face(self):
        '''returns the face of which the edge is part of 
        '''
        raise NotImplementedError
    
    def edge_degree(self):
        '''returns the number of edges coming incident to self'''
        raise NotImplementedError 
    

#===============================================================================
#    Curve.
#===============================================================================
    
    def parameter_to_coordinate(self, u):
        '''returns the coordinate at parameter u
        '''
        self._lprops_curve_tool(self.crv).Value(u)
    
    def coordinate_to_parameter(self, coord):
        '''returns the parameters on face at world coordinate `coord`
        '''
        raise NotImplementedError
    

    def transform(self, transform):
        '''affine transform
        '''
        raise NotImplementedError

    def continuity(self):
        if self.is_brep:
            return self.brep_adaptor.Continuity()
        else:
            return self.crv.Continuity()

    def continuity_to_another_curve(self, other):
        '''returns continuity between self and another curve
        '''
        return self._lprops_curve_tool(self.crv)
    
    

#===============================================================================
#    Curve.loop
#===============================================================================
    
    def iter_control_points(self):
        '''iterator over the control points
        '''
        raise NotImplementedError

    def iter_weights(self):
        '''iterator over the weights
        '''
        raise NotImplementedError

#===============================================================================
#    Curve.
#===============================================================================

    def is_planar(self, tolerance=None):
        '''checks if the curve is planar within a tolerance
        '''
        raise NotImplementedError

    def on_surface(self, surface):
        '''checks whether curve lies on a surface or a face
        '''
        raise NotImplementedError

    def on_edge(self, edge):
        '''checks if the curve lies on an edge or a border
        '''
        raise NotImplementedError
        
    def is_trimmed(self):
        '''checks if curve is trimmed
        '''
        raise NotImplementedError
            
        
#===============================================================================
#    Curve.graphic
#===============================================================================

    def draw(self, context):
        '''
        renders the curve in context
        '''
        raise NotImplementedError
    
    def update(self, context):
        '''updates the graphic presentation when called
        '''
        raise NotImplementedError
        
    @property
    def color(self, *rgb):
        '''color descriptor for the curve
        '''
        raise NotImplementedError 

class Face(object):
    """high level surface API
    object is a Face iff part of a Solid
    otherwise the same methods do apply, apart from the topology obviously
    """        
    
    def __init__(self, face):
        '''
        '''
        # for BREP methods
        self.face = face 
        
        # for surface methods
        # DAMNED this is a Bezier, not a BSPLINE
        from OCC.TopLoc import TopLoc_Location
        self.location = TopLoc_Location()
        self.h_srf = BRep_Tool().Surface(face, self.location)
#        self.h_srf.Transform(self.location.Transformation())
        self.srf = self.h_srf.GetObject()
        
        # hier is hoe je nurbs maakt van breps:
#        self.nurbs = BRepBuilderAPI_NurbsConvert(face)
#        self.nurbs.Perform()
        
        # STATE; whether cooperative classes are yet initialized
        self._curvature_initiated = False
        self._geometry_lookup_init = False
        
    def check(self):
        '''
        interesting for valdating the state of self
        '''
        from OCC.BRepCheck import BRepCheck_Face
        bcf = BRepCheck_Face(self.face)
            
    
    def domain(self):
        '''returns the u,v domain of the curve'''
        from OCC.BRepTools import BRepTools
        return BRepTools().UVBounds(self.face)
        
    def distance(self, other, extrema=False):
        '''returns the distance self with a point, curve, edge, face, solid
        
        other can be:
            point
            edge
            face
            surface

        returns an iterator looping over the solutions
        returns [shapeOnSelf, shapeOnOther, distance]
        
        if extrema: return the BRepExtrema_DistShapeShape object rather than an iterator
        '''
        from OCC.BRepExtrema import BRepExtrema_DistShapeShape
        if isinstance(other, TopoDS_Shape):
            dss = BRepExtrema_DistShapeShape(self.face, other)
            dss.Perform()
            if extrema:
                yield dss
            
            else:
                if dss.IsDone():
                    for i in range(dss.NbSolution()):
                        yield (dss.SupportOnShape1(i),
                               dss.SupportOnShape2(i),
                               dss.Value(i)
                               )

    def weight(self, indx):
        '''sets or gets the weight of a control point at the index
        
        '''
        # TODO: somehow its hard to get a Geom_SplineSurface object from a face
        # nessecary to get control points and weights
        
        raise NotImplementedError

    def tangency(self, u, vector=None):
        '''sets or gets ( iff vector ) the tangency at the u parameter
        '''
        raise NotImplementedError

    def is_closed(self):
        '''test if curve is closed
        '''
        raise NotImplementedError

    def close(self):
        '''if possible, close self'''
        raise NotImplementedError

    def control_point(self, indx, pt=None):
        '''gets or sets the coordinate of the control point
        '''
        raise NotImplementedError

    def number_of_control_points(self):
        '''n control points
        '''
        raise NotImplementedError

    def type(self):
        '''returns edge, wire, curve
        determines whether the curve is part of a topology
        '''
        raise NotImplementedError

    def kind(self):
        if not self._geometry_lookup_init:
            self._geometry_lookup = GeometryTypeLookup()
            self._geometry_lookup_init = True
        return self._geometry_lookup[self.face]

    def copy(self):
        from OCC.BRepBuilderAPI import BRepBuilderAPI_Copy
        cp = BRepBuilderAPI_Copy(self.face)
        cp.Perform()
        # should return a new instance of self
        return cp.Shape() 

    def is_closed(self, uOrV):
        from OCC.ShapeAnalysis import ShapeAnalysis_Surface
        sa = ShapeAnalysis_Surface(self.srf)
        return sa.IsUClosed(), sa.IsVClosed()

    def uv_to_coordinate(self, u, v):
        '''returns the coordinate at u,v
        '''
        return self.srf.Value(u,v)
        
    def coordinate_to_uv(self, pt):
        '''
        returns the uv value of a point on a surface
        @param pt:
        '''
        from OCC.ShapeAnalysis import ShapeAnalysis_Surface
        sas = ShapeAnalysis_Surface(self.h_srf)
        uv  = sas.ValueOfUV(pt, 1e-7)
        return uv.Coord()
    
    def transform(self, transform):
        '''affine transform
        '''
        raise NotImplementedError

#===============================================================================
#    Surface.project
#    project curve, point on face
#===============================================================================

    def project_vertex( self, other ):
        '''projects self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        
        if other is a point:
            returns uv, point
        
        '''        
        if isinstance(other, TopoDS_Face):
            raise AssertionError, 'Cannot project a face on another face'
        
        elif isinstance(other, TopoDS_Vertex):
            pt = BRep_Tool.Pnt(other)
            proj = GeomAPI_ProjectPointOnSurf(pt, self.h_srf)
            # SHOULD USE THIS!!!
            #proj.LowerDistanceParameters()
            ext = proj.Extrema()
            for i in range(ext.NbExt()):
                if proj.Point().Coord() == ext.Point(i).Value().Coord():
                    result = ext.Point(i)
            uv = result.Parameter()
            pt = result.Value()
            return uv, pt
        
    def project_curve(self):
        # this way Geom_Circle and alike are valid too
        if isinstance(other, TopoDS_Edge) or\
             isinstance(other, Geom_Curve)  or\
             issubclass(other, Geom_Curve):
                if isinstance(other, TopoDS_Edge):
                    # convert edge to curve
                    first, last = TopExp.FirstVertex(other), TopExp.LastVertex(other) 
                    lbound, ubound  = BRep_Tool().Parameter(first, other), BRep_Tool().Parameter(first, other)
                    other = BRep_Tool.Curve(other, lbound, ubound).GetObject()
                
                from OCC.GeomProjLib import GeomProjLib
                return GeomProjLib().Project(other, self.h_srf)
                
    def project_edge(self, edg):
        return self.project_cur
            

#===============================================================================
#    Surface.local_properties
#    curvature, tangency etc.
#===============================================================================


class DiffGeomSurface(object):
    def __init__(self, instance):
        self.instance = instance
        self._curvature = None
        self._curvature_initiated = False
        
    def curvature(self, u,v):
        '''returns the curvature at the u parameter
        the curvature object can be returned too using curvatureType == curvatureType
        curvatureTypes are:
            gaussian
            minimum
            maximum
            mean
            curvatureType
        '''
        if not self._curvature_initiated:
            from OCC.GeomLProp import GeomLProp_SLProps
            self._curvature = GeomLProp_SLProps(h_srf, u, v, 1, 1e-6)
        else:
            self._curvature.SetParameters(u,v)
            self._curvature_initiated = True
        
        return self._curvature
        
    def gaussian_curvature(self,u,v):
        return self.curvature(u,v).GaussianCurvature()

    def min_curvature(self,u,v):
        return self.curvature(u,v).MinCurvature()

    def mean_curvature(self,u,v):
        return self.curvature(u,v).MeanCurvature()

    def max_curvature(self,u,v):
        return self.curvature(u,v).MaxCurvature()

    def normal(self,u,v):
        return self.curvature(u,v).Normal()

    def tangent(self,u,v):
        d1, d2 = gp_Dir(), gp_Dir()
        return self.curvature(u,v).TangentU(), self.curvature(u,v).TangentV()
    
    def radius(self, u, v ):
        '''returns the radius at u
        '''
        # TODO: SHOULD WE RETURN A SIGNED RADIUS? ( get rid of abs() )? 
        try:
            _crv_min = 1./self.min_curvature()
        except ZeroDivisionError:
            _crv_min = 0.
        
        try:
            _crv_max = 1./self.max_curvature()
        except ZeroDivisionError:
            _crv_max = 0.
        return abs((_crv_min+_crv_max)/2.)

    def frenet_frame(self, u, v):
        '''returns the frenet frame ( the 2 tangency directions + normal ) syntax sugar
        '''
        pass
    
    def derivative_u(self, u, n):
        '''return n derivatives of u
        '''
        pass
    
    def derivative_v(self, v, n):
        '''return n derivatives of v
        '''
        pass
        
    def torsion(self, u, v):
        '''returns the torsion at the parameter
        http://en.wikipedia.org/wiki/Frenet-Serret_formulas
        '''
        pass
    
    def continuity(self, face):
        '''returns continuity between self and another surface
        '''
        # add dictionary mapping which G / C continuity it is...
        return self.srf.Continuity()
        
#===============================================================================
#    Surface.dress_up
#===============================================================================
    
class DressUpSurface(object):
    def __init__(self, instance):
        self.instance = instance
    
    def fillet_vertex_distance(self, vertex, distance):
        '''fillets 3 edges at a corner
        '''
        pass
    
    def fillet_edge_radius(self, edge, radius):
        '''fillets an edge
        '''
        pass
    
    def chamfer_vertex_distance(self, vertex, distance):
        '''chamfer 3 edges at a corner
        '''
        pass
    
    def chamfer_edge_angle(self, edge, angle):
        '''chamfers the faces on edge at angle
        '''
        pass
    
    def chamfer_edge_distance_distance(self, edge, distance_this_face, distance_other_face):
        '''chamfers the face incident on edge at a given distance
        '''
        pass
    
#===============================================================================
#    Surface.global_properties
#===============================================================================
    
class GlobalProperties(object):
    def __init__(self, instance):
        from OCC.GProp import GProp_GProps
        from OCC.BRepGProp import BRepGProp
        self.instance = instance
        self.system = GProp_GProps() 
        BRepGProp(self.instance.face, self.system).SurfaceProperties()
        
    def inertia(self):
        '''returns the inertia matrix'''
        return self.system.MatrixOfInertia(), self.system.MomentOfInertia()
        
    def area(self):
        '''returns the area of the surface'''
        return self.system.Mass()
    
    def bbox(self):
        '''
        returns the bounding box of the face
        '''
        pass
        
    def global_properties(self):
        from OCC.BRepGProp import BRepGProp
#        from OCC.GProp import *
        prop = BRepGProp()
        pass
    
    
#===============================================================================
#    Surface.intersect
#===============================================================================


class IntersectSurface(object):
    def __init__(self, instance):
        self.instance = instance
        # if face do this, if curve do that.
        
    def intersect_curve(self, crv):
        '''
        intersect the face with a curve
        @param crv:
        '''
        if not isinstance(crv, Curve):
            crv = Curve(crv)
        bics = BRepIntCurveSurface_Inter()
        bics.Init(self.face, crv.crv)
        # state, u,v,w
        while bics.More():
            uvw = [bics.U(). bics.V(), bics.W()]
            return uvw, bics.Point(), bics.Face(), bics.Transition()

#===============================================================================
#    Surface.mesh
#===============================================================================

class Mesh(object):
    def __init__(self, instance):
        self.instance = instance
        
    def clear(self):
        BRep_Tool().Clean(self.instance.face)
        return True    
    
    def mesh_utils(self):
        from OCC.BRepMesh import BRepMesh_FastDiscret
        bmfd = BRepMesh_FastDiscret()
        raise NotImplementedError
    
    def angle(self):
        '''
        the only way to control the meshing of the brep is by 
        setting the angle value. deflection is not intuitive enough.
        so this methods will normalize deflection, such that we'll have constant results
        '''
        raise NotImplementedError
    
    def iter_mesh_faces(self):
        raise NotImplementedError
    
    def iter_mesh_vertices(self):
        raise NotImplementedError
    
    def iter_mesh_edges(self):
        raise NotImplementedError

    
    
#===============================================================================
#    Surface.topology
#     DONE! Just call Topology.py
#===============================================================================

class TopologySurface(object):
    def __init__(self, instance):
        '''
        
        @param instance:
        '''
        self.Instance = instance
        
    def next_face(self):
        '''returns the next ( ordered! ) face iff self is edge
        '''
        raise NotImplementedError

    def previous_face(self):
        '''returns the next ( ordered! ) face iff self is edge
        '''
        raise NotImplementedError

    
    def vertex_degree(self, v):
        '''the number of incoming edges of a vertex
        '''
        
    def face_degree(self):
        '''the number of edges a face is built from
        '''
    
    def incident_vertices_from_vertex(self, vertex):
        '''incident vertices from vertex duhh...
        '''
    
    def incident_vertices_from_edge(self, edge):
        '''incident vertices from edge duhh...
        '''    
    
    def incident_edges_from_vertex(self, vertex):
        '''
        '''
    
    def incident_edges_from_edge(self, edge):
        '''
        '''
    
    def incident_edges_from_face(self):
        '''
        '''
        
    def incident_faces(self):
        '''the faces adjacent to self
        '''
    
    def iter_vertices(self):
        '''loop over the vertices of the face
        '''
    
    def iter_edges(self):
        '''loop over the edges of the face
        '''
        
    def iter_faces(self):
        '''loop over the faces iff the face is part of a solid
        '''

#===============================================================================
#    Iterators...
#===============================================================================
    
    def iter_control_points(self):
        '''iterator over the control points
        '''
        raise NotImplementedError

    def iter_weights(self):
        '''iterator over the weights
        '''
        raise NotImplementedError

    def is_planar(self, tolerance=None):
        '''checks if the surface is planar within a tolerance
        '''
        aaa = GeomLib_IsPlanarSurface(self.srf)
        return aaa.IsPlanar(), aaa.Plan()

    def on_surface(self, coord):
        '''checks whether a coordinate lies on the  surface
        '''
        raise NotImplementedError

    def on_edge(self, u, v):
        '''checks if the parameter lies on the edge of a face
        '''
        raise NotImplementedError

    def is_trimmed(self):
        '''checks if curve is trimmed
        '''
        from OCC.BRepTopAdaptor import BRepTopAdaptor_FClass2d
        from OCC.BRepTools import BRepTools
        tol = 1e-4
        uv  = gp_Pnt2d(u,v)
        u1,u2, v1,v2 = BRepTools().UVBounds(face)
        dailen = (u2-u1)*(u2-u1) + (v2-v1)*(v2-v1)
        dailen = math.sqrt(dailen) / 400.
        tol = max([dailen, tol])
        cl = BRepTopAdaptor_FClass2d(face, tol)
        if cl.Perform(uv) == TopAbs_IN:
            return True
        else:
            return False
        

    def coordinate_from_parameter(self, u, v, transformed=True):
        '''world coordinate at a given parameter on the surface
        if transformed, apply the OCC Location transformation
        '''
    
#===============================================================================
#    Face.graphic
#===============================================================================
    
    
    
    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the tesselation
        '''
        raise NotImplementedError
    
    
class GraphicSurface(object):
    def __init__(self, instance):
        self.instance = instance
    
    def color_faces(self, *color):
        '''the color of self
        if color is a single triple, that value will be used for all faces
        '''
        raise NotImplementedError
    
    def color_faces(self, *color):
        '''the color of self
        if color is a single triple, that value will be used for all faces
        '''
        raise NotImplementedError
    
    def color_edges(self, *color):
        '''the color of all the edges on self
        if color is a single triple, that value will be used for all edges        
        '''
        raise NotImplementedError
        
    def color_vertices(self, *color):
        '''the color of all the vertices on self
        if color is a single triple, that value will be used for all vertices        
        '''
        raise NotImplementedError
    
    def color(self, indx=None):
        '''sets or gets the color of all the faces of self
        '''
        raise NotImplementedError



class Solid(object):
    """high level Solid Api"""
    def __init__(self, arg):
        self.arg = arg
        
    def parameter_to_coordinate(self, coord):
        '''
        returns the index of the face closest to the world coordinate `coord`
        '''
        raise NotImplementedError
    
#===============================================================================
#    Solid.topology
#===============================================================================
    
    def faces(self):
        '''loop over the faces of self'''
        raise NotImplementedError
    
    def vertices(self):
        '''loop over the vertices of self'''
        raise NotImplementedError
    
    def edges(self):
        '''loop over the edges of self'''
        raise NotImplementedError
    
#===============================================================================
#    Solid.boolean
#===============================================================================
    
    def add(self, other_solid):
        '''adds another_solid to self
        '''
    
    def cut(self, other_solid):
        '''cuts other_solid from self
        '''
    def intersect(self, other_solid):
        '''common space of self and other_solid
        '''
    
#===============================================================================
#    Solid.local_properties
#===============================================================================
    
#===============================================================================
#    Solid.global_properties
#===============================================================================
    
    def inertia(self):
        '''
        '''
        raise NotImplementedError
    
    def area(self):
        '''
        '''
        raise NotImplementedError
    
    def volume(self):
        '''
        '''
        raise NotImplementedError
    
#===============================================================================
#    Solid.graphic
#===============================================================================

    @property    
    def color(self, color):
        '''color all the faces
        '''

    @property
    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the tesselation
        '''
        raise NotImplementedError



#class LocalProperties(A):
#    def __init__(self, xxx):
#        self.A = xxx
#    
#    def curvature(self):
#        print 'gaussian curvature'
#        print 'self',self
#        print 'beauty,', self.A.beauty
#
#class A(object):
#    def __init__(self):
#        self.beauty = 'gorgeous'
#        self.local_properties = LocalProperties(self)
#
#
#a = A()
#a.local_properties.curvature()


if __name__ == '__main__':
    
    
    from OCC.BRepPrimAPI import *
    from OCC.gp import *
    from OCC.Geom import *
    from OCC.GeomConvert import *
    from OCC.BRepAdaptor import *
    from OCC import Adaptor3d
    
    sphere = BRepPrimAPI_MakeSphere(1,1,1)
    
    f = Face(sphere.Face())
    
    
    bt = BRep_Tool()
    
    geom_lut = GeometryTypeLookup()
    print geom_lut[sphere.Face()]
    
    cyl = BRepPrimAPI_MakeCylinder(1,2).Face()
    print geom_lut[cyl]
    
    
    adap_sph = BRepAdaptor_Surface(sphere.Face())
    
    ttl = TopologyTypeLookup()
    ttl[adap_sph]
    
    f.domain()
    
    
    
    
    Geom_Circle(gp_Circ())
    
    
    
    GeomConvert_ApproxCurve()
    


    #    
    #class ClsA( object ): 
    #    def __init__( self, other): 
    #        self.inst= other
    #    
    #    def curvature( self, u,v  ): 
    #        print( 'gaussian curvatur at u,v, %r, %r  %r'% ( u,v, self.inst ) )
    #        print 'self', self
    #
    # 
    #class ClsB( object ):     
    #    def __init__(self, argument):
    #        self.diff_geom = ClsA( self )
    #        self.argument = argument
    #    
    #    def methA( self, arg ): 
    #        print( 'methA %r'% arg ) 
    #        
    #
    #b= ClsB('jelle' ) 
    #b.methA( 'this' ) 
    #b.diff_geom.curvature( 0.1, 0.2 ) 
    #
    #
    #
    
    
    
    #===============================================================================
    # test minimal distance topo types
    #===============================================================================

    boxA = BRepPrimAPI_MakeBox(1,1,1).Solid()




   
import warnings
from OCC.BRep import BRep_Tool
from OCC.BRepAdaptor import BRepAdaptor_Curve
from OCC.GCPnts import GCPnts_AbscissaPoint, GCPnts_UniformAbscissa
from OCC.Geom import Geom_OffsetCurve, Geom_Curve, Geom_TrimmedCurve
from OCC.TopoDS import TopoDS_Wire, TopoDS_Edge, TopoDS_Face, TopoDS_Vertex
from OCC.gp import *
# high-level
from OCC.Utils.Common import vertex2pnt, minimum_distance, to_adaptor_3d
from OCC.Utils.Construct import make_edge, trim_wire
from OCC.Utils.Context import assert_isdone
from OCC.KBE.kbe_vertex import Vertex


class IntersectCurve(object):
    def __init__(self, Instance):
        self.Instance = Instance

    def intersect(self, other):
        '''intersect self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        '''
        raise NotImplementedError


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



#===============================================================================
#    Curve.construct
#===============================================================================

class ConstructFromCurve():
    def __init__(self, instance):
        self.Instance = instance

    def make_face(self):
        '''returns a brep face iff self.closed()
        '''
        raise NotImplementedError

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

class Edge(object):
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
        self.tolerance = tolerance
        self.is_edge = True

        if isinstance(crv, TopoDS_Edge):
            # TODO: should be property
            self.brep_adaptor = BRepAdaptor_Curve(crv)
            self.is_edge = True
            self.brep = crv
            self.crv_handle = BRep_Tool().Curve(crv)[0]
            self.crv = self.crv_handle.GetObject()
        
        else:
            raise TypeError, 'only accepts TopoDS_Edge as input... \nGot a %s' % ( self.crv.__class__ )

        # instantiating cooperative classes
        self.diff_geom = DiffGeomCurve(self)
        self.intersect = IntersectCurve(self)
        self.construct = ConstructFromCurve(self)
        #self.graphic   = GraphicCurve(self)

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
        pass



#    def _subclass(self):
#        '''
#        return from which class self.crv inherts
#        '''
#        if issubclass(self.crv, ):
#            return Geom_Curve
#        elif issubclass(self.crv, Geom_Conic):
#            return Geom
#
#        def subClassed(crv, _class):
#            if issubclass(crv, _class):
#                return _class
#
#
#        _classes_to_check = [Geom_Curve, Geom_Conic]
#        for i in _classes_to_check:
#            subClassed(self.crv,i)
#        else:
#            raise AssertionError, 'self.crv is none of ', _classes_to_check

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
        if either lbound | ubound | both are given, than the lenght of the curve will be measured
        over that interval
        '''
        _min, _max = self.domain()
        if _min < self.brep_adaptor.FirstParameter():
            raise ValueError('the lbound argument is lower than the first parameter of the curve: %s ' % (self.brep_adaptor.FirstParameter()))
        if _max > self.brep_adaptor.LastParameter():
            raise ValueError('the ubound argument is greater than the last parameter of the curve: %s ' % (self.brep_adaptor.LastParameter()))

        lbound = _min if lbound is None else lbound
        ubound = _max if ubound is None else ubound
        return GCPnts_AbscissaPoint().Length(self.brep_adaptor, lbound, ubound, tolerance)

    def inertia(self):
        system = self._global_properties()
        return system.MatrixOfInertia(), system.MomentOfInertia()


#===============================================================================
#    Curve.modify
#===============================================================================

    def trim(self, lbound, ubound, periodic=False):
        '''
        trim the curve
        @param lbound:
        @param ubound:
        '''
#        if self.is_periodic:
#            pass
#        else:
#            warnings.warn('the wire to be trimmed is not closed, hence cannot be made periodic')
        a,b = sorted([lbound,ubound])
        tr = Geom_TrimmedCurve(self.brep_adaptor.Curve().Curve(), a,b).GetHandle()
        return Edge(make_edge(tr))

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

    def closest(self, other):
        return minimum_distance(self.brep, other)

    def project_pnt_on_edge(self, pnt_or_vertex):
        ''' returns the closest orthogonal project on `pnt` on edge
        '''
        if isinstance(pnt_or_vertex, TopoDS_Vertex):
            pnt = vertex2pnt(pnt_or_vertex)

        from OCC.GeomAPI import GeomAPI_ProjectPointOnCurve
        poc = GeomAPI_ProjectPointOnCurve(pnt_or_vertex, self.crv_handle)
        return poc.LowerDistanceParameter(), poc.NearestPoint()

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
        '''returns a nested list of parameters and points on the edge
        at the requested interval [(param, gp_Pnt),...]
        '''
        _lbound, _ubound = self.domain()
        if lbound:
            _lbound = lbound
        elif ubound:
            _ubound = ubound

        npts = GCPnts_UniformAbscissa(self.brep_adaptor, n_pts, _lbound, _ubound)
        if npts.IsDone():
            tmp = []
            for i in xrange(1,npts.NbPoints()+1):
                param = npts.Parameter(i)
                pnt = self.brep_adaptor.Value(param)
                tmp.append((param, pnt))
            return tmp
        else:
            return None


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
        '''kbe_test if curve is closed
        '''
        return self.brep_adaptor.IsClosed()

#    @property
#    def periodic(self):
#        return self.brep_adaptor.IsPeriodic()
#
#    @periodic.setter
#    def periodic(self, _bool):
#        _bool = bool(_bool)
#        if self.is_closed:
#            self.brep_adaptor.BSpline()
#        else:
#            raise warnings.warn('cannot set periodicity on a non-closed edge')

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

    def parameter_to_point(self, u):
        '''returns the coordinate at parameter u
        '''
        return Vertex(*self.brep_adaptor.Value(u).Coord())

    def point_to_parameter(self, coord):
        '''returns the parameters / pnt on edge at world coordinate `coord`
        '''
        return self.project_pnt_on_edge(coord)

    def transform(self, transform):
        '''affine transform
        '''
        raise NotImplementedError

    def continuity(self):
        return self.brep_adaptor.Continuity()

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

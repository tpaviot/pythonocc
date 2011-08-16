import warnings
from OCC.BRep import BRep_Tool
from OCC.BRepAdaptor import BRepAdaptor_Curve
from OCC.GCPnts import GCPnts_AbscissaPoint, GCPnts_UniformAbscissa
from OCC.Geom import Geom_OffsetCurve, Geom_Curve, Geom_TrimmedCurve
from OCC.KBE.base import KbeObject
from OCC.TopExp import TopExp
from OCC.TopoDS import TopoDS_Wire, TopoDS_Edge, TopoDS_Face, TopoDS_Vertex
from OCC.GeomLib import GeomLib
from OCC.gp import *
# high-level
from OCC.Utils.Common import vertex2pnt, minimum_distance, to_adaptor_3d
from OCC.Utils.Construct import make_edge, trim_wire, fix_continuity
from OCC.Utils.Context import assert_isdone
from OCC.KBE.vertex import Vertex


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
        from OCC.BRepLProp import BRepLProp_CLProps
        # initialize with random parameter: 0
        self._curvature = BRepLProp_CLProps(self.instance.adaptor, 0, 2, self.instance.tolerance)

    def curvature(self, u, n, resolution=1e-7):
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
        # TODO: find a better way to achieve this method
        self._curvature.SetParameter(u)
        return self._curvature.Curvature()

    def tangent(self, u ):
        '''sets or gets ( iff vector ) the tangency at the u parameter
        tangency can be constrained so when setting the tangency, you're constrainting it in fact
        '''
        self._curvature.SetParameter(u)
        if self._curvature.IsTangentDefined():
            direction = gp_Dir()
            self._curvature.Tangent(direction)
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
        raise NotImplementedError

class Edge(KbeObject):
    '''
    '''

    def __init__(self, edge):
        '''
        '''
        assert isinstance(edge, TopoDS_Edge), 'need a TopoDS_Edge, got a %s'% edge.__class__
        KbeObject.__init__(self, 'edge')
        self._topo_type = TopoDS_Edge
        self.topo = edge

        # STATE; whether cooperative classes are initialized
        self._local_properties_init    = False
        self._curvature_init           = False
        self._geometry_lookup_init     = False
        self._curve_handle = None
        self._curve = None
        self._adaptor = None

        # instantiating cooperative classes
        self.diff_geom = DiffGeomCurve(self)
        self.intersect = IntersectCurve(self)
        self.construct = ConstructFromCurve(self)
        #self.graphic   = GraphicCurve(self)

        # GeomLProp object
        self._curvature = None
        self._local_properties()

        # some aliasing of useful methods
        self.is_closed      = self.adaptor.IsClosed
        self.is_periodic    = self.adaptor.IsPeriodic
        self.is_rational    = self.adaptor.IsRational
        self.continuity     = self.adaptor.Continuity
        self.degree         = self.adaptor.Degree
        self.nb_knots       = self.adaptor.NbKnots
        self.nb_poles       = self.adaptor.NbPoles


    @property
    def curve(self):
        if self._curve is not None and not self.is_dirty:
            pass
        else:
            self._curve_handle  = BRep_Tool().Curve(self.topo)[0]
            self._curve = self._curve_handle.GetObject()
        return self._curve

    @property
    def curve_handle(self):
        if self._curve_handle is not None and not self.is_dirty:
            pass
        else:
            self.curve
        return self._curve_handle

    @property
    def adaptor(self):
        if self._adaptor is not None and not self.is_dirty:
            pass
        else:
            self._adaptor = BRepAdaptor_Curve(self.topo)
        return self._adaptor

    def _local_properties(self):
        from OCC.GeomLProp import GeomLProp_CurveTool
        self._lprops_curve_tool = GeomLProp_CurveTool()
        self._local_properties_init = True

    def domain(self):
        '''returns the u,v domain of the curve'''
        return self.adaptor.FirstParameter(), self.adaptor.LastParameter()

    def project( self, other ):
        '''projects self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        '''
        raise NotImplementedError

#===============================================================================
#    Curve.GlobalProperties
#===============================================================================

    def length(self, lbound=None, ubound=None, tolerance=1e-5):
        '''returns the curve length
        if either lbound | ubound | both are given, than the lenght of the curve will be measured
        over that interval
        '''
        _min, _max = self.domain()
        if _min < self.adaptor.FirstParameter():
            raise ValueError('the lbound argument is lower than the first parameter of the curve: %s ' % (self.adaptor.FirstParameter()))
        if _max > self.adaptor.LastParameter():
            raise ValueError('the ubound argument is greater than the last parameter of the curve: %s ' % (self.adaptor.LastParameter()))

        lbound = _min if lbound is None else lbound
        ubound = _max if ubound is None else ubound
        return GCPnts_AbscissaPoint().Length(self.adaptor, lbound, ubound, tolerance)

#===============================================================================
#    Curve.modify
#===============================================================================

    def trim(self, lbound, ubound, periodic=False):
        '''
        trim the curve
        @param lbound:
        @param ubound:
        '''
        a,b = sorted([lbound,ubound])
        tr = Geom_TrimmedCurve(self.adaptor.Curve().Curve(), a,b).GetHandle()
        return Edge(make_edge(tr))

    def extend_by_point(self, pnt, degree=3, beginning=True):
        '''extends the curve to point

        does not extend if the degree of self.curve > 3
        @param pnt:
        @param degree:
        @param beginning:
        '''
        if self.degree > 3:
            raise ValueError, 'to extend you self.curve should be <= 3, is %s ' % (self.degree)
        return GeomLib().ExtendCurveToPoint(self.curve, pnt, degree, beginning)

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
        poc = GeomAPI_ProjectPointOnCurve(pnt_or_vertex, self.curve_handle)
        return poc.LowerDistanceParameter(), poc.NearestPoint()

    def distance_on_curve(self, distance, close_parameter, estimate_parameter, check_seam=True):
        '''returns the parameter if there is a parameter
        on the curve with a distance length from u
        raises OutOfBoundary if no such parameter exists
        '''
        from OCC.GCPnts import GCPnts_AbscissaPoint
        ccc = GCPnts_AbscissaPoint(self.adaptor, distance, close_parameter, estimate_parameter, 1e-5)
        with assert_isdone(ccc, 'couldnt compute distance on curve'):
            return ccc.Parameter()

    def mid_point(self):
        _min, _max = self.domain()
        _mid = (_min+_max) / 2.
        return self.adaptor.Value(_mid)

    def divide_by_number_of_points(self, n_pts, lbound=None, ubound=None):
        '''returns a nested list of parameters and points on the edge
        at the requested interval [(param, gp_Pnt),...]
        '''
        _lbound, _ubound = self.domain()
        if lbound:
            _lbound = lbound
        elif ubound:
            _ubound = ubound
        npts = GCPnts_UniformAbscissa(self.adaptor, n_pts, _lbound, _ubound)
        if npts.IsDone():
            tmp = []
            for i in xrange(1,npts.NbPoints()+1):
                param = npts.Parameter(i)
                pnt = self.adaptor.Value(param)
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
        #TODO self.curve has to be generalized to a bspline for this...
        raise NotImplementedError

    def control_pt_coord(self, indx):
        #TODO confused; vertices != control points
        '''descriptor setting or getting the coordinate of a control point at indx'''
        raise NotImplementedError

    def greville_points(self):
        #TODO confused; vertices != greville points
        '''descriptor setting or getting the coordinate of a control point at indx'''
        raise NotImplementedError

    def control_point(self, indx, pt=None):
        '''gets or sets the coordinate of the control point
        '''
        raise NotImplementedError

    def __eq__(self, other):
        return self.brep.IsEqual(other)

    @property
    def type(self):
        '''returns edge, wire, curve
        determines whether the curve is part of a topology
        '''
        return 'edge'

    def kind(self):
        if not self._geometry_lookup_init:
            self._geometry_lookup = GeometryTypeLookup()
            self._geometry_lookup_init = True
        return self._geometry_lookup[self.curve]


    def first_vertex(self):
        # TODO: should return Vertex, not TopoDS_Vertex
        return TopExp.FirstVertex(self.topo)

    def last_vertex(self):
        return TopExp.LastVertex(self.topo)

#===============================================================================
#    Curve.
#===============================================================================

    def parameter_to_point(self, u):
        '''returns the coordinate at parameter u
        '''
        return Vertex(*self.adaptor.Value(u).Coord())

    def point_to_parameter(self, coord):
        '''returns the parameters / pnt on edge at world coordinate `coord`
        '''
        return self.project_pnt_on_edge(coord)

    def transform(self, transform):
        '''affine transform
        '''
        raise NotImplementedError

    def fix_continuity(self, continuity):
        """
        splits an edge to achieve a level of continuity
        :param continuity: GeomAbs_C*
        """
        return fix_continuity(self.topo, continuity)

    def continuity_to_another_curve(self, other):
        '''returns continuity between self and another curve
        '''
        return self._lprops_curve_tool(self.curve)

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

    def show(self, poles=False, vertices=False, knots=False):
        '''
        poles, knots, should render all slightly different.
        here's how...

        http://www.opencascade.org/org/forum/thread_1125/
        '''
        show = super(self, Edge).show()
        if not poles and not vertices and not knots:
            show()

    def update(self, context):
        '''updates the graphic presentation when called
        '''
        raise NotImplementedError

    @property
    def color(self, *rgb):
        '''color descriptor for the curve
        '''
        raise NotImplementedError

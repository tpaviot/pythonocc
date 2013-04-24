from OCC.BRep import BRep_Tool
from OCC.BRepAdaptor import BRepAdaptor_Curve, BRepAdaptor_HCurve
from OCC.GCPnts import  GCPnts_UniformAbscissa
from OCC.Geom import Geom_OffsetCurve, Geom_TrimmedCurve
from OCC.KBE.base import KbeObject
from OCC.TopExp import TopExp
from OCC.TopoDS import  TopoDS_Edge, TopoDS_Vertex, TopoDS_Face
from OCC.gp import *
# high-level
from OCC.Utils.Common import vertex2pnt, minimum_distance
from OCC.Utils.Construct import make_edge, fix_continuity
from OCC.Utils.Context import assert_isdone
from OCC.KBE.vertex import Vertex
from OCC.KBE.types_lut import geom_lut
from OCC.GeomLProp import GeomLProp_CurveTool
from OCC.BRepLProp import BRepLProp_CLProps
from OCC.GeomLib import GeomLib
from OCC.GCPnts import GCPnts_AbscissaPoint
from OCC.GeomAPI import GeomAPI_ProjectPointOnCurve
from OCC.ShapeAnalysis import ShapeAnalysis_Edge
from OCC.BRep import *

class IntersectCurve(object):
    def __init__(self, instance):
        self.instance = instance

    def intersect(self, other, disp, tolerance=1e-2):
        '''Intersect self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies
        '''
        if isinstance(other, TopoDS_Face):
            from OCC.BRepIntCurveSurface import BRepIntCurveSurface_Inter
            face_curve_intersect = BRepIntCurveSurface_Inter()
            face_curve_intersect.Init( other, self.instance.adaptor.Curve(), tolerance )
            pnts = []
            while face_curve_intersect.More():
                face_curve_intersect.Next()
                pnts.append(face_curve_intersect.Pnt())
            return pnts




class DiffGeomCurve(object):
    def __init__(self, instance):
        self.instance = instance
        #self._local_props = BRepLProp_CLProps(self.instance.adaptor, self.instance.degree(), self.instance.tolerance)
        self._local_props = BRepLProp_CLProps(self.instance.adaptor, 2, self.instance.tolerance)
        # initialize with random parameter: 0

    @property
    def _curvature(self):
        return self._local_props

    def curvature(self, u):
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

        computes the main normal if no normal is found
        see:
        www.opencascade.org/org/forum/thread_645+&cd=10&hl=nl&ct=clnk&gl=nl
        '''
        try:
            self._curvature.SetParameter(u)
            ddd = gp_Dir()
            self._curvature.Normal(ddd)
            return ddd
        except:
#            gp_Vec d1u, d2u;

#            Handle_Geom_Curve aCurv=aCertainCurve;
#
#            Standard_Real u=aCertainValue;
#
#            // get 1st and 2nd derivative in u
#
#            aCurv->D2(u, aPnt, d1u, d2u);
#
#            Standard_Real nu_dot = d1u.Dot(d2u)/d1u.Magnitude();
#
#            gp_Vec t_vec = d1u.Divided(d1u.Magnitude());
#
#            // compute the main normal (not the bi normal)
#
#            gp_Vec mainn = d2u-(nu_dot*t_vec);

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
        pass



#===============================================================================
#    Curve.Construct
#===============================================================================

class ConstructFromCurve():
    def __init__(self, instance):
        self.instance = instance

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
        pass

class Edge(KbeObject, TopoDS_Edge):
    '''
    '''

    def __init__(self, edge):
        '''
        '''
        assert isinstance(edge, TopoDS_Edge), 'need a TopoDS_Edge, got a %s'% edge.__class__
        KbeObject.__init__(self, 'edge')
        TopoDS_Edge.__init__(self, edge)

        # tracking state
        self._local_properties_init    = False
        self._curvature_init           = False
        self._geometry_lookup_init     = False
        self._curve_handle = None
        self._curve = None
        self._adaptor = None
        self._adaptor_handle = None

        # instantiating cooperative classes
        # cooperative classes are distinct through CamelCaps from normal method -> pep8
        self.DiffGeom = DiffGeomCurve(self)
        self.Intersect = IntersectCurve(self)
        self.Construct = ConstructFromCurve(self)
        #self.graphic   = GraphicCurve(self)

        # GeomLProp object
        self._curvature = None
        #self._local_properties()

        # some aliasing of useful methods

    def is_closed(self):
        return self.adaptor.IsClosed()

    def is_periodic(self):
        return self.adaptor.IsPeriodic()

    def is_rational(self):
        return self.adaptor.IsRational()

    def continuity(self):
        return self.adaptor.Continuity

    def degree(self):
        if 'line' in self.type:
            return 1
        elif 'curve' in self.type:
            return self.adaptor.Degree()
        else:
            # hyperbola, parabola, circle
            return 2

    def nb_knots(self):
        return self.adaptor.NbKnots()

    def nb_poles(self):
        return self.adaptor.NbPoles()


    @property
    def curve(self):
        if self._curve is not None and not self.is_dirty:
            pass
        else:
            self._curve_handle  = BRep_Tool().Curve(self)[0]
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
            self._adaptor = BRepAdaptor_Curve(self)
            self._adaptor_handle = BRepAdaptor_HCurve(self._adaptor)
        return self._adaptor

    @property
    def adaptor_handle(self):
        if self._adaptor_handle is not None and not self.is_dirty:
            pass
        else:
            self.adaptor
        return self._adaptor_handle

    @property
    def geom_curve_handle(self):
        """
        :return: Handle_Geom_Curve adapted from `self`
        """
        if self._adaptor_handle is not None and not self.is_dirty:
            pass
        else:
            self.adaptor
        return self._adaptor.Curve().Curve()

    @property
    def type(self):
        return geom_lut[self.adaptor.Curve().GetType()]

    def pcurve(self, face):
        """
        computes the 2d parametric spline that lies on the surface of the face
        :return: Geom2d_Curve, u, v
        """
        crv, u,v =  BRep_Tool().CurveOnSurface(self, face)
        return crv.GetObject(), u, v

    def _local_properties(self):
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
#        if self.is_periodic:
#            pass
#        else:
#            warnings.warn('the wire to be trimmed is not closed, hence cannot be made periodic')
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

    def project_vertex(self, pnt_or_vertex):
        ''' returns the closest orthogonal project on `pnt` on edge
        '''
        if isinstance(pnt_or_vertex, TopoDS_Vertex):
            pnt_or_vertex = vertex2pnt(pnt_or_vertex)

        poc = GeomAPI_ProjectPointOnCurve(pnt_or_vertex, self.curve_handle)
        return poc.LowerDistanceParameter(), poc.NearestPoint()

    def distance_on_curve(self, distance, close_parameter, estimate_parameter, check_seam=True):
        '''returns the parameter if there is a parameter
        on the curve with a distance length from u
        raises OutOfBoundary if no such parameter exists
        '''
        ccc = GCPnts_AbscissaPoint(self.adaptor, distance, close_parameter, estimate_parameter, 1e-5)
        with assert_isdone(ccc, 'couldnt compute distance on curve'):
            return ccc.Parameter()

    def mid_point(self):
        """
        :return: the parameter at the mid point of the curve, and its corresponding gp_Pnt
        """
        _min, _max = self.domain()
        _mid = (_min+_max) / 2.
        return _mid, self.adaptor.Value(_mid)

    def divide_by_number_of_points(self, n_pts, lbound=None, ubound=None):
        '''returns a nested list of parameters and points on the edge
        at the requested interval [(param, gp_Pnt),...]
        '''
        _lbound, _ubound = self.domain()
        if lbound:
            _lbound = lbound
        elif ubound:
            _ubound = ubound


        # minimally two points or a Standard_ConstructionError is raised
        if n_pts <= 1:
            n_pts = 2

        try:
            npts = GCPnts_UniformAbscissa(self.adaptor, n_pts, _lbound, _ubound)
        except:
            import ipdb; ipdb.set_trace()
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


#    @property
#    def periodic(self):
#        return self.adaptor.IsPeriodic()
#
#    @periodic.setter
#    def periodic(self, _bool):
#        _bool = bool(_bool)
#        if self.is_closed:
#            self.adaptor.BSpline()
#        else:
#            raise warnings.warn('cannot set periodicity on a non-closed edge')

    def control_point(self, indx, pt=None):
        '''gets or sets the coordinate of the control point
        '''
        raise NotImplementedError

    def __eq__(self, other):
        if hasattr(other, 'topo'):
            return self.IsEqual(other)
        else:
            return self.IsEqual(other)

    def __ne__(self, other):
        return not(self.__eq__(other))

#    def __cmp__(self, other):
#        return self.__eq__(other)

#    def __contains__(self, item):
#        print 'in list?'
#        import ipdb; ipdb.set_trace()
#        return 0
#
#
    def first_vertex(self):
        # TODO: should return Vertex, not TopoDS_Vertex
        return TopExp.FirstVertex(self)

    def last_vertex(self):
        return TopExp.LastVertex(self)

    def common_vertex(self, edge):
        vert = TopoDS_Vertex()
        if TopExp.CommonVertex(self, edge, vert):
            return vert
        else:
            return False

    def as_vec(self):
        if self.is_line():
            first, last = map( vertex2pnt, [self.first_vertex(), self.last_vertex()] )
            return gp_Vec(first, last)
        else:
            raise ValueError("edge is not a line, hence no meaningful vector can be returned")

#===============================================================================
#    Curve.
#===============================================================================

    def parameter_to_point(self, u):
        '''returns the coordinate at parameter u
        '''
        return self.adaptor.Value(u)

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
        return fix_continuity(self, continuity)

    def continuity_to_another_curve(self, other):
        '''returns continuity between self and another curve
        '''
        return self._lprops_curve_tool(self.curve)

    def continuity_from_faces(self, f1, f2):
        return BRep_Tool_Continuity(self, f1, f2)

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
    def is_trimmed(self):
        '''checks if curve is trimmed

        check if the underlying geom type is trimmed

        '''
        raise NotImplementedError


    def is_line(self, tolerance=None):
        '''checks if the curve is planar within a tolerance
        '''
        if self.nb_knots() == 2 and self.nb_poles() ==2:
            return True
        else:
            return False

    def is_seam(self, face):
        """
        :return: True if the edge has two pcurves on one surface
        ( in the case of a sphere for example... )
        """
        sae = ShapeAnalysis_Edge()
        return sae.IsSeam(self, face)

    def is_edge_on_face(self, face):
        '''checks whether curve lies on a surface or a face
        '''
        return ShapeAnalysis_Edge().HasPCurve(self, face)

    def on_edge(self, edge):
        '''checks if the curve lies on an edge or a border
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
        show = super(Edge, self).show()
        #if not poles and not vertices and not knots:
        #    show()

    def update(self, context):
        '''updates the graphic presentation when called
        '''
        raise NotImplementedError

    @property
    def color(self, *rgb):
        '''color descriptor for the curve
        '''
        raise NotImplementedError

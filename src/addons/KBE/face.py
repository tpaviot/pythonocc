from OCC.BRep import BRep_Tool_Surface
from OCC.BRepIntCurveSurface import BRepIntCurveSurface_Inter
from OCC.BRepTools import BRepTools
from OCC.BRepTopAdaptor import BRepTopAdaptor_FClass2d
from OCC.Geom import Geom_Curve
from OCC.GeomAPI import GeomAPI_ProjectPointOnSurf
from OCC.GeomLib import GeomLib_IsPlanarSurface
from OCC.TopAbs import TopAbs_IN
from OCC.TopExp import TopExp

__author__ = 'localadmin'
#===============================================================================
#    Surface.local_properties
#    curvature, tangency etc.
#===============================================================================
from OCC.KBE.base import Display, KbeObject, GlobalProperties
from OCC.KBE.edge import Edge
from OCC.Utils.Construct import *
from OCC.BRep import  BRep_Tool
from OCC.TopoDS import  *
from OCC.GeomLProp import GeomLProp_SLProps
from OCC.BRepCheck import BRepCheck_Face
from OCC.BRepTools import BRepTools, BRepTools_UVBounds
from OCC.BRepAdaptor import BRepAdaptor_Surface, BRepAdaptor_HSurface
from OCC.ShapeAnalysis import ShapeAnalysis_Surface
from OCC.IntTools import IntTools_FaceFace
from OCC.ShapeAnalysis import ShapeAnalysis_Surface
from OCC.GeomProjLib import GeomProjLib
from OCC.Utils.Topology import Topo


'''

TODO:

use IntTools_FaceFace to compute intersection between 2 faces
also useful to test if 2 faces are tangent

inflection point -> scipy.fsolve
radius / centre of circle
divide curve by circles
frenet frame


'''


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

            self._curvature = GeomLProp_SLProps(self.instance.surface_handle, u, v, 1, 1e-6)
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
        # TODO: should make this return a gp_Vec
        curv = self.curvature(u,v)
        if curv.IsNormalDefined():
            return curv.Normal()
        else:
            raise ValueError('normal is not defined at u,v: {0}, {1}'.format(u,v))

    def tangent(self,u,v, recurse=False):
        dU, dV = gp_Dir(), gp_Dir()
        curv = self.curvature(u,v)
        if curv.IsCurvatureDefined():
            curv.TangentU(dU), curv.TangentV(dV)
            return dU, dV
        else:
            return None, None

    def radius(self, u, v ):
        '''returns the radius at u
        '''
        # TODO: SHOULD WE RETURN A SIGNED RADIUS? ( get rid of abs() )?
        try:
            _crv_min = 1./self.min_curvature(u,v)
        except ZeroDivisionError:
            _crv_min = 0.

        try:
            _crv_max = 1./self.max_curvature(u,v)
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
        return self.surface.Continuity()

    def inflection_parameters(self):
        """
        :return: a list of tuples (u,v) of parameters
        where there are inflection points on the edge

        returns None if no inflection parameters are found
        """
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
        if not isinstance(crv, Edge):
            crv = Edge(crv)
        bics = BRepIntCurveSurface_Inter()
        bics.Init(self.face, crv.crv)
        # state, u,v,w
        while bics.More():
            uvw = [bics.U(). bics.V(), bics.W()]
            return uvw, bics.Point(), bics.Face(), bics.Transition()


class Face(KbeObject, TopoDS_Face):
    """high level surface API
    object is a Face iff part of a Solid
    otherwise the same methods do apply, apart from the topology obviously
    """
    def __init__(self, face):
        '''
        '''
        KbeObject.__init__(self, name='face')
        TopoDS_Face.__init__(self, face)

        # cooperative classes
        self.DiffGeom = DiffGeomSurface(self)

        # STATE; whether cooperative classes are yet initialized
        self._curvature_initiated = False
        self._geometry_lookup_init = False

        self._h_srf           = None
        self._srf             = None
        self._adaptor         = None
        self._adaptor_handle  = None
        self._classify_uv     = None # cache the u,v classifier, no need to rebuild for every sample

        # aliasing of useful methods
        def is_u_periodic(self):
            return self.adaptor.IsUPeriodic()

        def is_v_periodic(self):
            return self.adaptor.IsVPeriodic()

        def is_u_closed(self):
            return self.adaptor.IsUClosed()

        def is_v_closed(self):
            return self.adaptor.IsVClosed()

        def is_u_rational(self):
            return self.adaptor.IsURational()

        def is_u_rational(self):
            return self.adaptor.IsVRational()

        def u_degree(self):
            return self.adaptor.UDegree()

        def v_degree(self):
            return self.adaptor.VDegree()

        def u_continuity(self):
            return self.adaptor.UContinuity()

        def v_continuity  (self):
            return self.adaptor.VContinuity()

        # mehhh RuntimeError...
        #def nb_u_knots     = self.adaptor.NbUKnots
        #def nb_v_knots     = self.adaptor.NbVKnots
        #def nb_u_poles     = self.adaptor.NbUPoles
        #def nb_v_poles     = self.adaptor.NbVPoles

    def domain(self):
        '''the u,v domain of the curve
        :return: UMin, UMax, VMin, VMax
        '''
        return BRepTools.UVBounds(self)

    @property
    def surface(self):
        if self._srf is not None and not self.is_dirty:
            pass
        else:
            self._h_srf = BRep_Tool_Surface(self)
            self._srf = self._h_srf.GetObject()
        return self._srf

    @property
    def surface_handle(self):
        if self._h_srf is not None and not self.is_dirty:
            pass
        else:
            self.surface
        return self._h_srf

    @property
    def adaptor(self):
        if self._adaptor is not None and not self.is_dirty:
            pass
        else:
            self._adaptor = BRepAdaptor_Surface(self)
            self._adaptor_handle = BRepAdaptor_HSurface()
            self._adaptor_handle.Set(self._adaptor)
        return self._adaptor

    @property
    def adaptor_handle(self):
        if self._adaptor_handle is not None and not self.is_dirty:
            pass
        else:
            self.adaptor
        return self._adaptor_handle

    def weight(self, indx):
        '''sets or gets the weight of a control point at the index

        '''
        # TODO: somehow its hard to get a Geom_SplineSurface object from a face
        # nessecary to get control points and weights

        raise NotImplementedError

    def close(self):
        '''if possible, close self'''
        raise NotImplementedError

    def is_closed(self):
        sa = ShapeAnalysis_Surface(self.surface_handle)
        sa.GetBoxUF()
        return sa.IsUClosed(), sa.IsVClosed()

    def is_planar(self, tol=TOLERANCE):
        '''checks if the surface is planar within a tolerance
        :return: bool, gp_Pln
        '''
        aaa = GeomLib_IsPlanarSurface(self.surface_handle, tol)
        if aaa.IsPlanar():
            return aaa.IsPlanar()# , aaa.Plan()
        else:
            return aaa.IsPlanar()#, None

    def is_overlapping(self, other):
        import ipdb; ipdb.set_trace()
        overlap = IntTools_FaceFace()

    def is_trimmed(self):
        """
        :return: True if the Wire delimiting the Face lies on the bounds of the surface
        if this is not the case, the wire represents a contour that delimits the face [ think cookie cutter ]
        and implies that the surface is trimmed
        """
        #if not(BRep_Tool().NaturalRestriction(self)):
        #    return True
        _round = lambda x: round(x,3)
        a = map(_round, BRepTools_UVBounds(self))
        b = map(_round, self.adaptor.Surface().Surface().GetObject().Bounds())
        if a != b:
            print 'a,b',a,b
            return True
        return False

    def is_overlapping(self, other):
        import ipdb; ipdb.set_trace()
        overlap = IntTools_FaceFace()


    def on_trimmed(self, u, v):
        '''tests whether the surface at the u,v parameter has been trimmed
        '''
        if self._classify_uv is None:
            self._classify_uv  = BRepTopAdaptor_FClass2d(self, 1e-9)
        uv  = gp_Pnt2d(u,v)
        if self._classify_uv.Perform(uv) == TopAbs_IN:
            return True
        else:
            return False

    def parameter_to_point(self, u, v):
        '''returns the coordinate at u,v
        '''
        return self.surface.Value(u,v)

    def point_to_parameter(self, pt):
        '''
        returns the uv value of a point on a surface
        @param pt:
        '''
        sas = ShapeAnalysis_Surface(self.surface_handle)
        uv  = sas.ValueOfUV(pt, self.tolerance)
        return uv.Coord()

    def transform(self, transform):
        '''affine transform
        '''
        raise NotImplementedError

    def continuity_edge_face(self, edge, face):
        """
        compute the continuity between two faces at :edge:

        :param edge: an Edge or TopoDS_Edge from :face:
        :param face: a Face or TopoDS_Face
        :return: bool, GeomAbs_Shape if it has continuity, otherwise
         False, None
        """
        edge = edge if not hasattr(edge, 'topo') else edge
        face = face if not hasattr(face, 'topo') else face
        bt = BRep_Tool()
        if bt.HasContinuity(edge, self, face):
            continuity = bt.Continuity(edge, self, face)
            return True, continuity
        else:
            return False, None

#===============================================================================
#    Surface.project
#    project curve, point on face
#===============================================================================

    def project_vertex( self, pnt ):
        '''projects self with a point, curve, edge, face, solid
        method wraps dealing with the various topologies

        if other is a point:
            returns uv, point

        '''
        if isinstance(pnt, TopoDS_Vertex):
            pt = BRep_Tool.Pnt(pnt)

        proj = GeomAPI_ProjectPointOnSurf(pnt, self.surface_handle)
        # SHOULD USE THIS!!!
        uv = proj.LowerDistanceParameters()
        proj_pnt = proj.NearestPoint()
        return uv, proj_pnt

    def project_curve(self, other):
        # this way Geom_Circle and alike are valid too
        if isinstance(other, TopoDS_Edge) or\
             isinstance(other, Geom_Curve)  or\
             issubclass(other, Geom_Curve):
                if isinstance(other, TopoDS_Edge):
                    # convert edge to curve
                    first, last = TopExp.FirstVertex(other), TopExp.LastVertex(other)
                    lbound, ubound  = BRep_Tool().Parameter(first, other), BRep_Tool().Parameter(first, other)
                    other = BRep_Tool.Curve(other, lbound, ubound).GetObject()

                return GeomProjLib().Project(other, self.surface_handle)

    def project_edge(self, edg):
        if hasattr(edg, 'adaptor'):
            return self.project_curve(self, self.adaptor)
        return self.project_curve(self, to_adaptor_3d(edg))

#    def iso_curve(self, u_or_v, param):
#        """
#        :return: an iso curve at parameter `param`
#        :param u_or_v: "u" or "v"
#        :param param:  the parameter where the iso curve lies
#        """
#        pass

    def iso_curve(self, u_or_v, param):
        """
        get the iso curve from a u,v + parameter
        :param u_or_v:
        :param param:
        :return:
        """
        uv = 0 if u_or_v == 'u' else 1
        # TODO: REFACTOR, part of the Face class now...
        iso = Adaptor3d_IsoCurve(self.adaptor_handle.GetHandle(), uv, param)
        return iso

    def Edges(self):
        return [Edge(i) for i in Topo(self).edges()]

if __name__ == "__main__":

    from OCC.BRepPrimAPI import BRepPrimAPI_MakeSphere
    sph = BRepPrimAPI_MakeSphere(1,1).Face()
    fc = Face(sph)




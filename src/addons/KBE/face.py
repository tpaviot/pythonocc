__author__ = 'localadmin'
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
            self._curvature = GeomLProp_SLProps(self.instance.h_srf, u, v, 1, 1e-6)
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
        self.h_srf = BRep_Tool_Surface(face, self.location)
#        self.h_srf.Transform(self.location.Transformation())
        #self.srf = self.h_srf.GetObject()

        # hier is hoe je nurbs maakt van breps:
#        self.nurbs = BRepBuilderAPI_NurbsConvert(face)
#        self.nurbs.Perform()

        self.diff_geom = DiffGeomSurface(self)

        # registering cooperative classes
        self.global_properties = GlobalProperties(self)

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
        return BRepTools_uvbounds(self.face)

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
        '''kbe_test if curve is closed
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

    def parameter_to_point(self, u, v):
        '''returns the coordinate at u,v
        '''
        return self.srf.Value(u,v)

    def point_to_parameter(self, pt):
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

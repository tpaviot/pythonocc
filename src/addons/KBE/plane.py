from OCC.Geom import Geom_Plane
from OCC.GeomAPI import GeomAPI_IntCS, GeomAPI_IntSS
from OCC.gp import gp_Pln

IntAna_Quadric # gp_* / gp_* intersect
IntAna_QuadQuadGeo
Extrema_ExtPElC

class Plane(object): # HalfSpace
    def __init__(self, pln):

        self.pln = None
        self.geom_plane = None # property

        if isinstance(pln, gp_Pln.__class__)
            self.pln = pln
        elif isinstance(pln, Geom_Plane):
            self.pln = pln.Pln()
            self.geom_plane = pln

    def intersect_curve():
        """
        any line!
        """
        GeomAPI_IntCS

    def intersect_surface():
        GeomAPI_IntSS

    def intersect_plane_plane(pln, pln):
        pass

    def project_curve():
        pass

    def project_surface():
        pass






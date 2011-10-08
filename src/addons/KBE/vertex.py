from OCC.Utils.Construct import make_vertex
from OCC.Utils.Common import TOLERANCE, vertex2pnt
from OCC.gp import gp_Pnt
from OCC.TopoDS import TopoDS_Vertex
from base import KbeObject
from OCC.BRepTools import  BRepTools_Modification

class Vertex(KbeObject, TopoDS_Vertex):
    """
    wraps gp_Pnt
    """
    _n = 0
    def __init__(self, x,y,z):
        """Constructor for KbeVertex"""
        KbeObject.__init__(self, name='Vertex #{0}'.format(self._n))

        self._n += 1 # should be a property of KbeObject
        self._pnt = gp_Pnt(x,y,z)
        self._vertex = make_vertex(self._pnt)
        TopoDS_Vertex.__init__(self,self._vertex)

    def _update(self):
        """

        """
        # TODO: perhaps should take an argument until which topological level
        # topological entities bound to the vertex should be updated too...
        BRepTools_Modification.NewPoint(self, self._pnt, TOLERANCE)

    @staticmethod
    def from_vertex(cls, pnt):
        Vertex.from_pnt(vertex2pnt(pnt))

    @staticmethod
    def from_pnt(cls, pnt):
        x,y,z = pnt.Coord()
        return cls(x,y,z)

    @classmethod
    def from_vec(cls):
        pass

    @property
    def x(self):
        return self._pnt.X()

    @x.setter
    def x(self, val):
        self._pnt.SetX(val)
        self._update()
        #self.is_dirty = 1

    @property
    def y(self):
        return self._pnt.Y()

    @y.setter
    def y(self, val):
        self._pnt.SetY(val)
        self._update()
        #self.is_dirty = 1

    @property
    def z(self):
        return self._pnt.Z()

    @z.setter
    def z(self, val):
        self._pnt.SetZ(val)
        self._update()
        #self.is_dirty = 1

    def __repr__(self):
        return self.name

    @property
    def as_vec(self):
        '''returns a gp_Vec version of self'''
        return gp_Vec(*self._pnt.Coord())

    @property
    def as_dir(self):
        '''returns a gp_Vec version of self'''
        return gp_Dir(*self._pnt.Coord())

    @property
    def as_xyz(self):
        '''returns a gp_XYZ version of self'''
        return gp_XYZ(*self._pnt.Coord())

    @property
    def as_2d(self):
        '''returns a gp_Pnt2d version of self'''
        return gp_Pnt2d(*self._pnt.Coord()[:2])

    

    

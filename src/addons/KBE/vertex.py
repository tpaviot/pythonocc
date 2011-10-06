from OCC.Utils.Common import TOLERANCE, vertex2pnt
from OCC.Utils.Construct import make_vertex
from OCC.gp import gp_Pnt
from OCC.TopoDS import TopoDS_Vertex
from base import KbeObject

class Vertex(KbeObject, TopoDS_Vertex):
    """
    wraps gp_Pnt
    """
    _n = 0
    def __init__(self, vertex):
        """Constructor for KbeVertex"""
        KbeObject.__init__(self,
                           #name='Vertex #{0} {1},{2},{3}'.format(self._n,  self.x, self.y, self.z)
                           name='Vertex #{0}'.format(self._n)
                                )
        TopoDS_Vertex.__init__(self,vertex)
        self._n += 1 # should be a property of KbeObject

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
        return self.X()

    @x.setter
    def x(self, val):
        self.SetX(val)
        self.is_dirty = 1

    @property
    def y(self):
        return self.Y()

    @y.setter
    def y(self, val):
        self.SetY(val)
        self.is_dirty = 1

    @property
    def z(self):
        return self.Z()

    @z.setter
    def z(self, val):
        self.SetZ(val)
        self.is_dirty = 1

    def __eq__(self, other):
        return self.IsEqual(other, TOLERANCE)

    def __repr__(self):
        return self.name

    @property
    def as_topods(self):
        '''returns a gp_Vec version of self'''
        return make_vertex(self)

    @property
    def as_vec(self):
        '''returns a gp_Vec version of self'''
        pass

    @property
    def as_dir(self):
        '''returns a gp_Vec version of self'''
        pass

    @property
    def as_xyz(self):
        '''returns a gp_XYZ version of self'''
        pass

    @property
    def as_2d(self):
        '''returns a gp_Pnt2d version of self'''
        pass

    

    

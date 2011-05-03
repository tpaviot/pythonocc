from OCC.Utils.Common import TOLERANCE, vertex2pnt
from OCC.Utils.Construct import make_vertex
from OCC.gp import gp_Pnt
from base import KbeObject

class Vertex(KbeObject, gp_Pnt):
    """
    wraps gp_Pnt
    """
    _n = 0
    def __init__(self, x,y,z):
        """Constructor for KbeVertex"""
        gp_Pnt.__init__(self, x,y,z)
        KbeObject.__init__(self,
                           #name='Vertex #{0} {1},{2},{3}'.format(self._n,  self.x, self.y, self.z)
                           name='Vertex #{0}'.format(self._n)
                                )
        self._n += 1 # should be a property of KbeObject

    @staticmethod
    def from_vertex(cls, pnt):
        Vertex.from_pnt(vertex2pnt(pnt))

    @staticmethod
    def from_pnt(cls):
        pass

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

    

    

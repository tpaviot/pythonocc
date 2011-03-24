from OCC.gp import gp_Pnt
from kbe_base import KbeObject

class Vertex(KbeObject, gp_Pnt):
    """"""
    _n = 0
    def __init__(self, x,y,z):
        """Constructor for KbeVertex"""
        gp_Pnt.__init__(self, x,y,z)
        KbeObject.__init__(self,
                           #name='Vertex #{0} {1},{2},{3}'.format(self._n,  self.x, self.y, self.z)
                           name='Vertex #{0}'.format(self._n)
                                )
        self._n += 1 # should be a property of KbeObject

    @property
    def x(self):
        return self.X()

    @x.setter:
    def x(self, val):
        self.SetX(val)
        self.is_dirty = 1

    @property
    def y(self):
        return self.Y()

    @y.setter:
    def y(self, val):
        self.SetY(val)
        self.is_dirty = 1

    @property
    def z(self):
        return self.Z()

    @z.setter:
    def z(self, val):
        self.SetZ(val)
        self.is_dirty = 1

    def __repr__(self):
        return self.name


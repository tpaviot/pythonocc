from OCC.TopoDS import TopoDS_Solid
from OCC.Utils.Topology import Topo

from base import GlobalProperties, KbeObject
from shell import Shell


class Solid(KbeObject, TopoDS_Solid):

    """high level Solid Api"""
    def __init__(self, solid):
        KbeObject.__init__(name='solid')
        TopoDS_Solid.__init__(self, solid)
        self.GlobalProperties = GlobalProperties(self)
        self.DressUp = DressUp(self)

    #===============================================================================
    #    Solid.boolean
    #===============================================================================
    def add(self, other_solid):
        '''adds another_solid to self
        '''

    def cut(self, other_solid):
        '''cuts other_solid from self
        '''
    def intersect(self, other_solid):
        '''common space of self and other_solid
        '''

    def shells(self):
        return (Shell(sh) for sh in Topo(self))
#===============================================================================
#    Solid.graphic
#===============================================================================

    @property
    def color(self, color):
        '''color all the faces
        '''

    @property
    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the tesselation
        '''
        raise NotImplementedError

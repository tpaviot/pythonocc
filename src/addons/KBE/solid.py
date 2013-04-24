from OCC.TopoDS import TopoDS_Solid
from base import GlobalProperties, KbeObject
from shell import Shell
from OCC.Utils.Topology import Topo


class Solid(KbeObject, TopoDS_Solid):

    """high level Solid Api"""
    def __init__(self, solid):
        KbeObject.__init__(name='solid')
        TopoDS_Solid.__init__(self, solid)
        self.GlobalProperties = GlobalProperties(self)
        self.DressUp = DressUp(self)


#    def parameter_to_coordinate(self, coord):
#        '''
#        returns the index of the face closest to the world coordinate `coord`
#        '''
#        raise NotImplementedError

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


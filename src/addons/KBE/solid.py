from .base import KbeObject, GlobalProperties
from .face import Face

from OCC.TopoDS import TopoDS_Shell

from OCC.Utils.Topology import Topo

class Shell(KbeObject):
    _n = 0
    def __init__(self, shell):
        KbeObject.__init__(self, name='Shell #{0}'.format(self._n))
        self._topo_type = TopoDS_Shell 
        self.topo = shell
        self.global_properties = GlobalProperties(self)
        self._n += 1


    def copy(self):
        cp = super(Shell, self).copy()
        return Shell(cp)

    @property
    def type(self):
        return 'shell'

    def analyse(self):
        """

        :return:
        """
        from OCC.ShapeAnalysis import ShapeAnalysis_Shell
        ss = ShapeAnalysis_Shell(self.topo)
        if ss.HasFreeEdges():
            bad_edges = [e for e in Topo(ss.BadEdges()).edges()]
                    

    def Faces(self):
        """

        :return:
        """
        return (Face(f) for f in Topo(self.topo).faces())

    def Wires(self):
        """

        :return:
        """
        return (Wire(w) for w in Topo(self.topo))
    

class Solid(Shell):
    """high level Solid Api"""
    def __init__(self, solid):
        self._topo_type = TopoDS_Solid
        self.topo = solid
        self.global_properties = GlobalProperties(self)


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
        return (Shell(sh) for sh in Topo(self.topo))
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


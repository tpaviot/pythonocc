from .base import KbeObject, GlobalProperties
from .face import Face

from OCC.TopoDS import TopoDS_Shell

from OCC.Utils.Topology import Topo

class Shell(KbeObject, TopoDS_Shell):
    _n = 0
    def __init__(self, shell):
        KbeObject.__init__(self, name='Shell #{0}'.format(self._n))
        TopoDS_Shell.__init__(self, shell)
        self.GlobalProperties = GlobalProperties(self)
        self._n += 1

    @property
    def type(self):
        return 'shell'

    def analyse(self):
        """

        :return:
        """
        from OCC.ShapeAnalysis import ShapeAnalysis_Shell
        ss = ShapeAnalysis_Shell(self)
        if ss.HasFreeEdges():
            bad_edges = [e for e in Topo(ss.BadEdges()).edges()]
                    

    def Faces(self):
        """

        :return:
        """
        return (Face(f) for f in Topo(self).faces())

    def Wires(self):
        """

        :return:
        """
        return (Wire(w) for w in Topo(self))


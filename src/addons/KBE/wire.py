from OCC.KBE.base import KbeObject
from OCC.TopoDS import TopoDS_Wire

class Wire(KbeObject, TopoDS_Wire):
    '''
    '''

    def __init__(self, wire):
        '''
        '''
        assert isinstance(wire, TopoDS_wire), 'need a TopoDS_Wire, got a %s'% wire.__class__
        KbeObject.__init__(self, 'wire')
        TopoDS_Wire.__init__(self, wire)

    BRepAdaptor_CompCurve
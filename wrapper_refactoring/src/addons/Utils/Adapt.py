from OCC.BRepAdaptor import *

def adapt_edge_to_curve(edg):
    '''
    returns a curve adaptor from an edge
    @param edg: TopoDS_Edge
    '''
    return BRepAdaptor_Curve(edg)

def adapt_edge_to_hcurve(edg):
    c = BRepAdaptor_HCurve()
    c.ChangeCurve().Initialize(edg)
    return c
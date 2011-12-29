from OCC.Display import OCCViewer
from itertools import izip

class TraitOCCViewer3d(OCCViewer.Viewer3d):
    '''
    Custom OCCViewer that keeps a map of its Shapes -> AIS_Shapes
    '''
    def __init__(self, *args, **kwargs):
        OCCViewer.Viewer3d.__init__(self, *args, **kwargs)
        self.ShapeMap = {}

    def DisplayShape(self, shapes, **kwargs):
        if isinstance(shapes, (list, tuple)):
            ais_shapes = OCCViewer.Viewer3d.DisplayShape(self, shapes, **kwargs)
            for s, ais in izip(shapes, ais_shapes):
                self.ShapeMap[s] = ais
        else:
            ais = OCCViewer.Viewer3d.DisplayShape(self, shapes, **kwargs)
            self.ShapeMap[shapes] = ais

    def EraseShape(self, shape):
        if shape not in self.ShapeMap:
            raise Exception("shape not in shapemap")

        self.Context.Erase(self.ShapeMap[shape])
        del self.ShapeMap[shape]
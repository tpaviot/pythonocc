import SimpleXMLRPCServer
from OCC.BRepPrimAPI import *
from OCC.TopoDS import *
from OCC.gp import *
from OCC.Geom import *
from OCC.GeomAPI import *
from OCC.TColgp import *
from OCC.BRepBuilderAPI import *
import pickle
# Creating XMLRPC server
server = SimpleXMLRPCServer.SimpleXMLRPCServer(("localhost", 8888))

def point_list_to_TColgp_Array1OfPnt(li):
    pts = TColgp_Array1OfPnt(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    return pts

def make_face(shape):
    face = BRepBuilderAPI_MakeFace(shape)
    face.Build()
    return face.Shape()

class ShapeFactory(object):
    def getBox(self, x,y,z):
        print 'Box creation (%f,%f,%f)'%(x,y,z)
        shape = BRepPrimAPI_MakeBox(x,y,z).Shape()
        return pickle.dumps(shape)
    
    def getSphere(self, radius):
        print 'Sphere creation of radius %f'%radius
        shape = BRepPrimAPI_MakeSphere(radius).Shape()
        return pickle.dumps(shape)

    def getSurfaceFromRevolution(self):
        print 'Surface of revolution created'

        array = []
        array.append(gp_Pnt(0,0,1))                                         
        
        array.append(gp_Pnt(1,2,2))                                         
        array.append(gp_Pnt(2,3,3))                                         
        array.append(gp_Pnt(4,3,4))                                         
        array.append(gp_Pnt(5,5,5))                                         
        aCurve = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array)).Curve()
        
        SOR =Geom_SurfaceOfRevolution(aCurve, gp.gp().OX())
        
        shape = make_face(SOR.GetHandle())
        return pickle.dumps(shape)
    
# Creating object to share
shape_factory = ShapeFactory()
server.register_instance(shape_factory)
#Go into the main listener loop
print "Listening on port 8888"
server.serve_forever()

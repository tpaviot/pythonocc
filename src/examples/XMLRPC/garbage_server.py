'''

Temporary file until the webfaction server is doing something useful

'''

import SimpleXMLRPCServer
#from OCC.BRepPrimAPI import *
#from OCC.TopoDS import *
import pickle
# Creating XMLRPC server
server = SimpleXMLRPCServer.SimpleXMLRPCServer(("localhost", 3182))

class ShapeFactory(object):
    def getBox(self, x,y,z):
        #print 'Box creation (%f,%f,%f)'%(x,y,z)
        #shape = BRepPrimAPI_MakeBox(x,y,z).Shape()
        #return pickle.dumps(shape)
        return 'Box creation (%f,%f,%f)'%(x,y,z)
    
    def getSphere(self, radius):
        #print 'Sphere creation of radius %f'%radius
        #shape = BRepPrimAPI_MakeSphere(radius).Shape()
        #return pickle.dumps(shape)
        return 'Sphere creation of radius %f'%radius
    
# Creating object to share
shape_factory = ShapeFactory()
server.register_instance(shape_factory)
#Go into the main listener loop
#print "Listening on port 8888"
server.serve_forever()

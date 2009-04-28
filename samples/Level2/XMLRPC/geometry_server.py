#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

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

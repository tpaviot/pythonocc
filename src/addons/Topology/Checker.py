# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

# This module give information about a TopoDS_Shape

from OCC.TopoDS import *
from Explorer import HLExplorer
from OCC.BRep import *
from OCC.Geom import *
from OCC.TopAbs import *

classes = dir()
geom_classes = []
for elem in classes:
	if (elem.startswith('Geom') and not 'swig' in elem):
 		geom_classes.append(elem)

def what_is_face(face):
    ''' Returns all class names for which this class can be downcasted
    '''
    if not face.ShapeType()==TopAbs_FACE:
        print '%s is not a TopAbs_FACE. Conversion impossible'
        return None
    hs = BRep_Tool().Surface(face)
    obj = hs.GetObject()
    result = []
    for elem in classes:
        if (elem.startswith('Geom') and not 'swig' in elem):
 	      geom_classes.append(elem)
    # Run the test for each class
    for geom_class in geom_classes:
        if obj.IsKind(geom_class) and not geom_class in result:
            result.append(geom_class)
    return result

def face_is_plane(face):
    ''' Returns True if the TopoDS_Shape is a plane, False otherwise
    '''
    hs = BRep_Tool().Surface(face)
    downcast_result = Handle_Geom_Plane().DownCast(hs)
    # the handle is null if downcast failed or is not possible,
    # that is to say the face is not a plane
    if downcast_result.IsNull():
        return False
    else:
        return True

def shape_is_cylinder(face):
    ''' Returns True is the TopoDS_Shape is a cylinder, False otherwise
    '''
    hs = BRep_Tool().Surface(face)
    handle_geom_plane = Handle_Geom_Cylinder().DownCast(hs)
    if downcast_result.IsNull():
        return False
    else:
        return True
    
if __name__=='__main__':
    from OCC.BRepPrimAPI import *
    ms = BRepPrimAPI_MakeCylinder(100,50).Shape()    
    for face in HLExplorer(ms).faces():
        print "Check plane for face %s:%s"%(face,face_is_plane(face))
        print what_is_face(face)

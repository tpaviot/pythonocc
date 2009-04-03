/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt.hxx>
#include<Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY.hxx>
#include<Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient.hxx>
#include<Handle_MeshShape_ListNodeOfListOfSurfacePoint.hxx>
#include<Handle_MeshShape_ListNodeOfPolygon.hxx>
#include<Handle_MeshShape_StdMapNodeOfMapOfCouple.hxx>
#include<MeshShape.hxx>
#include<MeshShape_Couple.hxx>
#include<MeshShape_CoupleHasher.hxx>
#include<MeshShape_CurvatureType.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapOfShapeListOfTransient.hxx>
#include<MeshShape_Edge.hxx>
#include<MeshShape_ListIteratorOfListOfSurfacePoint.hxx>
#include<MeshShape_ListIteratorOfPolygon.hxx>
#include<MeshShape_ListNodeOfListOfSurfacePoint.hxx>
#include<MeshShape_ListNodeOfPolygon.hxx>
#include<MeshShape_ListOfSurfacePoint.hxx>
#include<MeshShape_MapIteratorOfMapOfCouple.hxx>
#include<MeshShape_MapOfCouple.hxx>
#include<MeshShape_Polygon.hxx>
#include<MeshShape_PolygonPoint.hxx>
#include<MeshShape_StdMapNodeOfMapOfCouple.hxx>
#include<MeshShape_SurfacePoint.hxx>
#include<MeshShape_Triangle.hxx>
#include<MeshShape_Vertex.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shape.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<MeshShape.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>
%}

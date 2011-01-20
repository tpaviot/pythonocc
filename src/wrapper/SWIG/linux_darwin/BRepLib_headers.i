/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepLib.hxx>
#include<BRepLib_Command.hxx>
#include<BRepLib_EdgeError.hxx>
#include<BRepLib_FaceError.hxx>
#include<BRepLib_FindSurface.hxx>
#include<BRepLib_FuseEdges.hxx>
#include<BRepLib_MakeEdge.hxx>
#include<BRepLib_MakeEdge2d.hxx>
#include<BRepLib_MakeFace.hxx>
#include<BRepLib_MakePolygon.hxx>
#include<BRepLib_MakeShape.hxx>
#include<BRepLib_MakeShell.hxx>
#include<BRepLib_MakeSolid.hxx>
#include<BRepLib_MakeVertex.hxx>
#include<BRepLib_MakeWire.hxx>
#include<BRepLib_ShapeModification.hxx>
#include<BRepLib_ShellError.hxx>
#include<BRepLib_WireError.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<TopoDS_Shape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<BRepLib.hxx>
#include<Handle_Geom_Plane.hxx>
#include<TopoDS_Solid.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopLoc_Location.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Shell.hxx>
%}

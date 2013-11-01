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

#include<StdPrs_Curve.hxx>
#include<StdPrs_DeflectionCurve.hxx>
#include<StdPrs_HLRPolyShape.hxx>
#include<StdPrs_HLRShape.hxx>
#include<StdPrs_HLRToolShape.hxx>
#include<StdPrs_Plane.hxx>
#include<StdPrs_Point.hxx>
#include<StdPrs_PoleCurve.hxx>
#include<StdPrs_ShadedShape.hxx>
#include<StdPrs_ShadedSurface.hxx>
#include<StdPrs_ToolPoint.hxx>
#include<StdPrs_ToolRFace.hxx>
#include<StdPrs_ToolShadedShape.hxx>
#include<StdPrs_ToolVertex.hxx>
#include<StdPrs_Vertex.hxx>
#include<StdPrs_WFDeflectionRestrictedFace.hxx>
#include<StdPrs_WFDeflectionShape.hxx>
#include<StdPrs_WFDeflectionSurface.hxx>
#include<StdPrs_WFPoleSurface.hxx>
#include<StdPrs_WFRestrictedFace.hxx>
#include<StdPrs_WFShape.hxx>
#include<StdPrs_WFSurface.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Geom_Point.hxx>
#include<Adaptor3d_Surface.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<TopoDS_Face.hxx>
#include<TopLoc_Location.hxx>
#include<Poly_Connect.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_Prs3d_Projector.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<HLRAlgo_Projector.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<TColgp_SequenceOfPnt.hxx>
%}

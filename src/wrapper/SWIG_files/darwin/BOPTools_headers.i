/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<BOPTools.hxx>
#include<BOPTools_AlgoTools.hxx>
#include<BOPTools_AlgoTools2D.hxx>
#include<BOPTools_AlgoTools3D.hxx>
#include<BOPTools_ConnexityBlock.hxx>
#include<BOPTools_CoupleOfShape.hxx>
#include<BOPTools_DataMapOfShapeSet.hxx>
#include<BOPTools_EdgeSet.hxx>
#include<BOPTools_ListOfConnexityBlock.hxx>
#include<BOPTools_ListOfCoupleOfShape.hxx>
#include<BOPTools_ListOfEdgeSet.hxx>
#include<BOPTools_ListOfShapeSet.hxx>
#include<BOPTools_MapOfSet.hxx>
#include<BOPTools_Set.hxx>
#include<BOPTools_SetMapHasher.hxx>
#include<BOPTools_ShapeSet.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<ProjLib_ProjectedCurve.hxx>
#include<TopoDS_Shape.hxx>
#include<BOPTools.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_Surface.hxx>
#include<gp_Pnt.hxx>
#include<Handle_BOPInt_Context.hxx>
#include<gp_Pnt2d.hxx>
#include<TopoDS_Vertex.hxx>
#include<IntTools_Curve.hxx>
#include<TopoDS_Solid.hxx>
#include<IntTools_Range.hxx>
%}

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

#include<Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt.hxx>
#include<Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d.hxx>
#include<Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt.hxx>
#include<Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d.hxx>
#include<IntPoly_IndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapOfPnt2d.hxx>
#include<IntPoly_PlaneSection.hxx>
#include<IntPoly_Pnt2dHasher.hxx>
#include<IntPoly_PntHasher.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_ShapeSection.hxx>

// Additional headers necessary for compilation.

#include<IntPolyh_ArrayOfCouples.hxx>
#include<IntPolyh_ArrayOfEdges.hxx>
#include<IntPolyh_ArrayOfPoints.hxx>
#include<IntPolyh_ArrayOfSectionLines.hxx>
#include<IntPolyh_ArrayOfStartPoints.hxx>
#include<IntPolyh_ArrayOfTangentZones.hxx>
#include<IntPolyh_ArrayOfTriangles.hxx>
#include<IntPolyh_Couple.hxx>
#include<IntPolyh_Edge.hxx>
#include<IntPolyh_Intersection.hxx>
#include<IntPolyh_MaillageAffinage.hxx>
#include<IntPolyh_PMaillageAffinage.hxx>
#include<IntPolyh_Point.hxx>
#include<IntPolyh_SectionLine.hxx>
#include<IntPolyh_SeqOfStartPoints.hxx>
#include<IntPolyh_SequenceNodeOfSeqOfStartPoints.hxx>
#include<IntPolyh_StartPoint.hxx>
#include<IntPolyh_Triangle.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Vec.hxx>
#include<TColgp_SequenceOfPnt.hxx>
%}

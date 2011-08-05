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

$Revision: 1241 $
$Date: 2011-08-05 14:23:54 +0200 (Ven, 05 aoû 2011) $
$Author: tpaviot $
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_IntPatch_ALine.hxx>
#include<Handle_IntPatch_GLine.hxx>
#include<Handle_IntPatch_Line.hxx>
#include<Handle_IntPatch_RLine.hxx>
#include<Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking.hxx>
#include<Handle_IntPatch_SequenceNodeOfSequenceOfLine.hxx>
#include<Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds.hxx>
#include<Handle_IntPatch_SequenceNodeOfSequenceOfPoint.hxx>
#include<Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds.hxx>
#include<Handle_IntPatch_TheIWLineOfTheIWalking.hxx>
#include<Handle_IntPatch_WLine.hxx>
#include<IntPatch_ALine.hxx>
#include<IntPatch_ALineToWLine.hxx>
#include<IntPatch_ArcFunction.hxx>
#include<IntPatch_CSFunction.hxx>
#include<IntPatch_CurvIntSurf.hxx>
#include<IntPatch_GLine.hxx>
#include<IntPatch_HCurve2dTool.hxx>
#include<IntPatch_HInterTool.hxx>
#include<IntPatch_IType.hxx>
#include<IntPatch_ImpImpIntersection.hxx>
#include<IntPatch_ImpPrmIntersection.hxx>
#include<IntPatch_Intersection.hxx>
#include<IntPatch_Line.hxx>
#include<IntPatch_LineConstructor.hxx>
#include<IntPatch_Point.hxx>
#include<IntPatch_PolyArc.hxx>
#include<IntPatch_PolyLine.hxx>
#include<IntPatch_Polygo.hxx>
#include<IntPatch_PolygoTool.hxx>
#include<IntPatch_Polyhedron.hxx>
#include<IntPatch_PolyhedronTool.hxx>
#include<IntPatch_PrmPrmIntersection.hxx>
#include<IntPatch_PrmPrmIntersection_T3Bits.hxx>
#include<IntPatch_RLine.hxx>
#include<IntPatch_RstInt.hxx>
#include<IntPatch_SearchPnt.hxx>
#include<IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking.hxx>
#include<IntPatch_SequenceNodeOfSequenceOfLine.hxx>
#include<IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds.hxx>
#include<IntPatch_SequenceNodeOfSequenceOfPoint.hxx>
#include<IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds.hxx>
#include<IntPatch_SequenceOfIWLineOfTheIWalking.hxx>
#include<IntPatch_SequenceOfLine.hxx>
#include<IntPatch_SequenceOfPathPointOfTheSOnBounds.hxx>
#include<IntPatch_SequenceOfPoint.hxx>
#include<IntPatch_SequenceOfSegmentOfTheSOnBounds.hxx>
#include<IntPatch_TheFunctionOfTheInt2SOfThePWalkingInter.hxx>
#include<IntPatch_TheIWLineOfTheIWalking.hxx>
#include<IntPatch_TheIWalking.hxx>
#include<IntPatch_TheInt2SOfThePWalkingInter.hxx>
#include<IntPatch_TheInterfPolyhedron.hxx>
#include<IntPatch_ThePWalkingInter.hxx>
#include<IntPatch_ThePathPointOfTheSOnBounds.hxx>
#include<IntPatch_TheSOnBounds.hxx>
#include<IntPatch_TheSearchInside.hxx>
#include<IntPatch_TheSegmentOfTheSOnBounds.hxx>
#include<IntPatch_TheSurfFunction.hxx>
#include<IntPatch_WLine.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<IntAna_Curve.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>
#include<IntSurf_Quadric.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<math_FunctionSetRoot.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<IntSurf_Transition.hxx>
#include<Bnd_Box2d.hxx>
#include<IntSurf_PathPoint.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Parab.hxx>
#include<gp_Hypr.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
%}

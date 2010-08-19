/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Contap_ContAna.hxx>
#include<Contap_Contour.hxx>
#include<Contap_HContTool.hxx>
#include<Contap_HCurve2dTool.hxx>
#include<Contap_HSurfaceTool.hxx>
#include<Contap_IType.hxx>
#include<Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Contap_SequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_TFunction.hxx>
#include<Contap_TheArcFunctionOfContour.hxx>
#include<Contap_TheHSequenceOfPointOfContour.hxx>
#include<Contap_TheIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_TheIWalkingOfContour.hxx>
#include<Contap_TheLineOfContour.hxx>
#include<Contap_ThePathPointOfTheSearchOfContour.hxx>
#include<Contap_ThePointOfContour.hxx>
#include<Contap_TheSearchInsideOfContour.hxx>
#include<Contap_TheSearchOfContour.hxx>
#include<Contap_TheSegmentOfTheSearchOfContour.hxx>
#include<Contap_TheSequenceOfLineOfContour.hxx>
#include<Contap_TheSequenceOfPointOfContour.hxx>
#include<Contap_TheSurfFunctionOfContour.hxx>
#include<Contap_TheSurfPropsOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Handle_Contap_TheHSequenceOfPointOfContour.hxx>
#include<Handle_Contap_TheIWLineOfTheIWalkingOfContour.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Vec.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<IntSurf_PathPoint.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<IntSurf_Transition.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
%}

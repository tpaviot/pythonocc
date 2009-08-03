/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

#include<IntCurve_IConicTool.hxx>
#include<IntCurve_IntConicConic.hxx>
#include<IntCurve_IntConicConic_1.hxx>
#include<IntCurve_IntConicConic_Tool.hxx>
#include<IntCurve_IntImpConicParConic.hxx>
#include<IntCurve_MyImpParToolOfIntImpConicParConic.hxx>
#include<IntCurve_PConic.hxx>
#include<IntCurve_PConicTool.hxx>
#include<IntCurve_ProjectOnPConicTool.hxx>

// Additional headers necessary for compilation.

#include<IntCurveSurface_HInter.hxx>
#include<IntCurveSurface_Intersection.hxx>
#include<IntCurveSurface_IntersectionPoint.hxx>
#include<IntCurveSurface_IntersectionSegment.hxx>
#include<IntCurveSurface_SequenceNodeOfSequenceOfPnt.hxx>
#include<IntCurveSurface_SequenceNodeOfSequenceOfSeg.hxx>
#include<IntCurveSurface_SequenceOfPnt.hxx>
#include<IntCurveSurface_SequenceOfSeg.hxx>
#include<IntCurveSurface_TheCSFunctionOfHInter.hxx>
#include<IntCurveSurface_TheExactHInter.hxx>
#include<IntCurveSurface_TheHCurveTool.hxx>
#include<IntCurveSurface_TheHSurfaceTool.hxx>
#include<IntCurveSurface_TheInterferenceOfHInter.hxx>
#include<IntCurveSurface_ThePolygonOfHInter.hxx>
#include<IntCurveSurface_ThePolygonToolOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronToolOfHInter.hxx>
#include<IntCurveSurface_TheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TransitionOnCurve.hxx>
#include<IntCurvesFace_Intersector.hxx>
#include<IntCurvesFace_ShapeIntersector.hxx>

// Needed headers necessary for compilation.

#include<IntRes2d_Domain.hxx>
#include<gp_Pnt2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Vec2d.hxx>
%}

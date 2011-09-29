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

#include<Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt.hxx>
#include<Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg.hxx>
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
#include<IntCurveSurface_TheInterferenceOfHInter.hxx>
#include<IntCurveSurface_ThePolygonOfHInter.hxx>
#include<IntCurveSurface_ThePolygonToolOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronToolOfHInter.hxx>
#include<IntCurveSurface_TheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TransitionOnCurve.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Bnd_BoundSortBox.hxx>
#include<math_FunctionSetRoot.hxx>
#include<IntSurf_Quadric.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<gp_Vec.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Intf_Array1OfLin.hxx>
%}

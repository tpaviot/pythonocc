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

#include<Handle_PColPGeom_HArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBoundedSurface.hxx>
#include<Handle_PColPGeom_HArray1OfCurve.hxx>
#include<Handle_PColPGeom_HArray1OfSurface.hxx>
#include<Handle_PColPGeom_HArray2OfBSplineSurface.hxx>
#include<Handle_PColPGeom_HArray2OfBezierSurface.hxx>
#include<Handle_PColPGeom_HArray2OfBoundedSurface.hxx>
#include<Handle_PColPGeom_HArray2OfSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfSurface.hxx>
#include<PColPGeom_HArray1OfBSplineCurve.hxx>
#include<PColPGeom_HArray1OfBezierCurve.hxx>
#include<PColPGeom_HArray1OfBoundedCurve.hxx>
#include<PColPGeom_HArray1OfBoundedSurface.hxx>
#include<PColPGeom_HArray1OfCurve.hxx>
#include<PColPGeom_HArray1OfSurface.hxx>
#include<PColPGeom_HArray2OfBSplineSurface.hxx>
#include<PColPGeom_HArray2OfBezierSurface.hxx>
#include<PColPGeom_HArray2OfBoundedSurface.hxx>
#include<PColPGeom_HArray2OfSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface.hxx>

// Additional headers necessary for compilation.

#include<PColPGeom2d_FieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom2d_FieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom2d_FieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_FieldOfHArray1OfCurve.hxx>
#include<PColPGeom2d_HArray1OfBSplineCurve.hxx>
#include<PColPGeom2d_HArray1OfBezierCurve.hxx>
#include<PColPGeom2d_HArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_HArray1OfCurve.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PGeom_BoundedSurface.hxx>
#include<Handle_PGeom_BSplineCurve.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<Handle_PGeom_BezierCurve.hxx>
#include<Handle_PGeom_BoundedCurve.hxx>
#include<Handle_PGeom_BSplineSurface.hxx>
#include<Handle_PGeom_BezierSurface.hxx>
%}

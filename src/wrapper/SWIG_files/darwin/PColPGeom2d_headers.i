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

#include<Handle_PColPGeom2d_HArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom2d_HArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom2d_HArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom2d_HArray1OfCurve.hxx>
#include<Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
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

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_PGeom2d_Curve.hxx>
#include<Handle_PGeom2d_BoundedCurve.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PGeom2d_BezierCurve.hxx>
#include<Handle_PGeom2d_BSplineCurve.hxx>
%}

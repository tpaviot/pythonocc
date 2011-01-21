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

#include<Handle_TColGeom2d_HArray1OfBSplineCurve.hxx>
#include<Handle_TColGeom2d_HArray1OfBezierCurve.hxx>
#include<Handle_TColGeom2d_HArray1OfBoundedCurve.hxx>
#include<Handle_TColGeom2d_HArray1OfCurve.hxx>
#include<Handle_TColGeom2d_HArray1OfGeometry.hxx>
#include<Handle_TColGeom2d_HSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom2d_HSequenceOfCurve.hxx>
#include<Handle_TColGeom2d_HSequenceOfGeometry.hxx>
#include<Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve.hxx>
#include<Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry.hxx>
#include<TColGeom2d_Array1OfBSplineCurve.hxx>
#include<TColGeom2d_Array1OfBezierCurve.hxx>
#include<TColGeom2d_Array1OfBoundedCurve.hxx>
#include<TColGeom2d_Array1OfCurve.hxx>
#include<TColGeom2d_Array1OfGeometry.hxx>
#include<TColGeom2d_HArray1OfBSplineCurve.hxx>
#include<TColGeom2d_HArray1OfBezierCurve.hxx>
#include<TColGeom2d_HArray1OfBoundedCurve.hxx>
#include<TColGeom2d_HArray1OfCurve.hxx>
#include<TColGeom2d_HArray1OfGeometry.hxx>
#include<TColGeom2d_HSequenceOfBoundedCurve.hxx>
#include<TColGeom2d_HSequenceOfCurve.hxx>
#include<TColGeom2d_HSequenceOfGeometry.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfCurve.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfGeometry.hxx>
#include<TColGeom2d_SequenceOfBoundedCurve.hxx>
#include<TColGeom2d_SequenceOfCurve.hxx>
#include<TColGeom2d_SequenceOfGeometry.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom2d_BoundedCurve.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
%}

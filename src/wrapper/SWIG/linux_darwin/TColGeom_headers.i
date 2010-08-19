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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_TColGeom_HArray1OfBSplineCurve.hxx>
#include<Handle_TColGeom_HArray1OfBezierCurve.hxx>
#include<Handle_TColGeom_HArray1OfBoundedCurve.hxx>
#include<Handle_TColGeom_HArray1OfBoundedSurface.hxx>
#include<Handle_TColGeom_HArray1OfCurve.hxx>
#include<Handle_TColGeom_HArray1OfSurface.hxx>
#include<Handle_TColGeom_HArray2OfBSplineSurface.hxx>
#include<Handle_TColGeom_HArray2OfBezierSurface.hxx>
#include<Handle_TColGeom_HArray2OfBoundedSurface.hxx>
#include<Handle_TColGeom_HArray2OfSurface.hxx>
#include<Handle_TColGeom_HSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom_HSequenceOfBoundedSurface.hxx>
#include<Handle_TColGeom_HSequenceOfCurve.hxx>
#include<Handle_TColGeom_HSequenceOfSurface.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfBoundedSurface.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfCurve.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfSurface.hxx>
#include<TColGeom_Array1OfBSplineCurve.hxx>
#include<TColGeom_Array1OfBezierCurve.hxx>
#include<TColGeom_Array1OfBoundedCurve.hxx>
#include<TColGeom_Array1OfBoundedSurface.hxx>
#include<TColGeom_Array1OfCurve.hxx>
#include<TColGeom_Array1OfSurface.hxx>
#include<TColGeom_Array2OfBSplineSurface.hxx>
#include<TColGeom_Array2OfBezierSurface.hxx>
#include<TColGeom_Array2OfBoundedSurface.hxx>
#include<TColGeom_Array2OfSurface.hxx>
#include<TColGeom_HArray1OfBSplineCurve.hxx>
#include<TColGeom_HArray1OfBezierCurve.hxx>
#include<TColGeom_HArray1OfBoundedCurve.hxx>
#include<TColGeom_HArray1OfBoundedSurface.hxx>
#include<TColGeom_HArray1OfCurve.hxx>
#include<TColGeom_HArray1OfSurface.hxx>
#include<TColGeom_HArray2OfBSplineSurface.hxx>
#include<TColGeom_HArray2OfBezierSurface.hxx>
#include<TColGeom_HArray2OfBoundedSurface.hxx>
#include<TColGeom_HArray2OfSurface.hxx>
#include<TColGeom_HSequenceOfBoundedCurve.hxx>
#include<TColGeom_HSequenceOfBoundedSurface.hxx>
#include<TColGeom_HSequenceOfCurve.hxx>
#include<TColGeom_HSequenceOfSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfSurface.hxx>
#include<TColGeom_SequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<TColGeom_SequenceOfSurface.hxx>

// Additional headers necessary for compilation.

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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_BezierCurve.hxx>
%}

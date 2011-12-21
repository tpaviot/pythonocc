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

#include<Handle_PPoly_HArray1OfTriangle.hxx>
#include<Handle_PPoly_Polygon2D.hxx>
#include<Handle_PPoly_Polygon3D.hxx>
#include<Handle_PPoly_PolygonOnTriangulation.hxx>
#include<Handle_PPoly_Triangulation.hxx>
#include<Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle.hxx>
#include<PPoly_FieldOfHArray1OfTriangle.hxx>
#include<PPoly_HArray1OfTriangle.hxx>
#include<PPoly_Polygon2D.hxx>
#include<PPoly_Polygon3D.hxx>
#include<PPoly_PolygonOnTriangulation.hxx>
#include<PPoly_Triangle.hxx>
#include<PPoly_Triangulation.hxx>
#include<PPoly_VArrayNodeOfFieldOfHArray1OfTriangle.hxx>
#include<PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PColgp_HArray1OfPnt.hxx>
#include<Handle_PColgp_HArray1OfPnt2d.hxx>
%}

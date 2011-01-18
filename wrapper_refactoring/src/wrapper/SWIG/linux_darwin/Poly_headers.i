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

#include<Handle_Poly_CoherentTriangulation.hxx>
#include<Handle_Poly_HArray1OfTriangle.hxx>
#include<Handle_Poly_Polygon2D.hxx>
#include<Handle_Poly_Polygon3D.hxx>
#include<Handle_Poly_PolygonOnTriangulation.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<Poly.hxx>
#include<Poly_Array1OfTriangle.hxx>
#include<Poly_CoherentLink.hxx>
#include<Poly_CoherentNode.hxx>
#include<Poly_CoherentTriPtr.hxx>
#include<Poly_CoherentTriangle.hxx>
#include<Poly_CoherentTriangulation.hxx>
#include<Poly_Connect.hxx>
#include<Poly_HArray1OfTriangle.hxx>
#include<Poly_Polygon2D.hxx>
#include<Poly_Polygon3D.hxx>
#include<Poly_PolygonOnTriangulation.hxx>
#include<Poly_Triangle.hxx>
#include<Poly_Triangulation.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_TShort_HArray1OfShortReal.hxx>
#include<gp_XYZ.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Poly.hxx>
%}

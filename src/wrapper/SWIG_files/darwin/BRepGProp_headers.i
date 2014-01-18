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

#include<BRepGProp.hxx>
#include<BRepGProp_Cinert.hxx>
#include<BRepGProp_Domain.hxx>
#include<BRepGProp_EdgeTool.hxx>
#include<BRepGProp_Face.hxx>
#include<BRepGProp_Sinert.hxx>
#include<BRepGProp_TFunctionOfVinertGK.hxx>
#include<BRepGProp_UFunctionOfVinertGK.hxx>
#include<BRepGProp_Vinert.hxx>
#include<BRepGProp_VinertGK.hxx>

// Additional headers necessary for compilation.

#include<GProp_PrincipalProps.hxx>

// Needed headers necessary for compilation.

#include<gp_Pnt.hxx>
#include<BRepGProp.hxx>
#include<TopoDS_Shape.hxx>
#include<GProp_GProps.hxx>
#include<gp_Pln.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<gp_Vec.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Pnt2d.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
%}

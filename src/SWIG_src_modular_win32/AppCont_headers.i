/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<AppCont_ContMatrices.hxx>
#include<AppCont_FitFunction.hxx>
#include<AppCont_FitFunction2d.hxx>
#include<AppCont_Function.hxx>
#include<AppCont_Function2d.hxx>
#include<AppCont_FunctionTool.hxx>
#include<AppCont_FunctionTool2d.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
%}

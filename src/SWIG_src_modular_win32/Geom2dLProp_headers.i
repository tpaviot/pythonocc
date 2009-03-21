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

#include<Geom2dLProp_CLProps2d.hxx>
#include<Geom2dLProp_CurAndInf2d.hxx>
#include<Geom2dLProp_Curve2dTool.hxx>
#include<Geom2dLProp_FCurExtOfNumericCurInf2d.hxx>
#include<Geom2dLProp_FCurNulOfNumericCurInf2d.hxx>
#include<Geom2dLProp_NumericCurInf2d.hxx>

// Additional headers necessary for compilation.

#include<Geom2dLProp_CLProps2d.hxx>
#include<Geom2dLProp_CurAndInf2d.hxx>
#include<Geom2dLProp_Curve2dTool.hxx>
#include<Geom2dLProp_FCurExtOfNumericCurInf2d.hxx>
#include<Geom2dLProp_FCurNulOfNumericCurInf2d.hxx>
#include<Geom2dLProp_NumericCurInf2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir2d.hxx>
#include<LProp_CurAndInf.hxx>
%}

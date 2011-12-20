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

#include<Geom2dLProp_CLProps2d.hxx>
#include<Geom2dLProp_CurAndInf2d.hxx>
#include<Geom2dLProp_Curve2dTool.hxx>
#include<Geom2dLProp_FCurExtOfNumericCurInf2d.hxx>
#include<Geom2dLProp_FCurNulOfNumericCurInf2d.hxx>
#include<Geom2dLProp_NumericCurInf2d.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Geom2d_Curve.hxx>
#include<LProp_CurAndInf.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir2d.hxx>
%}

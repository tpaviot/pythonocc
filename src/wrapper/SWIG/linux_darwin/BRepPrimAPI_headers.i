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

#include<BRepPrimAPI_MakeBox.hxx>
#include<BRepPrimAPI_MakeCone.hxx>
#include<BRepPrimAPI_MakeCylinder.hxx>
#include<BRepPrimAPI_MakeHalfSpace.hxx>
#include<BRepPrimAPI_MakeOneAxis.hxx>
#include<BRepPrimAPI_MakePrism.hxx>
#include<BRepPrimAPI_MakeRevol.hxx>
#include<BRepPrimAPI_MakeRevolution.hxx>
#include<BRepPrimAPI_MakeSphere.hxx>
#include<BRepPrimAPI_MakeSweep.hxx>
#include<BRepPrimAPI_MakeTorus.hxx>
#include<BRepPrimAPI_MakeWedge.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<gp_Ax2.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shell.hxx>
#include<gp_Ax1.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir.hxx>
%}

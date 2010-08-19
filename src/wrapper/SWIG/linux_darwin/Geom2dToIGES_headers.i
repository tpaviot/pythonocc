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

#include<Geom2dToIGES_Geom2dCurve.hxx>
#include<Geom2dToIGES_Geom2dEntity.hxx>
#include<Geom2dToIGES_Geom2dPoint.hxx>
#include<Geom2dToIGES_Geom2dVector.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_Geom2d_Point.hxx>
#include<Handle_Geom2d_CartesianPoint.hxx>
#include<Handle_IGESGeom_Direction.hxx>
#include<Handle_Geom2d_Vector.hxx>
#include<Handle_Geom2d_VectorWithMagnitude.hxx>
#include<Handle_Geom2d_Direction.hxx>
%}

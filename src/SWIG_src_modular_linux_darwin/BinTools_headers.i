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

#include<BinTools.hxx>
#include<BinTools_Curve2dSet.hxx>
#include<BinTools_CurveSet.hxx>
#include<BinTools_LocationSet.hxx>
#include<BinTools_ShapeSet.hxx>
#include<BinTools_SurfaceSet.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Geom2d_Curve.hxx>
#include<TopLoc_Location.hxx>
#include<BinTools.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_Curve.hxx>
%}

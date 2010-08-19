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

#include<BRepAlgoAPI_BooleanOperation.hxx>
#include<BRepAlgoAPI_Common.hxx>
#include<BRepAlgoAPI_Cut.hxx>
#include<BRepAlgoAPI_Fuse.hxx>
#include<BRepAlgoAPI_Section.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TopoDS_Shape.hxx>
#include<BOPTools_DSFiller.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom2d_Curve.hxx>
%}

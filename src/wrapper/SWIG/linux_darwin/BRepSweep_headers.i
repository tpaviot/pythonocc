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

#include<BRepSweep_Array2OfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Builder.hxx>
#include<BRepSweep_Iterator.hxx>
#include<BRepSweep_NumLinearRegularSweep.hxx>
#include<BRepSweep_Prism.hxx>
#include<BRepSweep_Revol.hxx>
#include<BRepSweep_Rotation.hxx>
#include<BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_SequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Tool.hxx>
#include<BRepSweep_Translation.hxx>
#include<BRepSweep_Trsf.hxx>
#include<Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Sweep_NumShape.hxx>
#include<TopLoc_Location.hxx>
#include<gp_Vec.hxx>
#include<gp_Ax1.hxx>
#include<BRep_Builder.hxx>
#include<gp_Dir.hxx>
%}

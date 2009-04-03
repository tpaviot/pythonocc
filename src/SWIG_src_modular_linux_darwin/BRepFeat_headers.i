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

#include<BRepFeat.hxx>
#include<BRepFeat_Builder.hxx>
#include<BRepFeat_Form.hxx>
#include<BRepFeat_Gluer.hxx>
#include<BRepFeat_LocalOperation.hxx>
#include<BRepFeat_MakeCylindricalHole.hxx>
#include<BRepFeat_MakeDPrism.hxx>
#include<BRepFeat_MakeLinearForm.hxx>
#include<BRepFeat_MakePipe.hxx>
#include<BRepFeat_MakePrism.hxx>
#include<BRepFeat_MakeRevol.hxx>
#include<BRepFeat_MakeRevolutionForm.hxx>
#include<BRepFeat_PerfSelection.hxx>
#include<BRepFeat_RibSlot.hxx>
#include<BRepFeat_SplitShape.hxx>
#include<BRepFeat_Status.hxx>
#include<BRepFeat_StatusError.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TopoDS_Shape.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Dir.hxx>
#include<TopTools_ListOfShape.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom_Plane.hxx>
#include<gp_Vec.hxx>
#include<gp_Ax1.hxx>
#include<BRepFeat.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TopoDS_Solid.hxx>
%}

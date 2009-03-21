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

#include<Handle_PTopoDS_CompSolid.hxx>
#include<Handle_PTopoDS_Compound.hxx>
#include<Handle_PTopoDS_Edge.hxx>
#include<Handle_PTopoDS_Face.hxx>
#include<Handle_PTopoDS_HArray1OfHShape.hxx>
#include<Handle_PTopoDS_HArray1OfShape1.hxx>
#include<Handle_PTopoDS_HShape.hxx>
#include<Handle_PTopoDS_Shell.hxx>
#include<Handle_PTopoDS_Solid.hxx>
#include<Handle_PTopoDS_TCompSolid.hxx>
#include<Handle_PTopoDS_TCompSolid1.hxx>
#include<Handle_PTopoDS_TCompound.hxx>
#include<Handle_PTopoDS_TCompound1.hxx>
#include<Handle_PTopoDS_TEdge.hxx>
#include<Handle_PTopoDS_TEdge1.hxx>
#include<Handle_PTopoDS_TFace.hxx>
#include<Handle_PTopoDS_TFace1.hxx>
#include<Handle_PTopoDS_TShape.hxx>
#include<Handle_PTopoDS_TShape1.hxx>
#include<Handle_PTopoDS_TShell.hxx>
#include<Handle_PTopoDS_TShell1.hxx>
#include<Handle_PTopoDS_TSolid.hxx>
#include<Handle_PTopoDS_TSolid1.hxx>
#include<Handle_PTopoDS_TVertex.hxx>
#include<Handle_PTopoDS_TVertex1.hxx>
#include<Handle_PTopoDS_TWire.hxx>
#include<Handle_PTopoDS_TWire1.hxx>
#include<Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape.hxx>
#include<Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1.hxx>
#include<Handle_PTopoDS_Vertex.hxx>
#include<Handle_PTopoDS_Wire.hxx>
#include<PTopoDS_CompSolid.hxx>
#include<PTopoDS_Compound.hxx>
#include<PTopoDS_Edge.hxx>
#include<PTopoDS_Face.hxx>
#include<PTopoDS_FieldOfHArray1OfHShape.hxx>
#include<PTopoDS_FieldOfHArray1OfShape1.hxx>
#include<PTopoDS_HArray1OfHShape.hxx>
#include<PTopoDS_HArray1OfShape1.hxx>
#include<PTopoDS_HShape.hxx>
#include<PTopoDS_Shape1.hxx>
#include<PTopoDS_Shell.hxx>
#include<PTopoDS_Solid.hxx>
#include<PTopoDS_TCompSolid.hxx>
#include<PTopoDS_TCompSolid1.hxx>
#include<PTopoDS_TCompound.hxx>
#include<PTopoDS_TCompound1.hxx>
#include<PTopoDS_TEdge.hxx>
#include<PTopoDS_TEdge1.hxx>
#include<PTopoDS_TFace.hxx>
#include<PTopoDS_TFace1.hxx>
#include<PTopoDS_TShape.hxx>
#include<PTopoDS_TShape1.hxx>
#include<PTopoDS_TShell.hxx>
#include<PTopoDS_TShell1.hxx>
#include<PTopoDS_TSolid.hxx>
#include<PTopoDS_TSolid1.hxx>
#include<PTopoDS_TVertex.hxx>
#include<PTopoDS_TVertex1.hxx>
#include<PTopoDS_TWire.hxx>
#include<PTopoDS_TWire1.hxx>
#include<PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape.hxx>
#include<PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1.hxx>
#include<PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape.hxx>
#include<PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1.hxx>
#include<PTopoDS_Vertex.hxx>
#include<PTopoDS_Wire.hxx>

// Additional headers necessary for compilation.

#include<PTopoDS_CompSolid.hxx>
#include<PTopoDS_Compound.hxx>
#include<PTopoDS_Edge.hxx>
#include<PTopoDS_Face.hxx>
#include<PTopoDS_FieldOfHArray1OfHShape.hxx>
#include<PTopoDS_FieldOfHArray1OfShape1.hxx>
#include<PTopoDS_HArray1OfHShape.hxx>
#include<PTopoDS_HArray1OfShape1.hxx>
#include<PTopoDS_HShape.hxx>
#include<PTopoDS_Shape1.hxx>
#include<PTopoDS_Shell.hxx>
#include<PTopoDS_Solid.hxx>
#include<PTopoDS_TCompSolid.hxx>
#include<PTopoDS_TCompSolid1.hxx>
#include<PTopoDS_TCompound.hxx>
#include<PTopoDS_TCompound1.hxx>
#include<PTopoDS_TEdge.hxx>
#include<PTopoDS_TEdge1.hxx>
#include<PTopoDS_TFace.hxx>
#include<PTopoDS_TFace1.hxx>
#include<PTopoDS_TShape.hxx>
#include<PTopoDS_TShape1.hxx>
#include<PTopoDS_TShell.hxx>
#include<PTopoDS_TShell1.hxx>
#include<PTopoDS_TSolid.hxx>
#include<PTopoDS_TSolid1.hxx>
#include<PTopoDS_TVertex.hxx>
#include<PTopoDS_TVertex1.hxx>
#include<PTopoDS_TWire.hxx>
#include<PTopoDS_TWire1.hxx>
#include<PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape.hxx>
#include<PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1.hxx>
#include<PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape.hxx>
#include<PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1.hxx>
#include<PTopoDS_Vertex.hxx>
#include<PTopoDS_Wire.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<PTopLoc_Location.hxx>
%}

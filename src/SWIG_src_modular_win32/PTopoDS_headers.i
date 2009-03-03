/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
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

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

#include<StdLSchema_DBC_VArrayOfCharacter.hxx>
#include<StdLSchema_DBC_VArrayOfExtCharacter.hxx>
#include<StdLSchema_gp_Ax1.hxx>
#include<StdLSchema_gp_Ax2.hxx>
#include<StdLSchema_gp_Ax2d.hxx>
#include<StdLSchema_gp_Ax3.hxx>
#include<StdLSchema_gp_Dir.hxx>
#include<StdLSchema_gp_Dir2d.hxx>
#include<StdLSchema_gp_Mat.hxx>
#include<StdLSchema_gp_Mat2d.hxx>
#include<StdLSchema_gp_Pnt.hxx>
#include<StdLSchema_gp_Pnt2d.hxx>
#include<StdLSchema_gp_Trsf.hxx>
#include<StdLSchema_gp_Trsf2d.hxx>
#include<StdLSchema_gp_Vec.hxx>
#include<StdLSchema_gp_Vec2d.hxx>
#include<StdLSchema_gp_XY.hxx>
#include<StdLSchema_gp_XYZ.hxx>
#include<StdLSchema_PCDM_Document.hxx>
#include<StdLSchema_PCollection_HAsciiString.hxx>
#include<StdLSchema_PCollection_HExtendedString.hxx>
#include<StdLSchema_PColStd_FieldOfHArray1OfExtendedString.hxx>
#include<StdLSchema_PColStd_FieldOfHArray1OfInteger.hxx>
#include<StdLSchema_PColStd_FieldOfHArray1OfReal.hxx>
#include<StdLSchema_PColStd_FieldOfHArray2OfInteger.hxx>
#include<StdLSchema_PColStd_HArray1OfExtendedString.hxx>
#include<StdLSchema_PColStd_HArray1OfInteger.hxx>
#include<StdLSchema_PColStd_HArray1OfReal.hxx>
#include<StdLSchema_PColStd_HArray2OfInteger.hxx>
#include<StdLSchema_PDataStd_AsciiString.hxx>
#include<StdLSchema_PDataStd_Axis.hxx>
#include<StdLSchema_PDataStd_BooleanArray.hxx>
#include<StdLSchema_PDataStd_BooleanList.hxx>
#include<StdLSchema_PDataStd_ByteArray.hxx>
#include<StdLSchema_PDataStd_ByteArray_1.hxx>
#include<StdLSchema_PDataStd_Comment.hxx>
#include<StdLSchema_PDataStd_Constraint.hxx>
#include<StdLSchema_PDataStd_Directory.hxx>
#include<StdLSchema_PDataStd_Expression.hxx>
#include<StdLSchema_PDataStd_ExtStringArray.hxx>
#include<StdLSchema_PDataStd_ExtStringArray_1.hxx>
#include<StdLSchema_PDataStd_ExtStringList.hxx>
#include<StdLSchema_PDataStd_FieldOfHArray1OfByte.hxx>
#include<StdLSchema_PDataStd_FieldOfHArray1OfHArray1OfInteger.hxx>
#include<StdLSchema_PDataStd_FieldOfHArray1OfHArray1OfReal.hxx>
#include<StdLSchema_PDataStd_FieldOfHArray1OfHAsciiString.hxx>
#include<StdLSchema_PDataStd_Geometry.hxx>
#include<StdLSchema_PDataStd_HArray1OfByte.hxx>
#include<StdLSchema_PDataStd_HArray1OfHArray1OfInteger.hxx>
#include<StdLSchema_PDataStd_HArray1OfHArray1OfReal.hxx>
#include<StdLSchema_PDataStd_HArray1OfHAsciiString.hxx>
#include<StdLSchema_PDataStd_Integer.hxx>
#include<StdLSchema_PDataStd_IntegerArray.hxx>
#include<StdLSchema_PDataStd_IntegerArray_1.hxx>
#include<StdLSchema_PDataStd_IntegerList.hxx>
#include<StdLSchema_PDataStd_IntPackedMap.hxx>
#include<StdLSchema_PDataStd_IntPackedMap_1.hxx>
#include<StdLSchema_PDataStd_Name.hxx>
#include<StdLSchema_PDataStd_NamedData.hxx>
#include<StdLSchema_PDataStd_NoteBook.hxx>
#include<StdLSchema_PDataStd_PatternStd.hxx>
#include<StdLSchema_PDataStd_Placement.hxx>
#include<StdLSchema_PDataStd_Plane.hxx>
#include<StdLSchema_PDataStd_Point.hxx>
#include<StdLSchema_PDataStd_Position.hxx>
#include<StdLSchema_PDataStd_Real.hxx>
#include<StdLSchema_PDataStd_RealArray.hxx>
#include<StdLSchema_PDataStd_RealArray_1.hxx>
#include<StdLSchema_PDataStd_RealList.hxx>
#include<StdLSchema_PDataStd_ReferenceArray.hxx>
#include<StdLSchema_PDataStd_ReferenceList.hxx>
#include<StdLSchema_PDataStd_Relation.hxx>
#include<StdLSchema_PDataStd_Shape.hxx>
#include<StdLSchema_PDataStd_Tick.hxx>
#include<StdLSchema_PDataStd_TreeNode.hxx>
#include<StdLSchema_PDataStd_UAttribute.hxx>
#include<StdLSchema_PDataStd_Variable.hxx>
#include<StdLSchema_PDF_Attribute.hxx>
#include<StdLSchema_PDF_Data.hxx>
#include<StdLSchema_PDF_FieldOfHAttributeArray1.hxx>
#include<StdLSchema_PDF_HAttributeArray1.hxx>
#include<StdLSchema_PDF_Reference.hxx>
#include<StdLSchema_PDF_TagSource.hxx>
#include<StdLSchema_PDocStd_Document.hxx>
#include<StdLSchema_PDocStd_XLink.hxx>
#include<StdLSchema_PNaming_FieldOfHArray1OfNamedShape.hxx>
#include<StdLSchema_PNaming_HArray1OfNamedShape.hxx>
#include<StdLSchema_PNaming_Name.hxx>
#include<StdLSchema_PNaming_NamedShape.hxx>
#include<StdLSchema_PNaming_Naming.hxx>
#include<StdLSchema_PTopLoc_Datum3D.hxx>
#include<StdLSchema_PTopLoc_ItemLocation.hxx>
#include<StdLSchema_PTopLoc_Location.hxx>
#include<StdLSchema_PTopoDS_FieldOfHArray1OfShape1.hxx>
#include<StdLSchema_PTopoDS_HArray1OfShape1.hxx>
#include<StdLSchema_PTopoDS_Shape1.hxx>
#include<StdLSchema_PTopoDS_TShape1.hxx>
#include<StdLSchema_Standard_GUID.hxx>
#include<StdLSchema_Standard_Persistent.hxx>
#include<StdLSchema_Standard_Storable.hxx>
#include<StdLSchema.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Storage_CallBack.hxx>
#include<PColStd_FieldOfHArray1OfReal.hxx>
#include<Handle_Storage_Schema.hxx>
#include<Storage_BaseDriver.hxx>
#include<Handle_PDataStd_Position.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_PTopLoc_ItemLocation.hxx>
#include<gp_Trsf.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PTopoDS_TShape1.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PDataStd_BooleanArray.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_PNaming_HArray1OfNamedShape.hxx>
#include<Handle_PDataStd_RealArray.hxx>
#include<Handle_PDataStd_Constraint.hxx>
#include<PTopLoc_Location.hxx>
#include<Handle_PDataStd_IntegerArray.hxx>
#include<PTopoDS_FieldOfHArray1OfShape1.hxx>
#include<PDataStd_FieldOfHArray1OfHAsciiString.hxx>
#include<gp_Vec.hxx>
#include<DBC_VArrayOfCharacter.hxx>
#include<Handle_PDataStd_Relation.hxx>
#include<gp_XYZ.hxx>
#include<PNaming_FieldOfHArray1OfNamedShape.hxx>
#include<Handle_PDF_TagSource.hxx>
#include<gp_Mat.hxx>
#include<Handle_PDF_Reference.hxx>
#include<Handle_PCDM_Document.hxx>
#include<PDataStd_FieldOfHArray1OfHArray1OfInteger.hxx>
#include<gp_XY.hxx>
#include<PDataStd_FieldOfHArray1OfByte.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_PDataStd_Point.hxx>
#include<Handle_PDataStd_Variable.hxx>
#include<Handle_PDataStd_Axis.hxx>
#include<Handle_PDataStd_NamedData.hxx>
#include<Handle_PDataStd_RealArray_1.hxx>
#include<PColStd_FieldOfHArray2OfInteger.hxx>
#include<Handle_PDataStd_ExtStringArray_1.hxx>
#include<Handle_PDataStd_AsciiString.hxx>
#include<Handle_PDataStd_ExtStringList.hxx>
#include<Handle_PDataStd_Shape.hxx>
#include<Standard_Storable.hxx>
#include<Handle_PDataStd_Comment.hxx>
#include<Handle_PDataStd_ByteArray_1.hxx>
#include<Handle_PNaming_Name.hxx>
#include<PColStd_FieldOfHArray1OfInteger.hxx>
#include<Handle_PDataStd_HArray1OfHArray1OfReal.hxx>
#include<Handle_PColStd_HArray2OfInteger.hxx>
#include<Handle_PDocStd_Document.hxx>
#include<Handle_PDataStd_PatternStd.hxx>
#include<Handle_PDataStd_UAttribute.hxx>
#include<Handle_PDocStd_XLink.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_PDF_Attribute.hxx>
#include<Handle_PDataStd_ReferenceList.hxx>
#include<Handle_PNaming_Naming.hxx>
#include<Handle_PDataStd_HArray1OfHAsciiString.hxx>
#include<Handle_PColStd_HArray1OfExtendedString.hxx>
#include<Handle_PDataStd_Directory.hxx>
#include<Handle_PDataStd_RealList.hxx>
#include<Handle_PDataStd_IntegerList.hxx>
#include<PTopoDS_Shape1.hxx>
#include<Handle_PDataStd_NoteBook.hxx>
#include<gp_Trsf2d.hxx>
#include<Handle_PDataStd_Expression.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PDF_Data.hxx>
#include<Handle_PDataStd_ByteArray.hxx>
#include<Handle_PDataStd_Plane.hxx>
#include<Handle_PDataStd_Name.hxx>
#include<PDataStd_FieldOfHArray1OfHArray1OfReal.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Dir.hxx>
#include<Handle_PDataStd_ExtStringArray.hxx>
#include<DBC_VArrayOfExtCharacter.hxx>
#include<Handle_PDataStd_Tick.hxx>
#include<Handle_PDataStd_TreeNode.hxx>
#include<PDF_FieldOfHAttributeArray1.hxx>
#include<Handle_PTopoDS_HArray1OfShape1.hxx>
#include<Handle_PDataStd_IntPackedMap.hxx>
#include<Handle_PDataStd_Geometry.hxx>
#include<Handle_PNaming_NamedShape.hxx>
#include<Handle_PTopLoc_Datum3D.hxx>
#include<Handle_PCollection_HExtendedString.hxx>
#include<Handle_PDataStd_IntPackedMap_1.hxx>
#include<Handle_PDataStd_Integer.hxx>
#include<Handle_PDataStd_ReferenceArray.hxx>
#include<Standard_GUID.hxx>
#include<Handle_PDataStd_HArray1OfByte.hxx>
#include<Handle_PDataStd_IntegerArray_1.hxx>
#include<gp_Dir2d.hxx>
#include<Handle_PDF_HAttributeArray1.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
#include<PColStd_FieldOfHArray1OfExtendedString.hxx>
#include<Handle_PDataStd_BooleanList.hxx>
#include<Handle_PDataStd_HArray1OfHArray1OfInteger.hxx>
#include<Handle_PDataStd_Placement.hxx>
#include<gp_Mat2d.hxx>
#include<Handle_PDataStd_Real.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax3.hxx>
%}

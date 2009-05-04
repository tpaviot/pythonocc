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

#include<Handle_TDataStd_AsciiString.hxx>
#include<Handle_TDataStd_Axis.hxx>
#include<Handle_TDataStd_BooleanArray.hxx>
#include<Handle_TDataStd_BooleanList.hxx>
#include<Handle_TDataStd_ByteArray.hxx>
#include<Handle_TDataStd_Comment.hxx>
#include<Handle_TDataStd_Constraint.hxx>
#include<Handle_TDataStd_Current.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringByte.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringReal.hxx>
#include<Handle_TDataStd_DataMapNodeOfDataMapOfStringString.hxx>
#include<Handle_TDataStd_DeltaOnModificationOfByteArray.hxx>
#include<Handle_TDataStd_DeltaOnModificationOfExtStringArray.hxx>
#include<Handle_TDataStd_DeltaOnModificationOfIntArray.hxx>
#include<Handle_TDataStd_DeltaOnModificationOfIntPackedMap.hxx>
#include<Handle_TDataStd_DeltaOnModificationOfRealArray.hxx>
#include<Handle_TDataStd_Directory.hxx>
#include<Handle_TDataStd_Expression.hxx>
#include<Handle_TDataStd_ExtStringArray.hxx>
#include<Handle_TDataStd_ExtStringList.hxx>
#include<Handle_TDataStd_Geometry.hxx>
#include<Handle_TDataStd_HArray1OfByte.hxx>
#include<Handle_TDataStd_HArray1OfTrsf.hxx>
#include<Handle_TDataStd_HDataMapOfStringByte.hxx>
#include<Handle_TDataStd_HDataMapOfStringHArray1OfInteger.hxx>
#include<Handle_TDataStd_HDataMapOfStringHArray1OfReal.hxx>
#include<Handle_TDataStd_HDataMapOfStringInteger.hxx>
#include<Handle_TDataStd_HDataMapOfStringReal.hxx>
#include<Handle_TDataStd_HDataMapOfStringString.hxx>
#include<Handle_TDataStd_HLabelArray1.hxx>
#include<Handle_TDataStd_IntPackedMap.hxx>
#include<Handle_TDataStd_Integer.hxx>
#include<Handle_TDataStd_IntegerArray.hxx>
#include<Handle_TDataStd_IntegerList.hxx>
#include<Handle_TDataStd_ListNodeOfListOfByte.hxx>
#include<Handle_TDataStd_ListNodeOfListOfExtendedString.hxx>
#include<Handle_TDataStd_Name.hxx>
#include<Handle_TDataStd_NamedData.hxx>
#include<Handle_TDataStd_NoteBook.hxx>
#include<Handle_TDataStd_Pattern.hxx>
#include<Handle_TDataStd_PatternStd.hxx>
#include<Handle_TDataStd_Placement.hxx>
#include<Handle_TDataStd_Plane.hxx>
#include<Handle_TDataStd_Point.hxx>
#include<Handle_TDataStd_Position.hxx>
#include<Handle_TDataStd_Real.hxx>
#include<Handle_TDataStd_RealArray.hxx>
#include<Handle_TDataStd_RealList.hxx>
#include<Handle_TDataStd_ReferenceArray.hxx>
#include<Handle_TDataStd_ReferenceList.hxx>
#include<Handle_TDataStd_Relation.hxx>
#include<Handle_TDataStd_Shape.hxx>
#include<Handle_TDataStd_Tick.hxx>
#include<Handle_TDataStd_TreeNode.hxx>
#include<Handle_TDataStd_UAttribute.hxx>
#include<Handle_TDataStd_Variable.hxx>
#include<TDataStd.hxx>
#include<TDataStd_Array1OfByte.hxx>
#include<TDataStd_Array1OfTrsf.hxx>
#include<TDataStd_AsciiString.hxx>
#include<TDataStd_Axis.hxx>
#include<TDataStd_BooleanArray.hxx>
#include<TDataStd_BooleanList.hxx>
#include<TDataStd_ByteArray.hxx>
#include<TDataStd_ChildNodeIterator.hxx>
#include<TDataStd_Comment.hxx>
#include<TDataStd_Constraint.hxx>
#include<TDataStd_ConstraintEnum.hxx>
#include<TDataStd_Current.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapOfStringByte.hxx>
#include<TDataStd_DataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapOfStringInteger.hxx>
#include<TDataStd_DataMapOfStringReal.hxx>
#include<TDataStd_DataMapOfStringString.hxx>
#include<TDataStd_DeltaOnModificationOfByteArray.hxx>
#include<TDataStd_DeltaOnModificationOfExtStringArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntPackedMap.hxx>
#include<TDataStd_DeltaOnModificationOfRealArray.hxx>
#include<TDataStd_Directory.hxx>
#include<TDataStd_Expression.hxx>
#include<TDataStd_ExtStringArray.hxx>
#include<TDataStd_ExtStringList.hxx>
#include<TDataStd_Geometry.hxx>
#include<TDataStd_GeometryEnum.hxx>
#include<TDataStd_HArray1OfByte.hxx>
#include<TDataStd_HArray1OfTrsf.hxx>
#include<TDataStd_HDataMapOfStringByte.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_HDataMapOfStringInteger.hxx>
#include<TDataStd_HDataMapOfStringReal.hxx>
#include<TDataStd_HDataMapOfStringString.hxx>
#include<TDataStd_HLabelArray1.hxx>
#include<TDataStd_IntPackedMap.hxx>
#include<TDataStd_Integer.hxx>
#include<TDataStd_IntegerArray.hxx>
#include<TDataStd_IntegerList.hxx>
#include<TDataStd_LabelArray1.hxx>
#include<TDataStd_ListIteratorOfListOfByte.hxx>
#include<TDataStd_ListIteratorOfListOfExtendedString.hxx>
#include<TDataStd_ListNodeOfListOfByte.hxx>
#include<TDataStd_ListNodeOfListOfExtendedString.hxx>
#include<TDataStd_ListOfByte.hxx>
#include<TDataStd_ListOfExtendedString.hxx>
#include<TDataStd_Name.hxx>
#include<TDataStd_NamedData.hxx>
#include<TDataStd_NoteBook.hxx>
#include<TDataStd_Pattern.hxx>
#include<TDataStd_PatternStd.hxx>
#include<TDataStd_Placement.hxx>
#include<TDataStd_Plane.hxx>
#include<TDataStd_Point.hxx>
#include<TDataStd_Position.hxx>
#include<TDataStd_PtrTreeNode.hxx>
#include<TDataStd_Real.hxx>
#include<TDataStd_RealArray.hxx>
#include<TDataStd_RealEnum.hxx>
#include<TDataStd_RealList.hxx>
#include<TDataStd_ReferenceArray.hxx>
#include<TDataStd_ReferenceList.hxx>
#include<TDataStd_Relation.hxx>
#include<TDataStd_Shape.hxx>
#include<TDataStd_Tick.hxx>
#include<TDataStd_TreeNode.hxx>
#include<TDataStd_UAttribute.hxx>
#include<TDataStd_Variable.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TDF_Label.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<gp_Trsf.hxx>
#include<TDF_IDList.hxx>
#include<Handle_TNaming_NamedShape.hxx>
#include<TDF_LabelList.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TDF_DeltaOnModification.hxx>
#include<gp_Pnt.hxx>
#include<Handle_TColStd_HPackedMapOfInteger.hxx>
#include<gp_Pln.hxx>
#include<Standard_GUID.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<Handle_TColStd_HArray1OfExtendedString.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Ax1.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Cylinder.hxx>
%}

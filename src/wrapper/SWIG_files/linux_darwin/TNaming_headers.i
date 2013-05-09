/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape.hxx>
#include<Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet.hxx>
#include<Handle_TNaming_DeltaOnModification.hxx>
#include<Handle_TNaming_DeltaOnRemoval.hxx>
#include<Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape.hxx>
#include<Handle_TNaming_ListNodeOfListOfMapOfShape.hxx>
#include<Handle_TNaming_ListNodeOfListOfNamedShape.hxx>
#include<Handle_TNaming_NamedShape.hxx>
#include<Handle_TNaming_Naming.hxx>
#include<Handle_TNaming_StdMapNodeOfMapOfNamedShape.hxx>
#include<Handle_TNaming_TranslateTool.hxx>
#include<Handle_TNaming_UsedShapes.hxx>
#include<TNaming.hxx>
#include<TNaming_Builder.hxx>
#include<TNaming_CopyShape.hxx>
#include<TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape.hxx>
#include<TNaming_DataMapIteratorOfDataMapOfShapeShapesSet.hxx>
#include<TNaming_DataMapNodeOfDataMapOfShapePtrRefShape.hxx>
#include<TNaming_DataMapNodeOfDataMapOfShapeShapesSet.hxx>
#include<TNaming_DataMapOfShapePtrRefShape.hxx>
#include<TNaming_DataMapOfShapeShapesSet.hxx>
#include<TNaming_DeltaOnModification.hxx>
#include<TNaming_DeltaOnRemoval.hxx>
#include<TNaming_Evolution.hxx>
#include<TNaming_Identifier.hxx>
#include<TNaming_Iterator.hxx>
#include<TNaming_IteratorOnShapesSet.hxx>
#include<TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TNaming_ListIteratorOfListOfMapOfShape.hxx>
#include<TNaming_ListIteratorOfListOfNamedShape.hxx>
#include<TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TNaming_ListNodeOfListOfMapOfShape.hxx>
#include<TNaming_ListNodeOfListOfNamedShape.hxx>
#include<TNaming_ListOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TNaming_ListOfMapOfShape.hxx>
#include<TNaming_ListOfNamedShape.hxx>
#include<TNaming_Localizer.hxx>
#include<TNaming_MapIteratorOfMapOfNamedShape.hxx>
#include<TNaming_MapOfNamedShape.hxx>
#include<TNaming_NCollections.hxx>
#include<TNaming_Name.hxx>
#include<TNaming_NameType.hxx>
#include<TNaming_NamedShape.hxx>
#include<TNaming_NamedShapeHasher.hxx>
#include<TNaming_Naming.hxx>
#include<TNaming_NamingTool.hxx>
#include<TNaming_NewShapeIterator.hxx>
#include<TNaming_OldShapeIterator.hxx>
#include<TNaming_PtrAttribute.hxx>
#include<TNaming_PtrDataMapOfShapePtrRefShape.hxx>
#include<TNaming_PtrNode.hxx>
#include<TNaming_PtrRefShape.hxx>
#include<TNaming_RefShape.hxx>
#include<TNaming_SameShapeIterator.hxx>
#include<TNaming_Scope.hxx>
#include<TNaming_Selector.hxx>
#include<TNaming_ShapesSet.hxx>
#include<TNaming_StdMapNodeOfMapOfNamedShape.hxx>
#include<TNaming_Tool.hxx>
#include<TNaming_TranslateTool.hxx>
#include<TNaming_Translator.hxx>
#include<TNaming_UsedShapes.hxx>

// Additional headers necessary for compilation.

#include<Standard_GUID.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TDF_LabelMap.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelList.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<Handle_TDF_DeltaOnAddition.hxx>
#include<Handle_TDF_DeltaOnRemoval.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopLoc_Location.hxx>
#include<TDF_AttributeMap.hxx>
#include<Handle_TDF_DeltaOnModification.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TDF_IDFilter.hxx>
#include<TDF_AttributeIndexedMap.hxx>
#include<TNaming.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<gp_Trsf.hxx>
#include<Handle_TopTools_HArray1OfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Shell.hxx>
#include<TDF_IDList.hxx>
%}

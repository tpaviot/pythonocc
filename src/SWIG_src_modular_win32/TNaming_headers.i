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
#include<TNaming_Name.hxx>
#include<TNaming_NamedShape.hxx>
#include<TNaming_NamedShapeHasher.hxx>
#include<TNaming_NameType.hxx>
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
#include<TNaming.hxx>
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

// Additional headers necessary for compilation.

#include<Standard_GUID.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TDF_LabelMap.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelList.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopLoc_Location.hxx>
#include<TDF_AttributeMap.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_DeltaOnModification.hxx>
#include<Handle_TDF_DeltaOnRemoval.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TDF_IDFilter.hxx>
#include<TDF_AttributeIndexedMap.hxx>
#include<TNaming.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<gp_Trsf.hxx>
#include<TDF_IDList.hxx>
%}

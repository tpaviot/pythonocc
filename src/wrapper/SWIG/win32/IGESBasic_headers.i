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

#include<Handle_IGESBasic_AssocGroupType.hxx>
#include<Handle_IGESBasic_ExternalRefFile.hxx>
#include<Handle_IGESBasic_ExternalRefFileIndex.hxx>
#include<Handle_IGESBasic_ExternalRefFileName.hxx>
#include<Handle_IGESBasic_ExternalRefLibName.hxx>
#include<Handle_IGESBasic_ExternalRefName.hxx>
#include<Handle_IGESBasic_ExternalReferenceFile.hxx>
#include<Handle_IGESBasic_GeneralModule.hxx>
#include<Handle_IGESBasic_Group.hxx>
#include<Handle_IGESBasic_GroupWithoutBackP.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfIGESEntity.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfInteger.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfReal.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfXY.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfXYZ.hxx>
#include<Handle_IGESBasic_HArray1OfLineFontEntity.hxx>
#include<Handle_IGESBasic_HArray2OfHArray1OfReal.hxx>
#include<Handle_IGESBasic_Hierarchy.hxx>
#include<Handle_IGESBasic_Name.hxx>
#include<Handle_IGESBasic_OrderedGroup.hxx>
#include<Handle_IGESBasic_OrderedGroupWithoutBackP.hxx>
#include<Handle_IGESBasic_Protocol.hxx>
#include<Handle_IGESBasic_ReadWriteModule.hxx>
#include<Handle_IGESBasic_SingleParent.hxx>
#include<Handle_IGESBasic_SingularSubfigure.hxx>
#include<Handle_IGESBasic_SpecificModule.hxx>
#include<Handle_IGESBasic_SubfigureDef.hxx>
#include<IGESBasic.hxx>
#include<IGESBasic_Array1OfLineFontEntity.hxx>
#include<IGESBasic_Array2OfHArray1OfReal.hxx>
#include<IGESBasic_AssocGroupType.hxx>
#include<IGESBasic_ExternalRefFile.hxx>
#include<IGESBasic_ExternalRefFileIndex.hxx>
#include<IGESBasic_ExternalRefFileName.hxx>
#include<IGESBasic_ExternalRefLibName.hxx>
#include<IGESBasic_ExternalRefName.hxx>
#include<IGESBasic_ExternalReferenceFile.hxx>
#include<IGESBasic_GeneralModule.hxx>
#include<IGESBasic_Group.hxx>
#include<IGESBasic_GroupWithoutBackP.hxx>
#include<IGESBasic_HArray1OfHArray1OfIGESEntity.hxx>
#include<IGESBasic_HArray1OfHArray1OfInteger.hxx>
#include<IGESBasic_HArray1OfHArray1OfReal.hxx>
#include<IGESBasic_HArray1OfHArray1OfXY.hxx>
#include<IGESBasic_HArray1OfHArray1OfXYZ.hxx>
#include<IGESBasic_HArray1OfLineFontEntity.hxx>
#include<IGESBasic_HArray2OfHArray1OfReal.hxx>
#include<IGESBasic_Hierarchy.hxx>
#include<IGESBasic_Name.hxx>
#include<IGESBasic_OrderedGroup.hxx>
#include<IGESBasic_OrderedGroupWithoutBackP.hxx>
#include<IGESBasic_Protocol.hxx>
#include<IGESBasic_ReadWriteModule.hxx>
#include<IGESBasic_SingleParent.hxx>
#include<IGESBasic_SingularSubfigure.hxx>
#include<IGESBasic_SpecificModule.hxx>
#include<IGESBasic_SubfigureDef.hxx>
#include<IGESBasic_ToolAssocGroupType.hxx>
#include<IGESBasic_ToolExternalRefFile.hxx>
#include<IGESBasic_ToolExternalRefFileIndex.hxx>
#include<IGESBasic_ToolExternalRefFileName.hxx>
#include<IGESBasic_ToolExternalRefLibName.hxx>
#include<IGESBasic_ToolExternalRefName.hxx>
#include<IGESBasic_ToolExternalReferenceFile.hxx>
#include<IGESBasic_ToolGroup.hxx>
#include<IGESBasic_ToolGroupWithoutBackP.hxx>
#include<IGESBasic_ToolHierarchy.hxx>
#include<IGESBasic_ToolName.hxx>
#include<IGESBasic_ToolOrderedGroup.hxx>
#include<IGESBasic_ToolOrderedGroupWithoutBackP.hxx>
#include<IGESBasic_ToolSingleParent.hxx>
#include<IGESBasic_ToolSingularSubfigure.hxx>
#include<IGESBasic_ToolSubfigureDef.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<Interface_GraphContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
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

#include<Handle_Standard_Transient.hxx>
#include<Handle_IGESData_IGESReaderData.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_IGESWriter.hxx>
#include<Interface_EntityIterator.hxx>
#include<IGESData_DirChecker.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_Interface_Check.hxx>
#include<Interface_CopyTool.hxx>
#include<IGESData_IGESDumper.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<gp_XYZ.hxx>
#include<Handle_IGESData_LineFontEntity.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<IGESBasic.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>
%}

/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_IGESAppli_DrilledHole.hxx>
#include<Handle_IGESAppli_ElementResults.hxx>
#include<Handle_IGESAppli_FiniteElement.hxx>
#include<Handle_IGESAppli_Flow.hxx>
#include<Handle_IGESAppli_FlowLineSpec.hxx>
#include<Handle_IGESAppli_GeneralModule.hxx>
#include<Handle_IGESAppli_HArray1OfFiniteElement.hxx>
#include<Handle_IGESAppli_HArray1OfFlow.hxx>
#include<Handle_IGESAppli_HArray1OfNode.hxx>
#include<Handle_IGESAppli_LevelFunction.hxx>
#include<Handle_IGESAppli_LevelToPWBLayerMap.hxx>
#include<Handle_IGESAppli_LineWidening.hxx>
#include<Handle_IGESAppli_NodalConstraint.hxx>
#include<Handle_IGESAppli_NodalDisplAndRot.hxx>
#include<Handle_IGESAppli_NodalResults.hxx>
#include<Handle_IGESAppli_Node.hxx>
#include<Handle_IGESAppli_PWBArtworkStackup.hxx>
#include<Handle_IGESAppli_PWBDrilledHole.hxx>
#include<Handle_IGESAppli_PartNumber.hxx>
#include<Handle_IGESAppli_PinNumber.hxx>
#include<Handle_IGESAppli_PipingFlow.hxx>
#include<Handle_IGESAppli_Protocol.hxx>
#include<Handle_IGESAppli_ReadWriteModule.hxx>
#include<Handle_IGESAppli_ReferenceDesignator.hxx>
#include<Handle_IGESAppli_RegionRestriction.hxx>
#include<Handle_IGESAppli_SpecificModule.hxx>
#include<IGESAppli.hxx>
#include<IGESAppli_Array1OfFiniteElement.hxx>
#include<IGESAppli_Array1OfFlow.hxx>
#include<IGESAppli_Array1OfNode.hxx>
#include<IGESAppli_DrilledHole.hxx>
#include<IGESAppli_ElementResults.hxx>
#include<IGESAppli_FiniteElement.hxx>
#include<IGESAppli_Flow.hxx>
#include<IGESAppli_FlowLineSpec.hxx>
#include<IGESAppli_GeneralModule.hxx>
#include<IGESAppli_HArray1OfFiniteElement.hxx>
#include<IGESAppli_HArray1OfFlow.hxx>
#include<IGESAppli_HArray1OfNode.hxx>
#include<IGESAppli_LevelFunction.hxx>
#include<IGESAppli_LevelToPWBLayerMap.hxx>
#include<IGESAppli_LineWidening.hxx>
#include<IGESAppli_NodalConstraint.hxx>
#include<IGESAppli_NodalDisplAndRot.hxx>
#include<IGESAppli_NodalResults.hxx>
#include<IGESAppli_Node.hxx>
#include<IGESAppli_PWBArtworkStackup.hxx>
#include<IGESAppli_PWBDrilledHole.hxx>
#include<IGESAppli_PartNumber.hxx>
#include<IGESAppli_PinNumber.hxx>
#include<IGESAppli_PipingFlow.hxx>
#include<IGESAppli_Protocol.hxx>
#include<IGESAppli_ReadWriteModule.hxx>
#include<IGESAppli_ReferenceDesignator.hxx>
#include<IGESAppli_RegionRestriction.hxx>
#include<IGESAppli_SpecificModule.hxx>
#include<IGESAppli_ToolDrilledHole.hxx>
#include<IGESAppli_ToolElementResults.hxx>
#include<IGESAppli_ToolFiniteElement.hxx>
#include<IGESAppli_ToolFlow.hxx>
#include<IGESAppli_ToolFlowLineSpec.hxx>
#include<IGESAppli_ToolLevelFunction.hxx>
#include<IGESAppli_ToolLevelToPWBLayerMap.hxx>
#include<IGESAppli_ToolLineWidening.hxx>
#include<IGESAppli_ToolNodalConstraint.hxx>
#include<IGESAppli_ToolNodalDisplAndRot.hxx>
#include<IGESAppli_ToolNodalResults.hxx>
#include<IGESAppli_ToolNode.hxx>
#include<IGESAppli_ToolPWBArtworkStackup.hxx>
#include<IGESAppli_ToolPWBDrilledHole.hxx>
#include<IGESAppli_ToolPartNumber.hxx>
#include<IGESAppli_ToolPinNumber.hxx>
#include<IGESAppli_ToolPipingFlow.hxx>
#include<IGESAppli_ToolReferenceDesignator.hxx>
#include<IGESAppli_ToolRegionRestriction.hxx>

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
#include<Handle_IGESData_IGESEntity.hxx>
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
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_IGESDraw_HArray1OfConnectPoint.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_IGESGraph_HArray1OfTextDisplayTemplate.hxx>
#include<Handle_IGESDraw_ConnectPoint.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_IGESGraph_TextDisplayTemplate.hxx>
#include<Handle_IGESDimen_GeneralNote.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<IGESAppli.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfInteger.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfReal.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_IGESDimen_HArray1OfGeneralNote.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfXYZ.hxx>
#include<gp_XYZ.hxx>
#include<Handle_IGESDefs_HArray1OfTabularData.hxx>
#include<Handle_IGESDefs_TabularData.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
#include<gp_Pnt.hxx>
#include<Handle_IGESData_TransfEntity.hxx>
%}

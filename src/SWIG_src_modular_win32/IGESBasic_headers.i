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

#include<IGESData.hxx>
#include<IGESData_Array1OfDirPart.hxx>
#include<IGESData_Array1OfIGESEntity.hxx>
#include<IGESData_BasicEditor.hxx>
#include<IGESData_ColorEntity.hxx>
#include<IGESData_DefList.hxx>
#include<IGESData_DefSwitch.hxx>
#include<IGESData_DefType.hxx>
#include<IGESData_DefaultGeneral.hxx>
#include<IGESData_DefaultSpecific.hxx>
#include<IGESData_DirChecker.hxx>
#include<IGESData_DirPart.hxx>
#include<IGESData_Dump.hxx>
#include<IGESData_FileProtocol.hxx>
#include<IGESData_FileRecognizer.hxx>
#include<IGESData_FreeFormatEntity.hxx>
#include<IGESData_GeneralModule.hxx>
#include<IGESData_GlobalNodeOfSpecificLib.hxx>
#include<IGESData_GlobalNodeOfWriterLib.hxx>
#include<IGESData_GlobalSection.hxx>
#include<IGESData_HArray1OfIGESEntity.hxx>
#include<IGESData_IGESDumper.hxx>
#include<IGESData_IGESEntity.hxx>
#include<IGESData_IGESModel.hxx>
#include<IGESData_IGESReaderData.hxx>
#include<IGESData_IGESReaderTool.hxx>
#include<IGESData_IGESType.hxx>
#include<IGESData_IGESWriter.hxx>
#include<IGESData_LabelDisplayEntity.hxx>
#include<IGESData_LevelListEntity.hxx>
#include<IGESData_LineFontEntity.hxx>
#include<IGESData_NameEntity.hxx>
#include<IGESData_NodeOfSpecificLib.hxx>
#include<IGESData_NodeOfWriterLib.hxx>
#include<IGESData_ParamCursor.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_Protocol.hxx>
#include<IGESData_ReadStage.hxx>
#include<IGESData_ReadWriteModule.hxx>
#include<IGESData_SingleParentEntity.hxx>
#include<IGESData_SpecificLib.hxx>
#include<IGESData_SpecificModule.hxx>
#include<IGESData_Status.hxx>
#include<IGESData_ToolLocation.hxx>
#include<IGESData_TransfEntity.hxx>
#include<IGESData_UndefinedEntity.hxx>
#include<IGESData_ViewKindEntity.hxx>
#include<IGESData_WriterLib.hxx>
#include<InterfaceGraphic_Aspect.hxx>
#include<InterfaceGraphic_Cextern.hxx>
#include<InterfaceGraphic_Graphic3d.hxx>
#include<InterfaceGraphic_Labels.hxx>
#include<InterfaceGraphic_Portability.hxx>
#include<InterfaceGraphic_PrimitiveArray.hxx>
#include<InterfaceGraphic_Visual3d.hxx>
#include<InterfaceGraphic_WNT.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_Category.hxx>
#include<Interface_Check.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_GTool.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_Graph.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_IntList.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_MSG.hxx>
#include<Interface_Macros.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_STAT.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_SignType.hxx>
#include<Interface_Static.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_Statics.hxx>
#include<Interface_Translates.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_ValueInterpret.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
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

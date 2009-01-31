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

#include<Interface_GTool.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_Check.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_Static.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_Translates.hxx>
#include<Interface_Version.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_SignType.hxx>
#include<Interface_IntList.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_Statics.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_Graph.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_Category.hxx>
#include<Interface_Macros.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_ValueInterpret.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_MSG.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_EntityIterator.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>

// Additional headers necessary for compilation.

#include<Interface_GTool.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_Check.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_Static.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_Translates.hxx>
#include<Interface_Version.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_SignType.hxx>
#include<Interface_IntList.hxx>
#include<InterfaceGraphic_X11.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_Statics.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_FloatWriter.hxx>
#include<InterfaceGraphic_Aspect.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_EntityList.hxx>
#include<InterfaceGraphic_Graphic3d.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_Graph.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<InterfaceGraphic_Labels.hxx>
#include<Interface_Category.hxx>
#include<Interface_Macros.hxx>
#include<InterfaceGraphic_PrimitiveArray.hxx>
#include<InterfaceGraphic_Cextern.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_ValueInterpret.hxx>
#include<InterfaceGraphic_Portability.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<InterfaceGraphic_XWD.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_MSG.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_EntityIterator.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<Standard_SStream.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<Message_Msg.hxx>
#include<Handle_TColStd_HSequenceOfTransient.hxx>
%}

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

#include<Handle_XSControl_ConnectedShapes.hxx>
#include<Handle_XSControl_Controller.hxx>
#include<Handle_XSControl_SelectForTransfer.hxx>
#include<Handle_XSControl_SignTransferStatus.hxx>
#include<Handle_XSControl_TransferReader.hxx>
#include<Handle_XSControl_TransferWriter.hxx>
#include<Handle_XSControl_Vars.hxx>
#include<Handle_XSControl_WorkSession.hxx>
#include<XSControl.hxx>
#include<XSControl_ConnectedShapes.hxx>
#include<XSControl_Controller.hxx>
#include<XSControl_FuncShape.hxx>
#include<XSControl_Functions.hxx>
#include<XSControl_Reader.hxx>
#include<XSControl_SelectForTransfer.hxx>
#include<XSControl_SignTransferStatus.hxx>
#include<XSControl_TransferReader.hxx>
#include<XSControl_TransferWriter.hxx>
#include<XSControl_Utils.hxx>
#include<XSControl_Vars.hxx>
#include<XSControl_WorkSession.hxx>
#include<XSControl_Writer.hxx>

// Additional headers necessary for compilation.

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
#include<XSControl.hxx>
#include<Handle_IFSelect_SessionPilot.hxx>
#include<Handle_Transfer_TransientProcess.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Interface_Graph.hxx>
#include<Interface_EntityIterator.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TColStd_HSequenceOfTransient.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_IFSelect_Signature.hxx>
#include<Handle_IFSelect_WorkLibrary.hxx>
#include<Handle_Transfer_ActorOfTransientProcess.hxx>
#include<Handle_Transfer_ActorOfFinderProcess.hxx>
#include<Handle_Transfer_FinderProcess.hxx>
#include<Interface_CheckIterator.hxx>
#include<Handle_Dico_DictionaryOfTransient.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TColStd_HSequenceOfHExtendedString.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Transfer_ResultFromModel.hxx>
%}

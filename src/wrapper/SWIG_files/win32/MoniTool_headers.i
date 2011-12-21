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

#include<Handle_MoniTool_CaseData.hxx>
#include<Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<Handle_MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<Handle_MoniTool_Element.hxx>
#include<Handle_MoniTool_HSequenceOfElement.hxx>
#include<Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<Handle_MoniTool_IntVal.hxx>
#include<Handle_MoniTool_Option.hxx>
#include<Handle_MoniTool_Profile.hxx>
#include<Handle_MoniTool_RealVal.hxx>
#include<Handle_MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<Handle_MoniTool_SignShape.hxx>
#include<Handle_MoniTool_SignText.hxx>
#include<Handle_MoniTool_Timer.hxx>
#include<Handle_MoniTool_TransientElem.hxx>
#include<Handle_MoniTool_TypedValue.hxx>
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

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_Standard_Type.hxx>
#include<gp_XYZ.hxx>
#include<gp_XY.hxx>
#include<Handle_Dico_DictionaryOfTransient.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
%}

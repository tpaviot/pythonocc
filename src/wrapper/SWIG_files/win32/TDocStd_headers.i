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

#include<Handle_TDocStd_Application.hxx>
#include<Handle_TDocStd_ApplicationDelta.hxx>
#include<Handle_TDocStd_CompoundDelta.hxx>
#include<Handle_TDocStd_DataMapNodeOfLabelIDMapDataMap.hxx>
#include<Handle_TDocStd_Document.hxx>
#include<Handle_TDocStd_Modified.hxx>
#include<Handle_TDocStd_MultiTransactionManager.hxx>
#include<Handle_TDocStd_Owner.hxx>
#include<Handle_TDocStd_SequenceNodeOfSequenceOfApplicationDelta.hxx>
#include<Handle_TDocStd_SequenceNodeOfSequenceOfDocument.hxx>
#include<Handle_TDocStd_XLink.hxx>
#include<Handle_TDocStd_XLinkRoot.hxx>
#include<TDocStd.hxx>
#include<TDocStd_Application.hxx>
#include<TDocStd_ApplicationDelta.hxx>
#include<TDocStd_CompoundDelta.hxx>
#include<TDocStd_Context.hxx>
#include<TDocStd_DataMapIteratorOfLabelIDMapDataMap.hxx>
#include<TDocStd_DataMapNodeOfLabelIDMapDataMap.hxx>
#include<TDocStd_Document.hxx>
#include<TDocStd_LabelIDMapDataMap.hxx>
#include<TDocStd_Modified.hxx>
#include<TDocStd_MultiTransactionManager.hxx>
#include<TDocStd_Owner.hxx>
#include<TDocStd_PathParser.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfDocument.hxx>
#include<TDocStd_SequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceOfDocument.hxx>
#include<TDocStd_XLink.hxx>
#include<TDocStd_XLinkIterator.hxx>
#include<TDocStd_XLinkPtr.hxx>
#include<TDocStd_XLinkRoot.hxx>
#include<TDocStd_XLinkTool.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TDF_Data.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<TDF_Label.hxx>
#include<TDF_IDMap.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_CDM_Document.hxx>
#include<TDocStd.hxx>
#include<TDF_IDList.hxx>
#include<Handle_TDF_Reference.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<Handle_Resource_Manager.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
%}

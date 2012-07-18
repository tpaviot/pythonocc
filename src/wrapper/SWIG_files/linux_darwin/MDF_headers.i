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

#include<Handle_MDF_ARDriver.hxx>
#include<Handle_MDF_ARDriverHSequence.hxx>
#include<Handle_MDF_ARDriverTable.hxx>
#include<Handle_MDF_ASDriver.hxx>
#include<Handle_MDF_ASDriverHSequence.hxx>
#include<Handle_MDF_ASDriverTable.hxx>
#include<Handle_MDF_DataMapNodeOfTypeARDriverMap.hxx>
#include<Handle_MDF_DataMapNodeOfTypeASDriverMap.hxx>
#include<Handle_MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable.hxx>
#include<Handle_MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable.hxx>
#include<Handle_MDF_ListNodeOfDriverListOfARDriverTable.hxx>
#include<Handle_MDF_ListNodeOfDriverListOfASDriverTable.hxx>
#include<Handle_MDF_RRelocationTable.hxx>
#include<Handle_MDF_ReferenceRetrievalDriver.hxx>
#include<Handle_MDF_ReferenceStorageDriver.hxx>
#include<Handle_MDF_SRelocationTable.hxx>
#include<Handle_MDF_SequenceNodeOfARDriverSequence.hxx>
#include<Handle_MDF_SequenceNodeOfASDriverSequence.hxx>
#include<Handle_MDF_TagSourceRetrievalDriver.hxx>
#include<Handle_MDF_TagSourceStorageDriver.hxx>
#include<MDF.hxx>
#include<MDF_ARDriver.hxx>
#include<MDF_ARDriverHSequence.hxx>
#include<MDF_ARDriverSequence.hxx>
#include<MDF_ARDriverTable.hxx>
#include<MDF_ASDriver.hxx>
#include<MDF_ASDriverHSequence.hxx>
#include<MDF_ASDriverSequence.hxx>
#include<MDF_ASDriverTable.hxx>
#include<MDF_DataMapIteratorOfTypeARDriverMap.hxx>
#include<MDF_DataMapIteratorOfTypeASDriverMap.hxx>
#include<MDF_DataMapIteratorOfTypeDriverListMapOfARDriverTable.hxx>
#include<MDF_DataMapIteratorOfTypeDriverListMapOfASDriverTable.hxx>
#include<MDF_DataMapNodeOfTypeARDriverMap.hxx>
#include<MDF_DataMapNodeOfTypeASDriverMap.hxx>
#include<MDF_DataMapNodeOfTypeDriverListMapOfARDriverTable.hxx>
#include<MDF_DataMapNodeOfTypeDriverListMapOfASDriverTable.hxx>
#include<MDF_DriverListOfARDriverTable.hxx>
#include<MDF_DriverListOfASDriverTable.hxx>
#include<MDF_ListIteratorOfDriverListOfARDriverTable.hxx>
#include<MDF_ListIteratorOfDriverListOfASDriverTable.hxx>
#include<MDF_ListNodeOfDriverListOfARDriverTable.hxx>
#include<MDF_ListNodeOfDriverListOfASDriverTable.hxx>
#include<MDF_RRelocationTable.hxx>
#include<MDF_ReferenceRetrievalDriver.hxx>
#include<MDF_ReferenceStorageDriver.hxx>
#include<MDF_SRelocationTable.hxx>
#include<MDF_SequenceNodeOfARDriverSequence.hxx>
#include<MDF_SequenceNodeOfASDriverSequence.hxx>
#include<MDF_TagSourceRetrievalDriver.hxx>
#include<MDF_TagSourceStorageDriver.hxx>
#include<MDF_Tool.hxx>
#include<MDF_TypeARDriverMap.hxx>
#include<MDF_TypeASDriverMap.hxx>
#include<MDF_TypeDriverListMapOfARDriverTable.hxx>
#include<MDF_TypeDriverListMapOfASDriverTable.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_PDF_Attribute.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<MDF.hxx>
#include<Handle_TDF_Data.hxx>
#include<Handle_PDF_Data.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TDF_Label.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PDF_HAttributeArray1.hxx>
%}

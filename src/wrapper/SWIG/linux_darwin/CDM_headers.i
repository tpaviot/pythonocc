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

#include<CDM_Application.hxx>
#include<CDM_COutMessageDriver.hxx>
#include<CDM_CanCloseStatus.hxx>
#include<CDM_DataMapIteratorOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapIteratorOfNamesDirectory.hxx>
#include<CDM_DataMapIteratorOfPresentationDirectory.hxx>
#include<CDM_DataMapNodeOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapNodeOfNamesDirectory.hxx>
#include<CDM_DataMapNodeOfPresentationDirectory.hxx>
#include<CDM_Document.hxx>
#include<CDM_DocumentHasher.hxx>
#include<CDM_DocumentPointer.hxx>
#include<CDM_ListIteratorOfListOfDocument.hxx>
#include<CDM_ListIteratorOfListOfReferences.hxx>
#include<CDM_ListNodeOfListOfDocument.hxx>
#include<CDM_ListNodeOfListOfReferences.hxx>
#include<CDM_ListOfDocument.hxx>
#include<CDM_ListOfReferences.hxx>
#include<CDM_MapIteratorOfMapOfDocument.hxx>
#include<CDM_MapOfDocument.hxx>
#include<CDM_MessageDriver.hxx>
#include<CDM_MetaData.hxx>
#include<CDM_MetaDataLookUpTable.hxx>
#include<CDM_NamesDirectory.hxx>
#include<CDM_NullMessageDriver.hxx>
#include<CDM_PresentationDirectory.hxx>
#include<CDM_Reference.hxx>
#include<CDM_ReferenceIterator.hxx>
#include<CDM_StackIteratorOfStackOfDocument.hxx>
#include<CDM_StackNodeOfStackOfDocument.hxx>
#include<CDM_StackOfDocument.hxx>
#include<CDM_StdMapNodeOfMapOfDocument.hxx>
#include<Handle_CDM_Application.hxx>
#include<Handle_CDM_COutMessageDriver.hxx>
#include<Handle_CDM_DataMapNodeOfMetaDataLookUpTable.hxx>
#include<Handle_CDM_DataMapNodeOfNamesDirectory.hxx>
#include<Handle_CDM_DataMapNodeOfPresentationDirectory.hxx>
#include<Handle_CDM_Document.hxx>
#include<Handle_CDM_ListNodeOfListOfDocument.hxx>
#include<Handle_CDM_ListNodeOfListOfReferences.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_CDM_MetaData.hxx>
#include<Handle_CDM_NullMessageDriver.hxx>
#include<Handle_CDM_Reference.hxx>
#include<Handle_CDM_StackNodeOfStackOfDocument.hxx>
#include<Handle_CDM_StdMapNodeOfMapOfDocument.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_Resource_Manager.hxx>
%}

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
#include<MDF_ReferenceRetrievalDriver.hxx>
#include<MDF_ReferenceStorageDriver.hxx>
#include<MDF_RRelocationTable.hxx>
#include<MDF_SequenceNodeOfARDriverSequence.hxx>
#include<MDF_SequenceNodeOfASDriverSequence.hxx>
#include<MDF_SRelocationTable.hxx>
#include<MDF_TagSourceRetrievalDriver.hxx>
#include<MDF_TagSourceStorageDriver.hxx>
#include<MDF_Tool.hxx>
#include<MDF_TypeARDriverMap.hxx>
#include<MDF_TypeASDriverMap.hxx>
#include<MDF_TypeDriverListMapOfARDriverTable.hxx>
#include<MDF_TypeDriverListMapOfASDriverTable.hxx>
#include<MDF.hxx>
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
#include<Handle_MDF_ReferenceRetrievalDriver.hxx>
#include<Handle_MDF_ReferenceStorageDriver.hxx>
#include<Handle_MDF_RRelocationTable.hxx>
#include<Handle_MDF_SequenceNodeOfARDriverSequence.hxx>
#include<Handle_MDF_SequenceNodeOfASDriverSequence.hxx>
#include<Handle_MDF_SRelocationTable.hxx>
#include<Handle_MDF_TagSourceRetrievalDriver.hxx>
#include<Handle_MDF_TagSourceStorageDriver.hxx>

// Additional headers necessary for compilation.

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
#include<MDF_ReferenceRetrievalDriver.hxx>
#include<MDF_ReferenceStorageDriver.hxx>
#include<MDF_RRelocationTable.hxx>
#include<MDF_SequenceNodeOfARDriverSequence.hxx>
#include<MDF_SequenceNodeOfASDriverSequence.hxx>
#include<MDF_SRelocationTable.hxx>
#include<MDF_TagSourceRetrievalDriver.hxx>
#include<MDF_TagSourceStorageDriver.hxx>
#include<MDF_Tool.hxx>
#include<MDF_TypeARDriverMap.hxx>
#include<MDF_TypeASDriverMap.hxx>
#include<MDF_TypeDriverListMapOfARDriverTable.hxx>
#include<MDF_TypeDriverListMapOfASDriverTable.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_PDF_Attribute.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_TDF_Data.hxx>
#include<Handle_PDF_Data.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<TDF_Label.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PDF_HAttributeArray1.hxx>
%}

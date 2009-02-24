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
#include<TDocStd.hxx>
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

// Additional headers necessary for compilation.

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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TDF_Data.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TDF_Label.hxx>
#include<TDF_IDMap.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_CDM_Document.hxx>
#include<Handle_TDF_Reference.hxx>
#include<Handle_TDF_AttributeDelta.hxx>
#include<TDF_IDList.hxx>
#include<Handle_Resource_Manager.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
%}

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
#include <PCDM_Document.hxx>
#include <PCDM_DOMHeaderParser.hxx>
#include <PCDM_Reader.hxx>
#include <PCDM_SequenceOfDocument.hxx>
#include <PCDM_Reference.hxx>
#include <PCDM_SequenceNodeOfSequenceOfReference.hxx>
#include <PCDM_ReaderStatus.hxx>
#include <PCDM_BaseDriverPointer.hxx>
#include <PCDM_RetrievalDriver.hxx>
#include <PCDM_SequenceOfReference.hxx>
#include <PCDM_StorageDriver.hxx>
#include <PCDM_TypeOfFileDriver.hxx>
#include <PCDM_ReadWriter_1.hxx>
#include <PCDM_ReferenceIterator.hxx>
#include <PCDM_Writer.hxx>
#include <PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include <PCDM_ReadWriter.hxx>
#include <PCDM_DriverError.hxx>
#include <Handle_PCDM_RetrievalDriver.hxx>
#include <Handle_PCDM_Document.hxx>
#include <Handle_PCDM_Writer.hxx>
#include <Handle_PCDM_ReadWriter_1.hxx>
#include <Handle_PCDM_ReadWriter.hxx>
#include <Handle_PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include <Handle_PCDM_StorageDriver.hxx>
#include <Handle_PCDM_Reader.hxx>
#include <Handle_PCDM_DriverError.hxx>
#include <Handle_PCDM_ReferenceIterator.hxx>
#include <Handle_PCDM_SequenceNodeOfSequenceOfReference.hxx>
%};

%import PCDM.i

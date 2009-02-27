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

#include<PColStd_HArray2OfReal.hxx>
#include<PColStd_HSequenceOfInteger.hxx>
#include<PColStd_FieldOfHArray1OfPersistent.hxx>
#include<PColStd_HOfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_FieldOfHArray2OfReal.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHAsciiString.hxx>
#include<PColStd_FieldOfHArray2OfPersistent.hxx>
#include<PColStd_HSingleListOfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfInteger.hxx>
#include<PColStd_HSequenceOfPersistent.hxx>
#include<PColStd_HSequenceOfReal.hxx>
#include<PColStd_HDoubleListOfReal.hxx>
#include<PColStd_FieldOfHArray2OfInteger.hxx>
#include<PColStd_HSequenceOfHAsciiString.hxx>
#include<PColStd_HDoubleListOfPersistent.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHExtendedString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHExtendedString.hxx>
#include<PColStd_HArray1OfReal.hxx>
#include<PColStd_FieldOfHArray1OfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_HSingleListOfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfReal.hxx>
#include<PColStd_HOfReal.hxx>
#include<PColStd_HSequenceOfHExtendedString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfPersistent.hxx>
#include<PColStd_HashExtendedString.hxx>
#include<PColStd_HOfAsciiString.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_HOfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_HArray2OfPersistent.hxx>
#include<PColStd_FieldOfHArray1OfReal.hxx>
#include<PColStd_HashAsciiString.hxx>
#include<PColStd_HSingleListOfReal.hxx>
#include<PColStd_FieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_SeqNodeOfHSequenceOfInteger.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfInteger.hxx>
#include<PColStd_HArray1OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_SeqNodeOfHSequenceOfReal.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHAsciiString.hxx>
#include<PColStd_HArray2OfInteger.hxx>
#include<PColStd_HArray1OfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfPersistent.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_HDoubleListOfInteger.hxx>
#include<PColStd_HArray1OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfInteger.hxx>
#include<Handle_PColStd_HArray2OfReal.hxx>
#include<Handle_PColStd_HSequenceOfPersistent.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger.hxx>
#include<Handle_PColStd_HSequenceOfReal.hxx>
#include<Handle_PColStd_HDoubleListOfInteger.hxx>
#include<Handle_PColStd_HDoubleListOfReal.hxx>
#include<Handle_PColStd_HSequenceOfHAsciiString.hxx>
#include<Handle_PColStd_HSequenceOfHExtendedString.hxx>
#include<Handle_PColStd_HSequenceOfInteger.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent.hxx>
#include<Handle_PColStd_HArray2OfInteger.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger.hxx>
#include<Handle_PColStd_HArray1OfPersistent.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal.hxx>
#include<Handle_PColStd_HSingleListOfReal.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString.hxx>
#include<Handle_PColStd_HSingleListOfInteger.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PColStd_HArray2OfPersistent.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfReal.hxx>
#include<Handle_PColStd_HArray1OfExtendedString.hxx>
#include<Handle_PColStd_HDoubleListOfPersistent.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfInteger.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfPersistent.hxx>
#include<Handle_PColStd_HSingleListOfPersistent.hxx>

// Additional headers necessary for compilation.

#include<PColStd_HArray2OfReal.hxx>
#include<PColStd_HSequenceOfInteger.hxx>
#include<PColStd_FieldOfHArray1OfPersistent.hxx>
#include<PColStd_HOfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_FieldOfHArray2OfReal.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHAsciiString.hxx>
#include<PColStd_FieldOfHArray2OfPersistent.hxx>
#include<PColStd_HSingleListOfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfInteger.hxx>
#include<PColStd_HSequenceOfPersistent.hxx>
#include<PColStd_HSequenceOfReal.hxx>
#include<PColStd_HDoubleListOfReal.hxx>
#include<PColStd_FieldOfHArray2OfInteger.hxx>
#include<PColStd_HSequenceOfHAsciiString.hxx>
#include<PColStd_HDoubleListOfPersistent.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHExtendedString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHExtendedString.hxx>
#include<PColStd_HArray1OfReal.hxx>
#include<PColStd_FieldOfHArray1OfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_HSingleListOfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfReal.hxx>
#include<PColStd_HOfReal.hxx>
#include<PColStd_HSequenceOfHExtendedString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfPersistent.hxx>
#include<PColStd_HashExtendedString.hxx>
#include<PColStd_HOfAsciiString.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_HOfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_HArray2OfPersistent.hxx>
#include<PColStd_FieldOfHArray1OfReal.hxx>
#include<PColStd_HashAsciiString.hxx>
#include<PColStd_HSingleListOfReal.hxx>
#include<PColStd_FieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_SeqNodeOfHSequenceOfInteger.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfInteger.hxx>
#include<PColStd_HArray1OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_SeqNodeOfHSequenceOfReal.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHAsciiString.hxx>
#include<PColStd_HArray2OfInteger.hxx>
#include<PColStd_HArray1OfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfPersistent.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_HDoubleListOfInteger.hxx>
#include<PColStd_HArray1OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfInteger.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_PCollection_HExtendedString.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
%}

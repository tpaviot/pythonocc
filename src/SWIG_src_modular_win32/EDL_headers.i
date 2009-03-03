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

#include<EDL.hxx>
#include<EDL_API.hxx>
#include<EDL_DataMapIteratorOfMapOfFile.hxx>
#include<EDL_DataMapIteratorOfMapOfLibrary.hxx>
#include<EDL_DataMapIteratorOfMapOfTemplate.hxx>
#include<EDL_DataMapIteratorOfMapOfVariable.hxx>
#include<EDL_DataMapNodeOfMapOfFile.hxx>
#include<EDL_DataMapNodeOfMapOfLibrary.hxx>
#include<EDL_DataMapNodeOfMapOfTemplate.hxx>
#include<EDL_DataMapNodeOfMapOfVariable.hxx>
#include<EDL_Error.hxx>
#include<EDL_File.hxx>
#include<EDL_FunctionSignature.hxx>
#include<EDL_HSequenceOfVariable.hxx>
#include<EDL_Interpretor.hxx>
#include<EDL_Library.hxx>
#include<EDL_MapOfFile.hxx>
#include<EDL_MapOfLibrary.hxx>
#include<EDL_MapOfTemplate.hxx>
#include<EDL_MapOfVariable.hxx>
#include<EDL_ParameterMode.hxx>
#include<EDL_ProcedureSignature.hxx>
#include<EDL_SequenceNodeOfSequenceOfVariable.hxx>
#include<EDL_SequenceOfVariable.hxx>
#include<EDL_StackIteratorOfStackOfBoolean.hxx>
#include<EDL_StackNodeOfStackOfBoolean.hxx>
#include<EDL_StackOfBoolean.hxx>
#include<EDL_Template.hxx>
#include<EDL_Variable.hxx>
#include<Handle_EDL_API.hxx>
#include<Handle_EDL_DataMapNodeOfMapOfFile.hxx>
#include<Handle_EDL_DataMapNodeOfMapOfLibrary.hxx>
#include<Handle_EDL_DataMapNodeOfMapOfTemplate.hxx>
#include<Handle_EDL_DataMapNodeOfMapOfVariable.hxx>
#include<Handle_EDL_HSequenceOfVariable.hxx>
#include<Handle_EDL_Interpretor.hxx>
#include<Handle_EDL_SequenceNodeOfSequenceOfVariable.hxx>
#include<Handle_EDL_StackNodeOfStackOfBoolean.hxx>

// Additional headers necessary for compilation.

#include<EDL.hxx>
#include<EDL_API.hxx>
#include<EDL_DataMapIteratorOfMapOfFile.hxx>
#include<EDL_DataMapIteratorOfMapOfLibrary.hxx>
#include<EDL_DataMapIteratorOfMapOfTemplate.hxx>
#include<EDL_DataMapIteratorOfMapOfVariable.hxx>
#include<EDL_DataMapNodeOfMapOfFile.hxx>
#include<EDL_DataMapNodeOfMapOfLibrary.hxx>
#include<EDL_DataMapNodeOfMapOfTemplate.hxx>
#include<EDL_DataMapNodeOfMapOfVariable.hxx>
#include<EDL_Error.hxx>
#include<EDL_File.hxx>
#include<EDL_FunctionSignature.hxx>
#include<EDL_HSequenceOfVariable.hxx>
#include<EDL_Interpretor.hxx>
#include<EDL_Library.hxx>
#include<EDL_MapOfFile.hxx>
#include<EDL_MapOfLibrary.hxx>
#include<EDL_MapOfTemplate.hxx>
#include<EDL_MapOfVariable.hxx>
#include<EDL_ParameterMode.hxx>
#include<EDL_ProcedureSignature.hxx>
#include<EDL_SequenceNodeOfSequenceOfVariable.hxx>
#include<EDL_SequenceOfVariable.hxx>
#include<EDL_StackIteratorOfStackOfBoolean.hxx>
#include<EDL_StackNodeOfStackOfBoolean.hxx>
#include<EDL_StackOfBoolean.hxx>
#include<EDL_Template.hxx>
#include<EDL_Variable.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<EDL.hxx>
%}

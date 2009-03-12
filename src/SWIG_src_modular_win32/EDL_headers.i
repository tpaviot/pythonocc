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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

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

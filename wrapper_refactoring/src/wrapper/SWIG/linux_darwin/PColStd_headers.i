/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PColStd_HArray1OfExtendedString.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PColStd_HArray1OfPersistent.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PColStd_HArray2OfInteger.hxx>
#include<Handle_PColStd_HArray2OfPersistent.hxx>
#include<Handle_PColStd_HArray2OfReal.hxx>
#include<Handle_PColStd_HDoubleListOfInteger.hxx>
#include<Handle_PColStd_HDoubleListOfPersistent.hxx>
#include<Handle_PColStd_HDoubleListOfReal.hxx>
#include<Handle_PColStd_HSequenceOfHAsciiString.hxx>
#include<Handle_PColStd_HSequenceOfHExtendedString.hxx>
#include<Handle_PColStd_HSequenceOfInteger.hxx>
#include<Handle_PColStd_HSequenceOfPersistent.hxx>
#include<Handle_PColStd_HSequenceOfReal.hxx>
#include<Handle_PColStd_HSingleListOfInteger.hxx>
#include<Handle_PColStd_HSingleListOfPersistent.hxx>
#include<Handle_PColStd_HSingleListOfReal.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfInteger.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfPersistent.hxx>
#include<Handle_PColStd_SeqNodeOfHSequenceOfReal.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent.hxx>
#include<Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_FieldOfHArray1OfExtendedString.hxx>
#include<PColStd_FieldOfHArray1OfInteger.hxx>
#include<PColStd_FieldOfHArray1OfPersistent.hxx>
#include<PColStd_FieldOfHArray1OfReal.hxx>
#include<PColStd_FieldOfHArray2OfInteger.hxx>
#include<PColStd_FieldOfHArray2OfPersistent.hxx>
#include<PColStd_FieldOfHArray2OfReal.hxx>
#include<PColStd_HArray1OfExtendedString.hxx>
#include<PColStd_HArray1OfInteger.hxx>
#include<PColStd_HArray1OfPersistent.hxx>
#include<PColStd_HArray1OfReal.hxx>
#include<PColStd_HArray2OfInteger.hxx>
#include<PColStd_HArray2OfPersistent.hxx>
#include<PColStd_HArray2OfReal.hxx>
#include<PColStd_HDoubleListOfInteger.hxx>
#include<PColStd_HDoubleListOfPersistent.hxx>
#include<PColStd_HDoubleListOfReal.hxx>
#include<PColStd_HOfAsciiString.hxx>
#include<PColStd_HOfExtendedString.hxx>
#include<PColStd_HOfInteger.hxx>
#include<PColStd_HOfReal.hxx>
#include<PColStd_HSequenceOfHAsciiString.hxx>
#include<PColStd_HSequenceOfHExtendedString.hxx>
#include<PColStd_HSequenceOfInteger.hxx>
#include<PColStd_HSequenceOfPersistent.hxx>
#include<PColStd_HSequenceOfReal.hxx>
#include<PColStd_HSingleListOfInteger.hxx>
#include<PColStd_HSingleListOfPersistent.hxx>
#include<PColStd_HSingleListOfReal.hxx>
#include<PColStd_HashAsciiString.hxx>
#include<PColStd_HashExtendedString.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHAsciiString.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfHExtendedString.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfInteger.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfPersistent.hxx>
#include<PColStd_SeqExplorerOfHSequenceOfReal.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHAsciiString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfHExtendedString.hxx>
#include<PColStd_SeqNodeOfHSequenceOfInteger.hxx>
#include<PColStd_SeqNodeOfHSequenceOfPersistent.hxx>
#include<PColStd_SeqNodeOfHSequenceOfReal.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfInteger.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_VArrayNodeOfFieldOfHArray2OfReal.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray1OfReal.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfInteger.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent.hxx>
#include<PColStd_VArrayTNodeOfFieldOfHArray2OfReal.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
#include<Handle_PCollection_HExtendedString.hxx>
%}

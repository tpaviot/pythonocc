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
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PShort_HArray1OfShortReal.hxx>
#include<Handle_PShort_HArray2OfShortReal.hxx>
#include<Handle_PShort_HSequenceOfShortReal.hxx>
#include<Handle_PShort_SeqNodeOfHSequenceOfShortReal.hxx>
#include<Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal.hxx>
#include<Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal.hxx>
#include<PShort_FieldOfHArray1OfShortReal.hxx>
#include<PShort_FieldOfHArray2OfShortReal.hxx>
#include<PShort_HArray1OfShortReal.hxx>
#include<PShort_HArray2OfShortReal.hxx>
#include<PShort_HSequenceOfShortReal.hxx>
#include<PShort_SeqExplorerOfHSequenceOfShortReal.hxx>
#include<PShort_SeqNodeOfHSequenceOfShortReal.hxx>
#include<PShort_VArrayNodeOfFieldOfHArray1OfShortReal.hxx>
#include<PShort_VArrayNodeOfFieldOfHArray2OfShortReal.hxx>
#include<PShort_VArrayTNodeOfFieldOfHArray1OfShortReal.hxx>
#include<PShort_VArrayTNodeOfFieldOfHArray2OfShortReal.hxx>

// Additional headers necessary for compilation.

#include<PShort_FieldOfHArray1OfShortReal.hxx>
#include<PShort_FieldOfHArray2OfShortReal.hxx>
#include<PShort_HArray1OfShortReal.hxx>
#include<PShort_HArray2OfShortReal.hxx>
#include<PShort_HSequenceOfShortReal.hxx>
#include<PShort_SeqExplorerOfHSequenceOfShortReal.hxx>
#include<PShort_SeqNodeOfHSequenceOfShortReal.hxx>
#include<PShort_VArrayNodeOfFieldOfHArray1OfShortReal.hxx>
#include<PShort_VArrayNodeOfFieldOfHArray2OfShortReal.hxx>
#include<PShort_VArrayTNodeOfFieldOfHArray1OfShortReal.hxx>
#include<PShort_VArrayTNodeOfFieldOfHArray2OfShortReal.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
%}

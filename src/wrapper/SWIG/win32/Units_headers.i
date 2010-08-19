/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Units_Dimensions.hxx>
#include<Handle_Units_Lexicon.hxx>
#include<Handle_Units_NoSuchType.hxx>
#include<Handle_Units_NoSuchUnit.hxx>
#include<Handle_Units_QuantitiesSequence.hxx>
#include<Handle_Units_Quantity.hxx>
#include<Handle_Units_SequenceNodeOfQtsSequence.hxx>
#include<Handle_Units_SequenceNodeOfStrgSequence.hxx>
#include<Handle_Units_SequenceNodeOfTksSequence.hxx>
#include<Handle_Units_SequenceNodeOfUtsSequence.hxx>
#include<Handle_Units_ShiftedToken.hxx>
#include<Handle_Units_ShiftedUnit.hxx>
#include<Handle_Units_StringsSequence.hxx>
#include<Handle_Units_Token.hxx>
#include<Handle_Units_TokensSequence.hxx>
#include<Handle_Units_Unit.hxx>
#include<Handle_Units_UnitsDictionary.hxx>
#include<Handle_Units_UnitsLexicon.hxx>
#include<Handle_Units_UnitsSequence.hxx>
#include<Handle_Units_UnitsSystem.hxx>
#include<Units.hxx>
#include<Units_Dimensions.hxx>
#include<Units_Explorer.hxx>
#include<Units_Lexicon.hxx>
#include<Units_MathSentence.hxx>
#include<Units_Measurement.hxx>
#include<Units_NoSuchType.hxx>
#include<Units_NoSuchUnit.hxx>
#include<Units_Operators.hxx>
#include<Units_QtsSequence.hxx>
#include<Units_QuantitiesSequence.hxx>
#include<Units_Quantity.hxx>
#include<Units_Sentence.hxx>
#include<Units_SequenceNodeOfQtsSequence.hxx>
#include<Units_SequenceNodeOfStrgSequence.hxx>
#include<Units_SequenceNodeOfTksSequence.hxx>
#include<Units_SequenceNodeOfUtsSequence.hxx>
#include<Units_ShiftedToken.hxx>
#include<Units_ShiftedUnit.hxx>
#include<Units_StrgSequence.hxx>
#include<Units_StringsSequence.hxx>
#include<Units_TksSequence.hxx>
#include<Units_Token.hxx>
#include<Units_TokensSequence.hxx>
#include<Units_Unit.hxx>
#include<Units_UnitSentence.hxx>
#include<Units_UnitsDictionary.hxx>
#include<Units_UnitsLexicon.hxx>
#include<Units_UnitsSequence.hxx>
#include<Units_UnitsSystem.hxx>
#include<Units_UtsSequence.hxx>

// Additional headers necessary for compilation.

#include<UnitsAPI.hxx>
#include<UnitsAPI_SystemUnits.hxx>
#include<UnitsMethods.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Standard_SStream.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Units.hxx>
%}

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
%rename(downcast) Handle_Units_Lexicon::DownCast;
%rename(downcast) Handle_Units_UnitsLexicon::DownCast;
%rename(downcast) Handle_Units_Quantity::DownCast;
%rename(downcast) Handle_Units_SequenceNodeOfTksSequence::DownCast;
%rename(downcast) Handle_Units_StringsSequence::DownCast;
%rename(downcast) Handle_Units_SequenceNodeOfQtsSequence::DownCast;
%rename(downcast) Handle_Units_NoSuchType::DownCast;
%rename(downcast) Handle_Units_Unit::DownCast;
%rename(downcast) Handle_Units_Token::DownCast;
%rename(downcast) Handle_Units_ShiftedToken::DownCast;
%rename(downcast) Handle_Units_SequenceNodeOfUtsSequence::DownCast;
%rename(downcast) Handle_Units_NoSuchUnit::DownCast;
%rename(downcast) Handle_Units_UnitsSequence::DownCast;
%rename(downcast) Handle_Units_ShiftedUnit::DownCast;
%rename(downcast) Handle_Units_Dimensions::DownCast;
%rename(downcast) Handle_Units_TokensSequence::DownCast;
%rename(downcast) Handle_Units_SequenceNodeOfStrgSequence::DownCast;
%rename(downcast) Handle_Units_QuantitiesSequence::DownCast;
%rename(downcast) Handle_Units_UnitsDictionary::DownCast;
%rename(downcast) Handle_Units_UnitsSystem::DownCast;
%rename(raise) Units_NoSuchType::Raise;
%rename(raise) Units_NoSuchType::Raise;
%rename(newinstance) Units_NoSuchType::NewInstance;
%rename(raise) Units_NoSuchUnit::Raise;
%rename(raise) Units_NoSuchUnit::Raise;
%rename(newinstance) Units_NoSuchUnit::NewInstance;
%rename(unitsfile) Units::UnitsFile;
%rename(lexiconfile) Units::LexiconFile;
%rename(dictionaryofunits) Units::DictionaryOfUnits;
%rename(quantity) Units::Quantity;
%rename(firstquantity) Units::FirstQuantity;
%rename(lexiconunits) Units::LexiconUnits;
%rename(lexiconformula) Units::LexiconFormula;
%rename(nulldimensions) Units::NullDimensions;
%rename(convert) Units::Convert;
%rename(tosi) Units::ToSI;
%rename(tosi) Units::ToSI;
%rename(fromsi) Units::FromSI;
%rename(fromsi) Units::FromSI;
%rename(dimensions) Units::Dimensions;

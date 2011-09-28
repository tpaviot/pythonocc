/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(DownCast) Handle_Units_Lexicon::DownCast;
%rename(DownCast) Handle_Units_UnitsLexicon::DownCast;
%rename(DownCast) Handle_Units_Quantity::DownCast;
%rename(DownCast) Handle_Units_SequenceNodeOfTksSequence::DownCast;
%rename(DownCast) Handle_Units_SequenceNodeOfQtsSequence::DownCast;
%rename(DownCast) Handle_Units_NoSuchType::DownCast;
%rename(DownCast) Handle_Units_Unit::DownCast;
%rename(DownCast) Handle_Units_Token::DownCast;
%rename(DownCast) Handle_Units_ShiftedToken::DownCast;
%rename(DownCast) Handle_Units_SequenceNodeOfUtsSequence::DownCast;
%rename(DownCast) Handle_Units_NoSuchUnit::DownCast;
%rename(DownCast) Handle_Units_UnitsSequence::DownCast;
%rename(DownCast) Handle_Units_ShiftedUnit::DownCast;
%rename(DownCast) Handle_Units_Dimensions::DownCast;
%rename(DownCast) Handle_Units_TokensSequence::DownCast;
%rename(DownCast) Handle_Units_QuantitiesSequence::DownCast;
%rename(DownCast) Handle_Units_UnitsDictionary::DownCast;
%rename(DownCast) Handle_Units_UnitsSystem::DownCast;
%rename(Raise) Units_NoSuchType::Raise;
%rename(NewInstance) Units_NoSuchType::NewInstance;
%rename(Raise) Units_NoSuchUnit::Raise;
%rename(NewInstance) Units_NoSuchUnit::NewInstance;
%rename(UnitsFile) Units::UnitsFile;
%rename(LexiconFile) Units::LexiconFile;
%rename(DictionaryOfUnits) Units::DictionaryOfUnits;
%rename(Quantity) Units::Quantity;
%rename(FirstQuantity) Units::FirstQuantity;
%rename(LexiconUnits) Units::LexiconUnits;
%rename(LexiconFormula) Units::LexiconFormula;
%rename(NullDimensions) Units::NullDimensions;
%rename(Convert) Units::Convert;
%rename(ToSI) Units::ToSI;
%rename(FromSI) Units::FromSI;
%rename(Dimensions) Units::Dimensions;

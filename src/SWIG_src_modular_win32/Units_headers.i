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
#include<Units_UnitsDictionary.hxx>
#include<Units_UnitSentence.hxx>
#include<Units_UnitsLexicon.hxx>
#include<Units_UnitsSequence.hxx>
#include<Units_UnitsSystem.hxx>
#include<Units_UtsSequence.hxx>
#include<Units.hxx>
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

// Additional headers necessary for compilation.

#include<Units.hxx>
#include<UnitsAPI.hxx>
#include<UnitsAPI_SystemUnits.hxx>
#include<UnitsMethods.hxx>
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
#include<Units_UnitsDictionary.hxx>
#include<Units_UnitSentence.hxx>
#include<Units_UnitsLexicon.hxx>
#include<Units_UnitsSequence.hxx>
#include<Units_UnitsSystem.hxx>
#include<Units_UtsSequence.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Standard_SStream.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Units.hxx>
%}

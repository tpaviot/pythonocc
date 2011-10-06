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
%{

// Headers necessary to define wrapped classes.

#include<Dynamic.hxx>
#include<Dynamic_AbstractVariableInstance.hxx>
#include<Dynamic_BooleanParameter.hxx>
#include<Dynamic_CompiledMethod.hxx>
#include<Dynamic_CompositMethod.hxx>
#include<Dynamic_CompositVariableInstance.hxx>
#include<Dynamic_DynamicClass.hxx>
#include<Dynamic_DynamicDerivedClass.hxx>
#include<Dynamic_DynamicInstance.hxx>
#include<Dynamic_FuzzyClass.hxx>
#include<Dynamic_FuzzyDefinition.hxx>
#include<Dynamic_FuzzyDefinitionsDictionary.hxx>
#include<Dynamic_InstanceParameter.hxx>
#include<Dynamic_IntegerParameter.hxx>
#include<Dynamic_InterpretedMethod.hxx>
#include<Dynamic_Method.hxx>
#include<Dynamic_MethodDefinition.hxx>
#include<Dynamic_MethodDefinitionsDictionary.hxx>
#include<Dynamic_ModeEnum.hxx>
#include<Dynamic_ObjectParameter.hxx>
#include<Dynamic_Parameter.hxx>
#include<Dynamic_ParameterNode.hxx>
#include<Dynamic_RealParameter.hxx>
#include<Dynamic_SeqOfClasses.hxx>
#include<Dynamic_SeqOfFuzzyDefinitions.hxx>
#include<Dynamic_SeqOfMethodDefinitions.hxx>
#include<Dynamic_SeqOfMethods.hxx>
#include<Dynamic_SequenceNodeOfSeqOfClasses.hxx>
#include<Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions.hxx>
#include<Dynamic_SequenceNodeOfSeqOfMethodDefinitions.hxx>
#include<Dynamic_SequenceNodeOfSeqOfMethods.hxx>
#include<Dynamic_SequenceOfClasses.hxx>
#include<Dynamic_SequenceOfFuzzyDefinitions.hxx>
#include<Dynamic_SequenceOfMethodDefinitions.hxx>
#include<Dynamic_SequenceOfMethods.hxx>
#include<Dynamic_StringParameter.hxx>
#include<Dynamic_Variable.hxx>
#include<Dynamic_VariableGroup.hxx>
#include<Dynamic_VariableInstance.hxx>
#include<Dynamic_VariableNode.hxx>
#include<Handle_Dynamic_AbstractVariableInstance.hxx>
#include<Handle_Dynamic_BooleanParameter.hxx>
#include<Handle_Dynamic_CompiledMethod.hxx>
#include<Handle_Dynamic_CompositMethod.hxx>
#include<Handle_Dynamic_CompositVariableInstance.hxx>
#include<Handle_Dynamic_DynamicClass.hxx>
#include<Handle_Dynamic_DynamicDerivedClass.hxx>
#include<Handle_Dynamic_DynamicInstance.hxx>
#include<Handle_Dynamic_FuzzyClass.hxx>
#include<Handle_Dynamic_FuzzyDefinition.hxx>
#include<Handle_Dynamic_FuzzyDefinitionsDictionary.hxx>
#include<Handle_Dynamic_InstanceParameter.hxx>
#include<Handle_Dynamic_IntegerParameter.hxx>
#include<Handle_Dynamic_InterpretedMethod.hxx>
#include<Handle_Dynamic_Method.hxx>
#include<Handle_Dynamic_MethodDefinition.hxx>
#include<Handle_Dynamic_MethodDefinitionsDictionary.hxx>
#include<Handle_Dynamic_ObjectParameter.hxx>
#include<Handle_Dynamic_Parameter.hxx>
#include<Handle_Dynamic_ParameterNode.hxx>
#include<Handle_Dynamic_RealParameter.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfClasses.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfMethods.hxx>
#include<Handle_Dynamic_SequenceOfClasses.hxx>
#include<Handle_Dynamic_SequenceOfFuzzyDefinitions.hxx>
#include<Handle_Dynamic_SequenceOfMethodDefinitions.hxx>
#include<Handle_Dynamic_SequenceOfMethods.hxx>
#include<Handle_Dynamic_StringParameter.hxx>
#include<Handle_Dynamic_Variable.hxx>
#include<Handle_Dynamic_VariableGroup.hxx>
#include<Handle_Dynamic_VariableInstance.hxx>
#include<Handle_Dynamic_VariableNode.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<Dynamic.hxx>
%}

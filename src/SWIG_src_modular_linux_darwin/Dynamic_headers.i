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

#include<Dynamic_Method.hxx>
#include<Dynamic_SequenceOfFuzzyDefinitions.hxx>
#include<Dynamic_SequenceNodeOfSeqOfMethods.hxx>
#include<Dynamic_AbstractVariableInstance.hxx>
#include<Dynamic_Parameter.hxx>
#include<Dynamic_Variable.hxx>
#include<Dynamic_MethodDefinition.hxx>
#include<Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions.hxx>
#include<Dynamic_FuzzyDefinition.hxx>
#include<Dynamic_SequenceOfMethods.hxx>
#include<Dynamic_MethodDefinitionsDictionary.hxx>
#include<Dynamic_VariableGroup.hxx>
#include<Dynamic_CompiledMethod.hxx>
#include<Dynamic_ModeEnum.hxx>
#include<Dynamic_SeqOfFuzzyDefinitions.hxx>
#include<Dynamic_InstanceParameter.hxx>
#include<Dynamic_ObjectParameter.hxx>
#include<Dynamic_FuzzyDefinitionsDictionary.hxx>
#include<Dynamic_SeqOfMethodDefinitions.hxx>
#include<Dynamic_FuzzyClass.hxx>
#include<Dynamic_IntegerParameter.hxx>
#include<Dynamic_SequenceNodeOfSeqOfClasses.hxx>
#include<Dynamic_RealParameter.hxx>
#include<Dynamic_BooleanParameter.hxx>
#include<Dynamic_VariableNode.hxx>
#include<Dynamic_StringParameter.hxx>
#include<Dynamic_SeqOfMethods.hxx>
#include<Dynamic_SequenceNodeOfSeqOfMethodDefinitions.hxx>
#include<Dynamic_VariableInstance.hxx>
#include<Dynamic_CompositVariableInstance.hxx>
#include<Dynamic_ParameterNode.hxx>
#include<Dynamic_SeqOfClasses.hxx>
#include<Dynamic_SequenceOfClasses.hxx>
#include<Dynamic_DynamicInstance.hxx>
#include<Dynamic_DynamicClass.hxx>
#include<Dynamic_SequenceOfMethodDefinitions.hxx>
#include<Dynamic_InterpretedMethod.hxx>
#include<Dynamic_CompositMethod.hxx>
#include<Dynamic_DynamicDerivedClass.hxx>
#include<Dynamic.hxx>
#include<Handle_Dynamic_FuzzyClass.hxx>
#include<Handle_Dynamic_CompositMethod.hxx>
#include<Handle_Dynamic_Parameter.hxx>
#include<Handle_Dynamic_FuzzyDefinitionsDictionary.hxx>
#include<Handle_Dynamic_AbstractVariableInstance.hxx>
#include<Handle_Dynamic_Variable.hxx>
#include<Handle_Dynamic_CompositVariableInstance.hxx>
#include<Handle_Dynamic_ObjectParameter.hxx>
#include<Handle_Dynamic_Method.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfMethods.hxx>
#include<Handle_Dynamic_SequenceOfMethodDefinitions.hxx>
#include<Handle_Dynamic_MethodDefinitionsDictionary.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions.hxx>
#include<Handle_Dynamic_VariableNode.hxx>
#include<Handle_Dynamic_BooleanParameter.hxx>
#include<Handle_Dynamic_VariableInstance.hxx>
#include<Handle_Dynamic_VariableGroup.hxx>
#include<Handle_Dynamic_SequenceOfClasses.hxx>
#include<Handle_Dynamic_InstanceParameter.hxx>
#include<Handle_Dynamic_InterpretedMethod.hxx>
#include<Handle_Dynamic_DynamicDerivedClass.hxx>
#include<Handle_Dynamic_SequenceOfMethods.hxx>
#include<Handle_Dynamic_IntegerParameter.hxx>
#include<Handle_Dynamic_DynamicInstance.hxx>
#include<Handle_Dynamic_CompiledMethod.hxx>
#include<Handle_Dynamic_FuzzyDefinition.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfClasses.hxx>
#include<Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions.hxx>
#include<Handle_Dynamic_ParameterNode.hxx>
#include<Handle_Dynamic_MethodDefinition.hxx>
#include<Handle_Dynamic_RealParameter.hxx>
#include<Handle_Dynamic_DynamicClass.hxx>
#include<Handle_Dynamic_SequenceOfFuzzyDefinitions.hxx>
#include<Handle_Dynamic_StringParameter.hxx>

// Additional headers necessary for compilation.

#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
%}

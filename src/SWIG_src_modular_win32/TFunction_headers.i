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

#include<Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<Handle_TFunction_Driver.hxx>
#include<Handle_TFunction_DriverTable.hxx>
#include<Handle_TFunction_Function.hxx>
#include<Handle_TFunction_GraphNode.hxx>
#include<Handle_TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<Handle_TFunction_Scope.hxx>
#include<TFunction_Array1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_DataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapOfLabelListOfLabel.hxx>
#include<TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DoubleMapOfIntegerLabel.hxx>
#include<TFunction_Driver.hxx>
#include<TFunction_DriverTable.hxx>
#include<TFunction_ExecutionStatus.hxx>
#include<TFunction_Function.hxx>
#include<TFunction_GraphNode.hxx>
#include<TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_IFunction.hxx>
#include<TFunction_Iterator.hxx>
#include<TFunction_Logbook.hxx>
#include<TFunction_Scope.hxx>

// Additional headers necessary for compilation.

#include<TFunction_Array1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_DataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapOfLabelListOfLabel.hxx>
#include<TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DoubleMapOfIntegerLabel.hxx>
#include<TFunction_Driver.hxx>
#include<TFunction_DriverTable.hxx>
#include<TFunction_ExecutionStatus.hxx>
#include<TFunction_Function.hxx>
#include<TFunction_GraphNode.hxx>
#include<TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_IFunction.hxx>
#include<TFunction_Iterator.hxx>
#include<TFunction_Logbook.hxx>
#include<TFunction_Scope.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelList.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<Standard_GUID.hxx>
#include<Handle_TDF_DataSet.hxx>
%}

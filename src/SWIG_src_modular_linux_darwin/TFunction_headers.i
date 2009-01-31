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

#include<TFunction_DriverTable.hxx>
#include<TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<TFunction_Iterator.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_Logbook.hxx>
#include<TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_Scope.hxx>
#include<TFunction_Function.hxx>
#include<TFunction_Array1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DataMapOfGUIDDriver.hxx>
#include<TFunction_ExecutionStatus.hxx>
#include<TFunction_DataMapOfLabelListOfLabel.hxx>
#include<TFunction_DoubleMapOfIntegerLabel.hxx>
#include<TFunction_IFunction.hxx>
#include<TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_GraphNode.hxx>
#include<TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_Driver.hxx>
#include<Handle_TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<Handle_TFunction_Driver.hxx>
#include<Handle_TFunction_GraphNode.hxx>
#include<Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<Handle_TFunction_Scope.hxx>
#include<Handle_TFunction_Function.hxx>
#include<Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<Handle_TFunction_DriverTable.hxx>

// Additional headers necessary for compilation.

#include<TFunction_DriverTable.hxx>
#include<TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include<TFunction_Iterator.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfGUIDDriver.hxx>
#include<TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_Logbook.hxx>
#include<TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include<TFunction_Scope.hxx>
#include<TFunction_Function.hxx>
#include<TFunction_Array1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_DataMapOfGUIDDriver.hxx>
#include<TFunction_ExecutionStatus.hxx>
#include<TFunction_DataMapOfLabelListOfLabel.hxx>
#include<TFunction_DoubleMapOfIntegerLabel.hxx>
#include<TFunction_IFunction.hxx>
#include<TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include<TFunction_GraphNode.hxx>
#include<TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include<TFunction_Driver.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelList.hxx>
#include<Standard_GUID.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<Handle_TDF_DataSet.hxx>
%}

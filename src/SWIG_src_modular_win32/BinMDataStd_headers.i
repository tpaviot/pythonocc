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

#include<BinMDataStd_AsciiStringDriver.hxx>
#include<BinMDataStd_AxisDriver.hxx>
#include<BinMDataStd_BooleanArrayDriver.hxx>
#include<BinMDataStd_BooleanListDriver.hxx>
#include<BinMDataStd_ByteArrayDriver.hxx>
#include<BinMDataStd_CommentDriver.hxx>
#include<BinMDataStd_ConstraintDriver.hxx>
#include<BinMDataStd_DirectoryDriver.hxx>
#include<BinMDataStd_ExpressionDriver.hxx>
#include<BinMDataStd_ExtStringArrayDriver.hxx>
#include<BinMDataStd_ExtStringListDriver.hxx>
#include<BinMDataStd_GeometryDriver.hxx>
#include<BinMDataStd_IntegerArrayDriver.hxx>
#include<BinMDataStd_IntegerDriver.hxx>
#include<BinMDataStd_IntegerListDriver.hxx>
#include<BinMDataStd_IntPackedMapDriver.hxx>
#include<BinMDataStd_NamedDataDriver.hxx>
#include<BinMDataStd_NameDriver.hxx>
#include<BinMDataStd_NoteBookDriver.hxx>
#include<BinMDataStd_PatternStdDriver.hxx>
#include<BinMDataStd_PlacementDriver.hxx>
#include<BinMDataStd_PlaneDriver.hxx>
#include<BinMDataStd_PointDriver.hxx>
#include<BinMDataStd_RealArrayDriver.hxx>
#include<BinMDataStd_RealDriver.hxx>
#include<BinMDataStd_RealListDriver.hxx>
#include<BinMDataStd_ReferenceArrayDriver.hxx>
#include<BinMDataStd_ReferenceListDriver.hxx>
#include<BinMDataStd_RelationDriver.hxx>
#include<BinMDataStd_ShapeDriver.hxx>
#include<BinMDataStd_TickDriver.hxx>
#include<BinMDataStd_TreeNodeDriver.hxx>
#include<BinMDataStd_UAttributeDriver.hxx>
#include<BinMDataStd_VariableDriver.hxx>
#include<BinMDataStd.hxx>
#include<Handle_BinMDataStd_AsciiStringDriver.hxx>
#include<Handle_BinMDataStd_AxisDriver.hxx>
#include<Handle_BinMDataStd_BooleanArrayDriver.hxx>
#include<Handle_BinMDataStd_BooleanListDriver.hxx>
#include<Handle_BinMDataStd_ByteArrayDriver.hxx>
#include<Handle_BinMDataStd_CommentDriver.hxx>
#include<Handle_BinMDataStd_ConstraintDriver.hxx>
#include<Handle_BinMDataStd_DirectoryDriver.hxx>
#include<Handle_BinMDataStd_ExpressionDriver.hxx>
#include<Handle_BinMDataStd_ExtStringArrayDriver.hxx>
#include<Handle_BinMDataStd_ExtStringListDriver.hxx>
#include<Handle_BinMDataStd_GeometryDriver.hxx>
#include<Handle_BinMDataStd_IntegerArrayDriver.hxx>
#include<Handle_BinMDataStd_IntegerDriver.hxx>
#include<Handle_BinMDataStd_IntegerListDriver.hxx>
#include<Handle_BinMDataStd_IntPackedMapDriver.hxx>
#include<Handle_BinMDataStd_NamedDataDriver.hxx>
#include<Handle_BinMDataStd_NameDriver.hxx>
#include<Handle_BinMDataStd_NoteBookDriver.hxx>
#include<Handle_BinMDataStd_PatternStdDriver.hxx>
#include<Handle_BinMDataStd_PlacementDriver.hxx>
#include<Handle_BinMDataStd_PlaneDriver.hxx>
#include<Handle_BinMDataStd_PointDriver.hxx>
#include<Handle_BinMDataStd_RealArrayDriver.hxx>
#include<Handle_BinMDataStd_RealDriver.hxx>
#include<Handle_BinMDataStd_RealListDriver.hxx>
#include<Handle_BinMDataStd_ReferenceArrayDriver.hxx>
#include<Handle_BinMDataStd_ReferenceListDriver.hxx>
#include<Handle_BinMDataStd_RelationDriver.hxx>
#include<Handle_BinMDataStd_ShapeDriver.hxx>
#include<Handle_BinMDataStd_TickDriver.hxx>
#include<Handle_BinMDataStd_TreeNodeDriver.hxx>
#include<Handle_BinMDataStd_UAttributeDriver.hxx>
#include<Handle_BinMDataStd_VariableDriver.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
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
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<BinObjMgt_Persistent.hxx>
#include<BinObjMgt_RRelocationTable.hxx>
#include<BinMDataStd.hxx>
#include<Handle_BinMDF_ADriverTable.hxx>
%}

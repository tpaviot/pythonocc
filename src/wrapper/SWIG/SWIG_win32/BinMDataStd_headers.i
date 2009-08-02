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

#include<BinMDataStd.hxx>
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
#include<BinMDataStd_IntPackedMapDriver.hxx>
#include<BinMDataStd_IntegerArrayDriver.hxx>
#include<BinMDataStd_IntegerDriver.hxx>
#include<BinMDataStd_IntegerListDriver.hxx>
#include<BinMDataStd_NameDriver.hxx>
#include<BinMDataStd_NamedDataDriver.hxx>
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
#include<Handle_BinMDataStd_IntPackedMapDriver.hxx>
#include<Handle_BinMDataStd_IntegerArrayDriver.hxx>
#include<Handle_BinMDataStd_IntegerDriver.hxx>
#include<Handle_BinMDataStd_IntegerListDriver.hxx>
#include<Handle_BinMDataStd_NameDriver.hxx>
#include<Handle_BinMDataStd_NamedDataDriver.hxx>
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
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<BinObjMgt_Persistent.hxx>
#include<BinObjMgt_RRelocationTable.hxx>
#include<BinMDataStd.hxx>
#include<Handle_BinMDF_ADriverTable.hxx>
%}

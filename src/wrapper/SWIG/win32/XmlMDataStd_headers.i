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

#include<Handle_XmlMDataStd_AsciiStringDriver.hxx>
#include<Handle_XmlMDataStd_AxisDriver.hxx>
#include<Handle_XmlMDataStd_BooleanArrayDriver.hxx>
#include<Handle_XmlMDataStd_BooleanListDriver.hxx>
#include<Handle_XmlMDataStd_ByteArrayDriver.hxx>
#include<Handle_XmlMDataStd_CommentDriver.hxx>
#include<Handle_XmlMDataStd_ConstraintDriver.hxx>
#include<Handle_XmlMDataStd_DirectoryDriver.hxx>
#include<Handle_XmlMDataStd_ExpressionDriver.hxx>
#include<Handle_XmlMDataStd_ExtStringArrayDriver.hxx>
#include<Handle_XmlMDataStd_ExtStringListDriver.hxx>
#include<Handle_XmlMDataStd_GeometryDriver.hxx>
#include<Handle_XmlMDataStd_IntPackedMapDriver.hxx>
#include<Handle_XmlMDataStd_IntegerArrayDriver.hxx>
#include<Handle_XmlMDataStd_IntegerDriver.hxx>
#include<Handle_XmlMDataStd_IntegerListDriver.hxx>
#include<Handle_XmlMDataStd_NameDriver.hxx>
#include<Handle_XmlMDataStd_NamedDataDriver.hxx>
#include<Handle_XmlMDataStd_NoteBookDriver.hxx>
#include<Handle_XmlMDataStd_PatternStdDriver.hxx>
#include<Handle_XmlMDataStd_PlacementDriver.hxx>
#include<Handle_XmlMDataStd_PlaneDriver.hxx>
#include<Handle_XmlMDataStd_PointDriver.hxx>
#include<Handle_XmlMDataStd_RealArrayDriver.hxx>
#include<Handle_XmlMDataStd_RealDriver.hxx>
#include<Handle_XmlMDataStd_RealListDriver.hxx>
#include<Handle_XmlMDataStd_ReferenceArrayDriver.hxx>
#include<Handle_XmlMDataStd_ReferenceListDriver.hxx>
#include<Handle_XmlMDataStd_RelationDriver.hxx>
#include<Handle_XmlMDataStd_ShapeDriver.hxx>
#include<Handle_XmlMDataStd_TickDriver.hxx>
#include<Handle_XmlMDataStd_TreeNodeDriver.hxx>
#include<Handle_XmlMDataStd_UAttributeDriver.hxx>
#include<Handle_XmlMDataStd_VariableDriver.hxx>
#include<XmlMDataStd.hxx>
#include<XmlMDataStd_AsciiStringDriver.hxx>
#include<XmlMDataStd_AxisDriver.hxx>
#include<XmlMDataStd_BooleanArrayDriver.hxx>
#include<XmlMDataStd_BooleanListDriver.hxx>
#include<XmlMDataStd_ByteArrayDriver.hxx>
#include<XmlMDataStd_CommentDriver.hxx>
#include<XmlMDataStd_ConstraintDriver.hxx>
#include<XmlMDataStd_DirectoryDriver.hxx>
#include<XmlMDataStd_ExpressionDriver.hxx>
#include<XmlMDataStd_ExtStringArrayDriver.hxx>
#include<XmlMDataStd_ExtStringListDriver.hxx>
#include<XmlMDataStd_GeometryDriver.hxx>
#include<XmlMDataStd_IntPackedMapDriver.hxx>
#include<XmlMDataStd_IntegerArrayDriver.hxx>
#include<XmlMDataStd_IntegerDriver.hxx>
#include<XmlMDataStd_IntegerListDriver.hxx>
#include<XmlMDataStd_NameDriver.hxx>
#include<XmlMDataStd_NamedDataDriver.hxx>
#include<XmlMDataStd_NoteBookDriver.hxx>
#include<XmlMDataStd_PatternStdDriver.hxx>
#include<XmlMDataStd_PlacementDriver.hxx>
#include<XmlMDataStd_PlaneDriver.hxx>
#include<XmlMDataStd_PointDriver.hxx>
#include<XmlMDataStd_RealArrayDriver.hxx>
#include<XmlMDataStd_RealDriver.hxx>
#include<XmlMDataStd_RealListDriver.hxx>
#include<XmlMDataStd_ReferenceArrayDriver.hxx>
#include<XmlMDataStd_ReferenceListDriver.hxx>
#include<XmlMDataStd_RelationDriver.hxx>
#include<XmlMDataStd_ShapeDriver.hxx>
#include<XmlMDataStd_TickDriver.hxx>
#include<XmlMDataStd_TreeNodeDriver.hxx>
#include<XmlMDataStd_UAttributeDriver.hxx>
#include<XmlMDataStd_VariableDriver.hxx>

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
#include<XmlObjMgt_Persistent.hxx>
#include<XmlObjMgt_RRelocationTable.hxx>
#include<XmlMDataStd.hxx>
#include<Handle_XmlMDF_ADriverTable.hxx>
%}

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

#include<BinMXCAFDoc.hxx>
#include<BinMXCAFDoc_AreaDriver.hxx>
#include<BinMXCAFDoc_CentroidDriver.hxx>
#include<BinMXCAFDoc_ColorDriver.hxx>
#include<BinMXCAFDoc_ColorToolDriver.hxx>
#include<BinMXCAFDoc_DatumDriver.hxx>
#include<BinMXCAFDoc_DimTolDriver.hxx>
#include<BinMXCAFDoc_DimTolToolDriver.hxx>
#include<BinMXCAFDoc_DocumentToolDriver.hxx>
#include<BinMXCAFDoc_GraphNodeDriver.hxx>
#include<BinMXCAFDoc_LayerToolDriver.hxx>
#include<BinMXCAFDoc_LocationDriver.hxx>
#include<BinMXCAFDoc_MaterialDriver.hxx>
#include<BinMXCAFDoc_MaterialToolDriver.hxx>
#include<BinMXCAFDoc_ShapeToolDriver.hxx>
#include<BinMXCAFDoc_VolumeDriver.hxx>
#include<Handle_BinMXCAFDoc_AreaDriver.hxx>
#include<Handle_BinMXCAFDoc_CentroidDriver.hxx>
#include<Handle_BinMXCAFDoc_ColorDriver.hxx>
#include<Handle_BinMXCAFDoc_ColorToolDriver.hxx>
#include<Handle_BinMXCAFDoc_DatumDriver.hxx>
#include<Handle_BinMXCAFDoc_DimTolDriver.hxx>
#include<Handle_BinMXCAFDoc_DimTolToolDriver.hxx>
#include<Handle_BinMXCAFDoc_DocumentToolDriver.hxx>
#include<Handle_BinMXCAFDoc_GraphNodeDriver.hxx>
#include<Handle_BinMXCAFDoc_LayerToolDriver.hxx>
#include<Handle_BinMXCAFDoc_LocationDriver.hxx>
#include<Handle_BinMXCAFDoc_MaterialDriver.hxx>
#include<Handle_BinMXCAFDoc_MaterialToolDriver.hxx>
#include<Handle_BinMXCAFDoc_ShapeToolDriver.hxx>
#include<Handle_BinMXCAFDoc_VolumeDriver.hxx>

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
#include<TopLoc_Location.hxx>
#include<BinMXCAFDoc.hxx>
#include<Handle_BinMDF_ADriverTable.hxx>
%}

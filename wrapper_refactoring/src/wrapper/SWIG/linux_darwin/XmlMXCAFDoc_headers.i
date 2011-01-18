/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

#include<Handle_XmlMXCAFDoc_AreaDriver.hxx>
#include<Handle_XmlMXCAFDoc_CentroidDriver.hxx>
#include<Handle_XmlMXCAFDoc_ColorDriver.hxx>
#include<Handle_XmlMXCAFDoc_ColorToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_DocumentToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_GraphNodeDriver.hxx>
#include<Handle_XmlMXCAFDoc_LayerToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_LocationDriver.hxx>
#include<Handle_XmlMXCAFDoc_ShapeToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_VolumeDriver.hxx>
#include<XmlMXCAFDoc.hxx>
#include<XmlMXCAFDoc_AreaDriver.hxx>
#include<XmlMXCAFDoc_CentroidDriver.hxx>
#include<XmlMXCAFDoc_ColorDriver.hxx>
#include<XmlMXCAFDoc_ColorToolDriver.hxx>
#include<XmlMXCAFDoc_DocumentToolDriver.hxx>
#include<XmlMXCAFDoc_GraphNodeDriver.hxx>
#include<XmlMXCAFDoc_LayerToolDriver.hxx>
#include<XmlMXCAFDoc_LocationDriver.hxx>
#include<XmlMXCAFDoc_ShapeToolDriver.hxx>
#include<XmlMXCAFDoc_VolumeDriver.hxx>

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
#include<TopLoc_Location.hxx>
#include<XmlMXCAFDoc.hxx>
#include<Handle_XmlMDF_ADriverTable.hxx>
%}

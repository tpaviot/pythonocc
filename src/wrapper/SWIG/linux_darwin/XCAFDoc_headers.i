/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_XCAFDoc_Area.hxx>
#include<Handle_XCAFDoc_Centroid.hxx>
#include<Handle_XCAFDoc_Color.hxx>
#include<Handle_XCAFDoc_ColorTool.hxx>
#include<Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel.hxx>
#include<Handle_XCAFDoc_Datum.hxx>
#include<Handle_XCAFDoc_DimTol.hxx>
#include<Handle_XCAFDoc_DimTolTool.hxx>
#include<Handle_XCAFDoc_DocumentTool.hxx>
#include<Handle_XCAFDoc_GraphNode.hxx>
#include<Handle_XCAFDoc_LayerTool.hxx>
#include<Handle_XCAFDoc_Location.hxx>
#include<Handle_XCAFDoc_Material.hxx>
#include<Handle_XCAFDoc_MaterialTool.hxx>
#include<Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence.hxx>
#include<Handle_XCAFDoc_ShapeMapTool.hxx>
#include<Handle_XCAFDoc_ShapeTool.hxx>
#include<Handle_XCAFDoc_Volume.hxx>
#include<XCAFDoc.hxx>
#include<XCAFDoc_Area.hxx>
#include<XCAFDoc_Centroid.hxx>
#include<XCAFDoc_Color.hxx>
#include<XCAFDoc_ColorTool.hxx>
#include<XCAFDoc_ColorType.hxx>
#include<XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel.hxx>
#include<XCAFDoc_DataMapNodeOfDataMapOfShapeLabel.hxx>
#include<XCAFDoc_DataMapOfShapeLabel.hxx>
#include<XCAFDoc_Datum.hxx>
#include<XCAFDoc_DimTol.hxx>
#include<XCAFDoc_DimTolTool.hxx>
#include<XCAFDoc_DocumentTool.hxx>
#include<XCAFDoc_GraphNode.hxx>
#include<XCAFDoc_GraphNodeSequence.hxx>
#include<XCAFDoc_LayerTool.hxx>
#include<XCAFDoc_Location.hxx>
#include<XCAFDoc_Material.hxx>
#include<XCAFDoc_MaterialTool.hxx>
#include<XCAFDoc_SequenceNodeOfGraphNodeSequence.hxx>
#include<XCAFDoc_ShapeMapTool.hxx>
#include<XCAFDoc_ShapeTool.hxx>
#include<XCAFDoc_Volume.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TDF_Label.hxx>
#include<Handle_TDocStd_Document.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<Handle_TDF_RelocationTable.hxx>
#include<XCAFDoc.hxx>
#include<Standard_GUID.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TDF_LabelSequence.hxx>
#include<TopLoc_Location.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TDF_AttributeSequence.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TColStd_HSequenceOfExtendedString.hxx>
#include<Handle_TDF_DataSet.hxx>
#include<Quantity_Color.hxx>
#include<gp_Pnt.hxx>
%}

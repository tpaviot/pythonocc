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

#include<Handle_PXCAFDoc_Area.hxx>
#include<Handle_PXCAFDoc_Centroid.hxx>
#include<Handle_PXCAFDoc_Color.hxx>
#include<Handle_PXCAFDoc_ColorTool.hxx>
#include<Handle_PXCAFDoc_Datum.hxx>
#include<Handle_PXCAFDoc_DimTol.hxx>
#include<Handle_PXCAFDoc_DimTolTool.hxx>
#include<Handle_PXCAFDoc_DocumentTool.hxx>
#include<Handle_PXCAFDoc_GraphNode.hxx>
#include<Handle_PXCAFDoc_GraphNodeSequence.hxx>
#include<Handle_PXCAFDoc_LayerTool.hxx>
#include<Handle_PXCAFDoc_Location.hxx>
#include<Handle_PXCAFDoc_Material.hxx>
#include<Handle_PXCAFDoc_MaterialTool.hxx>
#include<Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence.hxx>
#include<Handle_PXCAFDoc_ShapeTool.hxx>
#include<Handle_PXCAFDoc_Volume.hxx>
#include<PXCAFDoc_Area.hxx>
#include<PXCAFDoc_Centroid.hxx>
#include<PXCAFDoc_Color.hxx>
#include<PXCAFDoc_ColorTool.hxx>
#include<PXCAFDoc_Datum.hxx>
#include<PXCAFDoc_DimTol.hxx>
#include<PXCAFDoc_DimTolTool.hxx>
#include<PXCAFDoc_DocumentTool.hxx>
#include<PXCAFDoc_GraphNode.hxx>
#include<PXCAFDoc_GraphNodeSequence.hxx>
#include<PXCAFDoc_LayerTool.hxx>
#include<PXCAFDoc_Location.hxx>
#include<PXCAFDoc_Material.hxx>
#include<PXCAFDoc_MaterialTool.hxx>
#include<PXCAFDoc_SeqExplorerOfGraphNodeSequence.hxx>
#include<PXCAFDoc_SeqNodeOfGraphNodeSequence.hxx>
#include<PXCAFDoc_ShapeTool.hxx>
#include<PXCAFDoc_Volume.hxx>

// Additional headers necessary for compilation.

#include<DBC_BaseArray.hxx>
#include<DBC_BaseArray_objs.hxx>
#include<DBC_DBVArray.hxx>
#include<DBC_VArrayNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayNodeOfVArrayOfReal.hxx>
#include<DBC_VArrayOfCharacter.hxx>
#include<DBC_VArrayOfExtCharacter.hxx>
#include<DBC_VArrayOfInteger.hxx>
#include<DBC_VArrayOfReal.hxx>
#include<DBC_VArrayTNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayTNodeOfVArrayOfReal.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<PTopLoc_Location.hxx>
#include<gp_Pnt.hxx>
#include<Standard_GUID.hxx>
#include<Quantity_Color.hxx>
%}

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

#include<XCAFSchema.hxx>
#include<XCAFSchema_PDF_Attribute.hxx>
#include<XCAFSchema_PMMgt_PManaged.hxx>
#include<XCAFSchema_PTopLoc_Datum3D.hxx>
#include<XCAFSchema_PTopLoc_ItemLocation.hxx>
#include<XCAFSchema_PTopLoc_Location.hxx>
#include<XCAFSchema_PXCAFDoc_Area.hxx>
#include<XCAFSchema_PXCAFDoc_Centroid.hxx>
#include<XCAFSchema_PXCAFDoc_Color.hxx>
#include<XCAFSchema_PXCAFDoc_ColorTool.hxx>
#include<XCAFSchema_PXCAFDoc_DocumentTool.hxx>
#include<XCAFSchema_PXCAFDoc_GraphNode.hxx>
#include<XCAFSchema_PXCAFDoc_GraphNodeSequence.hxx>
#include<XCAFSchema_PXCAFDoc_LayerTool.hxx>
#include<XCAFSchema_PXCAFDoc_Location.hxx>
#include<XCAFSchema_PXCAFDoc_SeqNodeOfGraphNodeSequence.hxx>
#include<XCAFSchema_PXCAFDoc_ShapeTool.hxx>
#include<XCAFSchema_PXCAFDoc_Volume.hxx>
#include<XCAFSchema_Quantity_Color.hxx>
#include<XCAFSchema_Standard_GUID.hxx>
#include<XCAFSchema_Standard_Persistent.hxx>
#include<XCAFSchema_Standard_Storable.hxx>
#include<XCAFSchema_gp_Ax1.hxx>
#include<XCAFSchema_gp_Ax2.hxx>
#include<XCAFSchema_gp_Ax2d.hxx>
#include<XCAFSchema_gp_Ax3.hxx>
#include<XCAFSchema_gp_Dir.hxx>
#include<XCAFSchema_gp_Dir2d.hxx>
#include<XCAFSchema_gp_Mat.hxx>
#include<XCAFSchema_gp_Mat2d.hxx>
#include<XCAFSchema_gp_Pnt.hxx>
#include<XCAFSchema_gp_Pnt2d.hxx>
#include<XCAFSchema_gp_Trsf.hxx>
#include<XCAFSchema_gp_Trsf2d.hxx>
#include<XCAFSchema_gp_Vec.hxx>
#include<XCAFSchema_gp_Vec2d.hxx>
#include<XCAFSchema_gp_XY.hxx>
#include<XCAFSchema_gp_XYZ.hxx>

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
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Storage_CallBack.hxx>
#include<Handle_PDF_Attribute.hxx>
#include<Handle_Storage_Schema.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<Storage_BaseDriver.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_PXCAFDoc_Area.hxx>
#include<Handle_PXCAFDoc_DocumentTool.hxx>
#include<Handle_PXCAFDoc_Color.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax3.hxx>
#include<Standard_Storable.hxx>
#include<Handle_PMMgt_PManaged.hxx>
#include<gp_Vec.hxx>
#include<Handle_PXCAFDoc_Centroid.hxx>
#include<Standard_GUID.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PXCAFDoc_LayerTool.hxx>
#include<Handle_PXCAFDoc_GraphNode.hxx>
#include<gp_Dir.hxx>
#include<gp_Trsf.hxx>
#include<Handle_PXCAFDoc_GraphNodeSequence.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_PXCAFDoc_ShapeTool.hxx>
#include<Handle_PXCAFDoc_ColorTool.hxx>
#include<XCAFSchema.hxx>
#include<TCollection_AsciiString.hxx>
#include<gp_Ax2.hxx>
#include<Handle_PXCAFDoc_Location.hxx>
#include<Quantity_Color.hxx>
#include<gp_Mat2d.hxx>
#include<Handle_PTopLoc_Datum3D.hxx>
#include<gp_XYZ.hxx>
#include<Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence.hxx>
#include<gp_XY.hxx>
#include<gp_Mat.hxx>
#include<gp_Dir2d.hxx>
#include<Handle_PXCAFDoc_Volume.hxx>
#include<PTopLoc_Location.hxx>
#include<Handle_PTopLoc_ItemLocation.hxx>
%}

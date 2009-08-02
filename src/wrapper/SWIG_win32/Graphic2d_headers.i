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

#include<Graphic2d_Array1OfVertex.hxx>
#include<Graphic2d_Buffer.hxx>
#include<Graphic2d_BufferList.hxx>
#include<Graphic2d_CBitFields8.hxx>
#include<Graphic2d_Circle.hxx>
#include<Graphic2d_CircleDefinitionError.hxx>
#include<Graphic2d_CircleMarker.hxx>
#include<Graphic2d_Curve.hxx>
#include<Graphic2d_CurveDefinitionError.hxx>
#include<Graphic2d_DetectionColorError.hxx>
#include<Graphic2d_DisplayList.hxx>
#include<Graphic2d_DisplayStatus.hxx>
#include<Graphic2d_Drawer.hxx>
#include<Graphic2d_DrawerDefinitionError.hxx>
#include<Graphic2d_Ellips.hxx>
#include<Graphic2d_EllipsDefinitionError.hxx>
#include<Graphic2d_EllipsMarker.hxx>
#include<Graphic2d_FramedText.hxx>
#include<Graphic2d_GOPtr.hxx>
#include<Graphic2d_GraphicObject.hxx>
#include<Graphic2d_HArray1OfVertex.hxx>
#include<Graphic2d_HSequenceOfPrimitives.hxx>
#include<Graphic2d_HSequenceOfVertex.hxx>
#include<Graphic2d_HidingGraphicObject.hxx>
#include<Graphic2d_HidingText.hxx>
#include<Graphic2d_Image.hxx>
#include<Graphic2d_ImageDefinitionError.hxx>
#include<Graphic2d_ImageFile.hxx>
#include<Graphic2d_InfiniteLine.hxx>
#include<Graphic2d_InfiniteLineDefinitionError.hxx>
#include<Graphic2d_Line.hxx>
#include<Graphic2d_Marker.hxx>
#include<Graphic2d_MarkerDefinitionError.hxx>
#include<Graphic2d_OverrideColorError.hxx>
#include<Graphic2d_Paragraph.hxx>
#include<Graphic2d_PickMode.hxx>
#include<Graphic2d_Polyline.hxx>
#include<Graphic2d_PolylineDefinitionError.hxx>
#include<Graphic2d_PolylineMarker.hxx>
#include<Graphic2d_Primitive.hxx>
#include<Graphic2d_Segment.hxx>
#include<Graphic2d_SegmentDefinitionError.hxx>
#include<Graphic2d_SequenceNodeOfSequenceOfBuffer.hxx>
#include<Graphic2d_SequenceNodeOfSequenceOfGraphicObject.hxx>
#include<Graphic2d_SequenceNodeOfSequenceOfPolyline.hxx>
#include<Graphic2d_SequenceNodeOfSequenceOfPrimitives.hxx>
#include<Graphic2d_SequenceNodeOfSequenceOfVertex.hxx>
#include<Graphic2d_SequenceOfBuffer.hxx>
#include<Graphic2d_SequenceOfCurve.hxx>
#include<Graphic2d_SequenceOfGraphicObject.hxx>
#include<Graphic2d_SequenceOfPolyline.hxx>
#include<Graphic2d_SequenceOfPrimitives.hxx>
#include<Graphic2d_SequenceOfVertex.hxx>
#include<Graphic2d_SetOfCurves.hxx>
#include<Graphic2d_SetOfMarkers.hxx>
#include<Graphic2d_SetOfPolylines.hxx>
#include<Graphic2d_SetOfSegments.hxx>
#include<Graphic2d_Text.hxx>
#include<Graphic2d_TextDefinitionError.hxx>
#include<Graphic2d_TransientDefinitionError.hxx>
#include<Graphic2d_TransientManager.hxx>
#include<Graphic2d_TypeOfAlignment.hxx>
#include<Graphic2d_TypeOfComposition.hxx>
#include<Graphic2d_TypeOfFrame.hxx>
#include<Graphic2d_TypeOfPolygonFilling.hxx>
#include<Graphic2d_TypeOfPrimitive.hxx>
#include<Graphic2d_VectorialMarker.hxx>
#include<Graphic2d_Vertex.hxx>
#include<Graphic2d_View.hxx>
#include<Graphic2d_ViewMapping.hxx>
#include<Graphic2d_ViewPtr.hxx>
#include<Handle_Graphic2d_Buffer.hxx>
#include<Handle_Graphic2d_BufferList.hxx>
#include<Handle_Graphic2d_Circle.hxx>
#include<Handle_Graphic2d_CircleDefinitionError.hxx>
#include<Handle_Graphic2d_CircleMarker.hxx>
#include<Handle_Graphic2d_DetectionColorError.hxx>
#include<Handle_Graphic2d_DisplayList.hxx>
#include<Handle_Graphic2d_Drawer.hxx>
#include<Handle_Graphic2d_DrawerDefinitionError.hxx>
#include<Handle_Graphic2d_Ellips.hxx>
#include<Handle_Graphic2d_EllipsDefinitionError.hxx>
#include<Handle_Graphic2d_EllipsMarker.hxx>
#include<Handle_Graphic2d_FramedText.hxx>
#include<Handle_Graphic2d_GraphicObject.hxx>
#include<Handle_Graphic2d_HArray1OfVertex.hxx>
#include<Handle_Graphic2d_HSequenceOfPrimitives.hxx>
#include<Handle_Graphic2d_HSequenceOfVertex.hxx>
#include<Handle_Graphic2d_HidingGraphicObject.hxx>
#include<Handle_Graphic2d_HidingText.hxx>
#include<Handle_Graphic2d_Image.hxx>
#include<Handle_Graphic2d_ImageDefinitionError.hxx>
#include<Handle_Graphic2d_ImageFile.hxx>
#include<Handle_Graphic2d_InfiniteLine.hxx>
#include<Handle_Graphic2d_InfiniteLineDefinitionError.hxx>
#include<Handle_Graphic2d_Line.hxx>
#include<Handle_Graphic2d_Marker.hxx>
#include<Handle_Graphic2d_MarkerDefinitionError.hxx>
#include<Handle_Graphic2d_OverrideColorError.hxx>
#include<Handle_Graphic2d_Paragraph.hxx>
#include<Handle_Graphic2d_Polyline.hxx>
#include<Handle_Graphic2d_PolylineDefinitionError.hxx>
#include<Handle_Graphic2d_PolylineMarker.hxx>
#include<Handle_Graphic2d_Primitive.hxx>
#include<Handle_Graphic2d_Segment.hxx>
#include<Handle_Graphic2d_SegmentDefinitionError.hxx>
#include<Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer.hxx>
#include<Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject.hxx>
#include<Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline.hxx>
#include<Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives.hxx>
#include<Handle_Graphic2d_SequenceNodeOfSequenceOfVertex.hxx>
#include<Handle_Graphic2d_SetOfMarkers.hxx>
#include<Handle_Graphic2d_SetOfPolylines.hxx>
#include<Handle_Graphic2d_SetOfSegments.hxx>
#include<Handle_Graphic2d_Text.hxx>
#include<Handle_Graphic2d_TextDefinitionError.hxx>
#include<Handle_Graphic2d_TransientDefinitionError.hxx>
#include<Handle_Graphic2d_TransientManager.hxx>
#include<Handle_Graphic2d_VectorialMarker.hxx>
#include<Handle_Graphic2d_View.hxx>
#include<Handle_Graphic2d_ViewMapping.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Handle_Image_Image.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Standard_SStream.hxx>
#include<gp_GTrsf2d.hxx>
#include<TCollection_ExtendedString.hxx>
#include<OSD_File.hxx>
#include<Handle_Aspect_WindowDriver.hxx>
#include<Handle_Aspect_Driver.hxx>
#include<Handle_PlotMgt_PlotterDriver.hxx>
#include<TShort_Array1OfShortReal.hxx>
#include<Handle_TShort_HArray1OfShortReal.hxx>
%}

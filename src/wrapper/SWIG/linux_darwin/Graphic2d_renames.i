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
%rename(downcast) Handle_Graphic2d_Primitive::DownCast;
%rename(downcast) Handle_Graphic2d_Line::DownCast;
%rename(downcast) Handle_Graphic2d_VectorialMarker::DownCast;
%rename(downcast) Handle_Graphic2d_PolylineMarker::DownCast;
%rename(downcast) Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline::DownCast;
%rename(downcast) Handle_Graphic2d_Image::DownCast;
%rename(downcast) Handle_Graphic2d_SetOfSegments::DownCast;
%rename(downcast) Handle_Graphic2d_Polyline::DownCast;
%rename(downcast) Handle_Graphic2d_Segment::DownCast;
%rename(downcast) Handle_Graphic2d_Drawer::DownCast;
%rename(downcast) Handle_Graphic2d_Text::DownCast;
%rename(downcast) Handle_Graphic2d_OverrideColorError::DownCast;
%rename(downcast) Handle_Graphic2d_ViewMapping::DownCast;
%rename(downcast) Handle_Graphic2d_EllipsMarker::DownCast;
%rename(downcast) Handle_Graphic2d_HSequenceOfVertex::DownCast;
%rename(downcast) Handle_Graphic2d_View::DownCast;
%rename(downcast) Handle_Graphic2d_GraphicObject::DownCast;
%rename(downcast) Handle_Graphic2d_BufferList::DownCast;
%rename(downcast) Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer::DownCast;
%rename(downcast) Handle_Graphic2d_Circle::DownCast;
%rename(downcast) Handle_Graphic2d_TextDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_DetectionColorError::DownCast;
%rename(downcast) Handle_Graphic2d_HArray1OfVertex::DownCast;
%rename(downcast) Handle_Graphic2d_HSequenceOfPrimitives::DownCast;
%rename(downcast) Handle_Graphic2d_CircleDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_SetOfPolylines::DownCast;
%rename(downcast) Handle_Graphic2d_SegmentDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_SetOfMarkers::DownCast;
%rename(downcast) Handle_Graphic2d_DisplayList::DownCast;
%rename(downcast) Handle_Graphic2d_HidingGraphicObject::DownCast;
%rename(downcast) Handle_Graphic2d_InfiniteLineDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_PolylineDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_SequenceNodeOfSequenceOfVertex::DownCast;
%rename(downcast) Handle_Graphic2d_Paragraph::DownCast;
%rename(downcast) Handle_Graphic2d_TransientManager::DownCast;
%rename(downcast) Handle_Graphic2d_MarkerDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_ImageDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_Ellips::DownCast;
%rename(downcast) Handle_Graphic2d_HidingText::DownCast;
%rename(downcast) Handle_Graphic2d_DrawerDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_Buffer::DownCast;
%rename(downcast) Handle_Graphic2d_InfiniteLine::DownCast;
%rename(downcast) Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives::DownCast;
%rename(downcast) Handle_Graphic2d_TransientDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_Marker::DownCast;
%rename(downcast) Handle_Graphic2d_FramedText::DownCast;
%rename(downcast) Handle_Graphic2d_EllipsDefinitionError::DownCast;
%rename(downcast) Handle_Graphic2d_CircleMarker::DownCast;
%rename(downcast) Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject::DownCast;
%rename(downcast) Handle_Graphic2d_ImageFile::DownCast;
%rename(raise) Graphic2d_InfiniteLineDefinitionError::Raise;
%rename(raise) Graphic2d_InfiniteLineDefinitionError::Raise;
%rename(newinstance) Graphic2d_InfiniteLineDefinitionError::NewInstance;
%rename(raise) Graphic2d_PolylineDefinitionError::Raise;
%rename(raise) Graphic2d_PolylineDefinitionError::Raise;
%rename(newinstance) Graphic2d_PolylineDefinitionError::NewInstance;
%rename(retrieve) Graphic2d_Polyline::Retrieve;
%rename(retrieve) Graphic2d_PolylineMarker::Retrieve;
%rename(setsmallsize) Graphic2d_Image::SetSmallSize;
%rename(smallsize) Graphic2d_Image::SmallSize;
%rename(raise) Graphic2d_TextDefinitionError::Raise;
%rename(raise) Graphic2d_TextDefinitionError::Raise;
%rename(newinstance) Graphic2d_TextDefinitionError::NewInstance;
%rename(raise) Graphic2d_SegmentDefinitionError::Raise;
%rename(raise) Graphic2d_SegmentDefinitionError::Raise;
%rename(newinstance) Graphic2d_SegmentDefinitionError::NewInstance;
%rename(values) Graphic2d_ImageFile::Values;
%rename(swaplong) Graphic2d_ImageFile::SwapLong;
%rename(raise) Graphic2d_CircleDefinitionError::Raise;
%rename(raise) Graphic2d_CircleDefinitionError::Raise;
%rename(newinstance) Graphic2d_CircleDefinitionError::NewInstance;
%rename(raise) Graphic2d_EllipsDefinitionError::Raise;
%rename(raise) Graphic2d_EllipsDefinitionError::Raise;
%rename(newinstance) Graphic2d_EllipsDefinitionError::NewInstance;
%rename(retrieve) Graphic2d_InfiniteLine::Retrieve;
%rename(raise) Graphic2d_OverrideColorError::Raise;
%rename(raise) Graphic2d_OverrideColorError::Raise;
%rename(newinstance) Graphic2d_OverrideColorError::NewInstance;
%rename(raise) Graphic2d_ImageDefinitionError::Raise;
%rename(raise) Graphic2d_ImageDefinitionError::Raise;
%rename(newinstance) Graphic2d_ImageDefinitionError::NewInstance;
%rename(raise) Graphic2d_DetectionColorError::Raise;
%rename(raise) Graphic2d_DetectionColorError::Raise;
%rename(newinstance) Graphic2d_DetectionColorError::NewInstance;
%rename(retrieve) Graphic2d_CircleMarker::Retrieve;
%rename(distance) Graphic2d_Vertex::Distance;
%rename(raise) Graphic2d_DrawerDefinitionError::Raise;
%rename(raise) Graphic2d_DrawerDefinitionError::Raise;
%rename(newinstance) Graphic2d_DrawerDefinitionError::NewInstance;
%rename(retrieve) Graphic2d_Segment::Retrieve;
%rename(retrieve) Graphic2d_EllipsMarker::Retrieve;
%rename(retrieve) Graphic2d_Ellips::Retrieve;
%rename(retrieve) Graphic2d_Circle::Retrieve;
%rename(raise) Graphic2d_MarkerDefinitionError::Raise;
%rename(raise) Graphic2d_MarkerDefinitionError::Raise;
%rename(newinstance) Graphic2d_MarkerDefinitionError::NewInstance;
%rename(raise) Graphic2d_TransientDefinitionError::Raise;
%rename(raise) Graphic2d_TransientDefinitionError::Raise;
%rename(newinstance) Graphic2d_TransientDefinitionError::NewInstance;

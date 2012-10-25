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
%rename(DownCast) Handle_Graphic2d_Primitive::DownCast;
%rename(DownCast) Handle_Graphic2d_Line::DownCast;
%rename(DownCast) Handle_Graphic2d_VectorialMarker::DownCast;
%rename(DownCast) Handle_Graphic2d_PolylineMarker::DownCast;
%rename(DownCast) Handle_Graphic2d_EllipsMarker::DownCast;
%rename(DownCast) Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline::DownCast;
%rename(DownCast) Handle_Graphic2d_Image::DownCast;
%rename(DownCast) Handle_Graphic2d_SetOfSegments::DownCast;
%rename(DownCast) Handle_Graphic2d_Polyline::DownCast;
%rename(DownCast) Handle_Graphic2d_Drawer::DownCast;
%rename(DownCast) Handle_Graphic2d_Text::DownCast;
%rename(DownCast) Handle_Graphic2d_OverrideColorError::DownCast;
%rename(DownCast) Handle_Graphic2d_ViewMapping::DownCast;
%rename(DownCast) Handle_Graphic2d_HSequenceOfVertex::DownCast;
%rename(DownCast) Handle_Graphic2d_View::DownCast;
%rename(DownCast) Handle_Graphic2d_GraphicObject::DownCast;
%rename(DownCast) Handle_Graphic2d_BufferList::DownCast;
%rename(DownCast) Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer::DownCast;
%rename(DownCast) Handle_Graphic2d_Circle::DownCast;
%rename(DownCast) Handle_Graphic2d_TextDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_DetectionColorError::DownCast;
%rename(DownCast) Handle_Graphic2d_HArray1OfVertex::DownCast;
%rename(DownCast) Handle_Graphic2d_Segment::DownCast;
%rename(DownCast) Handle_Graphic2d_HSequenceOfPrimitives::DownCast;
%rename(DownCast) Handle_Graphic2d_CircleDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_MarkerDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_SetOfPolylines::DownCast;
%rename(DownCast) Handle_Graphic2d_SegmentDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_SetOfMarkers::DownCast;
%rename(DownCast) Handle_Graphic2d_DisplayList::DownCast;
%rename(DownCast) Handle_Graphic2d_HidingGraphicObject::DownCast;
%rename(DownCast) Handle_Graphic2d_InfiniteLineDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_PolylineDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_SequenceNodeOfSequenceOfVertex::DownCast;
%rename(DownCast) Handle_Graphic2d_Paragraph::DownCast;
%rename(DownCast) Handle_Graphic2d_TransientManager::DownCast;
%rename(DownCast) Handle_Graphic2d_ImageDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_InfiniteLine::DownCast;
%rename(DownCast) Handle_Graphic2d_Ellips::DownCast;
%rename(DownCast) Handle_Graphic2d_HidingText::DownCast;
%rename(DownCast) Handle_Graphic2d_DrawerDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_Buffer::DownCast;
%rename(DownCast) Handle_Graphic2d_TransientDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_Marker::DownCast;
%rename(DownCast) Handle_Graphic2d_FramedText::DownCast;
%rename(DownCast) Handle_Graphic2d_EllipsDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic2d_CircleMarker::DownCast;
%rename(DownCast) Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject::DownCast;
%rename(DownCast) Handle_Graphic2d_ImageFile::DownCast;
%rename(DownCast) Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives::DownCast;
%rename(Raise) Graphic2d_InfiniteLineDefinitionError::Raise;
%rename(NewInstance) Graphic2d_InfiniteLineDefinitionError::NewInstance;
%rename(Raise) Graphic2d_PolylineDefinitionError::Raise;
%rename(NewInstance) Graphic2d_PolylineDefinitionError::NewInstance;
%rename(Retrieve) Graphic2d_Polyline::Retrieve;
%rename(Retrieve) Graphic2d_PolylineMarker::Retrieve;
%rename(SetSmallSize) Graphic2d_Image::SetSmallSize;
%rename(SmallSize) Graphic2d_Image::SmallSize;
%rename(Raise) Graphic2d_TextDefinitionError::Raise;
%rename(NewInstance) Graphic2d_TextDefinitionError::NewInstance;
%rename(Raise) Graphic2d_SegmentDefinitionError::Raise;
%rename(NewInstance) Graphic2d_SegmentDefinitionError::NewInstance;
%rename(Values) Graphic2d_ImageFile::Values;
%rename(SwapLong) Graphic2d_ImageFile::SwapLong;
%rename(Retrieve) Graphic2d_InfiniteLine::Retrieve;
%rename(Raise) Graphic2d_EllipsDefinitionError::Raise;
%rename(NewInstance) Graphic2d_EllipsDefinitionError::NewInstance;
%rename(Raise) Graphic2d_OverrideColorError::Raise;
%rename(NewInstance) Graphic2d_OverrideColorError::NewInstance;
%rename(Raise) Graphic2d_ImageDefinitionError::Raise;
%rename(NewInstance) Graphic2d_ImageDefinitionError::NewInstance;
%rename(Raise) Graphic2d_DetectionColorError::Raise;
%rename(NewInstance) Graphic2d_DetectionColorError::NewInstance;
%rename(Retrieve) Graphic2d_CircleMarker::Retrieve;
%rename(Raise) Graphic2d_TransientDefinitionError::Raise;
%rename(NewInstance) Graphic2d_TransientDefinitionError::NewInstance;
%rename(Distance) Graphic2d_Vertex::Distance;
%rename(Raise) Graphic2d_DrawerDefinitionError::Raise;
%rename(NewInstance) Graphic2d_DrawerDefinitionError::NewInstance;
%rename(Retrieve) Graphic2d_Segment::Retrieve;
%rename(Retrieve) Graphic2d_EllipsMarker::Retrieve;
%rename(Raise) Graphic2d_CircleDefinitionError::Raise;
%rename(NewInstance) Graphic2d_CircleDefinitionError::NewInstance;
%rename(Retrieve) Graphic2d_Ellips::Retrieve;
%rename(Retrieve) Graphic2d_Circle::Retrieve;
%rename(Raise) Graphic2d_MarkerDefinitionError::Raise;
%rename(NewInstance) Graphic2d_MarkerDefinitionError::NewInstance;

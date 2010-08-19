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
%rename(downcast) Handle_Prs3d_Drawer::DownCast;
%rename(downcast) Handle_Prs3d_BasicAspect::DownCast;
%rename(downcast) Handle_Prs3d_PlaneSet::DownCast;
%rename(downcast) Handle_Prs3d_CompositeAspect::DownCast;
%rename(downcast) Handle_Prs3d_LengthAspect::DownCast;
%rename(downcast) Handle_Prs3d_ShadingAspect::DownCast;
%rename(downcast) Handle_Prs3d_ArrowAspect::DownCast;
%rename(downcast) Handle_Prs3d_Projector::DownCast;
%rename(downcast) Handle_Prs3d_AngleAspect::DownCast;
%rename(downcast) Handle_Prs3d_LineAspect::DownCast;
%rename(downcast) Handle_Prs3d_PointAspect::DownCast;
%rename(downcast) Handle_Prs3d_InvalidAngle::DownCast;
%rename(downcast) Handle_Prs3d_DatumAspect::DownCast;
%rename(downcast) Handle_Prs3d_PlaneAspect::DownCast;
%rename(downcast) Handle_Prs3d_RadiusAspect::DownCast;
%rename(downcast) Handle_Prs3d_Presentation::DownCast;
%rename(downcast) Handle_Prs3d_IsoAspect::DownCast;
%rename(downcast) Handle_Prs3d_TextAspect::DownCast;
%rename(currentgroup) Prs3d_Root::CurrentGroup;
%rename(newgroup) Prs3d_Root::NewGroup;
%rename(draw) Prs3d_Text::Draw;
%rename(draw) Prs3d_Text::Draw;
%rename(draw) Prs3d_AnglePresentation::Draw;
%rename(draw) Prs3d_LengthPresentation::Draw;
%rename(matchsegment) Prs3d::MatchSegment;
%rename(raise) Prs3d_InvalidAngle::Raise;
%rename(raise) Prs3d_InvalidAngle::Raise;
%rename(newinstance) Prs3d_InvalidAngle::NewInstance;
%rename(draw) Prs3d_Arrow::Draw;
%rename(fill) Prs3d_Arrow::Fill;

/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_Prs3d_Drawer::DownCast;
%rename(DownCast) Handle_Prs3d_BasicAspect::DownCast;
%rename(DownCast) Handle_Prs3d_PlaneSet::DownCast;
%rename(DownCast) Handle_Prs3d_CompositeAspect::DownCast;
%rename(DownCast) Handle_Prs3d_LengthAspect::DownCast;
%rename(DownCast) Handle_Prs3d_RadiusAspect::DownCast;
%rename(DownCast) Handle_Prs3d_LineAspect::DownCast;
%rename(DownCast) Handle_Prs3d_IsoAspect::DownCast;
%rename(DownCast) Handle_Prs3d_ShadingAspect::DownCast;
%rename(DownCast) Handle_Prs3d_PointAspect::DownCast;
%rename(DownCast) Handle_Prs3d_ArrowAspect::DownCast;
%rename(DownCast) Handle_Prs3d_Projector::DownCast;
%rename(DownCast) Handle_Prs3d_InvalidAngle::DownCast;
%rename(DownCast) Handle_Prs3d_DatumAspect::DownCast;
%rename(DownCast) Handle_Prs3d_PlaneAspect::DownCast;
%rename(DownCast) Handle_Prs3d_AngleAspect::DownCast;
%rename(DownCast) Handle_Prs3d_Presentation::DownCast;
%rename(DownCast) Handle_Prs3d_TextAspect::DownCast;
%rename(CurrentGroup) Prs3d_Root::CurrentGroup;
%rename(NewGroup) Prs3d_Root::NewGroup;
%rename(Draw) Prs3d_Arrow::Draw;
%rename(Fill) Prs3d_Arrow::Fill;
%rename(Draw) Prs3d_LengthPresentation::Draw;
%rename(MatchSegment) Prs3d::MatchSegment;
%rename(Draw) Prs3d_AnglePresentation::Draw;
%rename(Raise) Prs3d_InvalidAngle::Raise;
%rename(NewInstance) Prs3d_InvalidAngle::NewInstance;
%rename(Draw) Prs3d_Text::Draw;

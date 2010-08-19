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
%rename(downcast) Handle_V3d_Light::DownCast;
%rename(downcast) Handle_V3d_PositionLight::DownCast;
%rename(downcast) Handle_V3d_PositionalLight::DownCast;
%rename(downcast) Handle_V3d_UnMapped::DownCast;
%rename(downcast) Handle_V3d_RectangularGrid::DownCast;
%rename(downcast) Handle_V3d_LayerMgr::DownCast;
%rename(downcast) Handle_V3d_SpotLight::DownCast;
%rename(downcast) Handle_V3d_View::DownCast;
%rename(downcast) Handle_V3d_PerspectiveView::DownCast;
%rename(downcast) Handle_V3d_Plane::DownCast;
%rename(downcast) Handle_V3d_Camera::DownCast;
%rename(downcast) Handle_V3d_OrthographicView::DownCast;
%rename(downcast) Handle_V3d_Viewer::DownCast;
%rename(downcast) Handle_V3d_ColorScale::DownCast;
%rename(downcast) Handle_V3d_DirectionalLight::DownCast;
%rename(downcast) Handle_V3d_CircularGrid::DownCast;
%rename(downcast) Handle_V3d_AmbientLight::DownCast;
%rename(getprojaxis) V3d::GetProjAxis;
%rename(arrowofradius) V3d::ArrowOfRadius;
%rename(circleinplane) V3d::CircleInPlane;
%rename(switchviewsinwindow) V3d::SwitchViewsinWindow;
%rename(drawsphere) V3d::DrawSphere;
%rename(pickgrid) V3d::PickGrid;
%rename(setplane) V3d::SetPlane;
%rename(raise) V3d_UnMapped::Raise;
%rename(raise) V3d_UnMapped::Raise;
%rename(newinstance) V3d_UnMapped::NewInstance;

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
%rename(DownCast) Handle_V3d_UnMapped::DownCast;
%rename(DownCast) Handle_V3d_View::DownCast;
%rename(DownCast) Handle_V3d_PerspectiveView::DownCast;
%rename(DownCast) Handle_V3d_OrthographicView::DownCast;
%rename(DownCast) Handle_V3d_ColorScaleLayerItem::DownCast;
%rename(DownCast) Handle_V3d_Light::DownCast;
%rename(DownCast) Handle_V3d_PositionLight::DownCast;
%rename(DownCast) Handle_V3d_SpotLight::DownCast;
%rename(DownCast) Handle_V3d_CircularGrid::DownCast;
%rename(DownCast) Handle_V3d_Plane::DownCast;
%rename(DownCast) Handle_V3d_LayerMgr::DownCast;
%rename(DownCast) Handle_V3d_Viewer::DownCast;
%rename(DownCast) Handle_V3d_ColorScale::DownCast;
%rename(DownCast) Handle_V3d_DirectionalLight::DownCast;
%rename(DownCast) Handle_V3d_RectangularGrid::DownCast;
%rename(DownCast) Handle_V3d_AmbientLight::DownCast;
%rename(DownCast) Handle_V3d_PositionalLight::DownCast;
%rename(GetProjAxis) V3d::GetProjAxis;
%rename(ArrowOfRadius) V3d::ArrowOfRadius;
%rename(CircleInPlane) V3d::CircleInPlane;
%rename(SwitchViewsinWindow) V3d::SwitchViewsinWindow;
%rename(DrawSphere) V3d::DrawSphere;
%rename(PickGrid) V3d::PickGrid;
%rename(SetPlane) V3d::SetPlane;
%rename(Raise) V3d_UnMapped::Raise;
%rename(NewInstance) V3d_UnMapped::NewInstance;

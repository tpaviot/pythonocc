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
%rename(DownCast) Handle_Visual3d_SequenceNodeOfSequenceOfPickPath::DownCast;
%rename(DownCast) Handle_Visual3d_PickError::DownCast;
%rename(DownCast) Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane::DownCast;
%rename(DownCast) Handle_Visual3d_ZClippingDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_TransformError::DownCast;
%rename(DownCast) Handle_Visual3d_LightDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_HSetOfView::DownCast;
%rename(DownCast) Handle_Visual3d_TransientManager::DownCast;
%rename(DownCast) Handle_Visual3d_ViewManager::DownCast;
%rename(DownCast) Handle_Visual3d_LayerItem::DownCast;
%rename(DownCast) Handle_Visual3d_LayerDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_HSetOfClipPlane::DownCast;
%rename(DownCast) Handle_Visual3d_ListNodeOfSetListOfSetOfLight::DownCast;
%rename(DownCast) Handle_Visual3d_Light::DownCast;
%rename(DownCast) Handle_Visual3d_HSequenceOfPickPath::DownCast;
%rename(DownCast) Handle_Visual3d_Layer::DownCast;
%rename(DownCast) Handle_Visual3d_ViewMappingDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_ClipDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_HSetOfLight::DownCast;
%rename(DownCast) Handle_Visual3d_DepthCueingDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_ClipPlane::DownCast;
%rename(DownCast) Handle_Visual3d_ListNodeOfSetListOfSetOfView::DownCast;
%rename(DownCast) Handle_Visual3d_ViewManagerDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_TransientDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_ContextPickDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_ViewOrientationDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_ViewDefinitionError::DownCast;
%rename(DownCast) Handle_Visual3d_View::DownCast;
%rename(Raise) Visual3d_ViewMappingDefinitionError::Raise;
%rename(NewInstance) Visual3d_ViewMappingDefinitionError::NewInstance;
%rename(Raise) Visual3d_TransformError::Raise;
%rename(NewInstance) Visual3d_TransformError::NewInstance;
%rename(Raise) Visual3d_ContextPickDefinitionError::Raise;
%rename(NewInstance) Visual3d_ContextPickDefinitionError::NewInstance;
%rename(Raise) Visual3d_DepthCueingDefinitionError::Raise;
%rename(NewInstance) Visual3d_DepthCueingDefinitionError::NewInstance;
%rename(Raise) Visual3d_TransientDefinitionError::Raise;
%rename(NewInstance) Visual3d_TransientDefinitionError::NewInstance;
%rename(Raise) Visual3d_ViewOrientationDefinitionError::Raise;
%rename(NewInstance) Visual3d_ViewOrientationDefinitionError::NewInstance;
%rename(Raise) Visual3d_ViewManagerDefinitionError::Raise;
%rename(NewInstance) Visual3d_ViewManagerDefinitionError::NewInstance;
%rename(Raise) Visual3d_ViewDefinitionError::Raise;
%rename(NewInstance) Visual3d_ViewDefinitionError::NewInstance;
%rename(Raise) Visual3d_ClipDefinitionError::Raise;
%rename(NewInstance) Visual3d_ClipDefinitionError::NewInstance;
%rename(Raise) Visual3d_LayerDefinitionError::Raise;
%rename(NewInstance) Visual3d_LayerDefinitionError::NewInstance;
%rename(Raise) Visual3d_ZClippingDefinitionError::Raise;
%rename(NewInstance) Visual3d_ZClippingDefinitionError::NewInstance;
%rename(Limit) Visual3d_Light::Limit;
%rename(Raise) Visual3d_LightDefinitionError::Raise;
%rename(NewInstance) Visual3d_LightDefinitionError::NewInstance;
%rename(BeginDraw) Visual3d_TransientManager::BeginDraw;
%rename(EndDraw) Visual3d_TransientManager::EndDraw;
%rename(ClearDraw) Visual3d_TransientManager::ClearDraw;
%rename(BeginAddDraw) Visual3d_TransientManager::BeginAddDraw;
%rename(EndAddDraw) Visual3d_TransientManager::EndAddDraw;
%rename(BeginPolyline) Visual3d_TransientManager::BeginPolyline;
%rename(BeginPolygon) Visual3d_TransientManager::BeginPolygon;
%rename(BeginTriangleMesh) Visual3d_TransientManager::BeginTriangleMesh;
%rename(BeginMarker) Visual3d_TransientManager::BeginMarker;
%rename(BeginBezier) Visual3d_TransientManager::BeginBezier;
%rename(AddVertex) Visual3d_TransientManager::AddVertex;
%rename(ClosePrimitive) Visual3d_TransientManager::ClosePrimitive;
%rename(DrawText) Visual3d_TransientManager::DrawText;
%rename(DrawStructure) Visual3d_TransientManager::DrawStructure;
%rename(SetPrimitivesAspect) Visual3d_TransientManager::SetPrimitivesAspect;
%rename(MinMaxValues) Visual3d_TransientManager::MinMaxValues;
%rename(SetTransform) Visual3d_TransientManager::SetTransform;
%rename(Raise) Visual3d_PickError::Raise;
%rename(NewInstance) Visual3d_PickError::NewInstance;
%rename(Limit) Visual3d_ClipPlane::Limit;

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
%rename(downcast) Handle_Visual3d_SequenceNodeOfSequenceOfPickPath::DownCast;
%rename(downcast) Handle_Visual3d_PickError::DownCast;
%rename(downcast) Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane::DownCast;
%rename(downcast) Handle_Visual3d_ZClippingDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_TransformError::DownCast;
%rename(downcast) Handle_Visual3d_LightDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_TransientManager::DownCast;
%rename(downcast) Handle_Visual3d_ViewManager::DownCast;
%rename(downcast) Handle_Visual3d_LayerDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_HSetOfClipPlane::DownCast;
%rename(downcast) Handle_Visual3d_ListNodeOfSetListOfSetOfLight::DownCast;
%rename(downcast) Handle_Visual3d_Light::DownCast;
%rename(downcast) Handle_Visual3d_HSequenceOfPickPath::DownCast;
%rename(downcast) Handle_Visual3d_Layer::DownCast;
%rename(downcast) Handle_Visual3d_ViewMappingDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_ClipDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_HSetOfView::DownCast;
%rename(downcast) Handle_Visual3d_HSetOfLight::DownCast;
%rename(downcast) Handle_Visual3d_DepthCueingDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_ClipPlane::DownCast;
%rename(downcast) Handle_Visual3d_ListNodeOfSetListOfSetOfView::DownCast;
%rename(downcast) Handle_Visual3d_ViewManagerDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_TransientDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_ContextPickDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_ViewOrientationDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_ViewDefinitionError::DownCast;
%rename(downcast) Handle_Visual3d_View::DownCast;
%rename(raise) Visual3d_ViewMappingDefinitionError::Raise;
%rename(raise) Visual3d_ViewMappingDefinitionError::Raise;
%rename(newinstance) Visual3d_ViewMappingDefinitionError::NewInstance;
%rename(raise) Visual3d_TransformError::Raise;
%rename(raise) Visual3d_TransformError::Raise;
%rename(newinstance) Visual3d_TransformError::NewInstance;
%rename(raise) Visual3d_ContextPickDefinitionError::Raise;
%rename(raise) Visual3d_ContextPickDefinitionError::Raise;
%rename(newinstance) Visual3d_ContextPickDefinitionError::NewInstance;
%rename(raise) Visual3d_DepthCueingDefinitionError::Raise;
%rename(raise) Visual3d_DepthCueingDefinitionError::Raise;
%rename(newinstance) Visual3d_DepthCueingDefinitionError::NewInstance;
%rename(raise) Visual3d_TransientDefinitionError::Raise;
%rename(raise) Visual3d_TransientDefinitionError::Raise;
%rename(newinstance) Visual3d_TransientDefinitionError::NewInstance;
%rename(raise) Visual3d_ViewOrientationDefinitionError::Raise;
%rename(raise) Visual3d_ViewOrientationDefinitionError::Raise;
%rename(newinstance) Visual3d_ViewOrientationDefinitionError::NewInstance;
%rename(raise) Visual3d_ViewManagerDefinitionError::Raise;
%rename(raise) Visual3d_ViewManagerDefinitionError::Raise;
%rename(newinstance) Visual3d_ViewManagerDefinitionError::NewInstance;
%rename(raise) Visual3d_ViewDefinitionError::Raise;
%rename(raise) Visual3d_ViewDefinitionError::Raise;
%rename(newinstance) Visual3d_ViewDefinitionError::NewInstance;
%rename(raise) Visual3d_ClipDefinitionError::Raise;
%rename(raise) Visual3d_ClipDefinitionError::Raise;
%rename(newinstance) Visual3d_ClipDefinitionError::NewInstance;
%rename(raise) Visual3d_LayerDefinitionError::Raise;
%rename(raise) Visual3d_LayerDefinitionError::Raise;
%rename(newinstance) Visual3d_LayerDefinitionError::NewInstance;
%rename(raise) Visual3d_ZClippingDefinitionError::Raise;
%rename(raise) Visual3d_ZClippingDefinitionError::Raise;
%rename(newinstance) Visual3d_ZClippingDefinitionError::NewInstance;
%rename(limit) Visual3d_Light::Limit;
%rename(raise) Visual3d_LightDefinitionError::Raise;
%rename(raise) Visual3d_LightDefinitionError::Raise;
%rename(newinstance) Visual3d_LightDefinitionError::NewInstance;
%rename(begindraw) Visual3d_TransientManager::BeginDraw;
%rename(enddraw) Visual3d_TransientManager::EndDraw;
%rename(cleardraw) Visual3d_TransientManager::ClearDraw;
%rename(beginadddraw) Visual3d_TransientManager::BeginAddDraw;
%rename(endadddraw) Visual3d_TransientManager::EndAddDraw;
%rename(beginpolyline) Visual3d_TransientManager::BeginPolyline;
%rename(beginpolygon) Visual3d_TransientManager::BeginPolygon;
%rename(begintrianglemesh) Visual3d_TransientManager::BeginTriangleMesh;
%rename(beginmarker) Visual3d_TransientManager::BeginMarker;
%rename(beginbezier) Visual3d_TransientManager::BeginBezier;
%rename(addvertex) Visual3d_TransientManager::AddVertex;
%rename(addvertex) Visual3d_TransientManager::AddVertex;
%rename(addvertex) Visual3d_TransientManager::AddVertex;
%rename(closeprimitive) Visual3d_TransientManager::ClosePrimitive;
%rename(drawtext) Visual3d_TransientManager::DrawText;
%rename(drawstructure) Visual3d_TransientManager::DrawStructure;
%rename(setprimitivesaspect) Visual3d_TransientManager::SetPrimitivesAspect;
%rename(setprimitivesaspect) Visual3d_TransientManager::SetPrimitivesAspect;
%rename(setprimitivesaspect) Visual3d_TransientManager::SetPrimitivesAspect;
%rename(setprimitivesaspect) Visual3d_TransientManager::SetPrimitivesAspect;
%rename(minmaxvalues) Visual3d_TransientManager::MinMaxValues;
%rename(minmaxvalues) Visual3d_TransientManager::MinMaxValues;
%rename(settransform) Visual3d_TransientManager::SetTransform;
%rename(raise) Visual3d_PickError::Raise;
%rename(raise) Visual3d_PickError::Raise;
%rename(newinstance) Visual3d_PickError::NewInstance;
%rename(limit) Visual3d_ClipPlane::Limit;

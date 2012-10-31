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
%{

// Headers necessary to define wrapped classes.

#include<Handle_Visual3d_ClipDefinitionError.hxx>
#include<Handle_Visual3d_ClipPlane.hxx>
#include<Handle_Visual3d_ContextPickDefinitionError.hxx>
#include<Handle_Visual3d_DepthCueingDefinitionError.hxx>
#include<Handle_Visual3d_HSequenceOfPickPath.hxx>
#include<Handle_Visual3d_HSetOfClipPlane.hxx>
#include<Handle_Visual3d_HSetOfLight.hxx>
#include<Handle_Visual3d_HSetOfView.hxx>
#include<Handle_Visual3d_Layer.hxx>
#include<Handle_Visual3d_LayerDefinitionError.hxx>
#include<Handle_Visual3d_LayerItem.hxx>
#include<Handle_Visual3d_Light.hxx>
#include<Handle_Visual3d_LightDefinitionError.hxx>
#include<Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane.hxx>
#include<Handle_Visual3d_ListNodeOfSetListOfSetOfLight.hxx>
#include<Handle_Visual3d_ListNodeOfSetListOfSetOfView.hxx>
#include<Handle_Visual3d_PickError.hxx>
#include<Handle_Visual3d_SequenceNodeOfSequenceOfPickPath.hxx>
#include<Handle_Visual3d_TransformError.hxx>
#include<Handle_Visual3d_TransientDefinitionError.hxx>
#include<Handle_Visual3d_TransientManager.hxx>
#include<Handle_Visual3d_View.hxx>
#include<Handle_Visual3d_ViewDefinitionError.hxx>
#include<Handle_Visual3d_ViewManager.hxx>
#include<Handle_Visual3d_ViewManagerDefinitionError.hxx>
#include<Handle_Visual3d_ViewMappingDefinitionError.hxx>
#include<Handle_Visual3d_ViewOrientationDefinitionError.hxx>
#include<Handle_Visual3d_ZClippingDefinitionError.hxx>
#include<Visual3d_ClipDefinitionError.hxx>
#include<Visual3d_ClipPlane.hxx>
#include<Visual3d_ContextPick.hxx>
#include<Visual3d_ContextPickDefinitionError.hxx>
#include<Visual3d_ContextView.hxx>
#include<Visual3d_DepthCueingDefinitionError.hxx>
#include<Visual3d_HSequenceOfPickPath.hxx>
#include<Visual3d_HSetOfClipPlane.hxx>
#include<Visual3d_HSetOfLight.hxx>
#include<Visual3d_HSetOfView.hxx>
#include<Visual3d_Layer.hxx>
#include<Visual3d_LayerDefinitionError.hxx>
#include<Visual3d_LayerItem.hxx>
#include<Visual3d_Light.hxx>
#include<Visual3d_LightDefinitionError.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfView.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfView.hxx>
#include<Visual3d_NListOfLayerItem.hxx>
#include<Visual3d_PickDescriptor.hxx>
#include<Visual3d_PickError.hxx>
#include<Visual3d_PickPath.hxx>
#include<Visual3d_SequenceNodeOfSequenceOfPickPath.hxx>
#include<Visual3d_SequenceOfPickPath.hxx>
#include<Visual3d_SetIteratorOfSetOfClipPlane.hxx>
#include<Visual3d_SetIteratorOfSetOfLight.hxx>
#include<Visual3d_SetIteratorOfSetOfView.hxx>
#include<Visual3d_SetListOfSetOfClipPlane.hxx>
#include<Visual3d_SetListOfSetOfLight.hxx>
#include<Visual3d_SetListOfSetOfView.hxx>
#include<Visual3d_SetOfClipPlane.hxx>
#include<Visual3d_SetOfLight.hxx>
#include<Visual3d_SetOfView.hxx>
#include<Visual3d_TransformError.hxx>
#include<Visual3d_TransientDefinitionError.hxx>
#include<Visual3d_TransientManager.hxx>
#include<Visual3d_TypeOfAnswer.hxx>
#include<Visual3d_TypeOfBackfacingModel.hxx>
#include<Visual3d_TypeOfLightSource.hxx>
#include<Visual3d_TypeOfModel.hxx>
#include<Visual3d_TypeOfOrder.hxx>
#include<Visual3d_TypeOfProjection.hxx>
#include<Visual3d_TypeOfSurfaceDetail.hxx>
#include<Visual3d_TypeOfVisualization.hxx>
#include<Visual3d_View.hxx>
#include<Visual3d_ViewDefinitionError.hxx>
#include<Visual3d_ViewManager.hxx>
#include<Visual3d_ViewManagerDefinitionError.hxx>
#include<Visual3d_ViewManagerPtr.hxx>
#include<Visual3d_ViewMapping.hxx>
#include<Visual3d_ViewMappingDefinitionError.hxx>
#include<Visual3d_ViewOrientation.hxx>
#include<Visual3d_ViewOrientationDefinitionError.hxx>
#include<Visual3d_ViewPtr.hxx>
#include<Visual3d_ZClippingDefinitionError.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Graphic3d_Structure.hxx>
#include<Graphic3d_Vertex.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_Graphic3d_TextureEnv.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
#include<Handle_Aspect_Window.hxx>
#include<Graphic3d_Vector.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_Graphic3d_DataStructureManager.hxx>
#include<Quantity_Color.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_Graphic3d_AspectLine3d.hxx>
#include<Handle_Graphic3d_AspectFillArea3d.hxx>
#include<Handle_Graphic3d_AspectText3d.hxx>
#include<Handle_Graphic3d_AspectMarker3d.hxx>
#include<Aspect_Background.hxx>
#include<Aspect_GradientBackground.hxx>
#include<TCollection_AsciiString.hxx>
#include<Graphic3d_MapOfStructure.hxx>
#include<Handle_Aspect_GraphicDriver.hxx>
#include<Handle_Graphic3d_Plotter.hxx>
%}

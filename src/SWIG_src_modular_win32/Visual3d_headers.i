/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

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
#include<Visual3d_Light.hxx>
#include<Visual3d_LightDefinitionError.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfView.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfView.hxx>
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

// Additional headers necessary for compilation.

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
#include<Visual3d_Light.hxx>
#include<Visual3d_LightDefinitionError.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListIteratorOfSetListOfSetOfView.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfClipPlane.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfLight.hxx>
#include<Visual3d_ListNodeOfSetListOfSetOfView.hxx>
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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Graphic3d_Structure.hxx>
#include<Standard_SStream.hxx>
#include<Graphic3d_Vertex.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_Graphic3d_TextureEnv.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
#include<Handle_Aspect_Window.hxx>
#include<Graphic3d_Vector.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_Graphic3d_DataStructureManager.hxx>
#include<Quantity_Color.hxx>
#include<Aspect_Background.hxx>
#include<Graphic3d_MapOfStructure.hxx>
#include<Handle_Aspect_GraphicDriver.hxx>
#include<Handle_Graphic3d_Plotter.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_Graphic3d_AspectLine3d.hxx>
#include<Handle_Graphic3d_AspectFillArea3d.hxx>
#include<Handle_Graphic3d_AspectText3d.hxx>
#include<Handle_Graphic3d_AspectMarker3d.hxx>
%}

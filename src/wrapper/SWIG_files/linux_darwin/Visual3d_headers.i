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

#include<Image.hxx>
#include<Image_AlienPixMap.hxx>
#include<Image_AveragePixelInterpolation.hxx>
#include<Image_BalancedPixelInterpolation.hxx>
#include<Image_BilinearPixelInterpolation.hxx>
#include<Image_Color.hxx>
#include<Image_ColorImage.hxx>
#include<Image_ColorPixelDataMap.hxx>
#include<Image_ColorPixelMapHasher.hxx>
#include<Image_Convertor.hxx>
#include<Image_DColorImage.hxx>
#include<Image_DIndexedImage.hxx>
#include<Image_DataMapIteratorOfColorPixelDataMap.hxx>
#include<Image_DataMapIteratorOfLookupTable.hxx>
#include<Image_DataMapNodeOfColorPixelDataMap.hxx>
#include<Image_DataMapNodeOfLookupTable.hxx>
#include<Image_Diff.hxx>
#include<Image_DitheringMethod.hxx>
#include<Image_FlipType.hxx>
#include<Image_Image.hxx>
#include<Image_IndexPixelMapHasher.hxx>
#include<Image_LookupTable.hxx>
#include<Image_PixMap.hxx>
#include<Image_PixMapData.hxx>
#include<Image_PixMap_Handle.hxx>
#include<Image_PixelAddress.hxx>
#include<Image_PixelFieldOfDColorImage.hxx>
#include<Image_PixelInterpolation.hxx>
#include<Image_PixelRowOfDColorImage.hxx>
#include<Image_PixelRowOfDIndexedImage.hxx>
#include<Image_PlanarPixelInterpolation.hxx>
#include<Image_PseudoColorImage.hxx>
#include<Image_TypeOfImage.hxx>
#include<OSD.hxx>
#include<OSD_Chronometer.hxx>
#include<OSD_Directory.hxx>
#include<OSD_DirectoryIterator.hxx>
#include<OSD_Disk.hxx>
#include<OSD_Environment.hxx>
#include<OSD_EnvironmentIterator.hxx>
#include<OSD_Error.hxx>
#include<OSD_ErrorList.hxx>
#include<OSD_Exception.hxx>
#include<OSD_Exception_ACCESS_VIOLATION.hxx>
#include<OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include<OSD_Exception_CTRL_BREAK.hxx>
#include<OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include<OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include<OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include<OSD_Exception_FLT_OVERFLOW.hxx>
#include<OSD_Exception_FLT_STACK_CHECK.hxx>
#include<OSD_Exception_FLT_UNDERFLOW.hxx>
#include<OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include<OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Exception_INT_OVERFLOW.hxx>
#include<OSD_Exception_INVALID_DISPOSITION.hxx>
#include<OSD_Exception_IN_PAGE_ERROR.hxx>
#include<OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include<OSD_Exception_PRIV_INSTRUCTION.hxx>
#include<OSD_Exception_STACK_OVERFLOW.hxx>
#include<OSD_Exception_STATUS_NO_MEMORY.hxx>
#include<OSD_File.hxx>
#include<OSD_FileIterator.hxx>
#include<OSD_FileNode.hxx>
#include<OSD_FromWhere.hxx>
#include<OSD_Function.hxx>
#include<OSD_Host.hxx>
#include<OSD_KindFile.hxx>
#include<OSD_LoadMode.hxx>
#include<OSD_LockType.hxx>
#include<OSD_MAllocHook.hxx>
#include<OSD_MailBox.hxx>
#include<OSD_MemInfo.hxx>
#include<OSD_OEMType.hxx>
#include<OSD_OSDError.hxx>
#include<OSD_OpenMode.hxx>
#include<OSD_PThread.hxx>
#include<OSD_Path.hxx>
#include<OSD_PerfMeter.hxx>
#include<OSD_Printer.hxx>
#include<OSD_Process.hxx>
#include<OSD_Protection.hxx>
#include<OSD_SIGBUS.hxx>
#include<OSD_SIGHUP.hxx>
#include<OSD_SIGILL.hxx>
#include<OSD_SIGINT.hxx>
#include<OSD_SIGKILL.hxx>
#include<OSD_SIGQUIT.hxx>
#include<OSD_SIGSEGV.hxx>
#include<OSD_SIGSYS.hxx>
#include<OSD_Semaphore.hxx>
#include<OSD_SharedLibrary.hxx>
#include<OSD_SharedMemory.hxx>
#include<OSD_Signal.hxx>
#include<OSD_Signals.hxx>
#include<OSD_SingleProtection.hxx>
#include<OSD_SysType.hxx>
#include<OSD_Thread.hxx>
#include<OSD_ThreadFunction.hxx>
#include<OSD_Timer.hxx>
#include<OSD_WhoAmI.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Graphic3d_Structure.hxx>
#include<Graphic3d_Vertex.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_Graphic3d_TextureEnv.hxx>
#include<Graphic3d_Vector.hxx>
#include<Quantity_Color.hxx>
#include<Aspect_Background.hxx>
#include<Aspect_GradientBackground.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_Aspect_Window.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Graphic3d_MapOfStructure.hxx>
#include<Handle_Graphic3d_Plotter.hxx>
#include<Image_PixMap.hxx>
#include<Handle_Graphic3d_GraphicDriver.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<Graphic3d_CView.hxx>
#include<Handle_Graphic3d_DataStructureManager.hxx>
%}

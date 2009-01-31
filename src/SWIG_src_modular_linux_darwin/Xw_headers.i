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

#include<Xw_TypeMap.hxx>
#include<Xw_TypeOfMapping.hxx>
#include<Xw_ColorMap.hxx>
#include<Xw_WindowQuality.hxx>
#include<Xw_Window.hxx>
#include<Xw_ListOfIndexs.hxx>
#include<Xw_GraphicDevice.hxx>
#include<Xw_IconBox.hxx>
#include<Xw_Driver.hxx>
#include<Xw_TypeOfVisual.hxx>
#include<Xw_ListOfMFTSizes.hxx>
#include<Xw_FontMap.hxx>
#include<Xw_HListOfIndexs.hxx>
#include<Xw_WidthMap.hxx>
#include<Xw_PixMap.hxx>
#include<Xw_TextManager.hxx>
#include<Xw_MarkMap.hxx>
#include<Xw_Cextern.hxx>
#include<Xw_HListOfMFTFonts.hxx>
#include<Xw_ListOfMFTFonts.hxx>
#include<Xw_HListOfMFTSizes.hxx>
#include<Xw.hxx>
#include<Handle_Xw_ColorMap.hxx>
#include<Handle_Xw_IconBox.hxx>
#include<Handle_Xw_TextManager.hxx>
#include<Handle_Xw_HListOfMFTFonts.hxx>
#include<Handle_Xw_GraphicDevice.hxx>
#include<Handle_Xw_WidthMap.hxx>
#include<Handle_Xw_MarkMap.hxx>
#include<Handle_Xw_Driver.hxx>
#include<Handle_Xw_PixMap.hxx>
#include<Handle_Xw_TypeMap.hxx>
#include<Handle_Xw_Window.hxx>
#include<Handle_Xw_HListOfMFTSizes.hxx>
#include<Handle_Xw_HListOfIndexs.hxx>
#include<Handle_Xw_FontMap.hxx>

// Additional headers necessary for compilation.

#include<OSD_Exception_INT_OVERFLOW.hxx>
#include<OSD_DirectoryIterator.hxx>
#include<OSD_Protection.hxx>
#include<OSD_Exception_IN_PAGE_ERROR.hxx>
#include<OSD_Exception_FLT_UNDERFLOW.hxx>
#include<OSD_EnvironmentIterator.hxx>
#include<OSD_WhoAmI.hxx>
#include<OSD_Path.hxx>
#include<OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx>
#include<OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Timer.hxx>
#include<OSD_Exception_FLT_STACK_CHECK.hxx>
#include<OSD_SharedMemory.hxx>
#include<OSD_Exception_FLT_DENORMAL_OPERAND.hxx>
#include<OSD_Exception_INVALID_DISPOSITION.hxx>
#include<OSD_SharedLibrary.hxx>
#include<OSD_ErrorList.hxx>
#include<OSD_SIGSEGV.hxx>
#include<OSD_OEMType.hxx>
#include<OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx>
#include<OSD_Disk.hxx>
#include<OSD_MailBox.hxx>
#include<OSD_Exception_PRIV_INSTRUCTION.hxx>
#include<OSD_Host.hxx>
#include<OSD_Function.hxx>
#include<OSD_LoadMode.hxx>
#include<OSD_Signal.hxx>
#include<OSD_SIGINT.hxx>
#include<OSD_Exception_STACK_OVERFLOW.hxx>
#include<OSD_LockType.hxx>
#include<OSD.hxx>
#include<OSD_KindFile.hxx>
#include<OSD_Printer.hxx>
#include<OSD_Error.hxx>
#include<OSD_Directory.hxx>
#include<OSD_SIGILL.hxx>
#include<OSD_Exception_FLT_INVALID_OPERATION.hxx>
#include<OSD_Exception_STATUS_NO_MEMORY.hxx>
#include<OSD_Exception_ACCESS_VIOLATION.hxx>
#include<OSD_Thread.hxx>
#include<OSD_Environment.hxx>
#include<OSD_PThread.hxx>
#include<OSD_OSDError.hxx>
#include<OSD_SIGHUP.hxx>
#include<OSD_Chronometer.hxx>
#include<OSD_Exception_FLT_INEXACT_RESULT.hxx>
#include<OSD_FileIterator.hxx>
#include<OSD_Exception_CTRL_BREAK.hxx>
#include<OSD_Real2String.hxx>
#include<OSD_SIGQUIT.hxx>
#include<OSD_Exception_FLT_OVERFLOW.hxx>
#include<OSD_OpenMode.hxx>
#include<OSD_FileNode.hxx>
#include<OSD_SingleProtection.hxx>
#include<OSD_Process.hxx>
#include<OSD_SIGBUS.hxx>
#include<OSD_Exception_ILLEGAL_INSTRUCTION.hxx>
#include<OSD_File.hxx>
#include<OSD_Exception_INT_DIVIDE_BY_ZERO.hxx>
#include<OSD_Exception.hxx>
#include<OSD_SIGSYS.hxx>
#include<OSD_Signals.hxx>
#include<OSD_ThreadFunction.hxx>
#include<OSD_SysType.hxx>
#include<OSD_Semaphore.hxx>
#include<OSD_FromWhere.hxx>
#include<OSD_SIGKILL.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_MFT_FontManager.hxx>
#include<TShort_Array1OfShortReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Aspect_ColorMapEntry.hxx>
#include<Handle_Aspect_ColorMap.hxx>
#include<Quantity_Color.hxx>
#include<Aspect_FontMapEntry.hxx>
#include<Handle_Aspect_FontMap.hxx>
#include<Handle_Aspect_Window.hxx>
#include<Aspect_Background.hxx>
#include<Aspect_WidthMapEntry.hxx>
#include<Handle_Aspect_WidthMap.hxx>
#include<Aspect_TypeMapEntry.hxx>
#include<Handle_Aspect_TypeMap.hxx>
#include<Handle_Aspect_GraphicDriver.hxx>
#include<Aspect_MarkMapEntry.hxx>
#include<Handle_Aspect_MarkMap.hxx>
%}

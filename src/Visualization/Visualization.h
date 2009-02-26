/*
##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
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

#if !defined __OCC3d_Renderer__
#define __OCC3d_Renderer__

#ifdef WNT
#include <WNT_Window.hxx>
#include <WNT_WDriver.hxx>
#include <Graphic3d_WNTGraphicDevice.hxx>
#include <WNT_GraphicDevice.hxx>
#else
#include <Xw_Window.hxx>
#include <Xw_Driver.hxx>
#include <Graphic3d_GraphicDevice.hxx>
#include <Xw_GraphicDevice.hxx>
#endif

#include <AIS_InteractiveContext.hxx>
#include <NIS_InteractiveContext.hxx>
#include <NIS_View.hxx>
#include <AIS2D_InteractiveContext.hxx>
#include <BRepPrimAPI_MakeBox.hxx>
#include <Graphic3d_MaterialAspect.hxx>
#include <V3d_Viewer.hxx>
#include <V3d_View.hxx>
#include <V2d_Viewer.hxx>
#include <V2d_View.hxx>
#include <AIS_Shape.hxx>
#include <AIS_TexturedShape.hxx>
#include <Graphic3d_TextureEnv.hxx>
#include <PrsMgr_PresentationManager3d.hxx>
#include <Prs3d_TextAspect.hxx>
#include <Prs3d_Text.hxx>
#include <Prs3d_Presentation.hxx>
#include <Graphic3d_NameOfFont.hxx>
#include <AIS_Drawer.hxx>

class Display3d 
{	
public:
	Standard_EXPORT Display3d();
	Standard_EXPORT virtual ~Display3d();
	Standard_EXPORT void Init(int window_handle);
	Standard_EXPORT Handle_V3d_View& GetView() {return myV3dView;};
	Standard_EXPORT Handle_V3d_Viewer& GetViewer() {return myV3dViewer;};
	Standard_EXPORT Handle_AIS_InteractiveContext GetContext() {return myAISContext;};
	Standard_EXPORT void Test();
    
protected:
   Handle_AIS_InteractiveContext myAISContext;
   Handle_V3d_Viewer myV3dViewer;
   Handle_V3d_View myV3dView;
   #ifdef WNT
   Handle_WNT_Window myWindow;
   Handle_Graphic3d_WNTGraphicDevice gd;
   #else
   Handle_Xw_Window myWindow;
   Handle_Graphic3d_GraphicDevice gd;
   #endif
};

class NISDisplay3d 
{	
public:
	Standard_EXPORT NISDisplay3d();
	Standard_EXPORT virtual ~NISDisplay3d();
	Standard_EXPORT void Init(int window_handle);
	Standard_EXPORT Handle_NIS_View& GetView() {return myNISView;};
	Standard_EXPORT Handle_V3d_Viewer& GetViewer() {return myV3dViewer;};
	Standard_EXPORT Handle_NIS_InteractiveContext GetContext() {return myNISContext;};
	Standard_EXPORT void Test();
    
protected:
   Handle_NIS_InteractiveContext myNISContext;
   Handle_V3d_Viewer myV3dViewer;
   Handle_NIS_View myNISView;
   #ifdef WNT
   Handle_WNT_Window myWindow;
   Handle_Graphic3d_WNTGraphicDevice gd;
   #else
   Handle_Xw_Window myWindow;
   Handle_Graphic3d_GraphicDevice gd;
   #endif
};


class Display2d 
{	
public:
	Standard_EXPORT Display2d();
	Standard_EXPORT virtual ~Display2d();
	Standard_EXPORT void Init(int window_handle);
	Standard_EXPORT Handle_V2d_View& GetView() {return myV2dView;};
	Standard_EXPORT Handle_V2d_Viewer& GetViewer() {return myV2dViewer;};
	Standard_EXPORT Handle_AIS2D_InteractiveContext GetContext() {return myAIS2DContext;};
	Standard_EXPORT void Test();
    
protected:
   Handle_AIS2D_InteractiveContext myAIS2DContext;
   Handle_V2d_Viewer myV2dViewer;
   Handle_V2d_View myV2dView;
   #ifdef WNT
   Handle_WNT_Window myWindow;
   Handle_WNT_GraphicDevice gd;
   Handle_WNT_WDriver myDriver;
   #else
   Handle_Xw_Window myWindow;
   Handle_Graphic3d_GraphicDevice gd;
   Handle_Xw_Driver myDriver;
   #endif
   TopoDS_Shape mySelectedShape;
};

#endif

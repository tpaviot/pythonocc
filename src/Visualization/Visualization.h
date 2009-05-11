/*
##Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

#if !defined __OCC3d_Renderer__
#define __OCC3d_Renderer__

#ifdef WNT
#include <WNT_Window.hxx>
#include <WNT_WDriver.hxx>
#include <Graphic3d_WNTGraphicDevice.hxx>
#include <WNT_GraphicDevice.hxx>
#else
#include <cstdlib>
#include <Xw_Window.hxx>
#include <Xw_Driver.hxx>
#include <Graphic3d_GraphicDevice.hxx>
#include <Xw_GraphicDevice.hxx>
#endif

#include <AIS_InteractiveContext.hxx>
#include <NIS_InteractiveContext.hxx>
#include <NIS_View.hxx>
#include <NIS_Surface.hxx>
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
   Handle_AIS_InteractiveContext myAISContext;
   Handle_V3d_View myV3dView;
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
};

#endif

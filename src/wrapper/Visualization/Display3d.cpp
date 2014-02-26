/*
##Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "Visualization.h"


Display3d::Display3d()
{
}

Display3d::~Display3d()
{
}

static Handle(Graphic3d_GraphicDriver)& GetGraphicDriver()
{
  static Handle(Graphic3d_GraphicDriver) aGraphicDriver;
  return aGraphicDriver;
}

void Display3d::Init(long window_handle)
{
  printf(" ###### 3D rendering pipe initialisation #####\n");
	printf("Display3d class initialization starting ...\n");
	short hi = static_cast<short>(window_handle >> 16);
	short lo = static_cast<short>(window_handle);
  // Create Graphic Device and Window
	#ifdef WNT
      gd = new Graphic3d_WNTGraphicDevice();
      printf("WNT - Graphic device created.\n");
      myWindow = new WNT_Window( gd ,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo));
      printf("WNT window created.\n");
      myWindow->SetFlags(WDF_NOERASEBKGRND); //prevent flickering
  #elif defined(__APPLE__) && !defined(MACOSX_USE_GLX)
      myWindow = new Cocoa_Window (reinterpret_cast<NSView *>(window_handle));
      printf("Cocoa window created.\n");
  #else
      Handle(OpenGl_GraphicDriver) gd;
      gd = new OpenGl_GraphicDriver ();
      printf("Unix/Linux - OpenGl Graphic driver created.\n");
      myWindow =new Xw_Window(gd->GetDisplayConnection(), static_cast<Standard_Integer>(hi),
                              static_cast<Standard_Integer>(lo),Xw_WQ_3DQUALITY);
      printf("Xw_Window created.\n");
  #endif
  // Create graphic driver
    Handle(Aspect_DisplayConnection) aDisplayConnection = new Aspect_DisplayConnection();
    if (GetGraphicDriver().IsNull())
    {
    GetGraphicDriver() = Graphic3d::InitGraphicDriver (aDisplayConnection);
    }
    // Create V3dViewer and V3d_View
    myV3dViewer = new V3d_Viewer(GetGraphicDriver(), (short* const)"viewer");
    printf("Viewer created.\n");
    myV3dViewer->Init();
    printf("Viewer initialized.\n");
    myV3dView = myV3dViewer->CreateView();	
    printf("View created\n");
    myV3dView->SetWindow(myWindow);
    if (!myWindow->IsMapped()) myWindow->Map();
	// Create AISInteractiveViewer
	myAISContext = new AIS_InteractiveContext(myV3dViewer);
	printf("Interactive context created.\n");
  printf("Display3d class successfully initialized.\n");
	printf(" ########################################\n");
}

void Display3d::Test()
{
      BRepPrimAPI_MakeBox S(100,50,40);
      Handle(AIS_Shape) anAISShape = new AIS_Shape(S.Shape());
      myAISContext->Display(anAISShape);
      myV3dView->ZFitAll();
      myV3dView->FitAll();
}

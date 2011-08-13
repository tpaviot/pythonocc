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

#define ZVIEW_SIZE 100

NISDisplay3d::NISDisplay3d()
{
}

NISDisplay3d::~NISDisplay3d()
{
}

void NISDisplay3d::Init(int window_handle)
{
        printf("NISDisplay3d class initialization starting ...\n");
        short hi = static_cast<short>(window_handle >> 16);
	short lo = static_cast<short>(window_handle);       
	#ifdef WNT
	gd = new Graphic3d_WNTGraphicDevice();
	printf("WNT Graphic device created.\n");
        myWindow = new WNT_Window( gd ,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo));
	printf("WNT window created.\n");
	#else
	gd = new Graphic3d_GraphicDevice(std::getenv("DISPLAY"));
	printf("Graphic device created.\n");
        myWindow =new Xw_Window(gd,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo),Xw_WQ_SAMEQUALITY);
	printf("Xw_Window created.\n");
	#endif
	// Create V3dViewer
    	myV3dViewer = new V3d_Viewer( gd , (short* const)"viewer" );
  	printf("Viewer created.\n");
  	myV3dViewer->Init();
	myV3dViewer->SetDefaultLights();
	myV3dViewer->SetLightOn();
	// Create the OCC interactive context and attach the view.
	// Extracted from: http://www.opencascade.org/org/forum/thread_15167/
	myNISContext = new NIS_InteractiveContext();
        myNISContext->SetSelectionMode (NIS_InteractiveContext::Mode_Normal);
        //myNISContext->SetSelectionMode (NIS_InteractiveContext::Mode_Normal);
	printf("NIS Interactive context created.\n");
	if (!myWindow->IsMapped())
		myWindow->Map();
		printf("Window mapped.\n");
	myNISView = new NIS_View(myV3dViewer,myWindow);
        myNISView->SetBackgroundColor(Quantity_NOC_MIDNIGHTBLUE);
	printf("NIS View created.\n");
	myNISContext->AttachView(myNISView);
	printf("Window attached to NISView.\n");
        //myNISView->TriedronDisplay(Aspect_TOTP_LEFT_LOWER,Quantity_NOC_WHITE,0.1, V3d_ZBUFFER);
        myNISView->MustBeResized();
        printf("NISDisplay3d class successfully initialized.\n");
        
}



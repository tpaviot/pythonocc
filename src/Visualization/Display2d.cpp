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

#include "Visualization.h"

Display2d::Display2d()
{
}

Display2d::~Display2d()
{
}

void Display2d::Init(int window_handle)
{
	printf("Display2d class initialization starting ...\n");
	short hi = static_cast<short>(window_handle >> 16);
	short lo = static_cast<short>(window_handle);
	// Create Graphic Device and Window
	#ifdef WNT
	gd = new WNT_GraphicDevice();
	printf("WNT Graphic device created.\n");
	myWindow = new WNT_Window( gd ,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo));
	printf("WNT window created.\n");
	myDriver = new WNT_WDriver(myWindow);
	printf("Driver created.\n");
	#else
	gd = new Graphic3d_GraphicDevice(std::getenv("DISPLAY"),Xw_TOM_READONLY);
	printf("Graphic device created.\n");
	myWindow =new Xw_Window(gd,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo),Xw_WQ_SAMEQUALITY);
	printf("Xw_Window created.\n");
	myDriver = new Xw_Driver(myWindow);
	#endif
	// Create WNT_Window
	if (!myWindow->IsMapped())
		myWindow->Map();
	myWindow->SetFlags(WDF_NOERASEBKGRND);
    myV2dViewer = new V2d_Viewer( gd , (short* const)"" );
    printf("V2d_Viewer created.\n");
	myAIS2DContext = new AIS2D_InteractiveContext(myV2dViewer);
	printf("AIS2D_InteractiveContext created.\n");
	myV2dView = new V2d_View(myDriver, myV2dViewer);
	printf("V2d_View created.\n");
	myV2dViewer->AddView(myV2dView);
	printf("V2d_View add to V2d_Viewer.\n");
}

#include <Graphic2d_Marker.hxx>
#include <AIS2D_InteractiveObject.hxx>

void Display2d::Test()
{
    Handle(AIS2D_InteractiveObject) gr_obj=new AIS2D_InteractiveObject();
    Handle(Graphic2d_Marker) aPoint=new Graphic2d_Marker(gr_obj,1,0.,0.,2,2);//Graphic2d_Vertex aPoint(0.,0.);
    //Handle(AIS2D_InteractiveObject)obj = new AIS2D_InteractiveObject(aPoint);
    //BRepPrimAPI_MakeSphere S(gp_Pnt(200.,300.,200.), 100.);
    //Handle(AIS2D_Shape) anAISShape = new AIS2D_Shape(aPoint);
    //myAISContext->SetColor(anAISShape,Quantity_NOC_AZURE);
    //myAISContext->SetMaterial(anAISShape,Graphic3d_NOM_PLASTIC);
    //myAISContext->SetDisplayMode(anAISShape,1);
    myAIS2DContext->Display(gr_obj);
    //gr_obj->Display();
    //myV2dView->FitAll();

}


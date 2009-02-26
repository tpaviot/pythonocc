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

#include "Visualization.h"

#define ZVIEW_SIZE 100

Display3d::Display3d()
{
}

Display3d::~Display3d()
{
  //Handle(V3d_Viewer) aViewer = myV3dView->Viewer();
  //aViewer->RemoveView(myV3dView);  
}

void Display3d::Init(int window_handle)
{
    printf("Display3d class initialization starting ...\n");
	short hi = static_cast<short>(window_handle >> 16);
	short lo = static_cast<short>(window_handle);
	// Create Graphic Device and Window
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
	// Create V3dViewer and V3d_View
    myV3dViewer = new V3d_Viewer( gd , (short* const)"viewer" );
  	printf("Viewer created.\n");
  	myV3dViewer->Init();
	myV3dViewer->SetDefaultLights();
	myV3dViewer->SetLightOn();
    myV3dView = myV3dViewer->CreateView();	
    myV3dView->SetWindow(myWindow);
    if (!myWindow->IsMapped()) myWindow->Map();
	myV3dView->SetBackgroundColor(Quantity_NOC_MIDNIGHTBLUE);
	myV3dView->SetSize(ZVIEW_SIZE);
	// Create AISInteractiveViewer
	myAISContext = new AIS_InteractiveContext(myV3dViewer);
	printf("Interactive context created.\n");
    myAISContext->UpdateCurrentViewer();
    printf("Display3d class successfully initialized.\n");
}

void Display3d::Test()
{
      //BRepPrimAPI_MakeTorus S(60,10);
      BRepPrimAPI_MakeBox S(100,50,40);
      Handle(AIS_Shape) anAISShape = new AIS_Shape(S.Shape());
      myAISContext->Display(anAISShape);
      myV3dView->ZFitAll();
      myV3dView->FitAll();
}

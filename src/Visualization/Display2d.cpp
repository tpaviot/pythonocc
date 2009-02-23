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
	gd = new Xw_GraphicDevice(std::getenv("DISPLAY"),Xw_TOM_READONLY);
	printf("Graphic device created.\n");
	myWindow =new Xw_Window(gd,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo),Xw_WQ_SAMEQUALITY);
	printf("Xw_Window created.\n");
	myDriver = new Xw_Driver(W);
	#endif
	// Create WNT_Window
	if (!myWindow->IsMapped())
		myWindow->Map();
	myWindow->SetFlags(WDF_NOERASEBKGRND);
    myV2dViewer = new V2d_Viewer( gd , (short* const)"" );
	myAIS2DContext = new AIS2D_InteractiveContext(myV2dViewer);
	myV2dView = new V2d_View(myDriver, myV2dViewer);
	myV2dViewer->AddView(myV2dView);
}

void Display2d::Test()
{
/*
      BRepPrimAPI_MakeSphere S(gp_Pnt(200.,300.,200.), 100.);
      Handle(AIS_Shape) anAISShape = new AIS_Shape(S.Shape());
      myAISContext->SetColor(anAISShape,Quantity_NOC_AZURE);
      myAISContext->SetMaterial(anAISShape,Graphic3d_NOM_PLASTIC);
      myAISContext->SetDisplayMode(anAISShape,1);
      myAISContext->Display(anAISShape);
      myV3dView->ZFitAll();
*/
}


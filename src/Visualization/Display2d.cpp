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

#if !defined(WNT)
   #error WNT precompiler directive is mandatory for CasCade 
#endif

#pragma warning(  disable : 4244 )        // Issue warning 4244
#include "Standard_ShortReal.hxx"
#pragma warning(  default : 4244 )        // Issue warning 4244

#include <WNT_WDriver.hxx>
#include <Standard.hxx>
#include <Graphic3d_WNTGraphicDevice.hxx>
#include <V3d_Viewer.hxx>
#include <V3d_View.hxx>
#include <WNT_Window.hxx>
#include <Quantity_Color.hxx>
#include <Quantity_NameOfColor.hxx>
#include <AIS_DisplayMode.hxx>

Display2d::Display2d()
{
}

Display2d::~Display2d()
{
  //Handle(V3d_Viewer) aViewer = myV3dView->Viewer();
  //aViewer->RemoveView(myV3dView);  
}

void Display2d::Init(int window_handle)
{
	gd = new WNT_GraphicDevice();
	short hi = static_cast<short>(window_handle >> 16);
	short lo = static_cast<short>(window_handle);
	//myWNTWindow = new WNT_Window( gd ,myHandle , Quantity_NOC_MATRAGRAY );
	// Create WNT_Window
	myWNTWindow = new WNT_Window( gd ,static_cast<Standard_Integer>(hi),static_cast<Standard_Integer>(lo));
	if (!myWNTWindow->IsMapped())
		myWNTWindow->Map();
	myWNTWindow->SetFlags(WDF_NOERASEBKGRND);
	myWNTWindow->SetBackground(Quantity_NOC_MIDNIGHTBLUE);
	// Create V3dViewer and V3d_View
        myV2dViewer = new V2d_Viewer( gd , (short* const)"viewer" );
	//myV3dViewer->SetDefaultLights();
	//myV3dViewer->SetLightOn();
        //myV3dView = myV3dViewer->CreateView();
        //myV3dView->SetWindow(myWNTWindow);
	myV3dView->SetBackgroundColor(Quantity_NOC_MIDNIGHTBLUE);
	// Create AISInteractiveViewer
	myAISContext = new AIS_InteractiveContext(myV3dViewer);
}

void Display2d::Test()
{
      BRepPrimAPI_MakeSphere S(gp_Pnt(200.,300.,200.), 100.);
      Handle(AIS_Shape) anAISShape = new AIS_Shape(S.Shape());
      myAISContext->SetColor(anAISShape,Quantity_NOC_AZURE);
      myAISContext->SetMaterial(anAISShape,Graphic3d_NOM_PLASTIC);
      myAISContext->SetDisplayMode(anAISShape,1);
      myAISContext->Display(anAISShape);
      myV3dView->ZFitAll();
}

void Display2d::Repaint()
{
	myV2dViewer->Redraw();
}

void Display3d::SetBackground()
{
}

void Display3d::Rotation(const Standard_Integer X, const Standard_Integer Y)
{
	myV3dView->Rotation(X,Y);
}

void Display3d::DynamicZoom(const Standard_Integer X1, const Standard_Integer Y1, const Standard_Integer X2, const Standard_Integer Y2)
{
	myV3dView->Zoom(X1,Y1,X2,Y2);
}

void Display3d::Zoom(const Standard_Integer X, const Standard_Integer Y)
{
	myV3dView->Zoom(X,Y);
}

void Display3d::StartRotation(const Standard_Integer X, const Standard_Integer Y)
{
	myV3dView->StartRotation(X,Y);
}	


void Display3d::DisplayShape(const TopoDS_Shape& shape)
{
    Handle(AIS_Shape) anAISShape = new AIS_Shape(shape);
    myAISContext->Display(anAISShape);
    myV3dView->ZFitAll();
}

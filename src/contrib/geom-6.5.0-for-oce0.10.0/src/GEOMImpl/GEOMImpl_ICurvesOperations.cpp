// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

// #ifdef WNT
// // E.A. : On windows with python 2.6, there is a conflict
// // E.A. : between pymath.h and Standard_math.h which define
// // E.A. : some same symbols : acosh, asinh, ...
// #include <Standard_math.hxx>
// #include <pymath.h>
// #endif

//#include <Python.h>
//#include <structmember.h>

#ifdef HAVE_FINITE
#undef HAVE_FINITE
#endif
#include <Standard_Stream.hxx>

#include <GEOMImpl_ICurvesOperations.hxx>
#include <GEOMImpl_Types.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_PythonDump.hxx>

#include <GEOMImpl_PolylineDriver.hxx>
#include <GEOMImpl_CircleDriver.hxx>
#include <GEOMImpl_SplineDriver.hxx>
#include <GEOMImpl_EllipseDriver.hxx>
#include <GEOMImpl_ArcDriver.hxx>
#include <GEOMImpl_SketcherDriver.hxx>
#include <GEOMImpl_3DSketcherDriver.hxx>

#include <GEOMImpl_IPolyline.hxx>
#include <GEOMImpl_ICircle.hxx>
#include <GEOMImpl_ISpline.hxx>
#include <GEOMImpl_IEllipse.hxx>
#include <GEOMImpl_IArc.hxx>
#include <GEOMImpl_ISketcher.hxx>
#include <GEOMImpl_I3DSketcher.hxx>

#include <Basics_OCCTVersion.hxx>

#include "utilities.h"

#include <TDF_Tool.hxx>
#include <TColStd_HArray1OfReal.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC


// /* ==================================
//  * ===========  PYTHON ==============
//  * ==================================*/

// typedef struct {
//   PyObject_HEAD
//   int softspace;
//   std::string *out;
//   } PyStdOut;

// static void
// PyStdOut_dealloc(PyStdOut *self)
// {
//   PyObject_Del(self);
// }

// static PyObject *
// PyStdOut_write(PyStdOut *self, PyObject *args)
// {
//   char *c;
//   int l;
//   if (!PyArg_ParseTuple(args, "t#:write",&c, &l))
//     return NULL;

//   //std::cerr << c ;
//   *(self->out)=*(self->out)+c;

//   Py_INCREF(Py_None);
//   return Py_None;
// }

// static PyMethodDef PyStdOut_methods[] = {
//   {"write",  (PyCFunction)PyStdOut_write,  METH_VARARGS,
//     PyDoc_STR("write(string) -> None")},
//   {NULL,    NULL}   /* sentinel */
// };

// static PyMemberDef PyStdOut_memberlist[] = {
//   {(char*)"softspace", T_INT,  offsetof(PyStdOut, softspace), 0,
//    (char*)"flag indicating that a space needs to be printed; used by print"},
//   {NULL} /* Sentinel */
// };

// static PyTypeObject PyStdOut_Type = {
//   /* The ob_type field must be initialized in the module init function
//    * to be portable to Windows without using C++. */
//   PyObject_HEAD_INIT(NULL)
//   0,                            /*ob_size*/
//   "PyOut",                      /*tp_name*/
//   sizeof(PyStdOut),             /*tp_basicsize*/
//   0,                            /*tp_itemsize*/
//   /* methods */
//   (destructor)PyStdOut_dealloc, /*tp_dealloc*/
//   0,                            /*tp_print*/
//   0,                            /*tp_getattr*/
//   0,                            /*tp_setattr*/
//   0,                            /*tp_compare*/
//   0,                            /*tp_repr*/
//   0,                            /*tp_as_number*/
//   0,                            /*tp_as_sequence*/
//   0,                            /*tp_as_mapping*/
//   0,                            /*tp_hash*/
//   0,                            /*tp_call*/
//   0,                            /*tp_str*/
//   PyObject_GenericGetAttr,      /*tp_getattro*/
//   /* softspace is writable:  we must supply tp_setattro */
//   PyObject_GenericSetAttr,      /* tp_setattro */
//   0,                            /*tp_as_buffer*/
//   Py_TPFLAGS_DEFAULT,           /*tp_flags*/
//   0,                            /*tp_doc*/
//   0,                            /*tp_traverse*/
//   0,                            /*tp_clear*/
//   0,                            /*tp_richcompare*/
//   0,                            /*tp_weaklistoffset*/
//   0,                            /*tp_iter*/
//   0,                            /*tp_iternext*/
//   PyStdOut_methods,             /*tp_methods*/
//   PyStdOut_memberlist,          /*tp_members*/
//   0,                            /*tp_getset*/
//   0,                            /*tp_base*/
//   0,                            /*tp_dict*/
//   0,                            /*tp_descr_get*/
//   0,                            /*tp_descr_set*/
//   0,                            /*tp_dictoffset*/
//   0,                            /*tp_init*/
//   0,                            /*tp_alloc*/
//   0,                            /*tp_new*/
//   0,                            /*tp_free*/
//   0,                            /*tp_is_gc*/
// };

// PyObject * newPyStdOut( std::string& out )
// {
//   PyStdOut *self;
//   self = PyObject_New(PyStdOut, &PyStdOut_Type);
//   if (self == NULL)
//     return NULL;
//   self->softspace = 0;
//   self->out=&out;
//   return (PyObject*)self;
// }


////////////////////////END PYTHON///////////////////////////
//=============================================================================
/*!
 *   constructor:
 */
//=============================================================================
GEOMImpl_ICurvesOperations::GEOMImpl_ICurvesOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
  MESSAGE("GEOMImpl_ICurvesOperations::GEOMImpl_ICurvesOperations");
}

//=============================================================================
/*!
 *  destructor
 */
//=============================================================================
GEOMImpl_ICurvesOperations::~GEOMImpl_ICurvesOperations()
{
  MESSAGE("GEOMImpl_ICurvesOperations::~GEOMImpl_ICurvesOperations");
}


//=============================================================================
/*!
 *  MakeCircleThreePnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCircleThreePnt (Handle(GEOM_Object) thePnt1,
                                                                    Handle(GEOM_Object) thePnt2,
                                                                    Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to three points
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_THREE_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Circle value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = geompy.MakeCircleThreePnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeCircleCenter2Pnt
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCircleCenter2Pnt (Handle(GEOM_Object) thePnt1,
                                                                      Handle(GEOM_Object) thePnt2,
                                                                      Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to center and 2 points
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_CENTER_TWO_PNT);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Circle value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = geompy.MakeCircleCenter2Pnt("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeCirclePntVecR
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCirclePntVecR
       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec, double theR)
{
  SetErrorCode(KO);

  // Not set thePnt means origin of global CS,
  // Not set theVec means Z axis of global CS
  //if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Circle object
  Handle(GEOM_Object) aCircle = GetEngine()->AddObject(GetDocID(), GEOM_CIRCLE);

  //Add a new Circle function for creation a circle relatively to point and vector
  Handle(GEOM_Function) aFunction =
    aCircle->AddFunction(GEOMImpl_CircleDriver::GetID(), CIRCLE_PNT_VEC_R);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_CircleDriver::GetID()) return NULL;

  GEOMImpl_ICircle aCI (aFunction);

  if (!thePnt.IsNull()) {
    Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
    if (aRefPnt.IsNull()) return NULL;
    aCI.SetCenter(aRefPnt);
  }

  if (!theVec.IsNull()) {
    Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();
    if (aRefVec.IsNull()) return NULL;
    aCI.SetVector(aRefVec);
  }

  aCI.SetRadius(theR);

  //Compute the Circle value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Circle driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << aCircle << " = geompy.MakeCircle("
    << thePnt << ", " << theVec << ", " << theR << ")";

  SetErrorCode(OK);
  return aCircle;
}

//=============================================================================
/*!
 *  MakeEllipse
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeEllipse
                       (Handle(GEOM_Object) thePnt, Handle(GEOM_Object) theVec,
                        double theRMajor, double theRMinor,
                        Handle(GEOM_Object) theVecMaj)
{
  SetErrorCode(KO);

  // Not set thePnt means origin of global CS,
  // Not set theVec means Z axis of global CS
  // Not set theVecMaj means X axis of global CS
  //if (thePnt.IsNull() || theVec.IsNull()) return NULL;

  //Add a new Ellipse object
  Handle(GEOM_Object) anEll = GetEngine()->AddObject(GetDocID(), GEOM_ELLIPSE);

  //Add a new Ellipse function
  Handle(GEOM_Function) aFunction =
    anEll->AddFunction(GEOMImpl_EllipseDriver::GetID(), ELLIPSE_PNT_VEC_RR);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_EllipseDriver::GetID()) return NULL;

  GEOMImpl_IEllipse aCI (aFunction);

  if (!thePnt.IsNull()) {
    Handle(GEOM_Function) aRefPnt = thePnt->GetLastFunction();
    if (aRefPnt.IsNull()) return NULL;
    aCI.SetCenter(aRefPnt);
  }

  if (!theVec.IsNull()) {
    Handle(GEOM_Function) aRefVec = theVec->GetLastFunction();
    if (aRefVec.IsNull()) return NULL;
    aCI.SetVector(aRefVec);
  }

  aCI.SetRMajor(theRMajor);
  aCI.SetRMinor(theRMinor);

  if (!theVecMaj.IsNull()) {
    Handle(GEOM_Function) aRefVecMaj = theVecMaj->GetLastFunction();
    if (aRefVecMaj.IsNull()) return NULL;
    aCI.SetVectorMajor(aRefVecMaj);
  }

  //Compute the Ellipse value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Ellipse driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  if (!theVecMaj.IsNull()) {
    GEOM::TPythonDump(aFunction) << anEll << " = geompy.MakeEllipse("
                                 << thePnt << ", " << theVec << ", " << theRMajor << ", " << theRMinor
                                 << ", " << theVecMaj << ")";
  }
  else {
    GEOM::TPythonDump(aFunction) << anEll << " = geompy.MakeEllipse("
                                 << thePnt << ", " << theVec << ", " << theRMajor << ", " << theRMinor << ")";
  }

  SetErrorCode(OK);
  return anEll;
}

//=============================================================================
/*!
 *  MakeArc
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArc (Handle(GEOM_Object) thePnt1,
                                                         Handle(GEOM_Object) thePnt2,
                                                         Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_CIRC_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), CIRC_ARC_THREE_PNT);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;
  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Arc value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Arc driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = geompy.MakeArc("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakeArcCenter
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArcCenter (Handle(GEOM_Object) thePnt1,
                                                               Handle(GEOM_Object) thePnt2,
                                                               Handle(GEOM_Object) thePnt3,
                                                               bool                theSense)
{
  SetErrorCode(KO);
  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_CIRC_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), CIRC_ARC_CENTER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;

  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);
  aCI.SetSense(theSense);

  //Compute the Arc value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
  SetErrorCode("Arc driver failed");
  return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }
  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = geompy.MakeArcCenter("
      << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << "," << theSense << ")";

  SetErrorCode(OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakeArcOfEllipse
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeArcOfEllipse (Handle(GEOM_Object) thePnt1,
                                                                  Handle(GEOM_Object) thePnt2,
                                                                  Handle(GEOM_Object) thePnt3)
{
  SetErrorCode(KO);

  if (thePnt1.IsNull() || thePnt2.IsNull() || thePnt3.IsNull()) return NULL;

  //Add a new Circle Arc object
  Handle(GEOM_Object) anArc = GetEngine()->AddObject(GetDocID(), GEOM_ELLIPSE_ARC);

  //Add a new Circle Arc function
  Handle(GEOM_Function) aFunction =
      anArc->AddFunction(GEOMImpl_ArcDriver::GetID(), ELLIPSE_ARC_CENTER_TWO_PNT);

  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_ArcDriver::GetID()) return NULL;
  GEOMImpl_IArc aCI (aFunction);

  Handle(GEOM_Function) aRefPnt1 = thePnt1->GetLastFunction();
  Handle(GEOM_Function) aRefPnt2 = thePnt2->GetLastFunction();
  Handle(GEOM_Function) aRefPnt3 = thePnt3->GetLastFunction();

  if (aRefPnt1.IsNull() || aRefPnt2.IsNull() || aRefPnt3.IsNull()) return NULL;

  aCI.SetPoint1(aRefPnt1);
  aCI.SetPoint2(aRefPnt2);
  aCI.SetPoint3(aRefPnt3);

  //Compute the Arc value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Arc driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump(aFunction) << anArc << " = geompy.MakeArcOfEllipse("
    << thePnt1 << ", " << thePnt2 << ", " << thePnt3 << ")";

  SetErrorCode(OK);
  return anArc;
}

//=============================================================================
/*!
 *  MakePolyline
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakePolyline (std::list<Handle(GEOM_Object)> thePoints,
                                                              bool theIsClosed)
{
  SetErrorCode(KO);

  //Add a new Polyline object
  Handle(GEOM_Object) aPolyline = GetEngine()->AddObject(GetDocID(), GEOM_POLYLINE);

  //Add a new Polyline function for creation a polyline relatively to points set
  Handle(GEOM_Function) aFunction =
    aPolyline->AddFunction(GEOMImpl_PolylineDriver::GetID(), POLYLINE_POINTS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_PolylineDriver::GetID()) return NULL;

  GEOMImpl_IPolyline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetLength(aLen);
  aCI.SetConstructorType(POINT_CONSTRUCTOR);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();
    if (aRefPnt.IsNull()) {
      SetErrorCode("NULL point for Polyline");
      return NULL;
    }
    aCI.SetPoint(ind, aRefPnt);
  }

  aCI.SetIsClosed(theIsClosed);

  //Compute the Polyline value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Polyline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aPolyline << " = geompy.MakePolyline([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "], " << theIsClosed << ")";

  SetErrorCode(OK);
  return aPolyline;
}

//=============================================================================
/*!
 *  MakeSplineBezier
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSplineBezier
                                          (std::list<Handle(GEOM_Object)> thePoints,
                                           bool theIsClosed)
{
  SetErrorCode(KO);

  //Add a new Spline object
  Handle(GEOM_Object) aSpline = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);

  //Add a new Spline function for creation a bezier curve relatively to points set
  Handle(GEOM_Function) aFunction =
    aSpline->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_BEZIER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

  GEOMImpl_ISpline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetLength(aLen);
  aCI.SetConstructorType(POINT_CONSTRUCTOR);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();

    if (aRefPnt.IsNull()) return NULL;

    aCI.SetPoint(ind, aRefPnt);
  }

  aCI.SetIsClosed(theIsClosed);

  //Compute the Spline value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Spline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSpline << " = geompy.MakeBezier([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "], " << theIsClosed << ")";

  SetErrorCode(OK);
  return aSpline;
}

//=============================================================================
/*!
 *  MakeSplineInterpolation
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSplineInterpolation
                                          (std::list<Handle(GEOM_Object)> thePoints,
                                           bool theIsClosed,
                                           bool theDoReordering)
{
  SetErrorCode(KO);

  //Add a new Spline object
  Handle(GEOM_Object) aSpline = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);

  //Add a new Spline function for creation a bezier curve relatively to points set
  Handle(GEOM_Function) aFunction =
    aSpline->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_INTERPOLATION);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

  GEOMImpl_ISpline aCI (aFunction);

  int aLen = thePoints.size();
  aCI.SetConstructorType(POINT_CONSTRUCTOR);
  aCI.SetLength(aLen);

  int ind = 1;
  std::list<Handle(GEOM_Object)>::iterator it = thePoints.begin();
  for (; it != thePoints.end(); it++, ind++) {
    Handle(GEOM_Function) aRefPnt = (*it)->GetLastFunction();

    if (aRefPnt.IsNull()) return NULL;

    aCI.SetPoint(ind, aRefPnt);
  }

  aCI.SetIsClosed(theIsClosed);
  aCI.SetDoReordering(theDoReordering);

  //Compute the Spline value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Spline driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSpline << " = geompy.MakeInterpol([";

  it = thePoints.begin();
  pd << (*it++);
  while (it != thePoints.end()) {
    pd << ", " << (*it++);
  }
  pd << "], " << theIsClosed << ", " << theDoReordering << ")";

  SetErrorCode(OK);
  return aSpline;
}

// //=============================================================================
// /*!
//  *  MakeCurveParametric
//  */
// //=============================================================================
// Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeCurveParametric
//              (const char* thexExpr, const char* theyExpr, const char* thezExpr,
//               double theParamMin, double theParamMax, double theParamStep,
//               CurveType theCurveType, 
//               int theParamNbStep, bool theNewMethod)
// {
//   TCollection_AsciiString aPyScript;
//   aPyScript +="from math import *                                          \n";
//   aPyScript +="def X(t):                                                   \n";
//   aPyScript +="    return ";
//   aPyScript += thexExpr;
//   aPyScript += "\n";
//   aPyScript +="def Y(t):                                                   \n";
//   aPyScript +="    return ";
//   aPyScript += theyExpr;
//   aPyScript += "\n";

//   aPyScript +="def Z(t):                                                   \n";
//   aPyScript +="    return ";
//   aPyScript += thezExpr;
//   aPyScript += "\n";

//   if (theNewMethod)
//   {
//     aPyScript +="def coordCalculator(tmin, tmax, nstep):                     \n";
//     aPyScript +="   coords = []                                              \n";
//     aPyScript +="   tstep  = (tmax - tmin) / nstep                           \n";
//     aPyScript +="   n = 0                                                    \n";
//     aPyScript +="   while n <= nstep :                                       \n";
//     aPyScript +="      t = tmin + n*tstep                                    \n";
//     aPyScript +="      coords.append([X(t), Y(t), Z(t)])                     \n";
//     aPyScript +="      n = n+1                                               \n";
//     aPyScript +="   return coords                                            \n";
//   }
//   else
//   {
//     aPyScript +="def coordCalculator(tmin, tmax, tstep):                      \n";
//     aPyScript +="   coords = []                                              \n";
//     aPyScript +="   while tmin <= tmax :                                     \n";
//     aPyScript +="      coords.append([X(tmin), Y(tmin), Z(tmin)])            \n";
//     aPyScript +="      tmin = tmin + tstep                                   \n";
//     aPyScript +="   return coords                                            \n";
//   }

//   SetErrorCode(KO);

//   if(theParamMin >= theParamMax) {
//     SetErrorCode("The minimum value of the parameter must be less than maximum value !!!");
//     return NULL;
//   }

//   if(!theNewMethod && theParamStep <= 0.0) {
//     SetErrorCode("Value of the step must be positive !!!");
//     return NULL;
//   }
//   else if(theNewMethod && theParamNbStep < 0) {
//     SetErrorCode("The number of steps must be positive !!!");
//     return NULL;
//   }

//   /* Initialize the Python interpreter */
//   if (! Py_IsInitialized()) {
//     SetErrorCode("Python interpreter is not initialized !!! ");
//     return NULL;
//   }

//   PyGILState_STATE gstate;
//   gstate = PyGILState_Ensure();

//   PyObject* main_mod = PyImport_AddModule("__main__");
//   PyObject* main_dict = PyModule_GetDict(main_mod);

//   PyObject* obj = PyRun_String(aPyScript.ToCString(), Py_file_input, main_dict, NULL);

//   if (obj == NULL) {
//     SetErrorCode("Error during executing of python script !!!");
//     PyErr_Print();
//     PyGILState_Release(gstate);
//     return NULL;
//   } else {
//     Py_DECREF(obj);
//   }

//   PyObject * func = NULL;
//   func = PyObject_GetAttrString(main_mod, "coordCalculator");

//   if (func == NULL){
//     SetErrorCode("Can't get function from python module !!!");
//     PyGILState_Release(gstate);
//     return NULL;
//   }

//   PyObject* coords;
//   if (theNewMethod)
//     coords = PyObject_CallFunction(func,(char*)"(d, d, i)", theParamMin, theParamMax, theParamNbStep );
//   else
//     coords = PyObject_CallFunction(func,(char*)"(d, d, d)", theParamMin, theParamMax, theParamStep );
  
//   PyObject* new_stderr = NULL;

//   if (coords == NULL){
//     fflush(stderr);
//     std::string err_description="";
//     new_stderr = newPyStdOut(err_description);
//     PySys_SetObject((char*)"stderr", new_stderr);
//     PyErr_Print();
//     PySys_SetObject((char*)"stderr", PySys_GetObject((char*)"__stderr__"));
//     Py_DECREF(new_stderr);
//     MESSAGE("Can't evaluate coordCalculator()" << " error is " << err_description);
//     SetErrorCode("Can't evaluate the expressions, please check them !!!");
//     PyGILState_Release(gstate);
//     return NULL;
//   }

//   Handle(TColStd_HArray1OfReal) aCoordsArray = new TColStd_HArray1OfReal (1, PyList_Size( coords ) * 3);

//   if(PyList_Size( coords ) <= 0) {
//     SetErrorCode("Empty list of the points, please check input parameters !!!");
//     return NULL;
//   }

//   int k=1;
//   for ( Py_ssize_t i = 0; i< PyList_Size( coords ); ++i ) {
//     PyObject* coord = PyList_GetItem( coords, i );
//     if (coord != NULL) {
//       for ( Py_ssize_t j = 0; j < PyList_Size(coord); ++j) {
//         PyObject* item = PyList_GetItem(coord, j);
//         aCoordsArray->SetValue(k, PyFloat_AsDouble(item));
//         k++;
//       }
//     }
//   }

//   Py_DECREF(coords);

//   PyGILState_Release(gstate);

//   Handle(GEOM_Object) aCurve;
//   Handle(GEOM_Function) aFunction;
//   TCollection_AsciiString aCurveType;

//   switch(theCurveType) {
//   case Polyline: {
//     //Add a new Polyline object
//     aCurve = GetEngine()->AddObject(GetDocID(), GEOM_POLYLINE);

//     //Add a new Polyline function for creation a polyline relatively to points set
//     aFunction = aCurve->AddFunction(GEOMImpl_PolylineDriver::GetID(), POLYLINE_POINTS);
//     if (aFunction.IsNull()) return NULL;

//     //Check if the function is set correctly
//     if (aFunction->GetDriverGUID() != GEOMImpl_PolylineDriver::GetID()) return NULL;

//     GEOMImpl_IPolyline aCI (aFunction);

//     aCI.SetLength(PyList_Size( coords ));
//     aCI.SetConstructorType(COORD_CONSTRUCTOR);
//     aCI.SetIsClosed(false);
//     aCI.SetCoordinates(aCoordsArray);
//     aCurveType = "geompy.GEOM.Polyline";
//     break;
//   }
//   case Bezier: {
//     //Add a new Spline object
//     aCurve = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);
//     //Add a new Spline function for creation a bezier curve relatively to points set
//     aFunction =
//       aCurve->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_BEZIER);
//     if (aFunction.IsNull()) return NULL;

//     //Check if the function is set correctly
//     if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

//     GEOMImpl_ISpline aCI (aFunction);

//     aCI.SetLength(PyList_Size( coords ));
//     aCI.SetConstructorType(COORD_CONSTRUCTOR);
//     aCI.SetIsClosed(false);
//     aCI.SetCoordinates(aCoordsArray);
//     aCurveType = "geompy.GEOM.Bezier";
//     break;
//   }
//   case Interpolation: {
//     //Add a new Spline object
//     aCurve = GetEngine()->AddObject(GetDocID(), GEOM_SPLINE);

//     //Add a new Spline function for creation a bezier curve relatively to points set
//     aFunction = aCurve->AddFunction(GEOMImpl_SplineDriver::GetID(), SPLINE_INTERPOLATION);
//     if (aFunction.IsNull()) return NULL;

//     //Check if the function is set correctly
//     if (aFunction->GetDriverGUID() != GEOMImpl_SplineDriver::GetID()) return NULL;

//     GEOMImpl_ISpline aCI (aFunction);
//     aCI.SetConstructorType(COORD_CONSTRUCTOR);
//     aCI.SetLength(PyList_Size( coords ));
//     aCI.SetIsClosed(false);
//     aCI.SetDoReordering(false);
//     aCI.SetCoordinates(aCoordsArray);
//     aCurveType = "geompy.GEOM.Interpolation";
//     break;
//   }
//   }

//   //Compute the Curve value
//   try {
// #if OCC_VERSION_LARGE > 0x06010000
//     OCC_CATCH_SIGNALS;
// #endif
//     if (!GetSolver()->ComputeFunction(aFunction)) {
//       SetErrorCode("Curve driver failed !!!");
//       return NULL;
//     }
//   }
//   catch (Standard_Failure) {
//     Handle(Standard_Failure) aFail = Standard_Failure::Caught();
//     SetErrorCode(aFail->GetMessageString());
//     return NULL;
//   }

//   //Make a Python command
//   GEOM::TPythonDump pd (aFunction);
//   pd << aCurve << " = geompy.MakeCurveParametric(";
//   pd << "\"" << thexExpr << "\", ";
//   pd << "\"" << theyExpr << "\", ";
//   pd << "\"" << thezExpr << "\", ";

//   pd << theParamMin <<", ";
//   pd << theParamMax <<", ";
//   if (theNewMethod)
//     pd << theParamNbStep <<", ";
//   else
//     pd << theParamStep <<", ";
//   pd << aCurveType.ToCString() <<", ";
//   pd << theNewMethod <<")";

//   SetErrorCode(OK);
//   return aCurve;
// }

//=============================================================================
/*!
 *  MakeSketcher
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSketcher (const char* theCommand,
                                                              std::list<double> theWorkingPlane)
{
  SetErrorCode(KO);

  if (!theCommand || strcmp(theCommand, "") == 0) return NULL;

  //Add a new Sketcher object
  Handle(GEOM_Object) aSketcher = GetEngine()->AddObject(GetDocID(), GEOM_SKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    aSketcher->AddFunction(GEOMImpl_SketcherDriver::GetID(), SKETCHER_NINE_DOUBLS);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SketcherDriver::GetID()) return NULL;

  GEOMImpl_ISketcher aCI (aFunction);

  TCollection_AsciiString aCommand((char*) theCommand);
  aCI.SetCommand(aCommand);

  int ind = 1;
  std::list<double>::iterator it = theWorkingPlane.begin();
  for (; it != theWorkingPlane.end(); it++, ind++)
    aCI.SetWorkingPlane(ind, *it);

  //Compute the Sketcher value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << aSketcher << " = geompy.MakeSketcher(\"" << aCommand.ToCString() << "\", [";

  it = theWorkingPlane.begin();
  pd << (*it++);
  while (it != theWorkingPlane.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(OK);
  return aSketcher;
}

//=============================================================================
/*!
 *  Make3DSketcher
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::Make3DSketcher (std::list<double> theCoordinates)
{
  SetErrorCode(KO);

  //Add a new Sketcher object
  Handle(GEOM_Object) a3DSketcher = GetEngine()->AddObject(GetDocID(), GEOM_3DSKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    a3DSketcher->AddFunction(GEOMImpl_3DSketcherDriver::GetID(), GEOM_3DSKETCHER);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_3DSketcherDriver::GetID()) return NULL;

  GEOMImpl_I3DSketcher aCI (aFunction);

  int nbOfCoords = 0;
  std::list<double>::iterator it = theCoordinates.begin();
  for (; it != theCoordinates.end(); it++)
    nbOfCoords++;

  Handle(TColStd_HArray1OfReal) aCoordsArray = new TColStd_HArray1OfReal (1, nbOfCoords);

  it = theCoordinates.begin();
  int ind = 1;
  for (; it != theCoordinates.end(); it++, ind++)
    aCoordsArray->SetValue(ind, *it);

  aCI.SetCoordinates(aCoordsArray);

  //Compute the Sketcher value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("3D Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump pd (aFunction);
  pd << a3DSketcher << " = geompy.Make3DSketcher([";

  it = theCoordinates.begin();
  pd << (*it++);
  while (it != theCoordinates.end()) {
    pd << ", " << (*it++);
  }
  pd << "])";

  SetErrorCode(OK);
  return a3DSketcher;
}

//=============================================================================
/*!
 *  MakeSketcherOnPlane
 */
//=============================================================================
Handle(GEOM_Object) GEOMImpl_ICurvesOperations::MakeSketcherOnPlane
                               (const char* theCommand,
                                Handle(GEOM_Object)            theWorkingPlane)
{
  SetErrorCode(KO);

  if (!theCommand || strcmp(theCommand, "") == 0) return NULL;

  //Add a new Sketcher object
  Handle(GEOM_Object) aSketcher = GetEngine()->AddObject(GetDocID(), GEOM_SKETCHER);

  //Add a new Sketcher function
  Handle(GEOM_Function) aFunction =
    aSketcher->AddFunction(GEOMImpl_SketcherDriver::GetID(), SKETCHER_PLANE);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_SketcherDriver::GetID()) return NULL;

  GEOMImpl_ISketcher aCI (aFunction);

  TCollection_AsciiString aCommand((char*) theCommand);
  aCI.SetCommand(aCommand);

  Handle(GEOM_Function) aRefPlane = theWorkingPlane->GetLastFunction();
  if (aRefPlane.IsNull()) return NULL;
  aCI.SetWorkingPlane( aRefPlane );

  //Compute the Sketcher value
  try {
#if OCC_VERSION_LARGE > 0x06010000
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sketcher driver failed");
      return NULL;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return NULL;
  }

  //Make a Python command
  GEOM::TPythonDump (aFunction) << aSketcher << " = geompy.MakeSketcherOnPlane(\""
    << aCommand.ToCString() << "\", " << theWorkingPlane << " )";

  SetErrorCode(OK);
  return aSketcher;
}

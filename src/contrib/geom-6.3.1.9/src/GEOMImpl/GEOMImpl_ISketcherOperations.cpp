//------------------------------------------------------------------------------
#include <GEOMImpl_ISketcherOperations.hxx>
//------------------------------------------------------------------------------
#include <Sketcher.hxx>

#include <GEOMImpl_Types.hxx>

#include <GEOMImpl_NSketcherDriver.hxx>
#include <GEOMImpl_INSketcher.hxx>

#include <GEOM_PythonDump.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <Geom_Surface.hxx>
#include <BRep_Tool.hxx>
#include <Geom_Plane.hxx>

#include <TDF_ChildIterator.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC
//------------------------------------------------------------------------------
#define SKETCH_ROOT_LABEL 1
//------------------------------------------------------------------------------
static Sketcher_GUI* globGUI = NULL;
static Handle(AIS_InteractiveContext) globContext;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
class SketchObject : public Sketcher
{
 public:
  SketchObject(TDF_Label aLabel, Handle(GEOM_Object) aPlane);
  ~SketchObject();

  Handle(GEOM_Object) GetCoordinateSystem();

  void SetEditedSketch(Handle(GEOM_Object) anEditedSketch);
  Handle(GEOM_Object) GetEditedSketch();

 private:
  Handle(GEOM_Object) myPlane;
  Handle(GEOM_Object) myEditedSketch;
};
//------------------------------------------------------------------------------
SketchObject::SketchObject(TDF_Label aLabel, Handle(GEOM_Object) aPlane)
            : Sketcher(aLabel, globGUI)
{
  if (aPlane.IsNull() || aPlane->GetLastFunction().IsNull())
    Standard_Failure::Raise("Plane is not a valid object");

  myPlane = aPlane;

  Handle(GEOM_Function) aFunc = aPlane->GetLastFunction();

  TopoDS_Face aFace = TopoDS::Face(aFunc->GetValue());
  Handle(Geom_Surface) surf = BRep_Tool::Surface(aFace);
  Handle(Geom_Plane) myPlane = Handle(Geom_Plane)::DownCast(surf);
  const gp_Ax3 pos = myPlane->Position();

  SetCoordinateSystem(pos);
}
//------------------------------------------------------------------------------
Handle(GEOM_Object) SketchObject::GetCoordinateSystem()
{
  return myPlane;
}
//------------------------------------------------------------------------------
void SketchObject::SetEditedSketch(Handle(GEOM_Object) anEditedSketch)
{
  myEditedSketch = anEditedSketch;
}
//------------------------------------------------------------------------------
Handle(GEOM_Object) SketchObject::GetEditedSketch()
{
  return myEditedSketch;
}
//------------------------------------------------------------------------------
SketchObject::~SketchObject()
{
}
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
GEOMImpl_ISketcherOperations::GEOMImpl_ISketcherOperations (GEOM_Engine* theEngine, int theDocID)
: GEOM_IOperations(theEngine, theDocID)
{
}
//------------------------------------------------------------------------------
GEOMImpl_ISketcherOperations::~GEOMImpl_ISketcherOperations()
{
}
//------------------------------------------------------------------------------
void GEOMImpl_ISketcherOperations::SetGUI(Sketcher_GUI* aGUI)
{
  globGUI = aGUI;
}
//------------------------------------------------------------------------------
void GEOMImpl_ISketcherOperations::SetAISContext(Handle(AIS_InteractiveContext) aContext)
{
  globContext = aContext;
}
//------------------------------------------------------------------------------
Sketcher* GEOMImpl_ISketcherOperations::BeginSketch(Handle(GEOM_Object) aPlane)
{
  //set error flag
  SetErrorCode(GEOM_KO);

  //prepare sketcher object
  TDF_Label aSketchRootLabel = GetEngine()->GetUserDataLabel(GetDocID()).FindChild(SKETCH_ROOT_LABEL, Standard_True);
  TDF_Label aChild = TDF_TagSource::NewChild(aSketchRootLabel);

  //set OK flag
  SetErrorCode(GEOM_OK);

  return new SketchObject(aChild, aPlane);
}
//------------------------------------------------------------------------------
void GEOMImpl_ISketcherOperations::CancelSketch(Sketcher* anObject)
{
  //set error flag
  SetErrorCode(GEOM_KO);

  anObject->OnCancel();
  anObject->GetLabel().ForgetAllAttributes(Standard_True);
  anObject->GetLabel().Nullify();

  delete anObject;

  //set OK flag
  SetErrorCode(GEOM_OK);
}
//------------------------------------------------------------------------------
// resultLevel = 0 - GETS COMPOUND OF EDGES
// resultLevel = 1 - GETS COMPOUND OF WIRES
// resultLevel = 2 - GETS COMPOUND OF WIRES AND FACES WHERE POSSIBLE
Handle(GEOM_Object) GEOMImpl_ISketcherOperations::FinishSketch(Sketcher* anObject, int resultLevel)
{
  SetErrorCode(GEOM_KO);

  //cancel any pending commands on the sketcher
  anObject->OnCancel();

  //Add a new Sketch object
  Handle(GEOM_Object) aSketch = GetEngine()->AddObject(GetDocID(), GEOM_NSKETCHER);
  if (aSketch.IsNull()) return NULL;

  //Add a new Sketch function
  Handle(GEOM_Function) aFunction = aSketch->AddFunction(GEOMImpl_NSketcherDriver::GetID(), SIMPLE_NSKETCH);
  if (aFunction.IsNull()) return NULL;

  //Check if the function is set correctly
  if (aFunction->GetDriverGUID() != GEOMImpl_NSketcherDriver::GetID()) return NULL;

  //Prepare interface
  GEOMImpl_INSketcher aSI (aFunction);

  //set level
  aSI.SetLevel(resultLevel);

  //set sketch plane
  Handle(GEOM_Object) aRefObj = ((SketchObject*)anObject)->GetCoordinateSystem();
  Handle(GEOM_Function) aRefFunc = aRefObj->GetLastFunction();
  if (aRefFunc.IsNull()) return NULL;
  aSI.SetPlane(aRefFunc);

  //set sketch objects position in DF
  aSI.SetShapes(anObject->GetLabel());

  //Compute the sketch value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
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
  GEOM::TPythonDump(aFunction) << aSketch << " = MakeSketch()";

  //free sketcher object
  delete anObject;

  SetErrorCode(GEOM_OK);
  return aSketch;
}
//------------------------------------------------------------------------------
Standard_EXPORT Sketcher* GEOMImpl_ISketcherOperations::BeginEditSketch(Handle(GEOM_Object) aSketch, Standard_Integer& resultLevel, Handle(GEOM_Object) aNewPlane)
{
  //set error flag
  SetErrorCode(GEOM_KO);

  //Get Sketch function
  Handle(GEOM_Function) aFunction = aSketch->GetLastFunction();
  if (aFunction.IsNull()) return NULL;

  //Prepare interface
  GEOMImpl_INSketcher aSI(aFunction);

  //Get the sketcher plane
  Handle(GEOM_Object) aPlaneObject;

  if (!aNewPlane.IsNull()) {
    aSI.SetPlane(aNewPlane->GetLastFunction());
    aPlaneObject = aNewPlane;
  }
  else {
    
    Handle(GEOM_Function) aRefPlane = aSI.GetPlane();
    if (aRefPlane.IsNull()) return NULL;

    TDF_Label aPlaneObjectLabel = aRefPlane->GetOwnerEntry();
    if (aPlaneObjectLabel.IsNull()) return NULL;

    aPlaneObject = GEOM_Object::GetObject(aPlaneObjectLabel);
  }

  if (aPlaneObject.IsNull()) return NULL;

  //Get sketcher data
  TDF_Label anShlabel = aSI.GetShapes();

  //Get the curernt result level
  resultLevel = aSI.GetLevel();

  //prepare the sketcher object
  SketchObject* aSketcher = new SketchObject(anShlabel, aPlaneObject);
  aSketcher->SetEditedSketch(aSketch);

  //set OK flag
  SetErrorCode(GEOM_OK);

  return aSketcher;
}
//------------------------------------------------------------------------------
// resultLevel = 0 - GETS COMPOUND OF EDGES
// resultLevel = 1 - GETS COMPOUND OF WIRES
// resultLevel = 2 - GETS COMPOUND OF WIRES AND FACES WHERE POSSIBLE
void GEOMImpl_ISketcherOperations::FinishEditSketch(Sketcher* anObject, int resultLevel)
{
  SetErrorCode(GEOM_KO);

  //cancel any pending commands on the sketcher
  anObject->OnCancel();

  //Get initial sketch
  Handle(GEOM_Object) aSketch = ((SketchObject*)anObject)->GetEditedSketch();
  if (aSketch.IsNull())
    Standard_Failure::Raise("Sketch is not a valid object");

  //Get sketch function
  Handle(GEOM_Function) aFunction = aSketch->GetLastFunction();
  if (aFunction.IsNull())
    Standard_Failure::Raise("Sketch is not a valid object");

  //Prepare interface
  GEOMImpl_INSketcher aSI (aFunction);

  //set level
  aSI.SetLevel(resultLevel);

  //Compute the sketch value
  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    if (!GetSolver()->ComputeFunction(aFunction)) {
      SetErrorCode("Sketcher driver failed");
      return;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    SetErrorCode(aFail->GetMessageString());
    return;
  }

  //free sketcher object
  delete anObject;

  SetErrorCode(GEOM_OK);
}
//------------------------------------------------------------------------------

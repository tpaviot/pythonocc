// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#ifndef _GEOMImpl_ISketcherOperations_HXX_
#define _GEOMImpl_ISketcherOperations_HXX_
//------------------------------------------------------------------------------
#include "SGEOM_IOperations.hxx"
#include "SGEOM_Engine.hxx"
#include "SGEOM_Object.hxx"
#include <TDocStd_Document.hxx>
#include <TColStd_HSequenceOfTransient.hxx>

#include <Handle_AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
class Sketcher;
class Sketcher_GUI;
//------------------------------------------------------------------------------
class GEOMImpl_ISketcherOperations : public GEOM_IOperations
{
 public:

  Standard_EXPORT GEOMImpl_ISketcherOperations(GEOM_Engine* theEngine, int theDocID);
  
  Standard_EXPORT ~GEOMImpl_ISketcherOperations();

  Standard_EXPORT static void SetGUI(Sketcher_GUI* aGUI);
  Standard_EXPORT static void SetAISContext(Handle(AIS_InteractiveContext) aContext);

  Standard_EXPORT Sketcher*           BeginSketch  (Handle(GEOM_Object) aPlane);

  Standard_EXPORT void                CancelSketch (Sketcher* anObject);

  // resultLevel = 0 - GETS COMPOUND OF EDGES
  // resultLevel = 1 - GETS COMPOUND OF WIRES
  // resultLevel = 2 - GETS COMPOUND OF WIRES AND FACES WHERE POSSIBLE
  Standard_EXPORT Handle(GEOM_Object) FinishSketch (Sketcher* anObject, int resultLevel = 2);

  Standard_EXPORT Sketcher*           BeginEditSketch   (Handle(GEOM_Object) aSketch, Standard_Integer& resultLevel, Handle(GEOM_Object) aNewPlane = NULL);

  // resultLevel = same as FinishSketch
  Standard_EXPORT void FinishEditSketch(Sketcher* anObject, int resultLevel = 2);
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------

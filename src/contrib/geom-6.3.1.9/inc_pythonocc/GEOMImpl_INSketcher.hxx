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
#include "SGEOM_Function.hxx"
//------------------------------------------------------------------------------
#define SKETCHER_ARG_SHAPES 1
#define SKETCHER_ARG_PLANE  2
#define SKETCHER_ARG_LEVEL  2
//------------------------------------------------------------------------------
class GEOMImpl_INSketcher
{
 public:

  GEOMImpl_INSketcher(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  void SetShapes(const TDF_Label& theShapes){ _func->SetReferenceLabel(SKETCHER_ARG_SHAPES, theShapes); }
  TDF_Label GetShapes(){ return _func->GetReferenceLabel(SKETCHER_ARG_SHAPES); }

  void SetPlane(Handle(GEOM_Function) theRefPlane) { _func->SetReference(SKETCHER_ARG_PLANE, theRefPlane); }
  Handle(GEOM_Function) GetPlane() { return _func->GetReference(SKETCHER_ARG_PLANE); }

  void SetLevel(int resultLevel) { _func->SetInteger(SKETCHER_ARG_LEVEL, resultLevel); }
  int GetLevel() { return _func->GetInteger(SKETCHER_ARG_LEVEL); }

 private:

  Handle(GEOM_Function) _func;
};
//------------------------------------------------------------------------------

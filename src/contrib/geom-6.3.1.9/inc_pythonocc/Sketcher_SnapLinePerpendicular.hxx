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
// Original work from OpenCascade Sketcher 
// (http://sourceforge.net/projects/occsketcher/)
//
// Modifications for GEOM and OCAF
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#ifndef Sketcher_SnapLinePerpendicular_H
#define Sketcher_SnapLinePerpendicular_H
//------------------------------------------------------------------------------
#include "Sketcher_SnapLine.hxx"
//------------------------------------------------------------------------------
#include <Handle_AIS_PerpendicularRelation.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_SnapLinePerpendicular,Sketcher_SnapLine)
//------------------------------------------------------------------------------
class Sketcher_SnapLinePerpendicular : public Sketcher_SnapLine
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_SnapLinePerpendicular)

    Standard_EXPORT Sketcher_SnapLinePerpendicular();
    Standard_EXPORT ~Sketcher_SnapLinePerpendicular();

    Standard_EXPORT void SelectEvent();
    Standard_EXPORT Sketcher_SnapType GetSnapType();
    Standard_EXPORT void DrawRelation();
    Standard_EXPORT void EraseRelation();

  private:
    Handle(AIS_PerpendicularRelation) myPerRelation;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------

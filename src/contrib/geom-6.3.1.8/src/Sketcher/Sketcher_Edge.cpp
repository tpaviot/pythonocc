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
#include "Sketcher_Edge.hxx"
//------------------------------------------------------------------------------
#include <ElCLib.hxx>
//------------------------------------------------------------------------------
Sketcher_Edge::Sketcher_Edge()
    :Geom2d_Line(gp::Origin2d(),gp::DX2d())
{
}
//------------------------------------------------------------------------------
Sketcher_Edge::~Sketcher_Edge()
{
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_Edge::SetPoints(const gp_Pnt2d& p1,const gp_Pnt2d& p2)
{
  if (!p1.IsEqual(p2,0)) {
    SetDirection(gp_Dir2d(gp_Vec2d(p1,p2)));
    SetLocation(p1);
    StartPnt = p1;
    EndPnt = p2;
    return Standard_True;
  }
  else return Standard_False;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Edge::GetStart_Pnt() const
{
  return StartPnt;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Edge::GetEnd_Pnt() const
{
  return EndPnt;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Edge::MiddlePnt() const
{
  return StartPnt.Scaled(EndPnt,0.5);
}
//------------------------------------------------------------------------------
Standard_Real Sketcher_Edge::StartParameter() const
{
  return ElCLib::Parameter(Lin2d(),StartPnt);
}
//------------------------------------------------------------------------------
Standard_Real Sketcher_Edge::EndParameter() const
{
  return ElCLib::Parameter(Lin2d(),EndPnt);
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_Edge,Geom2d_Line)
IMPLEMENT_STANDARD_RTTI(Sketcher_Edge)
IMPLEMENT_STANDARD_TYPE(Sketcher_Edge)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Line)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Curve)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Geometry)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Line)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Curve)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Geometry)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_Edge)
//------------------------------------------------------------------------------

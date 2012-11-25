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
#include "Sketcher_Arc.hxx"
//------------------------------------------------------------------------------
#include <ElCLib.hxx>
//------------------------------------------------------------------------------
Sketcher_Arc::Sketcher_Arc(const gp_Circ2d& C)
    :Geom2d_Circle(C)
{
  myFirstParam = 0.0;
  myLastParam = 2*M_PI;
}
//------------------------------------------------------------------------------
Sketcher_Arc::Sketcher_Arc(const gp_Ax2d& Ax2d,const Standard_Real R)
    :Geom2d_Circle(Ax2d,R)
{
  myFirstParam = 0.0;
  myLastParam = 2*M_PI;
}
//------------------------------------------------------------------------------
Sketcher_Arc::~Sketcher_Arc()
{
}
//------------------------------------------------------------------------------
void Sketcher_Arc::SetParam(const gp_Pnt2d& start,const gp_Pnt2d& mid,const gp_Pnt2d& end)
{
  myFirstParam = ElCLib::Parameter(Circ2d(),start);
  myLastParam = ElCLib::Parameter(Circ2d(),end);
  Standard_Real u = ElCLib::Parameter(Circ2d(),mid);
  CheckParam();

  if ((myFirstParam < u) && (u < myLastParam) ||
      (myFirstParam < u + 2*M_PI) && (u + 2*M_PI < myLastParam));
  else {
    Standard_Real u;

    if (myLastParam > 2*M_PI) {
      myLastParam -= 2*M_PI;
      u = myFirstParam;
    }
    else u = myFirstParam + 2*M_PI;

    myFirstParam = myLastParam;
    myLastParam = u;
  }
}
//------------------------------------------------------------------------------
void Sketcher_Arc::SetFirstParam(const Standard_Real u1)
{
  myFirstParam = u1;
  CheckParam();
}
//------------------------------------------------------------------------------
void Sketcher_Arc::SetFirstParam(const gp_Pnt2d& p1)
{
  myFirstParam = ElCLib::Parameter(Circ2d(),p1);
  CheckParam();
}
//------------------------------------------------------------------------------
void Sketcher_Arc::SetLastParam(const Standard_Real u2)
{
  myLastParam = u2;
  CheckParam();
}
//------------------------------------------------------------------------------
void Sketcher_Arc::SetLastParam(const gp_Pnt2d& p2)
{
  myLastParam = ElCLib::Parameter(Circ2d(),p2);
  CheckParam();
}
//------------------------------------------------------------------------------
Standard_Real Sketcher_Arc::FirstParameter() const
{
  return myFirstParam;
}
//------------------------------------------------------------------------------
Standard_Real Sketcher_Arc::LastParameter() const
{
  return myLastParam;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Arc::FirstPnt() const
{
  return ElCLib::Value(myFirstParam,Circ2d());
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Arc::LastPnt() const
{
  return ElCLib::Value(myLastParam,Circ2d());
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Arc::MiddlePnt() const
{
  return ElCLib::Value((myLastParam + myFirstParam) / 2, Circ2d());
}
//------------------------------------------------------------------------------
void Sketcher_Arc::CheckParam()
{
  while (myFirstParam > 2*M_PI)
    myFirstParam-= 2*M_PI;

  while (myLastParam > 2*M_PI || (myLastParam - myFirstParam)> 2*M_PI)
    myLastParam -= 2*M_PI;

  while (myFirstParam > myLastParam)
    myLastParam += 2*M_PI;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_Arc,Geom2d_Circle)
IMPLEMENT_STANDARD_RTTI(Sketcher_Arc)
IMPLEMENT_STANDARD_TYPE(Sketcher_Arc)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Circle)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Conic)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Curve)
IMPLEMENT_STANDARD_SUPERTYPE(Geom2d_Geometry)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Circle)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Conic)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Curve)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Geom2d_Geometry)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_Arc)
//------------------------------------------------------------------------------

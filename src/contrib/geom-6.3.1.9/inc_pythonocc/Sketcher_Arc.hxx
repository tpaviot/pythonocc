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
#ifndef _Sketcher_Arc_HeaderFile
#define _Sketcher_Arc_HeaderFile
//------------------------------------------------------------------------------
#include <Standard_DefineHandle.hxx>
#include <Geom2d_Circle.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_Arc,Geom2d_Circle)
//------------------------------------------------------------------------------
class Sketcher_Arc : public Geom2d_Circle
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_Arc)

    Standard_EXPORT Sketcher_Arc(const gp_Circ2d& C);
    Standard_EXPORT Sketcher_Arc(const gp_Ax2d& Ax2d,const Standard_Real R);
    Standard_EXPORT ~Sketcher_Arc();

    Standard_EXPORT void SetParam(const gp_Pnt2d& start,const gp_Pnt2d& mid,const gp_Pnt2d& end);
    Standard_EXPORT void SetFirstParam(const Standard_Real u1);
    Standard_EXPORT void SetFirstParam(const gp_Pnt2d& p1);
    Standard_EXPORT void SetLastParam(const Standard_Real u2);
    Standard_EXPORT void SetLastParam(const gp_Pnt2d& p2);
    
    Standard_EXPORT Standard_Real FirstParameter() const;
    Standard_EXPORT Standard_Real LastParameter() const;

    Standard_EXPORT gp_Pnt2d FirstPnt() const;
    Standard_EXPORT gp_Pnt2d LastPnt() const;
    Standard_EXPORT gp_Pnt2d MiddlePnt() const;

  private:
    Standard_EXPORT void CheckParam();

    Standard_Real myFirstParam;
    Standard_Real myLastParam;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------

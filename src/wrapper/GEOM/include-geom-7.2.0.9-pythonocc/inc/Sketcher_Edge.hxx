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
#ifndef _Sketcher_Edge_HeaderFile
#define _Sketcher_Edge_HeaderFile
//------------------------------------------------------------------------------
#include <Standard_DefineHandle.hxx>
#include <Geom2d_Line.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_Edge,Geom2d_Line)
//------------------------------------------------------------------------------
class Sketcher_Edge : public Geom2d_Line
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_Edge)

    Standard_EXPORT Sketcher_Edge();
    Standard_EXPORT ~Sketcher_Edge();

    Standard_EXPORT Standard_Boolean SetPoints(const gp_Pnt2d& p1,const gp_Pnt2d& p2);
    Standard_EXPORT gp_Pnt2d GetStart_Pnt() const;
    Standard_EXPORT gp_Pnt2d GetEnd_Pnt() const;
    Standard_EXPORT gp_Pnt2d MiddlePnt() const;

    Standard_EXPORT Standard_Real StartParameter() const;
    Standard_EXPORT Standard_Real EndParameter() const;

  private:
    gp_Pnt2d  StartPnt;
    gp_Pnt2d  EndPnt;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------

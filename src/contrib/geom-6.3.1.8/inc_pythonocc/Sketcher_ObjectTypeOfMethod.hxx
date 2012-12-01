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
#ifndef Sketcher_ObjectTypeOfMethod_HeaderFile
#define Sketcher_ObjectTypeOfMethod_HeaderFile
//------------------------------------------------------------------------------
enum Sketcher_ObjectTypeOfMethod {
  Nothing_Method,
  Point_Method,
  Line2P_Method,
  CircleCenterRadius_Method,
  Circle3P_Method,
  Circle2PTan_Method,
  CircleP2Tan_Method,
  Circle3Tan_Method,
  Arc3P_Method,
  ArcCenter2P_Method,
  BezierCurve_Method,
  Trim_Method
};
//------------------------------------------------------------------------------
enum Sketcher_TangentType {
  NothingTangent,
  Line_FirstPnt,
  Line_SecondPnt,
  Circle_CenterPnt
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------

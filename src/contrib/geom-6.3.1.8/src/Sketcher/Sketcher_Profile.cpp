//  GEOM SKETCHER : basic sketcher
//
//  Copyright (C) 2003  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//


//  File   : Sketcher_Profile.cxx
//  Author : Damien COQUERET
//  Module : GEOM
//  $Header:
//
#include <Standard_Stream.hxx>

#include <Sketcher_Profile.hxx>

#include <TopoDS_Vertex.hxx>
#include <TopoDS_Face.hxx>
#include <BRepLib.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>

#include <GeomAPI.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2d_Circle.hxx>
#include <Geom_Surface.hxx>

#include <Precision.hxx>
#include <gp_Pln.hxx>
#include <gp_Ax2.hxx>

#include <TCollection_AsciiString.hxx>
#include <TColStd_Array1OfAsciiString.hxx>

#include "utilities.h"

//=======================================================================
// profile
// command to build a profile
//=======================================================================
Sketcher_Profile::Sketcher_Profile()
{
}


//=======================================================================
// profile
// command to build a profile
//=======================================================================
Sketcher_Profile::Sketcher_Profile(const char* aCmd)
{
  enum {line, circle, point, none} move;

  Standard_Integer i = 1;
  Standard_Real x0, y0, x, y, dx, dy;
  x0 = y0 = x = y = dy = 0;
  dx = 1;

  Standard_Boolean first, stayfirst, face, close;
  first = Standard_True;
  stayfirst = face = close = Standard_False;

  Standard_Integer reversed = 0;
  Standard_Integer control_Tolerance = 0;

  TopoDS_Shape S;
  TopoDS_Vertex MP;
  BRepBuilderAPI_MakeWire MW;
  gp_Ax3 DummyHP(gp::XOY());
  gp_Pln P(DummyHP);
  TopLoc_Location TheLocation;
  Handle(Geom_Surface) Surface;

  myOK = Standard_False;
  myError = 0;

  //TCollection_AsciiString aCommand(CORBA::string_dup(aCmd));
  TCollection_AsciiString aCommand ((char*)aCmd);
  TCollection_AsciiString aToken = aCommand.Token(":", 1);
  int n = 0;
  // porting to WNT
  TColStd_Array1OfAsciiString aTab (0, aCommand.Length() - 1);
  if ( aCommand.Length() )
  {
    while(aToken.Length() != 0) {
      if(aCommand.Token(":", n + 1).Length() > 0)
        aTab(n) = aCommand.Token(":", n + 1);
      aToken = aCommand.Token(":", ++n);
    }
    n = n - 1;
  }
  if ( aTab.Length() && aTab(0).Length() )
    while(i < n) {
      Standard_Real length = 0, radius = 0, angle = 0;
      move = point;

      int n1 = 0;
      TColStd_Array1OfAsciiString a (0, aTab(0).Length());
      aToken = aTab(i).Token(" ", 1);
      while (aToken.Length() != 0) {
        if (aTab(i).Token(" ", n1 + 1).Length() > 0)
          a(n1) = aTab(i).Token(" ", n1 + 1);
        aToken = aTab(i).Token(" ", ++n1);
      }
      n1 = n1 - 1;

      switch(a(0).Value(1))
      {
      case 'F':
        {
          if (n1 != 3) goto badargs;
          if (!first) {
            MESSAGE("profile : The F instruction must precede all moves");
            return;
          }
          x0 = x = a(1).RealValue();
          y0 = y = a(2).RealValue();
          stayfirst = Standard_True;
          break;
        }
      case 'O':
        {
          if (n1 != 4) goto badargs;
          P.SetLocation(gp_Pnt(a(1).RealValue(), a(2).RealValue(), a(3).RealValue()));
          stayfirst = Standard_True;
          break;
        }
      case 'P':
        {
          if (n1 != 7) goto badargs;
          gp_Vec vn(a(1).RealValue(), a(2).RealValue(), a(3).RealValue());
          gp_Vec vx(a(4).RealValue(), a(5).RealValue(), a(6).RealValue());
          if (vn.Magnitude() <= Precision::Confusion() || vx.Magnitude() <= Precision::Confusion()) {
            MESSAGE("profile : null direction");
            return;
          }
          gp_Ax2 ax(P.Location(), vn, vx);
          P.SetPosition(ax);
          stayfirst = Standard_True;
          break;
        }
      case 'X':
        {
          if (n1 != 2) goto badargs;
          length = a(1).RealValue();
          if (a(0) == "XX")
            length -= x;
          dx = 1; dy = 0;
          move = line;
          break;
        }
      case 'Y':
        {
          if (n1 != 2) goto badargs;
          length = a(1).RealValue();
          if (a(0) == "YY")
            length -= y;
          dx = 0; dy = 1;
          move = line;
          break;
        }
      case 'L':
        {
          if (n1 != 2) goto badargs;
          length = a(1).RealValue();
          if (Abs(length) > Precision::Confusion())
            move = line;
          else
            move = none;
          break;
        }
      case 'T':
        {
          if (n1 != 3) goto badargs;
          Standard_Real vx = a(1).RealValue();
          Standard_Real vy = a(2).RealValue();
          if (a(0) == "TT") {
            vx -= x;
            vy -= y;
          }
          length = Sqrt(vx * vx + vy * vy);
          if (length > Precision::Confusion()) {
            move = line;
            dx = vx / length;
            dy = vy / length;
          }
          else
            move = none;
          break;
        }
      case 'R':
        {
          if (n1 != 2) goto badargs;
          angle = a(1).RealValue() * M_PI / 180.;
          if (a(0) == "RR") {
            dx = Cos(angle);
            dy = Sin(angle);
          }
          else {
            Standard_Real c = Cos(angle);
            Standard_Real s = Sin(angle);
            Standard_Real t = c * dx - s * dy;
            dy = s * dx + c * dy;
            dx = t;
          }
          break;
        }
      case 'D':
        {
          if (n1 != 3) goto badargs;
          Standard_Real vx = a(1).RealValue();
          Standard_Real vy = a(2).RealValue();
          length = Sqrt(vx * vx + vy * vy);
          if (length > Precision::Confusion()) {
            dx = vx / length;
            dy = vy / length;
          }
          else
            move = none;
          break;
        }
      case 'C':
        {
          if (n1 != 3) goto badargs;
          radius = a(1).RealValue();
          if (Abs(radius) > Precision::Confusion()) {
            angle = a(2).RealValue() * M_PI / 180.;
            move = circle;
          }
          else
            move = none;
          break;
        }
      case 'A':                                // TAngential arc by end point   
        { 
          if (n1 != 3) goto badargs;
          Standard_Real vx = a(1).RealValue();
          Standard_Real vy = a(2).RealValue(); 
          if (a(0) == "AA") {
            vx -= x;
            vy -= y;
          }
          Standard_Real det = dx * vy - dy * vx;
          if ( Abs(det) > Precision::Confusion()) {
            Standard_Real c = (dx * vx + dy * vy)                                            
                              / Sqrt((dx * dx + dy * dy) * (vx * vx + vy * vy));                 // Cosine of alpha = arc of angle / 2 , alpha in [0,Pi]
            radius = (vx * vx + vy * vy)* Sqrt(dx * dx + dy * dy)                                // radius = distance between start and end point / 2 * sin(alpha)  
                     / (2.0 * det);	                                                             // radius is > 0 or < 0
            if (Abs(radius) > Precision::Confusion()) {
              angle = 2.0 * acos(c); 	                                                         // angle in [0,2Pi]  
              move = circle;
            }
            else
              move = none;
            break;
          } 
          else
            move = none;
          break;
        } 
      case 'U':                                // Arc by end point and radiUs
        { 
          if (n1 != 5) goto badargs;
          Standard_Real vx = a(1).RealValue();
          Standard_Real vy = a(2).RealValue();
          radius  = a(3).RealValue();
          reversed = a(4).IntegerValue();
          if (a(0) == "UU") {                 // Absolute
            vx -= x;
            vy -= y;
          }
          Standard_Real length = Sqrt(vx * vx + vy * vy);
          if ( (4.0 - (vx * vx + vy * vy) / (radius * radius) >= 0.0 ) && (length > Precision::Confusion()) ) {
            Standard_Real c = 0.5 * Sqrt(4.0 - (vx * vx + vy * vy) / (radius * radius));        // Cosine of alpha = arc angle / 2 , alpha in [0,Pi/2]
            angle = 2.0 * acos(c); 	                                                            // angle in [0,Pi]
            if ( reversed == 2 )
              angle = angle - 2 * M_PI; 
            dx =    0.5 * (  vy * 1.0/radius 
                           + vx * Sqrt(4.0  / (vx * vx + vy * vy) - 1.0 / (radius * radius)));    
            dy = -  0.5 * (  vx * 1.0/radius 
                           - vy * Sqrt(4.0  / (vx * vx + vy * vy) - 1.0 / (radius * radius)));    
            move = circle;
          }
          else{
            move = none;
          }
          break;
        }	 
      case 'E':                                // Arc by end point and cEnter
        { 
          if (n1 != 7) goto badargs;
          Standard_Real vx = a(1).RealValue();
          Standard_Real vy = a(2).RealValue();
          Standard_Real vxc  = a(3).RealValue();
          Standard_Real vyc  = a(4).RealValue();
          reversed = a(5).IntegerValue();
          control_Tolerance = a(6).IntegerValue();

          if (a(0) == "EE") {                 // Absolute
            vx -= x;
            vy -= y;
            vxc -= x;
            vyc -= y; 
          }
          radius = Sqrt( vxc * vxc + vyc * vyc );
          Standard_Real det = vx * vyc - vy * vxc;
          Standard_Real length = Sqrt(vx * vx + vy * vy);
          Standard_Real length2 = Sqrt((vx-vxc) * (vx-vxc) + (vy-vyc) * (vy-vyc));
          Standard_Real length3 = Sqrt(vxc * vxc + vyc * vyc);
          Standard_Real error = Abs(length2 - radius);
          myError = error;
          if ( error > Precision::Confusion() ){
            MESSAGE("Warning : The specified end point is not on the Arc, distance = "<<error);
          }
          if ( error > Precision::Confusion() && control_Tolerance == 1)                      // Don't create the arc if the end point 
            move = none;                                                                      // is too far from it
          else if ( (length > Precision::Confusion()) && 
                    (length2 > Precision::Confusion()) && 
                    (length3 > Precision::Confusion()) ) {
            Standard_Real c = ( radius * radius - (vx * vxc + vy * vyc) ) 
                            / ( radius * Sqrt((vx-vxc) * (vx-vxc) + (vy-vyc) * (vy-vyc)) ) ;  // Cosine of arc angle 
            angle = acos(c);                                                                  // angle in [0,Pi] 
            if ( reversed == 2 )
              angle = angle - 2 * M_PI;
            if (det < 0)
              angle = -angle; 
            dx =  vyc / radius;
            dy = -vxc / radius; 
            move = circle;
          }
          else {
            move = none;
          }
          break;
        }	
      case 'I':
        {
          if (n1 != 2) goto badargs;
          length = a(1).RealValue();
          if (a(0) == "IX") {
            if (Abs(dx) < Precision::Confusion()) {
              MESSAGE("profile : cannot intersect, arg "<<i-1);
              return;
            }
            length = (length - x) / dx;
          }
          else if (a(0) == "IY") {
            if (Abs(dy) < Precision::Confusion()) {
              MESSAGE("profile : cannot intersect, arg "<<i-1);
              return;
            }
            length = (length - y) / dy;
          }
          if (Abs(length) > Precision::Confusion())
            move = line;
          else
            move = none;
          break;
        }
      case 'W':
        {
          if (a(0) == "WW")
            close = Standard_True;
          else if(a(0) == "WF") {
            close = Standard_True;
            face = Standard_True;
          }
          i = n - 1;
          break;
        }
      default:
        {
          MESSAGE("profile : unknown code " << a(i));
          return;
        }
    }

again :
    switch (move)
    {
    case line :
      {
        if (length < 0) {
          length = -length;
          dx = -dx;
          dy = -dy;
        }
        Handle(Geom2d_Line) l = new Geom2d_Line(gp_Pnt2d(x,y),gp_Dir2d(dx,dy));
        BRepBuilderAPI_MakeEdge ME (GeomAPI::To3d(l,P),0,length);
        if (!ME.IsDone())
          return;
        MW.Add(ME);
        x += length*dx;
        y += length*dy;
        break;
      }
    case circle :
      {
        Standard_Boolean sense = Standard_True;
        if (radius < 0) {
          radius = -radius;
          sense = !sense;
          dx = -dx;
          dy = -dy;
        }
        gp_Ax2d ax(gp_Pnt2d(x-radius*dy,y+radius*dx),gp_Dir2d(dy,-dx));
        if (angle < 0) {
          angle = -angle;
          sense = !sense;
        }
        Handle(Geom2d_Circle) c = new Geom2d_Circle(ax,radius,sense);
        BRepBuilderAPI_MakeEdge ME (GeomAPI::To3d(c,P),0,angle);
        if (!ME.IsDone())
          return;
        MW.Add(ME);
        gp_Pnt2d p;
        gp_Vec2d v;
        c->D1(angle,p,v);
        x = p.X();
        y = p.Y();
        dx = v.X() / radius;
        dy = v.Y() / radius;
        break;
      }
    case point:
      {
        MP = BRepBuilderAPI_MakeVertex(gp_Pnt(x, y, 0.0));
        break;
      }
    case none:
      {
        i = n - 1;
        break;
      }
    }

    // update first
    first = stayfirst;
    stayfirst = Standard_False;

    if(!(dx == 0 && dy == 0))
      myLastDir.SetCoord(dx, dy, 0.0);
    else
      return;
    myLastPoint.SetX(x);
    myLastPoint.SetY(y);

    // next segment....
    i++;
    if ((i == n) && close) {
      // the closing segment
      dx = x0 - x;
      dy = y0 - y;
      length = Sqrt(dx * dx + dy * dy);
      move = line;
      if (length > Precision::Confusion()) {
        dx = dx / length;
        dy = dy / length;
        goto again;
      }
    }
  }

  // get the result, face or wire
  if (move == none) {
    return;
  } else if (move == point) {
    S = MP;
  } else if (face) {
    if (!MW.IsDone()) {
      return;
    }
    BRepBuilderAPI_MakeFace MF (P, MW.Wire());
    if (!MF.IsDone()) {
      return;
    }
    S = MF;
  } else {
    if (!MW.IsDone()) {
      return;
    }
    S = MW;
  }

  if(!TheLocation.IsIdentity())
    S.Move(TheLocation);

  myShape = S;
  myOK = true;
  return;

  badargs :
    MESSAGE("profile : bad number of arguments");
    return;
}

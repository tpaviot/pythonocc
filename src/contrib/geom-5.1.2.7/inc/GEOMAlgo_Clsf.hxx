//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
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
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _GEOMAlgo_Clsf_HeaderFile
#define _GEOMAlgo_Clsf_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_Clsf_HeaderFile
#include <Handle_GEOMAlgo_Clsf.hxx>
#endif

#ifndef _TopAbs_State_HeaderFile
#include <TopAbs_State.hxx>
#endif
#ifndef _gp_Pnt_HeaderFile
#include <gp_Pnt.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _GEOMAlgo_HAlgo_HeaderFile
#include <GEOMAlgo_HAlgo.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Handle_Geom_Curve_HeaderFile
#include <Handle_Geom_Curve.hxx>
#endif
#ifndef _Handle_Geom_Surface_HeaderFile
#include <Handle_Geom_Surface.hxx>
#endif
class gp_Pnt;
class Geom_Curve;
class Geom_Surface;



class GEOMAlgo_Clsf : public GEOMAlgo_HAlgo {

public:
 // Methods PUBLIC
 // 


Standard_EXPORT   void SetPnt(const gp_Pnt& aP) ;


Standard_EXPORT  const gp_Pnt& Pnt() const;


Standard_EXPORT   void SetTolerance(const Standard_Real aT) ;


Standard_EXPORT   Standard_Real Tolerance() const;


Standard_EXPORT   TopAbs_State State() const;


Standard_EXPORT virtual  Standard_Boolean CanBeON(const Handle(Geom_Curve)& aCT) const;


Standard_EXPORT virtual  Standard_Boolean CanBeON(const Handle(Geom_Surface)& aST) const;
//Standard_EXPORT ~GEOMAlgo_Clsf();




 // Type management
 //
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 //Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;

protected:

 // Methods PROTECTED
 // 


Standard_EXPORT GEOMAlgo_Clsf();
Standard_EXPORT virtual ~GEOMAlgo_Clsf();


 // Fields PROTECTED
 //
TopAbs_State myState;
gp_Pnt myPnt;
Standard_Real myTolerance;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

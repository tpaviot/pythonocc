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
#ifndef _GEOMAlgo_SurfaceTools_HeaderFile
#define _GEOMAlgo_SurfaceTools_HeaderFile

#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Handle_Geom_Surface_HeaderFile
#include <Handle_Geom_Surface.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _TopAbs_State_HeaderFile
#include <TopAbs_State.hxx>
#endif
#ifndef _GEOMAlgo_State_HeaderFile
#include <GEOMAlgo_State.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
class Geom_Surface;
class gp_Pnt;
class gp_Cylinder;
class GeomAdaptor_Surface;
class gp_Pln;
class gp_Sphere;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_SurfaceTools  {

public:

    void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
 // Methods PUBLIC
 // 


Standard_EXPORT static  Standard_Boolean IsAnalytic(const Handle(Geom_Surface)& aS) ;


Standard_EXPORT static  Standard_Boolean IsCoaxial(const gp_Pnt& aP1,const gp_Pnt& aP2,const gp_Cylinder& aCyl,const Standard_Real aTol) ;


Standard_EXPORT static  Standard_Boolean IsConformState(const TopAbs_State aST1,const GEOMAlgo_State aST2) ;


Standard_EXPORT static  Standard_Integer GetState(const gp_Pnt& aP,const GeomAdaptor_Surface& aS,const Standard_Real aTol,TopAbs_State& aSt) ;


Standard_EXPORT static  Standard_Integer GetState(const gp_Pnt& aP,const Handle(Geom_Surface)& aS,const Standard_Real aTol,TopAbs_State& aSt) ;


Standard_EXPORT static  Standard_Real Distance(const gp_Pnt& aP,const gp_Pln& aPln) ;


Standard_EXPORT static  Standard_Real Distance(const gp_Pnt& aP,const gp_Cylinder& aCyl) ;


Standard_EXPORT static  Standard_Real Distance(const gp_Pnt& aP,const gp_Sphere& aSph) ;


Standard_EXPORT static  TopAbs_State ReverseState(const TopAbs_State aSt) ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

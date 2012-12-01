//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _NMTDS_BndSphere_HeaderFile
#define _NMTDS_BndSphere_HeaderFile

#ifndef _gp_Pnt_HeaderFile
#include <gp_Pnt.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class gp_Pnt;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_BndSphere  {

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


Standard_EXPORT NMTDS_BndSphere();
Standard_EXPORT virtual ~NMTDS_BndSphere();

  void SetCenter(const gp_Pnt& theP) ;

 const gp_Pnt& Center() const;

  void SetRadius(const Standard_Real theR) ;

  Standard_Real Radius() const;

  void SetGap(const Standard_Real theGap) ;

  Standard_Real Gap() const;

  void Add(const NMTDS_BndSphere& theOther) ;


Standard_EXPORT   Standard_Boolean IsOut(const NMTDS_BndSphere& theOther) const;

  Standard_Real SquareExtent() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
gp_Pnt myCenter;
Standard_Real myRadius;
Standard_Real myGap;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};


#include <NMTDS_BndSphere.lxx>



// other Inline functions and methods (like "C++: function call" methods)
//


#endif

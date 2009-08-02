// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
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
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com

#ifndef _BlockFix_UnionFaces_HeaderFile
#define _BlockFix_UnionFaces_HeaderFile

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class TopoDS_Shape;
class TopoDS_Face;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

class BlockFix_UnionFaces  {

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

//!Empty constructor
Standard_EXPORT BlockFix_UnionFaces();

//!Returns modifiable tolerance
Standard_EXPORT   Standard_Real& GetTolerance() ;

//!Performs the unification of the fsces whith the same geometry
Standard_EXPORT   TopoDS_Shape Perform(const TopoDS_Shape& Shape) ;

//!Returns true is surfaces have same geometrically domain with given tolerance
Standard_EXPORT virtual  Standard_Boolean IsSameDomain(const TopoDS_Face& aFace,const TopoDS_Face& aChekedFace) const;

//!Creates pcurves on aTarget face for each edge from aSource one.
Standard_EXPORT virtual  void MovePCurves(TopoDS_Face& aTarget,const TopoDS_Face& aSource) const;


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
Standard_Real myTolerance;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

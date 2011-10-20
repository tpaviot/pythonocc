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
#ifndef _GEOMAlgo_BuilderFace_HeaderFile
#define _GEOMAlgo_BuilderFace_HeaderFile

#ifndef _TopoDS_Face_HeaderFile
#include <TopoDS_Face.hxx>
#endif
#ifndef _GEOMAlgo_BuilderArea_HeaderFile
#include <GEOMAlgo_BuilderArea.hxx>
#endif
class TopoDS_Face;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//! The algorithm to build faces from set of edges <br>
class GEOMAlgo_BuilderFace  : public GEOMAlgo_BuilderArea {

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

//!  Empty  constructor <br>
Standard_EXPORT GEOMAlgo_BuilderFace();
Standard_EXPORT virtual ~GEOMAlgo_BuilderFace();

//! Sets the face generatix <br>
Standard_EXPORT   void SetFace(const TopoDS_Face& theFace) ;

//! Returns the face generatix <br>
Standard_EXPORT  const TopoDS_Face& Face() const;

//!  Performs the algorithm <br>
Standard_EXPORT virtual  void Perform() ;





protected:

 // Methods PROTECTED
 // 

//!  Collect the edges that <br>
//!           a) are internal <br>
//!           b) are the same and have different orientation <br>
Standard_EXPORT virtual  void PerformShapesToAvoid() ;

//! Build draft wires <br>
//!          a)myLoops - draft wires that consist of <br>
//!                       boundary edges <br>
//!          b)myLoopsInternal - draft wires that contains <br>
//!                               inner edges <br>
Standard_EXPORT virtual  void PerformLoops() ;

//! Build draft faces that contains boundary edges <br>
Standard_EXPORT virtual  void PerformAreas() ;

//! Build finalized faces with internals <br>
Standard_EXPORT virtual  void PerformInternalShapes() ;


 // Fields PROTECTED
 //
TopoDS_Face myFace;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

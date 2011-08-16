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
#ifndef _GEOMAlgo_HAlgo_HeaderFile
#define _GEOMAlgo_HAlgo_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_GEOMAlgo_HAlgo_HeaderFile
#include <Handle_GEOMAlgo_HAlgo.hxx>
#endif

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _MMgt_TShared_HeaderFile
#include <MMgt_TShared.hxx>
#endif



class GEOMAlgo_HAlgo : public MMgt_TShared {

public:
 // Methods PUBLIC
 // 


Standard_EXPORT virtual  void Perform()  = 0;


Standard_EXPORT virtual  void CheckData() ;


Standard_EXPORT virtual  void CheckResult() ;


Standard_EXPORT   Standard_Integer ErrorStatus() const;


Standard_EXPORT   Standard_Integer WarningStatus() const;
//Standard_EXPORT ~GEOMAlgo_HAlgo();




 // Type management
 //
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 //Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;

protected:

 // Methods PROTECTED
 // 


Standard_EXPORT GEOMAlgo_HAlgo();
Standard_EXPORT virtual ~GEOMAlgo_HAlgo();


 // Fields PROTECTED
 //
Standard_Integer myErrorStatus;
Standard_Integer myWarningStatus;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

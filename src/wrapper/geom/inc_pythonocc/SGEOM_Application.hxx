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
//
//  File   : GEOM_Application.hxx
//  Module : GEOM

#ifndef _GEOM_Application_HeaderFile
#define _GEOM_Application_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_SGEOM_Application_HeaderFile
#include <Handle_SGEOM_Application.hxx>
#endif

#ifndef _TDocStd_Application_HeaderFile
#include <TDocStd_Application.hxx>
#endif
#ifndef _Standard_CString_HeaderFile
#include <Standard_CString.hxx>
#endif

//! Callback reason
enum cbReason {cbOpenTransaction, cbAbortTransaction, cbCommitTransaction};

//! function pointer of transaction callback
 typedef int (*GEOM_TransactionCallbackProc)(
   const Handle(TDocStd_Document)&  /* document  */,
   cbReason                         /* call data */,
   void*                            /* user data */
 );

class TColStd_SequenceOfExtendedString;

//!TDocStd_Application descendant to implement OCAF capabilities in GEOM
class GEOM_Application : public TDocStd_Application {

public:

    inline void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    inline void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    inline void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
//    inline void  operator delete(void *anAddress, size_t size) 
//      { 
//        if (anAddress) Standard::Free((Standard_Address&)anAddress,size); 
//      }
 // Methods PUBLIC
 // 
Standard_EXPORT GEOM_Application();
Standard_EXPORT virtual  void Formats(TColStd_SequenceOfExtendedString& Formats) ;
Standard_EXPORT Standard_CString ResourcesName() ;
Standard_EXPORT ~GEOM_Application();

//! Sets a callback so that the application can use the transaction event mechanism
Standard_EXPORT void SetTransactionCallBack(const GEOM_TransactionCallbackProc& aCB,const Standard_Address aClientData);

//! Notification that is fired at each OpenTransaction event. <br>
Standard_EXPORT virtual  void OnOpenTransaction(const Handle(TDocStd_Document)& theDoc) ;

//! Notification that is fired at each CommitTransaction event. <br>
Standard_EXPORT virtual  void OnCommitTransaction(const Handle(TDocStd_Document)& theDoc) ;

//! Notification that is fired at each AbortTransaction event. <br>
Standard_EXPORT virtual  void OnAbortTransaction(const Handle(TDocStd_Document)& theDoc) ;


 // Type management
 //
 Standard_EXPORT friend Handle_Standard_Type& GEOM_Application_Type_();
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 Standard_EXPORT Standard_Boolean IsKind(const Handle(Standard_Type)&) const;

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

 
 Standard_Address myClientData;
 GEOM_TransactionCallbackProc myCB;


};





// other inline functions and methods (like "C++: function call" methods)
//


#endif

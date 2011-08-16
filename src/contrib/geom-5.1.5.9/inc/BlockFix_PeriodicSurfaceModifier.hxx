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

#ifndef _BlockFix_PeriodicSurfaceModifier_HeaderFile
#define _BlockFix_PeriodicSurfaceModifier_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_BlockFix_PeriodicSurfaceModifier_HeaderFile
#include <Handle_BlockFix_PeriodicSurfaceModifier.hxx>
#endif

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeInteger_HeaderFile
#include <TopTools_DataMapOfShapeInteger.hxx>
#endif
#ifndef _TColStd_IndexedMapOfTransient_HeaderFile
#include <TColStd_IndexedMapOfTransient.hxx>
#endif
#ifndef _BRepTools_Modification_HeaderFile
#include <BRepTools_Modification.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Handle_Geom_Surface_HeaderFile
#include <Handle_Geom_Surface.hxx>
#endif
#ifndef _Handle_Geom_Curve_HeaderFile
#include <Handle_Geom_Curve.hxx>
#endif
#ifndef _Handle_Geom2d_Curve_HeaderFile
#include <Handle_Geom2d_Curve.hxx>
#endif
#ifndef _GeomAbs_Shape_HeaderFile
#include <GeomAbs_Shape.hxx>
#endif
class TopoDS_Face;
class Geom_Surface;
class TopLoc_Location;
class TopoDS_Edge;
class Geom_Curve;
class TopoDS_Vertex;
class gp_Pnt;
class Geom2d_Curve;


//!Rotation of the parametric space of the periodic surface in order
//!to avoid the seam and degenerared edge within it
class BlockFix_PeriodicSurfaceModifier : public BRepTools_Modification {

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
Standard_EXPORT BlockFix_PeriodicSurfaceModifier();

	//!---Purpose: Sets the tolerance for recognition of geometry
Standard_EXPORT   void SetTolerance(const Standard_Real Toler) ;


/**	Returns Standard_True if the face <F> has  been
*	modified. In this case, <S> is the new geometric
*	support of the face, <L> the new location,  <Tol>
*	the new tolerance.  Otherwise, returns
*	Standard_False, and <S>, <L>, <Tol> are  not
*	significant.*/
Standard_EXPORT   Standard_Boolean NewSurface(const TopoDS_Face& F,Handle(Geom_Surface)& S,TopLoc_Location& L,Standard_Real& Tol,Standard_Boolean& RevWires,Standard_Boolean& RevFace) ;

/**	Returns Standard_True  if  the edge  <E> has  been
*	modified.  In this case,  <C> is the new geometric
*	support of the  edge, <L> the  new location, <Tol>
*	the         new    tolerance.   Otherwise, returns
*	Standard_False,    and  <C>,  <L>,   <Tol> are not
* 	significant.*/
Standard_EXPORT   Standard_Boolean NewCurve(const TopoDS_Edge& E,Handle(Geom_Curve)& C,TopLoc_Location& L,Standard_Real& Tol) ;

/**	Returns  Standard_True if the  vertex <V> has been
*	modified.  In this  case, <P> is the new geometric
*	support of the vertex,   <Tol> the new  tolerance.
*	Otherwise, returns Standard_False, and <P>,  <Tol>
*	are not significant.*/
Standard_EXPORT   Standard_Boolean NewPoint(const TopoDS_Vertex& V,gp_Pnt& P,Standard_Real& Tol) ;

/**	Returns Standard_True if  the edge  <E> has a  new
*	curve on surface on the face <F>.In this case, <C>
*	is the new geometric support of  the edge, <L> the
*	new location, <Tol> the new tolerance.
*	Otherwise, returns  Standard_False, and <C>,  <L>,
*	<Tol> are not significant.
*	<NewE> is the new  edge created from  <E>.  <NewF>
*	is the new face created from <F>. They may be usefull.*/
Standard_EXPORT   Standard_Boolean NewCurve2d(const TopoDS_Edge& E,const TopoDS_Face& F,const TopoDS_Edge& NewE,const TopoDS_Face& NewF,Handle(Geom2d_Curve)& C,Standard_Real& Tol) ;

/**	Returns Standard_True if the Vertex  <V> has a new
*	parameter on the  edge <E>. In  this case,  <P> is
*	the parameter,    <Tol>  the     new    tolerance.
*	Otherwise, returns Standard_False, and <P>,  <Tol>
*	are not significant.*/
Standard_EXPORT   Standard_Boolean NewParameter(const TopoDS_Vertex& V,const TopoDS_Edge& E,Standard_Real& P,Standard_Real& Tol) ;

/**	Returns the  continuity of  <NewE> between <NewF1>
*	and <NewF2>.
*	<NewE> is the new  edge created from <E>.  <NewF1>
*	(resp. <NewF2>) is the new  face created from <F1>
*	(resp. <F2>).*/
Standard_EXPORT   GeomAbs_Shape Continuity(const TopoDS_Edge& E,const TopoDS_Face& F1,const TopoDS_Face& F2,const TopoDS_Edge& NewE,const TopoDS_Face& NewF1,const TopoDS_Face& NewF2) ;

Standard_EXPORT ~BlockFix_PeriodicSurfaceModifier();




 // Type management
 //
 Standard_EXPORT friend Handle_Standard_Type& BlockFix_PeriodicSurfaceModifier_Type_();
 Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
 Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;

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
TopTools_DataMapOfShapeInteger myMapOfFaces;
TColStd_IndexedMapOfTransient myMapOfSurfaces;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif

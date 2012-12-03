// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

//  File   : GEOMImpl_Fillet1d.hxx
//  Module : GEOMImpl
//
#ifndef _GEOMImpl_Fillet1d_HeaderFile
#define _GEOMImpl_Fillet1d_HeaderFile

#include <gp_Pnt.hxx>
#include <Geom_Plane.hxx>
#include <Geom2d_Curve.hxx>

#include <TopoDS_Edge.hxx>
#include <TColStd_ListOfReal.hxx>
#include <TColStd_SequenceOfReal.hxx>
#include <TColStd_SequenceOfInteger.hxx>

class GEOMImpl_Fillet1dPoint;

/**
* GEOMImpl_Fillet1d is 1D fillet algorithm on two planar edges with given radius
*/

class GEOMImpl_Fillet1d 
{
public:
  //! Constructor
  //! The fillet 1D algorithm initialise by two edges and plane
  Standard_EXPORT GEOMImpl_Fillet1d(const TopoDS_Edge& theEdge1,
                                    const TopoDS_Edge& theEdge2,
                                    const gp_Pln&      thePlane);
  //! Makes fillet with given radius
  //! @returns Standard_True, if at least one result computed
  Standard_EXPORT Standard_Boolean Perform(const Standard_Real theRadius);
  //! Returns result fillet edge and modified edges as out parameters
  Standard_EXPORT TopoDS_Edge Result(const gp_Pnt& thePoint, TopoDS_Edge& theEdge1, TopoDS_Edge& theEdge2);

private:
  //! private methods
  void fillPoint(GEOMImpl_Fillet1dPoint*);
  void fillDiff(GEOMImpl_Fillet1dPoint*, Standard_Real, Standard_Boolean);
  void performNewton(GEOMImpl_Fillet1dPoint*, GEOMImpl_Fillet1dPoint*);
  Standard_Boolean processPoint(GEOMImpl_Fillet1dPoint*, GEOMImpl_Fillet1dPoint*, Standard_Real);


private:
  //! private fields
  TopoDS_Edge myEdge1, myEdge2;
  Handle(Geom_Plane) myPlane;
  Handle(Geom2d_Curve) myCurve1, myCurve2;
  Standard_Real myStart1, myEnd1, myStart2, myEnd2, myRadius;
  TColStd_ListOfReal myResultParams;
  TColStd_SequenceOfInteger myResultOrientation;
  Standard_Boolean myStartSide, myEdgesExchnged;
  Standard_Integer myDegreeOfRecursion;
};


/**
* GEOMImpl_Fillet1dPoint is an internal class for 1D fillet algorithm
*   to store and compare computed solutions on edges
*/

class GEOMImpl_Fillet1dPoint
{
public:
  //! Puiblic methods

  //! Constructor
  Standard_EXPORT GEOMImpl_Fillet1dPoint(Standard_Real theParam)
  {myParam = theParam;}
  
  //! Make copy of point
  //!WARNING: Copies only field values: myParam, myV, myD, myValid
  Standard_EXPORT GEOMImpl_Fillet1dPoint* Copy(); // warning: this is not the full copy! 

  //! Set/Get parameter
  Standard_EXPORT inline void SetParam(Standard_Real theParam)
    {myParam = theParam;}
  Standard_EXPORT inline Standard_Real GetParam() const
    {return myParam;}
  Standard_EXPORT inline void SetParam2(const Standard_Real theParam2)
    {myParam2 = theParam2;}
  Standard_EXPORT inline Standard_Real GetParam2()
    { return myParam2 ; }

  //! Returns validity  
  Standard_EXPORT inline Standard_Boolean IsValid(int theIndex)
    {return (Standard_Boolean)myValid.Value(theIndex);}

  //! Get values
  Standard_EXPORT inline Standard_Integer GetNBValues() {return myV.Length();}
  Standard_EXPORT inline Standard_Real GetValue(Standard_Integer theIndex)
    {return myV.Value(theIndex);}
  Standard_EXPORT inline Standard_Real GetDiff(Standard_Integer theIndex)
    {return myD.Value(theIndex);}
  Standard_EXPORT inline Standard_Integer GetNear(Standard_Integer theIndex)
    {return myNear.Value(theIndex);}

  //! Set/Get center point
  Standard_EXPORT inline void SetCenter(const gp_Pnt2d thePoint)
    {myCenter = thePoint;}
  Standard_EXPORT inline const gp_Pnt2d GetCenter()
    {return myCenter;}

  Standard_EXPORT void AddValue(Standard_Real theValue, Standard_Boolean theIsValid);

  //! compute difference between this and given point
  Standard_EXPORT Standard_Boolean ComputeDifference(GEOMImpl_Fillet1dPoint*);
  Standard_EXPORT void FilterPoints(GEOMImpl_Fillet1dPoint*);
  
  //! Check is point contains solution and  returns the index of them if any
  Standard_EXPORT Standard_Integer HasSolution(Standard_Real theRadius); 
  //! Remove solution by index
  void RemoveSolution(Standard_Integer theIndex);

private:
  //! Private fields
  gp_Pnt2d myCenter;
  Standard_Real myParam, myParam2;
  TColStd_SequenceOfReal myV, myD;
  TColStd_SequenceOfInteger myValid, myNear;
};

#endif

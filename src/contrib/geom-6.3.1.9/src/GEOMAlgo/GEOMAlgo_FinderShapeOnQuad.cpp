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
// File      : GEOMAlgo_FinderShapeOnQuad.cxx
// Created   : Mon Oct 17 17:31:45 2005
// Author    : Edward AGAPOV (eap)
//
#include "GEOMAlgo_FinderShapeOnQuad.hxx"
#include "GEOMAlgo_SurfaceTools.hxx"

#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>
#include <Geom_Plane.hxx>


GEOMAlgo_FinderShapeOnQuad::GEOMAlgo_FinderShapeOnQuad(const gp_Pnt & theTopLeftPoint,
                                                       const gp_Pnt & theTopRigthPoint,
                                                       const gp_Pnt & theBottomLeftPoint,
                                                       const gp_Pnt & theBottomRigthPoint)
{
  myPoints.resize(6);
  myPoints[0] = theTopLeftPoint    ;
  myPoints[1] = theTopRigthPoint   ;
  myPoints[2] = theBottomRigthPoint;
  myPoints[3] = theBottomLeftPoint ;
  myPoints[4] = myPoints[0];
  myPoints[5] = myPoints[1];

  // Find plane normal defined by corner points, it will be used to define a plane
  // for each quadrangle side.
  myQuadNormal.SetCoord (0,0,0);
  for ( int i = 1; i <= 4; ++i )
    myQuadNormal += gp_Vec( myPoints[i], myPoints[i+1] ) ^ gp_Vec( myPoints[i], myPoints[i-1] );
  //std::cout<<std::endl<<" X Vec : "<<myQuadNormal.X()<<" "<<myQuadNormal.Y()<<" "<<myQuadNormal.Z()<<" "<<endl;

  if ( myQuadNormal.SquareMagnitude() <= DBL_MIN ) {
    myErrorStatus = 101;
    return;
  }

  // detect concave quadrangle sides
  myConcaveQuad = false;
  myConcaveSide.resize (4, false);
  for ( int i = 1; i <= 4; ++i ) {
    gp_Vec localQN = gp_Vec( myPoints[i], myPoints[i+1] ) ^ gp_Vec( myPoints[i], myPoints[i-1] );
    if ( myQuadNormal * localQN < 0 )
      myConcaveSide[i-1] = myConcaveSide[i] = myConcaveQuad = true;
  }

  // loop on quadrangle sides
  myPlanes.reserve( 4 );
  for ( int i = 0; i < 4; ++i )
  {
    // point1 -> point2 vector
    gp_Vec aSideVec( myPoints[ i ], myPoints[ i + 1 ]);
    //std::cout<<" Y Vec : "<<aSideVec.X()<<" "<<aSideVec.Y()<<" "<<aSideVec.Z()<<" "<<endl;

    // plane normal
    gp_Vec aSideNorm = aSideVec ^ myQuadNormal;
    if ( aSideNorm.SquareMagnitude() <= DBL_MIN )
      continue;
    //std::cout<<" Z Vec : "<<aSideNorm.X()<<" "<<aSideNorm.Y()<<" "<<aSideNorm.Z()<<" "<<endl;

    // make plane
    Handle(Geom_Plane) aPlane = new Geom_Plane( myPoints[ i ], aSideNorm );
    myPlanes.push_back( GeomAdaptor_Surface() );
    myPlanes.back().Load( aPlane );
  }
}

//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================

void GEOMAlgo_FinderShapeOnQuad::CheckData()
{
  if ( !myPlanes.empty() )
    mySurface = myPlanes[0].Surface();
  GEOMAlgo_FinderShapeOn1::CheckData();
}

//=======================================================================
//function : GetPointState
//purpose  : 
//=======================================================================

TopAbs_State GEOMAlgo_FinderShapeOnQuad::GetPointState(const gp_Pnt& aP) 
{
  // Return IN if aP has TopAbs_IN with all sides.
  // In the case of concave quadrangle, return IN if
  // aP is OUT of only one concave side
  double nbIn = 0.;
  for ( int i = 0; i < myPlanes.size(); ++i )
  {
    TopAbs_State aSt;
    GEOMAlgo_SurfaceTools::GetState(aP, myPlanes[i], myTolerance, aSt);
    if ( aSt == TopAbs_IN )
    {
      nbIn += myConcaveSide[i] ? 0.5 : 1.0;
    }
    else if ( aSt == TopAbs_ON )
    {
      // check that aP is between quadrangle corners
      Handle(Geom_Plane) aSidePlane = Handle(Geom_Plane)::DownCast( myPlanes[i].Surface() );
      gp_Vec aSideNorm = aSidePlane->Axis().Direction();
      gp_Vec aSideVec = myQuadNormal ^ aSideNorm;
      gp_Vec c1p ( myPoints[i], aP );
      gp_Vec pc2 ( aP, myPoints[i+1] );
      if ( aSideVec * c1p >= 0. && aSideVec * pc2 >= 0. )
        return TopAbs_ON;
      // consider to be IN (???????????)
      //nbIn += myConcaveSide[i] ? 0.5 : 1.0;
    }
  }
  Standard_Real inThreshold = myPlanes.size(); // usually 4.0
  if ( myConcaveQuad )
    inThreshold = 2.5; // 1.0 + 1.0 + 0.5

  if ( nbIn >= inThreshold )
    return TopAbs_IN;

  return TopAbs_OUT;
}


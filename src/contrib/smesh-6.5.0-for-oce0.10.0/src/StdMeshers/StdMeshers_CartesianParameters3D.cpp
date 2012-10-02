// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

//  File   : StdMeshers_CartesianParameters3D.cxx
//  Author : Edward AGAPOV
//  Module : SMESH
//
#include "StdMeshers_CartesianParameters3D.hxx"

#include "StdMeshers_NumberOfSegments.hxx"
#include "StdMeshers_Distribution.hxx"
#include "SMESH_Gen.hxx"

#include "utilities.h"

#include <Precision.hxx>
#include <Bnd_Box.hxx>

#include <limits>

using namespace std;

//=======================================================================
//function : StdMeshers_CartesianParameters3D
//purpose  : Constructor
//=======================================================================

StdMeshers_CartesianParameters3D::StdMeshers_CartesianParameters3D(int         hypId,
                                                                   int         studyId,
                                                                   SMESH_Gen * gen)
  : SMESH_Hypothesis(hypId, studyId, gen),
    _sizeThreshold( 4.0 ) // default according to the customer specification
{
  _name = "CartesianParameters3D"; // used by "Cartesian_3D"
  _param_algo_dim = 3; // 3D
}


namespace
{
  const char* axisName[3] = { "X", "Y", "Z" };

  //================================================================================
  /*!
   * \brief Checks validity of an axis index, throws in case of invalidity
   */
  //================================================================================

  void checkAxis(const int axis)
  {
    if ( axis < 0 || axis > 2 )
      throw SMESH_Exception(SMESH_Comment("Invalid axis index ") << axis <<
                             ". Valid axis indices are 0, 1 and 2");
  }

  //================================================================================
  /*!
   * \brief Checks validity of spacing data, throws in case of invalidity
   */
  //================================================================================

  void checkGridSpacing(std::vector<std::string>& spaceFunctions,
                        std::vector<double>&      internalPoints,
                        const std::string&        axis)
    throw ( SMESH_Exception )
  {
    if ( spaceFunctions.empty() )
      throw SMESH_Exception(SMESH_Comment("Empty space function for ") << axis );

    for ( size_t i = 1; i < internalPoints.size(); ++i )
      if ( internalPoints[i] - internalPoints[i-1] < 0 )
        throw SMESH_Exception(SMESH_Comment("Wrong order of internal points along ") << axis);
      else if ( internalPoints[i] - internalPoints[i-1] < 1e-3 )
        throw SMESH_Exception(SMESH_Comment("Too close internal points along ") << axis );

    const double tol = Precision::Confusion();
    if ( !internalPoints.empty() &&
         ( internalPoints.front() < -tol || internalPoints.back() > 1 + tol ))
      throw SMESH_Exception(SMESH_Comment("Invalid internal points along ") << axis);

    if ( internalPoints.empty() || internalPoints.front() > tol )
      internalPoints.insert( internalPoints.begin(), 0. );
    if ( internalPoints.size() < 2 || internalPoints.back() < 1 - tol )
      internalPoints.push_back( 1. );

    if ( internalPoints.size() != spaceFunctions.size() + 1 )
      throw SMESH_Exception
        (SMESH_Comment("Numbre of internal points mismatch number of functions for ") << axis);

    for ( size_t i = 0; i < spaceFunctions.size(); ++i )
      spaceFunctions[i] =
        StdMeshers_NumberOfSegments::CheckExpressionFunction( spaceFunctions[i], -1 );
  }
}

//=======================================================================
//function : SetGrid
//purpose  : Sets coordinates of node positions along an axes
//=======================================================================

void StdMeshers_CartesianParameters3D::SetGrid(std::vector<double>& coords, int axis)
  throw ( SMESH_Exception )
{
  checkAxis( axis );

  if ( coords.size() < 2 )
    throw SMESH_Exception(LOCALIZED("Wrong number of grid coordinates"));

  std::sort( coords.begin(), coords.end() );

  bool changed = ( _coords[axis] != coords );
  if ( changed )
  {
    _coords[axis] = coords;
    NotifySubMeshesHypothesisModification();
  }

  _spaceFunctions[axis].clear();
  _internalPoints[axis].clear();
}

//=======================================================================
//function : SetGridSpacing
//purpose  : Set grid spacing along the three axes
//=======================================================================

void StdMeshers_CartesianParameters3D::SetGridSpacing(std::vector<string>& xSpaceFuns,
                                                      std::vector<double>& xInternalPoints,
                                                      const int            axis)
  throw ( SMESH_Exception )
{
  checkAxis( axis );

  checkGridSpacing( xSpaceFuns, xInternalPoints, axisName[axis] );

  bool changed = ( xSpaceFuns      != _spaceFunctions[axis] ||
                   xInternalPoints != _internalPoints[axis] );

  _spaceFunctions[axis] = xSpaceFuns;
  _internalPoints[axis] = xInternalPoints;
  _coords[axis].clear();

  if ( changed )
    NotifySubMeshesHypothesisModification();
}

//=======================================================================
//function : SetSizeThreshold
//purpose  : Set size threshold
//=======================================================================

void StdMeshers_CartesianParameters3D::SetSizeThreshold(const double threshold)
  throw ( SMESH_Exception )
{
  if ( threshold <= 1.0 )
    throw SMESH_Exception(LOCALIZED("threshold must be > 1.0"));

  bool changed = fabs( _sizeThreshold - threshold ) > 1e-6;
  _sizeThreshold = threshold;

  if ( changed )
    NotifySubMeshesHypothesisModification();
}

//=======================================================================
//function : GetGridSpacing
//purpose  : return spacing
//=======================================================================

void StdMeshers_CartesianParameters3D::GetGridSpacing(std::vector<std::string>& spaceFunctions,
                                                      std::vector<double>&      internalPoints,
                                                      const int                 axis) const
  throw ( SMESH_Exception )
{
  if ( !IsGridBySpacing(axis) )
    throw SMESH_Exception(LOCALIZED("The grid is defined by coordinates and not by spacing"));

  spaceFunctions = _spaceFunctions[axis];
  internalPoints = _internalPoints[axis];
}

//=======================================================================
//function : IsGridBySpacing
//=======================================================================

bool StdMeshers_CartesianParameters3D::IsGridBySpacing(const int axis) const
  throw ( SMESH_Exception )
{
  checkAxis(axis);
  return !_spaceFunctions[axis].empty();
}


//=======================================================================
//function : ComputeCoordinates
//purpose  : Computes node coordinates by spacing functions
//=======================================================================

void StdMeshers_CartesianParameters3D::ComputeCoordinates(const double         x0,
                                                          const double         x1,
                                                          vector<std::string>& spaceFuns,
                                                          vector<double>&      points,
                                                          vector<double>&      coords,
                                                          const std::string&   axis )
  throw ( SMESH_Exception )
{
  checkGridSpacing( spaceFuns, points, axis );

  coords.clear();
  for ( size_t i = 0; i < spaceFuns.size(); ++i )
  {
    FunctionExpr fun( spaceFuns[i].c_str(), /*convMode=*/-1 );

    const double p0 = x0 * ( 1. - points[i])   + x1 * points[i];
    const double p1 = x0 * ( 1. - points[i+1]) + x1 * points[i+1];
    const double length = p1 - p0;

    const size_t nbSections = 1000;
    const double sectionLen = ( p1 - p0 ) / nbSections;
    vector< double > nbSegments( nbSections + 1 );
    nbSegments[ 0 ] = 0.;

    double t, spacing = 0;
    for ( size_t i = 1; i <= nbSections; ++i )
    {
      t = double( i ) / nbSections;
      if ( !fun.value( t, spacing ) || spacing < std::numeric_limits<double>::min() )
        throw SMESH_Exception(LOCALIZED("Invalid spacing function"));
      nbSegments[ i ] = nbSegments[ i-1 ] + std::min( 1., sectionLen / spacing );
    }

    const int nbCells = max (1, int(floor(nbSegments.back()+0.5)));
    const double corr = nbCells / nbSegments.back();

    if ( coords.empty() ) coords.push_back( p0 );

    for ( size_t iCell = 1, i = 1; i <= nbSections; ++i )
    {
      if ( nbSegments[i]*corr >= iCell )
      {
        t = (i - ( nbSegments[i] - iCell/corr )/( nbSegments[i] - nbSegments[i-1] )) / nbSections;
        coords.push_back( p0 + t * length );
        ++iCell;
      }
    }
    const double lastCellLen = coords.back() - coords[ coords.size() - 2 ];
    if ( fabs( coords.back() - p1 ) > 0.5 * lastCellLen )
      coords.push_back ( p1 );
  }
}

//=======================================================================
//function : GetCoordinates
//purpose  : Return coordinates of node positions along the three axes.
//           If the grid is defined by spacing functions, the coordinates are computed
//=======================================================================

void StdMeshers_CartesianParameters3D::GetCoordinates(std::vector<double>& xNodes,
                                                      std::vector<double>& yNodes,
                                                      std::vector<double>& zNodes,
                                                      const Bnd_Box&       bndBox) const
  throw ( SMESH_Exception )
{
  double x0,y0,z0, x1,y1,z1;
  if ( IsGridBySpacing(0) || IsGridBySpacing(1) || IsGridBySpacing(2))
  {
    if ( bndBox.IsVoid() ||
         bndBox.IsXThin( Precision::Confusion() ) ||
         bndBox.IsYThin( Precision::Confusion() ) ||
         bndBox.IsZThin( Precision::Confusion() ) )
      throw SMESH_Exception(LOCALIZED("Invalid bounding box"));
    bndBox.Get(x0,y0,z0, x1,y1,z1);
  }

  StdMeshers_CartesianParameters3D* me = const_cast<StdMeshers_CartesianParameters3D*>(this);
  if ( IsGridBySpacing(0) )
    ComputeCoordinates( x0, x1, me->_spaceFunctions[0], me->_internalPoints[0], xNodes, "X" );
  else
    xNodes = _coords[0];

  if ( IsGridBySpacing(1) )
    ComputeCoordinates( y0, y1, me->_spaceFunctions[1], me->_internalPoints[1], yNodes, "Y" );
  else
    yNodes = _coords[1];

  if ( IsGridBySpacing(2) )
    ComputeCoordinates( z0, z1, me->_spaceFunctions[2], me->_internalPoints[2], zNodes, "Z" );
  else
    zNodes = _coords[2];
}

//=======================================================================
//function : GetGrid
//purpose  : Return coordinates of node positions along the three axes
//=======================================================================

void StdMeshers_CartesianParameters3D::GetGrid(std::vector<double>& coords, int axis) const
  throw ( SMESH_Exception )
{
  if ( IsGridBySpacing(axis) )
    throw SMESH_Exception(LOCALIZED("The grid is defined by spacing and not by coordinates"));

  coords = _coords[axis];
}

//=======================================================================
//function : GetSizeThreshold
//purpose  : Return size threshold
//=======================================================================

double StdMeshers_CartesianParameters3D::GetSizeThreshold() const
{
  return _sizeThreshold;
}

//=======================================================================
//function : IsDefined
//purpose  : Return true if parameters are well defined
//=======================================================================

bool StdMeshers_CartesianParameters3D::IsDefined() const
{
  for ( int i = 0; i < 3; ++i )
    if (_coords[i].empty() && (_spaceFunctions[i].empty() || _internalPoints[i].empty()))
      return false;

  return ( _sizeThreshold > 1.0 );
}

//=======================================================================
//function : SaveTo
//purpose  : store my parameters into a stream
//=======================================================================

std::ostream & StdMeshers_CartesianParameters3D::SaveTo(std::ostream & save)
{
  save << _sizeThreshold << " ";

  for ( int i = 0; i < 3; ++i )
  {
    save << _coords[i].size() << " ";
    for ( size_t j = 0; j < _coords[i].size(); ++j )
      save << _coords[i][j] << " ";

    save << _internalPoints[i].size() << " ";
    for ( size_t j = 0; j < _internalPoints[i].size(); ++j )
      save << _internalPoints[i][j] << " ";

    save << _spaceFunctions[i].size() << " ";
    for ( size_t j = 0; j < _spaceFunctions[i].size(); ++j )
      save << _spaceFunctions[i][j] << " ";
  }

  return save;
}

//=======================================================================
//function : LoadFrom
//purpose  : resore my parameters from a stream
//=======================================================================

std::istream & StdMeshers_CartesianParameters3D::LoadFrom(std::istream & load)
{
  bool ok;

  ok = (load >> _sizeThreshold  );
  for ( int ax = 0; ax < 3; ++ax )
  {
    if (ok)
    {
      size_t i = 0;
      ok = (load >> i  );
      if ( i > 0 && ok )
      {
        _coords[ax].resize( i );
        for ( i = 0; i < _coords[ax].size() && ok; ++i )
          ok = (load >> _coords[ax][i]  );
      }
    }
    if (ok)
    {
      size_t i = 0;
      ok = (load >> i  );
      if ( i > 0 && ok )
      {
        _internalPoints[ax].resize( i );
        for ( i = 0; i < _internalPoints[ax].size() && ok; ++i )
          ok = (load >> _internalPoints[ax][i]  );
      }
    }
    if (ok)
    {
      size_t i = 0;
      ok = (load >> i  );
      if ( i > 0 && ok )
      {
        _spaceFunctions[ax].resize( i );
        for ( i = 0; i < _spaceFunctions[ax].size() && ok; ++i )
          ok = (load >> _spaceFunctions[ax][i]  );
      }
    }
  }
  return load;
}

//=======================================================================
//function : SetParametersByMesh
//=======================================================================

bool StdMeshers_CartesianParameters3D::SetParametersByMesh(const SMESH_Mesh*   ,
                                                           const TopoDS_Shape& )
{
  return false;
}

//=======================================================================
//function : SetParametersByDefaults
//=======================================================================

bool StdMeshers_CartesianParameters3D::SetParametersByDefaults(const TDefaults&  dflts,
                                                               const SMESH_Mesh* /*theMesh*/)
{
  if ( dflts._elemLength > 1e-100 )
  {
    vector<string> spacing( 1, SMESH_Comment(dflts._elemLength));
    vector<double> intPnts;
    SetGridSpacing( spacing, intPnts, 0 );
    SetGridSpacing( spacing, intPnts, 1 );
    SetGridSpacing( spacing, intPnts, 2 );
    return true;
  }
  return false;
}


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

//  File   : StdMeshers_CartesianParameters3D.hxx
//  Author : Edward AGAPOV
//  Module : SMESH
//
#ifndef _SMESH_CartesianParameters3D_HXX_
#define _SMESH_CartesianParameters3D_HXX_

#include "SMESH_StdMeshers.hxx"

#include "SMESH_Hypothesis.hxx"
#include "SMESH_Exception.hxx"

#include <vector>

class SMESH_Gen;
class Bnd_Box;

// =========================================================
/*!
 * This hypothesis specifies
 * - Definition of the Cartesian grid
 * - Size threshold
 */
// =========================================================

class STDMESHERS_EXPORT StdMeshers_CartesianParameters3D:  public SMESH_Hypothesis
{
public:
  // Constructor
  StdMeshers_CartesianParameters3D( int hypId, int studyId, SMESH_Gen * gen );

  /*!
   * Sets coordinates of node positions along an axis (countered from 0)
   */
  void SetGrid(std::vector<double>& xNodes, int axis) throw ( SMESH_Exception );
  /*!
   * Return coordinates of node positions along the three axes
   */
  void GetGrid(std::vector<double>& xNodes, int axis) const throw ( SMESH_Exception );

  /*!
   * \brief Set grid spacing along the three axes
   *  \param spaceFunctions - functions defining spacing values at given point on axis
   *  \param internalPoints - points dividing a grid into parts along each direction
   *
   * Parameter t of spaceFunction f(t) is a position [0,1] withing bounding box of
   * the shape to mesh
   */
  void SetGridSpacing(std::vector<std::string>& spaceFunctions,
                      std::vector<double>&      internalPoints,
                      const int                 axis) throw ( SMESH_Exception );

  void GetGridSpacing(std::vector<std::string>& spaceFunctions,
                      std::vector<double>&      internalPoints,
                      const int                 axis) const throw ( SMESH_Exception );

  bool IsGridBySpacing(const int axis) const throw ( SMESH_Exception );

  /*!
   * \brief Computes node coordinates by spacing functions
   *  \param x0 - lower coordinate
   *  \param x1 - upper coordinate
   *  \param spaceFuns - space functions
   *  \param points - internal points
   *  \param coords - the computed coordinates
   */
  static void ComputeCoordinates(const double              x0,
                                 const double              x1,
                                 std::vector<std::string>& spaceFuns,
                                 std::vector<double>&      points,
                                 std::vector<double>&      coords,
                                 const std::string&        axis ) throw (SMESH_Exception);
  /*!
   * Return coordinates of node positions along the three axes.
   * If the grid is defined by spacing functions, the coordinates are computed
   */
  void GetCoordinates(std::vector<double>& xNodes,
                      std::vector<double>& yNodes,
                      std::vector<double>& zNodes,
                      const Bnd_Box&       bndBox) const throw ( SMESH_Exception );
  /*!
   * Set size threshold. A polyhedral cell got by cutting an initial
   * hexahedron by geometry boundary is considered small and is removed if
   * it's size is \athreshold times less than the size of the initial hexahedron. 
   */
  void SetSizeThreshold(const double threshold) throw ( SMESH_Exception );
  /*!
   * \brief Return size threshold
   */
  double GetSizeThreshold() const;

  /*!
   * \brief Return true if parameters are well defined
   */
  bool IsDefined() const;

  /*!
   * \brief Persistence methods
   */
  virtual std::ostream & SaveTo(std::ostream & save);
  virtual std::istream & LoadFrom(std::istream & load);

  /*!
   * \brief Initialize my parameter values by the mesh built on the geometry
   */
  virtual bool SetParametersByMesh(const SMESH_Mesh* theMesh, const TopoDS_Shape& theShape);

  /*!
   * \brief Initialize my parameter values by default parameters.
   */
  virtual bool SetParametersByDefaults(const TDefaults& dflts, const SMESH_Mesh* theMesh=0);

 protected:

  std::vector<double>      _coords[3];
  std::vector<std::string> _spaceFunctions[3];
  std::vector<double>      _internalPoints[3];

  double _sizeThreshold;
};

#endif


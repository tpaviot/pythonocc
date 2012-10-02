// Copyright (C) 2010-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include "SMDS_MeshCell.hxx"
#include "utilities.h"

int SMDS_MeshCell::nbCells = 0;

SMDS_MeshCell::SMDS_MeshCell() :
  SMDS_MeshElement(-1)
{
  nbCells++;
  myVtkID = -1;
}

SMDS_MeshCell::~SMDS_MeshCell()
{
  nbCells--;
}
//================================================================================
/*!
 * \brief Return VTKCellType corresponding to SMDSAbs_EntityType
 */
//================================================================================

VTKCellType SMDS_MeshCell::toVtkType (SMDSAbs_EntityType smdsType)
{
  static std::vector< VTKCellType > vtkTypes;
  if ( vtkTypes.empty() )
  {
    vtkTypes.resize( SMDSEntity_Last+1, VTK_EMPTY_CELL );
    vtkTypes[ SMDSEntity_Node ]              = VTK_VERTEX;
    vtkTypes[ SMDSEntity_0D ]                = VTK_VERTEX; //VTK_POLY_VERTEX; // ??
    vtkTypes[ SMDSEntity_Edge ]              = VTK_LINE;
    vtkTypes[ SMDSEntity_Quad_Edge ]         = VTK_QUADRATIC_EDGE;
    vtkTypes[ SMDSEntity_Triangle ]          = VTK_TRIANGLE;
    vtkTypes[ SMDSEntity_Quad_Triangle ]     = VTK_QUADRATIC_TRIANGLE;
    vtkTypes[ SMDSEntity_Quadrangle ]        = VTK_QUAD;
    vtkTypes[ SMDSEntity_Quad_Quadrangle ]   = VTK_QUADRATIC_QUAD;
    vtkTypes[ SMDSEntity_BiQuad_Quadrangle ] = VTK_BIQUADRATIC_QUAD;
    vtkTypes[ SMDSEntity_Polygon ]           = VTK_POLYGON;
    //vtkTypes[ SMDSEntity_Quad_Polygon ]      = ;
    vtkTypes[ SMDSEntity_Tetra ]             = VTK_TETRA;
    vtkTypes[ SMDSEntity_Quad_Tetra ]        = VTK_QUADRATIC_TETRA;
    vtkTypes[ SMDSEntity_Pyramid ]           = VTK_PYRAMID;
    vtkTypes[ SMDSEntity_Quad_Pyramid ]      = VTK_QUADRATIC_PYRAMID;
    vtkTypes[ SMDSEntity_Hexa ]              = VTK_HEXAHEDRON;
    vtkTypes[ SMDSEntity_Quad_Hexa ]         = VTK_QUADRATIC_HEXAHEDRON;
    vtkTypes[ SMDSEntity_TriQuad_Hexa ]      = VTK_TRIQUADRATIC_HEXAHEDRON;
    vtkTypes[ SMDSEntity_Penta ]             = VTK_WEDGE;
    vtkTypes[ SMDSEntity_Quad_Penta ]        = VTK_QUADRATIC_WEDGE;
    vtkTypes[ SMDSEntity_Hexagonal_Prism ]   = VTK_HEXAGONAL_PRISM;
    vtkTypes[ SMDSEntity_Polyhedra ]         = VTK_POLYHEDRON;
    //vtkTypes[ SMDSEntity_Quad_Polyhedra ]    = ;
  }
  return vtkTypes[ smdsType ];
}

//================================================================================
/*!
 * \brief Return indices to transform cell connectivity from SMDS to VTK
 * Usage: vtkIDs[i] = smdsIDs[ indices[ i ]]
 */
//================================================================================

const std::vector< int >& SMDS_MeshCell::toVtkOrder(SMDSAbs_EntityType smdsType)
{
  static std::vector< std::vector< int > > toVtkInterlaces;
  if ( toVtkInterlaces.empty() )
  {
    toVtkInterlaces.resize( SMDSEntity_Last+1 );
    // {
    //   const int ids[] = {0};
    //   toVtkInterlaces[SMDSEntity_0D].assign( &ids[0], &ids[0]+1 );
    //   toVtkInterlaces[SMDSEntity_Node].assign( &ids[0], &ids[0]+1 );
    // }
    // {
    //   const int ids[] = {0,1};
    //   toVtkInterlaces[SMDSEntity_Edge].assign( &ids[0], &ids[0]+2 );
    // }
    // {
    //   const int ids[] = {0,1,2};
    //   toVtkInterlaces[SMDSEntity_Quad_Edge].assign( &ids[0], &ids[0]+3 );
    // }
    // {
    //   const int ids[] = {0,1,2};
    //   toVtkInterlaces[SMDSEntity_Triangle].assign( &ids[0], &ids[0]+3 );
    // }
    // {
    //   const int ids[] = {0,1,2,3,4,5};
    //   toVtkInterlaces[SMDSEntity_Quad_Triangle].assign( &ids[0], &ids[0]+6 );
    // }
    // {
    //   const int ids[] = {0,1,2,3};
    //   toVtkInterlaces[SMDSEntity_Quadrangle].assign( &ids[0], &ids[0]+4 );
    // }
    // {
    //   const int ids[] = {0,1,2,3,4,5,6,7};
    //   toVtkInterlaces[SMDSEntity_Quad_Quadrangle].assign( &ids[0], &ids[0]+8 );
    // }
    // {
    //   const int ids[] = {0,1,2,3,4,5,6,7,8};
    //   toVtkInterlaces[SMDSEntity_BiQuad_Quadrangle].assign( &ids[0], &ids[0]+9 );
    // }
    {
      const int ids[] = {0,2,1,3};
      toVtkInterlaces[SMDSEntity_Tetra].assign( &ids[0], &ids[0]+4 );
    }
    {
      const int ids[] = {0,2,1,3,6,5,4,7,9,8};
      toVtkInterlaces[SMDSEntity_Quad_Tetra].assign( &ids[0], &ids[0]+10 );
    }
    {
      const int ids[] = {0,3,2,1,4};
      toVtkInterlaces[SMDSEntity_Pyramid].assign( &ids[0], &ids[0]+5 );
    }
    {
      const int ids[] = {0,3,2,1,4,8,7,6,5,9,12,11,10};
      toVtkInterlaces[SMDSEntity_Quad_Pyramid].assign( &ids[0], &ids[0]+13 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5};
      toVtkInterlaces[SMDSEntity_Hexa].assign( &ids[0], &ids[0]+8 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5,11,10,9,8,15,14,13,12,16,19,18,17};
      toVtkInterlaces[SMDSEntity_Quad_Hexa].assign( &ids[0], &ids[0]+20 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5,11,10,9,8,15,14,13,12,16,19,18,17, 21,23,24,22,20,25,26};
      toVtkInterlaces[SMDSEntity_TriQuad_Hexa].assign( &ids[0], &ids[0]+27 );
    }
    {
      const int ids[] = {0,1,2,3,4,5};
      toVtkInterlaces[SMDSEntity_Penta].assign( &ids[0], &ids[0]+6 );
    }
    {
      const int ids[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14};
      toVtkInterlaces[SMDSEntity_Quad_Penta].assign( &ids[0], &ids[0]+15 );
    }
    {
      const int ids[] = {0,5,4,3,2,1,6,11,10,9,8,7};
      toVtkInterlaces[SMDSEntity_Hexagonal_Prism].assign( &ids[0], &ids[0]+12 );
    }
  }
  return toVtkInterlaces[smdsType];
}

//================================================================================
/*!
 * \brief Return indices to reverse an SMDS cell of given type
 * Usage: reverseIDs[i] = forwardIDs[ indices[ i ]]
 */
//================================================================================

const std::vector<int>& SMDS_MeshCell::reverseSmdsOrder(SMDSAbs_EntityType smdsType)
{
  static std::vector< std::vector< int > > reverseInterlaces;
  if ( reverseInterlaces.empty() )
  {
    reverseInterlaces.resize( SMDSEntity_Last+1 );
    {
      const int ids[] = {0};
      reverseInterlaces[SMDSEntity_0D].assign( &ids[0], &ids[0]+1 );
      reverseInterlaces[SMDSEntity_Node].assign( &ids[0], &ids[0]+1 );
    }
    {
      const int ids[] = {1,0};
      reverseInterlaces[SMDSEntity_Edge].assign( &ids[0], &ids[0]+2 );
    }
    {
      const int ids[] = {1,0,2};
      reverseInterlaces[SMDSEntity_Quad_Edge].assign( &ids[0], &ids[0]+3 );
    }
    {
      const int ids[] = {0,2,1};
      reverseInterlaces[SMDSEntity_Triangle].assign( &ids[0], &ids[0]+3 );
    }
    {
      const int ids[] = {0,2,1,5,4,3};
      reverseInterlaces[SMDSEntity_Quad_Triangle].assign( &ids[0], &ids[0]+6 );
    }
    {
      const int ids[] = {0,3,2,1};
      reverseInterlaces[SMDSEntity_Quadrangle].assign( &ids[0], &ids[0]+4 );
    }
    {
      const int ids[] = {0,3,2,1,7,6,5,4};
      reverseInterlaces[SMDSEntity_Quad_Quadrangle].assign( &ids[0], &ids[0]+8 );
    }
    {
      const int ids[] = {0,3,2,1,7,6,5,4,8};
      reverseInterlaces[SMDSEntity_BiQuad_Quadrangle].assign( &ids[0], &ids[0]+9 );
    }
    {
      const int ids[] = {0,2,1,3};
      reverseInterlaces[SMDSEntity_Tetra].assign( &ids[0], &ids[0]+4 );
    }
    {
      const int ids[] = {0,2,1,3,6,5,4,7,9,8};
      reverseInterlaces[SMDSEntity_Quad_Tetra].assign( &ids[0], &ids[0]+10 );
    }
    {
      const int ids[] = {0,3,2,1,4};
      reverseInterlaces[SMDSEntity_Pyramid].assign( &ids[0], &ids[0]+5 );
    }
    {
      const int ids[] = {0,3,2,1,4,8,7,6,5,9,12,11,10};
      reverseInterlaces[SMDSEntity_Quad_Pyramid].assign( &ids[0], &ids[0]+13 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5};
      reverseInterlaces[SMDSEntity_Hexa].assign( &ids[0], &ids[0]+8 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5,11,10,9,8,15,14,13,12,16,19,18,17};
      reverseInterlaces[SMDSEntity_Quad_Hexa].assign( &ids[0], &ids[0]+20 );
    }
    {
      const int ids[] = {0,3,2,1,4,7,6,5,11,10,9,8,15,14,13,12,16,19,18,17, 20,24,23,22,21,25,26};
      reverseInterlaces[SMDSEntity_TriQuad_Hexa].assign( &ids[0], &ids[0]+27 );
    }
    {
      const int ids[] = {0,2,1,3,5,4};
      reverseInterlaces[SMDSEntity_Penta].assign( &ids[0], &ids[0]+6 );
    }
    {
      const int ids[] = {0,2,1,3,5,4, 8,7,6,11,10,9,12,14,13};
      reverseInterlaces[SMDSEntity_Quad_Penta].assign( &ids[0], &ids[0]+15 );
    }
    {
      const int ids[] = {0,5,4,3,2,1,6,11,10,9,8,7};
      reverseInterlaces[SMDSEntity_Hexagonal_Prism].assign( &ids[0], &ids[0]+12 );
    }
  }
  return reverseInterlaces[smdsType];
}

//================================================================================
/*!
 * \brief Return indices to set nodes of a quadratic 1D or 2D element in interlaced order
 * Usage: interlacedIDs[i] = smdsIDs[ indices[ i ]]
 */
//================================================================================

const std::vector<int>& SMDS_MeshCell::interlacedSmdsOrder(SMDSAbs_EntityType smdsType)
{
  static std::vector< std::vector< int > > interlace;
  if ( interlace.empty() )
  {
    interlace.resize( SMDSEntity_Last+1 );
    {
      const int ids[] = {0,2,1};
      interlace[SMDSEntity_Quad_Edge].assign( &ids[0], &ids[0]+3 );
    }
    {
      const int ids[] = {0,3,1,4,2,5};
      interlace[SMDSEntity_Quad_Triangle].assign( &ids[0], &ids[0]+6 );
    }
    {
      const int ids[] = {0,4,1,5,2,6,3,7,8};
      interlace[SMDSEntity_Quad_Quadrangle].assign( &ids[0], &ids[0]+8 );
      interlace[SMDSEntity_BiQuad_Quadrangle].assign( &ids[0], &ids[0]+9 );
    }
  }
  return interlace[smdsType];
}

//================================================================================
/*!
 * \brief Return SMDSAbs_EntityType corresponding to VTKCellType
 */
//================================================================================

SMDSAbs_EntityType SMDS_MeshCell::toSmdsType(VTKCellType vtkType)
{
  static std::vector< SMDSAbs_EntityType > smdsTypes;
  if ( smdsTypes.empty() )
  {
    smdsTypes.resize( VTK_NUMBER_OF_CELL_TYPES, SMDSEntity_Last );
    for ( int iSMDS = 0; iSMDS < SMDSEntity_Last; ++iSMDS )
      smdsTypes[ toVtkType( SMDSAbs_EntityType( iSMDS ))] = SMDSAbs_EntityType( iSMDS );
  }
  return smdsTypes[ vtkType ];
}

//================================================================================
/*!
 * \brief Return indices to transform cell connectivity from VTK to SMDS
 * Usage: smdsIDs[i] = vtkIDs[ indices[ i ]]
 */
//================================================================================

const std::vector<int>& SMDS_MeshCell::fromVtkOrder(SMDSAbs_EntityType smdsType)
{
  static std::vector< std::vector<int> > fromVtkInterlaces;
  if ( fromVtkInterlaces.empty() )
  {
    fromVtkInterlaces.resize( SMDSEntity_Last+1 );
    for ( int iSMDS = 0; iSMDS < SMDSEntity_Last; ++iSMDS )
    {
      const std::vector<int> & toVtk = toVtkOrder( SMDSAbs_EntityType( iSMDS ));
      std::vector<int> &      toSmds = fromVtkInterlaces[ iSMDS ];
      toSmds.resize( toVtk.size() );
      for ( size_t i = 0; i < toVtk.size(); ++i )
        toSmds[ toVtk[i] ] = i;
    }
  }
  return fromVtkInterlaces[ smdsType ];
}

//================================================================================
/*!
 * \brief Return indices to transform cell connectivity from SMDS to VTK
 * Usage: vtkIDs[i] = smdsIDs[ indices[ i ]]
 */
//================================================================================

const std::vector<int>& SMDS_MeshCell::toVtkOrder(VTKCellType vtkType)
{
  return toVtkOrder( toSmdsType( vtkType ));
}

//================================================================================
/*!
 * \brief Return indices to transform cell connectivity from VTK to SMDS
 * Usage: smdsIDs[i] = vtkIDs[ indices[ i ]]
 */
//================================================================================

const std::vector<int>& SMDS_MeshCell::fromVtkOrder(VTKCellType vtkType)
{
  return fromVtkOrder( toSmdsType( vtkType ));
}

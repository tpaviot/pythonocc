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

#include <stdio.h>
#include <limits>

#include "DriverSTL_W_SMDS_Mesh.h"

#include "SMDS_FaceOfNodes.hxx"
#include "SMDS_IteratorOnIterators.hxx"
#include "SMDS_Mesh.hxx"
#include "SMDS_MeshElement.hxx"
#include "SMDS_MeshNode.hxx"
#include "SMDS_SetIterator.hxx"
#include "SMDS_VolumeTool.hxx"
#include "SMESH_TypeDefs.hxx"

#include <OSD_File.hxx>
//#include <OSD_FromWhere.hxx>
#include <OSD_Path.hxx>
#include <OSD_Protection.hxx>
//#include <OSD_SingleProtection.hxx>
#include <TCollection_AsciiString.hxx>
#include <gp_XYZ.hxx>

#include "utilities.h"

// definition des constantes 
static const int LABEL_SIZE = 80;

DriverSTL_W_SMDS_Mesh::DriverSTL_W_SMDS_Mesh()
{
  myIsAscii = false;
}

void DriverSTL_W_SMDS_Mesh::SetIsAscii( const bool theIsAscii )
{
  myIsAscii = theIsAscii;
}

Driver_Mesh::Status DriverSTL_W_SMDS_Mesh::Perform()
{
  Status aResult = DRS_OK;

  if ( !myMesh ) {
    fprintf(stderr, ">> ERROR : Mesh is null \n");
    return DRS_FAIL;
  }
  findVolumeTriangles();
  if ( myIsAscii )
    aResult = writeAscii();
  else
    aResult = writeBinary();

  return aResult;
}
//================================================================================
/*!
 * \brief Destructor deletes temporary faces
 */
//================================================================================

DriverSTL_W_SMDS_Mesh::~DriverSTL_W_SMDS_Mesh()
{
  for ( unsigned i = 0; i < myVolumeTrias.size(); ++i )
    delete myVolumeTrias[i];
}

//================================================================================
/*!
 * \brief Finds free facets of volumes for which faces are missing in the mesh
 */
//================================================================================

void DriverSTL_W_SMDS_Mesh::findVolumeTriangles()
{
  SMDS_VolumeTool myTool;
  SMDS_VolumeIteratorPtr vIt = myMesh->volumesIterator();
  while ( vIt->more() )
  {
    myTool.Set( vIt->next() );
    for ( int iF = 0; iF < myTool.NbFaces(); ++iF )
      if ( myTool.IsFreeFace( iF ))
      {
        const SMDS_MeshNode** n = myTool.GetFaceNodes(iF);
        int                 nbN = myTool.NbFaceNodes(iF);
        std::vector< const SMDS_MeshNode*> nodes( n, n+nbN );
        if ( !myMesh->FindElement( nodes, SMDSAbs_Face, /*Nomedium=*/false))
        {
          int nbTria = nbN - 2;
          for ( int iT = 0; iT < nbTria; ++iT )
          {
            myVolumeTrias.push_back( new SMDS_FaceOfNodes( n[0], n[1+iT], n[2+iT] ));
          }
        }
      }
  }
}

//================================================================================
/*!
 * \brief Return iterator on both faces in the mesh and on temporary faces
 */
//================================================================================

SMDS_ElemIteratorPtr DriverSTL_W_SMDS_Mesh::getFaces() const
{
  SMDS_ElemIteratorPtr facesIter = myMesh->elementsIterator(SMDSAbs_Face);
  SMDS_ElemIteratorPtr tmpTriaIter( new SMDS_ElementVectorIterator( myVolumeTrias.begin(),
                                                                    myVolumeTrias.end()));
  typedef std::vector< SMDS_ElemIteratorPtr > TElemIterVector;
  TElemIterVector iters(2);
  iters[0] = facesIter;
  iters[1] = tmpTriaIter;
  
  typedef SMDS_IteratorOnIterators<const SMDS_MeshElement *, TElemIterVector> TItersIter;
  return SMDS_ElemIteratorPtr( new TItersIter( iters ));
}

// static methods

static void writeInteger( const Standard_Integer& theVal,
                         OSD_File& ofile )
{
  union {
    Standard_Integer i;
    char c[4];
  }u;

  u.i = theVal;

  Standard_Integer entier;
  entier  =  u.c[0] & 0xFF;
  entier |= (u.c[1] & 0xFF) << 0x08;
  entier |= (u.c[2] & 0xFF) << 0x10;
  entier |= (u.c[3] & 0xFF) << 0x18;

  ofile.Write((char *)&entier,sizeof(u.c));
}

static void writeFloat  ( const Standard_ShortReal& theVal,
                         OSD_File& ofile)
{
  union {
    Standard_ShortReal f;
    char c[4]; 
  }u;

  u.f = theVal;

  Standard_Integer entier;

  entier  =  u.c[0] & 0xFF;
  entier |= (u.c[1] & 0xFF) << 0x08;
  entier |= (u.c[2] & 0xFF) << 0x10;
  entier |= (u.c[3] & 0xFF) << 0x18;

  ofile.Write((char *)&entier,sizeof(u.c));
}

static gp_XYZ getNormale( const SMDS_MeshNode* n1,
                          const SMDS_MeshNode* n2,
                          const SMDS_MeshNode* n3)
{
  SMESH_TNodeXYZ xyz1( n1 );
  SMESH_TNodeXYZ xyz2( n2 );
  SMESH_TNodeXYZ xyz3( n3 );
  gp_XYZ q1 = xyz2 - xyz1;
  gp_XYZ q2 = xyz3 - xyz1;
  gp_XYZ n  = q1 ^ q2;
  double len = n.Modulus();
  if ( len > std::numeric_limits<double>::min() )
    n /= len;

  return n;
}

//================================================================================
/*!
 * \brief Decompose a mesh face into triangles
 *  \retval int - number of triangles
 */
//================================================================================

static int getTriangles( const SMDS_MeshElement* face,
                         const SMDS_MeshNode**   nodes)
{
  // WARNING: implementation must be coherent with counting triangles in writeBinary()
  int nbN = face->NbCornerNodes();
  const int nbTria = nbN-2;
  for ( int i = 0; nbN > 1; --nbN )
  {
    nodes[ i++ ] = face->GetNode( 0 );
    nodes[ i++ ] = face->GetNode( nbN-2 );
    nodes[ i++ ] = face->GetNode( nbN-1 );
  }
  return nbTria;
}

// private methods

Driver_Mesh::Status DriverSTL_W_SMDS_Mesh::writeAscii() const
{
  Status aResult = DRS_OK;
  TCollection_AsciiString aFileName( (char *)myFile.c_str() );
  if ( aFileName.IsEmpty() ) {
    fprintf(stderr, ">> ERREOR : invalid file name \n");
    return DRS_FAIL;
  }

  OSD_File aFile = OSD_File(OSD_Path(aFileName));
  aFile.Build(OSD_WriteOnly,OSD_Protection());

  char sval[16];
  TCollection_AsciiString buf = TCollection_AsciiString ("solid\n");
  aFile.Write (buf,buf.Length());buf.Clear();

  const SMDS_MeshNode* triaNodes[2048];

  SMDS_ElemIteratorPtr itFaces = getFaces();
  while ( itFaces->more() )
  {
    const SMDS_MeshElement* aFace = itFaces->next();
    int nbTria = getTriangles( aFace, triaNodes );
    
    for ( int iT = 0, iN = 0; iT < nbTria; ++iT )
    {
      gp_XYZ normale = getNormale( triaNodes[iN],
                                   triaNodes[iN+1],
                                   triaNodes[iN+2] );

      buf += " facet normal "; 
      sprintf (sval,"% 12e",normale.X());
      buf += sval;
      buf += " "; 
      sprintf (sval,"% 12e",normale.Y());
      buf += sval;
      buf += " "; 
      sprintf (sval,"% 12e",normale.Z());
      buf += sval;
      buf += '\n';
      aFile.Write (buf,buf.Length());buf.Clear();
      buf += "   outer loop\n"; 
      aFile.Write (buf,buf.Length());buf.Clear();
      
      for ( int jN = 0; jN < 3; ++jN, ++iN ) {
        const SMDS_MeshNode* node = triaNodes[iN];
        buf += "     vertex "; 
        sprintf (sval,"% 12e",node->X());
        buf += sval;
        buf += " "; 
        sprintf (sval,"% 12e",node->Y());
        buf += sval;
        buf += " "; 
        sprintf (sval,"% 12e",node->Z());
        buf += sval;
        buf += '\n';
        aFile.Write (buf,buf.Length());buf.Clear();
      }
      buf += "   endloop\n"; 
      aFile.Write (buf,buf.Length());buf.Clear();
      buf += " endfacet\n"; 
      aFile.Write (buf,buf.Length());buf.Clear();
    } 
  }
  buf += "endsolid\n";
  aFile.Write (buf,buf.Length());buf.Clear();
  
  aFile.Close ();

  return aResult;
}

Driver_Mesh::Status DriverSTL_W_SMDS_Mesh::writeBinary() const
{
  Status aResult = DRS_OK;
  TCollection_AsciiString aFileName( (char *)myFile.c_str() );
  if ( aFileName.IsEmpty() ) {
    fprintf(stderr, ">> ERREOR : invalid filename \n");
    return DRS_FAIL;
  }

  OSD_File aFile = OSD_File(OSD_Path(aFileName));
  aFile.Build(OSD_WriteOnly,OSD_Protection());

  // we first count the number of triangles
  // WARNING: counting triangles must be coherent with getTriangles()
  int nbTri = 0;
  const SMDS_MeshInfo& info = myMesh->GetMeshInfo();
  nbTri += info.NbTriangles();
  nbTri += info.NbQuadrangles() * 2;
  nbTri += myVolumeTrias.size();
  if ( info.NbPolygons() > 0 )
  {
    SMDS_FaceIteratorPtr itFaces = myMesh->facesIterator();
    while ( itFaces->more() )
    {
      const SMDS_MeshElement* aFace = itFaces->next();
      if ( aFace->IsPoly() )
        nbTri += aFace->NbNodes() - 2;
    }
  }

  // char sval[80]; -- avoid writing not initialized memory
  TCollection_AsciiString sval(LABEL_SIZE-1,' ');
  aFile.Write((Standard_Address)sval.ToCString(),LABEL_SIZE);

  // write number of triangles
  writeInteger(nbTri,aFile);  

  // Loop writing nodes

  int dum=0;

  const SMDS_MeshNode* triaNodes[2048];

  SMDS_ElemIteratorPtr itFaces = getFaces();
  while ( itFaces->more() )
  {
    const SMDS_MeshElement* aFace = itFaces->next();
    int nbTria = getTriangles( aFace, triaNodes );
    
    for ( int iT = 0, iN = 0; iT < nbTria; ++iT )
    {
      gp_XYZ normale = getNormale( triaNodes[iN],
                                   triaNodes[iN+1],
                                   triaNodes[iN+2] );
      writeFloat(normale.X(),aFile);
      writeFloat(normale.Y(),aFile);
      writeFloat(normale.Z(),aFile);

      for ( int jN = 0; jN < 3; ++jN, ++iN )
      {
        const SMDS_MeshNode* node = triaNodes[iN];
        writeFloat(node->X(),aFile);
        writeFloat(node->Y(),aFile);
        writeFloat(node->Z(),aFile);
      }
      aFile.Write (&dum,2);
    } 
  }
  aFile.Close ();

  return aResult;
}

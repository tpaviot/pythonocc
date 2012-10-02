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

//  SMESH SMESH : implementaion of SMESH idl descriptions
// File      : StdMeshers_Projection_2D.cxx
// Module    : SMESH
// Created   : Fri Oct 20 11:37:07 2006
// Author    : Edward AGAPOV (eap)
//
#include "StdMeshers_Projection_2D.hxx"

#include "StdMeshers_ProjectionSource2D.hxx"
#include "StdMeshers_ProjectionUtils.hxx"
#include "StdMeshers_FaceSide.hxx"

#include "SMDS_EdgePosition.hxx"
#include "SMDS_FacePosition.hxx"
#include "SMESHDS_Hypothesis.hxx"
#include "SMESHDS_SubMesh.hxx"
#include "SMESH_Block.hxx"
#include "SMESH_Comment.hxx"
#include "SMESH_Gen.hxx"
#include "SMESH_Mesh.hxx"
#include "SMESH_MesherHelper.hxx"
#include "SMESH_Pattern.hxx"
#include "SMESH_subMesh.hxx"
#include "SMESH_subMeshEventListener.hxx"

#include "utilities.h"

#include <BRep_Tool.hxx>
#include <Bnd_B2d.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopoDS.hxx>
#include <gp_Ax2.hxx>
#include <gp_Ax3.hxx>


using namespace std;

#define RETURN_BAD_RESULT(msg) { MESSAGE(")-: Error: " << msg); return false; }

typedef StdMeshers_ProjectionUtils TAssocTool;

//=======================================================================
//function : StdMeshers_Projection_2D
//purpose  : 
//=======================================================================

StdMeshers_Projection_2D::StdMeshers_Projection_2D(int hypId, int studyId, SMESH_Gen* gen)
  :SMESH_2D_Algo(hypId, studyId, gen)
{
  _name = "Projection_2D";
  _shapeType = (1 << TopAbs_FACE);      // 1 bit per shape type

  _compatibleHypothesis.push_back("ProjectionSource2D");
  _sourceHypo = 0;
}

//================================================================================
/*!
 * \brief Destructor
 */
//================================================================================

StdMeshers_Projection_2D::~StdMeshers_Projection_2D()
{}

//=======================================================================
//function : CheckHypothesis
//purpose  : 
//=======================================================================

bool StdMeshers_Projection_2D::CheckHypothesis(SMESH_Mesh&                          theMesh,
                                               const TopoDS_Shape&                  theShape,
                                               SMESH_Hypothesis::Hypothesis_Status& theStatus)
{
  list <const SMESHDS_Hypothesis * >::const_iterator itl;

  const list <const SMESHDS_Hypothesis * >&hyps = GetUsedHypothesis(theMesh, theShape);
  if ( hyps.size() == 0 )
  {
    theStatus = HYP_MISSING;
    return false;  // can't work with no hypothesis
  }

  if ( hyps.size() > 1 )
  {
    theStatus = HYP_ALREADY_EXIST;
    return false;
  }

  const SMESHDS_Hypothesis *theHyp = hyps.front();

  string hypName = theHyp->GetName();

  theStatus = HYP_OK;

  if (hypName == "ProjectionSource2D")
  {
    _sourceHypo = static_cast<const StdMeshers_ProjectionSource2D *>(theHyp);

    // Check hypo parameters

    SMESH_Mesh* srcMesh = _sourceHypo->GetSourceMesh();
    SMESH_Mesh* tgtMesh = & theMesh;
    if ( !srcMesh )
      srcMesh = tgtMesh;

    // check vertices
    if ( _sourceHypo->HasVertexAssociation() )
    {
      // source vertices
      TopoDS_Shape edge = TAssocTool::GetEdgeByVertices
        ( srcMesh, _sourceHypo->GetSourceVertex(1), _sourceHypo->GetSourceVertex(2) );
      if ( edge.IsNull() ||
           !SMESH_MesherHelper::IsSubShape( edge, srcMesh ) ||
           !SMESH_MesherHelper::IsSubShape( edge, _sourceHypo->GetSourceFace() ))
      {
        theStatus = HYP_BAD_PARAMETER;
        SCRUTE((edge.IsNull()));
        SCRUTE((SMESH_MesherHelper::IsSubShape( edge, srcMesh )));
        SCRUTE((SMESH_MesherHelper::IsSubShape( edge, _sourceHypo->GetSourceFace() )));
      }
      else
      {
        // target vertices
        edge = TAssocTool::GetEdgeByVertices
          ( tgtMesh, _sourceHypo->GetTargetVertex(1), _sourceHypo->GetTargetVertex(2) );
        if ( edge.IsNull() || !SMESH_MesherHelper::IsSubShape( edge, tgtMesh ))
        {
          theStatus = HYP_BAD_PARAMETER;
          SCRUTE((edge.IsNull()));
          SCRUTE((SMESH_MesherHelper::IsSubShape( edge, tgtMesh )));
        }
        // PAL16203
        else if ( !_sourceHypo->IsCompoundSource() &&
                  !SMESH_MesherHelper::IsSubShape( edge, theShape ))
        {
          theStatus = HYP_BAD_PARAMETER;
          SCRUTE((SMESH_MesherHelper::IsSubShape( edge, theShape )));
        }
      }
    }
    // check a source face
    if ( !SMESH_MesherHelper::IsSubShape( _sourceHypo->GetSourceFace(), srcMesh ) ||
         ( srcMesh == tgtMesh && theShape == _sourceHypo->GetSourceFace() ))
    {
      theStatus = HYP_BAD_PARAMETER;
      SCRUTE((SMESH_MesherHelper::IsSubShape( _sourceHypo->GetSourceFace(), srcMesh )));
      SCRUTE((srcMesh == tgtMesh));
      SCRUTE(( theShape == _sourceHypo->GetSourceFace() ));
    }
  }
  else
  {
    theStatus = HYP_INCOMPATIBLE;
  }
  return ( theStatus == HYP_OK );
}

namespace {

  //================================================================================
  /*!
   * \brief define if a node is new or old
   * \param node - node to check
   * \retval bool - true if the node existed before Compute() is called
   */
  //================================================================================

  bool isOldNode( const SMDS_MeshNode* node/*, const bool is1DComputed*/ )
  {
    // old nodes are shared by edges and new ones are shared
    // only by faces created by mapper
    //if ( is1DComputed )
    {
      bool isOld = node->NbInverseElements(SMDSAbs_Edge) > 0;
      return isOld;
    }
    // else
    // {
    //   SMDS_ElemIteratorPtr invFace = node->GetInverseElementIterator(SMDSAbs_Face);
    //   bool isNew = invFace->more();
    //   return !isNew;
    // }
  }

  //================================================================================
  /*!
   * \brief Class to remove mesh built by pattern mapper on edges
   * and vertices in the case of failure of projection algo.
   * It does it's job at destruction
   */
  //================================================================================

  class MeshCleaner {
    SMESH_subMesh* sm;
  public:
    MeshCleaner( SMESH_subMesh* faceSubMesh ): sm(faceSubMesh) {}
    ~MeshCleaner() { Clean(sm); }
    void Release() { sm = 0; } // mesh will not be removed
    static void Clean( SMESH_subMesh* sm, bool withSub=true )
    {
      if ( !sm || !sm->GetSubMeshDS() ) return;
      // PAL16567, 18920. Remove face nodes as well
//       switch ( sm->GetSubShape().ShapeType() ) {
//       case TopAbs_VERTEX:
//       case TopAbs_EDGE: {
        SMDS_NodeIteratorPtr nIt = sm->GetSubMeshDS()->GetNodes();
        SMESHDS_Mesh* mesh = sm->GetFather()->GetMeshDS();
        while ( nIt->more() ) {
          const SMDS_MeshNode* node = nIt->next();
          if ( !isOldNode( node ) )
            mesh->RemoveNode( node );
        }
        // do not break but iterate over DependsOn()
//       }
//       default:
        if ( !withSub ) return;
        SMESH_subMeshIteratorPtr smIt = sm->getDependsOnIterator(false,false);
        while ( smIt->more() )
          Clean( smIt->next(), false );
//       }
    }
  };

  //================================================================================
  /*!
   * \brief find new nodes belonging to one free border of mesh on face
    * \param sm - submesh on edge or vertex containg nodes to choose from
    * \param face - the face bound the submesh
    * \param u2nodes - map to fill with nodes
    * \param seamNodes - set of found nodes
    * \retval bool - is a success
   */
  //================================================================================

  bool getBoundaryNodes ( SMESH_subMesh*                        sm,
                          const TopoDS_Face&                    face,
                          map< double, const SMDS_MeshNode* > & u2nodes,
                          set< const SMDS_MeshNode* > &         seamNodes)
  {
    u2nodes.clear();
    seamNodes.clear();
    if ( !sm || !sm->GetSubMeshDS() )
      RETURN_BAD_RESULT("Null submesh");

    SMDS_NodeIteratorPtr nIt = sm->GetSubMeshDS()->GetNodes();
    switch ( sm->GetSubShape().ShapeType() ) {

    case TopAbs_VERTEX: {
      while ( nIt->more() ) {
        const SMDS_MeshNode* node = nIt->next();
        if ( isOldNode( node ) ) continue;
        u2nodes.insert( make_pair( 0., node ));
        seamNodes.insert( node );
        return true;
      }
      break;
    }
    case TopAbs_EDGE: {
      
      // Get submeshes of sub-vertices
      const map< int, SMESH_subMesh * >& subSM = sm->DependsOn();
      if ( subSM.size() != 2 )
        RETURN_BAD_RESULT("there must be 2 submeshes of sub-vertices"
                          " but we have " << subSM.size());
      SMESH_subMesh* smV1 = subSM.begin()->second;
      SMESH_subMesh* smV2 = subSM.rbegin()->second;
      if ( !smV1->IsMeshComputed() || !smV2->IsMeshComputed() )
        RETURN_BAD_RESULT("Empty vertex submeshes");

      // Look for a new node on V1
      nIt = smV1->GetSubMeshDS()->GetNodes();
      const SMDS_MeshNode* nV1 = 0;
      while ( nIt->more() && !nV1 ) {
        const SMDS_MeshNode* node = nIt->next();
        if ( !isOldNode( node ) ) nV1 = node;
      }
      if ( !nV1 )
        RETURN_BAD_RESULT("No new node found on V1");

      // Find a new node connected to nV1 and belonging to edge submesh;
      const SMDS_MeshNode* nE = 0;
      SMESHDS_SubMesh* smDS = sm->GetSubMeshDS();
      SMDS_ElemIteratorPtr vElems = nV1->GetInverseElementIterator(SMDSAbs_Face);
      while ( vElems->more() && !nE ) {
        const SMDS_MeshElement* elem = vElems->next();
        int nbNodes = elem->NbNodes();
        if ( elem->IsQuadratic() )
          nbNodes /= 2;
        int iV1 = elem->GetNodeIndex( nV1 );
        // try next after nV1
        int iE = SMESH_MesherHelper::WrapIndex( iV1 + 1, nbNodes );
        if ( smDS->Contains( elem->GetNode( iE ) ))
          nE = elem->GetNode( iE );
        if ( !nE ) {
          // try node before nV1
          iE = SMESH_MesherHelper::WrapIndex( iV1 - 1, nbNodes );
          if ( smDS->Contains( elem->GetNode( iE )))
            nE = elem->GetNode( iE );
        }
        if ( nE && elem->IsQuadratic() ) { // find medium node between nV1 and nE
          if ( Abs( iV1 - iE ) == 1 )
            nE = elem->GetNode( Min ( iV1, iE ) + nbNodes );
          else
            nE = elem->GetNode( elem->NbNodes() - 1 );
        }
      }
      if ( !nE )
        RETURN_BAD_RESULT("new node on edge not found");

      // Get the whole free border of a face
      list< const SMDS_MeshNode* > bordNodes;
      list< const SMDS_MeshElement* > bordFaces;
      if ( !SMESH_MeshEditor::FindFreeBorder (nV1, nE, nV1, bordNodes, bordFaces ))
        RETURN_BAD_RESULT("free border of a face not found by nodes " <<
                          nV1->GetID() << " " << nE->GetID() );

      // Insert nodes of the free border to the map until node on V2 encountered
      SMESHDS_SubMesh* v2smDS = smV2->GetSubMeshDS();
      list< const SMDS_MeshNode* >::iterator bordIt = bordNodes.begin();
      bordIt++; // skip nV1
      for ( ; bordIt != bordNodes.end(); ++bordIt ) {
        const SMDS_MeshNode* node = *bordIt;
        if ( v2smDS->Contains( node ))
          break;
        if ( node->GetPosition()->GetTypeOfPosition() != SMDS_TOP_EDGE )
          RETURN_BAD_RESULT("Bad node position type: node " << node->GetID() <<
                            " pos type " << node->GetPosition()->GetTypeOfPosition());
        const SMDS_EdgePosition* pos =
          static_cast<const SMDS_EdgePosition*>(node->GetPosition());
        u2nodes.insert( make_pair( pos->GetUParameter(), node ));
        seamNodes.insert( node );
      }
      if ( u2nodes.size() != seamNodes.size() )
        RETURN_BAD_RESULT("Bad node params on edge " << sm->GetId() <<
                          ", " << u2nodes.size() << " != " << seamNodes.size() );
      return true;
    }
    default:;
    }
    RETURN_BAD_RESULT ("Unexpected submesh type");

  } // bool getBoundaryNodes()

  //================================================================================
  /*!
   * \brief Preform projection in case if tgtFace.IsPartner( srcFace ) and in case
   * if projection by transformation is possible
   */
  //================================================================================

  bool projectPartner(const TopoDS_Face&                tgtFace,
                      const TopoDS_Face&                srcFace,
                      SMESH_Mesh *                      tgtMesh,
                      SMESH_Mesh *                      srcMesh,
                      const TAssocTool::TShapeShapeMap& shape2ShapeMap)
  {
    MESSAGE("projectPartner");
    const double tol = 1.e-7*srcMesh->GetMeshDS()->getMaxDim();

    gp_Trsf trsf; // transformation to get location of target nodes from source ones
    if ( tgtFace.IsPartner( srcFace ))
    {
      gp_Trsf srcTrsf = srcFace.Location();
      gp_Trsf tgtTrsf = tgtFace.Location();
      trsf = srcTrsf.Inverted() * tgtTrsf;
    }
    else
    {
      // Try to find the transformation

      // make any local coord systems of src and tgt faces
      vector<gp_Pnt> srcPP, tgtPP; // 3 points on face boundaries to make axes of CS
      SMESH_subMesh * srcSM = srcMesh->GetSubMesh( srcFace );
      SMESH_subMeshIteratorPtr smIt = srcSM->getDependsOnIterator(/*includeSelf=*/false,false);
      srcSM = smIt->next(); // sm of a vertex
      while ( smIt->more() && srcPP.size() < 3 )
      {
        srcSM = smIt->next();
        SMESHDS_SubMesh* srcSmds = srcSM->GetSubMeshDS();
        if ( !srcSmds ) continue;
        SMDS_NodeIteratorPtr nIt = srcSmds->GetNodes();
        while ( nIt->more() )
        {
          SMESH_TNodeXYZ p ( nIt->next());
          bool pOK = false;
          switch ( srcPP.size() )
          {
          case 0: pOK = true; break;

          case 1: pOK = ( srcPP[0].SquareDistance( p ) > 10*tol ); break;
            
          case 2:
            {
              gp_Vec p0p1( srcPP[0], srcPP[1] ), p0p( srcPP[0], p );
              // pOK = !p0p1.IsParallel( p0p, tol );
              pOK = !p0p1.IsParallel( p0p, 3.14/20 ); // angle min 18 degrees
              break;
            }
          }
          if ( !pOK )
            continue;

          // find corresponding point on target shape
          pOK = false;
          gp_Pnt tgtP;
          const TopoDS_Shape& tgtShape = shape2ShapeMap( srcSM->GetSubShape(), /*isSrc=*/true );
          if ( tgtShape.ShapeType() == TopAbs_VERTEX )
          {
            tgtP = BRep_Tool::Pnt( TopoDS::Vertex( tgtShape ));
            pOK = true;
            //cout << "V - nS " << p._node->GetID() << " - nT " << SMESH_Algo::VertexNode(TopoDS::Vertex( tgtShape),tgtMesh->GetMeshDS())->GetID() << endl;
          }
          else if ( tgtPP.size() > 0 )
          {
            if ( SMESHDS_SubMesh* tgtSmds = tgtMesh->GetMeshDS()->MeshElements( tgtShape ))
            {
              double srcDist = srcPP[0].Distance( p );
              double eTol = BRep_Tool::Tolerance( TopoDS::Edge( tgtShape ));
              if (eTol < tol) eTol = tol;
              SMDS_NodeIteratorPtr nItT = tgtSmds->GetNodes();
              while ( nItT->more() && !pOK )
              {
                const SMDS_MeshNode* n = nItT->next();
                tgtP = SMESH_TNodeXYZ( n );
                pOK = ( fabs( srcDist - tgtPP[0].Distance( tgtP )) < 2*eTol );
                //cout << "E - nS " << p._node->GetID() << " - nT " << n->GetID()<< " OK - " << pOK<< " " << fabs( srcDist - tgtPP[0].Distance( tgtP ))<< " tol " << eTol<< endl;
              }
            }
          }
          if ( !pOK )
            continue;

          srcPP.push_back( p );
          tgtPP.push_back( tgtP );
        }
      }
      if ( srcPP.size() != 3 )
        return false;

      // make transformation
      gp_Trsf fromTgtCS, toSrcCS; // from/to global CS
      gp_Ax2 srcCS( srcPP[0], gp_Vec( srcPP[0], srcPP[1] ), gp_Vec( srcPP[0], srcPP[2]));
      gp_Ax2 tgtCS( tgtPP[0], gp_Vec( tgtPP[0], tgtPP[1] ), gp_Vec( tgtPP[0], tgtPP[2]));
      toSrcCS  .SetTransformation( gp_Ax3( srcCS ));
      fromTgtCS.SetTransformation( gp_Ax3( tgtCS ));
      fromTgtCS.Invert();

      trsf = fromTgtCS * toSrcCS;
    }

    // Fill map of src to tgt nodes with nodes on edges

    map<const SMDS_MeshNode* , const SMDS_MeshNode*> src2tgtNodes;
    map<const SMDS_MeshNode* , const SMDS_MeshNode*>::iterator srcN_tgtN;

    for ( TopExp_Explorer srcEdge( srcFace, TopAbs_EDGE); srcEdge.More(); srcEdge.Next() )
    {
      const TopoDS_Shape& tgtEdge = shape2ShapeMap( srcEdge.Current(), /*isSrc=*/true );

      map< double, const SMDS_MeshNode* > srcNodes, tgtNodes;
      if ( !SMESH_Algo::GetSortedNodesOnEdge( srcMesh->GetMeshDS(),
                                              TopoDS::Edge( srcEdge.Current() ),
                                              /*ignoreMediumNodes = */true,
                                              srcNodes )
           ||
           !SMESH_Algo::GetSortedNodesOnEdge( tgtMesh->GetMeshDS(),
                                              TopoDS::Edge( tgtEdge ),
                                              /*ignoreMediumNodes = */true,
                                              tgtNodes )
           ||
           srcNodes.size() != tgtNodes.size())
        return false;

      if ( !tgtEdge.IsPartner( srcEdge.Current() ))
      {
        // check that transformation is OK by three nodes
        gp_Pnt p0S = SMESH_TNodeXYZ( (srcNodes.begin())  ->second);
        gp_Pnt p1S = SMESH_TNodeXYZ( (srcNodes.rbegin()) ->second);
        gp_Pnt p2S = SMESH_TNodeXYZ( (++srcNodes.begin())->second);

        gp_Pnt p0T = SMESH_TNodeXYZ( (tgtNodes.begin())  ->second);
        gp_Pnt p1T = SMESH_TNodeXYZ( (tgtNodes.rbegin()) ->second);
        gp_Pnt p2T = SMESH_TNodeXYZ( (++tgtNodes.begin())->second);

        // transform source points, they must coincide with target ones
        if ( p0T.SquareDistance( p0S.Transformed( trsf )) > tol ||
             p1T.SquareDistance( p1S.Transformed( trsf )) > tol ||
             p2T.SquareDistance( p2S.Transformed( trsf )) > tol )
        {
          //cout << "KO trsf, 3 dist: "
          //<< p0T.SquareDistance( p0S.Transformed( trsf ))<< ", "
          //<< p1T.SquareDistance( p1S.Transformed( trsf ))<< ", "
          //<< p2T.SquareDistance( p2S.Transformed( trsf ))<< ", "<<endl;
          return false;
        }
      }

      map< double, const SMDS_MeshNode* >::iterator u_tn = tgtNodes.begin();
      map< double, const SMDS_MeshNode* >::iterator u_sn = srcNodes.begin();
      for ( ; u_tn != tgtNodes.end(); ++u_tn, ++u_sn)
        src2tgtNodes.insert( make_pair( u_sn->second, u_tn->second ));
    }

    // Make new faces

    // prepare the helper to adding quadratic elements if necessary
    SMESH_MesherHelper helper( *tgtMesh );
    helper.SetSubShape( tgtFace );
    helper.IsQuadraticSubMesh( tgtFace );
    helper.SetElementsOnShape( true );

    SMESH_MesherHelper srcHelper( *srcMesh );
    srcHelper.SetSubShape( srcFace );

    const SMDS_MeshNode* nullNode = 0;

    // indices of nodes to create properly oriented faces
    int tri1 = 1, tri2 = 2, quad1 = 1, quad3 = 3;
    if ( trsf.Form() != gp_Identity )
      std::swap( tri1, tri2 ), std::swap( quad1, quad3 );

    SMESHDS_SubMesh* srcSubDS = srcMesh->GetMeshDS()->MeshElements( srcFace );
    SMDS_ElemIteratorPtr elemIt = srcSubDS->GetElements();
    vector< const SMDS_MeshNode* > tgtNodes;
    while ( elemIt->more() ) // loop on all mesh faces on srcFace
    {
      const SMDS_MeshElement* elem = elemIt->next();
      const int nbN = elem->NbCornerNodes(); 
      tgtNodes.resize( nbN );
      for ( int i = 0; i < nbN; ++i ) // loop on nodes of the source element
      {
        const SMDS_MeshNode* srcNode = elem->GetNode(i);
        srcN_tgtN = src2tgtNodes.insert( make_pair( srcNode, nullNode )).first;
        if ( srcN_tgtN->second == nullNode )
        {
          // create a new node
          gp_Pnt tgtP = gp_Pnt(srcNode->X(),srcNode->Y(),srcNode->Z()).Transformed( trsf );
          SMDS_MeshNode* n = helper.AddNode( tgtP.X(), tgtP.Y(), tgtP.Z() );
          srcN_tgtN->second = n;

          gp_Pnt2d srcUV = srcHelper.GetNodeUV( srcFace, srcNode,
                                                elem->GetNode( helper.WrapIndex(i+1,nbN)));
          n->SetPosition( new SMDS_FacePosition( srcUV.X(), srcUV.Y() ));
        }
        tgtNodes[i] = srcN_tgtN->second;
      }
      // create a new face
      switch ( nbN )
      {
      case 3: helper.AddFace(tgtNodes[0], tgtNodes[tri1], tgtNodes[tri2]); break;
      case 4: helper.AddFace(tgtNodes[0], tgtNodes[quad1], tgtNodes[2], tgtNodes[quad3]); break;
      }
    }
    return true;

  } //   bool projectPartner()

  //================================================================================
  /*!
   * \brief Preform projection in case if the faces are similar in 2D space
   */
  //================================================================================

  bool projectBy2DSimilarity(const TopoDS_Face&                tgtFace,
                             const TopoDS_Face&                srcFace,
                             SMESH_Mesh *                      tgtMesh,
                             SMESH_Mesh *                      srcMesh,
                             const TAssocTool::TShapeShapeMap& shape2ShapeMap,
                             const bool                        is1DComputed)
  {
    // 1) Preparation

    // get ordered src EDGEs
    TError err;
    TSideVector srcWires =
      StdMeshers_FaceSide::GetFaceWires( srcFace, *srcMesh,/*ignoreMediumNodes = */false, err);
    if ( err && !err->IsOK() )
      return false;

    // make corresponding sequence of tgt EDGEs
    TSideVector tgtWires( srcWires.size() );
    for ( unsigned iW = 0; iW < srcWires.size(); ++iW )
    {
      list< TopoDS_Edge > tgtEdges;
      StdMeshers_FaceSidePtr srcWire = srcWires[iW];
      TopTools_IndexedMapOfShape edgeMap; // to detect seam edges
      for ( int iE = 0; iE < srcWire->NbEdges(); ++iE )
      {
        tgtEdges.push_back( TopoDS::Edge( shape2ShapeMap( srcWire->Edge( iE ), /*isSrc=*/true)));
        // reverse a seam edge encountered for the second time
        const int oldExtent = edgeMap.Extent();
        edgeMap.Add( tgtEdges.back() );
        if ( oldExtent == edgeMap.Extent() )
          tgtEdges.back().Reverse();
      }
      tgtWires[ iW ].reset( new StdMeshers_FaceSide( tgtFace, tgtEdges, tgtMesh,
                                                     /*theIsForward = */ true,
                                                     /*theIgnoreMediumNodes = */false));
      if ( is1DComputed &&
           srcWires[iW]->GetUVPtStruct().size() !=
           tgtWires[iW]->GetUVPtStruct().size())
        return false;
    }

    // 2) Find transformation

    gp_Trsf2d trsf;
    {
      // get 2 pairs of corresponding UVs
      gp_Pnt2d srcP0 = srcWires[0]->Value2d(0.0);
      gp_Pnt2d srcP1 = srcWires[0]->Value2d(0.333);
      gp_Pnt2d tgtP0 = tgtWires[0]->Value2d(0.0);
      gp_Pnt2d tgtP1 = tgtWires[0]->Value2d(0.333);

      // make transformation
      gp_Trsf2d fromTgtCS, toSrcCS; // from/to global CS
      gp_Ax2d srcCS( srcP0, gp_Vec2d( srcP0, srcP1 ));
      gp_Ax2d tgtCS( tgtP0, gp_Vec2d( tgtP0, tgtP1 ));
      toSrcCS  .SetTransformation( srcCS );
      fromTgtCS.SetTransformation( tgtCS );
      fromTgtCS.Invert();

      trsf = fromTgtCS * toSrcCS;

      // check transformation
      const double tol = 1e-5 * gp_Vec2d( srcP0, srcP1 ).Magnitude();
      for ( double u = 0.12; u < 1.; u += 0.1 )
      {
        gp_Pnt2d srcUV = srcWires[0]->Value2d( u );
        gp_Pnt2d tgtUV = tgtWires[0]->Value2d( u );
        gp_Pnt2d tgtUV2 = srcUV.Transformed( trsf );
        if ( tgtUV.Distance( tgtUV2 ) > tol )
          return false;
      }
    }

    // 3) Projection

    typedef map<const SMDS_MeshNode* , const SMDS_MeshNode*, TIDCompare> TN2NMap;
    TN2NMap src2tgtNodes;
    TN2NMap::iterator srcN_tgtN;

    // fill src2tgtNodes in with nodes on EDGEs
    for ( unsigned iW = 0; iW < srcWires.size(); ++iW )
      if ( is1DComputed )
      {
        const vector<UVPtStruct>& srcUVs = srcWires[iW]->GetUVPtStruct();
        const vector<UVPtStruct>& tgtUVs = tgtWires[iW]->GetUVPtStruct();
        for ( unsigned i = 0; i < srcUVs.size(); ++i )
          src2tgtNodes.insert( make_pair( srcUVs[i].node, tgtUVs[i].node ));
      }
      else
      {
        for ( int iE = 0; iE < srcWires[iW]->NbEdges(); ++iE )
        {
          TopoDS_Vertex srcV = srcWires[iW]->FirstVertex(iE);
          TopoDS_Vertex tgtV = tgtWires[iW]->FirstVertex(iE);
          const SMDS_MeshNode* srcNode = SMESH_Algo::VertexNode( srcV, srcMesh->GetMeshDS() );
          const SMDS_MeshNode* tgtNode = SMESH_Algo::VertexNode( tgtV, tgtMesh->GetMeshDS() );
          if ( tgtNode && srcNode )
            src2tgtNodes.insert( make_pair( srcNode, tgtNode ));
        }
      }

    // make elements

    SMESHDS_SubMesh* srcSubDS = srcMesh->GetMeshDS()->MeshElements( srcFace );

    SMESH_MesherHelper helper( *tgtMesh );
    helper.SetSubShape( tgtFace );
    if ( is1DComputed )
      helper.IsQuadraticSubMesh( tgtFace );
    else
      helper.SetIsQuadratic( srcSubDS->GetElements()->next()->IsQuadratic() );
    helper.SetElementsOnShape( true );
    Handle(Geom_Surface) tgtSurface = BRep_Tool::Surface( tgtFace );
    SMESHDS_Mesh* tgtMeshDS = tgtMesh->GetMeshDS();

    SMESH_MesherHelper srcHelper( *srcMesh );
    srcHelper.SetSubShape( srcFace );

    const SMDS_MeshNode* nullNode = 0;

    SMDS_ElemIteratorPtr elemIt = srcSubDS->GetElements();
    vector< const SMDS_MeshNode* > tgtNodes;
    bool uvOK;
    while ( elemIt->more() ) // loop on all mesh faces on srcFace
    {
      const SMDS_MeshElement* elem = elemIt->next();
      const int nbN = elem->NbCornerNodes(); 
      tgtNodes.resize( nbN );
      for ( int i = 0; i < nbN; ++i ) // loop on nodes of the source element
      {
        const SMDS_MeshNode* srcNode = elem->GetNode(i);
        srcN_tgtN = src2tgtNodes.insert( make_pair( srcNode, nullNode )).first;
        if ( srcN_tgtN->second == nullNode )
        {
          // create a new node
          gp_Pnt2d srcUV = srcHelper.GetNodeUV( srcFace, srcNode,
                                                elem->GetNode( helper.WrapIndex(i+1,nbN)), &uvOK);
          gp_Pnt2d tgtUV = srcUV.Transformed( trsf );
          gp_Pnt   tgtP  = tgtSurface->Value( tgtUV.X(), tgtUV.Y() );
          SMDS_MeshNode* n = tgtMeshDS->AddNode( tgtP.X(), tgtP.Y(), tgtP.Z() );
          switch ( srcNode->GetPosition()->GetTypeOfPosition() )
          {
          case SMDS_TOP_FACE: {
            tgtMeshDS->SetNodeOnFace( n, helper.GetSubShapeID(), tgtUV.X(), tgtUV.Y() );
            break;
          }
          case SMDS_TOP_EDGE: {
            TopoDS_Shape srcEdge = srcHelper.GetSubShapeByNode( srcNode, srcHelper.GetMeshDS() );
            TopoDS_Edge  tgtEdge = TopoDS::Edge( shape2ShapeMap( srcEdge, /*isSrc=*/true ));
            tgtMeshDS->SetNodeOnEdge( n, TopoDS::Edge( tgtEdge ));
            double U = srcHelper.GetNodeU( TopoDS::Edge( srcEdge ), srcNode );
            helper.CheckNodeU( tgtEdge, n, U, Precision::PConfusion());
            n->SetPosition(SMDS_PositionPtr(new SMDS_EdgePosition( U )));
            break;
          }
          case SMDS_TOP_VERTEX: {
            TopoDS_Shape srcV = srcHelper.GetSubShapeByNode( srcNode, srcHelper.GetMeshDS() );
            TopoDS_Shape tgtV = shape2ShapeMap( srcV, /*isSrc=*/true );
            tgtMeshDS->SetNodeOnVertex( n, TopoDS::Vertex( tgtV ));
            break;
          }
          }
          srcN_tgtN->second = n;
        }
        tgtNodes[i] = srcN_tgtN->second;
      }
      // create a new face (with reversed orientation)
      switch ( nbN )
      {
      case 3: helper.AddFace(tgtNodes[0], tgtNodes[2], tgtNodes[1]); break;
      case 4: helper.AddFace(tgtNodes[0], tgtNodes[3], tgtNodes[2], tgtNodes[1]); break;
      }
    }
    return true;

  } // bool projectBy2DSimilarity(...)

} // namespace


//=======================================================================
//function : Compute
//purpose  : 
//=======================================================================

bool StdMeshers_Projection_2D::Compute(SMESH_Mesh& theMesh, const TopoDS_Shape& theShape)
{
  MESSAGE("Projection_2D Compute");
  if ( !_sourceHypo )
    return false;

  SMESH_Mesh * srcMesh = _sourceHypo->GetSourceMesh();
  SMESH_Mesh * tgtMesh = & theMesh;
  if ( !srcMesh )
    srcMesh = tgtMesh;

  SMESHDS_Mesh * meshDS = theMesh.GetMeshDS();

  // ---------------------------
  // Make sub-shapes association
  // ---------------------------

  TopoDS_Face tgtFace = TopoDS::Face( theShape.Oriented(TopAbs_FORWARD));
  TopoDS_Shape srcShape = _sourceHypo->GetSourceFace().Oriented(TopAbs_FORWARD);

  TAssocTool::TShapeShapeMap shape2ShapeMap;
  TAssocTool::InitVertexAssociation( _sourceHypo, shape2ShapeMap );
  if ( !TAssocTool::FindSubShapeAssociation( tgtFace, tgtMesh, srcShape, srcMesh,
                                             shape2ShapeMap)  ||
       !shape2ShapeMap.IsBound( tgtFace ))
    return error(COMPERR_BAD_SHAPE,"Topology of source and target faces seems different" );

  TopoDS_Face srcFace = TopoDS::Face( shape2ShapeMap( tgtFace ).Oriented(TopAbs_FORWARD));

  // ----------------------------------------------
  // Assure that mesh on a source Face is computed
  // ----------------------------------------------

  SMESH_subMesh* srcSubMesh = srcMesh->GetSubMesh( srcFace );
  SMESH_subMesh* tgtSubMesh = tgtMesh->GetSubMesh( tgtFace );

  if ( tgtMesh == srcMesh ) {
    if ( !TAssocTool::MakeComputed( srcSubMesh ))
      return error(COMPERR_BAD_INPUT_MESH,"Source mesh not computed");
  }
  else {
    if ( !srcSubMesh->IsMeshComputed() )
      return error(COMPERR_BAD_INPUT_MESH,"Source mesh not computed");
  }

  // ===========
  // Projection
  // ===========

  // find out if EDGEs are meshed or not
  bool is1DComputed = false;
  SMESH_subMeshIteratorPtr smIt = tgtSubMesh->getDependsOnIterator(/*includeSelf=*/false,
                                                                   /*complexShapeFirst=*/true);
  while ( smIt->more() && !is1DComputed )
  {
    SMESH_subMesh* sm = smIt->next();
    if ( sm->GetSubShape().ShapeType() == TopAbs_EDGE )
      is1DComputed = sm->IsMeshComputed();
  }

  bool done = false;

  if ( !done )
  {
    // try to project from the same face with different location
    done = projectPartner( tgtFace, srcFace, tgtMesh, srcMesh, shape2ShapeMap );
  }
  if ( !done )
  {
    // projection in case if the faces are similar in 2D space
    done = projectBy2DSimilarity( tgtFace, srcFace, tgtMesh, srcMesh, shape2ShapeMap, is1DComputed);
  }

  if ( !done )
  {
    // --------------------
    // Prepare to mapping 
    // --------------------

    SMESH_MesherHelper helper( theMesh );
    helper.SetSubShape( tgtFace );

    // Check if node projection to a face is needed
    Bnd_B2d uvBox;
    SMDS_ElemIteratorPtr faceIt = srcSubMesh->GetSubMeshDS()->GetElements();
    int nbFaceNodes = 0;
    for ( ; nbFaceNodes < 3 && faceIt->more();  ) {
      const SMDS_MeshElement* face = faceIt->next();
      SMDS_ElemIteratorPtr nodeIt = face->nodesIterator();
      while ( nodeIt->more() ) {
        const SMDS_MeshNode* node = static_cast<const SMDS_MeshNode*>( nodeIt->next() );
        if ( node->GetPosition()->GetTypeOfPosition() == SMDS_TOP_FACE ) {
          nbFaceNodes++;
          uvBox.Add( helper.GetNodeUV( srcFace, node ));
        }
      }
    }
    const bool toProjectNodes =
      ( nbFaceNodes > 0 && ( uvBox.IsVoid() || uvBox.SquareExtent() < DBL_MIN ));

    // Load pattern from the source face
    SMESH_Pattern mapper;
    mapper.Load( srcMesh, srcFace, toProjectNodes );
    if ( mapper.GetErrorCode() != SMESH_Pattern::ERR_OK )
      return error(COMPERR_BAD_INPUT_MESH,"Can't load mesh pattern from the source face");

    // Find the first target vertex corresponding to first vertex of the <mapper>
    // and <theReverse> flag needed to call mapper.Apply()

    TopoDS_Vertex srcV1 = TopoDS::Vertex( mapper.GetSubShape( 1 ));
    if ( srcV1.IsNull() )
      RETURN_BAD_RESULT("Mesh is not bound to the face");
    if ( !shape2ShapeMap.IsBound( srcV1, /*isSrc=*/true ))
      RETURN_BAD_RESULT("Not associated vertices, srcV1 " << srcV1.TShape().operator->() );
    TopoDS_Vertex tgtV1 = TopoDS::Vertex( shape2ShapeMap( srcV1, /*isSrc=*/true ));

    if ( !SMESH_MesherHelper::IsSubShape( srcV1, srcFace ))
      RETURN_BAD_RESULT("Wrong srcV1 " << srcV1.TShape().operator->());
    if ( !SMESH_MesherHelper::IsSubShape( tgtV1, tgtFace ))
      RETURN_BAD_RESULT("Wrong tgtV1 " << tgtV1.TShape().operator->());

    // try to find out orientation by order of edges
    bool reverse = false;
    list< TopoDS_Edge > tgtEdges, srcEdges;
    list< int > nbEdgesInWires;
    SMESH_Block::GetOrderedEdges( tgtFace, tgtV1, tgtEdges, nbEdgesInWires);
    SMESH_Block::GetOrderedEdges( srcFace, srcV1, srcEdges, nbEdgesInWires);
    if ( nbEdgesInWires.front() > 1 ) // possible to find out
    {
      TopoDS_Edge srcE1 = srcEdges.front(), tgtE1 = tgtEdges.front();
      TopoDS_Shape srcE1bis = shape2ShapeMap( tgtE1 );
      reverse = ( ! srcE1.IsSame( srcE1bis ));
    }
    else if ( nbEdgesInWires.front() == 1 )
    {
      // TODO::Compare orientation of curves in a sole edge
      //RETURN_BAD_RESULT("Not implemented case");
    }
    else
    {
      RETURN_BAD_RESULT("Bad result from SMESH_Block::GetOrderedEdges()");
    }

    // --------------------
    // Perform 2D mapping 
    // --------------------

    // Compute mesh on a target face

    mapper.Apply( tgtFace, tgtV1, reverse );
    if ( mapper.GetErrorCode() != SMESH_Pattern::ERR_OK )
      return error("Can't apply source mesh pattern to the face");

    // Create the mesh

    const bool toCreatePolygons = false, toCreatePolyedrs = false;
    mapper.MakeMesh( tgtMesh, toCreatePolygons, toCreatePolyedrs );
    if ( mapper.GetErrorCode() != SMESH_Pattern::ERR_OK )
      return error("Can't make mesh by source mesh pattern");

    // it will remove mesh built by pattern mapper on edges and vertices
    // in failure case
    MeshCleaner cleaner( tgtSubMesh );

    // -------------------------------------------------------------------------
    // mapper doesn't take care of nodes already existing on edges and vertices,
    // so we must merge nodes created by it with existing ones 
    // -------------------------------------------------------------------------

    SMESH_MeshEditor::TListOfListOfNodes groupsOfNodes;

    // Make groups of nodes to merge

    // loop on edge and vertex submeshes of a target face
    smIt = tgtSubMesh->getDependsOnIterator(/*includeSelf=*/false,/*complexShapeFirst=*/false);
    while ( smIt->more() )
    {
      SMESH_subMesh*     sm = smIt->next();
      SMESHDS_SubMesh* smDS = sm->GetSubMeshDS();
      if ( !smDS || smDS->NbNodes() == 0 )
        continue;
      //if ( !is1DComputed && sm->GetSubShape().ShapeType() == TopAbs_EDGE )
      //break;

      // Sort new and old nodes of a submesh separately

      bool isSeam = helper.IsRealSeam( sm->GetId() );

      enum { NEW_NODES = 0, OLD_NODES };
      map< double, const SMDS_MeshNode* > u2nodesMaps[2], u2nodesOnSeam;
      map< double, const SMDS_MeshNode* >::iterator u_oldNode, u_newNode, u_newOnSeam, newEnd;
      set< const SMDS_MeshNode* > seamNodes;

      // mapper puts on a seam edge nodes from 2 edges
      if ( isSeam && ! getBoundaryNodes ( sm, tgtFace, u2nodesOnSeam, seamNodes ))
        RETURN_BAD_RESULT("getBoundaryNodes() failed");

      SMDS_NodeIteratorPtr nIt = smDS->GetNodes();
      while ( nIt->more() )
      {
        const SMDS_MeshNode* node = nIt->next();
        bool isOld = isOldNode( node );

        if ( !isOld && isSeam ) { // new node on a seam edge
          if ( seamNodes.count( node ) )
            continue; // node is already in the map
        }

        // sort nodes on edges by their position
        map< double, const SMDS_MeshNode* > & pos2nodes = u2nodesMaps[isOld ? OLD_NODES : NEW_NODES];
        switch ( node->GetPosition()->GetTypeOfPosition() )
        {
        case  SMDS_TOP_VERTEX: {
          if ( !is1DComputed && !pos2nodes.empty() )
            u2nodesMaps[isOld ? NEW_NODES : OLD_NODES].insert( make_pair( 0, node ));
          else
            pos2nodes.insert( make_pair( 0, node ));
          break;
        }
        case  SMDS_TOP_EDGE:   {
          const SMDS_EdgePosition* pos =
            static_cast<const SMDS_EdgePosition*>(node->GetPosition());
          pos2nodes.insert( make_pair( pos->GetUParameter(), node ));
          break;
        }
        default:
          RETURN_BAD_RESULT("Wrong node position type: "<<
                            node->GetPosition()->GetTypeOfPosition());
        }
      }
      const bool mergeNewToOld =
        ( u2nodesMaps[ NEW_NODES ].size() == u2nodesMaps[ OLD_NODES ].size() );
      const bool mergeSeamToNew =
        ( u2nodesMaps[ NEW_NODES ].size() == u2nodesOnSeam.size() );

      if ( !mergeNewToOld )
      {
        // if ( u2nodesMaps[ NEW_NODES ].size() == 0         &&
        //      sm->GetSubShape().ShapeType() == TopAbs_EDGE &&
        //      helper.IsDegenShape( sm->GetId() )             )
        //   // NPAL15894 (tt88bis.py) - project mesh built by NETGEN_1d_2D that
        //   // does not make segments/nodes on degenerated edges
        //   continue;

        // if ( u2nodesMaps[ OLD_NODES ].size() == 0           &&
        //      sm->GetSubShape().ShapeType() == TopAbs_VERTEX )
        //   // old nodes are optional on vertices in the case of 1D-2D projection
        //   continue;

        //RETURN_BAD_RESULT
        MESSAGE("Different nb of old and new nodes on shape #"<< sm->GetId() <<" "<<
                u2nodesMaps[ OLD_NODES ].size() << " != " <<
                u2nodesMaps[ NEW_NODES ].size());
      }
      if ( isSeam && !mergeSeamToNew ) {
        //RETURN_BAD_RESULT
        MESSAGE("Different nb of old and seam nodes " <<
                u2nodesMaps[ OLD_NODES ].size() << " != " << u2nodesOnSeam.size());
      }
      // Make groups of nodes to merge
      u_oldNode = u2nodesMaps[ OLD_NODES ].begin(); 
      u_newNode = u2nodesMaps[ NEW_NODES ].begin();
      newEnd    = u2nodesMaps[ NEW_NODES ].end();
      u_newOnSeam = u2nodesOnSeam.begin();
      if ( mergeNewToOld )
        for ( ; u_newNode != newEnd; ++u_newNode, ++u_oldNode )
        {
          groupsOfNodes.push_back( list< const SMDS_MeshNode* >() );
          groupsOfNodes.back().push_back( u_oldNode->second );
          groupsOfNodes.back().push_back( u_newNode->second );
          if ( mergeSeamToNew )
            groupsOfNodes.back().push_back( (u_newOnSeam++)->second );
        }
      else if ( mergeSeamToNew )
        for ( ; u_newNode != newEnd; ++u_newNode, ++u_newOnSeam )
        {
          groupsOfNodes.push_back( list< const SMDS_MeshNode* >() );
          groupsOfNodes.back().push_back( u_newNode->second );
          groupsOfNodes.back().push_back( u_newOnSeam->second );
        }
    }

    // Merge

    SMESH_MeshEditor editor( tgtMesh );
    int nbFaceBeforeMerge = tgtSubMesh->GetSubMeshDS()->NbElements();
    editor.MergeNodes( groupsOfNodes );
    int nbFaceAtferMerge = tgtSubMesh->GetSubMeshDS()->NbElements();
    if ( nbFaceBeforeMerge != nbFaceAtferMerge )
      return error(COMPERR_BAD_INPUT_MESH, "Probably invalid node parameters on geom faces");

    // ----------------------------------------------------------------
    // The mapper can't create quadratic elements, so convert if needed
    // ----------------------------------------------------------------

    faceIt         = srcSubMesh->GetSubMeshDS()->GetElements();
    bool srcIsQuad = faceIt->next()->IsQuadratic();
    faceIt         = tgtSubMesh->GetSubMeshDS()->GetElements();
    bool tgtIsQuad = faceIt->next()->IsQuadratic();
    if ( srcIsQuad && !tgtIsQuad )
    {
      TIDSortedElemSet tgtFaces;
      faceIt = tgtSubMesh->GetSubMeshDS()->GetElements();
      while ( faceIt->more() )
        tgtFaces.insert( tgtFaces.end(), faceIt->next() );

      editor.ConvertToQuadratic(/*theForce3d=*/false, tgtFaces);
    }

    cleaner.Release(); // not to remove mesh

  } // end of projection using Pattern mapping


  // ---------------------------
  // Check elements orientation
  // ---------------------------

  TopoDS_Face face = TopoDS::Face( theShape );
  if ( !theMesh.IsMainShape( tgtFace ))
  {
    // find the main shape
    TopoDS_Shape mainShape = meshDS->ShapeToMesh();
    switch ( mainShape.ShapeType() ) {
    case TopAbs_SHELL:
    case TopAbs_SOLID: break;
    default:
      TopTools_ListIteratorOfListOfShape ancestIt = theMesh.GetAncestors( face );
      for ( ; ancestIt.More(); ancestIt.Next() ) {
        TopAbs_ShapeEnum type = ancestIt.Value().ShapeType();
        if ( type == TopAbs_SOLID ) {
          mainShape = ancestIt.Value();
          break;
        } else if ( type == TopAbs_SHELL ) {
          mainShape = ancestIt.Value();
        }
      }
    }
    // find tgtFace in the main solid or shell to know it's true orientation.
    TopExp_Explorer exp( mainShape, TopAbs_FACE );
    for ( ; exp.More(); exp.Next() ) {
      if ( tgtFace.IsSame( exp.Current() )) {
        face = TopoDS::Face( exp.Current() );
        break;
      }
    }
  }
  // Fix orientation
  if ( SMESH_Algo::IsReversedSubMesh( face, meshDS ))
  {
    SMESH_MeshEditor editor( tgtMesh );
    SMDS_ElemIteratorPtr eIt = meshDS->MeshElements( face )->GetElements();
    while ( eIt->more() ) {
      const SMDS_MeshElement* e = eIt->next();
      if ( e->GetType() == SMDSAbs_Face && !editor.Reorient( e ))
        RETURN_BAD_RESULT("Pb of SMESH_MeshEditor::Reorient()");
    }
  }

  return true;
}


//=======================================================================
//function : Evaluate
//purpose  : 
//=======================================================================

bool StdMeshers_Projection_2D::Evaluate(SMESH_Mesh&         theMesh,
                                        const TopoDS_Shape& theShape,
                                        MapShapeNbElems&    aResMap)
{
  if ( !_sourceHypo )
    return false;

  SMESH_Mesh * srcMesh = _sourceHypo->GetSourceMesh();
  SMESH_Mesh * tgtMesh = & theMesh;
  if ( !srcMesh )
    srcMesh = tgtMesh;

  // ---------------------------
  // Make sub-shapes association
  // ---------------------------

  TopoDS_Face tgtFace = TopoDS::Face( theShape.Oriented(TopAbs_FORWARD));
  TopoDS_Shape srcShape = _sourceHypo->GetSourceFace().Oriented(TopAbs_FORWARD);

  TAssocTool::TShapeShapeMap shape2ShapeMap;
  TAssocTool::InitVertexAssociation( _sourceHypo, shape2ShapeMap );
  if ( !TAssocTool::FindSubShapeAssociation( tgtFace, tgtMesh, srcShape, srcMesh,
                                             shape2ShapeMap)  ||
       !shape2ShapeMap.IsBound( tgtFace ))
    return error(COMPERR_BAD_SHAPE,"Topology of source and target faces seems different" );

  TopoDS_Face srcFace = TopoDS::Face( shape2ShapeMap( tgtFace ).Oriented(TopAbs_FORWARD));

  // -------------------------------------------------------
  // Assure that mesh on a source Face is computed/evaluated
  // -------------------------------------------------------

  std::vector<int> aVec;

  SMESH_subMesh* srcSubMesh = srcMesh->GetSubMesh( srcFace );
  if ( srcSubMesh->IsMeshComputed() )
  {
    aVec.resize( SMDSEntity_Last, 0 );
    aVec[SMDSEntity_Node] = srcSubMesh->GetSubMeshDS()->NbNodes();

    SMDS_ElemIteratorPtr elemIt = srcSubMesh->GetSubMeshDS()->GetElements();
    while ( elemIt->more() )
      aVec[ elemIt->next()->GetEntityType() ]++;
  }
  else
  {
    MapShapeNbElems  tmpResMap;
    MapShapeNbElems& srcResMap = (srcMesh == tgtMesh) ? aResMap : tmpResMap;
    if ( !_gen->Evaluate( *srcMesh, srcShape, srcResMap ))
      return error(COMPERR_BAD_INPUT_MESH,"Source mesh not evaluatable");
    aVec = srcResMap[ srcSubMesh ];
    if ( aVec.empty() )
      return error(COMPERR_BAD_INPUT_MESH,"Source mesh is wrongly evaluated");
  }

  SMESH_subMesh * sm = theMesh.GetSubMesh(theShape);
  aResMap.insert(std::make_pair(sm,aVec));

  return true;
}


//=============================================================================
/*!
 * \brief Sets a default event listener to submesh of the source face
  * \param subMesh - submesh where algo is set
 *
 * This method is called when a submesh gets HYP_OK algo_state.
 * After being set, event listener is notified on each event of a submesh.
 * Arranges that CLEAN event is translated from source submesh to
 * the submesh
 */
//=============================================================================

void StdMeshers_Projection_2D::SetEventListener(SMESH_subMesh* subMesh)
{
  TAssocTool::SetEventListener( subMesh,
                                _sourceHypo->GetSourceFace(),
                                _sourceHypo->GetSourceMesh() );
}

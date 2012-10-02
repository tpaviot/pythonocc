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

// File      : StdMeshers_FaceSide.hxx
// Created   : Wed Jan 31 18:41:25 2007
// Author    : Edward AGAPOV (eap)
// Module    : SMESH
//
#include "StdMeshers_FaceSide.hxx"

#include "SMDS_EdgePosition.hxx"
#include "SMDS_MeshNode.hxx"
#include "SMESHDS_Mesh.hxx"
#include "SMESHDS_SubMesh.hxx"
#include "SMESH_Algo.hxx"
#include "SMESH_Mesh.hxx"
#include "SMESH_MesherHelper.hxx"
#include "SMESH_ComputeError.hxx"
#include "SMESH_Block.hxx"

#include <Adaptor2d_Curve2d.hxx>
#include <BRepAdaptor_CompCurve.hxx>
#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <GCPnts_AbscissaPoint.hxx>
#include <Geom2dAdaptor_Curve.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Wire.hxx>

#include <map>

#include "utilities.h"

//================================================================================
/*!
 * \brief Constructor of a side of one edge
  * \param theFace - the face
  * \param theEdge - the edge
 */
//================================================================================

StdMeshers_FaceSide::StdMeshers_FaceSide(const TopoDS_Face& theFace,
                                         const TopoDS_Edge& theEdge,
                                         SMESH_Mesh*        theMesh,
                                         const bool         theIsForward,
                                         const bool         theIgnoreMediumNodes)
{
  list<TopoDS_Edge> edges(1,theEdge);
  *this = StdMeshers_FaceSide( theFace, edges, theMesh, theIsForward, theIgnoreMediumNodes );
}

//================================================================================
/*!
 * \brief Constructor of a side of several edges
  * \param theFace - the face
  * \param theEdge - the edge
 */
//================================================================================

StdMeshers_FaceSide::StdMeshers_FaceSide(const TopoDS_Face& theFace,
                                         list<TopoDS_Edge>& theEdges,
                                         SMESH_Mesh*        theMesh,
                                         const bool         theIsForward,
                                         const bool         theIgnoreMediumNodes)
{
  int nbEdges = theEdges.size();
  myEdge.resize      ( nbEdges );
  myEdgeID.resize    ( nbEdges );
  myC2d.resize       ( nbEdges );
  myC3dAdaptor.resize( nbEdges );
  myFirst.resize     ( nbEdges );
  myLast.resize      ( nbEdges );
  myNormPar.resize   ( nbEdges );
  myEdgeLength.resize( nbEdges );
  myIsUniform.resize ( nbEdges, true );
  myLength             = 0;
  myNbPonits           = myNbSegments = 0;
  myMesh               = theMesh;
  myMissingVertexNodes = false;
  myIgnoreMediumNodes  = theIgnoreMediumNodes;
  myDefaultPnt2d       = gp_Pnt2d( 1e+100, 1e+100 );
  if ( nbEdges == 0 ) return;

  SMESHDS_Mesh* meshDS = theMesh->GetMeshDS();

  int nbDegen = 0;
  list<TopoDS_Edge>::iterator edge = theEdges.begin();
  TopoDS_Iterator vExp;
  for ( int index = 0; edge != theEdges.end(); ++index, ++edge )
  {
    int i = theIsForward ? index : nbEdges-index-1;
    myEdgeLength[i] = SMESH_Algo::EdgeLength( *edge );
    if ( myEdgeLength[i] < DBL_MIN ) nbDegen++;
    myLength += myEdgeLength[i];
    myEdge[i] = *edge;
    myEdgeID[i] = meshDS->ShapeToIndex( *edge );
    if ( !theIsForward ) myEdge[i].Reverse();

    if ( theFace.IsNull() )
      BRep_Tool::Range( *edge, myFirst[i], myLast[i] );
    else
      myC2d[i] = BRep_Tool::CurveOnSurface( *edge, theFace, myFirst[i], myLast[i] );
    if ( myEdge[i].Orientation() == TopAbs_REVERSED )
      std::swap( myFirst[i], myLast[i] );

    if ( SMESHDS_SubMesh* sm = meshDS->MeshElements( *edge )) {
      int nbN = sm->NbNodes();
      if ( theIgnoreMediumNodes ) {
        SMDS_ElemIteratorPtr elemIt = sm->GetElements();
        if ( elemIt->more() && elemIt->next()->IsQuadratic() )
          nbN -= sm->NbElements();
      }
      myNbPonits += nbN;
      myNbSegments += sm->NbElements();
    }
    // TopExp::FirstVertex() and TopExp::LastVertex() return NULL from INTERNAL edge
    vExp.Initialize( *edge );
    if ( vExp.Value().Orientation() == TopAbs_REVERSED ) vExp.Next();
    if ( SMESH_Algo::VertexNode( TopoDS::Vertex( vExp.Value()), meshDS ))
      myNbPonits += 1; // for the first end
    else
      myMissingVertexNodes = true;

    // check if edge has non-uniform parametrization (issue 0020705)
    if ( !myC2d[i].IsNull() && myEdgeLength[i] > DBL_MIN)
    {
      Geom2dAdaptor_Curve A2dC( myC2d[i],
                                std::min( myFirst[i], myLast[i] ),
                                std::max( myFirst[i], myLast[i] ));
      double p2 = myFirst[i]+(myLast[i]-myFirst[i])/2., p4 = myFirst[i]+(myLast[i]-myFirst[i])/4.;
      double d2 = GCPnts_AbscissaPoint::Length( A2dC, myFirst[i], p2 );
      double d4 = GCPnts_AbscissaPoint::Length( A2dC, myFirst[i], p4 );
      //cout<<"len = "<<len<<"  d2 = "<<d2<<"  fabs(2*d2/len-1.0) = "<<fabs(2*d2/len-1.0)<<endl;
      myIsUniform[i] = !( fabs(2*d2/myEdgeLength[i]-1.0) > 0.01 || fabs(2*d4/d2-1.0) > 0.01 );
      if ( !myIsUniform[i] )
      {
        double fp,lp;
        TopLoc_Location L;
        Handle(Geom_Curve) C3d = BRep_Tool::Curve(myEdge[i],L,fp,lp);
        myC3dAdaptor[i].Load( C3d, fp,lp );
      }
    }
  }
  vExp.Initialize( theEdges.back() );
  if ( vExp.Value().Orientation() != TopAbs_REVERSED ) vExp.Next();
  if ( vExp.More() )
  {
    if ( SMESH_Algo::VertexNode( TopoDS::Vertex( vExp.Value()), meshDS ))
      myNbPonits++; // for the last end
    else
      myMissingVertexNodes = true;
  }
  if ( nbEdges > 1 && myLength > DBL_MIN ) {
    const double degenNormLen = 1.e-5;
    double totLength = myLength;
    if ( nbDegen )
      totLength += myLength * degenNormLen * nbDegen;
    double prevNormPar = 0;
    for ( int i = 0; i < nbEdges; ++i ) {
      if ( myEdgeLength[ i ] < DBL_MIN )
        myEdgeLength[ i ] = myLength * degenNormLen;
      myNormPar[ i ] = prevNormPar + myEdgeLength[i]/totLength;
      prevNormPar = myNormPar[ i ];
    }
  }
  myNormPar[nbEdges-1] = 1.;
  //dump();
}

//================================================================================
/*!
 * \brief Constructor of a side for vertex using data from other FaceSide
  * \param theVertex - the vertex
  * \param theSide - the side
 */
//================================================================================

StdMeshers_FaceSide::StdMeshers_FaceSide(const SMDS_MeshNode* theNode,
                                         const gp_Pnt2d thePnt2d,
                                         const StdMeshers_FaceSide* theSide)
{
  myC2d.resize(1);
  myLength = 0;
  myMesh = theSide->GetMesh();
  myDefaultPnt2d = thePnt2d;

  myPoints = theSide->GetUVPtStruct();
  myNbPonits = myNbSegments = myPoints.size();
  std::vector<uvPtStruct>::iterator it = myPoints.begin();
  for(; it!=myPoints.end(); it++) {
    (*it).u = thePnt2d.X();
    (*it).v = thePnt2d.Y();
    (*it).y = 0.0;
    (*it).node = theNode;
  }
}

//================================================================================
/*!
 * \brief Return info on nodes on the side
  * \retval UVPtStruct* - array of data structures
 */
//================================================================================

const vector<UVPtStruct>& StdMeshers_FaceSide::GetUVPtStruct(bool   isXConst,
                                                             double constValue) const
{
  if ( myPoints.empty() ) {

    if ( NbEdges() == 0 ) return myPoints;

    SMESHDS_Mesh* meshDS = myMesh->GetMeshDS();
    SMESH_MesherHelper helper(*myMesh);
    bool paramOK;

    // sort nodes of all edges putting them into a map

    map< double, const SMDS_MeshNode*> u2node;
    //int nbOnDegen = 0;
    for ( int i = 0; i < myEdge.size(); ++i )
    {
      // Put 1st vertex node of a current edge
      TopoDS_Vertex VV[2]; // TopExp::FirstVertex() returns NULL for INTERNAL edge
      VV[0] = SMESH_MesherHelper::IthVertex( 0, myEdge[i]);
      VV[1] = SMESH_MesherHelper::IthVertex( 1, myEdge[i]);
      const SMDS_MeshNode* node = SMESH_Algo::VertexNode( VV[0], meshDS );
      double prevNormPar = ( i == 0 ? 0 : myNormPar[ i-1 ]); // normalized param
      if ( node ) { // nodes on internal vertices may be missing
        u2node.insert( u2node.end(), make_pair( prevNormPar, node ));
      }
      else if ( i == 0 ) {
        MESSAGE(" NO NODE on VERTEX" );
        return myPoints;
      }

      // Put internal nodes
      if ( SMESHDS_SubMesh* sm = meshDS->MeshElements( myEdge[i] ))
      {
        vector< pair< double, const SMDS_MeshNode*> > u2nodeVec;
        u2nodeVec.reserve( sm->NbNodes() );
        SMDS_NodeIteratorPtr nItr = sm->GetNodes();
        double paramSize = myLast[i] - myFirst[i];
        double r = myNormPar[i] - prevNormPar;
        if ( !myIsUniform[i] )
          while ( nItr->more() )
          {
            const SMDS_MeshNode* node = nItr->next();
            if ( myIgnoreMediumNodes && SMESH_MeshEditor::IsMedium( node, SMDSAbs_Edge ))
              continue;
            double u = helper.GetNodeU( myEdge[i], node, 0, &paramOK );
            double aLenU = GCPnts_AbscissaPoint::Length
              ( const_cast<GeomAdaptor_Curve&>( myC3dAdaptor[i]), myFirst[i], u );
            if ( myEdgeLength[i] < aLenU ) // nonregression test "3D_mesh_NETGEN/G6"
            {
              u2nodeVec.clear();
              break;
            }
            double normPar = prevNormPar + r*aLenU/myEdgeLength[i];
            u2nodeVec.push_back( make_pair( normPar, node ));
          }
        nItr = sm->GetNodes();
        if ( u2nodeVec.empty() )
          while ( nItr->more() )
          {
            const SMDS_MeshNode* node = nItr->next();
            if ( myIgnoreMediumNodes && SMESH_MeshEditor::IsMedium( node, SMDSAbs_Edge ))
              continue;
            double u = helper.GetNodeU( myEdge[i], node, 0, &paramOK );

            // paramSize is signed so orientation is taken into account
            double normPar = prevNormPar + r * ( u - myFirst[i] ) / paramSize;
            u2nodeVec.push_back( make_pair( normPar, node ));
          }
        for ( size_t j = 0; j < u2nodeVec.size(); ++j )
        u2node.insert( u2node.end(), u2nodeVec[j] );
      }

      // Put 2nd vertex node for a last edge
      if ( i+1 == myEdge.size() ) {
        node = SMESH_Algo::VertexNode( VV[1], meshDS );
        if ( !node ) {
          MESSAGE(" NO NODE on VERTEX" );
          return myPoints;
        }
        u2node.insert( u2node.end(), make_pair( 1., node ));
      }
    }
    if ( u2node.size() != myNbPonits ) {
      MESSAGE("Wrong node parameters on edges, u2node.size():"
              <<u2node.size()<<" !=  myNbPonits:"<<myNbPonits);
      return myPoints;
    }

    // fill array of UVPtStruct

    vector<uvPtStruct>* points = const_cast<vector<uvPtStruct>*>( &myPoints );
    points->resize( myNbPonits );

    int EdgeIndex = 0;
    double prevNormPar = 0, paramSize = myNormPar[ EdgeIndex ];
    map< double, const SMDS_MeshNode*>::iterator u_node = u2node.begin();
    for (int i = 0 ; u_node != u2node.end(); ++u_node, ++i ) {
      UVPtStruct & uvPt = (*points)[i];
      uvPt.node = u_node->second;
      uvPt.x = uvPt.y = uvPt.normParam = u_node->first;
      if ( isXConst ) uvPt.x = constValue;
      else            uvPt.y = constValue;
      const SMDS_EdgePosition* epos =
        dynamic_cast<const SMDS_EdgePosition*>(uvPt.node->GetPosition());
      if (( myNormPar[ EdgeIndex ] < uvPt.normParam ) ||
          ( epos && uvPt.node->getshapeId() != myEdgeID[ EdgeIndex ])) // for myMissingVertexNodes
      {
        prevNormPar = myNormPar[ EdgeIndex ];
        ++EdgeIndex;
#ifdef _DEBUG_
        if ( EdgeIndex >= myEdge.size() ) {
          dump("DEBUG");
          MESSAGE ( "WRONg EdgeIndex " << 1+EdgeIndex
                    << " myNormPar.size()="<<myNormPar.size()
                    << " myNormPar["<< EdgeIndex<<"]="<< myNormPar[ EdgeIndex ]
                    << " uvPt.normParam="<<uvPt.normParam );
        }
#endif
        paramSize = myNormPar[ EdgeIndex ] - prevNormPar;
      }
      if ( epos ) {
        uvPt.param = epos->GetUParameter();
      }
      else {
        double r = ( uvPt.normParam - prevNormPar )/ paramSize;
//         uvPt.param = myFirst[EdgeIndex] * ( 1 - r ) + myLast[EdgeIndex] * r;
        uvPt.param = ( r > 0.5 ? myLast[EdgeIndex] : myFirst[EdgeIndex] );
      }
      if ( !myC2d[ EdgeIndex ].IsNull() ) {
        gp_Pnt2d p = myC2d[ EdgeIndex ]->Value( uvPt.param );
        uvPt.u = p.X();
        uvPt.v = p.Y();
      }
      else {
        uvPt.u = uvPt.v = 1e+100;
      }
    }
  }
  return myPoints;
}

//================================================================================
/*!
 * \brief Falsificate info on nodes
  * \param nbSeg - nb of segments on the side
  * \retval UVPtStruct* - array of data structures
 */
//================================================================================

const vector<UVPtStruct>& StdMeshers_FaceSide::SimulateUVPtStruct(int    nbSeg,
                                                                  bool   isXConst,
                                                                  double constValue) const
{
  if ( myFalsePoints.empty() ) {

    if ( NbEdges() == 0 ) return myFalsePoints;

    vector<uvPtStruct>* points = const_cast<vector<uvPtStruct>*>( &myFalsePoints );
    points->resize( nbSeg+1 );

    int EdgeIndex = 0;
    double prevNormPar = 0, paramSize = myNormPar[ EdgeIndex ];
    for (int i = 0 ; i < myFalsePoints.size(); ++i ) {
      double normPar = double(i) / double(nbSeg);
      UVPtStruct & uvPt = (*points)[i];
      uvPt.node = 0;
      uvPt.x = uvPt.y = uvPt.param = uvPt.normParam = normPar;
      if ( isXConst ) uvPt.x = constValue;
      else            uvPt.y = constValue;
      if ( myNormPar[ EdgeIndex ] < normPar ) {
        prevNormPar = myNormPar[ EdgeIndex ];
        ++EdgeIndex;
        paramSize = myNormPar[ EdgeIndex ] - prevNormPar;
      }
      double r = ( normPar - prevNormPar )/ paramSize;
      uvPt.param = myFirst[EdgeIndex] * ( 1 - r ) + myLast[EdgeIndex] * r;
      if ( !myC2d[ EdgeIndex ].IsNull() ) {
        gp_Pnt2d p = myC2d[ EdgeIndex ]->Value( uvPt.param );
        uvPt.u = p.X();
        uvPt.v = p.Y();
      }
      else {
        uvPt.u = uvPt.v = 1e+100;
      }
    }
  }
  return myFalsePoints;
}

//=======================================================================
//function : GetOrderedNodes
//purpose  : Return nodes in the order they encounter while walking along the side
//=======================================================================

std::vector<const SMDS_MeshNode*> StdMeshers_FaceSide::GetOrderedNodes() const
{
  vector<const SMDS_MeshNode*> resultNodes;
  if ( myPoints.empty() )
  {
    if ( NbEdges() == 0 ) return resultNodes;

    SMESHDS_Mesh* meshDS = myMesh->GetMeshDS();
    SMESH_MesherHelper helper(*myMesh);
    bool paramOK;

    // Sort nodes of all edges putting them into a map

    map< double, const SMDS_MeshNode*> u2node;
    for ( int i = 0; i < myEdge.size(); ++i )
    {
      // Put 1st vertex node of a current edge
      TopoDS_Vertex VV[2]; // TopExp::FirstVertex() returns NULL for INTERNAL edge
      VV[0] = SMESH_MesherHelper::IthVertex( 0, myEdge[i]);
      VV[1] = SMESH_MesherHelper::IthVertex( 1, myEdge[i]);
      const SMDS_MeshNode* node = SMESH_Algo::VertexNode( VV[0], meshDS );
      double prevNormPar = ( i == 0 ? 0 : myNormPar[ i-1 ]); // normalized param
      if ( node ) { // nodes on internal vertices may be missing
        u2node.insert( make_pair( prevNormPar, node ));
      }
      else if ( i == 0 ) {
        MESSAGE(" NO NODE on VERTEX" );
        return resultNodes;
      }

      // Put internal nodes
      if ( SMESHDS_SubMesh* sm = meshDS->MeshElements( myEdge[i] ))
      {
        SMDS_NodeIteratorPtr nItr = sm->GetNodes();
        double paramSize = myLast[i] - myFirst[i];
        double r = myNormPar[i] - prevNormPar;
        while ( nItr->more() )
        {
          const SMDS_MeshNode* node = nItr->next();
          if ( myIgnoreMediumNodes && SMESH_MeshEditor::IsMedium( node, SMDSAbs_Edge ))
            continue;
          double u = helper.GetNodeU( myEdge[i], node, 0, &paramOK );

          // paramSize is signed so orientation is taken into account
          double normPar = prevNormPar + r * ( u - myFirst[i] ) / paramSize;
          u2node.insert( u2node.end(), make_pair( normPar, node ));
        }
      }

      // Put 2nd vertex node for a last edge
      if ( i+1 == myEdge.size() ) {
        node = SMESH_Algo::VertexNode( VV[1], meshDS );
        if ( !node ) {
          return resultNodes;
        }
        u2node.insert( u2node.end(), make_pair( 1., node ));
      }
    }

    // Fill the result vector

    if ( u2node.size() == myNbPonits )
    {
      resultNodes.reserve( u2node.size() );
      map< double, const SMDS_MeshNode*>::iterator u2n = u2node.begin();
      for ( ; u2n != u2node.end(); ++u2n )
        resultNodes.push_back( u2n->second );
    }
  }
  else
  {
    resultNodes.resize( myPoints.size() );
    for ( size_t i = 0; i < myPoints.size(); ++i )
      resultNodes[i] = myPoints[i].node;
  }

  return resultNodes;
}

//================================================================================
/*!
 * \brief reverse order of vector elements
  * \param vec - vector to reverse
 */
//================================================================================

template <typename T > void reverse(vector<T> & vec)
{
  for ( int f=0, r=vec.size()-1; f < r; ++f, --r )
    std::swap( vec[f], vec[r] );
}

//================================================================================
/*!
 * \brief Change orientation of side geometry
 */
//================================================================================

void StdMeshers_FaceSide::Reverse()
{
  int nbEdges = myEdge.size();
  for ( int i = nbEdges-1; i >= 0; --i ) {
    std::swap( myFirst[i], myLast[i] );
    myEdge[i].Reverse();
    if ( i > 0 ) // at the first loop 1. is overwritten
      myNormPar[i] = 1 - myNormPar[i-1];
  }
  if ( nbEdges > 1 ) {
    reverse( myEdge );
    reverse( myEdgeID );
    reverse( myC2d );
    reverse( myC3dAdaptor );
    reverse( myFirst );
    reverse( myLast );
    reverse( myNormPar );
    reverse( myEdgeLength );
    reverse( myIsUniform );
  }
  if ( nbEdges > 0 )
  {
    myNormPar[nbEdges-1]=1.;
    myPoints.clear();
    myFalsePoints.clear();
  }
}

//================================================================================
/*!
 * \brief Show side features
 */
//================================================================================

void StdMeshers_FaceSide::dump(const char* msg) const
{
#ifdef _DEBUG_
  if (msg) MESSAGE ( std::endl << msg );
  MESSAGE_BEGIN ("NB EDGES: "<< myEdge.size() );
  MESSAGE_ADD ( "nbPoints: "<<myNbPonits<<" vecSize: " << myPoints.size()<<" "<<myFalsePoints.size() );
  for ( int i=0; i<myEdge.size(); ++i)
  {
    MESSAGE_ADD ( "\t"<<i+1 );
    MESSAGE_ADD ( "\tEDGE: " );
    if (myEdge[i].IsNull()) {
      MESSAGE_ADD ( "NULL" );
    }
    else {
      TopAbs::Print(myEdge[i].Orientation(),cout)<<" "<<myEdge[i].TShape().operator->()<<endl;
      MESSAGE_ADD ( "\tV1: " << TopExp::FirstVertex( myEdge[i], 1).TShape().operator->()
                 << "  V2: " << TopExp::LastVertex( myEdge[i], 1).TShape().operator->() );
    }
    MESSAGE_ADD ( "\tC2d: ");
    
    if (myC2d[i].IsNull()) {
      MESSAGE_ADD ( "NULL" );
    }
    else {
      MESSAGE_ADD ( myC2d[i].operator->() );
    }
      
    MESSAGE_ADD ( "\tF: "<<myFirst[i]<< " L: "<< myLast[i] );
    MESSAGE_END ( "\tnormPar: "<<myNormPar[i]<<endl );
  }
#endif
}

//================================================================================
/*!
 * \brief Creates a Adaptor2d_Curve2d to be used in SMESH_Block
  * \retval Adaptor2d_Curve2d* - 
 */
//================================================================================

struct Adaptor2dCurve2d : public Adaptor2d_Curve2d
{
  const StdMeshers_FaceSide* mySide;
  Adaptor2dCurve2d(const StdMeshers_FaceSide* faceSide):mySide(faceSide) {}
  gp_Pnt2d Value(const Standard_Real U) const { return mySide->Value2d( U ); }
  Standard_Real FirstParameter() const { return 0; }
  Standard_Real LastParameter() const { return 1; }
};

Adaptor2d_Curve2d* StdMeshers_FaceSide::GetCurve2d() const
{
  return new Adaptor2dCurve2d( this );
}

//================================================================================
/*!
 * \brief Creates a fully functional Adaptor_Curve
 */
//================================================================================

BRepAdaptor_CompCurve* StdMeshers_FaceSide::GetCurve3d() const
{
  if ( myEdge.empty() )
    return 0;

  TopoDS_Wire aWire;
  BRep_Builder aBuilder;
  aBuilder.MakeWire(aWire);
  for ( int i=0; i<myEdge.size(); ++i )
    aBuilder.Add( aWire, myEdge[i] );

  if ( myEdge.size() == 2 && FirstVertex().IsSame( LastVertex() ))
    aWire.Closed(true); // issue 0021141

  return new BRepAdaptor_CompCurve( aWire );
}


//================================================================================
/*!
 * \brief Return 2D point by normalized parameter
  * \param U - normalized parameter value
  * \retval gp_Pnt2d - point
 */
//================================================================================

gp_Pnt2d StdMeshers_FaceSide::Value2d(double U) const
{
  if ( !myC2d[0].IsNull() ) {
    int i = EdgeIndex( U );
    double prevU = i ? myNormPar[ i-1 ] : 0;
    double r = ( U - prevU )/ ( myNormPar[ i ] - prevU );

    double par = myFirst[i] * ( 1 - r ) + myLast[i] * r;
    
    // check parametrization of curve
    if( !myIsUniform[i] )
    {
      double aLen3dU = r * myEdgeLength[i] * ( myFirst[i]>myLast[i] ? -1. : 1.);
      GCPnts_AbscissaPoint AbPnt
        ( const_cast<GeomAdaptor_Curve&>( myC3dAdaptor[i]), aLen3dU, myFirst[i] );
      if( AbPnt.IsDone() ) {
        par = AbPnt.Parameter();
      }
    }
    return myC2d[ i ]->Value(par);

  }
  return myDefaultPnt2d;
}

//================================================================================
/*!
 * \brief Return wires of a face as StdMeshers_FaceSide's
 */
//================================================================================

TSideVector StdMeshers_FaceSide::GetFaceWires(const TopoDS_Face& theFace,
                                              SMESH_Mesh &       theMesh,
                                              const bool         theIgnoreMediumNodes,
                                              TError &           theError)
{
  TopoDS_Vertex V1;
  list< TopoDS_Edge > edges, internalEdges;
  list< int > nbEdgesInWires;
  int nbWires = SMESH_Block::GetOrderedEdges (theFace, V1, edges, nbEdgesInWires);

  // split list of all edges into separate wires
  TSideVector wires( nbWires );
  list< int >::iterator nbE = nbEdgesInWires.begin();
  list< TopoDS_Edge >::iterator from = edges.begin(), to = from;
  for ( int iW = 0; iW < nbWires; ++iW, ++nbE )
  {
    std::advance( to, *nbE );
    if ( *nbE == 0 ) // Issue 0020676
    {
      --nbWires;
      --iW;
      wires.resize( nbWires );
      continue;
    }
    list< TopoDS_Edge > wireEdges( from, to );
    // assure that there is a node on the first vertex
    // as StdMeshers_FaceSide::GetUVPtStruct() requires
    if ( wireEdges.front().Orientation() != TopAbs_INTERNAL ) // Issue 0020676
    {
      while ( !SMESH_Algo::VertexNode( TopExp::FirstVertex( wireEdges.front(), true),
                                       theMesh.GetMeshDS()))
      {
        wireEdges.splice(wireEdges.end(), wireEdges,
                         wireEdges.begin(), ++wireEdges.begin());
        if ( from->IsSame( wireEdges.front() )) {
          theError = TError
            ( new SMESH_ComputeError(COMPERR_BAD_INPUT_MESH,"No nodes on vertices"));
          return TSideVector(0);
        }
      }
    }
    else if ( *nbE > 1 ) // Issue 0020676 (Face_pb_netgen.brep) - several internal edges in a wire
    {
      internalEdges.splice( internalEdges.end(), wireEdges, ++wireEdges.begin(), wireEdges.end());
    }

    StdMeshers_FaceSide* wire = new StdMeshers_FaceSide( theFace, wireEdges, &theMesh,
                                                         /*isForward=*/true, theIgnoreMediumNodes);
    wires[ iW ] = StdMeshers_FaceSidePtr( wire );
    from = to;
  }
  while ( !internalEdges.empty() )
  {
    StdMeshers_FaceSide* wire = new StdMeshers_FaceSide( theFace, internalEdges.back(), &theMesh,
                                                         /*isForward=*/true, theIgnoreMediumNodes);
    wires.push_back( StdMeshers_FaceSidePtr( wire ));
    internalEdges.pop_back();
  }
  return wires;
}

//================================================================================
/*!
 * \brief Return 1st vertex of the i-the edge
 */
//================================================================================

TopoDS_Vertex StdMeshers_FaceSide::FirstVertex(int i) const
{
  TopoDS_Vertex v;
  if ( i < NbEdges() )
  {
    v = myEdge[i].Orientation() <= TopAbs_REVERSED ? // FORWARD || REVERSED
        TopExp::FirstVertex( myEdge[i], 1 )        :
        TopoDS::Vertex( TopoDS_Iterator( myEdge[i] ).Value() );
  }
  return v;
}

//================================================================================
/*!
 * \brief Return last vertex of the i-the edge
 */
//================================================================================

TopoDS_Vertex StdMeshers_FaceSide::LastVertex(int i) const
{
  TopoDS_Vertex v;
  if ( i < NbEdges() )
  {
    const TopoDS_Edge& edge = i<0 ? myEdge[ NbEdges() + i ] : myEdge[i];
    if ( edge.Orientation() <= TopAbs_REVERSED ) // FORWARD || REVERSED
      v = TopExp::LastVertex( edge, 1 );
    else
      for ( TopoDS_Iterator vIt( edge ); vIt.More(); vIt.Next() )
        v = TopoDS::Vertex( vIt.Value() );
  }
  return v;
}


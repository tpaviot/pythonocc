#include "TetgenPlugin_Tetgen_3D.hxx"
#include "TetgenPlugin_TetgenInterface.hxx"

#include "SMDS_MeshElement.hxx"
#include "SMDS_MeshNode.hxx"
#include "SMESHDS_Mesh.hxx"
#include "SMESH_Comment.hxx"
#include "SMESH_ControlsDef.hxx"
#include "SMESH_Gen.hxx"
#include "SMESH_Mesh.hxx"
#include "SMESH_MesherHelper.hxx"
#include "SMESH_MeshEditor.hxx"
#include "StdMeshers_QuadToTriaAdaptor.hxx"

#include <BRepClass3d_Intersector3d.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <BRepAdaptor_Curve2d.hxx>
#include <BRepClass_FacePassiveClassifier.hxx>
#include <BRep_Tool.hxx>
#include <gp_Lin.hxx>
#include <BRepClass_Edge.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakeSolid.hxx>
#include <GProp_GProps.hxx>
#include <BRepAdaptor_Surface.hxx>
#include <BRepExtrema_ExtPF.hxx>
#include <BRepGProp.hxx>
#include <BRepGProp_Face.hxx>
#include <BRepTools.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx> 
#include <TopTools_ListOfShape.hxx> 
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopoDS.hxx>
#include <TopOpeBRepTool_ShapeClassifier.hxx>
#include <ShapeFix_Shape.hxx>
#include <Precision.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx>

#include "utilities.h"

#include <list>
#include <vector>
#include <map>

using namespace std;

//=============================================================================
/*!
 *  
 */
//=============================================================================


TetgenPlugin_Tetgen_3D::TetgenPlugin_Tetgen_3D(int hypId, int studyId,
					       SMESH_Gen* gen)
  : SMESH_3D_Algo(hypId, studyId, gen)
{
  TetFilename="";
  MESSAGE("TetgenPlugin_Tetgen_3D::TetgenPlugin_Tetgen_3D");
  _name = "Tetgen_3D";
  _shapeType =  (1 << TopAbs_SOLID);// only for solids
  _compatibleHypothesis.push_back("MaxElementVolume");
  _compatibleHypothesis.push_back("Tetgen_Parameters");

  _maxVolume=0; 
  _quality=0; 

  _hypMaxElementVolume = NULL;
  _hypTetgenParameters = NULL;

  _requireShape = false; // can work without shape
  //_requireDescretBoundary = true;
  //_onlyUnaryInput = false;
  _supportSubmeshes = false;
}

TetgenPlugin_Tetgen_3D::~TetgenPlugin_Tetgen_3D()
{
  MESSAGE("TetgenPlugin_Tetgen_3D::~TetgenPlugin_Tetgen_3D");  
}


bool TetgenPlugin_Tetgen_3D::CheckHypothesis
                         (SMESH_Mesh& aMesh,
                          const TopoDS_Shape& aShape,
                          SMESH_Hypothesis::Hypothesis_Status& aStatus)
{
  _hypMaxElementVolume = NULL;

  list<const SMESHDS_Hypothesis*>::const_iterator itl;
  const SMESHDS_Hypothesis* theHyp;

  const list<const SMESHDS_Hypothesis*>& hyps = GetUsedHypothesis(aMesh, aShape);
  int nbHyp = hyps.size();
  if (!nbHyp)
  {
    aStatus = SMESH_Hypothesis::HYP_OK;
    //aStatus = SMESH_Hypothesis::HYP_MISSING;
    return true;  // can work with no hypothesis
  }

  itl = hyps.begin();
  theHyp = (*itl); // use only the first hypothesis

  string hypName = theHyp->GetName();

  bool isOk = false;

  if (hypName == "MaxElementVolume")
  {
    _hypMaxElementVolume = static_cast<const StdMeshers_MaxElementVolume*> (theHyp);
    ASSERT(_hypMaxElementVolume);
    _maxVolume = _hypMaxElementVolume->GetMaxVolume();
    _quality = 1.3; 
    isOk =true;
    aStatus = SMESH_Hypothesis::HYP_OK;
  }
  else if (hypName == "Tetgen_Parameters")
  {
    _hypTetgenParameters = static_cast<const TetgenPlugin_Hypothesis*> (theHyp);
    ASSERT(_hypTetgenParameters);
    _quality = _hypTetgenParameters->GetQuality();
    _maxVolume = _hypTetgenParameters->GetMaxVolume();
    isOk =true;
    aStatus = SMESH_Hypothesis::HYP_OK;
  } 
  else
    aStatus = SMESH_Hypothesis::HYP_INCOMPATIBLE;

  return isOk;
}


// from TopOpeBRepTool_ShapeClassifier.cxx (privat method)
Standard_Boolean TetgenPlugin_Tetgen_3D::FindAPointInTheFace(const TopoDS_Face& _face, gp_Pnt& APoint, Standard_Real& u, Standard_Real& v) 
{ 
  TopoDS_Face face=_face;
  face.Orientation(TopAbs_FORWARD);
  TopExp_Explorer     faceexplorer;
  BRepAdaptor_Curve2d c;
  gp_Vec2d T;
  gp_Pnt2d P;
  Standard_Boolean Ok = Standard_False;
  Standard_Integer nbiter=0;
  Standard_Real myParamOnEdge = 0.5;
  do { 
    nbiter++;
    if(myParamOnEdge==0.5)  myParamOnEdge = 0.4;
    else if(myParamOnEdge==0.4)  myParamOnEdge = 0.6; 
    else if(myParamOnEdge==0.6)  myParamOnEdge = 0.3; 
    else if(myParamOnEdge==0.3)  myParamOnEdge = 0.7; 
    else if(myParamOnEdge==0.7)  myParamOnEdge = 0.2; 
    else if(myParamOnEdge==0.2)  myParamOnEdge = 0.8; 
    else if(myParamOnEdge==0.8)  myParamOnEdge = 0.1; 
    else if(myParamOnEdge==0.1)  myParamOnEdge = 0.9;
    else { myParamOnEdge*=0.5; } 
    
    for (faceexplorer.Init(face,TopAbs_EDGE); 
	 faceexplorer.More(); 
	 faceexplorer.Next()) {
      TopoDS_Edge Edge = TopoDS::Edge(faceexplorer.Current());
      c.Initialize(Edge,face);
      Standard_Integer nbinterval = c.NbIntervals(GeomAbs_C1); 
      c.D1((c.LastParameter() - c.FirstParameter()) * myParamOnEdge + c.FirstParameter(),P,T);
      
      Standard_Real x=T.X();
      Standard_Real y=T.Y();
      //-- cout<<"Param:"<<(c.IntervalFirst() + c.IntervalLast()) * param<<" U:"<<P.X()<<" V:"<<P.Y();
      //-- cout<<" tguv x:"<<x<<" , y:"<<y<<endl;
      
      if(Edge.Orientation() == TopAbs_FORWARD) { 
	T.SetCoord(-y,x);
      }
      else { 
	T.SetCoord(y,-x);
      }
      
      Standard_Real ParamInit = RealLast();
      Standard_Real TolInit   = 0.00001;
      Standard_Boolean APointExist = Standard_False;
      
      BRepClass_FacePassiveClassifier FClassifier;
      
      T.Normalize();
      P.SetCoord(P.X()+TolInit*T.X(),P.Y()+TolInit*T.Y());
      FClassifier.Reset(gp_Lin2d(P,T),ParamInit,RealEpsilon());   //-- Longueur et Tolerance #######
      
      TopExp_Explorer otherfaceexplorer;
      for (otherfaceexplorer.Init(face,TopAbs_EDGE); 
	   otherfaceexplorer.More(); 
	   otherfaceexplorer.Next()) {
	TopoDS_Edge OtherEdge = TopoDS::Edge(otherfaceexplorer.Current());
	if((OtherEdge.Orientation() == TopAbs_EXTERNAL)) { 
	}
	else { 
	  BRepClass_Edge AEdge(OtherEdge,face);
	  FClassifier.Compare(AEdge,OtherEdge.Orientation());
	  if(FClassifier.ClosestIntersection()) { 
	    //-- cout<<" ---> Edge : "<<FClassifier.Parameter()<<endl;
	    if(ParamInit > FClassifier.Parameter()) { 
	      ParamInit = FClassifier.Parameter();
	      APointExist = Standard_True;
	    }
	  }
	}
      }
      if(APointExist) { 
	ParamInit*=0.5;
	u = P.X() + ParamInit* T.X();
	v = P.Y() + ParamInit* T.Y();
	BRepAdaptor_Surface  s;
	Standard_Boolean computerestriction = Standard_False;
	s.Initialize(face,computerestriction);
	s.D0(u,v,APoint);
	//-- cout<<" u="<<u<<" v="<<v<<"  -> ("<<APoint.X()<<","<<APoint.Y()<<","<<APoint.Z()<<endl;
	return(Standard_True);
      }
    }
  }
  while(nbiter<100);
  return(Standard_False);
}

Standard_Boolean TetgenPlugin_Tetgen_3D::FindPointInSolid(const TopoDS_Solid& aSolid, gp_Pnt& PInside)
{
  Standard_Real ParamInit = RealLast();
  Standard_Real paramOnL; 
  Standard_Real TolInit= 0.00001; 
  Standard_Real SUmin, SUmax, SVmin, SVmax, u, v;
  std::vector<gp_Pnt> candpoints;
  std::vector<double> distances; 
  gp_Pnt P, pt;
  gp_Vec N; 

  for (TopExp_Explorer exp(aSolid,TopAbs_FACE);exp.More();exp.Next())
    {           
      TopoDS_Face aface = TopoDS::Face(exp.Current());
      Handle(Geom_Surface) surf = BRep_Tool::Surface(aface);      
      surf->Bounds(SUmin,SUmax,SVmin,SVmax);
      v=std::min(SVmin,SVmax) + fabs(SVmax-SVmin)/2.0;
      u=std::min(SUmin,SUmax) + fabs(SUmax-SUmin)/2.0;
      P=surf->Value(u,v); 
      if (!FindAPointInTheFace(aface, P, u, v))
	{
	  MESSAGE("Cannot locate a point on face boundary");      
	}
      else
	{
	  BRepGProp_Face bf(aface);
	  bf.Normal(u,v,pt,N); N.Normalize();	 
	  // start point of line slightly moved inward to prevent the intersector below from 
	  // indentifying the start point as intersection point in the case aface == anotherface
	  // (note that this case is required for a solid made of a single shell, e.g. a sphere)
	  gp_Lin L(gp_Pnt(P.X()-2*TolInit*N.X(), P.Y()-2*TolInit*N.Y(), P.Z()-2*TolInit*N.Z()), gp_Dir(-N.X(), -N.Y(), -N.Z()));	  
	  for (TopExp_Explorer exp2(aSolid,TopAbs_FACE);exp2.More();exp2.Next())
	    {
	      TopoDS_Face anotherface = TopoDS::Face(exp2.Current()); 
	      // if (anotherface.IsSame(aface))
	      BRepClass3d_Intersector3d Intersector; 
	      Intersector.Perform(L, ParamInit, TolInit, anotherface); 
	      if (Intersector.IsDone() && Intersector.HasAPoint())
		{
		  paramOnL= Intersector.WParameter();
		  PInside.SetX(P.X()-paramOnL/2.0*N.X());
		  PInside.SetY(P.Y()-paramOnL/2.0*N.Y());
		  PInside.SetZ(P.Z()-paramOnL/2.0*N.Z());
		  BRepClass3d_SolidClassifier SC(aSolid, PInside, 1.e-4);
		  if (SC.State()==TopAbs_IN)
		    {
		      candpoints.push_back(PInside);
		      distances.push_back(MinDistPointBoundary(aSolid, PInside));
		    }
		}
	    }
	}      
    }
  // go through all candidate points and choose the one that is the farest away from the boundary
  int maxdistidx=-1; double maxdist=-1.e99;
  for (int i=0; i<distances.size(); i++)
    {
      if (maxdist<distances[i])
	{
	  maxdistidx = i; maxdist = distances[i];
	}
    }
  if (maxdistidx==-1)
    return Standard_False;
  else
    {
      MESSAGE("MaxDistPointToBoundary= " << maxdist);
      PInside.SetX(candpoints[maxdistidx].X());
      PInside.SetY(candpoints[maxdistidx].Y());
      PInside.SetZ(candpoints[maxdistidx].Z());
      return Standard_True;
    }
}


double TetgenPlugin_Tetgen_3D::MinDistPointBoundary(const TopoDS_Shape& aShape, gp_Pnt& PInside)
{
  // find the smallest distance of the point PInside (which must lie inside of aShape)
  // to any of aShape faces
  double mindist=1.e99;
  TopoDS_Vertex V = BRepBuilderAPI_MakeVertex(PInside);
  for (TopExp_Explorer exp(TopoDS::Solid(aShape),TopAbs_FACE);exp.More();exp.Next())
    {           
      TopoDS_Face aFace = TopoDS::Face(exp.Current());
      BRepExtrema_ExtPF ExtPF(V, aFace);      
      if (ExtPF.IsDone())
	{
	  double minextrema = 1.e99;
	  for (int i=0; i<ExtPF.NbExt(); i++)
	    if (minextrema > ExtPF.SquareDistance(i+1)) 
	      minextrema = ExtPF.SquareDistance(i+1);
	  if (mindist > minextrema)
	    mindist = minextrema;
	}
    }
  //MESSAGE("MinDistPointBoundary= " << mindist);
  return mindist; 
}

bool TetgenPlugin_Tetgen_3D::FindHoleRegionmarkers(const TopoDS_Shape& aSolid, std::vector<gp_Pnt>& holepoints)
{
  TopTools_IndexedMapOfShape shellMap;
  TopExp::MapShapes(aSolid, TopAbs_SHELL, shellMap );
  int nshells = shellMap.Extent();
  if (nshells==1) // this solid does not have any holes
    return true; 
  TopoDS_Shell outerShell = BRepTools::OuterShell( TopoDS::Solid(aSolid) );
  for (unsigned int i=1; i<=nshells; i++)
    {
      const TopoDS_Shape& aShell = shellMap( i );
      // all shells not equal to the outer shell in aSolid are hole regions
      if (aShell.IsSame(outerShell)!=1)
	{
	  gp_Pnt holepoint; 
	  if (FindHoleRegionmarker(aShell, holepoint))
	    holepoints.push_back(holepoint);
	  else
	    {
	      error(SMESH_Comment("Error finding hole region marker for this solids shell number ") << i );
	      return false;
	    }
	}      
    }
  return true;
}

bool TetgenPlugin_Tetgen_3D::FindHoleRegionmarker(const TopoDS_Shape& aHoleShell, gp_Pnt& HolePoint)
{
  // build solid from hole shell correcting face orientations using ShapeFix_Shape
  BRepBuilderAPI_MakeSolid SB;
  SB.Add(TopoDS::Shell(aHoleShell));
  Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(SB.Solid());
  aSfs->SetPrecision(Precision::Confusion()); 
  aSfs->Perform();
  TopoDS_Solid aSolid = TopoDS::Solid(aSfs->Shape());
  // compute a point inside this hole solid
  if (FindPointInSolid(aSolid, HolePoint))
    return true;
  else
    return false; 
}

bool TetgenPlugin_Tetgen_3D::MeshSolid(SMESH_Mesh& aMesh,  const TopoDS_Shape& aShape)                                    
{
  TopTools_IndexedMapOfShape boundingfaces; 
  std::vector<gp_Pnt> holemarker;
  
  TopExp::MapShapes(aShape, TopAbs_FACE, boundingfaces);
  if (!FindHoleRegionmarkers(aShape, holemarker))
    return false;
  return MeshRegion(aMesh, aShape, boundingfaces, holemarker);                                    
}

bool TetgenPlugin_Tetgen_3D::Compute(SMESH_Mesh&         aMesh,
					const TopoDS_Shape& aShape)
{
  bool success = MeshSolid(aMesh, aShape);	       
  return success;
}

bool TetgenPlugin_Tetgen_3D::MeshRegion(SMESH_Mesh& aMesh,  const TopoDS_Shape& aShape, TopTools_IndexedMapOfShape& boundingfaces, std::vector<gp_Pnt>& holemarker)                                    
{
  // boundingfacs must include all faces, e.g. all faces of the outer shell of a solid as well as
  // all faces of all holes the solid contains
  MESSAGE("TetgenPlugin_Tetgen_3D::Compute with maxElmentsize = " << _maxVolume << " and quality constraint = " << _quality);

  SMESHDS_Mesh* meshDS = aMesh.GetMeshDS();

  const int invalid_ID = -1;

  SMESH::Controls::Area areaControl;
  SMESH::Controls::TSequenceOfXYZ nodesCoords;

  // -------------------------------------------------------------------
  // get triangles on aShell and make a map of nodes to Tetgen node IDs
  // -------------------------------------------------------------------

  SMESH_MesherHelper helper(aMesh);
  SMESH_MesherHelper* myTool = &helper;
  bool _quadraticMesh = myTool->IsQuadraticSubMesh(aShape);

  typedef map< const SMDS_MeshNode*, int, TIDCompare > TNodeToIDMap;
  TNodeToIDMap nodeToTetgenID;
  list< const SMDS_MeshElement* > triangles;
  list< bool >                    isReversed; // orientation of triangles

  TopAbs_ShapeEnum mainType = aMesh.GetShapeToMesh().ShapeType();
  bool checkReverse = ( mainType == TopAbs_COMPOUND || mainType == TopAbs_COMPSOLID );

  // for the degeneraged edge: ignore all but one node on it;
  // map storing ids of degen edges and vertices and their netgen id:
  map< int, int* > degenShapeIdToPtrNgId;
  map< int, int* >::iterator shId_ngId;
  list< int > degenNgIds;

  //StdMeshers_QuadToTriaAdaptor Adaptor;
  //Adaptor.Compute(aMesh,aShape);

  for (unsigned int sidx=1; sidx<=boundingfaces.Extent(); sidx++)
  {
    const TopoDS_Shape& aShapeFace = boundingfaces( sidx );
    const SMESHDS_SubMesh * aSubMeshDSFace = meshDS->MeshElements( aShapeFace );
    if ( aSubMeshDSFace )
    {
      bool isRev = false;
      if ( checkReverse && helper.NbAncestors(aShapeFace, aMesh, aShape.ShapeType()) > 1 )
        // IsReversedSubMesh() can work wrong on strongly curved faces,
        // so we use it as less as possible
        isRev = SMESH_Algo::IsReversedSubMesh( TopoDS::Face(aShapeFace), meshDS );

      SMDS_ElemIteratorPtr iteratorElem = aSubMeshDSFace->GetElements();
      while ( iteratorElem->more() ) // loop on elements on a face
      {
        // check element
        const SMDS_MeshElement* elem = iteratorElem->next();
        if ( !elem )
          return error( COMPERR_BAD_INPUT_MESH, "Null element encounters");
        bool isTraingle = ( elem->NbNodes()==3 || (_quadraticMesh && elem->NbNodes()==6 ));
        if ( !isTraingle ) {
          return error( COMPERR_BAD_INPUT_MESH, SMESH_Comment("Not triangle element ")<<elem->GetID());              
          // using adaptor
          // const list<const SMDS_FaceOfNodes*>* faces = Adaptor.GetTriangles(elem);
          //if(faces==0) {
          //  return error( COMPERR_BAD_INPUT_MESH,
          //                SMESH_Comment("Not triangles in adaptor for element ")<<elem->GetID());
          //}
          //list<const SMDS_FaceOfNodes*>::const_iterator itf = faces->begin();
          //for(; itf!=faces->end(); itf++ ) {
          //  triangles.push_back( (*itf) );
          //  isReversed.push_back( isRev );
          //  // put triange's nodes to nodeToTetgenID map
          //  SMDS_ElemIteratorPtr triangleNodesIt = (*itf)->nodesIterator();
          //  while ( triangleNodesIt->more() ) {
          //    const SMDS_MeshNode * node =
          //      static_cast<const SMDS_MeshNode *>(triangleNodesIt->next());
          //    if(myTool->IsMedium(node))
          //      continue;
          //    nodeToTetgenID.insert( make_pair( node, invalid_ID ));
          //  }
          //}
        }
        else {
          // keep a triangle
          triangles.push_back( elem );
          isReversed.push_back( isRev );
          // put elem nodes to nodeToTetgenID map
          SMDS_ElemIteratorPtr triangleNodesIt = elem->nodesIterator();
          while ( triangleNodesIt->more() ) {
            const SMDS_MeshNode * node =
              static_cast<const SMDS_MeshNode *>(triangleNodesIt->next());
            if(myTool->IsMedium(node))
              continue;
            nodeToTetgenID.insert( make_pair( node, invalid_ID ));
          }
        }
#ifdef _DEBUG_
        // check if a triange is degenerated
        areaControl.GetPoints( elem, nodesCoords );
        double area = areaControl.GetValue( nodesCoords );
        if ( area <= DBL_MIN ) {
          MESSAGE( "Warning: Degenerated " << elem );
        }
#endif
      }
      // look for degeneraged edges and vetices
      for (TopExp_Explorer expE(aShapeFace,TopAbs_EDGE);expE.More();expE.Next())
      {
        TopoDS_Edge aShapeEdge = TopoDS::Edge( expE.Current() );
        if ( BRep_Tool::Degenerated( aShapeEdge ))
        {
          degenNgIds.push_back( invalid_ID );
          int* ptrIdOnEdge = & degenNgIds.back();
          // remember edge id
          int edgeID = meshDS->ShapeToIndex( aShapeEdge );
          degenShapeIdToPtrNgId.insert( make_pair( edgeID, ptrIdOnEdge ));
          // remember vertex id
          int vertexID = meshDS->ShapeToIndex( TopExp::FirstVertex( aShapeEdge ));
          degenShapeIdToPtrNgId.insert( make_pair( vertexID, ptrIdOnEdge ));
        }
      }
    }
  }
  
  // ---------------------------------
  // Feed the Tetgen with surface mesh
  // ---------------------------------

  int Tetgen_NbOfNodes = 0;
  int Tetgen_param2ndOrder = 0;

  int Tetgen_triangle[3];
  int Tetgen_tetrahedron[4];
  int status=0; 

  TetgenPlugin_TetgenInterface TetInt;
  

  // set nodes and remember their tetgen IDs
  bool isDegen = false, hasDegen = !degenShapeIdToPtrNgId.empty();
  TNodeToIDMap::iterator n_id = nodeToTetgenID.begin();
  for ( ; n_id != nodeToTetgenID.end(); ++n_id )
  {
    const SMDS_MeshNode* node = n_id->first;

    // ignore nodes on degenerated edge
    if ( hasDegen ) {
      int shapeId = node->getshapeId();
      shId_ngId = degenShapeIdToPtrNgId.find( shapeId );
      isDegen = ( shId_ngId != degenShapeIdToPtrNgId.end() );
      if ( isDegen && *(shId_ngId->second) != invalid_ID ) {
        n_id->second = *(shId_ngId->second);
        continue;
      }
    }
    TetInt.addPoint(node->X(), node->Y(), node->Z());
    n_id->second = ++Tetgen_NbOfNodes; // set tetgen ID

    if ( isDegen ) // all nodes on a degen edge get one tetgen ID
      *(shId_ngId->second) = n_id->second;
  }

  // set triangles
  list< const SMDS_MeshElement* >::iterator tria = triangles.begin();
  list< bool >::iterator                 reverse = isReversed.begin();
  for ( ; tria != triangles.end(); ++tria, ++reverse )
  {
    int i = 0;
    SMDS_ElemIteratorPtr triangleNodesIt = (*tria)->nodesIterator();
    while ( triangleNodesIt->more() ) {
      const SMDS_MeshNode * node =
        static_cast<const SMDS_MeshNode *>(triangleNodesIt->next());
      if(myTool->IsMedium(node))
        continue;
      if (nodeToTetgenID.find(node)==nodeToTetgenID.end())
	return error("Error processing tetgen volume mesh.");  
      int idx = (*reverse ? 2 - i : i);
      if ((i<0) || (i>2))
	return error("Error processing tetgen volume mesh.");  
      Tetgen_triangle[ *reverse ? 2 - i : i ] = nodeToTetgenID[ node ];
      ++i;
    }
    if ( !hasDegen ||
         // ignore degenerated triangles, they have 2 or 3 same ids
         ((Tetgen_triangle[0] != Tetgen_triangle[1]) &&
          (Tetgen_triangle[0] != Tetgen_triangle[2]) &&
          (Tetgen_triangle[2] != Tetgen_triangle[1]) ))
    {
      TetInt.addSurfaceTriangle(Tetgen_triangle[0]-1, Tetgen_triangle[1]-1, Tetgen_triangle[2]-1);       
    }
  }

  for (unsigned int i=0; i<holemarker.size(); i++)
    {
      MESSAGE("Adding hole marker X=" << holemarker[i].X() 
	      << ", Y=" << holemarker[i].Y() << ", Z=" << holemarker[i].Z());
      TetInt.addHole(holemarker[i].X(), holemarker[i].Y(), holemarker[i].Z());
    }

  // -------------------------
  // Generate the volume mesh
  // -------------------------

  TetInt.setVolConstraint(_maxVolume);
  TetInt.setQualConstraint(_quality);
  TetInt.setKeepIntermediateFiles(this->keepintermediatefiles);
  status = TetInt.GenerateVolumeMesh(TetFilename);
  if (status!=0)
    {
      if (status==-1) error("Exception in TetInt.GenerateVolumeMesh(): Nodes on boundary inserted!");   
      else if (status==-2) error("Exception in TetInt.GenerateVolumeMesh(): Tetgen volume meshing didnt succeed.");   
      else error("Exception in TetInt.GenerateVolumeMesh()");  
      return false;
    }

  // debug 
  list< const SMDS_MeshElement* >::iterator tria2 = triangles.begin();
  for ( ; tria2 != triangles.end(); ++tria2)
    SMDS_ElemIteratorPtr triangleNodesIt = (*tria2)->nodesIterator();
 
  int Tetgen_NbOfNodesNew = TetInt.Nb_Nodes();
  int Tetgen_NbOfTetra = TetInt.Nb_Tetra();

  MESSAGE("End of Volume Mesh Generation. status=" << status <<
          ", nb new nodes: " << Tetgen_NbOfNodesNew - Tetgen_NbOfNodes <<
          ", nb tetra: " << Tetgen_NbOfTetra);

  // -------------------------------------------------------------------
  // Feed back the SMESHDS with the generated Nodes and Volume Elements
  // -------------------------------------------------------------------

  bool isOK = (Tetgen_NbOfTetra > 0 );// get whatever built
  if ( isOK )
  {
    // vector of nodes in which node index == tetgen ID
    vector< const SMDS_MeshNode* > nodeVec ( Tetgen_NbOfNodesNew + 1 );
    // insert old nodes into nodeVec
    for ( n_id = nodeToTetgenID.begin(); n_id != nodeToTetgenID.end(); ++n_id ) {
      nodeVec.at( n_id->second ) = n_id->first;
    }
    // build map of tetgen node ID to tetgen elem ID
    std::map<int, int> TetgenNodeID2TetgenElemID;
    for ( int elemIndex = 0; elemIndex < Tetgen_NbOfTetra; ++elemIndex )
    {
      TTetra tet=TetInt.getTetra(elemIndex);
      TetgenNodeID2TetgenElemID.insert(std::make_pair(tet.n1, elemIndex)); 
      TetgenNodeID2TetgenElemID.insert(std::make_pair(tet.n2, elemIndex)); 
      TetgenNodeID2TetgenElemID.insert(std::make_pair(tet.n3, elemIndex)); 
      TetgenNodeID2TetgenElemID.insert(std::make_pair(tet.n4, elemIndex)); 
    }
    // create and insert new nodes into nodeVec
    int nodeIndex = Tetgen_NbOfNodes + 1;
    int shapeID = meshDS->ShapeToIndex( aShape );
    for ( ; nodeIndex <= Tetgen_NbOfNodesNew; ++nodeIndex )
    {
      TPoint P=TetInt.getNode(nodeIndex-1); // index starts with 0 
      SMDS_MeshNode * node = meshDS->AddNode(P.x, P.y, P.z); 
      // std::cout << "Setting Node with ID " << nodeIndex << ": " << P.x << ", " << P.y << ", " << P.z << std::endl; 
      if (TetgenNodeID2TetgenElemID.find(nodeIndex-1)==TetgenNodeID2TetgenElemID.end())
	return error("Error processing tetgen volume mesh.");  
      int elemIndex=TetgenNodeID2TetgenElemID[nodeIndex-1];
      TTetra tet=TetInt.getTetra(elemIndex);
      // int regmarker = tet.attributes[0];
      meshDS->SetNodeInVolume(node, shapeID);
      nodeVec.at(nodeIndex) = node;
    }
    // create tetrahedrons
    for ( int elemIndex = 0; elemIndex < Tetgen_NbOfTetra; ++elemIndex )
    {
      TTetra tet=TetInt.getTetra(elemIndex);
      SMDS_MeshVolume * elt = myTool->AddVolume (nodeVec.at( tet.n1 +1),
                                                 nodeVec.at( tet.n2 +1),
                                                 nodeVec.at( tet.n3 +1),
                                                 nodeVec.at( tet.n4 +1));
      // std::cout << "Setting Tetra with ID " << elemIndex << ": " << tet.n1 << ", " << tet.n2 << ", " << tet.n3 << ", " << tet.n4 << std::endl; 
      meshDS->SetMeshElementOnShape(elt, shapeID);
    }
    // mark the shape as successfully meshed even if no elemet has been placed
    // on it (which may happen for domain boundary shells completely filled with solids)
    SMESH_subMesh * sm = aMesh.GetSubMesh( aShape );
    if (sm!=NULL)
      sm->SetIsAlwaysComputed(true); 
  }
  return true;
}


bool TetgenPlugin_Tetgen_3D::Evaluate(SMESH_Mesh& aMesh,
				      const TopoDS_Shape& aShape,
				      MapShapeNbElems& aResMap)
{
  int nbtri = 0, nbqua = 0;
  double fullArea = 0.0;
  for (TopExp_Explorer exp(aShape, TopAbs_FACE); exp.More(); exp.Next()) {
    TopoDS_Face F = TopoDS::Face( exp.Current() );
    SMESH_subMesh *sm = aMesh.GetSubMesh(F);
    MapShapeNbElemsItr anIt = aResMap.find(sm);
    if( anIt==aResMap.end() ) {
      SMESH_ComputeErrorPtr& smError = sm->GetComputeError();
      smError.reset( new SMESH_ComputeError(COMPERR_ALGO_FAILED,"Submesh can not be evaluated",this));
      return false;
    }
    std::vector<int> aVec = (*anIt).second;
    nbtri += Max(aVec[SMDSEntity_Triangle],aVec[SMDSEntity_Quad_Triangle]);
    nbqua += Max(aVec[SMDSEntity_Quadrangle],aVec[SMDSEntity_Quad_Quadrangle]); 
    GProp_GProps G;
    BRepGProp::SurfaceProperties(F,G);
    double anArea = G.Mass();
    fullArea += anArea;
  }

  // collect info from edges
  int nb0d_e = 0, nb1d_e = 0;
  bool IsQuadratic = false;
  bool IsFirst = true;
  TopTools_MapOfShape tmpMap;
  for (TopExp_Explorer exp(aShape, TopAbs_EDGE); exp.More(); exp.Next()) {
    TopoDS_Edge E = TopoDS::Edge(exp.Current());
    if( tmpMap.Contains(E) )
      continue;
    tmpMap.Add(E);
    SMESH_subMesh *aSubMesh = aMesh.GetSubMesh(exp.Current());
    MapShapeNbElemsItr anIt = aResMap.find(aSubMesh);
    if( anIt==aResMap.end() ) {
      SMESH_ComputeErrorPtr& smError = aSubMesh->GetComputeError();
      smError.reset( new SMESH_ComputeError(COMPERR_ALGO_FAILED,
					    "Submesh can not be evaluated",this));
      return false;
    }
    std::vector<int> aVec = (*anIt).second;
    nb0d_e += aVec[SMDSEntity_Node];
    nb1d_e += Max(aVec[SMDSEntity_Edge],aVec[SMDSEntity_Quad_Edge]);
    if(IsFirst) {
      IsQuadratic = (aVec[SMDSEntity_Quad_Edge] > aVec[SMDSEntity_Edge]);
      IsFirst = false;
    }
  }
  tmpMap.Clear();

  double ELen_face = sqrt(2.* ( fullArea/(nbtri+nbqua*2) ) / sqrt(3.0) );
  double ELen_vol = pow( 72, 1/6. ) * pow( _maxVolume, 1/3. );
  double ELen = Min(ELen_vol,ELen_face*2);

  GProp_GProps G;
  BRepGProp::VolumeProperties(aShape,G);
  double aVolume = G.Mass();
  double tetrVol = 0.1179*ELen*ELen*ELen;
  double CoeffQuality = 0.9;
  int nbVols = (int)aVolume/tetrVol/CoeffQuality;
  int nb1d_f = (nbtri*3 + nbqua*4 - nb1d_e) / 2;
  int nb1d_in = (int) ( nbVols*6 - nb1d_e - nb1d_f ) / 5;
  std::vector<int> aVec(SMDSEntity_Last);
  for(int i=SMDSEntity_Node; i<SMDSEntity_Last; i++) aVec[i]=0;
  if( IsQuadratic ) {
    aVec[SMDSEntity_Node] = nb1d_in/6 + 1 + nb1d_in;
    aVec[SMDSEntity_Quad_Tetra] = nbVols - nbqua*2;
    aVec[SMDSEntity_Quad_Pyramid] = nbqua;
  }
  else {
    aVec[SMDSEntity_Node] = nb1d_in/6 + 1;
    aVec[SMDSEntity_Tetra] = nbVols - nbqua*2;
    aVec[SMDSEntity_Pyramid] = nbqua;
  }
  SMESH_subMesh *sm = aMesh.GetSubMesh(aShape);
  aResMap.insert(std::make_pair(sm,aVec));
  
  return true;
}


#ifndef _TetgenPlugin_Tetgen_3D_HXX_
#define _TetgenPlugin_Tetgen_3D_HXX_

#include <gp_Pnt.hxx>
#include "SMESH_3D_Algo.hxx"
#include "SMESH_Mesh.hxx"
#include "StdMeshers_MaxElementVolume.hxx"
#include "TetgenPlugin_Hypothesis.hxx"
#include "SMESH_Exception.hxx"
#include "TetgenPlugin_TetgenInterface.hxx"
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopoDS.hxx>

#include <map>

class  TetgenPlugin_Tetgen_3D: public SMESH_3D_Algo
{
public:
  TetgenPlugin_Tetgen_3D(int hypId, int studyId, SMESH_Gen* gen);
  virtual ~TetgenPlugin_Tetgen_3D();

  virtual bool CheckHypothesis(SMESH_Mesh& aMesh,
                               const TopoDS_Shape& aShape,
                               SMESH_Hypothesis::Hypothesis_Status& aStatus);

  virtual void setKeepIntermediateFiles(bool value) {this->keepintermediatefiles=value;} // debug
  
  virtual bool Compute(SMESH_Mesh& aMesh,
		       const TopoDS_Shape& aShape);

  virtual bool Evaluate(SMESH_Mesh& aMesh,
  			const TopoDS_Shape& aShape,
 			MapShapeNbElems& aResMap);

protected:
  double _maxVolume;
  double _quality;
  std::string TetFilename;
  bool keepintermediatefiles; 

  bool MeshSolid(SMESH_Mesh& aMesh,  const TopoDS_Shape& aShape);
  bool MeshRegion(SMESH_Mesh& aMesh, const TopoDS_Shape& aShape, TopTools_IndexedMapOfShape& boundingfaces, std::vector<gp_Pnt>& holemarker);

  Standard_Boolean FindAPointInTheFace(const TopoDS_Face& _face, gp_Pnt& APoint, Standard_Real& u, Standard_Real& v); 
  Standard_Boolean FindPointInSolid(const TopoDS_Solid& aSolid, gp_Pnt& PInside); 
  double MinDistPointBoundary(const TopoDS_Shape& aShape, gp_Pnt& PInside);

  bool FindHoleRegionmarker(const TopoDS_Shape& aHoleShell, gp_Pnt& HolePoint);
  bool FindHoleRegionmarkers(const TopoDS_Shape& aSolid, std::vector<gp_Pnt>& holepoints);
  

  const StdMeshers_MaxElementVolume* _hypMaxElementVolume;
  const TetgenPlugin_Hypothesis* _hypTetgenParameters;
};

#endif

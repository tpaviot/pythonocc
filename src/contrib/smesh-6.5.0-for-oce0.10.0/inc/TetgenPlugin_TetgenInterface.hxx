

#ifndef _TetgenPlugin_TetgenInterface_HXX_
#define _TetgenPlugin_TetgenInterface_HXX_

#include <vector>
#include <map>
#include <string>
#include <string.h>

#include <locale.h>


#define TETLIBRARY
#ifdef SINGLE // make shure REAL gets def'ed as double in tetgen.h
#undef SINGLE
#endif
#include "tetgen.h" // tetgen include file 

struct TPoint
{
  TPoint() : x(0), y(0), z(0), marker(0) {;}
  TPoint(double x_, double y_, double z_, int marker_=0): x(x_), y(y_), z(z_), marker(marker_) {;}
  double x,y,z;
  int marker;
  std::vector<double> attributes;
};
  
struct TTriangle
{
  TTriangle(): n1(0), n2(0), n3(0), marker(0) {;} 
  TTriangle(int n1_, int n2_, int n3_, int marker_=0): n1(n1_), n2(n2_), n3(n3_), marker(marker_) {;} 
  int n1, n2, n3, marker; 
};
  
struct TRegion
{
  TRegion(): x(0), y(0), z(0), marker(0), VolConstraint(0) {;} 
  TRegion(double x_, double y_, double z_, int marker_, double volconstr): x(x_), y(y_), z(z_), marker(marker_), VolConstraint(volconstr) {;} 
  double x,y,z;
  int marker;
  double VolConstraint; // volume constraint     
};

struct TTetra
{
  int n1, n2, n3, n4; 
  std::vector<double> attributes;
};

struct TFace
{
  int n1, n2, n3; 
  int marker; 
};

struct TTetgenOpts
{
  TTetgenOpts(): tolerance(0), quality(0), volconstraint(0), SurfNodesMarker(123) {;}
  double tolerance, quality, volconstraint; 
  int SurfNodesMarker;
};
 
class TetgenPlugin_TetgenInterface
{
public:

  TetgenPlugin_TetgenInterface() {setlocale(LC_NUMERIC, "C"); keepintermediatefiles=false; surfacetrianglemarker=77;}
  ~TetgenPlugin_TetgenInterface() {;}

  // input geoemtry definition 
  // all points of the surface mesh will be marked with ID "SurfNodesMarker"
  // so after meshing we will be able to seperate them from the newly created volume nodes 
  void addPoint(double x, double y, double z) {points.push_back(TPoint(x,y,z, TetOpts.SurfNodesMarker));}
  void addSurfaceTriangle(int n1, int n2, int n3, int marker=0) {surftriangles.push_back(TTriangle(n1,n2,n3, marker));}
  void addHole(double x, double y, double z) {holes.push_back(TPoint(x,y,z));}
  void addRegion(double x, double y, double z, int attribute=0, double volumeConstraint=0) {regions.push_back(TRegion(x,y,z,attribute,volumeConstraint));}

  // mesh generation
  int GenerateVolumeMesh(std::string tetfilename);

  // access to generated tetrahedral mesh 
  int Nb_Nodes() {return nodes.size();}
  int Nb_Tetra() {return tetra.size();}
  TPoint getNode(int ID) {return nodes[sortedNodeIndices[ID]];}
  TTetra getTetra(int index) 
  {
    TTetra tet=tetra[index];
    tet.n1=Tet2sortedNodeIndice[tet.n1];
    tet.n2=Tet2sortedNodeIndice[tet.n2];
    tet.n3=Tet2sortedNodeIndice[tet.n3];
    tet.n4=Tet2sortedNodeIndice[tet.n4];
    return tet;
  }
  std::vector<TFace>& getFaces() {return faces;}
  std::vector<TTetra>& getTetrahedra() {return tetra;}
  
  // options
  void setQualConstraint(double quality) {TetOpts.quality=quality;} // global quality constraint 
  void setVolConstraint(double maxvol) {TetOpts.volconstraint=maxvol;} // global maximum volume constraint 
  void setTolerance(double tol) {TetOpts.tolerance=tol;} // tolerance for coplanar test (default 1e-8)
  void setKeepIntermediateFiles(bool value) {this->keepintermediatefiles=value;}
  
protected:
  void RemoveTmpFiles(std::string tetgenfilename);
  bool FileExists(std::string filename);
  std::string NextTetFilename();
  char * Tempfilename();
  int surfacetrianglemarker; 
  void FillTetgenInData(tetgenio& TetIn);
  int FillTetgenResultData(tetgenio& TetOut);
  void SetTetgenOptions(std::string &switches); 
  void savePLC(tetgenio& TetIn, char* filename);
  void saveMesh(tetgenio& out, char* filename); 

  TTetgenOpts TetOpts; 
  
  // input file description
  std::vector<TPoint> points;
  std::vector<TTriangle> surftriangles;
  std::vector<TRegion> regions;
  std::vector<TPoint> holes;

  // resulting mesh 
  std::vector<TPoint> nodes; 
  std::vector<TFace> faces; 
  std::vector<TTetra> tetra; 
  std::vector<int> sortedNodeIndices;
  std::map<int, int> Tet2sortedNodeIndice;
  int NbSurfaceNodes; 
  bool keepintermediatefiles;
};

#endif

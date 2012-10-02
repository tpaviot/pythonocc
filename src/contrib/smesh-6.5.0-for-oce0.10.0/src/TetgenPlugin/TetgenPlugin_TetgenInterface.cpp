#include "TetgenPlugin_TetgenInterface.hxx"

#include <list>
#include <vector>
#include <map>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>

#include <cstdlib> // macro WEXITSTATUS
#include <stdio.h> 

using namespace std;


int TetgenPlugin_TetgenInterface::FillTetgenResultData(tetgenio& TetOut)
{
  int nfaces = TetOut.numberoftrifaces;
  int ntetra = TetOut.numberoftetrahedra;
  int nnodes = TetOut.numberofpoints;
  int result=0; 
  tetra.resize(ntetra);
  nodes.resize(nnodes);
  faces.resize(nfaces);

  int NbBoundaryFaces = 0; 

  for (int i=0; i<nfaces; i++)
    {
      faces[i].n1 =  TetOut.trifacelist[i * 3 + 0];
      faces[i].n2 =  TetOut.trifacelist[i * 3 + 1];
      faces[i].n3 =  TetOut.trifacelist[i * 3 + 2];
      if (TetOut.trifacemarkerlist != NULL) 
	{
	  faces[i].marker =  TetOut.trifacemarkerlist[i];
	  if (faces[i].marker == surfacetrianglemarker)
	    NbBoundaryFaces++;
	}
      else
	faces[i].marker = 0;
    }

  assert(TetOut.numberofcorners==4); // 2nd order tetra not supported here 
  for (int i=0; i<ntetra; i++)
    {
      tetra[i].n1 =  TetOut.tetrahedronlist[i * 4 + 0];
      tetra[i].n2 =  TetOut.tetrahedronlist[i * 4 + 1];
      tetra[i].n3 =  TetOut.tetrahedronlist[i * 4 + 2];
      tetra[i].n4 =  TetOut.tetrahedronlist[i * 4 + 3];
      //std::cout << "TetOut.numberoftetrahedronattributes " << TetOut.numberoftetrahedronattributes << std::endl; 
      for (int j = 0; j < TetOut.numberoftetrahedronattributes; j++)
	tetra[i].attributes.push_back(TetOut.tetrahedronattributelist[i * TetOut.numberoftetrahedronattributes + j]);      
    }

  for (int i=0; i<nnodes; i++)
    {
      nodes[i].x =  TetOut.pointlist[i * 3 + 0];
      nodes[i].y =  TetOut.pointlist[i * 3 + 1];
      nodes[i].z =  TetOut.pointlist[i * 3 + 2];
      if (TetOut.pointmarkerlist != NULL) 	
	nodes[i].marker =  TetOut.pointmarkerlist[i];
      else
	nodes[i].marker = 0; 
      for (int j = 0; j < TetOut.numberofpointattributes; j++) 
	nodes[i].attributes.push_back(TetOut.pointattributelist[i * TetOut.numberofpointattributes + j]);
    }
  
  // we need to sort the nodes such that we can seperate the nodes from the input surface mesh
  // from the newly created volume nodes
  // It seems like (by experience) that the first nodes are always the input nodes followed by the additional
  // nodes, but this behaviour is not documented therefore can not be assumed to be guaranteed. 
  Tet2sortedNodeIndice.clear(); sortedNodeIndices.clear();

  // first find all original boundary nodes 
  for (int i=0; i<nnodes; i++)
    if (nodes[i].marker==TetOpts.SurfNodesMarker) 
      {
	sortedNodeIndices.push_back(i);
	Tet2sortedNodeIndice.insert(std::make_pair(i, sortedNodeIndices.size()-1));
      }
  std::cerr << "Number of input nodes: " << NbSurfaceNodes << " Number of output surface nodes: " << sortedNodeIndices.size() << std::endl; 
  std::cerr << "Number of input face: " << surftriangles.size() << " Number of output face: " << NbBoundaryFaces << std::endl; 
  if (NbBoundaryFaces!=surftriangles.size())
    result=-1; // error: nodes have been inserted on the boundary by tetgen!
  // now all volume nodes
  for (int i=0; i<nnodes; i++)
    if (nodes[i].marker!=TetOpts.SurfNodesMarker) 
      {
	sortedNodeIndices.push_back(i);
	Tet2sortedNodeIndice.insert(std::make_pair(i, sortedNodeIndices.size()-1));
      }	
  std::cerr << "DONE " << result << std::endl; 
  return result; 
}

void TetgenPlugin_TetgenInterface::FillTetgenInData(tetgenio& TetIn)
{
  tetgenio::facet *f;
  tetgenio::polygon *p; 
  
  int ntri = surftriangles.size();
  int npoints = points.size();
  int nholes = holes.size(); 
  int nregions = regions.size(); 

  TetIn.firstnumber = 0; // all indices start from 0 
  TetIn.mesh_dim=3; 

  // set the nodes 
  TetIn.numberofpoints = npoints;
  TetIn.numberofpointattributes = 0; 
  TetIn.pointattributelist = NULL;
  TetIn.numberofpointmtrs = 0; 
  TetIn.pointmtrlist = NULL; 
  TetIn.pointmarkerlist = new int[npoints];
  TetIn.pointlist = new REAL[npoints * 3];
  for (int i=0; i<npoints; i++)
    {
      TetIn.pointlist[i*3+0] = points[i].x;
      TetIn.pointlist[i*3+1] = points[i].y;
      TetIn.pointlist[i*3+2] = points[i].z;
      TetIn.pointmarkerlist[i] = points[i].marker; 
    }
  // for each input surface triangle 
  // a single facet will be created
  TetIn.numberoffacets = ntri; 
  TetIn.facetlist = new tetgenio::facet[ntri]; 
  TetIn.facetmarkerlist = new int[ntri];
  for (int i=0; i<ntri; i++)
    {
      f = &TetIn.facetlist[i];
      f->numberofpolygons = 1;      
      f->numberofholes = 0; f->holelist = NULL;
      //TetIn.facetmarkerlist[i] = surftriangles[i].marker;
      TetIn.facetmarkerlist[i] = surfacetrianglemarker;
      // each facet contains a single polygon that describes 
      // the surface triangle 
      f->polygonlist = new tetgenio::polygon[1];
      p = &f->polygonlist[0]; 
      p->numberofvertices = 3;
      p->vertexlist = new int[3]; 
      p->vertexlist[0] = surftriangles[i].n1;
      p->vertexlist[1] = surftriangles[i].n2;
      p->vertexlist[2] = surftriangles[i].n3;
    }
  TetIn.numberofholes = nholes; 
  TetIn.holelist =  new REAL[nholes*3];
  for (int i=0; i<nholes; i++)
    {
      TetIn.holelist[i*3+0]=holes[i].x; 
      TetIn.holelist[i*3+1]=holes[i].y; 
      TetIn.holelist[i*3+2]=holes[i].z; 
    }

  TetIn.numberofregions = nregions; 
  TetIn.regionlist = new REAL[nregions*5];
  for (int i=0; i<nregions; i++)
    {
      TetIn.regionlist[i*5+0]=regions[i].x; 
      TetIn.regionlist[i*5+1]=regions[i].y; 
      TetIn.regionlist[i*5+2]=regions[i].z; 
      TetIn.regionlist[i*5+3]=regions[i].marker; 
      TetIn.regionlist[i*5+4]=regions[i].VolConstraint; 
    }

  // clear tetgen input data to save memory
  NbSurfaceNodes = npoints; // so we can check after meshing if nodes have been inserted on the boundary by tetgen 
  points.clear(); 
  holes.clear(); 
  regions.clear();
}

void TetgenPlugin_TetgenInterface::SetTetgenOptions(std::string &switches)
{
  // Switches:
  // -p Tetrahedralizes a PLC 
  // -q Qualitymeshgeneration 
  // -a Imposes volume constraints
  // -A Assigns region attributes 
  // -r Reconstructs/refinesamesh
  // -i Inserts additional points
  // -T Sets a tolerance 
  // -f	Outputs faces (including non-boundary faces) to .face file.
  // -Y Prohibit Steiner Points on Boundary (-YY to also suppress Steiner points on interior domains)
  // -z number all output items starting from zero 
  // -o2 Creates second order mesh elements 
  // -C Checks consistency of the mesh on finish
  // e.g. switches="zYq1.3Aa10"
  
  std::ostringstream ostr;
  int nregions=regions.size(); 
  ostr << "pzYYfA";
  //if (nregions!=0) ostr << "A";
  if (TetOpts.tolerance!=0) ostr << "T" << TetOpts.tolerance;
  if (TetOpts.quality!=0) 
    ostr << "q" << TetOpts.quality;
  if (TetOpts.volconstraint!=0) ostr << "a" << TetOpts.volconstraint;
  else if (nregions!=0) ostr << "a"; // local area constraints defined via regions 
  switches = ostr.str();
  std::cerr << "SWITCHES c: " << switches << std::endl; 
}


bool TetgenPlugin_TetgenInterface::FileExists(std::string filename)
{
  std::ifstream testf(filename.c_str());
  return testf.good(); 
}

std::string TetgenPlugin_TetgenInterface::NextTetFilename()
{
  std::string filename="tmptetinfile_.poly";
  int i=0; 
  while (FileExists(filename))
    {
      i++;
      std::ostringstream ostr;
      ostr << "tmptetinfile_" << i << "_.poly";
      filename = ostr.str(); 
    }
  std::ostringstream ostr;
  ostr << "tmptetinfile_" << i << "_";
  filename = ostr.str();   
  return filename;
}

char * TetgenPlugin_TetgenInterface::Tempfilename()
{
  //char *result = new char(int(L_tmpnam)+200);
  return tmpnam(NULL);
}

void TetgenPlugin_TetgenInterface::RemoveTmpFiles(std::string tetgenfilename)
{
  std::string outfilename(tetgenfilename);
  if (FileExists(tetgenfilename+".poly"))
    {
      std::cout << "Removing temporary file " << tetgenfilename+".poly" << std::endl;  
      remove((tetgenfilename+".poly").c_str());
    }

  if (FileExists(tetgenfilename+".node"))
    {
      std::cout << "Removing temporary file " << tetgenfilename+".node" << std::endl;  
      remove((tetgenfilename+".node").c_str());
    }
  if (FileExists(outfilename+".1.ele"))
    {
      std::cout << "Removing temporary file " << tetgenfilename+".1.ele" << std::endl;  
      remove((outfilename+".1.ele").c_str());
    }
  if (FileExists(outfilename+".1.face"))
    {
      std::cout << "Removing temporary file " << tetgenfilename+".1.face" << std::endl;  
      remove((outfilename+".1.face").c_str());
    }
  if (FileExists(outfilename+".1.node"))
    {
      std::cout << "Removing temporary file " << tetgenfilename+".1.node" << std::endl;  
      remove((outfilename+".1.node").c_str());
    }
}

void TetgenPlugin_TetgenInterface::savePLC(tetgenio& TetIn, char* filename)
{
  TetIn.save_nodes(filename); 
  TetIn.save_poly(filename);
}

void TetgenPlugin_TetgenInterface::saveMesh(tetgenio& out, char* filename)
{
  out.save_nodes(filename); 
  out.save_elements(filename); 
  out.save_faces(filename);
}

int TetgenPlugin_TetgenInterface::GenerateVolumeMesh(std::string tetfilename)
{
  char tetinfilename[200];
  char tetoutfilename[200];
  char * tmpfilename = Tempfilename();
  tetgenio TetIn, TetOut; 
  std::string switches(""); 
  int result=0; 
  
  FillTetgenInData(TetIn);
  std::cerr << "SWITCHES a: " << switches << std::endl; 
  SetTetgenOptions(switches); 
  std::cerr << "SWITCHES b: " << switches << std::endl; 
  

  sprintf(tetinfilename, "%s", tmpfilename);
  savePLC(TetIn, tetinfilename);
  std::string tetcall("tetgen ");
  tetcall+= "-"; tetcall+=switches; 
  tetcall+=" ";  tetcall+=tetinfilename; 
  std::cout << "Calling Tetgen: " << tetcall << std::endl; 
  int retvalue = system(tetcall.c_str());

  sprintf(tetoutfilename, "%s.1", tetinfilename);
  if (!TetOut.load_tetmesh(tetoutfilename))
    result=-2;

  std::string filebasename(tetoutfilename);
  if (!this->keepintermediatefiles)
    RemoveTmpFiles(tetinfilename);
 
  if (result==0)
    result = FillTetgenResultData(TetOut); 
  // saveMesh(TetOut, &filename[0]);
  
  return result; 
}



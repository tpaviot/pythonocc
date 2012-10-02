
#ifndef _TetgenPlugin_Hypothesis_HXX_
#define _TetgenPlugin_Hypothesis_HXX_

#include "SMESH_Hypothesis.hxx"
#include "SMESH_Exception.hxx"

using namespace std;

class TetgenPlugin_Hypothesis: public SMESH_Hypothesis
{
public:

  TetgenPlugin_Hypothesis(int hypId, int studyId, SMESH_Gen * gen);

  void SetMaxVolume(double volume);
  double GetMaxVolume() const { return _maxVolume; }
  double GetDefaultMaxVolume();

  void SetQuality(double qual);
  double GetQuality() const { return _quality; }
  double GetDefaultQuality();

  // Persistence
  virtual ostream & SaveTo(ostream & save);
  virtual istream & LoadFrom(istream & load);
  friend ostream & operator <<(ostream & save, TetgenPlugin_Hypothesis & hyp);
  friend istream & operator >>(istream & load, TetgenPlugin_Hypothesis & hyp);

  virtual bool SetParametersByMesh(const SMESH_Mesh* theMesh, const TopoDS_Shape& theShape);
  virtual bool SetParametersByDefaults(const TDefaults& dflts, const SMESH_Mesh* theMesh=0);

private:
  double _maxVolume;
  double _quality;

};

#endif

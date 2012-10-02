
#include "TetgenPlugin_Hypothesis.hxx"
#include <utilities.h>

using namespace std;

TetgenPlugin_Hypothesis::TetgenPlugin_Hypothesis (int hypId, int studyId,
                                                  SMESH_Gen * gen)
  : SMESH_Hypothesis(hypId, studyId, gen),
    _maxVolume  (GetDefaultMaxVolume()),
    _quality    (GetDefaultQuality())
{
  _name = "Tetgen_Parameters";
  _param_algo_dim = 3;
}

void TetgenPlugin_Hypothesis::SetMaxVolume(double volume)
{
  if (volume != _maxVolume)
    {
      _maxVolume = volume;
      NotifySubMeshesHypothesisModification();
    }
}

void TetgenPlugin_Hypothesis::SetQuality(double qual)
{
  if (qual != _quality)
    {
      _quality = qual;
      NotifySubMeshesHypothesisModification();
    }
}

ostream & TetgenPlugin_Hypothesis::SaveTo(ostream & save)
{
  save << _maxVolume << " " << _quality; 
  return save;
}

istream & TetgenPlugin_Hypothesis::LoadFrom(istream & load)
{
  bool isOK = true; 
  double val;

  isOK = (load >> val);
  if (isOK)
    _maxVolume = val;
  else
    load.clear(ios::badbit | load.rdstate());

  isOK = (load >> val);
  if (isOK)
    _quality = val; 
  else
    load.clear(ios::badbit | load.rdstate());

  return load;
}

ostream & operator <<(ostream & save, TetgenPlugin_Hypothesis & hyp)
{
  return hyp.SaveTo( save );
}

istream & operator >>(istream & load, TetgenPlugin_Hypothesis & hyp)
{
  return hyp.LoadFrom( load );
}

bool TetgenPlugin_Hypothesis::SetParametersByMesh(const SMESH_Mesh*   theMesh,
                                                  const TopoDS_Shape& theShape)
{
  return false;
}


bool TetgenPlugin_Hypothesis::SetParametersByDefaults(const TDefaults&  dflts,
                                                      const SMESH_Mesh* /*theMesh*/)
{
  return false; 
}


double TetgenPlugin_Hypothesis::GetDefaultQuality()
{
  return 1.3;
}

double TetgenPlugin_Hypothesis::GetDefaultMaxVolume()
{
  return 10;
}

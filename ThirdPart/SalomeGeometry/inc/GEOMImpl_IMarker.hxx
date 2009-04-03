// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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
//NOTE: This is an interface to a function for the local coordinate system creation.


#include "SGEOM_Function.hxx"

#define CS_ARG_O_X   1
#define CS_ARG_O_Y   2
#define CS_ARG_O_Z   3

#define CS_ARG_X_DX  4
#define CS_ARG_X_DY  5
#define CS_ARG_X_DZ  6

#define CS_ARG_Y_DX  7
#define CS_ARG_Y_DY  8
#define CS_ARG_Y_DZ  9

class GEOMImpl_IMarker
{
 public:

  GEOMImpl_IMarker(Handle(GEOM_Function) theFunction): _func(theFunction) {}

  //as string
  void SetOrigin (const TCollection_AsciiString& theX, const TCollection_AsciiString& theY, const TCollection_AsciiString& theZ)
  {
    _func->SetReal(CS_ARG_O_X, theX);
    _func->SetReal(CS_ARG_O_Y, theY);
    _func->SetReal(CS_ARG_O_Z, theZ);
  }

  void SetXDir (const TCollection_AsciiString& theDX, const TCollection_AsciiString& theDY, const TCollection_AsciiString& theDZ)
  {
    _func->SetReal(CS_ARG_X_DX, theDX);
    _func->SetReal(CS_ARG_X_DY, theDY);
    _func->SetReal(CS_ARG_X_DZ, theDZ);
  }

  void SetYDir (const TCollection_AsciiString& theDX, const TCollection_AsciiString& theDY, const TCollection_AsciiString& theDZ)
  {
    _func->SetReal(CS_ARG_Y_DX, theDX);
    _func->SetReal(CS_ARG_Y_DY, theDY);
    _func->SetReal(CS_ARG_Y_DZ, theDZ);
  }

  //as double
  void SetOrigin (const double& theX, const double& theY, const double& theZ)
  {
	_func->SetReal(CS_ARG_O_X, theX);
	_func->SetReal(CS_ARG_O_Y, theY);
	_func->SetReal(CS_ARG_O_Z, theZ);
  }

  void SetXDir (const double& theDX, const double& theDY, const double& theDZ)
  {
	_func->SetReal(CS_ARG_X_DX, theDX);
	_func->SetReal(CS_ARG_X_DY, theDY);
	_func->SetReal(CS_ARG_X_DZ, theDZ);
  }

  void SetYDir (const double& theDX, const double& theDY, const double& theDZ)
  {
	_func->SetReal(CS_ARG_Y_DX, theDX);
	_func->SetReal(CS_ARG_Y_DY, theDY);
	_func->SetReal(CS_ARG_Y_DZ, theDZ);
  }

  //one by one as string
  void SetOX(const TCollection_AsciiString& theOX)   { _func->SetReal(CS_ARG_O_X,  theOX); }
  void SetOY(const TCollection_AsciiString& theOY)   { _func->SetReal(CS_ARG_O_Y,  theOY); }
  void SetOZ(const TCollection_AsciiString& theOZ)   { _func->SetReal(CS_ARG_O_Z,  theOZ); }
  void SetXDX(const TCollection_AsciiString& theXDX) { _func->SetReal(CS_ARG_X_DX, theXDX); }
  void SetXDY(const TCollection_AsciiString& theXDY) { _func->SetReal(CS_ARG_X_DY, theXDY); }
  void SetXDZ(const TCollection_AsciiString& theXDZ) { _func->SetReal(CS_ARG_X_DZ, theXDZ); }
  void SetYDX(const TCollection_AsciiString& theYDX) { _func->SetReal(CS_ARG_Y_DX, theYDX); }
  void SetYDY(const TCollection_AsciiString& theYDY) { _func->SetReal(CS_ARG_Y_DY, theYDY); }
  void SetYDZ(const TCollection_AsciiString& theYDZ) { _func->SetReal(CS_ARG_Y_DZ, theYDZ); }

  //one by one as double
  void SetOX(const double&  theOX)   { _func->SetReal(CS_ARG_O_X,  theOX); }
  void SetOY(const double&  theOY)   { _func->SetReal(CS_ARG_O_Y,  theOY); }
  void SetOZ(const double&  theOZ)   { _func->SetReal(CS_ARG_O_Z,  theOZ); }
  void SetXDX(const double& theXDX)  { _func->SetReal(CS_ARG_X_DX, theXDX); }
  void SetXDY(const double& theXDY)  { _func->SetReal(CS_ARG_X_DY, theXDY); }
  void SetXDZ(const double& theXDZ)  { _func->SetReal(CS_ARG_X_DZ, theXDZ); }
  void SetYDX(const double& theYDX)  { _func->SetReal(CS_ARG_Y_DX, theYDX); }
  void SetYDY(const double& theYDY)  { _func->SetReal(CS_ARG_Y_DY, theYDY); }
  void SetYDZ(const double& theYDZ)  { _func->SetReal(CS_ARG_Y_DZ, theYDZ); }

  void GetOrigin (double& theX, double& theY, double& theZ)
  {
    theX = _func->GetReal(CS_ARG_O_X);
    theY = _func->GetReal(CS_ARG_O_Y);
    theZ = _func->GetReal(CS_ARG_O_Z);
  }

  void GetXDir (double& theDX, double& theDY, double& theDZ)
  {
    theDX = _func->GetReal(CS_ARG_X_DX);
    theDY = _func->GetReal(CS_ARG_X_DY);
    theDZ = _func->GetReal(CS_ARG_X_DZ);
  }

  void GetYDir (double& theDX, double& theDY, double& theDZ)
  {
    theDX = _func->GetReal(CS_ARG_Y_DX);
    theDY = _func->GetReal(CS_ARG_Y_DY);
    theDZ = _func->GetReal(CS_ARG_Y_DZ);
  }

 private:

  Handle(GEOM_Function) _func;
};

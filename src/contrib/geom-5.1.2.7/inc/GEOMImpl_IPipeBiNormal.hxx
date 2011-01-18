//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
//NOTE: This is an interface to a function for the Pipe creation.
//
#ifndef _GEOMImpl_IPIPEBINORMAL_HXX_
#define _GEOMImpl_IPIPEBINORMAL_HXX_

#include "GEOM_Function.hxx"

#ifndef _GEOMImpl_IPIPE_HXX_
#include "GEOMImpl_IPipe.hxx"
#endif

#define PIPE_ARG_BASE 1
#define PIPE_ARG_PATH 2
#define PIPE_ARG_VEC  3

class GEOMImpl_IPipeBiNormal : public GEOMImpl_IPipe
{
 public:

  GEOMImpl_IPipeBiNormal(Handle(GEOM_Function)& theFunction):GEOMImpl_IPipe(theFunction) {}
  
  void SetVector(Handle(GEOM_Function) theVec) { _func->SetReference(PIPE_ARG_VEC, theVec); }

  Handle(GEOM_Function) GetVector() { return _func->GetReference(PIPE_ARG_VEC); }

};

#endif

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

#ifndef _GEOMImpl_GEN_HXX_
#define _GEOMImpl_GEN_HXX_

#include <map>

#include "GEOMImpl_IBasicOperations.hxx"
#include "GEOMImpl_ITransformOperations.hxx"
#include "GEOMImpl_I3DPrimOperations.hxx"
#include "GEOMImpl_IShapesOperations.hxx"
#include "GEOMImpl_IBlocksOperations.hxx"
#include "GEOMImpl_IBooleanOperations.hxx"
#include "GEOMImpl_IHealingOperations.hxx"
#include "GEOMImpl_ICurvesOperations.hxx"
#include "GEOMImpl_ILocalOperations.hxx"
#include "GEOMImpl_IInsertOperations.hxx"
#include "GEOMImpl_IMeasureOperations.hxx"
#include "GEOMImpl_IGroupOperations.hxx"
#include "GEOMImpl_IAdvancedOperations.hxx"
#include "GEOMImpl_ISketcherOperations.hxx"
#include "SGEOM_Engine.hxx"

#ifdef WNT
#define SALOME_WNT_EXPORT __declspec(dllexport)
#else
#define SALOME_WNT_EXPORT
#endif

//! GEOM engine descendant containing references to Interfaces for GeomImpl
//! geometric drivers
class GEOMImpl_Gen : public GEOM_Engine
{
 public:
  SALOME_WNT_EXPORT GEOMImpl_Gen();
  SALOME_WNT_EXPORT ~GEOMImpl_Gen();

  SALOME_WNT_EXPORT GEOMImpl_IBasicOperations* GetIBasicOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_ITransformOperations* GetITransformOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_I3DPrimOperations* GetI3DPrimOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IShapesOperations* GetIShapesOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IBlocksOperations* GetIBlocksOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IMeasureOperations* GetIMeasureOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IBooleanOperations* GetIBooleanOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_ICurvesOperations* GetICurvesOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_ILocalOperations* GetILocalOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IInsertOperations* GetIInsertOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IHealingOperations* GetIHealingOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IGroupOperations* GetIGroupOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_IAdvancedOperations* GetIAdvancedOperations(int theDocID);
  SALOME_WNT_EXPORT GEOMImpl_ISketcherOperations* GetISketcherOperations(int theDocID);

 private:

  std::map <int, GEOMImpl_IBasicOperations*>     _mapOfBasicOperations;
  std::map <int, GEOMImpl_ITransformOperations*> _mapOfTransformOperations;
  std::map <int, GEOMImpl_I3DPrimOperations*>    _mapOf3DPrimOperations;
  std::map <int, GEOMImpl_IShapesOperations*>    _mapOfShapesOperations;
  std::map <int, GEOMImpl_IBlocksOperations*>    _mapOfBlocksOperations;
  std::map <int, GEOMImpl_IBooleanOperations*>   _mapOfBooleanOperations;
  std::map <int, GEOMImpl_IHealingOperations*>   _mapOfHealingOperations;
  std::map <int, GEOMImpl_ICurvesOperations*>    _mapOfCurvesOperations;
  std::map <int, GEOMImpl_ILocalOperations*>     _mapOfLocalOperations;
  std::map <int, GEOMImpl_IInsertOperations*>    _mapOfInsertOperations;
  std::map <int, GEOMImpl_IMeasureOperations*>   _mapOfMeasureOperations;
  std::map <int, GEOMImpl_IGroupOperations*>     _mapOfGroupOperations;
  std::map <int, GEOMImpl_IAdvancedOperations*>  _mapOfAdvancedOperations;
  std::map <int, GEOMImpl_ISketcherOperations*>  _mapOfSketcherOperations;
};

#endif

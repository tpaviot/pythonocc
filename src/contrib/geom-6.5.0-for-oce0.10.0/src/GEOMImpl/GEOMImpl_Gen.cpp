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

#ifdef WNT
#pragma warning( disable:4786 )
#endif

#include <Standard_Stream.hxx>

#include <GEOMImpl_Gen.hxx>

#include "utilities.h"
//#include <OpUtil.hxx>
//#include <Utils_ExceptHandlers.hxx>

#include <TFunction_Driver.hxx>
#include <TFunction_DriverTable.hxx>

#include <GEOMImpl_PointDriver.hxx>
#include <GEOMImpl_VectorDriver.hxx>
#include <GEOMImpl_LineDriver.hxx>
#include <GEOMImpl_PlaneDriver.hxx>
#include <GEOMImpl_MarkerDriver.hxx>
#include <GEOMImpl_ArcDriver.hxx>
#include <GEOMImpl_CircleDriver.hxx>
#include <GEOMImpl_EllipseDriver.hxx>
#include <GEOMImpl_PolylineDriver.hxx>
#include <GEOMImpl_SplineDriver.hxx>
#include <GEOMImpl_SketcherDriver.hxx>
#include <GEOMImpl_3DSketcherDriver.hxx>
#include <GEOMImpl_BoxDriver.hxx>
#include <GEOMImpl_FaceDriver.hxx>
#include <GEOMImpl_DiskDriver.hxx>
#include <GEOMImpl_ConeDriver.hxx>
#include <GEOMImpl_CylinderDriver.hxx>
#include <GEOMImpl_PrismDriver.hxx>
#include <GEOMImpl_PipeDriver.hxx>
#include <GEOMImpl_ThruSectionsDriver.hxx>
#include <GEOMImpl_RevolutionDriver.hxx>
#include <GEOMImpl_ShapeDriver.hxx>
#include <GEOMImpl_BlockDriver.hxx>
#include <GEOMImpl_SphereDriver.hxx>
#include <GEOMImpl_TorusDriver.hxx>
#include <GEOMImpl_BooleanDriver.hxx>
#include <GEOMImpl_ChamferDriver.hxx>
#include <GEOMImpl_FilletDriver.hxx>
#include <GEOMImpl_Fillet1dDriver.hxx>
#include <GEOMImpl_Fillet2dDriver.hxx>
#include <GEOMImpl_TranslateDriver.hxx>
#include <GEOMImpl_RotateDriver.hxx>
#include <GEOMImpl_MirrorDriver.hxx>
#include <GEOMImpl_ProjectionDriver.hxx>
#include <GEOMImpl_OffsetDriver.hxx>
#include <GEOMImpl_ScaleDriver.hxx>
#include <GEOMImpl_PositionDriver.hxx>
#include <GEOMImpl_PartitionDriver.hxx>
#include <GEOMImpl_CopyDriver.hxx>
#include <GEOMImpl_ExportDriver.hxx>
#include <GEOMImpl_ImportDriver.hxx>
#include <GEOMImpl_ArchimedeDriver.hxx>
#include <GEOMImpl_HealingDriver.hxx>
#include <GEOMImpl_FillingDriver.hxx>
#include <GEOMImpl_GlueDriver.hxx>
#include <GEOMImpl_MeasureDriver.hxx>
// Advanced operations
#include <GEOMImpl_PipeTShapeDriver.hxx>
/*@@ insert new functions before this line @@ do not remove this line @@ do not remove this line @@*/

//=============================================================================
/*!
 *  default constructor:
 */
//=============================================================================

GEOMImpl_Gen::GEOMImpl_Gen()
{
   MESSAGE("GEOMImpl_Gen::GEOMImpl_Gen");
   _mapOfBasicOperations.clear();

   // Basic elements
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PointDriver::GetID(), new GEOMImpl_PointDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_VectorDriver::GetID(), new GEOMImpl_VectorDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_LineDriver::GetID(), new GEOMImpl_LineDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PlaneDriver::GetID(), new GEOMImpl_PlaneDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_MarkerDriver::GetID(), new GEOMImpl_MarkerDriver());

   // Curves
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ArcDriver::GetID(), new GEOMImpl_ArcDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_CircleDriver::GetID(), new GEOMImpl_CircleDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_EllipseDriver::GetID(), new GEOMImpl_EllipseDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PolylineDriver::GetID(), new GEOMImpl_PolylineDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_SplineDriver::GetID(), new GEOMImpl_SplineDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_SketcherDriver::GetID(), new GEOMImpl_SketcherDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_3DSketcherDriver::GetID(), new GEOMImpl_3DSketcherDriver());

   // 3D Primitives
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_BoxDriver::GetID(), new GEOMImpl_BoxDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_FaceDriver::GetID(), new GEOMImpl_FaceDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_DiskDriver::GetID(), new GEOMImpl_DiskDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ConeDriver::GetID(), new GEOMImpl_ConeDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_CylinderDriver::GetID(), new GEOMImpl_CylinderDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PrismDriver::GetID(), new GEOMImpl_PrismDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PipeDriver::GetID(), new GEOMImpl_PipeDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ThruSectionsDriver::GetID(), new GEOMImpl_ThruSectionsDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_RevolutionDriver::GetID(), new GEOMImpl_RevolutionDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_SphereDriver::GetID(), new GEOMImpl_SphereDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_TorusDriver::GetID(), new GEOMImpl_TorusDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_FillingDriver::GetID(), new GEOMImpl_FillingDriver());

   // Shapes Operations
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ShapeDriver::GetID(), new GEOMImpl_ShapeDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_GlueDriver::GetID(), new GEOMImpl_GlueDriver());

   // Blocks Operations
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_BlockDriver::GetID(), new GEOMImpl_BlockDriver());

   // Boolean Operations, Partition
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_BooleanDriver::GetID(), new GEOMImpl_BooleanDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PartitionDriver::GetID(), new GEOMImpl_PartitionDriver());

   // Local Operations
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ChamferDriver::GetID(), new GEOMImpl_ChamferDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_FilletDriver::GetID(), new GEOMImpl_FilletDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_Fillet1dDriver::GetID(), new GEOMImpl_Fillet1dDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_Fillet2dDriver::GetID(), new GEOMImpl_Fillet2dDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ArchimedeDriver::GetID(), new GEOMImpl_ArchimedeDriver());

   // Geometrical Transformations, Offset, Scale
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_TranslateDriver::GetID(), new GEOMImpl_TranslateDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_RotateDriver::GetID(), new GEOMImpl_RotateDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_MirrorDriver::GetID(), new GEOMImpl_MirrorDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ProjectionDriver::GetID(), new GEOMImpl_ProjectionDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_OffsetDriver::GetID(), new GEOMImpl_OffsetDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ScaleDriver::GetID(), new GEOMImpl_ScaleDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PositionDriver::GetID(), new GEOMImpl_PositionDriver());

   // Insert Operations (Copy, Import/Export)
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_CopyDriver::GetID(), new GEOMImpl_CopyDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ImportDriver::GetID(), new GEOMImpl_ImportDriver());
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_ExportDriver::GetID(), new GEOMImpl_ExportDriver());

   // Shape Healing
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_HealingDriver::GetID(), new GEOMImpl_HealingDriver());

   // Measurements
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_MeasureDriver::GetID(), new GEOMImpl_MeasureDriver());

   // Advanced operations
   TFunction_DriverTable::Get()->AddDriver(GEOMImpl_PipeTShapeDriver::GetID(), new GEOMImpl_PipeTShapeDriver());
   /*@@ insert new functions before this line @@ do not remove this line @@ do not remove this line @@*/

   SetEngine(this);
}

//=============================================================================
/*!
 *
 */
//=============================================================================

GEOMImpl_Gen::~GEOMImpl_Gen()
{
  MESSAGE("GEOMImpl_Gen::~GEOMImpl_Gen");

  std::map<int, GEOMImpl_IBasicOperations*>::iterator aBasicIter = _mapOfBasicOperations.begin();
  for (; aBasicIter != _mapOfBasicOperations.end(); aBasicIter++)
    delete (*aBasicIter).second;

  std::map<int, GEOMImpl_ITransformOperations*>::iterator aTransformIter = _mapOfTransformOperations.begin();
  for (; aTransformIter != _mapOfTransformOperations.end(); aTransformIter++)
    delete (*aTransformIter).second;

  std::map<int, GEOMImpl_I3DPrimOperations*>::iterator a3DPrimIter = _mapOf3DPrimOperations.begin();
  for (; a3DPrimIter != _mapOf3DPrimOperations.end(); a3DPrimIter++)
    delete (*a3DPrimIter).second;

  std::map<int, GEOMImpl_IShapesOperations*>::iterator aShapesIter = _mapOfShapesOperations.begin();
  for (; aShapesIter != _mapOfShapesOperations.end(); aShapesIter++)
    delete (*aShapesIter).second;

  std::map<int, GEOMImpl_IBlocksOperations*>::iterator aBlocksIter = _mapOfBlocksOperations.begin();
  for (; aBlocksIter != _mapOfBlocksOperations.end(); aBlocksIter++)
    delete (*aBlocksIter).second;

  std::map<int, GEOMImpl_IBooleanOperations*>::iterator aBooleanIter = _mapOfBooleanOperations.begin();
  for (; aBooleanIter != _mapOfBooleanOperations.end(); aBooleanIter++)
    delete (*aBooleanIter).second;

  std::map<int, GEOMImpl_IHealingOperations*>::iterator aHealingIter = _mapOfHealingOperations.begin();
  for (; aHealingIter != _mapOfHealingOperations.end(); aHealingIter++)
    delete (*aHealingIter).second;

  std::map<int, GEOMImpl_ICurvesOperations*>::iterator aCurvesIter = _mapOfCurvesOperations.begin();
  for (; aCurvesIter != _mapOfCurvesOperations.end(); aCurvesIter++)
    delete (*aCurvesIter).second;

  std::map<int, GEOMImpl_ILocalOperations*>::iterator aLocalIter = _mapOfLocalOperations.begin();
  for (; aLocalIter != _mapOfLocalOperations.end(); aLocalIter++)
    delete (*aLocalIter).second;

  std::map<int, GEOMImpl_IInsertOperations*>::iterator aInsertIter = _mapOfInsertOperations.begin();
  for (; aInsertIter != _mapOfInsertOperations.end(); aInsertIter++)
    delete (*aInsertIter).second;

  std::map<int, GEOMImpl_IMeasureOperations*>::iterator aMeasureIter = _mapOfMeasureOperations.begin();
  for (; aMeasureIter != _mapOfMeasureOperations.end(); aMeasureIter++)
    delete (*aMeasureIter).second;

  std::map<int, GEOMImpl_IGroupOperations*>::iterator aGroupIter = _mapOfGroupOperations.begin();
  for (; aGroupIter != _mapOfGroupOperations.end(); aGroupIter++)
    delete (*aGroupIter).second;
}

//=============================================================================
/*!
 * GetIBasicOperations
 */
//=============================================================================
GEOMImpl_IBasicOperations* GEOMImpl_Gen::GetIBasicOperations(int theDocID)
{
  if(_mapOfBasicOperations.find(theDocID) == _mapOfBasicOperations.end()) {
    _mapOfBasicOperations[theDocID] = new GEOMImpl_IBasicOperations(this, theDocID);
  }

  return _mapOfBasicOperations[theDocID];
}

//=============================================================================
/*!
 * GetITransformOperations
 */
//=============================================================================
GEOMImpl_ITransformOperations* GEOMImpl_Gen::GetITransformOperations(int theDocID)
{
  if(_mapOfTransformOperations.find(theDocID) == _mapOfTransformOperations.end()) {
    _mapOfTransformOperations[theDocID] = new GEOMImpl_ITransformOperations(this, theDocID);
  }

  return _mapOfTransformOperations[theDocID];
}

//=============================================================================
/*!
 * GetIBooleanOperations
 */
//=============================================================================
GEOMImpl_IBooleanOperations* GEOMImpl_Gen::GetIBooleanOperations(int theDocID)
{
  if(_mapOfBooleanOperations.find(theDocID) == _mapOfBooleanOperations.end()) {
    _mapOfBooleanOperations[theDocID] = new GEOMImpl_IBooleanOperations(this, theDocID);
  }

  return _mapOfBooleanOperations[theDocID];
}

//=============================================================================
/*!
 * GetIHealingOperations
 */
//=============================================================================
GEOMImpl_IHealingOperations* GEOMImpl_Gen::GetIHealingOperations(int theDocID)
{
  if(_mapOfHealingOperations.find(theDocID) == _mapOfHealingOperations.end()) {
    _mapOfHealingOperations[theDocID] = new GEOMImpl_IHealingOperations(this, theDocID);
  }

  return _mapOfHealingOperations[theDocID];
}

//=============================================================================
/*!
 * GetI3DPrimOperations
 */
//=============================================================================
GEOMImpl_I3DPrimOperations* GEOMImpl_Gen::GetI3DPrimOperations(int theDocID)
{
  if(_mapOf3DPrimOperations.find(theDocID) == _mapOf3DPrimOperations.end()) {
    _mapOf3DPrimOperations[theDocID] = new GEOMImpl_I3DPrimOperations(this, theDocID);
  }

  return _mapOf3DPrimOperations[theDocID];
}

//=============================================================================
/*!
 * GetIShapesOperations
 */
//=============================================================================
GEOMImpl_IShapesOperations* GEOMImpl_Gen::GetIShapesOperations(int theDocID)
{
  if(_mapOfShapesOperations.find(theDocID) == _mapOfShapesOperations.end()) {
    _mapOfShapesOperations[theDocID] = new GEOMImpl_IShapesOperations(this, theDocID);
  }

  return _mapOfShapesOperations[theDocID];
}

//=============================================================================
/*!
 * GetIBlocksOperations
 */
//=============================================================================
GEOMImpl_IBlocksOperations* GEOMImpl_Gen::GetIBlocksOperations(int theDocID)
{
  if(_mapOfBlocksOperations.find(theDocID) == _mapOfBlocksOperations.end()) {
    _mapOfBlocksOperations[theDocID] = new GEOMImpl_IBlocksOperations(this, theDocID);
  }

  return _mapOfBlocksOperations[theDocID];
}

//=============================================================================
/*!
 * GetICurvesOperations
 */
//=============================================================================
GEOMImpl_ICurvesOperations* GEOMImpl_Gen::GetICurvesOperations(int theDocID)
{
  if(_mapOfCurvesOperations.find(theDocID) == _mapOfCurvesOperations.end()) {
    _mapOfCurvesOperations[theDocID] = new GEOMImpl_ICurvesOperations(this, theDocID);
  }

  return _mapOfCurvesOperations[theDocID];
}

//=============================================================================
/*!
 * GetILocalOperations
 */
//=============================================================================
GEOMImpl_ILocalOperations* GEOMImpl_Gen::GetILocalOperations(int theDocID)
{
  if(_mapOfLocalOperations.find(theDocID) == _mapOfLocalOperations.end()) {
    _mapOfLocalOperations[theDocID] = new GEOMImpl_ILocalOperations(this, theDocID);
  }

  return _mapOfLocalOperations[theDocID];
}

//=============================================================================
/*!
 * GetIInsertOperations
 */
//=============================================================================
GEOMImpl_IInsertOperations* GEOMImpl_Gen::GetIInsertOperations(int theDocID)
{
  if(_mapOfInsertOperations.find(theDocID) == _mapOfInsertOperations.end()) {
    _mapOfInsertOperations[theDocID] = new GEOMImpl_IInsertOperations(this, theDocID);
  }

  return _mapOfInsertOperations[theDocID];
}

//=============================================================================
/*!
 * GetIMeasureOperations
 */
//=============================================================================
GEOMImpl_IMeasureOperations* GEOMImpl_Gen::GetIMeasureOperations(int theDocID)
{
  if(_mapOfMeasureOperations.find(theDocID) == _mapOfMeasureOperations.end()) {
    _mapOfMeasureOperations[theDocID] = new GEOMImpl_IMeasureOperations(this, theDocID);
  }

  return _mapOfMeasureOperations[theDocID];
}

//=============================================================================
/*!
 * GetIGroupOperations
 */
//=============================================================================
GEOMImpl_IGroupOperations* GEOMImpl_Gen::GetIGroupOperations(int theDocID)
{
  if(_mapOfGroupOperations.find(theDocID) == _mapOfGroupOperations.end()) {
    _mapOfGroupOperations[theDocID] = new GEOMImpl_IGroupOperations(this, theDocID);
  }

  return _mapOfGroupOperations[theDocID];
}

//=============================================================================
/*!
 * GetIAdvancedOperations
 */
//=============================================================================
GEOMImpl_IAdvancedOperations* GEOMImpl_Gen::GetIAdvancedOperations(int theDocID)
{
  if(_mapOfAdvancedOperations.find(theDocID) == _mapOfAdvancedOperations.end()) {
    _mapOfAdvancedOperations[theDocID] = new GEOMImpl_IAdvancedOperations(this, theDocID);
  }

  return _mapOfAdvancedOperations[theDocID];
}


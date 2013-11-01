// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:	GEOMAlgo_GluerAlgo.cxx
// Created:	
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#include <GEOMAlgo_GluerAlgo.hxx>


//=======================================================================
//function : GEOMAlgo_GluerAlgo
//purpose  : 
//=======================================================================
GEOMAlgo_GluerAlgo::GEOMAlgo_GluerAlgo()
{
  myTolerance=0.0001;
  myCheckGeometry=Standard_True;
}
//=======================================================================
//function : ~GEOMAlgo_GluerAlgo
//purpose  : 
//=======================================================================
GEOMAlgo_GluerAlgo::~GEOMAlgo_GluerAlgo()
{
}
//=======================================================================
//function : SetArgument
//purpose  : 
//=======================================================================
void GEOMAlgo_GluerAlgo::SetArgument(const TopoDS_Shape& theShape)
{
  myArgument=theShape;
}
//=======================================================================
//function : Argument
//purpose  : 
//=======================================================================
const TopoDS_Shape& GEOMAlgo_GluerAlgo::Argument()const
{
  return myArgument;
}
//=======================================================================
//function : SetTolerance
//purpose  : 
//=======================================================================
void GEOMAlgo_GluerAlgo::SetTolerance(const Standard_Real aT)
{
  myTolerance=aT;
}
//=======================================================================
//function : Tolerance
//purpose  : 
//=======================================================================
Standard_Real GEOMAlgo_GluerAlgo::Tolerance()const
{
  return myTolerance;
}

//=======================================================================
//function : SetCheckGeometry
//purpose  : 
//=======================================================================
void GEOMAlgo_GluerAlgo::SetCheckGeometry(const Standard_Boolean aFlag)
{
  myCheckGeometry=aFlag;
}
//=======================================================================
//function : CheckGeometry
//purpose  : 
//=======================================================================
Standard_Boolean GEOMAlgo_GluerAlgo::CheckGeometry() const
{
  return myCheckGeometry;
}
//=======================================================================
//function : Context
//purpose  : 
//=======================================================================
IntTools_Context& GEOMAlgo_GluerAlgo::Context()
{
  return myContext;
}
//=======================================================================
//function : Images
//purpose  : 
//=======================================================================
const TopTools_DataMapOfShapeListOfShape& GEOMAlgo_GluerAlgo::Images()const
{
  return myImages;
}
//=======================================================================
//function : Origins
//purpose  : 
//=======================================================================
const TopTools_DataMapOfShapeShape& GEOMAlgo_GluerAlgo::Origins()const
{
  return myOrigins;
}
//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
void GEOMAlgo_GluerAlgo::Clear()
{
  myImages.Clear();
  myOrigins.Clear();
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
void GEOMAlgo_GluerAlgo::Perform()
{
}

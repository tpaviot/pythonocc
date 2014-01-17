//  GEOM ARCHIMEDE : algorithm implementation
//
//  Copyright (C) 2003  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
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
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
//
//
//  File   : Archimede_VolumeSection.hxx
//  Author : Nicolas REJNERI
//  Module : GEOM
//  $Header: /home/server/cvs/GEOM/GEOM_SRC/src/ARCHIMEDE/Archimede_VolumeSection.hxx,v 1.7 2006/06/01 11:32:33 jfa Exp $

#ifndef ARCHIMEDE_VOLUMESECTION_HXX
#define ARCHIMEDE_VOLUMESECTION_HXX

#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>
#include <TopoDS_Shape.hxx>
#include <Geom_Plane.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>

//!Class to compute the water line of an object based on its specific weight
class VolumeSection{

public:
  //! Constructeur effectuant le maillage de peau de la shape
  Standard_EXPORT VolumeSection(TopoDS_Shape , Standard_Real); 


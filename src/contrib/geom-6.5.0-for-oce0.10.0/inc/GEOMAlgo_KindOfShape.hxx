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
#ifndef _GEOMAlgo_KindOfShape_HeaderFile
#define _GEOMAlgo_KindOfShape_HeaderFile


enum GEOMAlgo_KindOfShape {
GEOMAlgo_KS_UNKNOWN,
GEOMAlgo_KS_SPHERE,
GEOMAlgo_KS_CYLINDER,
GEOMAlgo_KS_BOX,
GEOMAlgo_KS_TORUS,
GEOMAlgo_KS_CONE,
GEOMAlgo_KS_ELLIPSE,
GEOMAlgo_KS_PLANE,
GEOMAlgo_KS_CIRCLE,
GEOMAlgo_KS_LINE,
GEOMAlgo_KS_DEGENERATED
};

#ifndef _Standard_PrimitiveTypes_HeaderFile
#include <Standard_PrimitiveTypes.hxx>
#endif

#endif

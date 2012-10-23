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

#ifndef _GEOMAlgo_KindOfName_HeaderFile
#define _GEOMAlgo_KindOfName_HeaderFile


enum GEOMAlgo_KindOfName {
GEOMAlgo_KN_UNKNOWN,
GEOMAlgo_KN_SPHERE,
GEOMAlgo_KN_CYLINDER,
GEOMAlgo_KN_TORUS,
GEOMAlgo_KN_CONE,
GEOMAlgo_KN_ELLIPSE,
GEOMAlgo_KN_CIRCLE,
GEOMAlgo_KN_PLANE,
GEOMAlgo_KN_LINE,
GEOMAlgo_KN_BOX,
GEOMAlgo_KN_SEGMENT,
GEOMAlgo_KN_ARCCIRCLE,
GEOMAlgo_KN_POLYGON,
GEOMAlgo_KN_POLYHEDRON,
GEOMAlgo_KN_DISKCIRCLE,
GEOMAlgo_KN_DISKELLIPSE,
GEOMAlgo_KN_RECTANGLE,
GEOMAlgo_KN_TRIANGLE,
GEOMAlgo_KN_QUADRANGLE,
GEOMAlgo_KN_ARCELLIPSE
};

#ifndef _Standard_PrimitiveTypes_HeaderFile
#include <Standard_PrimitiveTypes.hxx>
#endif

#endif

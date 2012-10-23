// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:	NMTDS_InterfType.hxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>


#ifndef _NMTDS_InterfType_HeaderFile
#define _NMTDS_InterfType_HeaderFile


enum NMTDS_InterfType {
NMTDS_TI_VV,
NMTDS_TI_VE,
NMTDS_TI_VF,
NMTDS_TI_EE,
NMTDS_TI_EF,
NMTDS_TI_FF,
NMTDS_TI_UNKNOWN
};

#ifndef _Standard_PrimitiveTypes_HeaderFile
#include <Standard_PrimitiveTypes.hxx>
#endif

#endif

// Copyright (C) 2010-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _MEMOIRE_H_
#define _MEMOIRE_H_

#include <stdlib.h>
// on Mac OS X malloc.h is deprecated, it sufficies to include stdlib.h
#ifndef WIN32
#if !(defined(__MACH__) && defined(__APPLE__))
#include <malloc.h>
#endif
#endif
#include <iostream>

void memostat(const char* f, int l);

void memostat(const char* f, int l)
{

#ifndef WIN32
#if !(defined(__MACH__) && defined(__APPLE__))
  /*  struct mallinfo mem = mallinfo(); */
  /*  std::cerr << f << ":"<< l << " " << mem.arena << " " << mem.ordblks << " " << mem.hblks << " " << mem.hblkhd << " "  << mem.uordblks << " "  << mem.fordblks << " " << mem.keepcost << std::endl; */
  std::cerr << f << ":" << l << " --------------------------" << std::endl;
  malloc_stats();
  std::cerr << f << ":" << l << " --------------------------" << std::endl;
#endif
#endif
  //rnv: TODO: find alternative of the malloc_stats() on windows platform, M.B.: and on Mac OS X
}

#define MEMOSTAT //memostat( __FILE__, __LINE__ )

#endif

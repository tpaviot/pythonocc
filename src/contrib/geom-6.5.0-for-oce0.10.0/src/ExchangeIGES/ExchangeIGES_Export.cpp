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

// File:        IGESExport.cxx
// Created:     Wed May 19 14:49:45 2004
// Author:      Pavel TELKOV

#include "utilities.h"

#include <Basics_Utils.hxx>

#include <IGESControl_Controller.hxx>
#include <IGESControl_Writer.hxx>
#include <Interface_Static.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Iterator.hxx>

#include <TCollection_AsciiString.hxx>

#include <Standard_Failure.hxx>

#ifdef WNT
 #if defined IGESEXPORT_EXPORTS || defined IGESExport_EXPORTS
  #if defined WIN32
   #define IGESEXPORT_EXPORT __declspec( dllexport )
  #else
   #define IGESEXPORT_EXPORT
  #endif
 #else
  #if defined WIN32
   #define IGESEXPORT_EXPORT __declspec( dllimport )
  #else
   #define IGESEXPORT_EXPORT
  #endif
 #endif
#else
 #define IGESEXPORT_EXPORT
#endif

//=============================================================================
/*!
 *  KindOfBRep
 *  \return 0 if theShape contains only simple entities (wires, edges and vertices),
 *          1 if theShape contains only complex entities (shells, solids and compsolids)
 *          2 if theShape contains only indifferent entities (faces)
 *         -1 if theShape contains both simple and complex entities (and in this case it
 *            cannot be saved without any loss neither in BRepMode == 0 nor in BRepMode == 1)
 */
//=============================================================================
int KindOfBRep (const TopoDS_Shape& theShape)
{
  int aKind = 2;

  switch (theShape.ShapeType())
  {
  case TopAbs_COMPOUND:
    {
      bool isSimple = false;
      bool isComplex = false;
      TopoDS_Iterator anIt (theShape, Standard_True, Standard_True);
      for (; anIt.More(); anIt.Next()) {
        TopoDS_Shape aS = anIt.Value();
        int aKindSub = KindOfBRep(aS);
        if (aKindSub == 0)
          isSimple = true;
        else if (aKindSub == 1)
          isComplex = true;
        else if (aKindSub == -1) {
          return -1; // heterogeneous
        }
      }
      if (isSimple && isComplex)
        aKind = -1; // heterogeneous
      else if (isSimple)
        aKind = 0;
      else if (isComplex)
        aKind = 1;
    }
    break;
  case TopAbs_COMPSOLID:
  case TopAbs_SOLID:
  case TopAbs_SHELL:
    aKind = 1;
    break;
  case TopAbs_WIRE:
  case TopAbs_EDGE:
  case TopAbs_VERTEX:
    aKind = 0;
    break;
  default:
    aKind = 2;
  }

  return aKind;
}

//=============================================================================
/*!
 *
 */
//=============================================================================

extern "C"
{
IGESEXPORT_EXPORT
  int Export( const TopoDS_Shape& theShape,
              const TCollection_AsciiString& theFileName,
              const TCollection_AsciiString& theFormatName )
  {
    bool ok = false;

    // define, whether to write only faces (5.1 IGES format)
    // or shells and solids also (5.3 IGES format)
    int aBrepMode = 0;
    if (theFormatName.IsEqual("IGES_5_3"))
      aBrepMode = 1;

    MESSAGE("Export IGES into file " << theFileName.ToCString());

    // Mantis issue 0021350: check being exported shape, as some standalone
    // entities (edges, wires and vertices) cannot be saved in BRepMode
    if (aBrepMode == 1) {
      int aKind = KindOfBRep(theShape);
      if (aKind == -1)
        Standard_Failure::Raise("EXPORT_IGES_HETEROGENEOUS_COMPOUND");
      else if (aKind == 2)
        aBrepMode = 1;
      else
        aBrepMode = aKind;
    }

    // commented for 0021350: Please don't catch exceptions silently and send an
    // inappropriate error message instead, it is disturbing for the user and for us
    //try
    {
      // Set "C" numeric locale to save numbers correctly
      Kernel_Utils::Localizer loc;

      // initialize writer
      IGESControl_Controller::Init();
      //IGESControl_Writer ICW (Interface_Static::CVal("write.iges.unit"),
      //                        Interface_Static::IVal("write.iges.brep.mode"));
      IGESControl_Writer ICW ("M", aBrepMode); // "write.iges.unit" ->> VSR 15.09.09: export explicitly in meters
      Interface_Static::SetCVal("xstep.cascade.unit","M");

      // 09.03.2010 skl for bug 0020726
      // change default value "Average" to "Max"
      Interface_Static::SetCVal("write.precision.mode","Max");

      // perform shape writing
      if (ICW.AddShape( theShape )) {
        ICW.ComputeModel();
        ok = ICW.Write( theFileName.ToCString() );
      }
    }
    //catch(Standard_Failure)
    //{
    //}
    return ok;
  }
}

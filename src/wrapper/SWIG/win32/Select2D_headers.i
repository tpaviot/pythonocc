/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Select2D_Projector.hxx>
#include<Handle_Select2D_SensitiveArc.hxx>
#include<Handle_Select2D_SensitiveBox.hxx>
#include<Handle_Select2D_SensitiveCircle.hxx>
#include<Handle_Select2D_SensitiveEntity.hxx>
#include<Handle_Select2D_SensitivePoint.hxx>
#include<Handle_Select2D_SensitiveSegment.hxx>
#include<Select2D_Projector.hxx>
#include<Select2D_SensitiveArc.hxx>
#include<Select2D_SensitiveBox.hxx>
#include<Select2D_SensitiveCircle.hxx>
#include<Select2D_SensitiveEntity.hxx>
#include<Select2D_SensitivePoint.hxx>
#include<Select2D_SensitiveSegment.hxx>
#include<Select2D_TypeOfSelection.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Bnd_Box2d.hxx>
#include<Handle_SelectBasics_EntityOwner.hxx>
#include<gp_Circ2d.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Ax2d.hxx>
%}

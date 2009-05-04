/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_SelectBasics_EntityOwner.hxx>
#include<Handle_SelectBasics_ListNodeOfListOfBox2d.hxx>
#include<Handle_SelectBasics_ListNodeOfListOfSensitive.hxx>
#include<Handle_SelectBasics_SensitiveEntity.hxx>
#include<Handle_SelectBasics_SequenceNodeOfSequenceOfAddress.hxx>
#include<Handle_SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include<SelectBasics.hxx>
#include<SelectBasics_BasicTool.hxx>
#include<SelectBasics_EntityOwner.hxx>
#include<SelectBasics_ListIteratorOfListOfBox2d.hxx>
#include<SelectBasics_ListIteratorOfListOfSensitive.hxx>
#include<SelectBasics_ListNodeOfListOfBox2d.hxx>
#include<SelectBasics_ListNodeOfListOfSensitive.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<SelectBasics_ListOfSensitive.hxx>
#include<SelectBasics_SensitiveEntity.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfAddress.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include<SelectBasics_SequenceOfAddress.hxx>
#include<SelectBasics_SequenceOfOwner.hxx>
#include<SelectBasics_SortAlgo.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Bnd_Box2d.hxx>
#include<Handle_Bnd_HArray1OfBox2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Pnt2d.hxx>
#include<TopLoc_Location.hxx>
%}

/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PTColStd_DataMapNodeOfPersistentTransientMap.hxx>
#include<Handle_PTColStd_DataMapNodeOfTransientPersistentMap.hxx>
#include<Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent.hxx>
#include<PTColStd_DataMapIteratorOfPersistentTransientMap.hxx>
#include<PTColStd_DataMapIteratorOfTransientPersistentMap.hxx>
#include<PTColStd_DataMapNodeOfPersistentTransientMap.hxx>
#include<PTColStd_DataMapNodeOfTransientPersistentMap.hxx>
#include<PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent.hxx>
#include<PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent.hxx>
#include<PTColStd_DoubleMapOfTransientPersistent.hxx>
#include<PTColStd_MapPersistentHasher.hxx>
#include<PTColStd_PersistentTransientMap.hxx>
#include<PTColStd_TransientPersistentMap.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Persistent.hxx>
%}

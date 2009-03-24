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
#include <Handle_XmlLDrivers_DocumentRetrievalDriver.hxx>
#include <Handle_XmlLDrivers_DocumentStorageDriver.hxx>
#include <Handle_XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef.hxx>
#include <XmlLDrivers_DocumentRetrievalDriver.hxx>
#include <XmlLDrivers_DocumentStorageDriver.hxx>
#include <XmlLDrivers_NamespaceDef.hxx>
#include <XmlLDrivers_SequenceNodeOfSequenceOfNamespaceDef.hxx>
#include <XmlLDrivers_SequenceOfNamespaceDef.hxx>
%};

%import XmlLDrivers.i

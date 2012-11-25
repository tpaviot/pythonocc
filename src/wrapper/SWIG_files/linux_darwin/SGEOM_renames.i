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
%rename(DownCast) Handle_GEOM_SubShapeDriver::DownCast;
%rename(DownCast) Handle_GEOM_Application::DownCast;
%rename(DownCast) Handle_GEOM_Object::DownCast;
%rename(DownCast) Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient::DownCast;
%rename(DownCast) Handle_GEOM_Function::DownCast;
%rename(GetEngine) GEOM_Engine::GetEngine;
%rename(GetFunctionTreeID) GEOM_Function::GetFunctionTreeID;
%rename(GetDependencyID) GEOM_Function::GetDependencyID;
%rename(GetFunction) GEOM_Function::GetFunction;
%rename(GetReferencesTreeID) GEOM_Function::GetReferencesTreeID;
%rename(GetObject) GEOM_Object::GetObject;
%rename(GetReferencedObject) GEOM_Object::GetReferencedObject;
%rename(GetObjectID) GEOM_Object::GetObjectID;
%rename(GetSubShapeID) GEOM_Object::GetSubShapeID;

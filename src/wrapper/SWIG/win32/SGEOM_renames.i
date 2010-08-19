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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_GEOM_SubShapeDriver::DownCast;
%rename(downcast) Handle_GEOM_Object::DownCast;
%rename(downcast) Handle_GEOM_Application::DownCast;
%rename(downcast) Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient::DownCast;
%rename(downcast) Handle_GEOM_Function::DownCast;
%rename(getengine) GEOM_Engine::GetEngine;
%rename(getfunctiontreeid) GEOM_Function::GetFunctionTreeID;
%rename(getdependencyid) GEOM_Function::GetDependencyID;
%rename(getfunction) GEOM_Function::GetFunction;
%rename(getreferencestreeid) GEOM_Function::GetReferencesTreeID;
%rename(getobject) GEOM_Object::GetObject;
%rename(getreferencedobject) GEOM_Object::GetReferencedObject;
%rename(getobjectid) GEOM_Object::GetObjectID;
%rename(getsubshapeid) GEOM_Object::GetSubShapeID;

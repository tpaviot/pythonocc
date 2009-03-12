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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Viewer_BadValue.hxx>
#include<Handle_Viewer_View.hxx>
#include<Handle_Viewer_Viewer.hxx>
#include<Viewer_BadValue.hxx>
#include<Viewer_View.hxx>
#include<Viewer_Viewer.hxx>

// Additional headers necessary for compilation.

#include<Viewer2dTest.hxx>
#include<Viewer2dTest_DataMapIteratorOfDataMapOfText.hxx>
#include<Viewer2dTest_DataMapNodeOfDataMapOfText.hxx>
#include<Viewer2dTest_DataMapOfText.hxx>
#include<Viewer2dTest_DoubleMapIteratorOfDoubleMapOfInteractiveAndName.hxx>
#include<Viewer2dTest_DoubleMapNodeOfDoubleMapOfInteractiveAndName.hxx>
#include<Viewer2dTest_DoubleMapOfInteractiveAndName.hxx>
#include<Viewer2dTest_EventManager.hxx>
#include<ViewerTest.hxx>
#include<ViewerTest_DoubleMapIteratorOfDoubleMapOfInteractiveAndName.hxx>
#include<ViewerTest_DoubleMapNodeOfDoubleMapOfInteractiveAndName.hxx>
#include<ViewerTest_DoubleMapOfInteractiveAndName.hxx>
#include<ViewerTest_EventManager.hxx>
#include<ViewerTest_Tool.hxx>
#include<Viewer_BadValue.hxx>
#include<Viewer_View.hxx>
#include<Viewer_Viewer.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
#include<Standard_SStream.hxx>
%}

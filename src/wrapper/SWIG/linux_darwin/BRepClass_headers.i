/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

#include<BRepClass_Edge.hxx>
#include<BRepClass_FClass2dOfFClassifier.hxx>
#include<BRepClass_FClassifier.hxx>
#include<BRepClass_FaceClassifier.hxx>
#include<BRepClass_FaceExplorer.hxx>
#include<BRepClass_FacePassiveClassifier.hxx>
#include<BRepClass_Intersector.hxx>

// Additional headers necessary for compilation.

#include<BRepClass3d_DataMapIteratorOfMapOfInter.hxx>
#include<BRepClass3d_DataMapNodeOfMapOfInter.hxx>
#include<BRepClass3d_Intersector3d.hxx>
#include<BRepClass3d_MapOfInter.hxx>
#include<BRepClass3d_SClassifier.hxx>
#include<BRepClass3d_SolidClassifier.hxx>
#include<BRepClass3d_SolidExplorer.hxx>
#include<BRepClass3d_SolidPassiveClassifier.hxx>

// Needed headers necessary for compilation.

#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
%}

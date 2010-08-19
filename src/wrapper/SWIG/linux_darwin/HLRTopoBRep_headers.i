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

#include<HLRTopoBRep_DSFiller.hxx>
#include<HLRTopoBRep_Data.hxx>
#include<HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData.hxx>
#include<HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData.hxx>
#include<HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData.hxx>
#include<HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData.hxx>
#include<HLRTopoBRep_DataMapOfShapeFaceData.hxx>
#include<HLRTopoBRep_FaceData.hxx>
#include<HLRTopoBRep_FaceIsoLiner.hxx>
#include<HLRTopoBRep_ListIteratorOfListOfVData.hxx>
#include<HLRTopoBRep_ListNodeOfListOfVData.hxx>
#include<HLRTopoBRep_ListOfVData.hxx>
#include<HLRTopoBRep_MapOfShapeListOfVData.hxx>
#include<HLRTopoBRep_OutLiner.hxx>
#include<HLRTopoBRep_VData.hxx>
#include<Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData.hxx>
#include<Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData.hxx>
#include<Handle_HLRTopoBRep_ListNodeOfListOfVData.hxx>
#include<Handle_HLRTopoBRep_OutLiner.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<HLRAlgo_Projector.hxx>
#include<BRepTopAdaptor_MapOfShapeTool.hxx>
#include<Contap_Contour.hxx>
%}

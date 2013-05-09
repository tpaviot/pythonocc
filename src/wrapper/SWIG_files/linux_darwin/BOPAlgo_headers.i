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

#include<BOPAlgo_Algo.hxx>
#include<BOPAlgo_ArgumentAnalyzer.hxx>
#include<BOPAlgo_BOP.hxx>
#include<BOPAlgo_Builder.hxx>
#include<BOPAlgo_BuilderArea.hxx>
#include<BOPAlgo_BuilderFace.hxx>
#include<BOPAlgo_BuilderShape.hxx>
#include<BOPAlgo_BuilderSolid.hxx>
#include<BOPAlgo_CheckResult.hxx>
#include<BOPAlgo_CheckStatus.hxx>
#include<BOPAlgo_CheckerSI.hxx>
#include<BOPAlgo_ListOfCheckResult.hxx>
#include<BOPAlgo_Operation.hxx>
#include<BOPAlgo_PArgumentAnalyzer.hxx>
#include<BOPAlgo_PBOP.hxx>
#include<BOPAlgo_PBuilder.hxx>
#include<BOPAlgo_PPaveFiller.hxx>
#include<BOPAlgo_PWireEdgeSet.hxx>
#include<BOPAlgo_PaveFiller.hxx>
#include<BOPAlgo_SectionAttribute.hxx>
#include<BOPAlgo_Tools.hxx>
#include<BOPAlgo_WireEdgeSet.hxx>
#include<BOPAlgo_WireSplitter.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_BOPDS_PaveBlock.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_BOPInt_Context.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Face.hxx>
%}

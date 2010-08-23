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
%rename(downcast) Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation::DownCast;
%rename(nbvertex) GeomInt_LineTool::NbVertex;
%rename(vertex) GeomInt_LineTool::Vertex;
%rename(firstparameter) GeomInt_LineTool::FirstParameter;
%rename(lastparameter) GeomInt_LineTool::LastParameter;
%rename(firstpoint) GeomInt_TheMultiLineToolOfWLApprox::FirstPoint;
%rename(lastpoint) GeomInt_TheMultiLineToolOfWLApprox::LastPoint;
%rename(nbp2d) GeomInt_TheMultiLineToolOfWLApprox::NbP2d;
%rename(nbp3d) GeomInt_TheMultiLineToolOfWLApprox::NbP3d;
%rename(value) GeomInt_TheMultiLineToolOfWLApprox::Value;
%rename(tangency) GeomInt_TheMultiLineToolOfWLApprox::Tangency;
%rename(curvature) GeomInt_TheMultiLineToolOfWLApprox::Curvature;
%rename(makemlbetween) GeomInt_TheMultiLineToolOfWLApprox::MakeMLBetween;
%rename(whatstatus) GeomInt_TheMultiLineToolOfWLApprox::WhatStatus;

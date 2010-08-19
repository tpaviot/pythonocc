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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module SMDSAbs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include SMDSAbs_renames.i


%include SMDSAbs_required_python_modules.i


%include SMDSAbs_dependencies.i


%include SMDSAbs_headers.i

enum SMDSAbs_GeometryType {
	SMDSGeom_POINT,
	SMDSGeom_EDGE,
	SMDSGeom_TRIANGLE,
	SMDSGeom_QUADRANGLE,
	SMDSGeom_POLYGON,
	SMDSGeom_TETRA,
	SMDSGeom_PYRAMID,
	SMDSGeom_HEXA,
	SMDSGeom_PENTA,
	SMDSGeom_POLYHEDRA,
	};

enum SMDSAbs_ElementOrder {
	ORDER_ANY,
	ORDER_LINEAR,
	ORDER_QUADRATIC,
	};

enum SMDSAbs_ElementType {
	SMDSAbs_All,
	SMDSAbs_Node,
	SMDSAbs_Edge,
	SMDSAbs_Face,
	SMDSAbs_Volume,
	SMDSAbs_0DElement,
	SMDSAbs_NbElementTypes,
	};

enum SMDSAbs_EntityType {
	SMDSEntity_Node,
	SMDSEntity_0D,
	SMDSEntity_Edge,
	SMDSEntity_Quad_Edge,
	SMDSEntity_Triangle,
	SMDSEntity_Quad_Triangle,
	SMDSEntity_Quadrangle,
	SMDSEntity_Quad_Quadrangle,
	SMDSEntity_Polygon,
	SMDSEntity_Quad_Polygon,
	SMDSEntity_Tetra,
	SMDSEntity_Quad_Tetra,
	SMDSEntity_Pyramid,
	SMDSEntity_Quad_Pyramid,
	SMDSEntity_Hexa,
	SMDSEntity_Quad_Hexa,
	SMDSEntity_Penta,
	SMDSEntity_Quad_Penta,
	SMDSEntity_Polyhedra,
	SMDSEntity_Quad_Polyhedra,
	SMDSEntity_Last,
	};


// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
//GEOM_Object types

#define GEOM_COPY    0
#define GEOM_IMPORT  1

#define GEOM_POINT   2
#define GEOM_VECTOR  3
#define GEOM_PLANE   4
#define GEOM_LINE    5

#define GEOM_TORUS    6
#define GEOM_BOX      7
#define GEOM_CYLINDER 8
#define GEOM_CONE     9
#define GEOM_SPHERE   10

#define GEOM_PRISM      11
#define GEOM_REVOLUTION 12

#define GEOM_BOOLEAN   13
#define GEOM_PARTITION 14

#define GEOM_POLYLINE 15
#define GEOM_CIRCLE   16
#define GEOM_SPLINE   17
#define GEOM_ELLIPSE  18
#define GEOM_CIRC_ARC 19

#define GEOM_FILLET  20
#define GEOM_CHAMFER 21

#define GEOM_EDGE  22
#define GEOM_WIRE  23
#define GEOM_FACE  24
#define GEOM_SHELL 25
#define GEOM_SOLID 26
#define GEOM_COMPOUND 27

#define GEOM_SUBSHAPE 28

#define GEOM_PIPE 29

#define GEOM_ARCHIMEDE 30

#define GEOM_FILLING 31

#define GEOM_EXPLODE 32

#define GEOM_GLUED 33

#define GEOM_SKETCHER 34

#define GEOM_CDG 35

#define GEOM_FREE_BOUNDS 36

#define GEOM_GROUP 37

#define GEOM_BLOCK 38

#define GEOM_MARKER 39

#define GEOM_THRUSECTIONS 40

#define GEOM_THICKSOLID 41

#define GEOM_VARFILLET 42

#define GEOM_PLATE 43

#define GEOM_DECOMP 44

#define GEOM_DRAFT 45

#define GEOM_COMPOUNDFILTER 46

#define GEOM_SHAPES_ON_SHAPE 47

#define GEOM_ELLIPSE_ARC 48

#define GEOM_3DSKETCHER 49


//GEOM_Function types

#define COPY_WITH_REF    1
#define COPY_WITHOUT_REF 2

#define EXPORT_SHAPE 1
#define IMPORT_SHAPE 1

#define POINT_XYZ       		 1
#define POINT_XYZ_REF   		 2
#define POINT_CURVE_PAR 		 3
#define POINT_LINES_INTERSECTION 4
#define POINT_SURFACE_PAR        5
//#define POINT_FACE_PAR 4

#define VECTOR_TWO_PNT  1
#define VECTOR_DX_DY_DZ 2
#define VECTOR_TANGENT_CURVE_PAR 3
#define VECTOR_PNT_DX_DY_DZ 4
#define VECTOR_FACE_NORMALE 5

#define PLANE_PNT_VEC      1
#define PLANE_FACE         2
#define PLANE_THREE_PNT    3
#define PLANE_TANGENT_FACE 4
#define PLANE_2_VEC        5
#define PLANE_LCS          6

#define LINE_TWO_PNT   1
#define LINE_PNT_DIR   2
#define LINE_TWO_FACES 3

#define TRANSLATE_TWO_POINTS      1
#define TRANSLATE_VECTOR          2
#define TRANSLATE_TWO_POINTS_COPY 3
#define TRANSLATE_VECTOR_COPY     4
#define TRANSLATE_1D              5
#define TRANSLATE_2D              6
#define TRANSLATE_XYZ             7
#define TRANSLATE_XYZ_COPY        8
#define TRANSLATE_VECTOR_DISTANCE 9
#define TRANSLATE_ALONG_RAIL      10

#define ROTATE                    1
#define ROTATE_COPY               2
#define ROTATE_1D                 3
#define ROTATE_2D                 4
#define ROTATE_THREE_POINTS       5
#define ROTATE_THREE_POINTS_COPY  6

#define MIRROR_PLANE      1
#define MIRROR_PLANE_COPY 2
#define MIRROR_AXIS       3
#define MIRROR_AXIS_COPY  4
#define MIRROR_POINT      5
#define MIRROR_POINT_COPY 6

#define OFFSET_SHAPE      			1
#define OFFSET_SHAPE_COPY 			2
#define OFFSET_SHAPE_PLANAR 		3
#define OFFSET_SHAPE_COPY_PLANAR 	4

#define SCALE_SHAPE             1
#define SCALE_SHAPE_COPY        2
#define SCALE_SHAPE_AFFINE      3
#define SCALE_SHAPE_AFFINE_COPY 4
#define SCALE_SHAPE_AXES        5
#define SCALE_SHAPE_AXES_COPY   6

#define POSITION_SHAPE      1
#define POSITION_SHAPE_COPY 2
#define POSITION_SHAPE_FROM_GLOBAL      3
#define POSITION_SHAPE_FROM_GLOBAL_COPY 4

#define TORUS_RR         1
#define TORUS_PNT_VEC_RR 2

#define BOX_DX_DY_DZ  1
#define BOX_TWO_PNT   2

#define CYLINDER_R_H         1
#define CYLINDER_PNT_VEC_R_H 2

#define CONE_R1_R2_H         1
#define CONE_PNT_VEC_R1_R2_H 2

#define SPHERE_R     1
#define SPHERE_PNT_R 2

#define PRISM_BASE_VEC_H   		 1
#define PRISM_BASE_TWO_PNT 		 2
#define PRISM_BASE_VEC_H_ANG     3
#define PRISM_BASE_VEC_H_2WAYS   4
#define PRISM_BASE_TWO_PNT_2WAYS 5
#define PRISM_BASE_DXDYDZ        6
#define PRISM_BASE_DXDYDZ_2WAYS  7

#define REVOLUTION_BASE_AXIS_ANGLE        1
#define REVOLUTION_BASE_AXIS_ANGLE_OFFSET 2
#define REVOLUTION_BASE_AXIS_ANGLE_2WAYS  3

#define PIPE_BASE_PATH 1
#define PIPE_DIFFERENT_SECTIONS 2
#define PIPE_SHELL_SECTIONS 3
#define PIPE_RIGID 4
#define PIPE_SHELLS_WITHOUT_PATH 5
#define PIPE_BI_NORMAL_ALONG_VECTOR 6

#define THRUSECTIONS_RULED 1
#define THRUSECTIONS_SMOOTHED 2

#define BOOLEAN_COMMON  1
#define BOOLEAN_CUT     2
#define BOOLEAN_FUSE    3
#define BOOLEAN_SECTION 4

#define BOOLEAN_COMMON_OLD  5
#define BOOLEAN_CUT_OLD     6
#define BOOLEAN_FUSE_OLD    7
#define BOOLEAN_SECTION_OLD 8

#define PARTITION_PARTITION 1
#define PARTITION_HALF      2
#define PARTITION_NO_SELF_INTERSECTIONS 3

#define POLYLINE_POINTS 1

#define CIRCLE_THREE_PNT      1
#define CIRCLE_PNT_VEC_R      2
#define CIRCLE_CENTER_TWO_PNT 3

#define SPLINE_BEZIER        1
#define SPLINE_INTERPOLATION 2

#define ELLIPSE_PNT_VEC_RR         1
#define ELLIPSE_THREE_PNT          2
#define ELLIPSE_ARC_CENTER_TWO_PNT 3

#define CIRC_ARC_THREE_PNT 1
#define CIRC_ARC_CENTER    2

#define FILLET_SHAPE_ALL   		1
#define FILLET_SHAPE_EDGES 		2
#define FILLET_SHAPE_FACES 		3
#define FILLET_SHAPE_VERTEX_2D	4
#define FILLET_SHAPE_EDGES_2R   5
#define FILLET_SHAPE_FACES_2R   6

#define CHAMFER_SHAPE_ALL   	1
#define CHAMFER_SHAPE_EDGE  	2
#define CHAMFER_SHAPE_FACES 	3
#define CHAMFER_SHAPE_EDGES_2D	4
#define CHAMFER_SHAPE_EDGES     5
#define CHAMFER_SHAPE_EDGE_AD   6
#define CHAMFER_SHAPE_FACES_AD  7
#define CHAMFER_SHAPE_EDGES_AD  8

#define WIRE_EDGES          1
#define FACE_WIRE           2
#define SHELL_FACES         3
#define SOLID_SHELL         4
#define SOLID_SHELLS        5
#define COMPOUND_SHAPES     6
#define SUBSHAPE_SORTED     7
#define SUBSHAPE_NOT_SORTED 8
#define FACE_WIRES          9
#define REVERSE_ORIENTATION 10

#define ARCHIMEDE_TYPE 1

// Shape Healing operators
#define SHAPE_PROCESS      1
#define SUPPRESS_FACES     2
#define CLOSE_CONTOUR      3
#define REMOVE_INT_WIRES   4
#define FILL_HOLES         5
#define SEWING             6
#define DIVIDE_EDGE        7
#define CHANGE_ORIENTATION 8

#define BASIC_FILLING 1

#define GLUE_FACES 1
#define GLUE_FACES_BY_LIST 2

#define SKETCHER_NINE_DOUBLS 1
#define SKETCHER_PLANE 2

#define CDG_MEASURE 1

#define GROUP_FUNCTION 1

#define SHAPES_ON_SHAPE 1

// Blocks
#define BLOCK_FACE_FOUR_PNT       1
#define BLOCK_FACE_FOUR_EDGES     2
#define BLOCK_FACE_TWO_EDGES      3
#define BLOCK_SIX_FACES           4
#define BLOCK_TWO_FACES           5
#define BLOCK_MULTI_TRANSFORM_1D  6
#define BLOCK_MULTI_TRANSFORM_2D  7
#define BLOCK_COMPOUND_GLUE       8
#define BLOCK_REMOVE_EXTRA        9
#define BLOCK_COMPOUND_IMPROVE    10

// Marker
#define MARKER_CS 1

// ThickSolid
#define THICKSOLID 1

// VarFillet
#define VARFILLET 1

// Curve
#define CURVE_SPLIT_BY_PAR		1
#define CURVE_SPLIT_BY_CURVE	2

// Face
#define FACE_THREE_PNT           3
#define FACE_FOUR_PNT            4
#define FACE_OBJ_H_W             5
#define FACE_H_W                 6

// Plate
#define PLATE_BY_SHAPES_LIST	1

// Drafts
#define DRAFT_BY_FACE_PLN_ANG 1
#define DRAFT_BY_FACE_STA_ANG 2

//Disk
#define DISK_PNT_VEC_R    1
#define DISK_THREE_PNT    2
#define DISK_R            3


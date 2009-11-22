from __future__ import with_statement

# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2008 Jelle Feringa (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

'''

This modules makes the construction of geometry a little easier

'''
from OCC.ShapeFix import *
from OCC.BRepOffsetAPI import *
from OCC.BRepBuilderAPI import *
from OCC.Utils.Context import assert_isdone
from OCC.gp import *

from OCC.KBE.TypesLookup import GeometryLookup, ShapeToTopology

TOLERANCE = 1e-6

#===============================================================================
# TOPOLOGY
#===============================================================================

def make_solid(*args):
    sld = BRepBuilderAPI_MakeSolid( *args )
    with assert_isdone(sld, 'failed to produce solid'):
        result = sld.Solid()
        sld.Delete()
        return result

def make_shell(*args):
    shell = BRepBuilderAPI_MakeShell( *args )
    with assert_isdone(shell, 'failed to produce shell'):
        result = shell.Shell()
        shell.Delete()
        return result
    
def make_face(*args):
    face = BRepBuilderAPI_MakeFace( *args )
    with assert_isdone(face, 'failed to produce face'):
        result = face.Face()
        face.Delete()
        return result

def make_edge(*args):
    edge = BRepBuilderAPI_MakeEdge(*args)
    with assert_isdone(edge, 'failed to produce edge'):
        result = edge.Edge()
        edge.Delete()
        return result

def make_vertex(*args):
    vert = BRepBuilderAPI_MakeVertex(*args)
    with assert_isdone(vert, 'failed to produce vertex'):
        result = vert.Vertex()
        vert.Delete()
        return result
        
def make_wire(*args):
    # if we get an iterable, than add all edges to wire builder
    if isinstance(args[0], list) or isinstance(args[0], tuple):
        wire = BRepBuilderAPI_MakeWire()
        for i in args[0]:
                wire.Add(i)
        wire.Build()
        return wire.Wire()

    wire = BRepBuilderAPI_MakeWire(*args)
    wire.Build()
    with assert_isdone(wire, 'failed to produce wire'):
        result = wire.Wire()
#        wire.Delete()
        return result

def make_polygon(args, closed=False):
    poly = BRepBuilderAPI_MakePolygon()
    for pt in args:
        # support nested lists
        if isinstance(pt, list) or isinstance(pt, tuple):
            for i in pt:
                poly.Add(i)
        else:
            poly.Add(pt)
    if closed:
        poly.Close()
    poly.Build()
    
    with assert_isdone(poly, 'failed to produce wire'):
        result = poly.Wire()
#        wire.Delete()
        return result

def make_closed_polygon(*args):
    poly = BRepBuilderAPI_MakePolygon()
    for pt in args:
        if isinstance(pt, list) or isinstance(pt, tuple):
            for i in pt:
                poly.Add(i)
        else:
            poly.Add(pt)
    poly.Build()
    poly.Close()
    with assert_isdone(poly, 'failed to produce wire'):
        result = poly.Wire()
#        wire.Delete()
        return result

def add_wire_to_face(face, wire, reverse=False):
    '''
    apply a wire to a face
    use reverse to set the orientation of the wire to opposite
    @param face:
    @param wire:
    @param reverse:
    '''
    face = BRepBuilderAPI_MakeFace(face)
    if reverse:
        wire.Reverse()
    face.Add(wire)
    result = face.Face()
    face.Delete()
    return result

def sew_shapes( shapes, tolerance=0.001 ):
#    sew = BRepBuilderAPI_Sewing(tolerance, True, True, True, False)
#    sew = BRepBuilderAPI_Sewing(1e-3, True, False, False, False)
    sew = BRepBuilderAPI_Sewing(tolerance)
    sew.SetFloatingEdgesMode(True)
    for shp in shapes:
        if isinstance(shp, list):
            for i in shp:
                sew.Add(i)
        else:
            sew.Add(shp)
    sew.Perform()
    print 'n degenerated shapes',sew.NbDegeneratedShapes()
    print 'n deleted faces:',sew.NbDeletedFaces()
    print 'n free edges',sew.NbFreeEdges()
    print 'n multiple edges:',sew.NbMultipleEdges()
    
    result = sew.SewedShape()
    # This fucks up big time!
#    sew.Delete()
    return result

#===============================================================================
# PRIMITIVES
#===============================================================================

def make_circle(pnt, radius):
    '''
    returns an edge 
    @param pnt:
    @param radius:
    '''
    circ = gp_Circ()
    circ.SetLocation(pnt)
    circ.SetRadius(radius)
    return make_edge(circ)

def make_line(pnt1, pnt2):
    return make_edge(pnt1, pnt2)

def make_evolved(spine, profile):
    evol = BRepOffsetAPI_MakeEvolved(spine, profile)
    with assert_isdone(evol, 'failed buillding evolved'):
        evol.Build()
        return evol.Evolved()

def make_pipe(spine, profile):
    pipe = BRepOffsetAPI_MakePipe(spine, profile)
    with assert_isdone(pipe, 'failed building pipe'):
        pipe.Build()
        return pipe.Shape()
    
def make_prism(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakePipe()

def make_prism_shell(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakePipeShell()

def make_offset(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakeOffset()

def make_draft(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakeDraft()

def make_filling(profile, vec):
    '''
    makes a n-sided patch from constraints
    '''
    return BRepOffsetAPI_MakeFilling()

def make_loft(list_of_wires, ruled=False, tolerance=TOLERANCE):
    sections = BRepOffsetAPI_ThruSections(False, ruled, tolerance)
    for wi in list_of_wires:
        sections.AddWire(wi)
    
    sections.CheckCompatibility(True)
    sections.Build()
    with assert_isdone(sections, 'failed lofting'):
        te = ShapeToTopology()
        loft = te(sections.Shape())
#        sections.Delete()
        return loft

#===============================================================================
# ---FIXES---
#===============================================================================
def boolean_cut(shapeToCutFrom, cuttingShape):
    try:
        from OCC.BRepAlgoAPI import BRepAlgoAPI_Cut
        cut = BRepAlgoAPI_Cut(shapeToCutFrom, cuttingShape)
        print 'can work?', cut.BuilderCanWork()
        _error = {
                        0: '- Ok', 
                        1: '- The Object is created but Nothing is Done', 
                        2: '- Null source shapes is not allowed',
                        3: '- Check types of the arguments',
                        4: '- Can not allocate memory for the DSFiller', 
                        5: '- The Builder can not work with such types of arguments', 
                        6: '- Unknown operation is not allowed',
                        7: '- Can not allocate memory for the Builder',
                } 
        print 'error status:', _error[cut.ErrorStatus()]
        cut.RefineEdges()
        cut.FuseEdges()
        shp = cut.Shape()
        cut.Destroy()
        return shp
    except:
        print 'FAILED TO BOOLEAN CUT'
        return shapeToCutFrom

def boolean_cut_old(shapeToCutFrom, cuttingShape):
    from OCC.BRepAlgo import BRepAlgo_Cut
    cut = BRepAlgo_Cut(shapeToCutFrom, cuttingShape)
    #cut.RefineEdges()
    #cut.FuseEdges()
    shp = cut.Shape()
    return shp

def boolean_fuse(shapeToCutFrom, joiningShape):
    from OCC.BRepAlgoAPI import BRepAlgoAPI_Fuse
    join = BRepAlgoAPI_Fuse(shapeToCutFrom, joiningShape)
    join.RefineEdges()
    join.FuseEdges()
    shape = join.Shape()
    join.Destroy()
    return shape

def boolean_fuse_old(shapeToCutFrom, joiningShape):
    from OCC.BRepAlgo import BRepAlgo_Fuse
    join = BRepAlgo_Fuse(shapeToCutFrom, joiningShape)
    shape = join.Shape()
    join.Delete()
    return shape

#===============================================================================
# ---FIXES---
#===============================================================================

def fix_shape(shp, tolerance=1e-3):
    te = ShapeToTopology()
    fix = ShapeFix_Shape(shp)
#    fix.SetMaxTolerance(tolerance)
    fix.SetFixFreeShellMode(True)
    sf = fix.FixShellTool().GetObject()
    sf.SetFixOrientationMode(True)
    fix.LimitTolerance(tolerance)
    fix.Perform()
    return fix.Shape()

def fix_face(shp, tolerance=1e-3):
    fix = ShapeFix_Face(shp)
    fix.SetMaxTolerance(tolerance)
    fix.Perform()
    return fix.Face()
#===============================================================================
# --- TRANSFORM ---
#===============================================================================

def translate_topods_from_vector(brep, vec, copy=False):
    '''
    translate a brep over a vector
    @param brep:    the Topo_DS to translate
    @param vec:     the vector defining the translation
    @param copy:    copies to brep if True
    '''
    trns = gp_Trsf()
    trns.SetTranslation(vec)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    brep_trns.Build()
    return brep_trns.Shape()

def mirror_pnt_dir(brep, pnt, direction, copy=False):
    '''
    
    @param brep:
    @param line:
    '''
    trns = gp_Trsf()
    trns.SetMirror(gp_Ax1(pnt, direction))
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce mirror'):
        brep_trns.Build()
        return brep_trns.Shape()

def mirror_axe2(brep, axe2, copy=False):
    '''
    
    @param brep:
    @param line:
    '''
    trns = gp_Trsf()
    trns.SetMirror(axe2)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce mirror'):
        brep_trns.Build()
        return brep_trns.Shape()

def rotate(brep, axe, degree, copy=False):
    '''
    
    @param brep:
    @param axe:
    @param degree:
    '''
    from math import radians
    trns = gp_Trsf()
    trns.SetRotation(axe, radians(degree))
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce rotation'):
        brep_trns.Build()
        return brep_trns.Shape()
    
def scale(brep, pnt, scale, copy=False):
    '''
    
    @param brep:
    @param axe:
    @param degree:
    '''
    trns = gp_Trsf()
    trns.SetScale(pnt, scale)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce scaling'):
        brep_trns.Build()
        return brep_trns.Shape()

#===============================================================================
# MONKEY PATCH GP
# THIS SHOULD GO SOMEWHERE ELSE!!!
#===============================================================================
def point_to_vector(self):
    return gp_Vec(self.XYZ())

def vector_to_point(self):
    return gp_Pnt(self.XYZ())

def dir_to_vec(self):
    return gp_Vec(self)

def add_vector_to_point(self, vec):
    return (self.as_vec() + vec).as_pnt() 

gp_Vec.as_pnt  = vector_to_point
gp_Pnt.as_vec  = point_to_vector
gp_Pnt.add_vec = add_vector_to_point
gp_Dir.as_vec  = dir_to_vec 



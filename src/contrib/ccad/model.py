"""
Description
----------
CCAD is a python text-based solid modeller and displayer based on pythonocc.
model.py contains classes and functions for modelling.

To keep dependencies low, numpy is not used, but it sure would make
things easier.  Well, from_svg got ridiculous without numpy, so it's a
local import there.  Probably should make the transformation
everywhere now.

Author
------
Charles Sharman

License
-------
Distributed under the GNU LESSER GENERAL PUBLIC LICENSE Version 3.
View LICENSE for details.

Revision History
----------------
12/17/11: Began
01/09/12: Merged shapes and primitives into model.py
to 1/11/14: Various Updates
1/20/14: Replaced == None with is None

Philosophy
----------

1. Edges are continuous lines in 3D space.  There should be no reason
   to distinguish between them and OCC curves.  Wires are collections
   of edge connections.  Faces are continuous surfaces in 3D space.
   There should be no reason to distinguish between them and OCC
   surfaces.  Shells are collections of face connections.

2. The end-user should not ever have to call pythonOCC directly.  ccad
   should handle all things someone might want to do in CAD.

To Do
-----

1. Allow shells (and 2D curves?) in the boolean operations.

2. Allow shell returns from cylinder, sphere, box, wedge, cone, torus.

3. More robust error handling--usually shows a buried SWIG issue,
   which isn't helpful.

4. Enhance the options to various routines to more encompass OCC's
   capabilities.

5. Add parabola, hyperbola edges

6. Add edge intersection

7. I never got OCC's concept of orientation in 3d.  That caused a
   liberal use of .fix statements.  It would be nice to get this right.

8. Distinction between face, wire, solid, etc. can get muddled after
   certain operations, particularly boolean.  Ought to be more careful
   about this.
"""

from os import path as _path
import sys as _sys
import re  as _re# Needed for svg
import math as _math

#from OCC.ChFi3d import *
#from OCC.BlockFix import *
from OCC.Bnd import Bnd_Box as _Bnd_Box
#from OCC.BOP import *
from OCC.BRep import BRep_Builder as _BRep_Builder, BRep_Tool as _BRep_Tool
from OCC import BRepAlgo as _BRepAlgo
from OCC import BRepAlgoAPI as _BRepAlgoAPI
from OCC.BRepBndLib import BRepBndLib as _BRepBndLib
from OCC import BRepBuilderAPI as _BRepBuilderAPI
from OCC.BRepCheck import BRepCheck_Analyzer as _BRepCheck_Analyzer
from OCC.BRepFeat import BRepFeat_Gluer as _BRepFeat_Gluer
from OCC import BRepFilletAPI as _BRepFilletAPI
from OCC.BRepGProp import BRepGProp as _BRepGProp
from OCC import BRepOffsetAPI as _BRepOffsetAPI
from OCC import BRepPrimAPI as _BRepPrimAPI
from OCC import BRepTools as _BRepTools
from OCC.GC import (GC_MakeArcOfCircle as _GC_MakeArcOfCircle,
                    GC_MakeArcOfEllipse as _GC_MakeArcOfEllipse)
from OCC.GCPnts import (GCPnts_QuasiUniformDeflection as
                        _GCPnts_QuasiUniformDeflection)
from OCC.Geom import Geom_BezierCurve as _Geom_BezierCurve
from OCC import GeomAbs as _GeomAbs
from OCC.GeomAdaptor import (GeomAdaptor_Curve as _GeomAdaptor_Curve,
                             GeomAdaptor_Surface as _GeomAdaptor_Surface)
from OCC.GeomAPI import GeomAPI_PointsToBSpline as _GeomAPI_PointsToBSpline
from OCC import gp as _gp
from OCC.GProp import GProp_GProps as _GProp_GProps
from OCC import IFSelect as _IFSelect
from OCC.IGESControl import (IGESControl_Controller as _IGESControl_Controller,
                             IGESControl_Reader as _IGESControl_Reader,
                             IGESControl_Writer as _IGESControl_Writer)
from OCC.Interface import (
            Interface_Static_SetCVal as _Interface_Static_SetCVal,
            Interface_Static_SetIVal as _Interface_Static_SetIVal,
            Interface_Static_SetRVal as _Interface_Static_SetRVal)
from OCC.LocOpe import LocOpe_FindEdges as _LocOpe_FindEdges
from OCC.ShapeFix import ShapeFix_Face as _ShapeFix_Shape
from OCC import STEPControl as _STEPControl
from OCC.StlAPI import StlAPI_Writer as _StlAPI_Writer
from OCC.TColgp import TColgp_Array1OfPnt as _TColgp_Array1OfPnt
from OCC.TColStd import TColStd_Array1OfReal as _TColStd_Array1OfReal
from OCC import TopAbs as _TopAbs
from OCC.TopoDS import (TopoDS_edge as _TopoDS_edge,
                        TopoDS_face as _TopoDS_face,
                        TopoDS_shell as _TopoDS_shell,
                        TopoDS_vertex as _TopoDS_vertex,
                        TopoDS_wire as _TopoDS_wire)
from OCC import TopoDS as _TopoDS
from OCC.TopExp import (TopExp_Explorer as _TopExp_Explorer,
                        TopExp_MapShapesAndAncestors as 
                        _TopExp_MapShapesAndAncestors)
from OCC.TopOpeBRep import (TopOpeBRep_FacesIntersector as
                            _TopOpeBRep_FacesIntersector)
from OCC.TopOpeBRepTool import (TopOpeBRepTool_FuseEdges as
                                _TopOpeBRepTool_FuseEdges)
from OCC import TopTools as _TopTools

# Generic Functions
def _explode_args(args):
    """
    Takes a list of arguments with multiple depths and flattens it.
    """
    retval = []
    for arg in args:
        try:
            a = len(arg)
        except TypeError:
            a = -1
        if a >= 0 and type(a) != type(''):
            retval = retval + _explode_args(arg)
        else:
            retval.append(arg)
    return retval


# Shape Functions
def _translate(s1, pdir):
    m = _gp.gp_Trsf()
    m.SetTranslation(_gp.gp_Vec(pdir[0], pdir[1], pdir[2]))
    trf = _BRepBuilderAPI.BRepBuilderAPI_Transform(m)
    trf.Perform(s1.shape, 1)
    return trf.Shape()


def _rotate(s1, pabout, pdir, angle):
    m = _gp.gp_Trsf()
    m.SetRotation(_gp.gp_Ax1(_gp.gp_Pnt(pabout[0], pabout[1], pabout[2]),
                             _gp.gp_Dir(pdir[0], pdir[1], pdir[2])), angle)
    trf = _BRepBuilderAPI.BRepBuilderAPI_Transform(m)
    trf.Perform(s1.shape, 1)
    return trf.Shape()


def _mirror(s1, pabout, pdir):
    m = _gp.gp_Trsf()
    m.SetMirror(_gp.gp_Ax2(_gp.gp_Pnt(pabout[0], pabout[1], pabout[2]),
                           _gp.gp_Dir(pdir[0], pdir[1], pdir[2])))
    trf = _BRepBuilderAPI.BRepBuilderAPI_Transform(m)
    trf.Perform(s1.shape, 1)
    return trf.Shape()


def _scale(s1, sx=1.0, sy=1.0, sz=1.0):
    m = _gp.gp_GTrsf()
    m.SetVectorialPart(_gp.gp_Mat(sx, 0, 0, 0, sy, 0, 0, 0, sz))
    trf = _BRepBuilderAPI.BRepBuilderAPI_GTransform(s1.shape, m, False)
    trf.Build()
    return trf.Shape()


def translate(s1, pdir):
    """
    moves the shape
    """
    return eval(s1.stype + '(_translate(s1, pdir))')


def rotate(s1, pabout, pdir, angle):
    """
    rotates the shape
    """
    return eval(s1.stype + '(_rotate(s1, pabout, pdir, angle))')


def rotatex(s1, angle):
    """
    rotates the shape about (0.0, 0.0, 0.0) around (1.0, 0.0, 0.0)
    """
    return rotate(s1, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0), angle)


def rotatey(s1, angle):
    """
    rotates the shape about (0.0, 0.0, 0.0) around (0.0, 1.0, 0.0)
    """
    return rotate(s1, (0.0, 0.0, 0.0), (0.0, 1.0, 0.0), angle)


def rotatez(s1, angle):
    """
    rotates the shape about (0.0, 0.0, 0.0) around (0.0, 0.0, 1.0)
    """
    return rotate(s1, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), angle)


def mirror(s1, pabout, pdir):
    """
    mirrors the shape
    """
    return eval(s1.stype + '(_mirror(s1, pabout, pdir))')


def mirrorx(s1):
    """
    mirrors s1 about (0.0, 0.0, 0.0) in the x-direction
    """
    return mirror(s1, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0))


def mirrory(s1):
    """
    mirrors s1 about (0.0, 0.0, 0.0) in the y-direction
    """
    return mirror(s1, (0.0, 0.0, 0.0), (0.0, 1.0, 0.0))


def mirrorz(s1):
    """
    mirrors s1 about (0.0, 0.0, 0.0) in the z-direction
    """
    return mirror(s1, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0))


def scale(s1, sfx, sfy=None, sfz=None):
    """
    Scales shape s1 by a different scale factor in all 3 dimensions.
    If sfy and sfz are left undefined, all 3 dimensions are scaled by
    sfx.
    """
    if sfy and sfz:
        return eval(s1.stype + '(_scale(s1, sfx, sfy, sfz))')
    else:
        return eval(s1.stype + '(_scale(s1, sfx, sfx, sfx))')


def scalex(s1, sfx):
    """
    Scales shape s1 by scale factor sfx in the x-dimension
    """
    return eval(s1.stype + '(_scale(s1, sfx, 1.0, 1.0))')


def scaley(s1, sfy):
    """
    Scales shape s1 by scale factor sfy in the y-dimension
    """
    return eval(s1.stype + '(_scale(s1, 1.0, sfy, 1.0))')


def scalez(s1, sfz):
    """
    Scales shape s1 by scale factor sfz in the z-dimension
    """
    return eval(s1.stype + '(_scale(s1, 1.0, 1.0, sfz))')


def reverse(s1):
    retval = s1.copy()
    retval.reverse()
    return retval


# Face Functions
def _raw_faces_same_domain(f1, f2, skip_fits=0):
    """
    If f1 and f2 are in the same domain, returns 1; otherwise, returns
    0.  FacesIntersector is painfully slow.  I don't think the
    intersection calculation is necessary, but I couldn't find a
    stand-alone OCC domain checker. ***
    """
    # Didn't Work.  Always empty.
    #fi = TopOpeBRepDS_DataStructure()
    #i1 = fi.AddShape(f1)
    #print fi.ShapeSameDomain(f2).IsEmpty():

    # Pre-screen, since FacesIntersector is slow
    b1 = _BRep_Tool()
    t1 = _GeomAdaptor_Surface(b1.Surface(_TopoDS_face(f1))).GetType()
    t2 = _GeomAdaptor_Surface(b1.Surface(_TopoDS_face(f2))).GetType()
    if t1 != t2:
        return 0
    else:
        if not skip_fits or (skip_fits and t1 <= _GeomAbs.GeomAbs_Torus):
            fi = _TopOpeBRep_FacesIntersector()
            fi.Perform(f1, f2)
            return fi.SameDomain()
        else:
            return 0


def _raw_faces_merge(f1, f2):
    """
    Merges two raw faces in the same domain that share common edge(s)
    into a single face.
    """
    # Attempt with Fuse didn't work
    #new_face = BRepAlgoAPI_Fuse(f1, f2).Shape()
    #new_face = BRepAlgo_Fuse(f1, f2).Shape()
    #print _raw_type(new_face)

    # Attempt with sewing didn't work
    #b = BRepBuilderAPI_Sewing()
    #b.Add(f1)
    #b.Add(f2)
    #b.Perform()
    #new_face = b.SewedShape()
    #print 'new_face type', _raw_type(new_face)
    #new_faces[index] = new_face

    ## This worked, but only sometimes.  Error
    ## reporting wasn't sufficient enough to discover
    ## cause.
    #lfs = TopTools_ListOfShape()
    #print f1.Orientation(), f2.Orientation()
    # Didn't help
    #if f1.Orientation() != f2.Orientation():
    #    f2.Reverse()
    #lfs.Append(f1)
    #lfs.Append(f2)
    #b = TopOpeBRepBuild_FuseFace(TopTools_ListOfShape(), lfs, 1)
    ##b.PerformEdge()
    #b.PerformFace()
    #if not b.IsModified():
    #    print 'Error: Face fusion failed'
    #    #return face(f1), face(f2)
    #lfs = b.LFuseFace()
    #new_face = lfs.First()
    #new_faces[index] = new_face

    # The orientations were derived by trial and error.
    # Expect problems. ***
    other_wires = []
    ow1 = _BRepTools.BRepTools_OuterWire(_TopoDS_face(f1))
    ow1o = ow1.Orientation()
    ex1w = _TopExp_Explorer(f1, _TopAbs.TopAbs_WIRE)
    while ex1w.More():
        cw = ex1w.Current()
        if cw != ow1:
            cw.Orientation(_TopAbs.TopAbs_Compose(ow1o, cw.Orientation()))
            other_wires.append(cw)
        ex1w.Next()
    ex1e = _BRepTools.BRepTools_WireExplorer(_TopoDS_wire(ow1))
    e1s = []
    while ex1e.More():
        e1s.append(ex1e.Current())
        ex1e.Next()
    ow2 = _BRepTools.BRepTools_OuterWire(_TopoDS_face(f2))
    ow2o = ow2.Orientation()
    ex2w = _TopExp_Explorer(f2, _TopAbs.TopAbs_WIRE)
    while ex2w.More():
        cw = ex2w.Current()
        if cw != ow2:
            cw.Orientation(_TopAbs.TopAbs_Compose(ow2o, cw.Orientation()))
            other_wires.append(cw)
        ex2w.Next()
    ex2e = _BRepTools.BRepTools_WireExplorer(_TopoDS_wire(ow2))
    e2s = []
    while ex2e.More():
        e2s.append(ex2e.Current())
        ex2e.Next()
    # Find all places where wires are connected
    c1s = []
    c2s = []
    e1_hashes = map(lambda x: x.__hash__(), e1s)
    e2_hashes = map(lambda x: x.__hash__(), e2s)
    for index1, e1 in enumerate(e1_hashes):
        try:
            index2 = e2_hashes.index(e1)
        except:
            index2 = -1
        if index2 > -1:
            c1s.append(index1)
            c2s.append(index2)
    # Can only handle one continuous edge merge now.
    # Multiple edge merges sometimes imply holes and
    # sometimes don't.  Truncate c1s, c2s
    # accordingly. ***
    if len(c1s) == 0:
        print 'No common edges'
    if len(c1s) > 1:
        print 'c1-', c1s, c2s, len(e1s), len(e2s)
        min_index = 0
        max_index = 0
        while (max_index < len(c1s)-1 and
               c1s[max_index+1] - c1s[max_index] == 1):
            max_index = max_index + 1
        if max_index < len(c1s)-1:
            while (min_index > -(len(c1s)-1) and
                   c1s[min_index] - c1s[min_index-1] == 1):
                min_index = min_index - 1
        if min_index < 0:
            c1s = c1s[min_index:] + c1s[:max_index+1]
            c2s = c2s[min_index:] + c2s[:max_index+1]
        else:
            c1s = c1s[:max_index+1]
            c2s = c2s[:max_index+1]
        print 'c1+', c1s, c2s, len(e1s), len(e2s)
    # Create the merged wire
    b = _BRepBuilderAPI.BRepBuilderAPI_MakeWire()
    ds = []
    for count in range(len(e1s)):
        if count in c1s:
            if len(c2s) < len(e2s):  # Make sure they're not all common
                index1 = c1s.index(count)
                count2 = c2s[index1]
                while count2 in c2s:
                    count2 = (count2 + 1) % len(e2s)
                b2 = _BRepBuilderAPI.BRepBuilderAPI_MakeWire()
                while count2 not in c2s:
                    b2.Add(e2s[count2])
                    count2 = (count2 + 1) % len(e2s)
                b2.Build()
                b.Add(_TopoDS_wire(b2.Wire()))
        else:
            b.Add(e1s[count])
            ds.append(edge(e1s[count]))
    b.Build()
    w = b.Wire()
    b = _ShapeFix_Shape(w)
    b.Perform()
    w = b.Shape()
    # Create the fused face
    brt = _BRep_Tool()
    s = brt.Surface(_TopoDS_face(f1))
    bf = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(s, _TopoDS_wire(w))
    for other_wire in other_wires:
        if ow1o != ow2o:
            other_wire.Reverse()
        bf.Add(_TopoDS_wire(other_wire))
    f = bf.Face()
    # Fix wire mess orientation mess ups.  It would be
    # nicer to avoid this in the first place
    # above. ***
    # ShapeFix creates new edges, which hinders
    # multiple merges.  Unfortunately, only an
    # orientation fix had problems too. ***
    b = _ShapeFix_Shape(f)
    b.Perform()
    f = b.Shape()
    #b = ShapeFix_Face(f)
    #bw = b.FixWireTool().GetObject()
    #bw.FixReorder()
    #b.FixOrientation()
    #f = b.Face()
    # Since I use f1's surface, I must orient
    # the output the same way.
    if ow1o == _TopAbs.TopAbs_REVERSED:
        f.Reverse()
    return f


# Solid Functions
def fuse(s1, s2, refine=0):
    """
    Performs a boolean fuse between solids s1 and s2 and returns the
    result as a new solid.
    """
    #return solid(BRepAlgoAPI_Fuse(s1.shape, s2.shape).Shape())
    b1 = _BRepAlgoAPI.BRepAlgoAPI_Fuse(s1.shape, s2.shape)
    if refine:
        # Fuses edges along the way however doesn't fuse faces
        b1.RefineEdges()
    return solid(b1.Shape())


def old_fuse(s1, s2):
    """
    Performs a boolean fuse between solids s1 and s2 and returns the
    result as a new solid.  Uses OCC's old Fuse algorithm.
    """
    return solid(_BRepAlgo.BRepAlgo_Fuse(s1.shape, s2.shape).Shape())


def cut(s1, s2, refine=0):
    """
    Performs a boolean cut between solids s1 and s2 and returns the
    result as a new solid.
    """
    b1 = _BRepAlgoAPI.BRepAlgoAPI_Cut(s1.shape, s2.shape)
    if refine:
        b1.RefineEdges()
    return solid(b1.Shape())


def old_cut(s1, s2):
    """
    Performs a boolean cut between solids s1 and s2 and returns the
    result as a new solid.  Uses OCC's old Cut algorithm.
    """
    return solid(_BRepAlgo.BRepAlgo_Cut(s1.shape, s2.shape).Shape())


def common(s1, s2, refine=0):
    """
    Performs a boolean common between solids s1 and s2 and returns the
    result as a new solid.
    """
    b1 = _BRepAlgoAPI.BRepAlgoAPI_Common(s1.shape, s2.shape)
    if refine:
        b1.RefineEdges()
    return solid(b1.Shape())


def old_common(s1, s2):
    """
    Performs a boolean common between solids s1 and s2 and returns the
    result as a new solid.  Uses OCC's old Common algorithm.
    """
    return solid(_BRepAlgo.BRepAlgo_Common(s1.shape, s2.shape).Shape())


def _fillet_boolean(b1, rad):
    new_edges = b1.SectionEdges()
    b2 = _BRepFilletAPI.BRepFilletAPI_MakeFillet(b1.Shape())
    iterator = _TopTools.TopTools_ListIteratorOfListOfShape(new_edges)
    while iterator.More():
        b2.Add(rad, _TopoDS_edge(iterator.Value()))
        iterator.Next()
    return solid(b2.Shape())


def fillet_fuse(s1, s2, rad):
    """
    Performs a boolean fuse between s1 and s2 and fillets the newly
    created edges.
    """
    if rad > 0.0:
        return _fillet_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Fuse(s1.shape, s2.shape), rad)
    else:
        return fuse(s1, s2)


def fillet_cut(s1, s2, rad):
    """
    Performs a boolean cut between s1 and s2 and fillets the newly
    created edges.
    """
    if rad > 0.0:
        return _fillet_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Cut(s1.shape, s2.shape), rad)
    else:
        return cut(s1, s2)


def fillet_common(s1, s2, rad):
    """
    Performs a boolean common between s1 and s2 and fillets the newly
    created edges.
    """
    if rad > 0.0:
        return _fillet_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Common(s1.shape, s2.shape), rad)
    else:
        return common(s1, s2)


def _chamfer_boolean(b1, dist):
    # Doesn't work.  The SectionEdges don't map to faces, it seems. ***
    new_edges = b1.SectionEdges()
    edge_map = _TopTools.TopTools_IndexedDataMapOfShapeListOfShape()
    s = b1.Shape()
    _TopExp_MapShapesAndAncestors(s, _TopAbs.TopAbs_EDGE, _TopAbs.TopAbs_FACE,
                                 edge_map)
    b2 = _BRepFilletAPI.BRepFilletAPI_MakeChamfer(s)
    iterator = _TopTools.TopTools_ListIteratorOfListOfShape(new_edges)
    while iterator.More():
        e1 = iterator.Value()
        f1 = edge_map.FindFromKey(e1).First()
        b2.Add(dist, dist, _TopoDS_edge(e1), _TopoDS_face(f1))
        iterator.Next()
    return solid(b2.Shape())


def chamfer_fuse(s1, s2, dist):
    """
    Performs a chamfer fuse between s1 and s2 and chamfers the newly
    created edges.
    """
    if dist > 0.0:
        return _chamfer_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Fuse(s1.shape, s2.shape), dist)
    else:
        return fuse(s1, s2)


def chamfer_cut(s1, s2, dist):
    """
    Performs a chamfer cut between s1 and s2 and chamfers the newly
    created edges.
    """
    if dist > 0.0:
        return _chamfer_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Cut(s1.shape, s2.shape), dist)
    else:
        return cut(s1, s2)


def chamfer_common(s1, s2, dist):
    """
    Performs a chamfer common between s1 and s2 and chamfers the newly
    created edges.
    """
    if dist > 0.0:
        return _chamfer_boolean(
                    _BRepAlgoAPI.BRepAlgoAPI_Common(s1.shape, s2.shape), dist)
    else:
        return common(s1, s2)


def glue(s1, s2, face_pairs=[]):
    """
    Glues solids s1 and s2 together at the face_pairs.  face_pairs is
    a list of tuples.  Each tuple represents face indices that should
    be glued.
    """
    s1f = s1._raw('face')
    s2f = s2._raw('face')
    if len(face_pairs) == 0:
        print 'Error: Haven\'t implemented locate glued faces'
        return
        # This was expensive and didn't work.  I believe intersections
        # occurred at edge coincidences.  I may want to try
        # BRepTools_UVBounds as a pre-filter.  I may also want to try
        # Bounds first. ***
        for i1, f1 in enumerate(s1f):
            for i2, f2 in enumerate(s2f):
                b = _TopOpeBRep_FacesIntersector()
                b.Perform(f1, f2)
                if b.SurfacesSameOriented():
                    face_pairs.append((i1, i2))
        print face_pairs

    b = _BRepFeat_Gluer(s1.shape, s2.shape)
    for face_pair in face_pairs:
        f1 = _TopoDS_face(s1f[face_pair[0]])
        f2 = _TopoDS_face(s2f[face_pair[1]])
        b.Bind(f1, f2)
        common_edges = _LocOpe_FindEdges(f1, f2)
        common_edges.InitIterator()
        while common_edges.More():
            b.Bind(common_edges.EdgeFrom(), common_edges.EdgeTo())
            common_edges.Next()
    return solid(b.Shape())


def simple_glue(s1, s2, face_pairs=[], tolerance=1e-3):
    """
    Glues solids s1 and s2 together at the face_pairs.  face_pairs is
    a list of tuples.  Each tuple represents faces that should be
    glued.  Unlike glue, each face_pair is expected to exactly
    overlap.  It's more robust than glue, so it was added.
    """
    s1f = s1._raw('face')
    s2f = s2._raw('face')
    f1rs = []
    f2rs = []
    for face_pair in face_pairs:
        f1rs.append(face_pair[0])
        f2rs.append(face_pair[1])
    f1rs.sort()
    f1rs.reverse()
    f2rs.sort()
    f2rs.reverse()
    for f1r in f1rs:
        del s1f[f1r]
    for f2r in f2rs:
        del s2f[f2r]
    b = _BRepBuilderAPI.BRepBuilderAPI_Sewing(tolerance)
    for f in s1f:
        b.Add(f)
    for f in s2f:
        b.Add(f)
    b.Perform()
    new_shell = b.SewedShape()
    if _raw_type(new_shell) == 'shell':
        b2 = _BRepBuilderAPI.BRepBuilderAPI_MakeSolid()
        b2.Add(_TopoDS_shell(new_shell))
        return solid(b2.Solid())
    elif _raw_type(new_shell) == 'compound':
        print 'Warning: simple_glue() returned compound'
        s = solid(new_shell)
        css = s._raw('shell')
        c = _TopoDS.TopoDS_Compound()
        b3 = _BRep_Builder()
        b3.MakeCompound(c)
        for cs in css:
            b2 = _BRepBuilderAPI.BRepBuilderAPI_MakeSolid()
            b2.Add(_TopoDS_shell(cs))
            b3.Add(c, b2.Solid())
        return solid(c)
    else:
        print 'Warning: Wrong sewed shape after simple_glue():', _raw_type(new_shell)
        return solid(new_shell)


def from_brep(name):
    """
    Imports a brep file and returns the shape.
    """
    if _path.exists(name):
        s = _TopoDS.TopoDS_Shape()
        b = _BRep_Builder()
        _BRepTools.BRepTools().Read(s, name, b)
        stype = _raw_type(s)
        if stype in ['solid', 'compound', 'compsolid']:
            return solid(s)
        elif stype == 'shape':
            print 'Error: Unsupported type', stype
        else:
            return eval(stype + '(s)')
    else:
        print 'Error: Can\'t find', name


def from_iges(name):
    """
    Imports an iges file and returns the solid.
    """
    if _path.exists(name):
        reader = _IGESControl_Reader()
        status = reader.ReadFile(name)
        okay = reader.TransferRoots()
        if not okay:
            print 'Warning: Could not translate all shapes'
        shape = reader.OneShape()
        return solid(shape)
    else:
        print 'Error: Can\'t find', name


def from_step(name):
    """
    Imports a step file and returns the solid.
    """
    if _path.exists(name):
        reader = _STEPControl.STEPControl_Reader()
        status = reader.ReadFile(name)
        okay = reader.TransferRoots()
        shape = reader.OneShape()
        return solid(shape)
    else:
        print 'Error: Can\'t find', name


def from_svg(name):
    """
    Imports a 2D svg file, converts each graphics path into a wire,
    and returns a list of wires.

    It wouldn't be too hard to remove the numpy dependencies.  But
    it's hard enough, and it would be slower.

    Warning: Currently only implements a subset of the svg protocol.
    The subset follows.  However, it's pretty easy to add more.
      transforms with
        matrix, translate
      paths with
        a, A, c, C, l, L, m, M, q, Q, z, Z elements

    Warning: Only checked with small inkscape-generated files
    """

    try:
        import numpy as np
    except:
        print 'Error: Must have numpy installed to use from_svg'
        return

    def finish_wire():
        if len(local_wire) > 0:
            retval.append(wire(local_wire))
            # Cannot do local_wire = [] because thinks a new variable
            del local_wire[:]

    def strpt_to_float(strpt):
        pt = map(lambda x: float(x), strpt.split(','))
        if not absolute:
            pt = (pt0[0] + pt[0], pt0[1] + pt[1])  # Make absolute
        return (pt[0], pt[1])

    def transform_matrix():
        retval = np.array([[1.0, 0.0, 0.0], [0.0, 1.0, 0.0], [0.0, 0.0, 1.0]])
        for matrix in matrices:
            retval = np.dot(retval, matrix[1])
        return retval

    def transform_pts(transform, pts):
        # Matrix transforms and adds a third dimension
        retval = []
        for pt in pts:
            #retval.append((pt[0], pt[1], 0.0)) # No transform (for debug)
            xpt = np.dot(transform, np.array([pt[0], pt[1], 1.0]))
            # svg y increases downward; height - xpt[1] corrects
            retval.append((xpt[0], height - xpt[1], 0.0))
        return retval

    def mag(v):
        return _math.sqrt((v**2).sum())

    def vector_angle(u, v):
        # Computes the angle between two vectors
        if (u[0] * v[1] - u[1] * v[0]) < 0.0:
            s = -1
        else:
            s = 1
        return s * _math.acos(min(1.0, max(-1.0, np.dot(u, v) / (mag(u) * mag(v)))))

    height = 0.0
    fp = open(name, 'r')
    entities = []
    matrices = []
    transforms = []
    paths = []
    for line in fp:
        m = _re.match('\s*<([a-zA-Z]+)', line)  # Start of an entity
        if m:
            entities.append(m.group(1))
        if len(entities) > 0 and entities[-1] == 'svg':
            m = _re.match('\s*height="(.+)"', line)
            if m:
                height = float(m.group(1))
        if len(entities) > 1 and entities[-2] == 'g' and entities[-1] == 'path':
            m = _re.match('\s*d="(.+)"', line)  # Should this be multi-line?
            if m:
                paths.append(m.group(1))
                transforms.append(transform_matrix())
        if len(entities) > 0 and entities[-1] == 'g':
            m = _re.match('\s*transform="matrix\((.+)\)"', line)
            if m:
                matrix = map(lambda x: float(x), m.group(1).split(','))
                matrices.append((len(entities), np.array([[matrix[0], matrix[2], matrix[4]], [matrix[1], matrix[3], matrix[5]], [0.0, 0.0, 1.0]])))
            m = _re.match('\s*transform="translate\((.+)\)"', line)
            if m:
                matrix = map(lambda x: float(x), m.group(1).split(','))
                matrices.append((len(entities), np.array([[1.0, 0.0, matrix[0]], [0.0, 1.0, matrix[1]], [0.0, 0.0, 1.0]])))
        m = _re.match('.*/>|.*</', line)  # End of an entity
        if m:
            if entities[-1] == 'g' and len(matrices) > 0 and matrices[-1][0] == len(entities):
                matrices.pop()
            entities.pop()
    fp.close()

    retval = []
    local_wire = []
    cmds = 'aAcChHlLmMqQsStTvVzZ'

    for path, transform in zip(paths, transforms):
        pt0 = (0.0, 0.0)
        absolute = 1
        #ls = filter(lambda x: x != '', re.split('([' + cmds + '])', path)) # command, arguments format
        ls = path.split()
        index = 0
        while index < len(ls):

            if ls[index].isupper():
                absolute = 1
            else:
                absolute = 0

            cmd = ls[index].lower()

            if cmd == 'm':  # Move
                finish_wire()
                pt0 = strpt_to_float(ls[index + 1])
                index = index + 2
                pts = [pt0]
                while index < len(ls) and ls[index] not in cmds:
                    pts.append(strpt_to_float(ls[index]))
                    pt0 = pts[-1]
                    index = index + 1
                if len(pts) > 1:
                    local_wire.append(polygon(transform_pts(transform, pts)))

            elif cmd == 'q':  # Quadratic Bezier
                index = index + 1
                while index < len(ls) and ls[index] not in cmds:
                    pts = [pt0,
                           strpt_to_float(ls[index]),
                           strpt_to_float(ls[index + 1])]
                    pt0 = pts[-1]
                    local_wire.append(bezier(transform_pts(transform, pts)))
                    index = index + 2

            elif cmd == 'c':  # Cubic Bezier
                index = index + 1
                while index < len(ls) and ls[index] not in cmds:
                    pts = [pt0,
                           strpt_to_float(ls[index]),
                           strpt_to_float(ls[index + 1]),
                           strpt_to_float(ls[index + 2])]
                    pt0 = pts[-1]
                    local_wire.append(bezier(transform_pts(transform, pts)))
                    index = index + 3

            elif cmd == 'l':  # Line
                index = index + 1
                pts = [pt0]
                while index < len(ls) and ls[index] not in cmds:
                    pts.append(strpt_to_float(ls[index]))
                    pt0 = pts[-1]
                    index = index + 1
                local_wire.append(polygon(transform_pts(transform, pts)))

            elif cmd == 'a':  # Elliptical Arc
                index = index + 1
                while index < len(ls) and ls[index] not in cmds:
                    x1, y1 = pt0
                    rx, ry = map(lambda x: float(x), ls[index].split(','))
                    phi = _math.radians(float(ls[index + 1]))
                    fa = int(ls[index + 2])
                    fs = int(ls[index + 3])
                    x2, y2 = strpt_to_float(ls[index + 4])
                    index = index + 5

                    # Algorithm copied from W3C SVG 1.1 Appendix F
                    rx = abs(rx)
                    ry = abs(ry)
                    if rx == 0.0 or ry == 0.0:
                        pts = [(x1, y1), (x2, y2)]
                        local_wire.append(polygon(transform_pts(transform, pts)))
                    else:
                        cosphi = _math.cos(phi)
                        sinphi = _math.sin(phi)
                        x1p, y1p = np.dot(np.array([[cosphi, sinphi], [-sinphi, cosphi]]), np.array([(x1-x2)/2, (y1-y2)/2]))
                        # Correct for out-of-range radii
                        l = _math.sqrt((x1p**2) / (rx**2) + (y1p**2) / (ry**2))
                        if l > 1.0:
                            rx = rx * l
                            ry = ry * l

                        if fa == fs:
                            s = -1
                        else:
                            s = 1
                        cxp, cyp = s * _math.sqrt(max(0.0, (rx**2)*(ry**2) - (rx**2)*(y1p**2) - (ry**2)*(x1p**2)) / ((rx**2)*(y1p**2) + (ry**2)*(x1p**2))) * np.array([rx*y1p/ry, -ry*x1p/rx])
                        cx, cy = np.dot(np.array([[cosphi, -sinphi], [sinphi, cosphi]]), np.array([cxp, cyp])) + np.array([(x1+x2)/2, (y1+y2)/2])
                        v1 = np.array([1.0, 0.0])
                        v2 = np.array([(x1p-cxp)/rx, (y1p-cyp)/ry])
                        v3 = np.array([(-x1p-cxp)/rx, (-y1p-cyp)/ry])
                        theta = vector_angle(v1, v2)
                        dtheta = vector_angle(v2, v3) % (2 * _math.pi)
                        if fs == 0 and dtheta > 0.0:
                            dtheta = dtheta - 2 * _math.pi
                        elif fs == 1 and dtheta < 0.0:
                            dtheta = dtheta + 2 * _math.pi
                        if dtheta < 0.0:
                            theta1 = theta + dtheta
                            theta2 = theta
                        else:
                            theta1 = theta
                            theta2 = theta + dtheta
                        a = translate(rotatez(arc_ellipse(rx, ry, theta1, theta2), phi), (cx, cy, 0.0))
                        a.bounds()
                        # Transform a
                        m = _gp.gp_Trsf()
                        m.SetValues(transform[0, 0], transform[0, 1], 0.0, transform[0, 2],
                                    transform[1, 0], transform[1, 1], 0.0, transform[1, 2],
                                    0.0, 0.0, transform[0, 0], 0.0, 1e-16, 1e-7)  # unsure of TolAng and TolDist
                        trf = _BRepBuilderAPI.BRepBuilderAPI_Transform(m)
                        trf.Perform(a.shape, 1)
                        a.shape = trf.Shape()
                        # Convert y to height - y
                        a.mirrory()
                        a.translate((0.0, height, 0.0))
                        local_wire.append(a)

                        pt0 = (x2, y2)

            elif cmd == 'z':  # Close path
                finish_wire()
                index = index + 1

            elif cmd in cmds:  # Need to do these some time
                print 'Error:', cmd, 'not implemented in path:', path
                _sys.exit()

            else:
                print 'Error: svg path type unknown', cmd
                _sys.exit()

        finish_wire()
    return retval


def _raw_type(raw_shape):
    raw_types = {_TopAbs.TopAbs_COMPOUND: 'compound',
                 _TopAbs.TopAbs_COMPSOLID: 'compsolid',
                 _TopAbs.TopAbs_SOLID: 'solid',
                 _TopAbs.TopAbs_SHELL: 'shell',
                 _TopAbs.TopAbs_FACE: 'face',
                 _TopAbs.TopAbs_WIRE: 'wire',
                 _TopAbs.TopAbs_EDGE: 'edge',
                 _TopAbs.TopAbs_VERTEX: 'vertex',
                 _TopAbs.TopAbs_SHAPE: 'shape'}
    return raw_types[raw_shape.ShapeType()]


# Classes
class shape(object):
    """
    A base class for all shapes: edge, wire, face, shell, solid.
    """

    def __init__(self, s):
        self.shape = s

    def _raw_type(self):
        return _raw_type(self.shape)

    def to_brep(self, name):
        """
        Exports the shape in .brep format
        """
        _BRepTools.BRepTools().Write(self.shape, name)

    def translate(self, pdir):
        """
        moves the shape
        """
        self.shape = _translate(self, pdir)

    def rotate(self, pabout, pdir, angle):
        """
        rotates the shape
        """
        self.shape = _rotate(self, pabout, pdir, angle)

    def rotatex(self, angle):
        """
        rotates the shape about (0.0, 0.0, 0.0) around (1.0, 0.0, 0.0)
        """
        self.shape = _rotate(self, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0), angle)

    def rotatey(self, angle):
        """
        rotates the shape about (0.0, 0.0, 0.0) around (0.0, 1.0, 0.0)
        """
        self.shape = _rotate(self, (0.0, 0.0, 0.0), (0.0, 1.0, 0.0), angle)

    def rotatez(self, angle):
        """
        rotates the shape about (0.0, 0.0, 0.0) around (1.0, 0.0, 0.0)
        """
        self.shape = _rotate(self, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), angle)

    def mirror(self, pabout, pdir):
        """
        mirrors the shape
        """
        self.shape = _mirror(self, pabout, pdir)

    def mirrorx(self):
        """
        mirrors the shape about (0.0, 0.0, 0.0) in the x-direction
        """
        self.shape = _mirror(self, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0))

    def mirrory(self):
        """
        mirrors the shape about (0.0, 0.0, 0.0) in the y-direction
        """
        self.shape = _mirror(self, (0.0, 0.0, 0.0), (0.0, 1.0, 0.0))

    def mirrorz(self):
        """
        mirrors the shape about (0.0, 0.0, 0.0) in the z-direction
        """
        self.shape = _mirror(self, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0))

    def scale(self, sfx, sfy=None, sfz=None):
        """
        scales the shape by scale factor sfx in all 3 dimensions.  If
        all 3 scale factors are specified, scales x, y, z
        independently.
        """
        if sfy and sfz:
            self.shape = _scale(self, sfx, sfy, sfz)
        else:
            self.shape = _scale(self, sfx, sfx, sfx)

    def scalex(self, sfx):
        """
        scales the shape by scale factor sfx in the x-dimension
        """
        self.shape = _scale(self, sfx, 1.0, 1.0)

    def scaley(self, sfy):
        """
        scales the shape by scale factor sfy in the y-dimension
        """
        self.shape = _scale(self, 1.0, sfy, 1.0)

    def scalez(self, sfz):
        """
        scales the shape by scale factor sfz in the z-dimension
        """
        self.shape = _scale(self, 1.0, 1.0, sfz)

    def reverse(self):
        """
        Reverses a shape's orientation
        """
        self.shape.Reverse()

    def _raw(self, raw_type):
        """
        Returns a list of all the OCC vertices, edges, wires, faces,
        shells, or solids (dependent on raw_type) in the shape.
        """
        raw_types = {'vertex': _TopAbs.TopAbs_VERTEX,
                     'edge': _TopAbs.TopAbs_EDGE,
                     'wire': _TopAbs.TopAbs_WIRE,
                     'face': _TopAbs.TopAbs_FACE,
                     'shell': _TopAbs.TopAbs_SHELL,
                     'solid': _TopAbs.TopAbs_SOLID}
        # This returns OCC types, not ccad types
        if self.stype == 'wire' and raw_type == 'edge':
            ex = _BRepTools.BRepTools_WireExplorer(_TopoDS_wire(self.shape))  # Ordered this way
        else:
            ex = _TopExp_Explorer(self.shape, raw_types[raw_type])
        hashes = []
        retval = []
        while ex.More():
            s1 = ex.Current()
            s1_hash = s1.__hash__()
            if s1_hash not in hashes:
                hashes.append(s1_hash)
                retval.append(s1)
            ex.Next()
        return retval

    def _valid_subshape(self, stype):
        types = ['vertex', 'edge', 'wire', 'face', 'shell', 'solid']
        self_index = types.index(self.stype)
        sub_index = types.index(stype)
        if sub_index < self_index:
            return True
        else:
            print 'Warning: ' + stype + ' is not a subshape of ' + self.stype
            return False

    def subshapes(self, stype):
        """
        Returns a list of all the vertices, edges, wires, faces,
        shells, or solids (dependent on stype) in the shape.
        """
        retval = []
        if self._valid_subshape(stype):
            raw_shapes = self._raw(stype)
            for raw_shape in raw_shapes:
                retval.append(eval(stype + '(raw_shape)'))
        return retval

    def copy(self):
        """
        Copies the shape and returns the copied shape
        """
        #return eval(self.stype + '(self.shape)')
        s = _BRepBuilderAPI.BRepBuilderAPI_Copy(self.shape).Shape()
        return eval(self.stype + '(s)')

    def bounds(self):
        """
        Puts a box around the shape and returns the minimum and
        maximum coordinates in a 6-tuple.

        It currently returns a box which extends far beyond the real
        boundaries.  It seems to be an OCC problem, but uncertain ***
        """
        b1 = _Bnd_Box()
        b2 = _BRepBndLib()
        b2.Add(self.shape, b1)
        return b1.Get()

    def center(self):
        """
        Finds the center of mass of the shape.
        """
        print 'Center not defined for', self.stype
        _sys.exit()

    def subcenters(self, stype):
        """
        Iterates over every subshape (as selected by stype) and
        returns the center of each subshape.  For example,
        s.subcenters('face') finds the centers of the faces of the
        shape.
        """
        centers = []
        if self._valid_subshape(stype):
            ss = self._raw(stype)
            for s in ss:
                sshape = eval(stype + '(s)')
                centers.append(sshape.center())
        return centers

    def check(self):
        """
        Performs a BRep check.  Returns 1 if its okay.  Returns 0
        otherwise.  I'd like to generate a report on 0, but it
        requires an SStream, which pythonocc doesn't seem to handle
        right now.  ***
        """
        b = _BRepCheck_Analyzer(self.shape)
        return b.IsValid()

    def fix(self, precision=None, max_tolerance=None, min_tolerance=None):
        """
        Performs Shape Healing.  It didn't work on all cases I
        tested.  Perhaps it needs more help (precision and
        tolerance)? ***
        """
        b = _ShapeFix_Shape(self.shape)
        if precision is not None:
            b.SetPrecision(precision)
        if max_tolerance is not None:
            b.SetMaxTolerance(max_tolerance)
        if min_tolerance is not None:
            b.SetMinTolerance(min_tolerance)
        b.Perform()
        self.shape = b.Shape()

    def dump(shape, level=0):
        """
        Print the details of an object from the top down.  *** Doesn't work
        """
        brt = _BRep_Tool()
        s = shape.ShapeType()
        print "." * level, shapeTypeString(shape),

        if s == _TopAbs.TopAbs_VERTEX:
            pnt = brt.Pnt(_TopoDS_vertex(shape))  # Added by Charles
            print "<Vertex: %s %s %s>" % (pnt.X(), pnt.Y(), pnt.Z())

        it = _TopoDS.TopoDS_Iterator(shape)
        while it.More():
            shp = it.Value()
            it.Next()
            dump(shp, level + 1)

    def nearest(self, stype, positions, eps=1e-12):
        """
        Returns the index of the subshape nearest each position in
        positions.  If more than one shape tie for nearest, a 4th
        argument in positions selects which item to choose.
        """
        shape_centers = self.subcenters(stype)
        shape_indices = []
        for pt in positions:  # Would be much faster with numpy ***
            min_dsq = (pt[0]-shape_centers[0][0])**2 + (pt[1]-shape_centers[0][1])**2 + (pt[2]-shape_centers[0][2])**2
            arg_min = 0
            arg_mins = []
            for count in range(1, len(shape_centers)):
                shape_center = shape_centers[count]
                dsq = (pt[0]-shape_center[0])**2 + (pt[1]-shape_center[1])**2 + (pt[2]-shape_center[2])**2
                de = dsq - min_dsq
                if de < 0.0:
                    if -de < eps:
                        arg_mins.append(arg_min)
                    else:
                        arg_mins = []
                    min_dsq = dsq
                    arg_min = count
                elif de < eps:
                    arg_mins.append(count)
            if len(pt) == 4 and len(arg_mins) > 0:
                shape_indices.append(arg_mins[pt[3]-2])
            else:
                shape_indices.append(arg_min)
        return shape_indices

    def subtolerance(self, stype='all', ttype='all'):
        """
        Iterates through every vertex, edge, and face,
        recording the tolerance.  Returns the minimum, average, and
        maximum tolerance.

        stype limits the sweep to shapes of type stype.

        ttype limits the tolerance type to 'min', 'average', or 'max'.
        """

        b1 = _BRep_Tool()
        tolerances = []

        # Vertices
        if stype == 'vertex' or stype == 'all':
            raw_shapes = self._raw('vertex')
            for raw_shape in raw_shapes:
                tolerances.append(b1.Tolerance(_TopoDS_vertex(raw_shape)))

        # Edges
        if stype == 'edge' or stype == 'all':
            raw_shapes = self._raw('edge')
            for raw_shape in raw_shapes:
                tolerances.append(b1.Tolerance(_TopoDS_edge(raw_shape)))

        # Faces
        if stype == 'face' or stype == 'all':
            raw_shapes = self._raw('face')
            for raw_shape in raw_shapes:
                tolerances.append(b1.Tolerance(_TopoDS_face(raw_shape)))

        min_tol = min(tolerances)
        ave_tol = reduce(lambda x, y: x + y, tolerances) / len(tolerances)
        max_tol = max(tolerances)

        retval = (min_tol, ave_tol, max_tol)

        if ttype == 'all':
            return retval
        else:
            return retval[['min', 'average', 'max'].index(ttype)]


class vertex(shape):
    """
    A point in 3d space
    """

    stype = 'vertex'

    def __init__(self, s):
        if type(s) in [type([]), type(())]:
            b = _BRepBuilderAPI.BRepBuilderAPI_MakeVertex(_gp.gp_Pnt(s[0], s[1], s[2]))
            b.Build()
            self.shape = b.Vertex()
        else:
            self.shape = s

    def center(self):
        b = _BRep_Tool()
        p = b.Pnt(_TopoDS_vertex(self.shape))
        return (p.X(), p.Y(), p.Z())

    def tolerance(self):
        b = _BRep_Tool()
        return b.Tolerance(_TopoDS_vertex(self.shape))


class edge(shape):
    """
    A continuous curve in 3d space bounded by two end points.
    """

    stype = 'edge'

    def center(self):
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.LinearProperties(self.shape, g1)
        p = g1.CentreOfMass()
        return (p.X(), p.Y(), p.Z())

    def length(self):
        """
        Returns the length of the edge
        """
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.LinearProperties(self.shape, g1)
        return g1.Mass()

    def tolerance(self):
        b = _BRep_Tool()
        return b.Tolerance(_TopoDS_edge(self.shape))

    def type(self):
        """
        Returns the type of curve the edge is part of.  Use sparingly.
        The GeomAdaptor_Curve call often caused a Segmentation fault. ***
        """
        b1 = _BRep_Tool()
        c1 = b1.Curve(_TopoDS_edge(self.shape))
        gac1 = _GeomAdaptor_Curve(c1[0], c1[1], c1[2])
        t1 = gac1.GetType()
        return {_GeomAbs.GeomAbs_Line: 'line',
                _GeomAbs.GeomAbs_Circle: 'circle',
                _GeomAbs.GeomAbs_Ellipse: 'ellipse',
                _GeomAbs.GeomAbs_Hyperbola: 'hyperbola',
                _GeomAbs.GeomAbs_Parabola: 'parabola',
                _GeomAbs.GeomAbs_BezierCurve: 'bezier',
                _GeomAbs.GeomAbs_BSplineCurve: 'bspline',
                _GeomAbs.GeomAbs_OtherCurve: 'other'}[t1]

    def poly(self, deflection=1e-3):
        """
        Returns a polyline approximation to the edge
        """
        brt = _BRep_Tool()
        c1 = brt.Curve(_TopoDS_edge(self.shape))
        gac1 = _GeomAdaptor_Curve(c1[0], c1[1], c1[2])
        ud = _GCPnts_QuasiUniformDeflection(gac1, deflection)
        retval = []
        for count in range(1, ud.NbPoints()+1):
            pt = gac1.Value(ud.Parameter(count))
            retval.append((pt.X(), pt.Y(), pt.Z()))
        return retval


class wire(shape):
    """
    A connection of edges.  Can be instantiated with a list of edges
    to connect.
    """

    stype = 'wire'

    def __init__(self, es):
        if type(es) in [type([]), type(())]:
            b = _BRepBuilderAPI.BRepBuilderAPI_MakeWire()
            for e in es:
                if e.stype == 'edge':
                    b.Add(_TopoDS_edge(e.shape))
                elif e.stype == 'wire':
                    b.Add(_TopoDS_wire(e.shape))
                else:
                    print 'Error: Cannot add', e.stype, 'to wire.'
            b.Build()
            self.shape = b.Wire()
        else:
            self.shape = es

    def center(self):
        subs = self.subshapes('edge')
        c = (0.0, 0.0, 0.0)
        total_length = 0.0
        for sub in subs:
            sub_center = sub.center()
            length = sub.length()
            c = (c[0] + length * sub_center[0],
                 c[1] + length * sub_center[1],
                 c[2] + length * sub_center[2])
            total_length = total_length + length
        c = (c[0] / total_length, c[1] / total_length, c[2] / total_length)
        return c

    def length(self):
        """
        Returns the length of the wire
        """
        subs = self.subshapes('edge')
        total_length = 0.0
        for sub in subs:
            length = sub.length()
            total_length = total_length + length
        return total_length

    def poly(self, deflection=1e-3):
        """
        Returns a polyline approximation to the wire.
        """
        wo = self.shape.Orientation()
        edges = self.subshapes('edge')
        retval = []
        for edge in edges:
            ep = edge.poly(deflection)
            if edge.shape.Orientation() != wo:
                ep = ep[::-1]
            retval = retval + ep[:-1]
        retval = retval + [ep[-1]]
        return retval


class face(shape):
    """
    A continuous surface in 3d space bounded by a closed wire.
    """

    stype = 'face'

    def fillet(self, rad, vertex_indices=None):
        """
        Fillets the face at specified vertices with specified radii.

        If rad is a float, fillets all edges the same radius.  rad may
        also be a list of [(rad1, vertex_indices1), (rad2,
        vertex_indices2), ...] where rad1 is the radius to fillet all
        vertices in vertex_indices1, rad2 is the radius to fillet all
        vertices in vertex_indices2, etc.  In this latter case, the
        second argument (vertex_indices) is not used.

        If vertex_indices is None, fillets all vertices.
        vertex_indices may also be a list of [(x1, y1, z1), (x2, y2,
        z2), ...] where each (x1, y1, z1) specifices the edge with
        center nearest that point.
        """

        raw_vertices = self._raw('vertex')
        if type(rad) == type(0.0):
            # Make real vertex_indices
            if vertex_indices is None:
                vertex_indices = range(len(raw_vertices))
            if len(vertex_indices) <= 0:
                return
            if not isinstance(vertex_indices[0], int):  # coordinate positions
                vertex_indices = self.nearest('vertex', vertex_indices)
                #print 'vertex_indices', vertex_indices
            fillet_rads = [(rad, vertex_indices)]
        else:
            fillet_rads = rad

        b = _BRepFilletAPI.BRepFilletAPI_MakeFillet2d(_TopoDS_face(self.shape))
        changed = 0
        for fillet_rad in fillet_rads:
            rad, vertex_indices = fillet_rad
            if rad > 0.0:
                for vertex_index in vertex_indices:
                    changed = 1
                    b.AddFillet(_TopoDS_vertex(raw_vertices[vertex_index]), rad)
        if changed:
            self.shape = b.Shape()

    def wire(self):
        """
        Returns the outside of the face as a wire
        """
        #return wire(self._raw('wire')[0])
        return wire(_BRepTools.BRepTools_OuterWire(_TopoDS_face(self.shape)))

    def inner_wires(self):
        """
        Returns the inner contours of a face as a list of wires
        """
        ow1 = _BRepTools.BRepTools_OuterWire(_TopoDS_face(self.shape))
        ow1o = ow1.Orientation()
        ex1w = _TopExp_Explorer(self.shape, _TopAbs.TopAbs_WIRE)
        retval = []
        while ex1w.More():
            cw = ex1w.Current()
            if cw != ow1:
                cw.Orientation(_TopAbs.TopAbs_Compose(ow1o, cw.Orientation()))
                retval.append(wire(cw))
            ex1w.Next()
        return retval

    def center(self):
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.SurfaceProperties(self.shape, g1)
        p = g1.CentreOfMass()
        return (p.X(), p.Y(), p.Z())

    def area(self):
        """
        Returns the area of the face
        """
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.SurfaceProperties(self.shape, g1)
        return g1.Mass()

    def tolerance(self):
        b = _BRep_Tool()
        return b.Tolerance(_TopoDS_face(self.shape))

    def type(self):
        """
        Returns the type of surface the face is part of
        """
        b1 = _BRep_Tool()
        t1 = _GeomAdaptor_Surface(b1.Surface(_TopoDS_face(self.shape))).GetType()
        return {_GeomAbs.GeomAbs_Plane: 'plane',
                _GeomAbs.GeomAbs_Cylinder: 'cylinder',
                _GeomAbs.GeomAbs_Cone: 'cone',
                _GeomAbs.GeomAbs_Sphere: 'sphere',
                _GeomAbs.GeomAbs_Torus: 'torus',
                _GeomAbs.GeomAbs_BezierSurface: 'bezier',
                _GeomAbs.GeomAbs_BSplineSurface: 'bspline',
                _GeomAbs.GeomAbs_SurfaceOfRevolution: 'revolution',
                _GeomAbs.GeomAbs_SurfaceOfExtrusion: 'extrusion',
                _GeomAbs.GeomAbs_OffsetSurface: 'offset',
                _GeomAbs.GeomAbs_OtherSurface: 'other'}[t1]


class shell(shape):
    """
    A connection of faces.  Can be instantiated with a list of faces
    to connect.
    """

    stype = 'shell'

    def __init__(self, fs, tolerance=1e-6):
        if type(fs) in [type([]), type(())]:
            b = _BRepBuilderAPI.BRepBuilderAPI_Sewing(tolerance)
            for f in fs:
                b.Add(f.shape)
            b.Perform()
            self.shape = b.SewedShape()
            print 'sewing type:', self._raw_type()
        else:
            self.shape = fs

    def center(self):
        subs = self.subshapes('face')
        c = (0.0, 0.0, 0.0)
        total_area = 0.0
        for sub in subs:
            sub_center = sub.center()
            area = sub.area()
            c = (c[0] + area * sub_center[0],
                 c[1] + area * sub_center[1],
                 c[2] + area * sub_center[2])
            total_area = total_area + area
        c = (c[0] / total_area, c[1] / total_area, c[2] / total_area)
        return c

    def area(self):
        """
        Returns the area of the shell
        """
        subs = self.subshapes('face')
        c = (0.0, 0.0, 0.0)
        total_area = 0.0
        for sub in subs:
            sub_center = sub.center()
            area = sub.area()
            total_area = total_area + area
        return total_area


class solid(shape):
    """
    A closed and filled shell.  Can be instantiated with a list of
    shells to connect.
    """

    stype = 'solid'

    def __init__(self, ss):
        if isinstance(ss, list):
            b = _BRepBuilderAPI.BRepBuilderAPI_MakeSolid()
            for s in ss:
                b.Add(_TopoDS_shell(s.shape))
            self.shape = b.Solid()
        else:
            self.shape = ss

    def __add__(self, other):
        return fuse(self, other)

    def __sub__(self, other):
        return cut(self, other)

    def __and__(self, other):
        return common(self, other)

    def to_step(self, name, **options):
        """
        Exports the solid in .stp format.  It supports the following options:

        precision_mode:
            -1: uncertainty is set to the minimum tolerance of all shapes
            0 (Default): uncertainty is set to the average tolerance of all
            shapes
            1: uncertainty is set the the maximum tolerance of all shapes
            2: uncertainty is set to precision_value

        precision_value (0.0001 Default): for precision_mode 2, uncertainty is
        set to this

        assembly:
            0 (Default): writes without assemblies
            1: writes with assemblies
            2: TopoDS_Compounds are written as assemblies

        schema: defines the version of schema
            1 (Default): AP214CD
            2: AP214DIS
            3: AP203
            4: AP214IS

        surface_curve_mode:
            0: write without pcurves
            1 (Default): write with pcurves

        transfer_mode:
            0 (Default): automatic
            1: transfer to manifold solid brep
            2: transfer to faceted brep (only for planar faces and linear
                edges)
            3: transfer to shell based surface model
            4: transfer to geometric curve set

        units:
            'MM': millimeters
            'INCH': inches

        product: the product creating the file
        """

        # Setup
        c = _STEPControl.STEPControl_Controller()
        c.Init()
        w = _STEPControl.STEPControl_Writer()

        # Parse Options
        if 'precision_mode' in options:
            _Interface_Static_SetIVal('write.precision.mode', options['precision_mode'])
        if 'precision_value' in options:
            _Interface_Static_SetRVal('write.precision.val', options['precision_value'])
        if 'assembly' in options:
            _Interface_Static_SetIVal('write.step.assembly', options['assembly'])
        if 'schema' in options:
            _Interface_Static_SetCVal('write.step.schema', str(options['schema']))
            w.Model(True)
        if 'product' in options:
            _Interface_Static_SetCVal('write.product.name', options['product'])
        if 'surface_curve_mode' in options:
            _Interface_Static_SetIVal('write.surfacecurve.mode', options['surface_curve_mode'])
        if 'units' in options:
            _Interface_Static_SetCVal('write.step.unit', options['units'])
        if 'transfer_mode' in options:
            transfer_mode = [_STEPControl.STEPControl_AsIs,
                             _STEPControl.STEPControl_ManifoldSolidBrep,
                             _STEPControl.STEPControl_FacetedBrep,
                             _STEPControl.STEPControl_ShellBasedSurfaceModel,
                             _STEPControl.STEPControl_GeometricCurveSet][options['transfer_mode']]
        else:
            transfer_mode = _STEPControl.STEPControl_AsIs

        # Write
        okay = w.Transfer(self.shape, transfer_mode)
        if okay in [_IFSelect.IFSelect_RetError,
                    _IFSelect.IFSelect_RetFail,
                    _IFSelect.IFSelect_RetStop]:
            print 'Error: Could not translate shape to step'
        else:
            w.Write(name)

    def to_iges(self, name, **options):
        """
        Exports the solid in .igs format.  It supports the following options:

        precision_mode:
            -1: uncertainty is set to the minimum tolerance of all shapes
            0 (Default): uncertainty is set to the average tolerance of all
            shapes
            1: uncertainty is set to the maximum tolerance of all shapes
            2: uncertainty is set to precision_value

        precision_value (0.0001 Default): for precision_mode 2, uncertainty is
        set to this

        brep_mode:
            0 (Default): faces translated to IGES 144 entities (no brep)
            1: faces translated to IGES 510 entities (will have brep)

        convert_surface_mode:
            0 (Default): elementary surfaces are written as surfaces of
            revolution
            1: elementary surfaces are converted to corresponding IGES surfaces

        units:
            'MM': millimeters
            'INCH': inches

        author: the author of the file

        sending_company:

        receiving_company:

        product: the product creating the file
        """

        # Setup
        c = _IGESControl_Controller()
        c.Init()
        if 'units' in options:
            units = options['units']
        else:
            units = 'MM'
        if 'brep_mode' in options:
            brep_mode = options['brep_mode']
        else:
            brep_mode = 0
        w = _IGESControl_Writer(units, brep_mode)

        # Parse Options
        if 'precision_mode' in options:
            _Interface_Static_SetIVal('write.precision.mode', options['precision_mode'])
        if 'precision_value' in options:
            _Interface_Static_SetRVal('write.precision.val', options['precision_value'])
        #if options.has_key('brep_mode'):
        #    # Didn't work here
        #    _Interface_Static_SetIVal('write.iges.brep.mode', options['brep_mode'])
        if 'convert_surface_mode' in options:
            if options['convert_surface_mode'] == 1:
                value = 'On'
            else:
                value = 'Off'
            _Interface_Static_SetCVal('write.convertsurface.mode', value)
        #if options.has_key('units'):
        #    _Interface_Static_SetCVal('write.step.unit', options['units'])
        if 'author' in options:
            _Interface_Static_SetCVal('write.iges.header.author', options['author'])
        if options.has_key('sending_company'):
            _Interface_Static_SetCVal('write.iges.header.company', options['sending_company'])
        if options.has_key('receiving_company'):
            _Interface_Static_SetCVal('write.iges.header.receiver', options['receiveing_company'])
        if options.has_key('product'):
            _Interface_Static_SetCVal('write.iges.header.product', options['product'])

        # Write
        okay = w.AddShape(self.shape)
        if not okay:
            print 'Warning: Could not translate all shapes'
        w.Write(name)

    def to_stl(self, name, **options):
        """
        Exports the solid in .stl format.  It supports the following options:

        ascii_mode:
            0: generate a binary stl file
            1 (Default): generate an ascii stl file

        relative_mode:
            0: deflection is calculated according to an absolute number
            1 (Default): deflection is calculated from the relative shape size

        abs_deflection (0.01 Default): for relative_mode 0, deflection is set
        to this

        rel_deflection (0.001 Default): for relative_mode 1, deflection is
        multiplied by this

        I found blender and gts had trouble with the output.  There
        were many repeated vertices in ascii or binary mode.  Most
        could be fixed by importing to blender, removing doubles, and
        exporting to stl. ***
        """

        w = _StlAPI_Writer()
        if 'ascii_mode' in options:
            w.SetASCIIMode(options['ascii_mode'])
        if 'relative_mode' in options:
            w.SetRelativeMode(options['relative_mode'])
        if 'abs_deflection' in options:
            w.SetDeflection(options['abs_deflection'])
        if 'rel_deflection' in options:
            w.SetCoefficient(options['rel_deflection'])
        w.Write(self.shape, name)

    def center(self):
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.VolumeProperties(self.shape, g1)
        p = g1.CentreOfMass()
        return (p.X(), p.Y(), p.Z())

    def fillet(self, rad, edge_indices=None):
        """
        Fillets the solid at specified edges with specified radii.

        If rad is a float, fillets all edges the same radius.  rad may
        also be a list of [(rad1, edge_indices1), (rad2,
        edge_indices2), ...] where rad1 is the radius to fillet all
        edges in edge_indices1, rad2 is the radius to fillet all edges
        in edge_indices2, etc.  In this latter case, the second
        argument (edge_indices) is not used.  rad1, rad2, etc. may be
        two-tuples instead of floats.  In this case, the fillet rad is
        an evolutive radius that changes from one radius to another
        over the edge.

        If edge_indices is None, fillets all edges.  edge_indices may
        also be a list of [(x1, y1, z1), (x2, y2, z2), ...] where each
        (x1, y1, z1) specifies the edge with center nearest that
        point.

        I found OCC's BRepFilletAPI_MakeFillet buggy.  Errors could be
        improved by the following workarounds:

        1. Elimate impossible conditions (e.g. a 1x1x1 box with fillet
        radius > 0.5) (obviously not an OCC bug)

        2. Eliminate unneeded edges.  OCC's boolean operations often
        return two faces in the same domain with an edge between them
        that can be merged.  Eliminating these edges (by merging the
        faces) helped.  The simplify() method can do this for some
        shapes.  It's incomplete, though.  Also, seam edges (e.g. the
        edge along a cylinder's body) can be moved out of the way
        sometimes.

        3. Change the radius slightly.

        4. Fillet a few edges, then a few more, then a few more, etc.
        edge_center passing can be very useful for this workaround.
        All connected fillets should be in the same edge group.

        5. Extrusion along a spline causes straight edges to create
        bspline faces.  Planarazing these faces helped.
        """

        raw_edges = self._raw('edge')
        if isinstance(rad, float):
            # Make real edge_indices
            if edge_indices is None:
                edge_indices = range(len(raw_edges))
            if len(edge_indices) <= 0:
                return
            if isinstance(edge_indices[0], int):  # coordinate positions
                edge_indices = self.nearest('edge', edge_indices)
                #print 'edge_indices', edge_indices
            fillet_rads = [(rad, edge_indices)]
        else:
            fillet_rads = rad

        b = _BRepFilletAPI.BRepFilletAPI_MakeFillet(self.shape)
        changed = 0
        for fillet_rad in fillet_rads:
            rad, edge_indices = fillet_rad
            if isinstance(rad, float):
                if rad > 0.0:
                    for edge_index in edge_indices:
                        changed = 1
                        b.Add(rad, _TopoDS_edge(raw_edges[edge_index]))
            else:  # evolutive radius
                for edge_index in edge_indices:
                    changed = 1
                    b.Add(rad[0], rad[1], _TopoDS_edge(raw_edges[edge_index]))
        if changed:
            self.shape = b.Shape()

    def chamfer(self, dist, edge_indices=None):
        """
        chamfers all edges in edge_indices the same distance at 45 degrees
        """
        if dist > 0.0:
            edge_map = _TopTools.TopTools_IndexedDataMapOfShapeListOfShape()
            _TopExp_MapShapesAndAncestors(self.shape, _TopAbs.TopAbs_EDGE,
                                         _TopAbs.TopAbs_FACE, edge_map)
            b = _BRepFilletAPI.BRepFilletAPI_MakeChamfer(self.shape)
            raw_edges = self._raw('edge')
            if edge_indices is None:
                edge_indices = range(len(raw_edges))
            if len(edge_indices) <= 0:
                return
            if not isinstance(edge_indices[0], int):  # coordinate positions
                edge_indices = self.nearest('edge', edge_indices)

            for edge_index in edge_indices:
                e1 = raw_edges[edge_index]
                f1 = edge_map.FindFromKey(e1).First()
                b.Add(dist, dist, _TopoDS_edge(e1), _TopoDS_face(f1))
            self.shape = b.Shape()

    def draft(self, angle, pdir, pt, face_indices):
        """
        Drafts faces in face_indices by angle from direction pdir and
        reference plane that passes through pt.

        I found OCC's BRepOffsetAPI_DraftAngle buggy ***.  In most
        cases, it was better to hand-create two wire profiles, and use
        a loft with ruled edges.
        """
        if angle != 0.0:
            d = _gp.gp_Dir(pdir[0], pdir[1], pdir[2])
            pln = _gp.gp_Pln(_gp.gp_Pnt(pt[0], pt[1], pt[2]), d)
            raw_faces = self._raw('face')
            if not isinstance(face_indices[0], int):  # coordinate positions
                face_indices = self.nearest('face', face_indices)
            b = _BRepOffsetAPI.BRepOffsetAPI_DraftAngle(self.shape)
            for face_index in face_indices:
                b.Add(_TopoDS_face(raw_faces[face_index]), d, angle, pln)
            b.Build()
            self.shape = b.Shape()

    def volume(self):
        """
        Returns the volume of the solid
        """
        g1 = _GProp_GProps()
        g2 = _BRepGProp()
        g2.VolumeProperties(self.shape, g1)
        return g1.Mass()  # Returns volume when density hasn't been set

    def simplify(self, skip_edges=0, skip_faces=0, skip_fits=0, stopat=-1, tolerance=1e-3):
        """
        Fuses edges that are C1 continuous and share a vertex.  Fuses
        faces in the same domain that share an edge.  It's currently
        slow, because FacesIntersector is slow.  (It's not the python
        code.)  May want to remove internal edges and internal vertices
        later. ***
        """

        """
        # Seemed simple, but didn't work.  Glancing through the
        # C-code, I don't think BOP_Refiner is a fusing algorithm.
        b = BOP_Refiner()
        b.SetShape(self.shape)
        b.Do()
        print 'Removed', b.NbRemovedVertices(), 'vertices'
        print 'Removed', b.NbRemovedEdges(), 'edges'
        self.shape = b.Shape()
        """

        """
        # Seemed simple, but didn't work
        b1 = BlockFix_BlockFixAPI()
        b1.SetShape(self.shape)
        b1.SetTolerance(tolerance)
        b1.Perform()
        self.shape = b1.Shape()
        """

        # Fuse Edges first
        if not skip_edges:
            b = _TopOpeBRepTool_FuseEdges(self.shape)
            self.shape = b.Shape()

        # Fuse Faces second (not easy)
        if not skip_faces:
            edge_map = _TopTools.TopTools_IndexedDataMapOfShapeListOfShape()
            _TopExp_MapShapesAndAncestors(self.shape, _TopAbs.TopAbs_EDGE, 
                                         _TopAbs.TopAbs_FACE, edge_map)
            raw_edges = self._raw('edge')
            common_faces = {}
            new_faces = []
            pairs = []
            merge_count = 0
            for rec, raw_edge in enumerate(raw_edges):
                if stopat >= 0 and rec == stopat:
                    break
                print 'raw edge', rec,
                l1 = edge_map.FindFromKey(raw_edge)
                f1 = l1.First()  # Assumes only two faces per edge
                f2 = l1.Last()
                h1 = f1.__hash__()
                h2 = f2.__hash__()
                if h1 == h2:  # Avoid seam edges
                    print 'Seam'
                    continue
                elif h1 > h2:
                    pair = (h2, h1)
                else:
                    pair = (h1, h2)
                if pair in pairs:
                    print 'Skipped'
                    continue
                else:
                    pairs.append(pair)
                if _raw_faces_same_domain(f1, f2, skip_fits):
                    print 'Merge'
                    merge_count = merge_count + 1
                    if f1 not in common_faces:
                        if f2 not in common_faces:
                            new_faces.append(_raw_faces_merge(f1, f2))
                            index = len(new_faces) - 1
                            common_faces[f1] = index
                            common_faces[f2] = index
                        else:
                            index = common_faces[f2]
                            # Changed to sewed faces to handle recursive edge
                            # changes from ShapeFix
                            #to_merge = (new_faces[index], f1)
                            b = _BRepBuilderAPI.BRepBuilderAPI_Sewing()
                            b.Add(new_faces[index])
                            b.Add(f1)
                            b.Perform()
                            s = shell(b.SewedShape())
                            nf1, nf2 = s._raw('face')
                            new_faces[index] = _raw_faces_merge(nf1, nf2)
                            common_faces[f1] = index
                    elif f2 not in common_faces:
                        index = common_faces[f1]
                        # Changed to sewed faces to handle recursive edge
                        # changes from ShapeFix
                        #to_merge = (new_faces[index], f2)
                        b = _BRepBuilderAPI.BRepBuilderAPI_Sewing()
                        b.Add(new_faces[index])
                        b.Add(f2)
                        b.Perform()
                        s = shell(b.SewedShape())
                        nf1, nf2 = s._raw('face')
                        new_faces[index] = _raw_faces_merge(nf1, nf2)
                        common_faces[f2] = index
                    else:  # Both in common_faces
                        if common_faces[f1] == common_faces[f2]:
                            print 'Done already'
                        else:
                            index = common_faces[f1]
                            index2 = common_faces[f2]
                            b = _BRepBuilderAPI.BRepBuilderAPI_Sewing()
                            b.Add(new_faces[index])
                            b.Add(new_faces[index2])
                            b.Perform()
                            s = shell(b.SewedShape())
                            nf1, nf2 = s._raw('face')
                            new_faces[index] = _raw_faces_merge(nf1, nf2)
                            for k, v in common_faces.items():
                                if v == index2:
                                    common_faces[k] = index
                            new_faces[index2] = None

                else:
                    print 'Different'

            if len(new_faces) <= 0:  # No common faces
                return
            else:
                print
                # BRep_Builder may be faster than BRepBuilderAPI_Sewing
                raw_faces = self._raw('face')
                for f in common_faces.keys():
                    raw_faces.remove(f)
                b = _BRepBuilderAPI.BRepBuilderAPI_Sewing(tolerance)
                for f in raw_faces:
                    b.Add(f)
                for f in new_faces:
                    if f:
                        b.Add(f)
                b.Perform()
                new_shell = b.SewedShape()
                if _raw_type(new_shell) == 'shell':
                    b2 = _BRepBuilderAPI.BRepBuilderAPI_MakeSolid()
                    b2.Add(_TopoDS_shell(new_shell))
                    self.shape = b2.Solid()
                elif _raw_type(new_shell) == 'compound':
                    print 'Warning: simplify() returned compound'
                    s = solid(new_shell)
                    css = s._raw('shell')
                    c = _TopoDS.TopoDS_Compound()
                    b3 = _BRep_Builder()
                    b3.MakeCompound(c)
                    for cs in css:
                        b2 = _BRepBuilderAPI.BRepBuilderAPI_MakeSolid()
                        b2.Add(_TopoDS_shell(cs))
                        b3.Add(c, b2.Solid())
                    self.shape = c
                else:
                    print 'Warning: Wrong Sewed Shape after simplify():', _raw_type(new_shell)
                    self.shape = new_shell


"""
Primitives
----------

Philosophy
----------
OCC offers a variety of primitive input arguments.  Users typically
use 1-2 of them, and the others cause confusion for those who don't
use them.  Instead, only offer the variety that provides unique
topologies.  Those varieties with differing positions and orientations
are not used.  They can be arrived at with transformations.
"""

# Edge Primitives


def segment(pt1, pt2):
    """
    Returns an edge that is a segment from point1 to point2.
    Expects point1, point2
    """
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_gp.gp_Pnt(pt1[0], pt1[1], pt1[2]), _gp.gp_Pnt(pt2[0], pt2[1], pt2[2])).Edge())


def arc(rad, start_angle, end_angle):
    """
    Returns an edge that is an arc centered about (0.0, 0.0, 0.0) with
    given radius, start_angle, and end_angle.
    Expects radius, start_angle, end_angle
    """
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_GC_MakeArcOfCircle(_gp.gp_Circ(_gp.gp_Ax2(_gp.gp_Pnt(0.0, 0.0, 0.0), _gp.gp_Dir(0.0, 0.0, 1.0)), rad), start_angle, end_angle, 0).Value()).Edge())


def arc_ellipse(rad1, rad2, start_angle, end_angle):
    """
    Returns an edge that is an elliptical arc centered about (0.0,
    0.0, 0.0) with given major radius rad1, minor radius rad2,
    start_angle, and end_angle.  Expects rad1, rad2, start_angle,
    end_angle.
    """
    if rad2 > rad1:
        print 'Error: Major radius ', rad1, ' must be greater than minor radius ', rad2
        _sys.exit()
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_GC_MakeArcOfEllipse(_gp.gp_Elips(_gp.gp_Ax2(_gp.gp_Pnt(0.0, 0.0, 0.0), _gp.gp_Dir(0.0, 0.0, 1.0)), rad1, rad2), start_angle, end_angle, 0).Value()).Edge())


def spline(pts, **options):
    """
    Returns an edge that is a 3D spline curve fitted through the
    passed points.
    Expects a list of points.

    Note: the name really ought to be fit_spline, or something like
    that to later allow someone to actually enter knots and such.
    Change if need be.
    """
    if not 'min_degree' in options:
        options['min_degree'] = 3
    if not 'max_degree' in options:
        options['max_degree'] = 8
    if not 'continuity' in options:
        options['continuity'] = _GeomAbs.GeomAbs_C2
    if not 'tolerance' in options:
        options['tolerance'] = 1e-3

    num_pts = len(pts)
    tpts = _TColgp_Array1OfPnt(0, num_pts-1)
    for count in range(num_pts):
        tpts.SetValue(count, _gp.gp_Pnt(pts[count][0], pts[count][1], pts[count][2]))
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_GeomAPI_PointsToBSpline(tpts, options['min_degree'], options['max_degree'], options['continuity'], options['tolerance']).Curve()).Edge())


def bezier(pts, weights=[]):
    """
    Returns an edge that is a Bezier curve fitted through pts.  Only
    the first and last points does it pass through.  The others are
    control points.  weights is a list pts long.  If unspecified, all
    points have the same weight.
    """
    num_pts = len(pts)
    tpts = _TColgp_Array1OfPnt(0, num_pts-1)
    for count in range(num_pts):
        tpts.SetValue(count, _gp.gp_Pnt(pts[count][0],
                                    pts[count][1],
                                    pts[count][2]))
    if len(weights) == num_pts:
        tweights = _TColStd_Array1OfReal(1, num_pts)
        for count in range(num_pts):
            tweights.SetValue(count + 1, weights[count])
        retval = edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_Geom_BezierCurve(tpts, tweights).GetHandle()).Edge())
    else:
        retval = edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_Geom_BezierCurve(tpts).GetHandle()).Edge())

    return retval


def circle(rad):
    """
    Returns an edge that is a circle centered at (0.0, 0.0, 0.0) with
    given radius.  Expects a radius
    """
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_gp.gp_Circ(_gp.gp_Ax2(_gp.gp_Pnt(0.0, 0.0, 0.0), _gp.gp_Dir(0.0, 0.0, 1.0)), rad)).Edge())


def ellipse(rad1, rad2):
    """
    Returns an edge that is an ellipse centered at (0.0, 0.0, 0.0)
    with major radius rad1 and minor radius rad2.
    """
    if rad2 > rad1:
        print 'Error: Major radius ', rad1, ' must be greater than minor radius ', rad2
        _sys.exit()
    return edge(_BRepBuilderAPI.BRepBuilderAPI_MakeEdge(_gp.gp_Elips(_gp.gp_Ax2(_gp.gp_Pnt(0.0, 0.0, 0.0), _gp.gp_Dir(0.0, 0.0, 1.0)), rad1, rad2)).Edge())

# Wire Primitives


def polygon(pts):
    """
    Returns a wire which is a polygon.
    Expects a list of points
    """

    b = _BRepBuilderAPI.BRepBuilderAPI_MakePolygon()
    for count in range(len(pts)):
        b.Add(_gp.gp_Pnt(pts[count][0], pts[count][1], pts[count][2]))
    return wire(b.Wire())


def rectangle(dx, dy):
    """
    Returns a wire in the shape of a rectangle.  The lower left
    coordinate is (0,0).
    """
    return polygon([(0.0, 0.0, 0.0),
                    (dx, 0.0, 0.0),
                    (dx, dy, 0.0),
                    (0.0, dy, 0.0),
                    (0.0, 0.0, 0.0)])


def ngon(rad, n):
    """
    Returns a wire which is an ngon (e.g. 6gon is a hexagon) in the x-y
    plane.  Expects a radius and a number of sides
    """

    angle = 0.0
    pts = []
    for count in range(n+1):
        angle = angle + 2*_math.pi/n
        pts.append((rad*_math.cos(angle), rad*_math.sin(angle), 0.0))
    return polygon(pts)


def helix(rad, angle, turns, eps=1e-12):
    """
    Returns a wire that is a helix centered at (0.0, 0.0, 0.0) with
    given radius, helix angle, and number of turns.

    turns currently must be an integer multiple of 0.25.

    This used to return an edge.  I found a way for an exact edge, but
    the underlying curve was a spline, and it degenerated over many
    turns.  I replaced it with a wire that is a spline over quarter
    turns and replicated.
    """

    # This routine made a nice edge, but the underlying curve was a
    # spline fit that had trouble with many revolutions.
    """
    # Define the parametric line
    curve = GCE2d_MakeSegment(gp_Pnt2d(0.0, 0.0), gp_Pnt2d(2*_math.pi*turns, 2*_math.pi*rad*turns*_math.tan(angle)))
    # Define the surface to wrap the line on
    surface = Geom_CylindricalSurface(gp_Ax3(gp_Ax2(gp_Pnt(0.0, 0.0, 0.0), gp_Dir(0.0, 0.0, 1.0))), rad)
    raw_edge = BRepBuilderAPI_MakeEdge(curve.Operator(), surface.GetHandle()).Edge()
    BRepLib.BuildCurve3d(raw_edge) # edge orientation messed up with this--seems to use a spline
    return edge(raw_edge)
    """

    # This routine breaks the helix into quarter circles of beziers.
    # It is exact, since a properly weighted bezier generates a
    # circle.

    # fits and returns a wire.
    full_angle = _math.pi/2
    frac_parts = 4 * turns  # Change if full_angle changes
    num_parts = int(frac_parts)
    rem_parts = frac_parts - num_parts
    if abs(rem_parts) > eps:
        print 'Error: Fractional turns not currently supported.'
        _sys.exit()

    # Calculate a quarter helix using a weighted bezier
    z0 = rad * full_angle * _math.tan(angle)
    e1 = bezier([(rad, 0.0, 0.0), (rad, rad, z0/2), (0.0, rad, z0)], [1.0, 1.0/_math.sqrt(2.0), 1.0])

    # Replicate the edge, spinning and translating, to make a helix
    retval = []
    for count in range(num_parts):
        locale = e1.copy()
        locale.rotatez(count * full_angle)
        locale.translate((0.0, 0.0, count * z0))
        retval.append(locale)
    return wire(retval)

# Face Primitives


def plane(w1, inner_wires=[]):
    """
    Returns a face which is a plane.

    w1 is a wire that bounds the outside of the face
    inner_wires are a list of wires that are holes in the face

    Expects all wires are planarized.
    """
    # w1 must be planar!
    ow1 = _TopoDS_wire(w1.shape)
    #ow1.Orientation(TopAbs_EXTERNAL) # This made them disappear
    b = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(ow1)
    for inner_wire in inner_wires:
        iw = _TopoDS_wire(inner_wire.shape)
        #iw.Orientation(TopAbs_EXTERNAL) # This didn't help
        b.Add(iw)
    if not b.IsDone():
        raise NameError('FaceError')
    else:
        retval = face(b.Face())
        # This is a poor way to fix an orientation problem ***
        if len(inner_wires) > 0:
            retval.fix()
        return retval


def surface(f1, w1):
    """
    Returns a face which has a surface defined by a face f1 bounded by
    the closed wire w1.
    """
    brt = _BRep_Tool()
    s = brt.Surface(_TopoDS_face(f1.shape))
    b = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(s, _TopoDS_wire(w1.shape))
    return face(b.Face())


def filling(w1, **options):
    """
    Returns a face which is a 3D surface fit to the wire w1.  Warning:
    OCC may modify the wire slightly to fit the surface.  Expects a
    closed curved wire
    """
    call_options = {}
    if 'degree' in options:
        call_options['Degree'] = options['degree']
    if 'max_degree' in options:
        call_options['MaxDeg'] = options['max_degree']
    if 'continuity' in options:
        occ_cont = [_GeomAbs.GeomAbs_C0, _GeomAbs.GeomAbs_C1,
                    _GeomAbs.GeomAbs_C2][continuity]
    else:
        occ_cont = _GeomAbs.GeomAbs_C0
    if 'num_pts' in options:
        call_options['NbPtsOnCur'] = options['num_pts']
    if 'num_iters'in options:
        call_options['NbIter'] = options['num_iters']
    if 'anisotropy' in options:
        call_options['Anisotropie'] = options['anisotropy']
    if 'tolerance2d'in options:
        call_options['Tol2d'] = options['tolerance2d']
    if 'tolerance3d' in options:
        call_options['Tol3d'] = options['tolerance3d']
    if 'tolerance_angle' in options:
        call_options['TolAng'] = options['tolerance_angle']
    if 'tolerance_curve' in options:
        call_options['TolCurv'] = options['tolerance_curve']
    if 'max_segments' in options:
        call_options['MaxSegments'] = options['max_segments']

    raw_edges = w1._raw('edge')
    b = _BRepOffsetAPI.BRepOffsetAPI_MakeFilling(**call_options)
    for raw_edge in raw_edges:
        b.Add(_TopoDS_edge(raw_edge), occ_cont)
    b.Build()
    return face(b.Shape())


def slice(s1, x=None, y=None, z=None):
    """
    Returns a slice of solid s1.  A slice is a list of faces derived
    from a plane cutting through s1.

    x can be the plane.  It's up to you to make sure the plane extends
    beyond s1's bounds.  If not, only specify one of x, y, or z as a
    float.  For example, x = 5.0 specifies the plane with any value of
    y or z that always has x = 5.0.
    """
    if isinstance(x, face):
        p1 = x
    else:
        xmin, ymin, zmin, xmax, ymax, zmax = s1.bounds()
        if x:
            w1 = polygon([(x, ymin, zmin),
                          (x, ymax, zmin),
                          (x, ymax, zmax),
                          (x, ymin, zmax),
                          (x, ymin, zmin)])
        elif y:
            w1 = polygon([(xmin, y, zmin),
                          (xmax, y, zmin),
                          (xmax, y, zmax),
                          (xmin, y, zmax),
                          (xmin, y, zmin)])
        else:
            w1 = polygon([(xmin, ymin, z),
                          (xmax, ymin, z),
                          (xmax, ymax, z),
                          (xmin, ymax, z),
                          (xmin, ymin, z)])
        p1 = plane(w1)

    b1 = _BRepAlgoAPI.BRepAlgoAPI_Common(s1.shape, p1.shape)
    s2 = solid(b1.Shape())
    return s2.subshapes('face')

# Solid Primitives


def box(dx, dy, dz):
    """
    Returns a solid box.

    The box fills the x-direction from 0 to dx,
    the y-direction from 0 to dy,
    and the z-direction from 0 to dz.
    """
    return solid(_BRepPrimAPI.BRepPrimAPI_MakeBox(dx, dy, dz).Shape())


def wedge(dx, dy, dz, lx, xmax=None, zmin=None, zmax=None):
    """
    Returns a solid wedge.
    Expects dx, dy, dz, lx -or- dx, dy, dz, xmin, xmax, zmin, zmax

    dx, dy, and dz follow the box conventions.

    If only lx is given, dx defines the xlength at y=0 and lx defines
    the xlength at y=dy.

    If xmin, xmax, zmin, and zmax are given, xmin and xmax define the
    x wedge limits at y=dy, and zmin and zmax define the z wedge
    limits at y=dy.

    The limits at y=0 follow the box convention.
    """

    if xmax is None and zmin is None and zmax is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeWedge(dx, dy, dz, lx).Shape())
    else:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeWedge(dx, dy, dz, lx, xmax, zmin, zmax).Shape())


def cylinder(rad, height, angle=None):
    """
    Returns a solid cylinder.

    If angle is given, it limits the cylinder in the x-y plane.
    """

    if angle is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeCylinder(rad, height).Shape())
    else:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeCylinder(rad, height, angle).Shape())


def sphere(rad, angle1=None, angle2=None, angle3=None):
    """
    Returns a solid sphere.

    rad is the sphere radius.
    If only angle1 is given, angle1 limits the sphere in the x-y plane.
    If only angle1 and angle2 are given, they limit the sphere to a
    lower latitude (angle1) and an upper latitude (angle2).
    If all three angles are given, angle1 limits the x-y plane, and
    angle2 and angle3 limit the latitudes.
    """

    if angle1 is None and angle2 is None and angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeSphere(rad).Shape())
    elif angle2 is None and angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeSphere(rad, angle1).Shape())
    elif angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeSphere(rad, angle1, angle2).Shape())
    else:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeSphere(rad, angle1, angle2, angle3).Shape())


def cone(rad1, rad2, height, angle=None):
    """
    Returns a solid cone.

    rad1 is the radius at z=0.
    rad2 is the radius at z=height.
    height is the cone height.
    """
    if angle is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeCone(rad1, rad2, height).Shape())
    else:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeCone(rad1, rad2, height, angle).Shape())


def bezier_cone(rad1, rad2, height, angle=None):
    """
    Returns a solid cone where the faces are plane or splines.

    I found cone pretty buggy when fillets were needed.  This should
    yield an identical solid, but it sometimes was nicer to fillets.

    I think this would be even more robust if I knew the proper
    coefficients to make a bezier a cone instead of revolving it.
    Surfaces of revolution have their own problems.
    """
    if angle is None:
        angle = 2.0 * _math.pi
    e1 = bezier([(rad1, 0.0, 0.0), (rad2, 0.0, height)])
    w1 = polygon([(rad2, 0.0, height),
                  (0.0, 0.0, height),
                  (0.0, 0.0, 0.0),
                  (rad1, 0.0, 0.0)])
    w1 = wire([e1, w1])
    return revol(plane(w1), (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), angle)


def torus(rad1, rad2, angle1=None, angle2=None, angle3=None):
    """
    Returns a solid torus.

    rad1 is the distance from torus center to extruded circle center.
    rad2 is the extruded circle radius.
    If only angle1 is given, angle1 limits the extrusion to angle1
    radians, instead of 2*pi radians.
    If only angle1 and angle2 are given, they limit the torus to a
    lower latitude (angle1) and an upper latitude (angle2).
    If all three angles are given, angle1 limits the extrusion, and
    angle2 and angle3 limit the latitudes.
    """
    if angle1 is None and angle2 is None and angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeTorus(rad1, rad2).Shape())
    elif angle2 is None and angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeTorus(rad1, rad2, angle1).Shape())
    elif angle3 is None:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeTorus(rad1, rad2, angle1, angle2).Shape())
    else:
        return solid(_BRepPrimAPI.BRepPrimAPI_MakeTorus(rad1, rad2, angle1, angle2, angle3).Shape())


def prism(s, pdir):
    """
    Returns a solid which is an extrusion of a face along a direction,
    or a shell which is an extrusion of a wire,
    or a face which is an extrusion of an edge,
    or an edge which is an extrusion of a vertex.

    Expects a shape to be extruded and a prism direction (dx, dy, dz).
    Currently ignores shell to composite solid possibilities.
    """
    b = _BRepPrimAPI.BRepPrimAPI_MakePrism(s.shape, _gp.gp_Vec(pdir[0], pdir[1], pdir[2]), True)
    b.Build()
    if s.stype == 'vertex':
        return edge(b.Shape())
    elif s.stype == 'edge':
        return face(b.Shape())
    elif s.stype == 'wire':
        return shell(b.Shape())
    elif s.stype == 'face':
        return solid(b.Shape())
    else:
        print 'Error: Improper type for prism', s.stype


def revol(s, pabout, pdir, angle):
    """
    Returns a solid which is a revolution of a face,
    or a shell which is a revolution of a wire,
    or a face which is a revolution of an edge,
    or an edge which is a revolution of a vertex.

    Expects a shape to be revolved, an about point, an about
    direction, and the angle to revolve the shape.
    """
    b = _BRepPrimAPI.BRepPrimAPI_MakeRevol(s.shape, _gp.gp_Ax1(_gp.gp_Pnt(pabout[0], pabout[1], pabout[2]), _gp.gp_Dir(pdir[0], pdir[1], pdir[2])), angle, 1)
    b.Build()
    if s.stype == 'vertex':
        return edge(b.Shape())
    elif s.stype == 'edge':
        return face(b.Shape())
    elif s.stype == 'wire':
        return shell(b.Shape())
    elif s.stype == 'face':
        return solid(b.Shape())
    else:
        print 'Error: Improper type for prism', s.stype


def loft(ws, ruled=False, stype='solid'):
    """
    Returns a solid or shell which is a fit of a list of closed wires.
    Expects a list of closed wires.

    I found OCC's BRepOffsetAPI_ThruSections buggy when each wire
    profile wasn't planar.
    """

    if stype == 'shell':
        b = _BRepOffsetAPI.BRepOffsetAPI_ThruSections(False, ruled)
    else:
        b = _BRepOffsetAPI.BRepOffsetAPI_ThruSections(True, ruled)
    for w in ws:
        b.AddWire(_TopoDS_wire(w.shape))
    b.Build()
    if stype == 'shell':
        return shell(b.Shape())
    else:
        return solid(b.Shape())


def plane_loft(ws, ruled=False, stype='solid'):
    """
    Returns a solid or shell which is a fit of a list of closed wires.
    Expects a list of closed wires.

    It assumes the generating wires fit in a plane, and it assumes
    each connection face is a plane.  All wires should have the same
    number of points.

    Currently, loft() often returns bsplines when the face should be
    planar.  This forces planar faces for the rare occasions when a
    loft should only have planar faces.  It would be better to find a
    routine that simplifies bsplines into primitives when possible
    ***.
    """

    profiles = []
    for w in ws:
        vs = w.subshapes('vertex')
        profile = []
        for v in vs:
            profile.append(v.center())
        profile.append(profile[0])
        profiles.append(profile)
    faces = []
    for pt_index in range(len(profiles[0])-1):
        for profile_index in range(len(profiles)-1):
            p = polygon([
                        profiles[profile_index][pt_index],
                        profiles[profile_index][pt_index+1],
                        profiles[profile_index+1][pt_index+1],
                        profiles[profile_index+1][pt_index],
                        profiles[profile_index][pt_index]])
            try:
                faces.append(plane(p))
            except NameError:
                print 'Error: Not Planar'
                _sys.exit()
                # The loft must have slightly changed edges or vertices,
                # because this was a mess.
                #w1 = polygon([profiles[profile_index][pt_index],
                #              profiles[profile_index][pt_index+1]])
                #w2 = polygon([profiles[profile_index+1][pt_index],
                #              profiles[profile_index+1][pt_index+1]])
                #faces.append(loft([w1, w2], 1))
                 
    if stype == 'solid':
        faces.append(plane(polygon(profiles[0])))
        faces.append(plane(polygon(profiles[-1])))
    s = shell(faces)
    s.fix()
    if stype == 'solid':
        return solid([s])
    else:
        return s


def pipe(profile, spine, continuous=False, transition='sharp', stype='solid', **options):
    """
    Returns a solid which is an extrusion of a closed wire profile
    along a wire spine.  Extrusion at discontinuities is controlled
    with the transition option.
    Expects a profile and a spine.

    For discontinuous spines, profile may be a list of profiles to be
    evaluated along the spine.  This forces a certain normal to the
    spine, which can be helpful for spines which don't sit in a plane.

    If the spine is continuous, change continuous to 1 to avoid bugs.

    Make sure the profile sits on the spine and is oriented
    perpendicular to the spine's direction.  When you don't do this, I
    didn't understand the returned value.
    """

    if continuous:
        if stype == 'shell':
            b = _BRepOffsetAPI.BRepOffsetAPI_MakePipe(_TopoDS_wire(spine.shape), profile.shape)
            b.Build()
            return shell(b.Shape())
        else:
            b = _BRepOffsetAPI.BRepOffsetAPI_MakePipe(_TopoDS_wire(spine.shape), plane(profile).shape) # Only works with planar profile ***
            b.Build()
            return solid(b.Shape())

    else:
        raw_modes = {'round': _BRepBuilderAPI.BRepBuilderAPI_RoundCorner,
                     'sharp': _BRepBuilderAPI.BRepBuilderAPI_RightCorner,
                     'transform': _BRepBuilderAPI.BRepBuilderAPI_Transformed}
        b = _BRepOffsetAPI.BRepOffsetAPI_MakePipeShell(_TopoDS_wire(spine.shape))
        #b.SetTolerance(1e-4, 1e-4, 1e-2) # Default
        #b.SetTolerance(1e-6, 1e-6, 1e-4) # Didn't help
        if 'contact' in options:
            contact = options['contact']
        else:
            contact = 0
        if 'correct' in options:
            correct = options['correct']
        else:
            correct = 0
        if isinstance(profile, list):
            for p in profile:
                b.Add(p.shape, contact, correct)
        else:
            b.Add(profile.shape, contact, correct)
        b.SetTransitionMode(raw_modes[transition])
        b.Build()
        if stype == 'shell':
            return shell(b.Shape())
        else:
            b.MakeSolid()
            return solid(b.Shape())


def helical_solid(profile, rad, angle, turns):
    """
    Returns a profile spun in a helix.  Why not use pipe?  Pipe
    changed the orientation of the profile.  This routine fixes the
    orientation correctly.

    profile is in the xy plane.  The helix will pass through (0,0).

    Turns must be an integer multiple of 0.25

    This routine only generates a quarter helix solid, then replicates
    and boolean merges to make the full solid.  Therefore, it is very
    expensive.  There must be a better way.  I am also uncertain how
    interpolation is done along the spine.  It may not be exact.
    """

    # Create a quarter of the solid
    local_turns = 0.25
    spine = helix(rad, angle, local_turns)
    # Orient the profile normal to the helix
    profile1 = profile.copy()
    #profile1.rotatex(_math.pi/2 + angle) # This made you have to
    #cut everything
    profile1.scaley(1.0 / _math.cos(angle))
    profile1.rotatex(_math.pi/2)
    profile1.translate((rad, 0.0, 0.0))
    profiles = []
    for count in range(2):
        local_profile = profile1.copy()
        local_profile.rotatez(count * _math.pi/2)
        local_profile.translate((0.0, 0.0, count * rad * _math.pi/2 * _math.tan(angle)))
        profiles.append(local_profile)
    quarter_thread = pipe(profiles, spine, 0)

    # Spin and translate the quarter into the full
    retval = quarter_thread.copy()
    for count in range(1, int(round(turns * 4))):
        local_thread = quarter_thread.copy()
        local_thread.rotatez((count % 4) * _math.pi/2)
        local_thread.translate((0.0, 0.0, count * rad * _math.pi/2 * _math.tan(angle)))
        retval = retval + local_thread
    return retval

# Useful functions that return arbitrary shapes


def offset(s1, dist, tolerance=1e-3, join='arc'):
    """
    Returns a list of solids which compose the offset from a solid
    or a list of faces which compose the offset from a face

    Both BRepOffsetAPI_MakeOffsetShape and BRepOffsetAPI_MakeOffset
    fail under way too many normal conditions ***
    """
    j = {'arc': _GeomAbs.GeomAbs_Arc,
         'tan': _GeomAbs.GeomAbs_Tangent,
         'int': _GeomAbs.GeomAbs_Intersection}[join]

    if s1.stype == 'solid':
        b = _BRepOffsetAPI.BRepOffsetAPI_MakeOffsetShape(
                s1.shape, dist, tolerance, False, False, j)
        raw_shape = b.Shape()
        ss = []
        if _raw_type(raw_shape) == 'compound':
            ex = _TopExp_Explorer(s, _TopAbs.TopAbs_SOLID)
            while ex.More():
                ss.append(solid(ex.Current()))
                ex.Next()
        elif _raw_type(raw_shape) == 'solid':
            ss.append(solid(raw_shape))
        else:
            print 'Warning: Unexpected type', _raw_type(raw_shape)
        return ss

    elif s1.stype == 'face':
        s1.shape.Orientation(_TopAbs.TopAbs_FORWARD)
        rawf = _TopoDS_face(s1.shape)
        brt = _BRep_Tool()
        surf = brt.Surface(rawf)
        b = _BRepOffsetAPI.BRepOffsetAPI_MakeOffset(rawf, j)
        b.Perform(dist)
        raw_shape = b.Shape()

        # This worked too
        #b = BRepFill_OffsetWire(rawf, j)
        #b.Perform(dist)
        #s = b.Shape()

        fs = []
        if _raw_type(raw_shape) == 'compound':  # Resulting wires broken
            ex = _TopExp_Explorer(raw_shape, _TopAbs.TopAbs_WIRE)
            while ex.More():
                bf = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(surf, _TopoDS_wire(ex.Current()))
                fs.append(face(bf.Face()))
                ex.Next()
        elif raw_shape.ShapeType() == _TopAbs.TopAbs_EDGE:  # Over-simplified
            bw = _BRepBuilderAPI.BRepBuilderAPI_MakeWire()
            bw.Add(raw_shape)
            bf = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(surf, _TopoDS_wire(bw.Wire()))
            fs.append(face(bf.Face()))
        elif raw_shape.ShapeType() == _TopAbs.TopAbs_WIRE:
            bf = _BRepBuilderAPI.BRepBuilderAPI_MakeFace(surf, _TopoDS_wire(raw_shape))
            fs.append(face(bf.Face()))
        return fs

    else:
        print 'Error: Only solid or face allowed for offset'

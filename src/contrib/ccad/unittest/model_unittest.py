"""
Description
-----------
ccad unittest for model.py.  View ../model.py for a full description
of ccad.

Test suite progresses exactly in the same order as model.py code.
Comments that separate blocks of model code are included here.

Author
------
Charles Sharman

License
-------
Distributed under the GNU LESSER GENERAL PUBLIC LICENSE Version 3.
View LICENSE for details.

Notes
-----
1. Make every Test class begin with the word Test to make suite work
2. Basic functionality caught in most places, particularly on
   different arguments.  Add more stringency as needed.
"""

import ccad

import math
import unittest
import sys

def dp(p1, p2):
    retval = []
    for count in range(len(p1)):
        retval.append(p1[count] - p2[count])
    return retval

def close(p1, p2, eps = 1e-6):
    """
    Makes sure pt1 and pt2 overlap within eps
    """
    if isinstance(p1, float) and isinstance(p2, float):
        return abs(p1 - p2) < eps
    else: # sequence assumed
        if len(p1) != len(p2):
            return False
        retval = True
        for count in range(len(p1)):
            if abs(p1[count] - p2[count]) >= eps:
                retval = False
                break
        return retval

# Shape Functions
class TestShapeFunctions(unittest.TestCase):

    def test_translated(self):
        delta = (0.1, 0.2, 0.3)
        s1 = ccad.sphere(1.0)
        s2 = ccad.translated(s1, delta)
        self.assert_(close(s2.center(), delta))

    def test_rotated(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.rotated(s1, (1.0, 0.0, 0.0), (0.0, 0.0, 1.0), math.pi/2)
        self.assert_(close(s2.center(), (1.0, -1.0, 0.0)))

    def test_rotatedx(self):
        s1 = ccad.sphere(1.0)
        s1.translate((0.0, 0.0, 1.0))
        s2 = ccad.rotatedx(s1, math.pi/2)
        self.assert_(close(s2.center(), (0.0, -1.0, 0.0)))

    def test_rotatedy(self):
        s1 = ccad.sphere(1.0)
        s1.translate((1.0, 0.0, 0.0))
        s2 = ccad.rotatedy(s1, math.pi/2)
        self.assert_(close(s2.center(), (0.0, 0.0, -1.0)))

    def test_rotatedz(self):
        s1 = ccad.sphere(1.0)
        s1.translate((1.0, 0.0, 0.0))
        s2 = ccad.rotatedz(s1, math.pi/2)
        self.assert_(close(s2.center(), (0.0, 1.0, 0.0)))

    def test_mirrored(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.mirrored(s1, (1.0, 0.0, 0.0), (1.0, 0.0, 0.0))
        self.assert_(close(s2.center(), (2.0, 0.0, 0.0)))

    def test_mirroredx(self):
        s1 = ccad.sphere(1.0)
        s1.translate((1.0, 0.0, 0.0))
        s2 = ccad.mirroredx(s1)
        self.assert_(close(s2.center(), (-1.0, 0.0, 0.0)))

    def test_mirroredy(self):
        s1 = ccad.sphere(1.0)
        s1.translate((0.0, 1.0, 0.0))
        s2 = ccad.mirroredy(s1)
        self.assert_(close(s2.center(), (0.0, -1.0, 0.0)))

    def test_mirroredz(self):
        s1 = ccad.sphere(1.0)
        s1.translate((0.0, 0.0, 1.0))
        s2 = ccad.mirroredz(s1)
        self.assert_(close(s2.center(), (0.0, 0.0, -1.0)))

    def test_scaled(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s2 = ccad.scaled(s1, 2.0, 3.0, 4.0)
        v2 = (1.0*2.0)*(2.0*3.0)*(3.0*4.0)
        self.assert_(close(v2, s2.volume()))
        
    def test_scaledx(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s2 = ccad.scaledx(s1, 2.0)
        v2 = (1.0*2.0)*(2.0*1.0)*(3.0*1.0)
        self.assert_(close(v2, s2.volume()))

    def test_scaledy(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s2 = ccad.scaledy(s1, 2.0)
        v2 = (1.0*1.0)*(2.0*2.0)*(3.0*1.0)
        self.assert_(close(v2, s2.volume()))

    def test_scaledz(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s2 = ccad.scaledz(s1, 2.0)
        v2 = (1.0*1.0)*(2.0*1.0)*(3.0*2.0)
        self.assert_(close(v2, s2.volume()))

    # reverse skipped ***

# Face Functions

# Solid Functions
class TestSolidFunctions(unittest.TestCase):

    def test_fuse(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(2.0, 2.0, 2.0)
        s2.translate((0.0, -1.0, -1.0))
        s3 = ccad.fuse(s1, s2)
        v3new = s3.volume()
        s3 = ccad.old_fuse(s1, s2)
        v3old = s3.volume()
        s3 = s1 + s2
        v3op = s3.volume()
        value = 2.0*2.0*2.0 + 0.5*4.0/3.0*math.pi*1.0**3
        self.assert_(close(v3new, value) and
                     close(v3old, value) and
                     close(v3op, value))

    def test_cut(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(2.0, 2.0, 2.0)
        s2.translate((0.0, -1.0, -1.0))
        s3 = ccad.cut(s1, s2)
        v3new = s3.volume()
        s3 = ccad.old_cut(s1, s2)
        v3old = s3.volume()
        s3 = s1 - s2
        v3op = s3.volume()
        value = 0.5*4.0/3.0*math.pi*1.0**3
        self.assert_(close(v3new, value) and
                     close(v3old, value) and
                     close(v3op, value))

    def test_common(self):
        s1 = ccad.sphere(1.0)
        v1 = s1.volume()
        s2 = ccad.box(2.0, 2.0, 2.0)
        s2.translate((0.0, -1.0, -1.0))
        s3 = ccad.common(s1, s2)
        v3new = s3.volume()
        s3 = ccad.old_common(s1, s2)
        v3old = s3.volume()
        s3 = s1 & s2
        v3op = s3.volume()
        value = 0.5*4.0/3.0*math.pi*1.0**3
        self.assert_(close(v3new, value) and
                     close(v3old, value) and
                     close(v3op, value))
        
    def test_fillet_fuse(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        s3 = ccad.fillet_fuse(s1, s2, 0.5)
        v3 = s3.volume()
        #print v3, 4.0*4.0*4.0 + 0.5*4.0/3.0*math.pi*1.0**3
        # empirical
        self.assert_(close(v3, 0.2 + 4.0*4.0*4.0 + 0.5*4.0/3.0*math.pi*1.0**3, 0.1))

    def test_fillet_cut(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        s3 = ccad.fillet_cut(s1, s2, 0.25)
        v3 = s3.volume()
        #print v3, 0.5*4.0/3.0*math.pi*1.0**3
        # empirical
        self.assert_(close(v3, 0.5*4.0/3.0*math.pi*1.0**3 - 0.127, 0.1))

    def test_fillet_common(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        s3 = ccad.fillet_common(s1, s2, 0.25)
        v3 = s3.volume()
        #print v3, 0.5*4.0/3.0*math.pi*1.0**3
        # empirical
        self.assert_(close(v3, 0.5*4.0/3.0*math.pi*1.0**3 - 0.127, 0.1))

    def test_chamfer_fuse(self):
        s1 = ccad.sphere(1.0)
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        s3 = ccad.chamfer_fuse(s1, s2, 0.25)
        v3 = s3.volume()
        #print v3, 4.0*4.0*4.0 + 0.5*4.0/3.0*math.pi*1.0**3
        # empirical
        self.assert_(close(v3, 0.2 + 4.0*4.0*4.0 + 0.5*4.0/3.0*math.pi*1.0**3, 0.1))

    def test_chamfer_cut(self):
        # sphere had trouble
        s1 = ccad.box(2.0, 2.0, 2.0)
        s1.translate((-1.0, -1.0, -1.0))
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        s3 = ccad.chamfer_cut(s1, s2, 0.25)
        v3 = s3.volume()
        #print v3, 0.5*2.0*2.0*2.0
        # empirical
        self.assert_(close(v3, 0.5*2.0*2.0*2.0 - 0.229, 0.1))

    def test_glue(self):
        s1 = ccad.box(2.0, 2.0, 2.0)
        s1.translate((-2.0, -1.0, -1.0))
        s2 = ccad.box(4.0, 4.0, 4.0)
        s2.translate((0.0, -2.0, -2.0))
        f1 = s1.nearest('face', [(0.0, 0.0, 0.0)])[0]
        f2 = s2.nearest('face', [(0.0, 0.0, 0.0)])[0]
        s3 = ccad.glue(s1, s2, [(f1, f2)])
        v3 = s3.volume()
        self.assert_(close(v3, 2.0*2.0*2.0 + 4.0*4.0*4.0))

    def test_simple_glue(self):
        s1 = ccad.box(2.0, 2.0, 2.0)
        s1.translate((-2.0, -1.0, -1.0))
        s2 = ccad.box(2.0, 2.0, 2.0)
        s2.translate((0.0, -1.0, -1.0))
        f1 = s1.nearest('face', [(0.0, 0.0, 0.0)])[0]
        f2 = s2.nearest('face', [(0.0, 0.0, 0.0)])[0]
        s3 = ccad.glue(s1, s2, [(f1, f2)])
        v3 = s3.volume()
        self.assert_(close(v3, 2*2.0*2.0*2.0))

# Import Functions
class TestImportFunctions(unittest.TestCase):

    # test_to_brep covered by classes

    # test_to_iges covered by classes

    # test_to_step covered by classes

    def test_from_svg(self):
        ws = ccad.from_svg('../doc/logo.svg')
        total_length = 0.0
        for w in ws:
            total_length = total_length + w.length()
        print 'total_length', total_length
        self.assert_(close(total_length, 2962.0, 1.0))

# Classes
# Philosophy:

# 1. translate*, rotate*, mirror*, scale* are omitted, since they are
#    one-liners which are mostly tested by TestShapeFunctions

class TestVertex(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        r1 = s1.center()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.center()
        self.assert_(close(r1, (1.0, 2.0, 3.0)) and
                     close(r2, (1.0, 2.0, 3.0)))

    def test_to_iges(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        r1 = s1.center()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.center()
        self.assert_(close(r1, (1.0, 2.0, 3.0)) and
                     close(r2, (1.0, 2.0, 3.0)))

    # This broke. ***
    #def test_to_step(self):
    #    s1 = ccad.vertex((1.0, 2.0, 3.0))
    #    r1 = s1.center()
    #    s1.to_step('tmp.stp')
    #    s2 = ccad.from_step('tmp.stp')
    #    r2 = s2.center()
    #    self.assert_(close(r1, (1.0, 2.0, 3.0)) and
    #                 close(r2, (1.0, 2.0, 3.0)))

    # subshapes skipped since there are no vertex subshapes
    
    def test_copy(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (1.0, 2.0, 3.0)) and
                     close(s1.center(), (2.0, 3.0, 4.0)))

    def test_bounds(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        self.assert_(close(s1.bounds(), (1.0, 2.0, 3.0, 1.0, 2.0, 3.0)))

    def test_center(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    # subcenters skipped since there are no vertex subshapes

    def test_check(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        s1.fix()
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_dump(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        s1.dump()
        self.assert_(True)

    # nearest skipped since there are no vertex subshapes

    # subtolerance skipped since there are no vertex subshapes

    # specific

    # center skipped since verified above

    def tolerance(self):
        s1 = ccad.vertex((1.0, 2.0, 3.0))
        self.assert_(close(s1.tolerance(), 1e-7, eps = 1e-9))

class TestEdge(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.circle(1.0)
        r1 = s1.length()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.length()
        self.assert_(close(r1, 2*math.pi) and
                     close(r2, 2*math.pi))

    def test_to_iges(self):
        s1 = ccad.circle(1.0)
        r1 = s1.length()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.length()
        self.assert_(close(r1, 2*math.pi) and
                     close(r2, 2*math.pi))
     
    # This broke ***
    #def test_to_step(self):
    #    s1 = ccad.circle(1.0)
    #    r1 = s1.length()
    #    s1.to_step('tmp.stp')
    #    s2 = ccad.from_step('tmp.stp')
    #    r2 = s2.length()
    #    self.assert_(close(r1, 2*math.pi) and
    #                 close(r2, 2*math.pi))

    def test_subshapes(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        vs = s1.subshapes('vertex')
        self.assert_(len(vs) == 2 and
                     close(vs[0].center(), (0.0, 0.0, 0.0)) and
                     close(vs[1].center(), (1.0, 1.0, 1.0)))
    
    def test_copy(self):
        s1 = ccad.circle(1.0)
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (0.0, 0.0, 0.0)) and
                     close(s1.center(), (1.0, 1.0, 1.0)))

    def test_bounds(self):
        s1 = ccad.circle(1.0)
        self.assert_(close(s1.bounds(), (-1.0, -1.0, 0.0, 1.0, 1.0, 0.0), eps = 0.1))

    def test_center(self):
        s1 = ccad.circle(1.0)
        s1.translate((1.0, 2.0, 3.0))
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_subcenters(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        cs = s1.subcenters('vertex')
        self.assert_(close(cs[0], (0.0, 0.0, 0.0)) and
                     close(cs[1], (1.0, 1.0, 1.0)))
        
    def test_check(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        s1.fix()
        self.assert_(close(s1.center(), (0.5, 0.5, 0.5)))

    def test_dump(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        s1.dump()
        self.assert_(True)

    def test_nearest(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        i1 = s1.nearest('vertex', [(1.0, 1.0, 1.0)])[0]
        self.assert_(i1 == 1)

    def test_subtolerance(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        subtols = s1.subtolerance()
        self.assert_(close(subtols, (1e-7, 1e-7, 1e-7), eps = 1e-9))
    
    # specific

    # center skipped since verified above

    # length skipped since verified above

    def tolerance(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        self.assert_(close(s1.tolerance(), 1e-7, eps = 1e-9))

    def type(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        self.assert_(s1.type() == 'line')

    def poly(self):
        s1 = ccad.segment((0.0, 0.0, 0.0), (1.0, 1.0, 1.0))
        p1 = s1.poly()
        self.assert_(len(p1) == 2 and
                     close(p1[0], (0.0, 0.0, 0.0)) and
                     close(p1[1], (1.0, 1.0, 1.0)))

class TestWire(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.ngon(1.0, 3)
        r1 = s1.length()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.length()
        self.assert_(close(r1, 5.196, eps = 1e-3) and
                     close(r2, 5.196, eps = 1e-3))

    def test_to_iges(self):
        s1 = ccad.ngon(1.0, 3)
        r1 = s1.length()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.length()
        self.assert_(close(r1, 5.196, eps = 1e-3) and
                     close(r2, 5.196, eps = 1e-3))
      
    # This broke ***
    #def test_to_step(self):
    #    s1 = ccad.ngon(1.0, 3)
    #    r1 = s1.length()
    #    s1.to_step('tmp.stp')
    #    s2 = ccad.from_step('tmp.stp')
    #    r2 = s2.length()
    #    self.assert_(close(r1, 5.196, eps = 1e-3) and
    #                 close(r2, 5.196, eps = 1e-3))

    def test_subshapes(self):
        s1 = ccad.ngon(1.0, 3)
        es = s1.subshapes('edge')
        vs = s1.subshapes('vertex')
        self.assert_(len(vs) == 3 and len(es) == 3)
    
    def test_copy(self):
        s1 = ccad.ngon(1.0, 3)
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (0.0, 0.0, 0.0)) and
                     close(s1.center(), (1.0, 1.0, 1.0)))

    def test_bounds(self):
        s1 = ccad.ngon(1.0, 3)
        rt3d2 = math.sqrt(3.0)/2
        print 'bounds', s1.bounds()
        self.assert_(close(s1.bounds(), (-0.5, -rt3d2, 0.0, 1.0, rt3d2, 0.0), eps = 0.1))

    def test_center(self):
        s1 = ccad.ngon(1.0, 3)
        s1.translate((1.0, 2.0, 3.0))
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_subcenters(self):
        s1 = ccad.ngon(1.0, 3)
        cs = s1.subcenters('vertex')
        rt3d2 = math.sqrt(3.0)/2
        self.assert_(close(cs[0], (-0.5, rt3d2, 0.0)) and
                     close(cs[1], (-0.5, -rt3d2, 0.0)) and
                     close(cs[2], (1.0, 0.0, 0.0)))
        
    def test_check(self):
        s1 = ccad.ngon(1.0, 3)
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.ngon(1.0, 3)
        s1.translate((1.0, 2.0, 3.0))
        s1.fix()
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_dump(self):
        s1 = ccad.ngon(1.0, 3)
        s1.dump()
        self.assert_(True)

    def test_nearest(self):
        s1 = ccad.ngon(1.0, 3)
        i1 = s1.nearest('vertex', [(1.0, 0.0, 0.0)])[0]
        self.assert_(i1 == 2)

    def test_subtolerance(self):
        s1 = ccad.ngon(1.0, 3)
        subtols = s1.subtolerance()
        self.assert_(close(subtols, (1e-7, 1e-7, 1e-7), eps = 1e-9))
    
    # specific

    # center skipped since verified above

    # length skipped since verified above

    def tolerance(self):
        s1 = ccad.ngon(1.0, 3)
        self.assert_(close(s1.tolerance(), 1e-7, eps = 1e-9))

    def poly(self):
        s1 = ccad.ngon(1.0, 3)
        p1 = s1.poly()
        cs = s1.subcenters('vertex')
        self.assert_(len(p1) == 4 and
                     close(p1[0], cs[0]) and
                     close(p1[1], cs[1]) and
                     close(p1[2], cs[2]) and
                     close(p1[3], cs[3]))

class TestFace(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        r1 = s1.area()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.area()
        self.assert_(close(r1, r2))

    def test_to_iges(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        r1 = s1.area()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.area()
        self.assert_(close(r1, r2))
        
    def test_to_step(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        r1 = s1.area()
        s1.to_step('tmp.stp')
        s2 = ccad.from_step('tmp.stp')
        r2 = s2.area()
        self.assert_(close(r1, r2))

    def test_subshapes(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        ws = s1.subshapes('wire')
        es = s1.subshapes('edge')
        vs = s1.subshapes('vertex')
        self.assert_(len(vs) == 3 and len(es) == 3 and len(ws) == 1)
    
    def test_copy(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (0.0, 0.0, 0.0)) and
                     close(s1.center(), (1.0, 1.0, 1.0)))

    def test_bounds(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        rt3d2 = math.sqrt(3.0)/2
        print 'bounds', s1.bounds()
        self.assert_(close(s1.bounds(), (-0.5, -rt3d2, 0.0, 1.0, rt3d2, 0.0), eps = 0.1))

    def test_center(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        s1.translate((1.0, 2.0, 3.0))
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_subcenters(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        cs = s1.subcenters('vertex')
        rt3d2 = math.sqrt(3.0)/2
        self.assert_(close(cs[0], (-0.5, rt3d2, 0.0)) and
                     close(cs[1], (-0.5, -rt3d2, 0.0)) and
                     close(cs[2], (1.0, 0.0, 0.0)))
        
    def test_check(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        s1.translate((1.0, 2.0, 3.0))
        s1.fix()
        self.assert_(close(s1.center(), (1.0, 2.0, 3.0)))

    def test_dump(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        s1.dump()
        self.assert_(True)

    def test_nearest(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        i1 = s1.nearest('vertex', [(1.0, 0.0, 0.0)])[0]
        self.assert_(i1 == 2)

    def test_subtolerance(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        subtols = s1.subtolerance()
        self.assert_(close(subtols, (1e-7, 1e-7, 1e-7), eps = 1e-9))
    
    # specific

    def test_fillet(self):
        s = ccad.plane(ccad.ngon(1.0, 3))
        s1 = s.copy()
        s1.fillet(0.2)
        r1 = s1.area()

        s1 = s.copy()
        s1.fillet(0.2, [0])
        r2 = s1.area()

        s1 = s.copy()
        s1.fillet(0.2, [(1.0, 0.0, 0.0)])
        r3 = s1.area()

        s1 = s.copy()
        s1.fillet([(0.1, [0]),
                   (0.2, [1]),
                   (0.3, [2])])
        r4 = s1.area()
        # empirical
        self.assert_(close(r1, 1.217, eps=0.001) and
                     close(r2, 1.272, eps=0.001) and
                     close(r3, 1.272, eps=0.001) and
                     close(r4, 1.203, eps=0.001))

    def wire(self):
        w1 = ccad.ngon(1.0, 3)
        s1 = ccad.plane(w1)
        w2 = s1.wire()
        self.assert_(close(w1.length(), w2.length()))

    def inner_wires(self):
        c1 = ccad.cylinder(1.0, 1.0)
        c2 = ccad.cylinder(2.0, 1.0)
        s1 = c2 - c1
        f1 = s1.nearest('face', [(0.0, 0.0, 1.0)])[0]
        iw = f1.inner_wires()[0]
        self.assert_(close(iw.length(), 2*math.pi*1.0))

    # center skipped since verified above

    # area skipped since verified above

    def tolerance(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        self.assert_(close(s1.tolerance(), 1e-7, eps = 1e-9))

    def type(self):
        s1 = ccad.plane(ccad.ngon(1.0, 3))
        self.assert_(s1.type() == 'plane')

class TestShell(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        r1 = s1.area()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.area()
        self.assert_(close(r1, 22.0) and
                     close(r2, 22.0))

    def test_to_iges(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        r1 = s1.area()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.area()
        self.assert_(close(r1, 22.0) and
                     close(r2, 22.0))
        
    def test_to_step(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        r1 = s1.area()
        s1.to_step('tmp.stp')
        s2 = ccad.from_step('tmp.stp')
        r2 = s2.area()
        self.assert_(close(r1, 22.0) and
                     close(r2, 22.0))

    def test_subshapes(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        fs = s1.subshapes('face')
        ws = s1.subshapes('wire')
        es = s1.subshapes('edge')
        vs = s1.subshapes('vertex')
        self.assert_(len(vs) == 8 and len(es) == 12 and len(ws) == 6 and len(fs) == 6)
    
    def test_copy(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (0.5, 1.0, 1.5)) and
                     close(s1.center(), (1.5, 2.0, 2.5)))

    def test_bounds(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        self.assert_(close(s1.bounds(), (0.0, 0.0, 0.0, 1.0, 2.0, 3.0), eps = 0.1))

    def test_center(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        self.assert_(close(s1.center(), (0.5, 1.0, 1.5)))

    def test_subcenters(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        cs = s1.subcenters('face')
        center = [0.0, 0.0, 0.0]
        for c in cs:
            center[0] = center[0] + c[0]
            center[1] = center[1] + c[1]
            center[2] = center[2] + c[2]
        self.assert_(close(center, (6.0*0.5, 6.0*1.0, 6.0*1.5)))
        
    def test_check(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        s1.fix()
        self.assert_(close(s1.center(), (0.5, 1.0, 1.5)))

    def test_dump(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        s1.dump()
        self.assert_(True)

    def test_nearest(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        i1 = s1.nearest('vertex', [(1.0, 2.0, 3.0)])[0]
        self.assert_(close(s1.subshapes('vertex')[i1].center(), (1.0, 2.0, 3.0)))

    def test_subtolerance(self):
        s1 = ccad.box(1.0, 2.0, 3.0).subshapes('shell')[0]
        subtols = s1.subtolerance()
        self.assert_(close(subtols, (1e-7, 1e-7, 1e-7), eps = 1e-9))
    
    # specific

    # center skipped since verified above

    # area skipped since verified above

class TestSolid(unittest.TestCase):

    # inherited from shape
    def test_to_brep(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        r1 = s1.volume()
        s1.to_brep('tmp.brp')
        s2 = ccad.from_brep('tmp.brp')
        r2 = s2.volume()
        self.assert_(close(r1, 6.0) and
                     close(r2, 6.0))

    def test_to_iges(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        r1 = s1.volume()
        s1.to_iges('tmp.igs', brep_mode = 1)
        s2 = ccad.from_iges('tmp.igs')
        r2 = s2.volume()
        self.assert_(close(r1, 6.0) and
                     close(r2, 6.0))

        
    def test_to_step(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        r1 = s1.volume()
        s1.to_step('tmp.stp')
        s2 = ccad.from_step('tmp.stp')
        r2 = s2.volume()
        self.assert_(close(r1, 6.0) and
                     close(r2, 6.0))

    def test_subshapes(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        ss = s1.subshapes('shell')
        fs = s1.subshapes('face')
        ws = s1.subshapes('wire')
        es = s1.subshapes('edge')
        vs = s1.subshapes('vertex')
        self.assert_(len(vs) == 8 and len(es) == 12 and len(ws) == 6 and len(fs) == 6 and len(ss) == 1)
    
    def test_copy(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s2 = s1.copy()
        s1.translate((1.0, 1.0, 1.0))
        self.assert_(close(s2.center(), (0.5, 1.0, 1.5)) and
                     close(s1.center(), (1.5, 2.0, 2.5)))

    def test_bounds(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        self.assert_(close(s1.bounds(), (0.0, 0.0, 0.0, 1.0, 2.0, 3.0), eps = 0.1))

    def test_center(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        self.assert_(close(s1.center(), (0.5, 1.0, 1.5)))

    def test_subcenters(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        cs = s1.subcenters('face')
        center = [0.0, 0.0, 0.0]
        for c in cs:
            center[0] = center[0] + c[0]
            center[1] = center[1] + c[1]
            center[2] = center[2] + c[2]
        self.assert_(close(center, (6.0*0.5, 6.0*1.0, 6.0*1.5)))
        
    def test_check(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        self.assert_(s1.check())

    def test_fix(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s1.fix()
        self.assert_(close(s1.center(), (0.5, 1.0, 1.5)))

    def test_dump(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s1.dump()
        self.assert_(True)

    def test_nearest(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        i1 = s1.nearest('vertex', [(1.0, 2.0, 3.0)])[0]
        self.assert_(close(s1.subshapes('vertex')[i1].center(), (1.0, 2.0, 3.0)))

    def test_subtolerance(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        subtols = s1.subtolerance()
        self.assert_(close(subtols, (1e-7, 1e-7, 1e-7), eps = 1e-9))
    
    # specific

    # add skipped since verified in SolidFunctions

    # sub skipped since verified in SolidFunctions

    # and skipped since verified in SolidFunctions

    def test_to_stl(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        s1.to_stl('tmp.stl')
        self.assert_(True)

    # center skipped since verified above

    def test_fillet(self):
        s = ccad.box(1.0, 2.0, 3.0)
        s1 = s.copy()
        s1.fillet(0.2)
        r1 = s1.volume()
        
        s2 = s.copy()
        s2.fillet(0.2, [0])
        r2 = s2.volume()

        s3 = s.copy()
        s3.fillet(0.2, [(1.0, 2.0, 1.5)])
        r3 = s3.volume()

        s4 = s.copy()
        s4.fillet([(0.1, [0]),
                   (0.2, [1]),
                   (0.3, [2])])
        r4 = s4.volume()
        # empirical
        self.assert_(close(r1, 5.805, eps=0.001) and
                     close(r2, 5.974, eps=0.001) and
                     close(r3, 5.974, eps=0.001) and
                     close(r4, 5.920, eps=0.001))

    def test_chamfer(self):
        s = ccad.box(1.0, 2.0, 3.0)
        s1 = s.copy()
        s1.chamfer(0.2)
        r1 = s1.volume()
        
        s2 = s.copy()
        s2.chamfer(0.2, [0])
        r2 = s2.volume()

        s3 = s.copy()
        s3.chamfer(0.2, [(1.0, 2.0, 1.5)])
        r3 = s3.volume()

        # empirical
        self.assert_(close(r1, 5.563, eps=0.001) and
                     close(r2, 5.94, eps=0.001) and
                     close(r3, 5.94, eps=0.001))

    # from documentation
    def test_draft(self):
        s1 = ccad.box(1.0, 1.0, 1.0)
        s1.translate((-0.5, -0.5, 0.0))
        face_centers = s1.subcenters('face')
        to_draft = []
        for count, face_center in enumerate(face_centers):
            if abs(face_center[2] - 0.5) < 0.1:
                to_draft.append(count)
        s1.draft(math.radians(5.0), (0.0, 0.0, 1.0), (0.0, 0.0, 0.0), to_draft)
        #print 'draft', s1.volume()
        # empirical
        self.assert_(close(s1.volume(), 0.835, eps=0.001))

    # volume skipped since verified above

    # from documentation
    def test_simplify(self):
        s1 = ccad.box(1.0, 1.0, 1.0)
        s2 = s1.copy()
        s2.translate((1.0, 0.5, 0.5))
        s3 = s1 - s2
        count1 = len(s3.subshapes('face'))
        s3.simplify()
        count2 = len(s3.subshapes('face'))
        self.assert_(count1 == 7 and count2 == 6)

# Edge Primitives
class TestEdgePrimitives(unittest.TestCase):

    # from documentation
    def test_segment(self):
        pt1 = (0.0, 0.0, 0.0)
        pt2 = (1.0, 0.0, 0.0)
        e1 = ccad.segment(pt1, pt2)
        self.assert_(close(1.0, e1.length()))

    # from documentation
    def test_arc(self):
        e1 = ccad.arc(1.0, 0.0, math.pi/2)
        self.assert_(close(math.pi/2, e1.length()))

    # from documentation
    def test_arc_ellipse(self):
        e1 = ccad.arc_ellipse(2.0, 1.0, 0.0, math.pi/2)
        # empirical
        self.assert_(close(2.422, e1.length(), 0.001))

    # from documentation
    def test_spline(self):
        pts = [(0.0, 0.0, 0.0),
               (0.2, 0.1, 0.0),
               (0.5, 0.2, 0.0),
               (-0.5, 0.3, 0.0)]
        e1 = ccad.spline(pts)
        # empirical
        self.assert_(close(1.864, e1.length(), 0.001))

    # from documentation
    def test_bezier(self):
        e1 = ccad.bezier([(1.0, 0.0, 0.0),
                          (1.0, 1.0, 0.0), 
                          (0.0, 1.0, 0.0)], [1.0, 1.0/math.sqrt(2.0), 1.0])
        self.assert_(close(math.pi/2, e1.length()))

    # from documentation
    def test_circle(self):
        e1 = ccad.circle(3.0)
        self.assert_(close(3*2*math.pi, e1.length()))

    # from documenation
    def test_ellipse(self):
        e1 = ccad.ellipse(2.0, 1.0)
        self.assert_(close(9.701, e1.length(), 0.001))

# Wire Primitives
class TestWirePrimitives(unittest.TestCase):
    
    # from documentation
    def test_polygon(self):
        w1 = ccad.polygon([(0.0, 0.0, 0.0),
                           (1.0, 0.0, 0.0),
                           (1.5, 1.0, 0.0),
                           (0.5, 1.5, 0.0),
                           (-0.5, -0.5, 0.0)])
        self.assert_(close(5.472, w1.length(), 0.001))

    # from documentation
    def test_rectangle(self):
        w1 = ccad.rectangle(2.0, 1.0)
        self.assert_(close(6.0, w1.length()))

    # from documentation
    def test_ngon(self):
        w1 = ccad.ngon(2.0, 6)
        self.assert_(close(12.0, w1.length()))

    # from documentation
    def test_helix(self):
        w1 = ccad.helix(2.0, 1.0/math.pi, 3)
        # empirical
        self.assert_(close(39.710, w1.length(), 0.001))

# Face Primitives
class TestFacePrimitives(unittest.TestCase):
    
    # from documentation
    def test_plane(self):
        w1 = ccad.ngon(2.0, 5)
        f1 = ccad.plane(w1)
        self.assert_(close(9.511, f1.area(), 0.001))

    # from documentation
    def test_surface(self):
        w1 = ccad.ngon(2.0, 8)
        w2 = ccad.ngon(10.0, 4)
        f2 = ccad.plane(w1)
        f1 = ccad.face_from(f2, w2)
        self.assert_(close(200.0, f1.area()))

    # from documentation
    def test_filling(self):
        e1 = ccad.spline([(0.0, 0.0, 0.0),
                          (1.0, 0.2, 0.3),
                          (1.5, 0.8, 1.0),
                          (0.8, 1.2, 0.2),
                          (0.0, 1.0, 0.0)])
        e2 = ccad.spline([(0.0, 0.0, 0.0),
                          (-1.0, 0.2, 0.3),
                          (-1.5, 0.8, 1.0),
                          (-0.8, 1.2, 0.2),
                          (0.0, 1.0, 0.0)])
        w1 = ccad.wire([e1, e2])
        f1 = ccad.filling(w1)
        # empirical
        self.assert_(close(5.448, f1.area(), 0.001))

    # from documentation
    def test_slice(self):
        b1 = ccad.box(10.0, 10.0, 10.0)
        b1.translate((-5.0, -5.0, 0.0))
        c1 = ccad.cylinder(2.5, 20.0)
        c1.translate((0.0, 0.0, -5.0))
        s1 = b1 - c1
        f1 = ccad.slice(s1, z = 1.0)[0]
        self.assert_(close(100.0-math.pi*2.5**2, f1.area(), 0.001))

# Solid Primitives
class TestSolidPrimitives(unittest.TestCase):
    
    # from documentation
    def test_box(self):
        s1 = ccad.box(1.0, 2.0, 3.0)
        self.assert_(close(6.0, s1.volume()))

    def test_wedge(self):
        s1 = ccad.wedge(1.0, 2.0, 3.0, 0.5)
        s2 = ccad.wedge(1.0, 2.0, 3.0, 0.9, 1.1, 3.1, 3.2)
        self.assert_(close(4.5, s1.volume()) and
                     close(7.98, s2.volume()))

    # from documenation
    def test_cylinder(self):
        s1 = ccad.cylinder(1.0, 2.0)
        self.assert_(close(2.0*math.pi, s1.volume()))

    # from documenation
    def test_sphere(self):
        s1 = ccad.sphere(5.0)
        self.assert_(close(4.0/3.0*math.pi*5**3, s1.volume()))

    # from documenation
    def test_cone(self):
        s1 = ccad.cone(4.0, 2.0, 2.0)
        self.assert_(close(1.0/3.0*(math.pi*4.0**2*4.0 - math.pi*2.0**2*2.0), s1.volume()))

    # from documenation
    def test_bezier_cone(self):
        s1 = ccad.bezier_cone(4.0, 2.0, 2.0)
        self.assert_(close(1.0/3.0*(math.pi*4.0**2*4.0 - math.pi*2.0**2*2.0), s1.volume()))

    # from documentation
    def test_torus(self):
        s1 = ccad.torus(10.0, 1.0)
        # empirical
        self.assert_(close(197.392, s1.volume(), 0.001))

    # from documentation
    def test_prism(self):
        f1 = ccad.plane(ccad.ngon(2.0, 6))
        s1 = ccad.prism(f1, (0.0, 0.0, 1.0))
        # empirical
        self.assert_(close(10.392, s1.volume(), 0.001))
        
    # test_revol covered by bezier_cone

    # from documentation
    def test_loft(self):
        w1 = ccad.wire([ccad.circle(1.0)])
        w2 = ccad.wire([ccad.circle(2.0)])
        w2.translate((0.0, 0.0, 5.0))
        w3 = ccad.wire([ccad.circle(1.5)])
        w3.translate((0.0, 0.0, 10.0))
        s1 = ccad.loft([w1, w2, w3])
        # empirical
        self.assert_(close(98.407, s1.volume(), 0.001))

    def test_plane_loft(self):
        w1 = ccad.ngon(1.0, 5)
        w2 = ccad.ngon(2.0, 5)
        w2.translate((0.0, 0.0, 4.0))
        s1 = ccad.plane_loft([w1, w2])
        # empirical
        self.assert_(close(22.191, s1.volume(), 0.001))

    # from documentation
    def test_pipe(self):
        profile = ccad.ngon(2.0, 6)
        e1 = ccad.arc(8.0, 0.0, math.pi/2)
        e2 = ccad.segment((0.0, 8.0, 0.0), (-8.0, 8.0, 0.0))
        spine = ccad.wire([e1, e2])
        spine.translate((-8.0, 0.0, 0.0))
        spine.rotatex(math.pi/2)
        s1 = ccad.pipe(profile, spine)
        # empirical
        self.assert_(close(213.732, s1.volume(), 0.001))

    # from documentation
    def test_helical_solid(self):
        profile = ccad.ngon(0.2, 3)
        s1 = ccad.helical_solid(profile, 2.0, 1.0/math.pi, 2)
        # empirical
        self.assert_(close(1.346, s1.volume(), 0.001))

# Useful functions that return arbitrary shapes
class TestArbitrary(unittest.TestCase):
    
    # from documentation
    def test_offset(self):
        w1 = ccad.ngon(8.0, 6)
        f1 = ccad.offset(ccad.plane(w1), 1.0)[0]

        b1 = ccad.box(10.0, 10.0, 10.0)
        b1.translate((-5.0, -5.0, 0.0))
        c1 = ccad.cylinder(2.5, 20.0)
        c1.translate((0.0, 0.0, -5.0))
        s1 = b1 - c1
        s2 = ccad.offset(s1, 1.0)[0]

        # empirical
        self.assert_(close(217.418, f1.area(), 0.001) and
                     close(1608.966, s2.volume(), 0.001))
       

def suite(tests = []):
    suite = unittest.TestSuite()
    if len(tests) == 0: # Do all
        tests = filter(lambda x: x.startswith('Test'), globals())
    print tests
    for test in tests:
        eval('suite.addTest(unittest.makeSuite(' + test + '))')
    return suite

if __name__ == '__main__':
    unittest.TextTestRunner(verbosity=2).run(suite(sys.argv[1:]))

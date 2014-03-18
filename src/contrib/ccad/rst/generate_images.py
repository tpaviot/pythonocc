"""
Generates the images for ccad documentation.  The screen shots must be
generated manually.  Do so with:

xwd -frame -out name.xwd

where name is the filename.  Convert the image to .png with gimp.
"""


import sys
import math

import ccad

# Globals
v = ccad.view()

# Helper Functions
def save_iso(shape, name, color=None):
    v.viewstandard(viewtype = 'iso')
    v.display(shape, color)
    if shape.stype == 'solid':
        edges = shape.subshapes('edge')
        for edge in edges:
            v.display(edge, (0.0, 0.0, 0.0))
    v.fit()
    v.save(name)
    v.clear()

def save_top(shape, name, color=None):
    v.viewstandard(viewtype = 'top')
    v.display(shape, color)
    v.fit()
    v.save(name)
    v.clear()

def sphere_example():
    s1 = ccad.sphere(10.0)
    save_iso(s1, 'sphere_example.png')

def _cube_subs(cube, subs, name):
    v.viewstandard(viewtype = 'iso')
    v.display(cube)
    subs_colors = [(1.0, 0.0, 0.0),
                   (0.0, 1.0, 0.0),
                   (0.0, 0.0, 1.0),
                   (1.0, 1.0, 0.0),
                   (0.0, 1.0, 1.0),
                   (1.0, 0.0, 1.0)]
    for count in range(len(subs)):
        v.display(subs[count], subs_colors[count % 6])
    v.fit()
    v.save(name)
    v.clear()

def _cube_sub(cube, sub, name):
    v.viewstandard(viewtype = 'iso')
    v.display(cube)
    edges = cube.subshapes('edge')
    for edge in edges:
        v.display(edge, (0.0, 0.0, 0.0))
    if sub != None:
        v.display(sub, (1.0, 0.0, 0.0), line_width = 3.0)
    v.fit()
    v.save(name)
    v.clear()

def cube_solid():
    s1 = ccad.box(1.0, 1.0, 1.0)
    #_cube_subs(s1, [], 'cube_solid.png')
    _cube_sub(s1, None, 'cube_solid.png')

def cube_face():
    s1 = ccad.box(1.0, 1.0, 1.0)
    subs = s1.subshapes('face')
    #_cube_subs(s1, subs, 'cube_face.png')
    _cube_sub(s1, subs[s1.nearest('face', [(1.0, 0.5, 0.5)])[0]], 'cube_face.png')

def cube_wire():
    s1 = ccad.box(1.0, 1.0, 1.0)
    faces = s1.subshapes('face')
    face = faces[s1.nearest('face', [(1.0, 0.5, 0.5)])[0]]
    w1 = face.subshapes('wire')[0]
    #_cube_subs(s1, subs, 'cube_wire.png')
    _cube_sub(s1, w1, 'cube_wire.png')

def cube_edge():
    s1 = ccad.box(1.0, 1.0, 1.0)
    subs = s1.subshapes('edge')
    #_cube_subs(s1, subs, 'cube_edge.png')
    _cube_sub(s1, subs[s1.nearest('edge', [(1.0, 0.5, 1.0)])[0]], 'cube_edge.png')

def cube_vertex():
    s1 = ccad.box(1.0, 1.0, 1.0)
    subs = s1.subshapes('vertex')
    #_cube_subs(s1, subs, 'cube_vertex.png')
    _cube_sub(s1, subs[s1.nearest('vertex', [(1.0, 0.0, 1.0)])[0]], 'cube_vertex.png')

def edge_segment():
    pt1 = (0.0, 0.0, 0.0)
    pt2 = (1.0, 0.0, 0.0)
    e1 = ccad.segment(pt1, pt2)
    save_top(e1, 'edge_segment.png', (0.0, 0.0, 0.0))

def edge_arc():
    e1 = ccad.arc(1.0, 0.0, math.pi/2)
    save_top(e1, 'edge_arc.png', (0.0, 0.0, 0.0))

def edge_arc_ellipse():
    e1 = ccad.arc_ellipse(2.0, 1.0, 0.0, math.pi/2)
    save_top(e1, 'edge_arc_ellipse.png', (0.0, 0.0, 0.0))

def edge_spline():
    pts = [(0.0, 0.0, 0.0),
           (0.2, 0.1, 0.0),
           (0.5, 0.2, 0.0),
           (-0.5, 0.3, 0.0)]
    e1 = ccad.spline(pts)
    v.viewstandard(viewtype = 'top')
    v.display(e1, (0.0, 0.0, 0.0))
    for pt in pts:
        v.display(ccad.vertex(pt), (1.0, 0.0, 0.0))
    v.fit()
    v.save('edge_spline.png')
    v.clear()

def edge_bezier():
    e1 = ccad.bezier([(1.0, 0.0, 0.0),
                      (1.0, 1.0, 0.0), 
                      (0.0, 1.0, 0.0)], [1.0, 1.0/math.sqrt(2.0), 1.0])
    save_top(e1, 'edge_bezier.png', (0.0, 0.0, 0.0))

def edge_circle():
    e1 = ccad.circle(3.0)
    save_top(e1, 'edge_circle.png', (0.0, 0.0, 0.0))

def edge_ellipse():
    e1 = ccad.ellipse(2.0, 1.0)
    save_top(e1, 'edge_ellipse.png', (0.0, 0.0, 0.0))

def wire():
    e1 = ccad.arc(1.0, -math.pi/2, math.pi/2)
    e1.translate((1.0, 0.0, 0.0))
    e2 = ccad.segment((1.0, 1.0, 0.0), (-1.0, 1.0, 0.0))
    e3 = ccad.arc(1.0, math.pi/2, 3*math.pi/2)
    e3.translate((-1.0, 0.0, 0.0))
    e4 = ccad.segment((-1.0, -1.0, 0.0), (1.0, -1.0, 0.0))
    w1 = ccad.wire([e1, e2, e3, e4])
    save_top(w1, 'wire.png', (0.0, 0.0, 0.0))

def wire_polygon():
    w1 = ccad.polygon([(0.0, 0.0, 0.0),
                       (1.0, 0.0, 0.0),
                       (1.5, 1.0, 0.0),
                       (0.5, 1.5, 0.0),
                       (-0.5, -0.5, 0.0)])
    save_top(w1, 'wire_polygon.png', (0.0, 0.0, 0.0))

def wire_rectangle():
    w1 = ccad.rectangle(2.0, 1.0)
    save_top(w1, 'wire_rectangle.png', (0.0, 0.0, 0.0))

def wire_ngon():
    w1 = ccad.ngon(2.0, 6)
    save_top(w1, 'wire_ngon.png', (0.0, 0.0, 0.0))

def wire_helix():
    w1 = ccad.helix(2.0, 1.0/math.pi, 3)
    save_iso(w1, 'wire_helix.png', (0.0, 0.0, 0.0))

def face_plane():
    w1 = ccad.ngon(2.0, 5)
    f1 = ccad.plane(w1)
    save_top(f1, 'face_plane.png')

def face_surface():
    w1 = ccad.ngon(2.0, 8)
    w2 = ccad.ngon(10.0, 4)
    f2 = ccad.plane(w1)
    f1 = ccad.surface(f2, w2)
    save_top(f1, 'face_surface.png')

def face_filling():
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
    v.viewstandard(viewtype = 'iso')
    v.display(w1, color = (1.0, 0.0, 0.0))
    v.display(f1)
    v.fit()
    v.save('face_filling.png')
    v.clear()

def solid_box():
    s1 = ccad.box(1.0, 2.0, 3.0)
    save_iso(s1, 'solid_box.png')

def solid_wedge():
    s1 = ccad.wedge(1.0, 2.0, 3.0, 0.5)
    save_iso(s1, 'solid_wedge.png')

def solid_cylinder():
    s1 = ccad.cylinder(1.0, 2.0)
    save_iso(s1, 'solid_cylinder.png')

def solid_sphere():
    s1 = ccad.sphere(5.0)
    save_iso(s1, 'solid_sphere.png')

def solid_cone():
    s1 = ccad.cone(4.0, 2.0, 2.0)
    save_iso(s1, 'solid_cone.png')

def solid_torus():
    s1 = ccad.torus(10.0, 1.0)
    save_iso(s1, 'solid_torus.png')

def derived_prism():
    f1 = ccad.plane(ccad.ngon(2.0, 6))
    s1 = ccad.prism(f1, (0.0, 0.0, 1.0))
    save_iso(s1, 'derived_prism.png')

def derived_revol():
    e1 = ccad.arc(1.0, -math.pi/2, math.pi/2)
    e1.translate((3.0, 0.0, 0.0))
    w1 = ccad.polygon([(3.0, 1.0, 0.0),
                       (2.0, 1.0, 0.0),
                       (2.0, -1.0, 0.0),
                       (3.0, -1.0, 0.0)])
    f1 = ccad.plane(ccad.wire([e1, w1]))
    f1.rotatex(math.pi/2)
    s1 = ccad.revol(f1, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), 2*math.pi)
    save_iso(s1, 'derived_revol.png')

def derived_loft():
    w1 = ccad.wire([ccad.circle(1.0)])
    w2 = ccad.wire([ccad.circle(2.0)])
    w2.translate((0.0, 0.0, 5.0))
    w3 = ccad.wire([ccad.circle(1.5)])
    w3.translate((0.0, 0.0, 10.0))
    s1 = ccad.loft([w1, w2, w3])
    save_iso(s1, 'derived_loft.png')

def derived_pipe():
    profile = ccad.ngon(2.0, 6)
    e1 = ccad.arc(8.0, 0.0, math.pi/2)
    e2 = ccad.segment((0.0, 8.0, 0.0), (-8.0, 8.0, 0.0))
    spine = ccad.wire([e1, e2])
    spine.translate((-8.0, 0.0, 0.0))
    spine.rotatex(math.pi/2)
    s1 = ccad.pipe(profile, spine)
    save_iso(s1, 'derived_pipe.png')

def derived_helical_solid():
    profile = ccad.ngon(0.2, 3)
    s1 = ccad.helical_solid(profile, 2.0, 1.0/math.pi, 2)
    save_iso(s1, 'derived_helical_solid.png')

def derived_offset_face():
    w1 = ccad.ngon(8.0, 6)
    f1 = ccad.offset(ccad.plane(w1), 1.0)[0]
    v.viewstandard(viewtype = 'top')
    v.display(w1, (0.0, 0.0, 0.0))
    v.display(f1)
    v.fit()
    v.save('derived_offset_face.png')
    v.clear()

def derived_offset_solid():
    b1 = ccad.box(10.0, 10.0, 10.0)
    b1.translate((-5.0, -5.0, 0.0))
    c1 = ccad.cylinder(2.5, 20.0)
    c1.translate((0.0, 0.0, -5.0))
    s1 = b1 - c1
    s2 = ccad.offset(s1, 1.0)[0]
    v.viewstandard(viewtype = 'iso')
    v.display(s1, (1.0, 0.0, 0.0))
    edges = s1.subshapes('edge')
    for edge in edges:
        v.display(edge, (0.0, 0.0, 0.0))
    v.display(s2, transparency = 0.5)
    v.fit()
    v.save('derived_offset_solid.png')
    v.clear()

def derived_slice():
    b1 = ccad.box(10.0, 10.0, 10.0)
    b1.translate((-5.0, -5.0, 0.0))
    c1 = ccad.cylinder(2.5, 20.0)
    c1.translate((0.0, 0.0, -5.0))
    s1 = b1 - c1
    f1 = ccad.slice(s1, z = 1.0)[0]
    v.viewstandard(viewtype = 'top')
    v.display(f1)
    v.fit()
    v.save('derived_slice.png')
    v.clear()

def trms_translate():
    s1 = ccad.box(1.0, 2.0, 3.0)
    s2 = ccad.translate(s1, (2.0, -6.0, 4.0))
    v.viewstandard(viewtype = 'iso')
    v.display(s1, (1.0, 0.0, 0.0))
    v.display(s2, (0.0, 0.0, 1.0))
    v.fit()
    v.save('trms_translate.png')
    v.clear()
    
def trms_rotate():
    s1 = ccad.box(1.0, 2.0, 3.0)
    s2 = ccad.rotate(s1, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), math.pi/2)
    v.viewstandard(viewtype = 'iso')
    v.display(s1, (1.0, 0.0, 0.0))
    v.display(s2, (0.0, 0.0, 1.0))
    v.fit()
    v.save('trms_rotate.png')
    v.clear()
    
def trms_mirror():
    s1 = ccad.box(1.0, 2.0, 3.0)
    s2 = ccad.mirror(s1, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0))
    v.viewstandard(viewtype = 'iso')
    v.display(s1, (1.0, 0.0, 0.0))
    v.display(s2, (0.0, 0.0, 1.0))
    v.fit()
    v.save('trms_mirror.png')
    v.clear()
    
def trms_scale():
    s1 = ccad.box(1.0, 2.0, 3.0)
    s2 = ccad.scale(s1, 2.0, 1.0, 1.0)
    s2.translate((4.0, 0.0, 0.0))
    v.viewstandard(viewtype = 'iso')
    v.display(s1, (1.0, 0.0, 0.0))
    v.display(s2, (0.0, 0.0, 1.0))
    v.fit()
    v.save('trms_scale.png')
    v.clear()

def boolean_fuse():
    s1 = ccad.sphere(1.0)
    s2 = ccad.box(1.0, 2.0, 3.0)
    s3 = s1 + s2
    save_iso(s3, 'boolean_fuse.png')
    
def boolean_cut():
    s1 = ccad.sphere(1.0)
    s2 = ccad.box(1.0, 2.0, 3.0)
    s3 = s1 - s2
    save_iso(s3, 'boolean_cut.png')
    
def boolean_common():
    s1 = ccad.sphere(1.0)
    s2 = ccad.box(1.0, 2.0, 3.0)
    s3 = s1 & s2
    save_iso(s3, 'boolean_common.png')

def boolean_glue():
    s1 = ccad.box(1.0, 2.0, 3.0)
    s2 = ccad.box(1.0, 1.0, 1.0)
    s2.translate((1.0, 0.5, 1.0))
    faces_s1 = s1.subshapes('face')
    faces_s2 = s2.subshapes('face')
    i1 = s1.nearest('face', [(1.0, 1.0, 1.5)])[0]
    i2 = s2.nearest('face', [(1.0, 1.0, 1.5)])[0]
    print 'glue faces', i1, i2
    s3 = ccad.glue(s1, s2, [(i1, i2)])
    save_iso(s3, 'boolean_glue.png')

def logging_face_fillet():
    w1 = ccad.polygon([(-1.0, -1.0, 0.0),
                       (1.0, -1.0, 0.0),
                       (1.0, 1.0, 0.0),
                       (-1.0, 1.0, 0.0),
                       (-1.0, -1.0, 0.0)])
    f1 = ccad.plane(w1)
    f1.fillet(0.25, f1.nearest('vertex', [(1.0, 1.0, 0.0), (-1.0, -1.0, 0.0)]))
    save_top(f1, 'logging_face_fillet.png')
    
def logging_solid_fillet():
    s1 = ccad.box(1.0, 1.0, 1.0)
    s1.fillet(0.25, [(1.0, 0.5, 0.0),
                     (1.0, 0.5, 1.0),
                     (1.0, 0.0, 0.5),
                     (1.0, 1.0, 0.5)])
    save_iso(s1, 'logging_solid_fillet.png')

def logging_solid_chamfer():
    s1 = ccad.box(1.0, 1.0, 1.0)
    s1.chamfer(0.25, [(1.0, 0.5, 0.0),
                      (1.0, 0.5, 1.0),
                      (1.0, 0.0, 0.5),
                      (1.0, 1.0, 0.5)])
    save_iso(s1, 'logging_solid_chamfer.png')

def logging_solid_draft():
    s1 = ccad.box(1.0, 1.0, 1.0)
    s1.translate((-0.5, -0.5, 0.0))
    face_centers = s1.subcenters('face')
    to_draft = []
    for count, face_center in enumerate(face_centers):
        if abs(face_center[2] - 0.5) < 0.1:
            to_draft.append(count)
    s1.draft(math.radians(5.0), (0.0, 0.0, 1.0), (0.0, 0.0, 0.0), to_draft)
    save_iso(s1, 'logging_solid_draft.png')

def logging_solid_simplify():
    s1 = ccad.box(1.0, 1.0, 1.0)
    s2 = s1.copy()
    s2.translate((1.0, 0.5, 0.5))
    s3 = s1 - s2
    print len(s3.subshapes('face'))
    save_iso(s3, 'logging_solid_simplify1.png')
    s3.simplify()
    print len(s3.subshapes('face'))
    save_iso(s3, 'logging_solid_simplify2.png')

def from_svg():
    v.viewstandard(viewtype = 'iso')
    ws = ccad.from_svg('logo.svg')
    for w in ws:
        v.display(w, (0.0, 0.0, 0.0))
    v.fit()
    v.save('from_svg.png')
    v.clear()

def display_display():
    s1 = ccad.sphere(1.0) + ccad.box(1.0, 2.0, 2.0)
    v.display(s1, color = (1.0, 0.0, 0.0), material = 'metallized', transparency = 0.5)
    v.fit()
    v.save('display_display.png')
    v.clear()

def solidbrick(xsize, ysize, wall_offset, unit, height, draft, knob_rad, knob_height, knob_draft, save_images = 0):
    
    dx = height * math.tan(math.radians(draft))
    wbottom = ccad.rectangle(unit * xsize - 2*wall_offset, unit * ysize - 2*wall_offset)
    wtop = ccad.rectangle(unit * xsize - 2*dx - 2*wall_offset, unit * ysize - 2*dx - 2*wall_offset)
    wtop.translate((dx, dx, height))
    brick = ccad.loft([wbottom, wtop], True)
    brick.translate((wall_offset, wall_offset, 0.0))

    if save_images:
        v.display(brick)
        v.fit()
        v.save('example1_box.png')

    drad = knob_height * math.tan(math.radians(knob_draft))
    knob_top_rad = knob_rad - drad
    knob_base_rad = knob_rad + drad
    knob = ccad.cone(knob_base_rad, knob_top_rad, 2 * knob_height)
    knob.translate((0.5 * unit, 0.5 * unit, height - knob_height))

    if save_images:
        v.display(knob, color = (1.0, 0.0, 0.0))
        v.fit()
        v.save('example1_boxwknob.png')

    for x in range(xsize):
        for y in range(ysize):
            brick = brick + ccad.translate(knob, (x * unit, y * unit, 0.0))

    if save_images:
        v.clear()
        v.display(brick)
        v.save('example1_boxwknobs.png')

    return brick

def example1():
    import numpy as np

    unit = 5.0
    height = 10.0
    draft = 1.0 # degrees of draft on faces for plastic ejection
    knob_rad = 1.8 # radius of the brick knob for mating with other bricks
    knob_height = 2.0
    knob_draft = 5.0 # degrees of draft for the knob
    wall_thickness = 1.0 # plastic wall thickness
    fillet_rad = 0.4 # the default radius to use for rounded edges

    xsize = 4
    ysize = 2

    outerbrick = solidbrick(xsize, ysize, 0.0, unit, height, draft, knob_rad, knob_height, knob_draft, save_images = 1)
    
    to_fillet = []
    for count, edge_center in enumerate(outerbrick.subcenters('edge')):
        if (abs(edge_center[2]) < 0.1 or
            (abs(edge_center[2] - height) < 0.1 and
             abs(edge_center[0] - 0.5*unit) % unit < 0.1 and
             abs(edge_center[1] - 0.5*unit) % unit < 0.1)):
            pass
        else:
            to_fillet.append(count)
    outerbrick.fillet(fillet_rad, to_fillet)
    
    v.clear()
    v.display(outerbrick)
    v.fit()
    v.save('example1_outerbrick.png')

    innerbrick = solidbrick(xsize, ysize, wall_thickness, unit, height - wall_thickness, draft, knob_rad - wall_thickness, knob_height, knob_draft)
    base = ccad.box(2*unit*xsize, 2*unit*ysize, 1.0)
    base.translate((-0.5*unit*xsize, -0.5*unit*ysize, -1.0))
    innerbrick = innerbrick + base

    v.clear()
    v.display(innerbrick)
    v.fit()
    v.save('example1_innerbrick.png')

    to_fillet = []
    for count, edge_center in enumerate(innerbrick.subcenters('edge')):
        if (abs(edge_center[2]) < 0.1 or
            (abs(edge_center[2] - (height - wall_thickness)) < 0.1 and
             abs(edge_center[0] - 0.5*unit) % unit < 0.1 and
             abs(edge_center[1] - 0.5*unit) % unit < 0.1)):
            to_fillet.append(count)
    innerbrick.fillet(fillet_rad, to_fillet)

    v.clear()
    v.display(innerbrick)
    v.fit()
    v.save('example1_innerbrickfillet.png')

    brick = outerbrick - innerbrick
    
    v.clear()
    v.display(brick)
    v.set_projection((0.0, 0.0, 0.0), (math.sqrt(0.45), -math.sqrt(0.1), -math.sqrt(0.45)), (0.0, -1.0, 0.0))
    v.fit()
    v.save('example1_brick.png')

    post_rad = (math.sqrt(2.0)*unit - 2*knob_rad)/2.0
    drad = (height - 0.5*wall_thickness) * math.tan(math.radians(draft))
    post_base_rad = post_rad + drad
    post = ccad.cone(post_rad, post_base_rad, height - 0.5*wall_thickness)
    post.fillet(fillet_rad, [(0.0, 0.0, 0.0)])

    v.clear()
    v.display(post)
    v.viewstandard(viewtype = 'iso')
    v.fit()
    v.save('example1_post.png')

    post.translate((unit, unit, 0.0))
    for x in range(xsize - 1):
        for y in range(ysize - 1):
            brick = brick + ccad.translate(post, (x * unit, y * unit, 0.0))

    v.clear()
    v.display(brick)
    v.viewstandard(viewtype = 'bottom')
    v.fit()
    v.save('example1_brickpost.png')

def main():
    v.set_background((1.0, 1.0, 1.0))
    v.set_triedron(1, color = (0.0, 0.0, 0.0))

    # Quick code for a single one
    example1()
    sys.exit()

    # intro
    #sphere_example() # Moved to screen capture

    # modelling
    cube_solid()
    cube_face()
    cube_wire()
    cube_edge()
    cube_vertex()

    # creating_edges
    edge_segment()
    edge_arc()
    edge_arc_ellipse()
    edge_spline()
    edge_bezier()
    edge_circle()
    edge_ellipse()

    # creating_wires
    wire()
    wire_polygon()
    wire_rectangle()
    wire_ngon()
    wire_helix()

    # creating_faces
    face_plane()
    face_surface()
    face_filling()

    # creating_solids
    solid_box()
    solid_wedge()
    solid_cylinder()
    solid_sphere()
    solid_cone()
    solid_torus()

    # creating_derived
    derived_prism()
    derived_revol()
    derived_loft()
    # plane_loft skipped, since we hope to remove it someday
    derived_pipe()
    derived_helical_solid()
    derived_offset_face()
    derived_offset_solid()
    derived_slice()

    # trms
    trms_translate()
    trms_rotate()
    trms_mirror()
    trms_scale()

    # boolean
    boolean_fuse()
    boolean_cut()
    boolean_common()
    boolean_glue()

    # logging
    logging_face_fillet()
    logging_solid_fillet()
    logging_solid_chamfer()
    logging_solid_draft()
    logging_solid_simplify()

    # file transfer
    from_svg()

    # display
    display_display()

    # examples
    example1()

if __name__ == '__main__':
    main()

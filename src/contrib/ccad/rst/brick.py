import math
import ccad

def solidbrick(xsize, ysize, wall_offset, unit, height, draft,
               knob_rad, knob_height, knob_draft):
    
    dx = height * math.tan(math.radians(draft))
    wbottom = ccad.rectangle(unit * xsize - 2*wall_offset,
                             unit * ysize - 2*wall_offset)
    wtop = ccad.rectangle(unit * xsize - 2*dx - 2*wall_offset,
                          unit * ysize - 2*dx - 2*wall_offset)
    wtop.translate((dx, dx, height))
    brick = ccad.loft([wbottom, wtop], True)
    brick.translate((wall_offset, wall_offset, 0.0))

    drad = knob_height * math.tan(math.radians(knob_draft))
    knob_top_rad = knob_rad - drad
    knob_base_rad = knob_rad + drad
    knob = ccad.cone(knob_base_rad, knob_top_rad, 2 * knob_height)
    knob.translate((0.5 * unit, 0.5 * unit, height - knob_height))

    for x in range(xsize):
        for y in range(ysize):
            brick = brick + ccad.translate(knob, (x * unit, y * unit, 0.0))

    return brick

def brick(xsize, ysize, fillet = True):

    unit = 5.0
    height = 10.0
    draft = 1.0 # degrees of draft on faces for plastic ejection
    knob_rad = 1.8 # radius of the brick knob for mating with other bricks
    knob_height = 2.0
    knob_draft = 5.0 # degrees of draft for the knob
    wall_thickness = 1.0 # plastic wall thickness
    fillet_rad = 0.4 # the default radius to use for rounded edges

    outerbrick = solidbrick(xsize, ysize, 0.0, unit, height, draft,
                            knob_rad, knob_height, knob_draft)
    
    if fillet:
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
    
    innerbrick = solidbrick(xsize, ysize, wall_thickness, unit,
                            height - wall_thickness, draft,
                            knob_rad - wall_thickness, knob_height, knob_draft)
    base = ccad.box(2*unit*xsize, 2*unit*ysize, 1.0)
    base.translate((-0.5*unit*xsize, -0.5*unit*ysize, -1.0))
    innerbrick = innerbrick + base

    if fillet:
        to_fillet = []
        for count, edge_center in enumerate(innerbrick.subcenters('edge')):
            if (abs(edge_center[2]) < 0.1 or
                (abs(edge_center[2] - (height - wall_thickness)) < 0.1 and
                 abs(edge_center[0] - 0.5*unit) % unit < 0.1 and
                 abs(edge_center[1] - 0.5*unit) % unit < 0.1)):
                to_fillet.append(count)
        innerbrick.fillet(fillet_rad, to_fillet)

    brick = outerbrick - innerbrick
    
    post_rad = (math.sqrt(2.0)*unit - 2*knob_rad)/2.0
    drad = (height - 0.5*wall_thickness) * math.tan(math.radians(draft))
    post_base_rad = post_rad + drad
    post = ccad.cone(post_rad, post_base_rad, height - 0.5*wall_thickness)
    if fillet:
        post.fillet(fillet_rad, [(0.0, 0.0, 0.0)])

    post.translate((unit, unit, 0.0))
    for x in range(xsize - 1):
        for y in range(ysize - 1):
            brick = brick + ccad.translate(post, (x * unit, y * unit, 0.0))

    return brick


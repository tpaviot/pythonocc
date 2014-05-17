Gathering Information and Miscellaneous Methods
===============================================

Overview
--------

Shapes can report a variety of information about themselves.  These
information gathering queries all operate as class methods.
Additionally, there are some methods that didn't fit the modelling
categories before.  They're below.

All classes support the following methods:

copy
^^^^

All shapes offer a copy method.  copy returns a copy of the shape.
The following example makes **s2** a new copy of **s1**::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = s1.copy()

subshapes
^^^^^^^^^

subshapes reports the shapes of a specific type that make up a shape.
The following example sets **edges** to a list of the edges in **s1**::

  s1 = ccad.box(1.0, 2.0, 3.0)
  edges = s1.subshapes('edge')

The passed parameter may be *vertex*, *edge*, *wire*, *face*, or *shell*.

bounds
^^^^^^

bounds places an imaginary box around the shape and returns a 6-tuple
that describes the minimum and maximum (x, y, z) boundaries of the
box::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.bounds()
  (-9.9999999999999995e-08, -9.9999999999999995e-08, -9.9999999999999995e-08,
  1.0000001000000001, 2.0000000999999998, 3.0000000999999998)

center
^^^^^^

center returns the center of the shape::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.center()
  (0.5, 1.0, 1.5)

subcenters
^^^^^^^^^^

subcenters returns a list of the centers of the subshapes of a shape::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.subcenters('edge')
  [(0.0, 0.0, 1.5), (0.0, 1.0, 3.0), (0.0, 2.0, 1.5), (0.0, 1.0, 0.0),
  (1.0, 0.0, 1.5), (1.0, 1.0, 3.0), (1.0, 2.0, 1.5), (1.0, 1.0, 0.0),
  (0.5, 0.0, 0.0), (0.5, 0.0, 3.0), (0.5, 2.0, 0.0), (0.5, 2.0, 3.0)]

check
^^^^^

check performs an OCC BRep check on the shape to make sure there's
nothing wrong with it.  It returns 1 if it's okay::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.check()
  1

fix
^^^

fix attempts to fix a faulty shape.  It sometimes works and sometimes
doesn't.  It's usually best to find out what caused the shape to be
corrupted in the first place and fix that.  It does nothing if the
shape's okay::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.fix()

nearest
^^^^^^^

nearest returns the index of the subshape whose center is closest to a
passed position.  It operates on a list of positions::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.nearest('edge', [(0.0, 1.0, 3.0), (1.0, 1.0, 0.0)])
  [1, 7]

Note how these indices coincide with the correct indices in the
subcenters call above.

subtolerance
^^^^^^^^^^^^

subtolerance returns the min, average, and max tolerance on every
subshape.  When called with 'all', it iterates through all subshape
types::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.subtolerance('edge')
  (1.0001000025000001e-07, 1.0001000025000002e-07, 1.0001000025000001e-07)

The vertex, edge, and face class also support a *tolerance* method,
which returns the tolerance of that shape itself.

dump
^^^^

dump returns the index, center, and tolerance of every subshape::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.dump()
  shell0 location: (0.500000,1.000000,1.500000)
  face0 location: (0.000000,1.000000,1.500000) tolerance: 1.0000e-07
  face1 location: (1.000000,1.000000,1.500000) tolerance: 1.0000e-07
  face2 location: (0.500000,0.000000,1.500000) tolerance: 1.0000e-07
  face3 location: (0.500000,2.000000,1.500000) tolerance: 1.0000e-07
  face4 location: (0.500000,1.000000,0.000000) tolerance: 1.0000e-07
  face5 location: (0.500000,1.000000,3.000000) tolerance: 1.0000e-07
  wire0 location: (0.000000,1.000000,1.500000)
  wire1 location: (1.000000,1.000000,1.500000)
  wire2 location: (0.500000,0.000000,1.500000)
  wire3 location: (0.500000,2.000000,1.500000)
  wire4 location: (0.500000,1.000000,0.000000)
  wire5 location: (0.500000,1.000000,3.000000)
  edge0 location: (0.000000,0.000000,1.500000) tolerance: 1.0000e-07
  edge1 location: (0.000000,1.000000,3.000000) tolerance: 1.0000e-07
  edge2 location: (0.000000,2.000000,1.500000) tolerance: 1.0000e-07
  edge3 location: (0.000000,1.000000,0.000000) tolerance: 1.0000e-07
  edge4 location: (1.000000,0.000000,1.500000) tolerance: 1.0000e-07
  edge5 location: (1.000000,1.000000,3.000000) tolerance: 1.0000e-07
  edge6 location: (1.000000,2.000000,1.500000) tolerance: 1.0000e-07
  edge7 location: (1.000000,1.000000,0.000000) tolerance: 1.0000e-07
  edge8 location: (0.500000,0.000000,0.000000) tolerance: 1.0000e-07
  edge9 location: (0.500000,0.000000,3.000000) tolerance: 1.0000e-07
  edge10 location: (0.500000,2.000000,0.000000) tolerance: 1.0000e-07
  edge11 location: (0.500000,2.000000,3.000000) tolerance: 1.0000e-07
  vertex0 location: (0.000000,0.000000,3.000000) tolerance: 1.0000e-07
  vertex1 location: (0.000000,0.000000,0.000000) tolerance: 1.0000e-07
  vertex2 location: (0.000000,2.000000,3.000000) tolerance: 1.0000e-07
  vertex3 location: (0.000000,2.000000,0.000000) tolerance: 1.0000e-07
  vertex4 location: (1.000000,0.000000,3.000000) tolerance: 1.0000e-07
  vertex5 location: (1.000000,0.000000,0.000000) tolerance: 1.0000e-07
  vertex6 location: (1.000000,2.000000,3.000000) tolerance: 1.0000e-07
  vertex7 location: (1.000000,2.000000,0.000000) tolerance: 1.0000e-07

Output may also be printed as a hierarchy.

vertex
------

The vertex class supports no additional methods.

edge
----

type
^^^^

type returns the type of edge::

  e1 = ccad.arc_ellipse(2.0, 1.0, 0.0, math.pi/2)
  e1.type()
  'ellipse'

length
^^^^^^

length returns the length of the edge::

  e1 = ccad.circle(1.0)
  e1.length()
  6.2831853071795862

poly
^^^^

poly returns a polyline approximation to an edge::

  e1 = ccad.arc_ellipse(2.0, 1.0, 0.0, math.pi/2)
  e1.poly()
  [(-3.6738190614671318e-16, 1.0, 0.0),
  (0.15691819145569041, 0.99691733373312796, 0.0),
  (0.31286893008046135, 0.98768834059513777, 0.0),
  (0.46689072771180956, 0.97236992039767678, 0.0),
  (0.61803398874989446, 0.95105651629515364, 0.0),
  (0.76536686473018001, 0.92387953251128663, 0.0),
  (0.90798099947909328, 0.8910065241883679, 0.0), 
  (1.0449971294318967, 0.85264016435409251, 0.0), 
  (1.1755705045849458, 0.80901699437494756, 0.0), 
  (1.2988960966603678, 0.76040596560003082, 0.0), 
  (1.4142135623730947, 0.70710678118654768, 0.0), 
  (1.520811931200061, 0.64944804833018421, 0.0), 
  (1.5706338617614892, 0.6190939493098343, 0.0), 
  (1.6180339887498947, 0.58778525229247336, 0.0), 
  (1.6691465074426051, 0.55089698145210275, 0.0), 
  (1.716897587203732, 0.51289927740590635, 0.0), 
  (1.7696268722994766, 0.46594547235582523, 0.0), 
  (1.8172246744657483, 0.41764053997213163, 0.0), 
  (1.8460369350307941, 0.38475564794493639, 0.0), 
  (1.8724697412794742, 0.35137482408134291, 0.0), 
  (1.8964890225744522, 0.3175410946848452, 0.0), 
  (1.9180638191979309, 0.28329806983275019, 0.0), 
  (1.9371663222572619, 0.24868988716485535, 0.0), 
  (1.9537719095292947, 0.21376115499211573, 0.0), 
  (1.9678591771972589, 0.17855689479863776, 0.0), 
  (1.9794099674392696, 0.14312248321112042, 0.0), 
  (1.9884093918329029, 0.10750359351052567, 0.0), 
  (1.9948458505456679, 0.071746136761379878, 0.0), 
  (1.9987110472866427, 0.035896202634582597, 0.0), 
  (2.0, 2.4492127076447545e-16, 0.0)]

wire
----

The wire class can be called with a list of edges to be combined into
a wire.

length
^^^^^^

Like the length method in edge, edge returns the length of the wire.

poly
^^^^

Like the poly method in edge, poly returns a polyline
approximation to a wire.

face
----

fillet
^^^^^^

fillet allows you to fillet a face at passed vertices.  The following
example fillets the upper right corner and lower left corner of a square::

  w1 = ccad.polygon([(-1.0, -1.0, 0.0),
                     (1.0, -1.0, 0.0),
		     (1.0, 1.0, 0.0),
		     (-1.0, 1.0, 0.0),
		     (-1.0, -1.0, 0.0)])
  f1 = ccad.plane(w1)
  f1.fillet(0.25, [(1.0, 1.0, 0.0), (-1.0, -1.0, 0.0)]))

.. image:: logging_face_fillet.png

wire
^^^^
  
wire returns the outer wire of a face.

inner_wires
^^^^^^^^^^^

inner_wires returns the inner wires of a face.

type
^^^^

type returns the type of mathematical surface a face sits on::

  s1 = ccad.cone(4.0, 2.0, 2.0)
  faces = s1.subshapes('face')
  map(lambda x: x.type(), faces)
  ['cone', 'plane', 'plane']

area
^^^^

area returns the area of the face::

  f1 = ccad.plane(cm.wire([ccad.circle(1.0)]))
  f1.area()
  3.141592653589794

shell
-----

The shell class can be called with a list of faces to be sewed into a
shell.

area
^^^^

Like the area method in face, area returns the area of the shell.

solid
-----

The solid class can be called with a list of shells to be combined
into a solid.

fillet
^^^^^^

fillet allows you to fillet edges.  The following example fillets all
the edges on the positive x-side of the cube::

  s1 = ccad.box(1.0, 1.0, 1.0)
  s1.fillet(0.25, [(1.0, 0.5, 0.0),
  		   (1.0, 0.5, 1.0),
                   (1.0, 0.0, 0.5),
                   (1.0, 1.0, 0.5)])

.. image:: logging_solid_fillet.png

Filleting can be buggy.  I found the following things helped improve
success rate:

  - Eliminate impossible conditions (e.g. fillet radius is 0.6 on a
    1x1x1 box).

  - Eliminate unneeded edges.  OCC's boolean operations often return
    two faces in the same domain with an edge between them that can be
    merged.  Eliminating these edges by merging the faces helped.  The
    *simplify* method can do this for some shapes.

  - Move problem edges out of the way.  Cylinder and sphere edges are
    necessary in OCC, but their position can often be rotated away
    from a problem fillet location.

  - Slice the solid (with a box or something) into sections.  Then
    fuse those sections back together.  Then fillet.

  - Change the fillet radius slightly.

  - Fillet a few edges, then a few more, then a few more, etc.  For
    example, if you have a shape with multiple pockets, fillet one
    pocket, then the next, then the next.  The fillet operation tended
    to fail when the number of fillets got large.

chamfer
^^^^^^^

chamfer allows you to chamfer edges.  The following example chamfers
three edges in a cube::

  s1 = ccad.box(1.0, 1.0, 1.0)
  s1.chamfer(0.25, [(1.0, 0.5, 0.0),
                    (1.0, 0.5, 1.0),
                    (1.0, 0.0, 0.5),
                    (1.0, 1.0, 0.5)])

.. image:: logging_solid_chamfer.png

draft
^^^^^

draft places a draft on the faces specified.  The following example
drafts the vertical edges of a cube::

  s1 = ccad.box(1.0, 1.0, 1.0)
  s1.translate((-0.5, -0.5, 0.0))
  face_centers = s1.subcenters('face')
  to_draft = []
  for count, face_center in enumerate(face_centers):
      if abs(face_center[2] - 0.5) < 0.1:
          to_draft.append(count)
  s1.draft(math.radians(5.0), (0.0, 0.0, 1.0), (0.0, 0.0, 0.0), to_draft)

.. image:: logging_solid_draft.png

volume
^^^^^^

volume returns the volume in cubic units of the solid::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s1.volume()
  6.0

simplify
^^^^^^^^

Boolean operations can often leave more faces than are necessary,
particularly when faces are coincident.  OCC hasn't fixed this issue,
so I fixed it, although my implementation won't fix all cases::

  s1 = ccad.box(1.0, 1.0, 1.0)
  s2 = s1.copy()
  s2.translate((1.0, 0.5, 0.5))
  s3 = s1 - s2
  len(s3.subshapes('face'))
  7

.. image:: logging_solid_simplify1.png

Note **s3** has an extra face.  (I've only drawn edges, but you get the
point).  Now, let's simplify it::

  s3.simplify()
  len(s3.subshapes('face'))
  6

.. image:: logging_solid_simplify2.png

Note the extra face is removed.


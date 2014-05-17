Boolean Operations
==================

Boolean operations operate on two solids.  The following shapes are
used in the following examples::

  s1 = ccad.sphere(1.0)
  s2 = ccad.box(1.0, 2.0, 3.0)

**s3** is the derived shape.

Fuse
----

fuse fuses two solids together.  Either one of the two lines below
fuses **s1** and **s2**::

  s3 = s1 + s2

or::

  s3 = ccad.fuse(s1, s2)

.. image:: boolean_fuse.png

Cut
---

cut cuts one solid from the other.  Either one of the two lines below
cuts **s2** from **s1**::

  s3 = s1 - s2

or::

  s3 = ccad.cut(s1, s2)

.. image:: boolean_cut.png

Common
------

common finds the common portions of each solid.  Either one of the two
lines below finds the common portions of **s1** and **s2**::

  s3 = s1 & s2

or::

  s3 = ccad.common(s1, s2)

.. image:: boolean_common.png

Glue
----

Boolean operations can have trouble when two solids have coincident
faces.  Sometimes the glue function can help.  glue merges two solids
at a coincident face.  Unfortunately, you need to know the face
indices that must merge.  Read more about finding face indices in the
Display or Logging sections::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = ccad.box(1.0, 1.0, 1.0)
  s2.translate((1.0, 0.5, 1.0))
  s3 = ccad.glue(s1, s2, [(1, 0)])

.. image:: boolean_glue.png

A more robust glue called **simple_glue** exists in the API, which
isn't part of OCC.  For this form, however, the faces to be glued must
exactly overlap.

Notes
-----

Functions to use OCC's old fuse, cut, and common algorithms, and
functions to perform a fillet or chamfer on the newly created edges
after a boolean operation are also available.  I use them rarely.  See
the API.

Sometimes OCC has trouble with booleans.  I found the following helpful:

  - Eliminate unneeded edges.  OCC's boolean operations often return
    two faces in the same domain with an edge between them that can be
    merged.  Eliminating these edges by merging the faces help
    subsequent boolean operations.  The *simplify* method can do this
    for some shapes.

  - Move problem edges out of the way.  Cylinder and sphere edges are
    necessary in OCC, but their position can often be rotated away
    from a problem boolean location.

  - Slice the object (with a box or something) into sections.  Then
    fuse those sections back together.  Then apply the boolean
    operation.  This was particularly helpful for creating pockets in
    a solid.

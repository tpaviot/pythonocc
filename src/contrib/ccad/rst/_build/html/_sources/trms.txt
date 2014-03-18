Moving, Rotating, Mirroring, and Scaling
========================================

translate, rotate, mirror, and scale on shapes can be called with a
class method.  For example::

  s1.translate((1.0, 0.0, 0.0))

This translates *s1* in-place.  ccad comes with a function call form
too.  For example::

  s2 = ccad.translate(s1, (1.0, 0.0, 0.0))

The function form returns a new shape.  *s2* is *s1* translated.  *s1*
is unchanged.  It can be useful when you want to save the old shape or
write code with fewer lines.

In each of the following examples, **s1** describes the old object
drawn in **red**, and **s2** describes the new object drawn in **blue**.

Moving
------

translate changes a shape's position but not its orientation.  The
following example moves the box 2.0 in the x-direction, -6.0 in the
y-direction, and 4.0 in the z-direction::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = ccad.translate(s1, (2.0, -6.0, 4.0))

.. image:: trms_translate.png

Rotation
--------

rotate rotates a shape about a point and a direction vector.  Rotation
follows the right hand rule.  The following example rotates the box 90
degrees about the z-axis::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = ccad.rotate(s1, (0.0, 0.0, 0.0), (0.0, 0.0, 1.0), math.pi/2)

.. image:: trms_rotate.png

There are also three shorthand notations when rotation is about the
origin and a single axis: **rotatex**, **rotatey**, and **rotatez**.
The following example performs the same rotation above but in
shorthand::

  s2 = ccad.rotatez(math.pi/2)

Mirroring
---------

mirror mirrors the shape about a point in a given direction.  The
following example mirrors the box about the origin in the x-direction::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = ccad.mirror(s1, (0.0, 0.0, 0.0), (1.0, 0.0, 0.0))

.. image:: trms_mirror.png

Like rotate, shorthand versions exist of **mirrorx**, **mirrory**, and
**mirrorz**.

Scaling
-------

scale changes the size of the shape by scale factors.  The following
example scales the box in the x-direction and then moves it::

  s1 = ccad.box(1.0, 2.0, 3.0)
  s2 = ccad.scale(s1, 2.0, 1.0, 1.0)
  s2.translate((4.0, 0.0, 0.0))

.. image:: trms_scale.png

Passing a single parameter to scale scales all three dimensions the
same.

Like rotate and mirror, shorthand versions exist of **scalex**,
**scaley**, and **scalez**.

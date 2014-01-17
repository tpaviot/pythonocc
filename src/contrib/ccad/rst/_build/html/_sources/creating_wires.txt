Creating Wires
==============

Functions that instantiate a wire follow.  In each example, the wire
is called **w1**.

Connection of Edges
-------------------

wire is one of the few classes you'll instantiate directly in ccad.
Often, you'll create a wire manually by connecting multiple edges.  Do
it by passing a list of edges to a wire instantiation.  The following
example creates an elongated circle::

  e1 = ccad.arc(1.0, -math.pi/2, math.pi/2)
  e1.translate((1.0, 0.0, 0.0))
  e2 = ccad.segment((1.0, 1.0, 0.0), (-1.0, 1.0, 0.0))
  e3 = ccad.arc(1.0, math.pi/2, 3*math.pi/2)
  e3.translate((-1.0, 0.0, 0.0))
  e4 = ccad.segment((-1.0, -1.0, 0.0), (1.0, -1.0, 0.0))
  w1 = cm.wire([e1, e2, e3, e4])

.. image:: wire.png

You'll learn more about *translate* later.

polygon
-------

A polygon defines a connection of segments.  To close the polygon,
make the last point equal to the first.  The following example creates
a polygon::

  w1 = ccad.polygon([(0.0, 0.0, 0.0),
                     (1.0, 0.0, 0.0),
                     (1.5, 1.0, 0.0),
		     (0.5, 1.5, 0.0),
		     (-0.5, -0.5, 0.0)])

.. image:: wire_polygon.png

rectangle
---------

Create a rectangle by passing the x-distance and y-distance.  The following example creates a rectangle 2.0 wide and 1.0 high.  The lower-left corner is at (0.0, 0.0, 0.0)::

  w1 = ccad.rectangle(2.0, 1.0)

.. image:: wire_rectangle.png

ngon
----

An ngon defines an equal-sided polygon with n segments.  The following
example creates a hexagon with radius (distance from center to vertex)
of 2.0::

  w1 = ccad.ngon(2.0, 6)

.. image:: wire_ngon.png

helix
-----

The following example creates a helix with radius 2.0, helical angle
of 1.0/pi, and 3 turns::

  w1 = ccad.helix(2.0, 1.0/math.pi, 3)

.. image:: wire_helix.png


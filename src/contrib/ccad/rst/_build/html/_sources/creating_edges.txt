Creating Edges
==============

Functions that instantiate an edge follow.  In each example, the edge
is called **e1**.

segment
-------

A segment defines a straight line from one point to another.  The
following example creates a segment from the origin to the point
(1.0, 0.0, 0.0)::

  pt1 = (0.0, 0.0, 0.0)
  pt2 = (1.0, 0.0, 0.0)
  e1 = ccad.segment(pt1, pt2)

.. image:: edge_segment.png

arc
---

An arc defines a portion of a circle.  The following example creates
an arc centered on the origin of radius 1.0 that extends from 0.0
radians to pi/2 radians::

  e1 = ccad.arc(1.0, 0.0, math.pi/2)

.. image:: edge_arc.png

arc_ellipse
-----------

An arc_ellipse defines a portion of an ellipse.  The following example
creates an arc_ellipse centered on the origin with major radius 2.0,
minor radius 1.0, and that extends from 0.0 radians to pi/2 radians::

  e1 = ccad.arc_ellipse(2.0, 1.0, 0.0, math.pi/2)

.. image:: edge_arc_ellipse.png

spline
------

A spline defines a 3D spline fit to a series of passed points.  The
following example creates a spline that passes through the points
(0.0, 0.0, 0.0), (0.2, 0.1, 0.0), (0.5, 0.2, 0.0), (-0.5, 0.3, 0.0)::

  e1 = ccad.spline([(0.0, 0.0, 0.0),
                    (0.2, 0.1, 0.0),
                    (0.5, 0.2, 0.0),
                    (-0.5, 0.3, 0.0)])

.. image:: edge_spline.png

bezier
------

A bezier edge is an edge that passes from and to the endpoints.  The
intermediate points shape the curve.  The following example creates a
bezier that is the same as a quarter circle::

  e1 = ccad.bezier([(1.0, 0.0, 0.0),
                    (1.0, 1.0, 0.0), 
		    (0.0, 1.0, 0.0), [1.0, 1.0/math.sqrt(2.0), 1.0]])

.. image:: edge_bezier.png

It can also be called without weights, which will return the curves
used in svg files.

circle
------

The following example creates a circle centered on the origin with
radius 3.0::

  e1 = ccad.circle(3.0)

.. image:: edge_circle.png

ellipse
-------

The following example creates an ellipse centered on the origin with major radius 2.0 and minor radius 1.0::

  e1 = ccad.ellipse(2.0, 1.0)

.. image:: edge_ellipse.png


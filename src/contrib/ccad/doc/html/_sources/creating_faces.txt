Creating Faces
==============

Functions that instantiate a face follow.  In each example, the face
is called **f1**.

plane
-----

A plane is a flat shape bounded by a closed wire in 3D space.  The
wire must be planar (flat) to work.  The following example creates a
face inside an ngon::

  w1 = ccad.ngon(2.0, 5)
  f1 = ccad.plane(w1)

.. image:: face_plane.png

face_from
---------

face_from creates a face that mathematically exactly matches another
face but is bounded by a different wire.  The following example
creates a filled square from a filled octagon.  The example isn't very
practical.  face_from is more often used when the face is 3D and you
want to bound it by a different wire::

  w1 = ccad.ngon(2.0, 8)
  w2 = ccad.ngon(10.0, 4)
  f2 = ccad.plane(w1)
  f1 = ccad.face_from(f2, w2)

.. image:: face_face_from.png

filling
-------

A filling is a surface fit to a wire, and that wire does not need to
be planar.  The following example fits a surface to a wavy wire.  Both
the wire and face are shown::

  w1 = ccad.spline([(0.0, 0.0, 0.0),
                    (1.0, 0.2, 0.3),
	            (1.5, 0.8, 1.0),
		    (0.8, 1.2, 0.2),
		    (-0.5, 0.8, -0.5),
		    (0.0, 0.0, 0.0)])
  f1 = ccad.filling(w1)

.. image:: face_filling.png

Visit the API documentation for more filling options.

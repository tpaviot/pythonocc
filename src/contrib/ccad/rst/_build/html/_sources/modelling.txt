Modelling
=========

.. toctree::

   creating_edges
   creating_wires
   creating_faces
   creating_solids
   creating_derived
   trms
   boolean
   logging
   file_transfer

Modelling describes creating models in ccad.  To understand modelling
well, it's helpful to understand how a model is described in ccad.
ccad models are defined by a sequence of simpler shapes and
boundaries.  In CAD terminology, it's called a Boundary Representation
model, or BRep, for short.  Consider a cube.

.. image:: cube_solid.png

The entire cube is called a **solid**.  A solid is made of one or more
outer layers called **shells**.  For example, if the cube had a hollow
center, it would be made of two shells.  One shell would define the
outside of the cube.  The other would define the inside.  Each shell
is made of one or more **faces**.

.. image:: cube_face.png

Each face has a single mathematical expression that defines the whole
face.  Planes and spheres are examples of faces.  Each face is bounded
by one or more **wires**.

.. image:: cube_wire.png

The wires define the boundary of the face.  Each wire is made of one or
more **edges**.

.. image:: cube_edge.png

Edges, like faces, have a unique mathematical expression that defines
the entire edge.  Each edge is bounded by two **vertices**.

.. image:: cube_vertex.png

Put in a hierarchy, it looks like this

  solid
    shell
      face
        wire
	  edge
	    vertex

ccad calls all of these **shapes**.  Each shape has its own class in
ccad.  During modelling, you may need to use all of these classes.  I
use ``wire`` much.  I use the others rarely.  Usually, I'm calling a
higher level function, like sphere, that instantiates a solid, or arc,
that instantiates an edge.


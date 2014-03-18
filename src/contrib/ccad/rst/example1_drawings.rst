Drawings
========

OCC has a number of capabilities to turn a model into engineering
drawings with dimensions and annotations.  ccad does not yet implement
them, but the hidden line removal features are enough to generate some
simple patent drawings.

Requirements
------------

I'm pleased with my brick, and I'd like to create some patent drawings
from it.  I'd like top, side, isometric, and bottom views.  In case I
change my brick, I'd like the drawings to auto-generate.  I'll use the
*4x2* example.

brick_images.py
---------------

I'll create a file called **brick_images.py**.  It starts like this::

  import ccad
  import brick

  def generate_images(xsize, ysize):
      pass

  if __name__ == '__main__':
      generate_images()

Currently, it does nothing.  I want to write the **generate_images**
function.  First, I'll create the projection vectors for the various
views::

      unit = 5.0
      height = 10.0
      center = (unit*xsize/2, unit*ysize/2, height/2)
      projections = {'top': (center, (0.0, 0.0, 1.0), (0.0, 1.0, 0.0)),
                     'side': (center, (1.0, 0.0, 0.0), (0.0, 0.0, 1.0)),
                     'iso': (center,
                             (math.sqrt(0.4), -math.sqrt(0.4), math.sqrt(0.2)),
                             (-math.sqrt(0.5), math.sqrt(0.5), 0.0)),
                     'bottom': (center,
		                (math.sqrt(0.4), -math.sqrt(0.4), -math.sqrt(0.2)),
                                (-math.sqrt(0.5), math.sqrt(0.5), 0.0))}

Now, I'll create a brick and view instance::

      b1 = brick.brick(xsize, ysize, fillet = False)
      v1 = ccad.view()

Note that I called brick with fillet set to *False*.  Smooth edges
(e.g. filleted ones) are not shown in *drawing* mode.  We need them
sharp to see them.

Now, I'll fix the background, scale, and size of the view::

      v1.set_background((1.0, 1.0, 1.0))
      v1.set_scale(24.0)
      v1.set_size((600, 400))

Finally, I'll iterate over each projection, display it in black lines,
and save it::

      for projection in projections:
          vcenter, vout, vup = projections[projection]
          v1.clear()
          v1.set_projection(vcenter, vout, vup)
          v1.display(b1, color = (0.0, 0.0, 0.0), line_width = 2.0)
          v1.mode_drawing()
          v1.save(name = 'brick_' + projection + '.png')

Note the **mode_drawing** call after **display**.  This redraws the image
in a drafting-like mode.

Now, I'll call **generate_images** on start::

  if __name__ == '__main__':
      generate_images(4, 2)

When I run the program, it generates the following images:

.. image:: brick_top.png

.. image:: brick_side.png

.. image:: brick_iso.png

.. image:: brick_bottom.png


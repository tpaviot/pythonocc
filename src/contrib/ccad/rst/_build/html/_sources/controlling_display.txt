Controlling Display
===================

The viewer has a number of function pass options that help.

viewstandard
------------

The viewing projection can be set to a standard projection with
viewstandard.  The following example sets the view to front::

  v1.viewstandard(viewtype = 'front')

set_projection
--------------

The viewing projection can be set to any arbitrary projection with
set_projection.  To look at the point (0.0, 0.0, 0.0) from the z-direction with the y-direction up, I could call::

  v1.set_projection((0.0, 0.0, 0.0), (0.0, 0.0, 1.0), (0.0, 1.0, 0.0))

set_scale
---------

set_scale scales the viewing window so the entire screen spans a
certain number of scene units.  The following example sets the scale
such that a shape 8.0 long would span the screen::

  v1.set_scale(8.0)

set_size
--------

set_size sets the size of the viewing window in pixels.  The following example sets the viewing window to be 600 by 800 pixels::

  v1.set_size((600, 800))

set_background
--------------

set_background sets the background color.  The following example sets
the background color to white::

  v1.set_background((1.0, 1.0, 1.0))

set_foreground
--------------

set_foreground sets the default shape color.  The following example
sets the foreground color to red::

  v1.set_foreground((1.0, 0.0, 0.0))

set_triedron
------------

set_triedron sets how the triedron (the little x, y, z coordinate
sprite) is displayed.

display
-------

The examples have already used display extensively.  However, there
are options to control color, material, transparency, line type, and
line width.  The following example draws s1 red, in a metallized
material, halfway transparent::

  s1 = ccad.sphere(1.0) + ccad.box(1.0, 2.0, 2.0)
  v1.display(s1, color = (1.0, 0.0, 0.0), material = 'metallized', transparency = 0.5)

.. image:: display_display.png

fit
---

fits the scene to the window.

clear
-----

clear clears the window.

save
----

save saves a screenshot.  The following example saves the screen to
the file, 'screendump.png'::

  v1.save('screendump.png')

mode_wireframe
--------------

mode_wireframe sets the window to wireframe display.

mode_shaded
-----------

mode_shaded sets the window to shaded display.

mode_hlr
--------

mode_hlr sets the window to hidden line removal display.

mode_drawing
------------

mode_drawing sets the window to a drafting-like drawing display by
using a custom hidden line removal mode.  After calling it, call the
*reset_mode_drawing* method to restore regular control.

quit
----

quit closes the window.

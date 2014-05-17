File Transfer
=============

Sometimes, you'll want to save and restore data.  Also, you'll want to
transfer designs with the outside world.  ccad offers the following
features.

to_brep / from_brep
-------------------

All shapes offers a to_brep method to store a shape in OCC's native
format::

  s1 = cm.sphere(1.0)
  s1.to_brep('sphere.brep')

ccad also offers the function from_brep to import a .brep file::

  s1 = ccad.from_brep('sphere.brep')

to_iges / from_iges
-------------------

All shapes offer a to_iges method to store shapes in IGES format::

  s1 = cm.sphere(1.0)
  s1.to_iges('sphere.igs')

ccad also offers the function from_iges to import an IGES file::

  s1 = ccad.from_iges('sphere.igs')

There is one slight nuance to this example: the shape type changed::

  s1.stype
  'face'

To fix, use the *brep_mode* pass parameter::

  s1.to_iges('sphere.igs', brep_mode = 1)
  s1 = ccad.from_iges('sphere.igs')
  s1.stype
  'solid'

to_step / from_step
-------------------

All shapes offer a to_step method to store shapes in STEP format::

  s1 = cm.sphere(1.0)
  s1.to_step('sphere.stp')

ccad also offers the function from_step to import a STEP file::

  s1 = ccad.from_step('sphere.stp')

to_stl
------

Solids offer a to_stl method to store solids in STL format::

  s1 = cm.sphere(1.0)
  s1.to_stl('sphere.stl')

ccad does not offer a from_stl function.

from_svg
--------

ccad offers a from_svg function to import a two dimensional SVG file.
It converts each svg path into a wire and returns a list of wires::

  ws = ccad.from_svg('logo.svg')
  for w in ws:
      view1.display(w)

The .svg file

.. image:: logo.png

ccad's conversion of it

.. image:: from_svg.png

Notes
-----

Many of these methods and functions offer considerably more conversion
options than shown.  Consult the API for all options.

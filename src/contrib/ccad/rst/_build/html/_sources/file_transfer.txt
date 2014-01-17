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

to_stl
------

Solids offer a to_stl method to store solids in STL format::

  s1 = cm.sphere(1.0)
  s1.to_stl('sphere.stl')

ccad does not offer a from_stl function.

to_iges / from_iges
-------------------

Solids offer a to_iges method to store solids in IGES format::

  s1 = cm.sphere(1.0)
  s1.to_iges('sphere.igs')

ccad also offers the function from_iges to import an IGES file and
convert it to a solid::

  s1 = ccad.from_iges('sphere.igs')

to_step / from_step
-------------------

Solids offer a to_step method to store solids in STEP format::

  s1 = cm.sphere(1.0)
  s1.to_step('sphere.stp')

ccad also offers the function from_step to import a STEP file and
convert it to a solid::

  s1 = ccad.from_step('sphere.stp')

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

You need numpy to use from_svg.

Notes
-----

Many of these methods and functions offer considerably more conversion
options than shown.  Consult the API for all options.

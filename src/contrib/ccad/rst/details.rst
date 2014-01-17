Details
=======

Internals
---------

ccad is a python wrapper of pythonocc, which is a python wrapper of
OpenCascade, an open source mechanical CAD math engine.  So why wrap
python with more python?  pythonocc is a SWIG wrapper of a C++
project.  Because of that, the syntax is fairly cumbersome.  The
sphere instance from the introduction page looks like this in
pythonocc::

  from OCC.BRepPrimAPI import *
  s1 = BRepPrimAPI_Sphere(10.0).Shape()

ccad syntax is simpler, and allows you to focus more on design and
less on syntax.  Put simply, pythonocc is more for CAD developers;
ccad is more for CAD users.

Unfortunately, ccad use comes with a cost.  Not all of pythonocc's
abilities are yet wrapped.  Therefore, it lacks the power of
pythonocc.

However, extending ccad isn't too hard.  You can extend ccad with
python calls to pythoncc.  No C or C++ coding is necessary.  We're
always looking for pythonocc-skilled people to extend ccad's
abilities.

User Requirements
-----------------

You'll need to know python reasonably well to use ccad.  Additionally,
the *pydoc* generated documentation adds further detail to this
manual.  Keep it handly.

System Requirements
-------------------

You'll need pythonocc, python-gtk, and python-gtkglext to run ccad.

Installation
------------

TODO

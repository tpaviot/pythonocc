pythonOCC portal
================

#### Get ready for agile CAD development ####

pythonOCC is a 3D CAD/CAE/PLM development framework for the Python programming language. It provides features such as advanced topological and geometrical operations, data exchange (STEP, IGES, STL import/export), (GUI management support).

pythonOCC is built upon free and open source 3D CAD kernel [OCE project](https://github.com/tpaviot/oce/).

We use the following online resources:
  * Homepage
       http://www.pythonocc.org
  * Mailing list
       http://groups.google.com/group/pythonocc/about
  * Travic-CI
       https://travis-ci.org/tpaviot/pythonocc
  * twitter
       https://twitter.com/pythonocc

Subprojects
===========
pythonocc is composed of several parts: a set of optional python package that require a *core* to be used.

[pythonocc-core](https://github.com/tpaviot/pythonocc-core) (required)
----------------
The basis of pythonocc is a python wrapper for the [oce C++ library](https://github.com/tpaviot/oce), aka pythonocc-core. This is a requirement.

[pythonocc-dataexchange](https://github.com/tpaviot/pythonocc-dataexchange) (optional)
------------------------
Built upon the core, provides extra data exchange features for common CAD file formats (STEP, IGES etc.)

Ecosystem
=========
Following projects are known to run/extend pythonocc features.

- [ccad](https://github.com/charles-sharman/ccad) is a text-based mechanical CAD (computer aided design) tool.  It is a python module you import within a python file or from the python prompt.  Once imported, you can create and view mechanical objects.

- [Pycado](http://julienbld.github.io/pycado/) is an object oriented 3D CAD scripting language based on pythonocc with a graphical interactive editor.


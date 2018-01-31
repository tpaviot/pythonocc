pythonOCC portal
================

#### Get ready for agile CAD development ####

pythonOCC is a 3D CAD/CAE/PLM development framework for the Python programming language. It provides features such as advanced topological and geometrical operations, data exchange (STEP, IGES, STL import/export), GUI based visualization (wx, Qt), jupyter notebook rendering.

pythonOCC is built upon free and open source 3D CAD kernel [OCE project](https://github.com/tpaviot/oce/).

We use the following online resources:
  * Homepage
       http://www.pythonocc.org
  * Mailing list
       http://groups.google.com/group/pythonocc/about
  * twitter
       https://twitter.com/pythonocc

Subprojects and related repositories
====================================
The pythonocc project has been splitted over different repositories.

[pythonocc-core](https://github.com/tpaviot/pythonocc-core)
----------------
The basis of pythonocc is a python wrapper for the [oce C++ library](https://github.com/tpaviot/oce), aka pythonocc-core. 100% pure Python module are also availble for topology and geometry process, visualization. SWIG is used to generate the C++
to python bridge.

[pythonocc-generator](https://github.com/tpaviot/pythonocc-generator)
---------------------
A set of python scripts that generate, from oce C++ headers, the SWIG files required by the pythonocc-core project.

[pythonocc-documentation](https://github.com/tpaviot/pythonocc-documentation)
-------------------------
The place where all the documentation takes place (API doc, user guides, tutorials).

[pythonocc-binderhub](https://github.com/tpaviot/pythonocc-binderhub)
---------------------
A docker image file that can be launched online thanks to the myBinder.org service.

[pythonocc-demos](https://github.com/tpaviot/pythonocc-demos)
-----------------
Some demos/examples/code snippets.

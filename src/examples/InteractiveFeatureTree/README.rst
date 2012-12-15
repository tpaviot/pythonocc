Interactive Feature Tree Demo
=============================

This demo illustrates how some higher level CAD application features can be
implemented. Some of the OCC features used are:

* Primitive geometry construction
* Geometry modification (Boolean ops and chamfer)
* OCAF framework including
  * Creating an OCAF application and document
  * Named Shapes (TNaming_NamedShape)
  * Topological Naming and Selection (TNaming_Selector)
* Dynamic model reconstruction (using Traits rather than OCAF Function Services)
* Interactive editing of model parameters and dynamic update of the view
* Visualisation attributes like color and material

Requirements
============

Besides a working install of PythonOCC and it's dependencies, you need Traits and
one of the TraitsUI GUI backends (I've only tested this with the WX backend). Here here
for install options: http://code.enthought.com/downloads/ . Note, you don't need
the entire Enthought Tool Suite (ETS), just Traits + TraitsUI, although ETS is full of good 
stuff.

Running the demo
================

'feature_tree_demo.py' is the entry-point into the demo. just run:

  python feature_tree_demo.py

You can select item in the feature tree and edit their properties in the panel below.

Notes: 

* Changing the edge_id, for the Chamfer tool is somewhat unpredictable, in terms
  of what edge you'll get next. Not all edges are chamferable. Eg. The edge through
  the middle of the spherical face cannot be chamfered. 
  A better way would be to be able to select an edge in the 3d view...
  ... but this isn't implemented yet. 
* The chamfering operation can fail if the selected edge is completely removed by the 
  boolean operation.
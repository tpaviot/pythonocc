"""
A simple example of a editable feature tree. We only have two source objects
(box and sphere) and a boolean-op filter.
"""

from occ_model import BlockSource, SphereSource, \
            BooleanOpFilter, ChamferFilter
from occ_display import OCCModel, DisplayShape

from framework import shape_root

block = BlockSource(parent_label=shape_root)

sphere = SphereSource(parent_label=shape_root)

bop = BooleanOpFilter(input=block, tool=sphere, parent_label=shape_root)

chamf = ChamferFilter(input=bop, edge_id=2, size=3.0,
                      parent_label=shape_root)

shape = DisplayShape(input=chamf)

model = OCCModel(shapes=[shape])

model.configure_traits()


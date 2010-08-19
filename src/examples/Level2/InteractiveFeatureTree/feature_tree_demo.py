#!/usr/bin/env python

##Copyright 2009-2010, Bryan Cole (bryancole.cam@googlemail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

"""
A simple example of a editable feature tree. We only have two source objects
(box and sphere) and a boolean-op filter.
"""

from occ_model import BlockSource, SphereSource, \
            BooleanOpFilter, ChamferFilter
from occ_display import OCCModel, DisplayShape

from framework import shape_root

block = BlockSource(parent_label=shape_root)

sphere = SphereSource(parent_label=shape_root,
                      radius=15.0)

bop = BooleanOpFilter(input=block, tool=sphere, parent_label=shape_root)

chamf = ChamferFilter(input=bop, edge_id=2, size=3.0,
                      parent_label=shape_root)

shape = DisplayShape(input=chamf)

model = OCCModel(shapes=[shape])

model.configure_traits()


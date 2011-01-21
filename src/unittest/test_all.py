##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
##
## $Revision$
## $Date$
## $Author$
## $HeadURL$

import unittest

import wrapper_features_unittest
import geometry_unittest
import topology_building_unittest
import topology_local_operations_unittest
import topology_operations_unittest
import topology_unittest
import paf_unittest
import paf_test_all_associative_method_unittest

# Create test suite
suite = unittest.TestSuite()

# Get all test suites from modules
suite1 = wrapper_features_unittest.suite()
suite2 = geometry_unittest.suite()
suite3 = paf_unittest.suite()
suite4 = topology_building_unittest.suite()
suite5 = topology_unittest.suite()
suite6 = topology_local_operations_unittest.suite()
suite7 = paf_test_all_associative_method_unittest.suite()

# Add test cases
suite.addTests([suite1, suite2, suite3, suite4, suite5, suite6, suite7])

# Run test suite
unittest.TextTestRunner(verbosity=2).run(suite)

"""
Description
-----------
ccad unittest.  View ../model.py for a full description of ccad.

Author
------
Charles Sharman

License
-------
Distributed under the GNU LESSER GENERAL PUBLIC LICENSE Version 3.
View LICENSE for details.
"""

import unittest

import model_unittest

suite = unittest.TestSuite()
suite.addTests([model_unittest.suite()])
unittest.TextTestRunner(verbosity=2).run(suite)

#!/usr/bin/env python

##Copyright 2009-2013 Thomas Paviot (tpaviot@gmail.com)
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

import unittest

from OCC.SGEOM import *
from OCC.TCollection import *
from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters


def ParseSketcherCommand(command):
    Result = ""
    StringResult = ""
    sections = command.split(":")
    for section in sections:
        parameters = section.split(" ")
        paramIndex = 1
        for parameter in parameters:
            if paramIndex > 1 and parameter.find("'") != -1:
                parameter = parameter.replace("'", "")
                if notebook.isVariable(parameter):
                    Result = Result + str(notebook.get(parameter)) + " "
                else:
                    raise RuntimeError("Variable with name '" + parameter + "' doesn't exist!!!")
            else:
                Result = Result + str(parameter) + " "
            if paramIndex > 1:
                StringResult = StringResult + parameter
                StringResult = StringResult + ":"
            paramIndex = paramIndex + 1
        Result = Result[:len(Result)-1] + ":"
    Result = Result[:len(Result)-1]
    return Result, StringResult


class TestPAFAllAssociativeMethod(unittest.TestCase):
    def test_associative_methods(self):
        p = Parameters()  # Create a parameters set
        # Create and initialize a parametric context
        my_context = ParametricModelingContext(p, commit=False) 
        # we need to register the operations that are used
        # for concerns of performance, _only_ operations that are registered
        # are associative

        my_context.register_operations(my_context.basic_operations,
                                       my_context.boolean_operations,
                                       my_context.local_operations,
                                       my_context.curve_operations,
                                       )
        for ops in dir(my_context):
            try:
                if ops.split('_')[1] == 'operations':
                    print '\n\n****** %s ******\n\n' % ops
                    print 'has the following methods:'
                    for i in dir(getattr(my_context, ops)):
                        if not i.islower():
                            print i
            except IndexError:
                pass
        Cmd = "Sketch:F 0 0:TT 0 100:C 100 180:WW"
        cmd, params = ParseSketcherCommand(Cmd)
        theWorkingPlane = [0, 0, 0, 0, 0, 1, 1, 0, 0]
        cmd = TCollection_AsciiString(cmd)


def suite():
    suite = unittest.TestSuite()
    suite.addTest(unittest.makeSuite(TestPAFAllAssociativeMethod))
    return suite

if __name__ == '__main__':
    unittest.main()

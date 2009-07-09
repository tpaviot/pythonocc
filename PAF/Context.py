##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.GEOMImpl import GEOMImpl_Gen

class Context(object):
    """ Initialize a parametric context
    """
    def __init__(self):
        self.docId = None
        self.myEngine = None
        self.engine = None
        self.doc = None
        self.prim_operations = None
        self.basic_operations = None
        self._inited = False
        self.solvers = []

    def Init(self):
        if not self._inited:
            self.docId = 100
            self.myEngine = GEOMImpl_Gen()
            self.engine = self.myEngine.GetEngine()
            self.doc = self.myEngine.GetDocument(self.docId).GetObject()
            # get access to operations
            self.prim_operations = self.myEngine.GetI3DPrimOperations(self.docId)
            self.basic_operations = self.myEngine.GetIBasicOperations(self.docId)
            self._inited = True
            print "Context inited"
            # build solvers
            self.solvers.append(self.prim_operations.GetSolver())
            self.solvers.append(self.basic_operations.GetSolver())

if __name__=='__main__':
    c = Context()
    c.Init()
    
    

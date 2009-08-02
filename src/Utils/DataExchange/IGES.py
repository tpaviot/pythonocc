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

from OCC.IGESControl import *
from OCC.IGESCAFControl import *
from OCC.IFSelect import *
from OCC.TopoDS import *
from OCC.BRep import *
import os

class IGESExporter(object):
    def __init__(self, filename=None,format="5.1"):
        # Format should be "5.1" or "5.3"
        self._shapes = []
        self._filename = filename
        if format=="5.3":
            self._brepmode = True
        else:
            self._brepmode = False
   
    def AddShape(self, aShape):
        # First check the shape
        if aShape.IsNull():
            raise "IGESExporter Error: the shape is NULL"
        else: 
            self._shapes.append(aShape)
   
    def WriteFile(self):
        IGESControl_Controller().Init()
        iges_writer = IGESControl_Writer("write.iges.unit",self._brepmode)
        for shape in self._shapes:
            iges_writer.AddShape(shape)
        iges_writer.ComputeModel()
        if iges_writer.Write(self._filename):
            return True
        else:
            return False

class IGESImporter(object):
    def __init__(self,filename=None):
        self._shapes = []
        self.nbs = 0
        self.SetFilename(filename)

    def SetFilename(self, filename):
        if not os.path.isfile(filename):
            print "IGESImporter initialization Error: file %s not found."%filename
            self._filename = None
        else:
            self._filename = filename
        
    def ReadFile(self):
        """
        Read the IGES file and stores the result in a list of TopoDS_Shape
        """
        aReader = IGESControl_Reader()
        status = aReader.ReadFile(self._filename)
        if status==IFSelect_RetDone:
            failsonly = False
            aReader.PrintCheckLoad(failsonly, IFSelect_ItemsByEntity)
            nbr = aReader.NbRootsForTransfer()
            aReader.PrintCheckTransfer(failsonly, IFSelect_ItemsByEntity)
            ok = aReader.TransferRoots()
            for n in range(1,nbr+1):
                self.nbs = aReader.NbShapes()
                if self.nbs == 0:
                    print "At least one shape in IGES cannot be transfered"
                elif (nbr==1 and self.nbs==1):
                    aResShape = aReader.Shape(1)
                    if aResShape.IsNull():
                        print "At least one shape in IGES cannot be transferred"
                    self._shapes.append(aResShape)
                else:                    
                    for i in range(1,self.nbs+1):
                        aShape = aReader.Shape(i)
                        if aShape.IsNull():
                            print "At least one shape in STEP cannot be transferred"
                        else:
                            self._shapes.append(aShape)
                            #B.Add(compound,aShape)
            return True
        else:
            print "Error: can't read file %s"%self._filename
            return False
        return False

    def GetCompound(self):
        """ Create and returns a compound from the _shapes list
        """
        # Create a compound
        compound = TopoDS_Compound()
        B = BRep_Builder()
        B.MakeCompound(compound)
        # Populate the compound
        for shape in self._shapes:
            B.Add(compound,shape)
        return compound
    
    def GetShapes(self):
        return self._shapes
    

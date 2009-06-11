#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
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

import os, os.path
from OCC.TopoDS import *
from OCC.BRep import *
from OCC.STEPControl import *
from OCC.IFSelect import *

class STEPImporter(object):
    def __init__(self,filename):        
        self.SetFilename(filename)
        self._shape = None

    def SetFilename(self, filename):
        if not os.path.isfile(filename):
            print "STEPImporter initialization Error: file %s not found."%filename
            self._filename = None
        else:
            self._filename = filename
            
    def ReadFile(self):
        """
        Read the STEP file and stores the result in a TopoDS_Shape
        """
        if not self._filename:
            print "ReadFile Error: first set the filename."
            return False
        
        aReader = STEPControl_Reader()
        aResShape = TopoDS_Shape()
        compound = TopoDS_Compound()
        B = BRep_Builder()
        B.MakeCompound(compound)
        status = aReader.ReadFile(self._filename)
        if status==IFSelect_RetDone:
            failsonly = False
            aReader.PrintCheckLoad(failsonly, IFSelect_ItemsByEntity)
            nbr = aReader.NbRootsForTransfer()
            print "%i root(s)"%nbr
            aReader.PrintCheckTransfer(failsonly, IFSelect_ItemsByEntity)
            for n in range(1,nbr+1):
                ok = aReader.TransferRoot(n)
                nbs = aReader.NbShapes()
                print "%i shapes"%nbs
                if nbs == 0:
                    print "At least one shape in STEP cannot be transfered"
                elif (nbr==1 and nbs==1):
                    aResShape = aReader.Shape(1)
                    break
                for i in range(1,nbs+1):
                    aShape = aReader.Shape(i)
                    if aShape.IsNull():
                        print "At least one shape in STEP cannot be transferred"
                    else:
                        B.Add(compound,aShape)
            if aResShape.IsNull():
                aResShape = compound
            else:
                print "Error: Wrong format of the imported file. Cannot import file."
                aResShape.Nullify()
            self._shape = aResShape
            return True
        else:
            print "Error: can't read file %s"%self._filename
            return False
        return False

    def GetShape(self):
        if self._shape.IsNull():
            raise "Error"
        else:
            return self._shape

class STEPExporter(object):
    def __init__(self, filename, verbose=False):
        self._shapes = []
        self.verbose = verbose
        self._filename = filename
        self.stepWriter = STEPControl_Writer()
        
    def SetTolerance(self, tolerance=0.0001):
        self.stepWriter.SetTolerance(tolerance)
    
    def AddShape(self, aShape):
        # First check the shape
        if aShape.IsNull():
            raise "STEPExporter Error: the shape is NULL"
        else: 
            self._shapes.append(aShape)
    
    def WriteFile(self):
        for shp in self._shapes:
            status = self.stepWriter.Transfer(shp, STEPControl_AsIs )
        if status == IFSelect_RetDone:
            status = self.stepWriter.Write(self._filename)
        else:
            return False
        
        if self.verbose:
            self.stepWriter.PrintStatsTransfer()
        
        if status == IFSelect_RetDone:
            print "STEP transfer successful."
            return True
        else:
            return False
    

def TestImport():
    """
    Imports a STEP file.
    """
    myImporter = STEPImporter("test.stp")
    myImporter.ReadFile()
    print myImporter.GetShape()

def TestExport():
    """
    Exports a TopoDS_Shape to a STEP file.
    """
    from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
    test_shape1 = BRepPrimAPI_MakeBox(100.,100.,100.).Shape()
    test_shape2 = BRepPrimAPI_MakeBox(100.,100.,100.).Shape()
    myExporter = STEPExporter('test.stp')
    myExporter.AddShape(test_shape1)
    myExporter.AddShape(test_shape2)
    myExporter.WriteFile()

if __name__=='__main__':
    TestExport()
    TestImport()

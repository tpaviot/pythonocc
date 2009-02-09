#!/usr/bin/env python

import os
import sys

from OCC import STEPControl, TopoDS, TopExp, TopAbs
#read step file

stepReader = STEPControl.STEPControl_Reader()
stepReader.ReadFile('Test.STEP')
numItems = stepReader.NbRootsForTransfer()
numTranslated = stepReader.TransferRoots()
print numTranslated," Items Loaded."

shape = stepReader.OneShape()
print shape

#make an explorer
te = TopExp.TopExp_Explorer()
te.Init(shape,TopAbs.TopAbs_FACE)
numFaces = 0
while te.More():
    numFaces+= 1
    te.Next()
print "%i faces."%numFaces

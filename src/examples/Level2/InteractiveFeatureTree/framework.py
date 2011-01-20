#!/usr/bin/env python

##Copyright 2009-2011, Bryan Cole (bryancole.cam@googlemail.com)
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

from OCC import AppStd, TDocStd, TCollection, TDF

#
# Create a default Application object. You only need one of these per process
#
app = AppStd.AppStd_Application()

#
# Make a Standard document
#
h_doc = TDocStd.Handle_TDocStd_Document()

#I'm going to invent my own document structure as I go along
schema = TCollection.TCollection_ExtendedString("MyFormat")
app.NewDocument(schema, h_doc)

doc = h_doc.GetObject()

root = doc.Main()

ts = TDF.TDF_TagSource()

#
# We'll add all shapes under this node in the label tree 
#
shape_root = ts.NewChild(root)

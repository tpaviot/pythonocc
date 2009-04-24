##Copyright (c) 2009, Bryan Cole
##All rights reserved.
##
##Redistribution and use in source and binary forms, with or without
##modification, are permitted provided that the following conditions are met:
##    * Redistributions of source code must retain the above copyright
##      notice, this list of conditions and the following disclaimer.
##    * Redistributions in binary form must reproduce the above copyright
##      notice, this list of conditions and the following disclaimer in the
##      documentation and/or other materials provided with the distribution.
##    * Neither the name of the <organization> nor the
##      names of its contributors may be used to endorse or promote products
##      derived from this software without specific prior written permission.
##
##THIS SOFTWARE IS PROVIDED BY Bryan Cole ''AS IS'' AND ANY
##EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
##WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
##DISCLAIMED. IN NO EVENT SHALL Bryan Cole BE LIABLE FOR ANY
##DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
##(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
##ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
##(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
##SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


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

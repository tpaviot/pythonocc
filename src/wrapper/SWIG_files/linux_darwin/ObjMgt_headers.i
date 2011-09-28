/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_ObjMgt_ExternRef.hxx>
#include<Handle_ObjMgt_ExternShareable.hxx>
#include<Handle_ObjMgt_PSeqOfExtRef.hxx>
#include<Handle_ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>
#include<ObjMgt_ExternRef.hxx>
#include<ObjMgt_ExternShareable.hxx>
#include<ObjMgt_PSeqOfExtRef.hxx>
#include<ObjMgt_SeqExplorerOfPSeqOfExtRef.hxx>
#include<ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
%}

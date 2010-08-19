/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(putreal) BinTools::PutReal;
%rename(putinteger) BinTools::PutInteger;
%rename(putbool) BinTools::PutBool;
%rename(putextchar) BinTools::PutExtChar;
%rename(getreal) BinTools::GetReal;
%rename(getinteger) BinTools::GetInteger;
%rename(getbool) BinTools::GetBool;
%rename(getextchar) BinTools::GetExtChar;
%rename(writesurface) BinTools_SurfaceSet::WriteSurface;
%rename(readsurface) BinTools_SurfaceSet::ReadSurface;
%rename(writecurve) BinTools_CurveSet::WriteCurve;
%rename(readcurve) BinTools_CurveSet::ReadCurve;
%rename(writecurve2d) BinTools_Curve2dSet::WriteCurve2d;
%rename(readcurve2d) BinTools_Curve2dSet::ReadCurve2d;

/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_MAT2d_Circuit.hxx>
#include<Handle_MAT2d_Connexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_Array2OfConnexion.hxx>
#include<MAT2d_BiInt.hxx>
#include<MAT2d_Circuit.hxx>
#include<MAT2d_Connexion.hxx>
#include<MAT2d_CutCurve.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapOfIntegerVec2d.hxx>
#include<MAT2d_MapBiIntHasher.hxx>
#include<MAT2d_Mat2d.hxx>
#include<MAT2d_MiniPath.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SequenceOfBoolean.hxx>
#include<MAT2d_SequenceOfConnexion.hxx>
#include<MAT2d_SequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SketchExplorer.hxx>
#include<MAT2d_Tool2d.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<Bisector_Bisec.hxx>
#include<TColGeom2d_SequenceOfGeometry.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_MAT_Bisector.hxx>
#include<TColGeom2d_SequenceOfCurve.hxx>
#include<gp_Pnt2d.hxx>
%}

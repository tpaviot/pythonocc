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

#include<FEmTool_Assembly.hxx>
#include<FEmTool_AssemblyTable.hxx>
#include<FEmTool_Curve.hxx>
#include<FEmTool_ElementaryCriterion.hxx>
#include<FEmTool_ElementsOfRefMatrix.hxx>
#include<FEmTool_HAssemblyTable.hxx>
#include<FEmTool_LinearFlexion.hxx>
#include<FEmTool_LinearJerk.hxx>
#include<FEmTool_LinearTension.hxx>
#include<FEmTool_ListIteratorOfListOfVectors.hxx>
#include<FEmTool_ListNodeOfListOfVectors.hxx>
#include<FEmTool_ListOfVectors.hxx>
#include<FEmTool_ProfileMatrix.hxx>
#include<FEmTool_SeqOfLinConstr.hxx>
#include<FEmTool_SequenceNodeOfSeqOfLinConstr.hxx>
#include<FEmTool_SparseMatrix.hxx>
#include<Handle_FEmTool_Curve.hxx>
#include<Handle_FEmTool_ElementaryCriterion.hxx>
#include<Handle_FEmTool_HAssemblyTable.hxx>
#include<Handle_FEmTool_LinearFlexion.hxx>
#include<Handle_FEmTool_LinearJerk.hxx>
#include<Handle_FEmTool_LinearTension.hxx>
#include<Handle_FEmTool_ListNodeOfListOfVectors.hxx>
#include<Handle_FEmTool_ProfileMatrix.hxx>
#include<Handle_FEmTool_SequenceNodeOfSeqOfLinConstr.hxx>
#include<Handle_FEmTool_SparseMatrix.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_PLib_Base.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<math_Vector.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<math_Matrix.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
%}

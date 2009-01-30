/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<Law_BSpFunc.hxx>
#include<Law_BSpline.hxx>
#include<Law_BSplineKnotSplitting.hxx>
#include<Law_Composite.hxx>
#include<Law_Constant.hxx>
#include<Law_Function.hxx>
#include<Law_Interpol.hxx>
#include<Law_Interpolate.hxx>
#include<Law_Laws.hxx>
#include<Law_Linear.hxx>
#include<Law_ListIteratorOfLaws.hxx>
#include<Law_ListNodeOfLaws.hxx>
#include<Law_S.hxx>
#include<Law.hxx>
#include<Handle_Law_BSpFunc.hxx>
#include<Handle_Law_BSpline.hxx>
#include<Handle_Law_Composite.hxx>
#include<Handle_Law_Constant.hxx>
#include<Handle_Law_Function.hxx>
#include<Handle_Law_Interpol.hxx>
#include<Handle_Law_Linear.hxx>
#include<Handle_Law_ListNodeOfLaws.hxx>
#include<Handle_Law_S.hxx>

// Additional headers necessary for compilation.

#include<Law.hxx>
#include<Law_BSpFunc.hxx>
#include<Law_BSpline.hxx>
#include<Law_BSplineKnotSplitting.hxx>
#include<Law_Composite.hxx>
#include<Law_Constant.hxx>
#include<Law_Function.hxx>
#include<Law_Interpol.hxx>
#include<Law_Interpolate.hxx>
#include<Law_Laws.hxx>
#include<Law_Linear.hxx>
#include<Law_ListIteratorOfLaws.hxx>
#include<Law_ListNodeOfLaws.hxx>
#include<Law_S.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_TColStd_HArray1OfBoolean.hxx>
%}

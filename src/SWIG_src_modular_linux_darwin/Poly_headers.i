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

#include<Poly_CoherentTriangulation.hxx>
#include<Poly_CoherentNode.hxx>
#include<Poly_Polygon2D.hxx>
#include<Poly_CoherentTriangle.hxx>
#include<Poly_Array1OfTriangle.hxx>
#include<Poly_HArray1OfTriangle.hxx>
#include<Poly_Triangle.hxx>
#include<Poly_Polygon3D.hxx>
#include<Poly_Triangulation.hxx>
#include<Poly_PolygonOnTriangulation.hxx>
#include<Poly_CoherentLink.hxx>
#include<Poly_Connect.hxx>
#include<Poly_CoherentTriPtr.hxx>
#include<Poly.hxx>
#include<Handle_Poly_CoherentTriangulation.hxx>
#include<Handle_Poly_HArray1OfTriangle.hxx>
#include<Handle_Poly_Polygon2D.hxx>
#include<Handle_Poly_Polygon3D.hxx>
#include<Handle_Poly_PolygonOnTriangulation.hxx>
#include<Handle_Poly_Triangulation.hxx>

// Additional headers necessary for compilation.

#include<Poly_CoherentTriangulation.hxx>
#include<Poly_CoherentNode.hxx>
#include<Poly_Polygon2D.hxx>
#include<Poly_CoherentTriangle.hxx>
#include<Poly_Array1OfTriangle.hxx>
#include<Poly_HArray1OfTriangle.hxx>
#include<Poly.hxx>
#include<Poly_Triangle.hxx>
#include<Poly_Polygon3D.hxx>
#include<Poly_Triangulation.hxx>
#include<Poly_PolygonOnTriangulation.hxx>
#include<Poly_CoherentLink.hxx>
#include<Poly_Connect.hxx>
#include<Poly_CoherentTriPtr.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XYZ.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_TShort_HArray1OfShortReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
%}

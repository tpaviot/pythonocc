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

#include<Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt.hxx>
#include<Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d.hxx>
#include<Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt.hxx>
#include<Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d.hxx>
#include<IntPoly_IndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapOfPnt2d.hxx>
#include<IntPoly_PlaneSection.hxx>
#include<IntPoly_Pnt2dHasher.hxx>
#include<IntPoly_PntHasher.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_ShapeSection.hxx>

// Additional headers necessary for compilation.

#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d.hxx>
#include<IntPoly_IndexedMapOfPnt.hxx>
#include<IntPoly_IndexedMapOfPnt2d.hxx>
#include<IntPoly_PlaneSection.hxx>
#include<IntPoly_Pnt2dHasher.hxx>
#include<IntPoly_PntHasher.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt.hxx>
#include<IntPoly_SequenceOfSequenceOfPnt2d.hxx>
#include<IntPoly_ShapeSection.hxx>
#include<IntPolyh_ArrayOfCouples.hxx>
#include<IntPolyh_ArrayOfEdges.hxx>
#include<IntPolyh_ArrayOfPoints.hxx>
#include<IntPolyh_ArrayOfSectionLines.hxx>
#include<IntPolyh_ArrayOfStartPoints.hxx>
#include<IntPolyh_ArrayOfTangentZones.hxx>
#include<IntPolyh_ArrayOfTriangles.hxx>
#include<IntPolyh_Couple.hxx>
#include<IntPolyh_Edge.hxx>
#include<IntPolyh_Intersection.hxx>
#include<IntPolyh_MaillageAffinage.hxx>
#include<IntPolyh_PMaillageAffinage.hxx>
#include<IntPolyh_Point.hxx>
#include<IntPolyh_SectionLine.hxx>
#include<IntPolyh_SeqOfStartPoints.hxx>
#include<IntPolyh_SequenceNodeOfSeqOfStartPoints.hxx>
#include<IntPolyh_StartPoint.hxx>
#include<IntPolyh_Triangle.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Vec.hxx>
#include<TColgp_SequenceOfPnt.hxx>
%}

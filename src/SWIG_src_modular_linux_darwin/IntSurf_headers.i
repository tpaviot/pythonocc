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

#include<IntSurf_ListIteratorOfListOfPntOn2S.hxx>
#include<IntSurf_Transition.hxx>
#include<IntSurf_Situation.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfInteriorPoint.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPathPoint.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<IntSurf_InteriorPoint.hxx>
#include<IntSurf_Quadric.hxx>
#include<IntSurf_SequenceOfPntOn2S.hxx>
#include<IntSurf_TypeTrans.hxx>
#include<IntSurf_SequenceOfCouple.hxx>
#include<IntSurf_PathPoint.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfCouple.hxx>
#include<IntSurf_InteriorPointTool.hxx>
#include<IntSurf_SequenceOfPathPoint.hxx>
#include<IntSurf_Couple.hxx>
#include<IntSurf_LineOn2S.hxx>
#include<IntSurf_SequenceOfInteriorPoint.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
#include<IntSurf_PathPointTool.hxx>
#include<IntSurf_ListNodeOfListOfPntOn2S.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPntOn2S.hxx>
#include<IntSurf_QuadricTool.hxx>
#include<IntSurf.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint.hxx>
#include<Handle_IntSurf_ListNodeOfListOfPntOn2S.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfCouple.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>

// Additional headers necessary for compilation.

#include<IntSurf_ListIteratorOfListOfPntOn2S.hxx>
#include<IntSurf_Transition.hxx>
#include<IntSurf_Situation.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfInteriorPoint.hxx>
#include<IntSurf.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPathPoint.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<IntSurf_InteriorPoint.hxx>
#include<IntSurf_Quadric.hxx>
#include<IntSurf_SequenceOfPntOn2S.hxx>
#include<IntSurf_TypeTrans.hxx>
#include<IntSurf_SequenceOfCouple.hxx>
#include<IntSurf_PathPoint.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfCouple.hxx>
#include<IntSurf_InteriorPointTool.hxx>
#include<IntSurf_SequenceOfPathPoint.hxx>
#include<IntSurf_Couple.hxx>
#include<IntSurf_LineOn2S.hxx>
#include<IntSurf_SequenceOfInteriorPoint.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
#include<IntSurf_PathPointTool.hxx>
#include<IntSurf_ListNodeOfListOfPntOn2S.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPntOn2S.hxx>
#include<IntSurf_QuadricTool.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Sphere.hxx>
#include<gp_Cone.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Vec2d.hxx>
%}

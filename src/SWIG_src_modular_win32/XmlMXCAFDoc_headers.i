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

#include<XmlMXCAFDoc_AreaDriver.hxx>
#include<XmlMXCAFDoc_CentroidDriver.hxx>
#include<XmlMXCAFDoc_ColorDriver.hxx>
#include<XmlMXCAFDoc_ColorToolDriver.hxx>
#include<XmlMXCAFDoc_DocumentToolDriver.hxx>
#include<XmlMXCAFDoc_GraphNodeDriver.hxx>
#include<XmlMXCAFDoc_LayerToolDriver.hxx>
#include<XmlMXCAFDoc_LocationDriver.hxx>
#include<XmlMXCAFDoc_ShapeToolDriver.hxx>
#include<XmlMXCAFDoc_VolumeDriver.hxx>
#include<XmlMXCAFDoc.hxx>
#include<Handle_XmlMXCAFDoc_AreaDriver.hxx>
#include<Handle_XmlMXCAFDoc_CentroidDriver.hxx>
#include<Handle_XmlMXCAFDoc_ColorDriver.hxx>
#include<Handle_XmlMXCAFDoc_ColorToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_DocumentToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_GraphNodeDriver.hxx>
#include<Handle_XmlMXCAFDoc_LayerToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_LocationDriver.hxx>
#include<Handle_XmlMXCAFDoc_ShapeToolDriver.hxx>
#include<Handle_XmlMXCAFDoc_VolumeDriver.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_CDM_MessageDriver.hxx>
#include<Handle_TDF_Attribute.hxx>
#include<XmlObjMgt_Persistent.hxx>
#include<XmlObjMgt_RRelocationTable.hxx>
#include<TopLoc_Location.hxx>
#include<XmlMXCAFDoc.hxx>
#include<Handle_XmlMDF_ADriverTable.hxx>
%}

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
%module IGESDimen

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include IGESDimen_dependencies.i


%include IGESDimen_headers.i




%nodefaultctor Handle_IGESDimen_DiameterDimension;
class Handle_IGESDimen_DiameterDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_DiameterDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension(const Handle_IGESDimen_DiameterDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension(const IGESDimen_DiameterDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DiameterDimension {
	IGESDimen_DiameterDimension* GetObject() {
	return (IGESDimen_DiameterDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_DimensionDisplayData;
class Handle_IGESDimen_DimensionDisplayData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_DimensionDisplayData();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData(const Handle_IGESDimen_DimensionDisplayData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData(const IGESDimen_DimensionDisplayData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionDisplayData {
	IGESDimen_DimensionDisplayData* GetObject() {
	return (IGESDimen_DimensionDisplayData*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_GeneralSymbol;
class Handle_IGESDimen_GeneralSymbol : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_GeneralSymbol();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol(const Handle_IGESDimen_GeneralSymbol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol(const IGESDimen_GeneralSymbol *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralSymbol {
	IGESDimen_GeneralSymbol* GetObject() {
	return (IGESDimen_GeneralSymbol*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_LeaderArrow;
class Handle_IGESDimen_LeaderArrow : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_LeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow(const Handle_IGESDimen_LeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow(const IGESDimen_LeaderArrow *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_LeaderArrow {
	IGESDimen_LeaderArrow* GetObject() {
	return (IGESDimen_LeaderArrow*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_DimensionTolerance;
class Handle_IGESDimen_DimensionTolerance : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_DimensionTolerance();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance(const Handle_IGESDimen_DimensionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance(const IGESDimen_DimensionTolerance *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionTolerance {
	IGESDimen_DimensionTolerance* GetObject() {
	return (IGESDimen_DimensionTolerance*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_HArray1OfGeneralNote;
class Handle_IGESDimen_HArray1OfGeneralNote : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_HArray1OfGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote(const Handle_IGESDimen_HArray1OfGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote(const IGESDimen_HArray1OfGeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_HArray1OfGeneralNote {
	IGESDimen_HArray1OfGeneralNote* GetObject() {
	return (IGESDimen_HArray1OfGeneralNote*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_SectionedArea;
class Handle_IGESDimen_SectionedArea : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_SectionedArea();
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea();
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea(const Handle_IGESDimen_SectionedArea &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea(const IGESDimen_SectionedArea *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_SectionedArea {
	IGESDimen_SectionedArea* GetObject() {
	return (IGESDimen_SectionedArea*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_GeneralLabel;
class Handle_IGESDimen_GeneralLabel : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_GeneralLabel();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel(const Handle_IGESDimen_GeneralLabel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel(const IGESDimen_GeneralLabel *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralLabel {
	IGESDimen_GeneralLabel* GetObject() {
	return (IGESDimen_GeneralLabel*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_RadiusDimension;
class Handle_IGESDimen_RadiusDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_RadiusDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension(const Handle_IGESDimen_RadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension(const IGESDimen_RadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_RadiusDimension {
	IGESDimen_RadiusDimension* GetObject() {
	return (IGESDimen_RadiusDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_WitnessLine;
class Handle_IGESDimen_WitnessLine : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_WitnessLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine(const Handle_IGESDimen_WitnessLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine(const IGESDimen_WitnessLine *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_WitnessLine {
	IGESDimen_WitnessLine* GetObject() {
	return (IGESDimen_WitnessLine*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_GeneralModule;
class Handle_IGESDimen_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule(const Handle_IGESDimen_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule(const IGESDimen_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralModule {
	IGESDimen_GeneralModule* GetObject() {
	return (IGESDimen_GeneralModule*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_BasicDimension;
class Handle_IGESDimen_BasicDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_BasicDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension(const Handle_IGESDimen_BasicDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension(const IGESDimen_BasicDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_BasicDimension {
	IGESDimen_BasicDimension* GetObject() {
	return (IGESDimen_BasicDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_Section;
class Handle_IGESDimen_Section : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_Section();
		%feature("autodoc", "1");
		Handle_IGESDimen_Section();
		%feature("autodoc", "1");
		Handle_IGESDimen_Section(const Handle_IGESDimen_Section &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Section(const IGESDimen_Section *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_Section const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_Section {
	IGESDimen_Section* GetObject() {
	return (IGESDimen_Section*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_OrdinateDimension;
class Handle_IGESDimen_OrdinateDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_OrdinateDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension(const Handle_IGESDimen_OrdinateDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension(const IGESDimen_OrdinateDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_OrdinateDimension {
	IGESDimen_OrdinateDimension* GetObject() {
	return (IGESDimen_OrdinateDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_ReadWriteModule;
class Handle_IGESDimen_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule(const Handle_IGESDimen_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule(const IGESDimen_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_ReadWriteModule {
	IGESDimen_ReadWriteModule* GetObject() {
	return (IGESDimen_ReadWriteModule*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_Protocol;
class Handle_IGESDimen_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_Protocol();
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol();
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol(const Handle_IGESDimen_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol(const IGESDimen_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_Protocol {
	IGESDimen_Protocol* GetObject() {
	return (IGESDimen_Protocol*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_FlagNote;
class Handle_IGESDimen_FlagNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_FlagNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote(const Handle_IGESDimen_FlagNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote(const IGESDimen_FlagNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_FlagNote {
	IGESDimen_FlagNote* GetObject() {
	return (IGESDimen_FlagNote*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_DimensionUnits;
class Handle_IGESDimen_DimensionUnits : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_DimensionUnits();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits(const Handle_IGESDimen_DimensionUnits &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits(const IGESDimen_DimensionUnits *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionUnits {
	IGESDimen_DimensionUnits* GetObject() {
	return (IGESDimen_DimensionUnits*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_AngularDimension;
class Handle_IGESDimen_AngularDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_AngularDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension(const Handle_IGESDimen_AngularDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension(const IGESDimen_AngularDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_AngularDimension {
	IGESDimen_AngularDimension* GetObject() {
	return (IGESDimen_AngularDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_NewDimensionedGeometry;
class Handle_IGESDimen_NewDimensionedGeometry : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_NewDimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry(const Handle_IGESDimen_NewDimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry(const IGESDimen_NewDimensionedGeometry *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_NewDimensionedGeometry {
	IGESDimen_NewDimensionedGeometry* GetObject() {
	return (IGESDimen_NewDimensionedGeometry*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_HArray1OfLeaderArrow;
class Handle_IGESDimen_HArray1OfLeaderArrow : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_HArray1OfLeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow(const Handle_IGESDimen_HArray1OfLeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow(const IGESDimen_HArray1OfLeaderArrow *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_HArray1OfLeaderArrow {
	IGESDimen_HArray1OfLeaderArrow* GetObject() {
	return (IGESDimen_HArray1OfLeaderArrow*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_NewGeneralNote;
class Handle_IGESDimen_NewGeneralNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_NewGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote(const Handle_IGESDimen_NewGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote(const IGESDimen_NewGeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_NewGeneralNote {
	IGESDimen_NewGeneralNote* GetObject() {
	return (IGESDimen_NewGeneralNote*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_DimensionedGeometry;
class Handle_IGESDimen_DimensionedGeometry : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_DimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry(const Handle_IGESDimen_DimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry(const IGESDimen_DimensionedGeometry *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionedGeometry {
	IGESDimen_DimensionedGeometry* GetObject() {
	return (IGESDimen_DimensionedGeometry*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_PointDimension;
class Handle_IGESDimen_PointDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_PointDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension(const Handle_IGESDimen_PointDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension(const IGESDimen_PointDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_PointDimension {
	IGESDimen_PointDimension* GetObject() {
	return (IGESDimen_PointDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_GeneralNote;
class Handle_IGESDimen_GeneralNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_GeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote(const Handle_IGESDimen_GeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote(const IGESDimen_GeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralNote {
	IGESDimen_GeneralNote* GetObject() {
	return (IGESDimen_GeneralNote*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_LinearDimension;
class Handle_IGESDimen_LinearDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_LinearDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension(const Handle_IGESDimen_LinearDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension(const IGESDimen_LinearDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_LinearDimension {
	IGESDimen_LinearDimension* GetObject() {
	return (IGESDimen_LinearDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_SpecificModule;
class Handle_IGESDimen_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule(const Handle_IGESDimen_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule(const IGESDimen_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_SpecificModule {
	IGESDimen_SpecificModule* GetObject() {
	return (IGESDimen_SpecificModule*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_CurveDimension;
class Handle_IGESDimen_CurveDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_CurveDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension(const Handle_IGESDimen_CurveDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension(const IGESDimen_CurveDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_CurveDimension {
	IGESDimen_CurveDimension* GetObject() {
	return (IGESDimen_CurveDimension*)$self->Access();
	}
};

%nodefaultctor Handle_IGESDimen_CenterLine;
class Handle_IGESDimen_CenterLine : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESDimen_CenterLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine(const Handle_IGESDimen_CenterLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine(const IGESDimen_CenterLine *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_CenterLine {
	IGESDimen_CenterLine* GetObject() {
	return (IGESDimen_CenterLine*)$self->Access();
	}
};

%nodefaultctor IGESDimen_CenterLine;
class IGESDimen_CenterLine : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_CenterLine();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aDataType, const Standard_Real aZdisp, const Handle_TColgp_HArray1OfXY &dataPnts);
		%feature("autodoc", "1");
		void SetCrossHair(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Integer Datatype() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real ZDisplacement() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCrossHair() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_CenterLine();

};
%extend IGESDimen_CenterLine {
	Handle_IGESDimen_CenterLine GetHandle() {
	return *(Handle_IGESDimen_CenterLine*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolDimensionTolerance;
class IGESDimen_ToolDimensionTolerance {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolDimensionTolerance();
		%feature("autodoc", "1");
		IGESDimen_ToolDimensionTolerance();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_DimensionTolerance &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_DimensionTolerance &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_DimensionTolerance &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_DimensionTolerance &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_DimensionTolerance &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_DimensionTolerance &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_DimensionTolerance &entfrom, const Handle_IGESDimen_DimensionTolerance &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_DimensionTolerance &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_HArray1OfLeaderArrow;
class IGESDimen_HArray1OfLeaderArrow : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESDimen_HArray1OfLeaderArrow(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDimen_HArray1OfLeaderArrow(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESDimen_LeaderArrow &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_LeaderArrow &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDimen_LeaderArrow &Value);
		%feature("autodoc", "1");
		const Handle_IGESDimen_LeaderArrow & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESDimen_Array1OfLeaderArrow & Array1() const;
		%feature("autodoc", "1");
		IGESDimen_Array1OfLeaderArrow & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_HArray1OfLeaderArrow();

};
%extend IGESDimen_HArray1OfLeaderArrow {
	Handle_IGESDimen_HArray1OfLeaderArrow GetHandle() {
	return *(Handle_IGESDimen_HArray1OfLeaderArrow*) &$self;
	}
};

%nodefaultctor IGESDimen_LeaderArrow;
class IGESDimen_LeaderArrow : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_LeaderArrow();
		%feature("autodoc", "1");
		void Init(const Standard_Real height, const Standard_Real width, const Standard_Real depth, const gp_XY &position, const Handle_TColgp_HArray1OfXY &segments);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Standard_Real ArrowHeadHeight() const;
		%feature("autodoc", "1");
		Standard_Real ArrowHeadWidth() const;
		%feature("autodoc", "1");
		Standard_Real ZDepth() const;
		%feature("autodoc", "1");
		gp_Pnt2d ArrowHead() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedArrowHead() const;
		%feature("autodoc", "1");
		gp_Pnt2d SegmentTail(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedSegmentTail(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_LeaderArrow();

};
%extend IGESDimen_LeaderArrow {
	Handle_IGESDimen_LeaderArrow GetHandle() {
	return *(Handle_IGESDimen_LeaderArrow*) &$self;
	}
};

%nodefaultctor IGESDimen_GeneralSymbol;
class IGESDimen_GeneralSymbol : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_GeneralSymbol();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESData_HArray1OfIGESEntity &allGeoms, const Handle_IGESDimen_HArray1OfLeaderArrow &allLeaders);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Boolean HasNote() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Integer NbGeomEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity GeomEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbLeaders() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow LeaderArrow(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_GeneralSymbol();

};
%extend IGESDimen_GeneralSymbol {
	Handle_IGESDimen_GeneralSymbol GetHandle() {
	return *(Handle_IGESDimen_GeneralSymbol*) &$self;
	}
};

%nodefaultctor IGESDimen_DimensionedGeometry;
class IGESDimen_DimensionedGeometry : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_DimensionedGeometry();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbDims, const Handle_IGESData_IGESEntity &aDimension, const Handle_IGESData_HArray1OfIGESEntity &entities);
		%feature("autodoc", "1");
		Standard_Integer NbDimensions() const;
		%feature("autodoc", "1");
		Standard_Integer NbGeometryEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity DimensionEntity() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity GeometryEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_DimensionedGeometry();

};
%extend IGESDimen_DimensionedGeometry {
	Handle_IGESDimen_DimensionedGeometry GetHandle() {
	return *(Handle_IGESDimen_DimensionedGeometry*) &$self;
	}
};

%nodefaultctor IGESDimen_ReadWriteModule;
class IGESDimen_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESDimen_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_ReadWriteModule();

};
%extend IGESDimen_ReadWriteModule {
	Handle_IGESDimen_ReadWriteModule GetHandle() {
	return *(Handle_IGESDimen_ReadWriteModule*) &$self;
	}
};

%nodefaultctor IGESDimen_WitnessLine;
class IGESDimen_WitnessLine : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_WitnessLine();
		%feature("autodoc", "1");
		void Init(const Standard_Integer dataType, const Standard_Real aDisp, const Handle_TColgp_HArray1OfXY &dataPoints);
		%feature("autodoc", "1");
		Standard_Integer Datatype() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real ZDisplacement() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_WitnessLine();

};
%extend IGESDimen_WitnessLine {
	Handle_IGESDimen_WitnessLine GetHandle() {
	return *(Handle_IGESDimen_WitnessLine*) &$self;
	}
};

%nodefaultctor IGESDimen_PointDimension;
class IGESDimen_PointDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_PointDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_LeaderArrow &anArrow, const Handle_IGESData_IGESEntity &aGeom);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow LeaderArrow() const;
		%feature("autodoc", "1");
		Standard_Integer GeomCase() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Geom() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CircularArc CircularArc() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CompositeCurve CompositeCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_PointDimension();

};
%extend IGESDimen_PointDimension {
	Handle_IGESDimen_PointDimension GetHandle() {
	return *(Handle_IGESDimen_PointDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolGeneralNote;
class IGESDimen_ToolGeneralNote {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolGeneralNote();
		%feature("autodoc", "1");
		IGESDimen_ToolGeneralNote();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_GeneralNote &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_GeneralNote &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_GeneralNote &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_GeneralNote &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_GeneralNote &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_GeneralNote &entfrom, const Handle_IGESDimen_GeneralNote &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_GeneralNote &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_DimensionDisplayData;
class IGESDimen_DimensionDisplayData : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_DimensionDisplayData();
		%feature("autodoc", "1");
		void Init(const Standard_Integer numProps, const Standard_Integer aDimType, const Standard_Integer aLabelPos, const Standard_Integer aCharSet, const Handle_TCollection_HAsciiString &aString, const Standard_Integer aSymbol, const Standard_Real anAng, const Standard_Integer anAlign, const Standard_Integer aLevel, const Standard_Integer aPlace, const Standard_Integer anOrient, const Standard_Real initVal, const Handle_TColStd_HArray1OfInteger &notes, const Handle_TColStd_HArray1OfInteger &startInd, const Handle_TColStd_HArray1OfInteger &endInd);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer DimensionType() const;
		%feature("autodoc", "1");
		Standard_Integer LabelPosition() const;
		%feature("autodoc", "1");
		Standard_Integer CharacterSet() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString LString() const;
		%feature("autodoc", "1");
		Standard_Integer DecimalSymbol() const;
		%feature("autodoc", "1");
		Standard_Real WitnessLineAngle() const;
		%feature("autodoc", "1");
		Standard_Integer TextAlignment() const;
		%feature("autodoc", "1");
		Standard_Integer TextLevel() const;
		%feature("autodoc", "1");
		Standard_Integer TextPlacement() const;
		%feature("autodoc", "1");
		Standard_Integer ArrowHeadOrientation() const;
		%feature("autodoc", "1");
		Standard_Real InitialValue() const;
		%feature("autodoc", "1");
		Standard_Integer NbSupplementaryNotes() const;
		%feature("autodoc", "1");
		Standard_Integer SupplementaryNote(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer StartIndex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer EndIndex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_DimensionDisplayData();

};
%extend IGESDimen_DimensionDisplayData {
	Handle_IGESDimen_DimensionDisplayData GetHandle() {
	return *(Handle_IGESDimen_DimensionDisplayData*) &$self;
	}
};

%nodefaultctor IGESDimen_GeneralModule;
class IGESDimen_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESDimen_GeneralModule();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_GeneralModule();

};
%extend IGESDimen_GeneralModule {
	Handle_IGESDimen_GeneralModule GetHandle() {
	return *(Handle_IGESDimen_GeneralModule*) &$self;
	}
};

%nodefaultctor IGESDimen_NewGeneralNote;
class IGESDimen_NewGeneralNote : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_NewGeneralNote();
		%feature("autodoc", "1");
		void Init(const Standard_Real width, const Standard_Real height, const Standard_Integer justifyCode, const gp_XYZ &areaLoc, const Standard_Real areaRotationAngle, const gp_XYZ &baseLinePos, const Standard_Real normalInterlineSpace, const Handle_TColStd_HArray1OfInteger &charDisplays, const Handle_TColStd_HArray1OfReal &charWidths, const Handle_TColStd_HArray1OfReal &charHeights, const Handle_TColStd_HArray1OfReal &interCharSpc, const Handle_TColStd_HArray1OfReal &interLineSpc, const Handle_TColStd_HArray1OfInteger &fontStyles, const Handle_TColStd_HArray1OfReal &charAngles, const Handle_Interface_HArray1OfHAsciiString &controlCodeStrings, const Handle_TColStd_HArray1OfInteger &nbChars, const Handle_TColStd_HArray1OfReal &boxWidths, const Handle_TColStd_HArray1OfReal &boxHeights, const Handle_TColStd_HArray1OfInteger &charSetCodes, const Handle_IGESData_HArray1OfIGESEntity &charSetEntities, const Handle_TColStd_HArray1OfReal &slAngles, const Handle_TColStd_HArray1OfReal &rotAngles, const Handle_TColStd_HArray1OfInteger &mirrorFlags, const Handle_TColStd_HArray1OfInteger &rotateFlags, const Handle_TColgp_HArray1OfXYZ &startPoints, const Handle_Interface_HArray1OfHAsciiString &texts);
		%feature("autodoc", "1");
		Standard_Real TextWidth() const;
		%feature("autodoc", "1");
		Standard_Real TextHeight() const;
		%feature("autodoc", "1");
		Standard_Integer JustifyCode() const;
		%feature("autodoc", "1");
		gp_Pnt AreaLocation() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedAreaLocation() const;
		%feature("autodoc", "1");
		Standard_Real ZDepthAreaLocation() const;
		%feature("autodoc", "1");
		Standard_Real AreaRotationAngle() const;
		%feature("autodoc", "1");
		gp_Pnt BaseLinePosition() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedBaseLinePosition() const;
		%feature("autodoc", "1");
		Standard_Real ZDepthBaseLinePosition() const;
		%feature("autodoc", "1");
		Standard_Real NormalInterlineSpace() const;
		%feature("autodoc", "1");
		Standard_Integer NbStrings() const;
		%feature("autodoc", "1");
		Standard_Integer CharacterDisplay(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsVariable(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real CharacterWidth(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real CharacterHeight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real InterCharacterSpace(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real InterlineSpace(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer FontStyle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real CharacterAngle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ControlCodeString(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbCharacters(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real BoxWidth(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real BoxHeight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCharSetEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer CharSetCode(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity CharSetEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real SlantAngle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real RotationAngle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer MirrorFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMirrored(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer RotateFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt StartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real ZDepthStartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Text(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_NewGeneralNote();

};
%extend IGESDimen_NewGeneralNote {
	Handle_IGESDimen_NewGeneralNote GetHandle() {
	return *(Handle_IGESDimen_NewGeneralNote*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolRadiusDimension;
class IGESDimen_ToolRadiusDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolRadiusDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolRadiusDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_RadiusDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_RadiusDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_RadiusDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_RadiusDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_RadiusDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_RadiusDimension &entfrom, const Handle_IGESDimen_RadiusDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_RadiusDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_SpecificModule;
class IGESDimen_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESDimen_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_SpecificModule();

};
%extend IGESDimen_SpecificModule {
	Handle_IGESDimen_SpecificModule GetHandle() {
	return *(Handle_IGESDimen_SpecificModule*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolBasicDimension;
class IGESDimen_ToolBasicDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolBasicDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolBasicDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_BasicDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_BasicDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_BasicDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_BasicDimension &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_BasicDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_BasicDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_BasicDimension &entfrom, const Handle_IGESDimen_BasicDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_BasicDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolCurveDimension;
class IGESDimen_ToolCurveDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolCurveDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolCurveDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_CurveDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_CurveDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_CurveDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_CurveDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_CurveDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_CurveDimension &entfrom, const Handle_IGESDimen_CurveDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_CurveDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_SectionedArea;
class IGESDimen_SectionedArea : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_SectionedArea();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aCurve, const Standard_Integer aPattern, const gp_XYZ &aPoint, const Standard_Real aDistance, const Standard_Real anAngle, const Handle_IGESData_HArray1OfIGESEntity &someIslands);
		%feature("autodoc", "1");
		void SetInverted(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsInverted() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ExteriorCurve() const;
		%feature("autodoc", "1");
		Standard_Integer Pattern() const;
		%feature("autodoc", "1");
		gp_Pnt PassingPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPassingPoint() const;
		%feature("autodoc", "1");
		Standard_Real ZDepth() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		Standard_Integer NbIslands() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity IslandCurve(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_SectionedArea();

};
%extend IGESDimen_SectionedArea {
	Handle_IGESDimen_SectionedArea GetHandle() {
	return *(Handle_IGESDimen_SectionedArea*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolGeneralLabel;
class IGESDimen_ToolGeneralLabel {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolGeneralLabel();
		%feature("autodoc", "1");
		IGESDimen_ToolGeneralLabel();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_GeneralLabel &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_GeneralLabel &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_GeneralLabel &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_GeneralLabel &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_GeneralLabel &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_GeneralLabel &entfrom, const Handle_IGESDimen_GeneralLabel &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_GeneralLabel &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_DimensionTolerance;
class IGESDimen_DimensionTolerance : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_DimensionTolerance();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aSecTolFlag, const Standard_Integer aTolType, const Standard_Integer aTolPlaceFlag, const Standard_Real anUpperTol, const Standard_Real aLowerTol, const Standard_Boolean aSignFlag, const Standard_Integer aFracFlag, const Standard_Integer aPrecision);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer SecondaryToleranceFlag() const;
		%feature("autodoc", "1");
		Standard_Integer ToleranceType() const;
		%feature("autodoc", "1");
		Standard_Integer TolerancePlacementFlag() const;
		%feature("autodoc", "1");
		Standard_Real UpperTolerance() const;
		%feature("autodoc", "1");
		Standard_Real LowerTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean SignSuppressionFlag() const;
		%feature("autodoc", "1");
		Standard_Integer FractionFlag() const;
		%feature("autodoc", "1");
		Standard_Integer Precision() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_DimensionTolerance();

};
%extend IGESDimen_DimensionTolerance {
	Handle_IGESDimen_DimensionTolerance GetHandle() {
	return *(Handle_IGESDimen_DimensionTolerance*) &$self;
	}
};

%nodefaultctor IGESDimen_FlagNote;
class IGESDimen_FlagNote : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_FlagNote();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &leftCorner, const Standard_Real anAngle, const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_HArray1OfLeaderArrow &someLeaders);
		%feature("autodoc", "1");
		gp_Pnt LowerLeftCorner() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedLowerLeftCorner() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Integer NbLeaders() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow Leader(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		Standard_Real CharacterHeight() const;
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		Standard_Real TextWidth() const;
		%feature("autodoc", "1");
		Standard_Real TipLength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_FlagNote();

};
%extend IGESDimen_FlagNote {
	Handle_IGESDimen_FlagNote GetHandle() {
	return *(Handle_IGESDimen_FlagNote*) &$self;
	}
};

%nodefaultctor IGESDimen_DiameterDimension;
class IGESDimen_DiameterDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_DiameterDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_LeaderArrow &aLeader, const Handle_IGESDimen_LeaderArrow &anotherLeader, const gp_XY &aCenter);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow FirstLeader() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondLeader() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow SecondLeader() const;
		%feature("autodoc", "1");
		gp_Pnt2d Center() const;
		%feature("autodoc", "1");
		gp_Pnt2d TransformedCenter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_DiameterDimension();

};
%extend IGESDimen_DiameterDimension {
	Handle_IGESDimen_DiameterDimension GetHandle() {
	return *(Handle_IGESDimen_DiameterDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolWitnessLine;
class IGESDimen_ToolWitnessLine {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolWitnessLine();
		%feature("autodoc", "1");
		IGESDimen_ToolWitnessLine();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_WitnessLine &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_WitnessLine &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_WitnessLine &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_WitnessLine &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_WitnessLine &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_WitnessLine &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_WitnessLine &entfrom, const Handle_IGESDimen_WitnessLine &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_WitnessLine &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_Array1OfLeaderArrow;
class IGESDimen_Array1OfLeaderArrow {
	public:
		%feature("autodoc", "1");
		IGESDimen_Array1OfLeaderArrow(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDimen_Array1OfLeaderArrow(const Handle_IGESDimen_LeaderArrow &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_LeaderArrow &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IGESDimen_Array1OfLeaderArrow();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESDimen_Array1OfLeaderArrow & Assign(const IGESDimen_Array1OfLeaderArrow &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDimen_LeaderArrow &Value);
		%feature("autodoc", "1");
		const Handle_IGESDimen_LeaderArrow & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESDimen_LeaderArrow & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow & operator()(const Standard_Integer Index);

};

%nodefaultctor IGESDimen_Section;
class IGESDimen_Section : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_Section();
		%feature("autodoc", "1");
		void Init(const Standard_Integer dataType, const Standard_Real aDisp, const Handle_TColgp_HArray1OfXY &dataPoints);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer Datatype() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real ZDisplacement() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_Section();

};
%extend IGESDimen_Section {
	Handle_IGESDimen_Section GetHandle() {
	return *(Handle_IGESDimen_Section*) &$self;
	}
};

%nodefaultctor IGESDimen_RadiusDimension;
class IGESDimen_RadiusDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_RadiusDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_LeaderArrow &anArrow, const gp_XY &arcCenter, const Handle_IGESDimen_LeaderArrow &anotherArrow);
		%feature("autodoc", "1");
		void InitForm(const Standard_Integer form);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow Leader() const;
		%feature("autodoc", "1");
		gp_Pnt2d Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLeader2() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow Leader2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_RadiusDimension();

};
%extend IGESDimen_RadiusDimension {
	Handle_IGESDimen_RadiusDimension GetHandle() {
	return *(Handle_IGESDimen_RadiusDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_Array1OfGeneralNote;
class IGESDimen_Array1OfGeneralNote {
	public:
		%feature("autodoc", "1");
		IGESDimen_Array1OfGeneralNote(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDimen_Array1OfGeneralNote(const Handle_IGESDimen_GeneralNote &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IGESDimen_Array1OfGeneralNote();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESDimen_Array1OfGeneralNote & Assign(const IGESDimen_Array1OfGeneralNote &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDimen_GeneralNote &Value);
		%feature("autodoc", "1");
		const Handle_IGESDimen_GeneralNote & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESDimen_GeneralNote & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote & operator()(const Standard_Integer Index);

};

%nodefaultctor IGESDimen_HArray1OfGeneralNote;
class IGESDimen_HArray1OfGeneralNote : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESDimen_HArray1OfGeneralNote(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDimen_HArray1OfGeneralNote(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESDimen_GeneralNote &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDimen_GeneralNote &Value);
		%feature("autodoc", "1");
		const Handle_IGESDimen_GeneralNote & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESDimen_Array1OfGeneralNote & Array1() const;
		%feature("autodoc", "1");
		IGESDimen_Array1OfGeneralNote & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_HArray1OfGeneralNote();

};
%extend IGESDimen_HArray1OfGeneralNote {
	Handle_IGESDimen_HArray1OfGeneralNote GetHandle() {
	return *(Handle_IGESDimen_HArray1OfGeneralNote*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolDiameterDimension;
class IGESDimen_ToolDiameterDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolDiameterDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolDiameterDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_DiameterDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_DiameterDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_DiameterDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_DiameterDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_DiameterDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_DiameterDimension &entfrom, const Handle_IGESDimen_DiameterDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_DiameterDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_LinearDimension;
class IGESDimen_LinearDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_LinearDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_LeaderArrow &aLeader, const Handle_IGESDimen_LeaderArrow &anotherLeader, const Handle_IGESDimen_WitnessLine &aWitness, const Handle_IGESDimen_WitnessLine &anotherWitness);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow FirstLeader() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow SecondLeader() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstWitness() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine FirstWitness() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondWitness() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine SecondWitness() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_LinearDimension();

};
%extend IGESDimen_LinearDimension {
	Handle_IGESDimen_LinearDimension GetHandle() {
	return *(Handle_IGESDimen_LinearDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_GeneralNote;
class IGESDimen_GeneralNote : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_GeneralNote();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &nbChars, const Handle_TColStd_HArray1OfReal &widths, const Handle_TColStd_HArray1OfReal &heights, const Handle_TColStd_HArray1OfInteger &fontCodes, const Handle_IGESGraph_HArray1OfTextFontDef &fonts, const Handle_TColStd_HArray1OfReal &slants, const Handle_TColStd_HArray1OfReal &rotations, const Handle_TColStd_HArray1OfInteger &mirrorFlags, const Handle_TColStd_HArray1OfInteger &rotFlags, const Handle_TColgp_HArray1OfXYZ &start, const Handle_Interface_HArray1OfHAsciiString &texts);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer NbStrings() const;
		%feature("autodoc", "1");
		Standard_Integer NbCharacters(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real BoxWidth(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real BoxHeight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsFontEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer FontCode(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef FontEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real SlantAngle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real RotationAngle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer MirrorFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer RotateFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt StartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real ZDepthStartPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Text(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_GeneralNote();

};
%extend IGESDimen_GeneralNote {
	Handle_IGESDimen_GeneralNote GetHandle() {
	return *(Handle_IGESDimen_GeneralNote*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolCenterLine;
class IGESDimen_ToolCenterLine {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolCenterLine();
		%feature("autodoc", "1");
		IGESDimen_ToolCenterLine();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_CenterLine &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_CenterLine &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_CenterLine &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_CenterLine &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_CenterLine &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_CenterLine &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_CenterLine &entfrom, const Handle_IGESDimen_CenterLine &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_CenterLine &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_CurveDimension;
class IGESDimen_CurveDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_CurveDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESData_IGESEntity &aCurve, const Handle_IGESData_IGESEntity &anotherCurve, const Handle_IGESDimen_LeaderArrow &aLeader, const Handle_IGESDimen_LeaderArrow &anotherLeader, const Handle_IGESDimen_WitnessLine &aLine, const Handle_IGESDimen_WitnessLine &anotherLine);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity FirstCurve() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondCurve() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity SecondCurve() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow FirstLeader() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow SecondLeader() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstWitnessLine() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine FirstWitnessLine() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondWitnessLine() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine SecondWitnessLine() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_CurveDimension();

};
%extend IGESDimen_CurveDimension {
	Handle_IGESDimen_CurveDimension GetHandle() {
	return *(Handle_IGESDimen_CurveDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolSection;
class IGESDimen_ToolSection {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolSection();
		%feature("autodoc", "1");
		IGESDimen_ToolSection();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_Section &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_Section &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_Section &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_Section &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_Section &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_Section &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_Section &entfrom, const Handle_IGESDimen_Section &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_Section &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolFlagNote;
class IGESDimen_ToolFlagNote {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolFlagNote();
		%feature("autodoc", "1");
		IGESDimen_ToolFlagNote();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_FlagNote &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_FlagNote &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_FlagNote &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_FlagNote &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_FlagNote &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_FlagNote &entfrom, const Handle_IGESDimen_FlagNote &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_FlagNote &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolNewDimensionedGeometry;
class IGESDimen_ToolNewDimensionedGeometry {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolNewDimensionedGeometry();
		%feature("autodoc", "1");
		IGESDimen_ToolNewDimensionedGeometry();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_NewDimensionedGeometry &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_NewDimensionedGeometry &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_NewDimensionedGeometry &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_NewDimensionedGeometry &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_NewDimensionedGeometry &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_NewDimensionedGeometry &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_NewDimensionedGeometry &entfrom, const Handle_IGESDimen_NewDimensionedGeometry &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_NewDimensionedGeometry &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolDimensionUnits;
class IGESDimen_ToolDimensionUnits {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolDimensionUnits();
		%feature("autodoc", "1");
		IGESDimen_ToolDimensionUnits();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_DimensionUnits &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_DimensionUnits &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_DimensionUnits &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_DimensionUnits &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_DimensionUnits &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_DimensionUnits &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_DimensionUnits &entfrom, const Handle_IGESDimen_DimensionUnits &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_DimensionUnits &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolOrdinateDimension;
class IGESDimen_ToolOrdinateDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolOrdinateDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolOrdinateDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_OrdinateDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_OrdinateDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_OrdinateDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_OrdinateDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_OrdinateDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_OrdinateDimension &entfrom, const Handle_IGESDimen_OrdinateDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_OrdinateDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolDimensionedGeometry;
class IGESDimen_ToolDimensionedGeometry {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolDimensionedGeometry();
		%feature("autodoc", "1");
		IGESDimen_ToolDimensionedGeometry();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_DimensionedGeometry &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_DimensionedGeometry &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_DimensionedGeometry &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_DimensionedGeometry &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_DimensionedGeometry &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_DimensionedGeometry &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_DimensionedGeometry &entfrom, const Handle_IGESDimen_DimensionedGeometry &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_DimensionedGeometry &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolLinearDimension;
class IGESDimen_ToolLinearDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolLinearDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolLinearDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_LinearDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_LinearDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_LinearDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_LinearDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_LinearDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_LinearDimension &entfrom, const Handle_IGESDimen_LinearDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_LinearDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolAngularDimension;
class IGESDimen_ToolAngularDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolAngularDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolAngularDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_AngularDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_AngularDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_AngularDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_AngularDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_AngularDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_AngularDimension &entfrom, const Handle_IGESDimen_AngularDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_AngularDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen;
class IGESDimen {
	public:
		%feature("autodoc", "1");
		~IGESDimen();
		%feature("autodoc", "1");
		IGESDimen();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol Protocol();

};

%nodefaultctor IGESDimen_AngularDimension;
class IGESDimen_AngularDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_AngularDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_WitnessLine &aLine, const Handle_IGESDimen_WitnessLine &anotherLine, const gp_XY &aVertex, const Standard_Real aRadius, const Handle_IGESDimen_LeaderArrow &aLeader, const Handle_IGESDimen_LeaderArrow &anotherLeader);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstWitnessLine() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine FirstWitnessLine() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondWitnessLine() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine SecondWitnessLine() const;
		%feature("autodoc", "1");
		gp_Pnt2d Vertex() const;
		%feature("autodoc", "1");
		gp_Pnt2d TransformedVertex() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow FirstLeader() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow SecondLeader() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_AngularDimension();

};
%extend IGESDimen_AngularDimension {
	Handle_IGESDimen_AngularDimension GetHandle() {
	return *(Handle_IGESDimen_AngularDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_OrdinateDimension;
class IGESDimen_OrdinateDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_OrdinateDimension();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Standard_Boolean aType, const Handle_IGESDimen_WitnessLine &aLine, const Handle_IGESDimen_LeaderArrow &anArrow);
		%feature("autodoc", "1");
		Standard_Boolean IsLine() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLeader() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine WitnessLine() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow Leader() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_OrdinateDimension();

};
%extend IGESDimen_OrdinateDimension {
	Handle_IGESDimen_OrdinateDimension GetHandle() {
	return *(Handle_IGESDimen_OrdinateDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolSectionedArea;
class IGESDimen_ToolSectionedArea {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolSectionedArea();
		%feature("autodoc", "1");
		IGESDimen_ToolSectionedArea();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_SectionedArea &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_SectionedArea &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_SectionedArea &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_SectionedArea &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_SectionedArea &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_SectionedArea &entfrom, const Handle_IGESDimen_SectionedArea &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_SectionedArea &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_GeneralLabel;
class IGESDimen_GeneralLabel : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_GeneralLabel();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Handle_IGESDimen_HArray1OfLeaderArrow &someLeaders);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Integer NbLeaders() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow Leader(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_GeneralLabel();

};
%extend IGESDimen_GeneralLabel {
	Handle_IGESDimen_GeneralLabel GetHandle() {
	return *(Handle_IGESDimen_GeneralLabel*) &$self;
	}
};

%nodefaultctor IGESDimen_BasicDimension;
class IGESDimen_BasicDimension : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_BasicDimension();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const gp_XY &lowerLeft, const gp_XY &lowerRight, const gp_XY &upperRight, const gp_XY &upperLeft);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		gp_Pnt2d LowerLeft() const;
		%feature("autodoc", "1");
		gp_Pnt2d LowerRight() const;
		%feature("autodoc", "1");
		gp_Pnt2d UpperRight() const;
		%feature("autodoc", "1");
		gp_Pnt2d UpperLeft() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_BasicDimension();

};
%extend IGESDimen_BasicDimension {
	Handle_IGESDimen_BasicDimension GetHandle() {
	return *(Handle_IGESDimen_BasicDimension*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolLeaderArrow;
class IGESDimen_ToolLeaderArrow {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolLeaderArrow();
		%feature("autodoc", "1");
		IGESDimen_ToolLeaderArrow();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_LeaderArrow &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_LeaderArrow &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_LeaderArrow &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_LeaderArrow &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_LeaderArrow &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_LeaderArrow &entfrom, const Handle_IGESDimen_LeaderArrow &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_LeaderArrow &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolGeneralSymbol;
class IGESDimen_ToolGeneralSymbol {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolGeneralSymbol();
		%feature("autodoc", "1");
		IGESDimen_ToolGeneralSymbol();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_GeneralSymbol &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_GeneralSymbol &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_GeneralSymbol &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_GeneralSymbol &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_GeneralSymbol &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_GeneralSymbol &entfrom, const Handle_IGESDimen_GeneralSymbol &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_GeneralSymbol &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolPointDimension;
class IGESDimen_ToolPointDimension {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolPointDimension();
		%feature("autodoc", "1");
		IGESDimen_ToolPointDimension();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_PointDimension &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_PointDimension &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_PointDimension &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_PointDimension &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_PointDimension &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_PointDimension &entfrom, const Handle_IGESDimen_PointDimension &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_PointDimension &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_ToolNewGeneralNote;
class IGESDimen_ToolNewGeneralNote {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolNewGeneralNote();
		%feature("autodoc", "1");
		IGESDimen_ToolNewGeneralNote();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_NewGeneralNote &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_NewGeneralNote &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_NewGeneralNote &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_NewGeneralNote &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_NewGeneralNote &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_NewGeneralNote &entfrom, const Handle_IGESDimen_NewGeneralNote &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_NewGeneralNote &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_DimensionUnits;
class IGESDimen_DimensionUnits : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_DimensionUnits();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aSecondPos, const Standard_Integer aUnitsInd, const Standard_Integer aCharSet, const Handle_TCollection_HAsciiString &aFormat, const Standard_Integer aFracFlag, const Standard_Integer aPrecision);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer SecondaryDimenPosition() const;
		%feature("autodoc", "1");
		Standard_Integer UnitsIndicator() const;
		%feature("autodoc", "1");
		Standard_Integer CharacterSet() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FormatString() const;
		%feature("autodoc", "1");
		Standard_Integer FractionFlag() const;
		%feature("autodoc", "1");
		Standard_Integer PrecisionOrDenominator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_DimensionUnits();

};
%extend IGESDimen_DimensionUnits {
	Handle_IGESDimen_DimensionUnits GetHandle() {
	return *(Handle_IGESDimen_DimensionUnits*) &$self;
	}
};

%nodefaultctor IGESDimen_ToolDimensionDisplayData;
class IGESDimen_ToolDimensionDisplayData {
	public:
		%feature("autodoc", "1");
		~IGESDimen_ToolDimensionDisplayData();
		%feature("autodoc", "1");
		IGESDimen_ToolDimensionDisplayData();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDimen_DimensionDisplayData &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDimen_DimensionDisplayData &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDimen_DimensionDisplayData &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESDimen_DimensionDisplayData &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDimen_DimensionDisplayData &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDimen_DimensionDisplayData &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDimen_DimensionDisplayData &entfrom, const Handle_IGESDimen_DimensionDisplayData &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDimen_DimensionDisplayData &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESDimen_NewDimensionedGeometry;
class IGESDimen_NewDimensionedGeometry : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDimen_NewDimensionedGeometry();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbDimens, const Handle_IGESData_IGESEntity &aDimen, const Standard_Integer anOrientation, const Standard_Real anAngle, const Handle_IGESData_HArray1OfIGESEntity &allEntities, const Handle_TColStd_HArray1OfInteger &allLocations, const Handle_TColgp_HArray1OfXYZ &allPoints);
		%feature("autodoc", "1");
		Standard_Integer NbDimensions() const;
		%feature("autodoc", "1");
		Standard_Integer NbGeometries() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity DimensionEntity() const;
		%feature("autodoc", "1");
		Standard_Integer DimensionOrientationFlag() const;
		%feature("autodoc", "1");
		Standard_Real AngleValue() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity GeometryEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer DimensionLocationFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESDimen_NewDimensionedGeometry();

};
%extend IGESDimen_NewDimensionedGeometry {
	Handle_IGESDimen_NewDimensionedGeometry GetHandle() {
	return *(Handle_IGESDimen_NewDimensionedGeometry*) &$self;
	}
};
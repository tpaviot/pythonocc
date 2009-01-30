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
%module IGESSelect

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


%include IGESSelect_dependencies.i


%include IGESSelect_headers.i




%nodefaultctor Handle_IGESSelect_SignLevelNumber;
class Handle_IGESSelect_SignLevelNumber : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SignLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignLevelNumber(const Handle_IGESSelect_SignLevelNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignLevelNumber(const IGESSelect_SignLevelNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignLevelNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SignLevelNumber {
	IGESSelect_SignLevelNumber* GetObject() {
	return (IGESSelect_SignLevelNumber*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_FileModifier;
class Handle_IGESSelect_FileModifier : public Handle_IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_FileModifier();
		%feature("autodoc", "1");
		Handle_IGESSelect_FileModifier();
		%feature("autodoc", "1");
		Handle_IGESSelect_FileModifier(const Handle_IGESSelect_FileModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_FileModifier(const IGESSelect_FileModifier *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_FileModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_FileModifier {
	IGESSelect_FileModifier* GetObject() {
	return (IGESSelect_FileModifier*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_FloatFormat;
class Handle_IGESSelect_FloatFormat : public Handle_IGESSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_FloatFormat();
		%feature("autodoc", "1");
		Handle_IGESSelect_FloatFormat();
		%feature("autodoc", "1");
		Handle_IGESSelect_FloatFormat(const Handle_IGESSelect_FloatFormat &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_FloatFormat(const IGESSelect_FloatFormat *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_FloatFormat const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_FloatFormat {
	IGESSelect_FloatFormat* GetObject() {
	return (IGESSelect_FloatFormat*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectPCurves;
class Handle_IGESSelect_SelectPCurves : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectPCurves();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectPCurves();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectPCurves(const Handle_IGESSelect_SelectPCurves &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectPCurves(const IGESSelect_SelectPCurves *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectPCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectPCurves {
	IGESSelect_SelectPCurves* GetObject() {
	return (IGESSelect_SelectPCurves*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_ModelModifier;
class Handle_IGESSelect_ModelModifier : public Handle_IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_ModelModifier();
		%feature("autodoc", "1");
		Handle_IGESSelect_ModelModifier();
		%feature("autodoc", "1");
		Handle_IGESSelect_ModelModifier(const Handle_IGESSelect_ModelModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_ModelModifier(const IGESSelect_ModelModifier *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_ModelModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_ModelModifier {
	IGESSelect_ModelModifier* GetObject() {
	return (IGESSelect_ModelModifier*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_UpdateCreationDate;
class Handle_IGESSelect_UpdateCreationDate : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_UpdateCreationDate();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateCreationDate();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateCreationDate(const Handle_IGESSelect_UpdateCreationDate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateCreationDate(const IGESSelect_UpdateCreationDate *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateCreationDate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_UpdateCreationDate {
	IGESSelect_UpdateCreationDate* GetObject() {
	return (IGESSelect_UpdateCreationDate*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectFromSingleView;
class Handle_IGESSelect_SelectFromSingleView : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectFromSingleView();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromSingleView();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromSingleView(const Handle_IGESSelect_SelectFromSingleView &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromSingleView(const IGESSelect_SelectFromSingleView *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromSingleView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectFromSingleView {
	IGESSelect_SelectFromSingleView* GetObject() {
	return (IGESSelect_SelectFromSingleView*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_ViewSorter;
class Handle_IGESSelect_ViewSorter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_ViewSorter();
		%feature("autodoc", "1");
		Handle_IGESSelect_ViewSorter();
		%feature("autodoc", "1");
		Handle_IGESSelect_ViewSorter(const Handle_IGESSelect_ViewSorter &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_ViewSorter(const IGESSelect_ViewSorter *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_ViewSorter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_ViewSorter {
	IGESSelect_ViewSorter* GetObject() {
	return (IGESSelect_ViewSorter*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_RemoveCurves;
class Handle_IGESSelect_RemoveCurves : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_RemoveCurves();
		%feature("autodoc", "1");
		Handle_IGESSelect_RemoveCurves();
		%feature("autodoc", "1");
		Handle_IGESSelect_RemoveCurves(const Handle_IGESSelect_RemoveCurves &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_RemoveCurves(const IGESSelect_RemoveCurves *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_RemoveCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_RemoveCurves {
	IGESSelect_RemoveCurves* GetObject() {
	return (IGESSelect_RemoveCurves*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_IGESTypeForm;
class Handle_IGESSelect_IGESTypeForm : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_IGESTypeForm();
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESTypeForm();
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESTypeForm(const Handle_IGESSelect_IGESTypeForm &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESTypeForm(const IGESSelect_IGESTypeForm *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESTypeForm const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_IGESTypeForm {
	IGESSelect_IGESTypeForm* GetObject() {
	return (IGESSelect_IGESTypeForm*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SetGlobalParameter;
class Handle_IGESSelect_SetGlobalParameter : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SetGlobalParameter();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetGlobalParameter();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetGlobalParameter(const Handle_IGESSelect_SetGlobalParameter &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetGlobalParameter(const IGESSelect_SetGlobalParameter *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetGlobalParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SetGlobalParameter {
	IGESSelect_SetGlobalParameter* GetObject() {
	return (IGESSelect_SetGlobalParameter*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectName;
class Handle_IGESSelect_SelectName : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectName();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectName();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectName(const Handle_IGESSelect_SelectName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectName(const IGESSelect_SelectName *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectName {
	IGESSelect_SelectName* GetObject() {
	return (IGESSelect_SelectName*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_WorkLibrary;
class Handle_IGESSelect_WorkLibrary : public Handle_IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_WorkLibrary();
		%feature("autodoc", "1");
		Handle_IGESSelect_WorkLibrary();
		%feature("autodoc", "1");
		Handle_IGESSelect_WorkLibrary(const Handle_IGESSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_WorkLibrary(const IGESSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_WorkLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_WorkLibrary {
	IGESSelect_WorkLibrary* GetObject() {
	return (IGESSelect_WorkLibrary*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_RebuildGroups;
class Handle_IGESSelect_RebuildGroups : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_RebuildGroups();
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildGroups();
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildGroups(const Handle_IGESSelect_RebuildGroups &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildGroups(const IGESSelect_RebuildGroups *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildGroups const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_RebuildGroups {
	IGESSelect_RebuildGroups* GetObject() {
	return (IGESSelect_RebuildGroups*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_DispPerDrawing;
class Handle_IGESSelect_DispPerDrawing : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_DispPerDrawing();
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerDrawing();
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerDrawing(const Handle_IGESSelect_DispPerDrawing &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerDrawing(const IGESSelect_DispPerDrawing *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerDrawing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_DispPerDrawing {
	IGESSelect_DispPerDrawing* GetObject() {
	return (IGESSelect_DispPerDrawing*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectBypassGroup;
class Handle_IGESSelect_SelectBypassGroup : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectBypassGroup();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassGroup();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassGroup(const Handle_IGESSelect_SelectBypassGroup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassGroup(const IGESSelect_SelectBypassGroup *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectBypassGroup {
	IGESSelect_SelectBypassGroup* GetObject() {
	return (IGESSelect_SelectBypassGroup*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_ChangeLevelNumber;
class Handle_IGESSelect_ChangeLevelNumber : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_ChangeLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelNumber(const Handle_IGESSelect_ChangeLevelNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelNumber(const IGESSelect_ChangeLevelNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_ChangeLevelNumber {
	IGESSelect_ChangeLevelNumber* GetObject() {
	return (IGESSelect_ChangeLevelNumber*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectLevelNumber;
class Handle_IGESSelect_SelectLevelNumber : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectLevelNumber(const Handle_IGESSelect_SelectLevelNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectLevelNumber(const IGESSelect_SelectLevelNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectLevelNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectLevelNumber {
	IGESSelect_SelectLevelNumber* GetObject() {
	return (IGESSelect_SelectLevelNumber*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectSingleViewFrom;
class Handle_IGESSelect_SelectSingleViewFrom : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectSingleViewFrom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSingleViewFrom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSingleViewFrom(const Handle_IGESSelect_SelectSingleViewFrom &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSingleViewFrom(const IGESSelect_SelectSingleViewFrom *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSingleViewFrom const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectSingleViewFrom {
	IGESSelect_SelectSingleViewFrom* GetObject() {
	return (IGESSelect_SelectSingleViewFrom*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_EditHeader;
class Handle_IGESSelect_EditHeader : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_EditHeader();
		%feature("autodoc", "1");
		Handle_IGESSelect_EditHeader();
		%feature("autodoc", "1");
		Handle_IGESSelect_EditHeader(const Handle_IGESSelect_EditHeader &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_EditHeader(const IGESSelect_EditHeader *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_EditHeader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_EditHeader {
	IGESSelect_EditHeader* GetObject() {
	return (IGESSelect_EditHeader*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_AddFileComment;
class Handle_IGESSelect_AddFileComment : public Handle_IGESSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_AddFileComment();
		%feature("autodoc", "1");
		Handle_IGESSelect_AddFileComment();
		%feature("autodoc", "1");
		Handle_IGESSelect_AddFileComment(const Handle_IGESSelect_AddFileComment &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_AddFileComment(const IGESSelect_AddFileComment *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_AddFileComment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_AddFileComment {
	IGESSelect_AddFileComment* GetObject() {
	return (IGESSelect_AddFileComment*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SetVersion5;
class Handle_IGESSelect_SetVersion5 : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SetVersion5();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetVersion5();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetVersion5(const Handle_IGESSelect_SetVersion5 &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetVersion5(const IGESSelect_SetVersion5 *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetVersion5 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SetVersion5 {
	IGESSelect_SetVersion5* GetObject() {
	return (IGESSelect_SetVersion5*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_ComputeStatus;
class Handle_IGESSelect_ComputeStatus : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_ComputeStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_ComputeStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_ComputeStatus(const Handle_IGESSelect_ComputeStatus &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_ComputeStatus(const IGESSelect_ComputeStatus *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_ComputeStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_ComputeStatus {
	IGESSelect_ComputeStatus* GetObject() {
	return (IGESSelect_ComputeStatus*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectFromDrawing;
class Handle_IGESSelect_SelectFromDrawing : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectFromDrawing();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromDrawing();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromDrawing(const Handle_IGESSelect_SelectFromDrawing &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromDrawing(const IGESSelect_SelectFromDrawing *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFromDrawing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectFromDrawing {
	IGESSelect_SelectFromDrawing* GetObject() {
	return (IGESSelect_SelectFromDrawing*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_RebuildDrawings;
class Handle_IGESSelect_RebuildDrawings : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_RebuildDrawings();
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildDrawings();
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildDrawings(const Handle_IGESSelect_RebuildDrawings &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildDrawings(const IGESSelect_RebuildDrawings *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_RebuildDrawings const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_RebuildDrawings {
	IGESSelect_RebuildDrawings* GetObject() {
	return (IGESSelect_RebuildDrawings*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_ChangeLevelList;
class Handle_IGESSelect_ChangeLevelList : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_ChangeLevelList();
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelList();
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelList(const Handle_IGESSelect_ChangeLevelList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelList(const IGESSelect_ChangeLevelList *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_ChangeLevelList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_ChangeLevelList {
	IGESSelect_ChangeLevelList* GetObject() {
	return (IGESSelect_ChangeLevelList*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_CounterOfLevelNumber;
class Handle_IGESSelect_CounterOfLevelNumber : public Handle_IFSelect_SignCounter {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_CounterOfLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_CounterOfLevelNumber();
		%feature("autodoc", "1");
		Handle_IGESSelect_CounterOfLevelNumber(const Handle_IGESSelect_CounterOfLevelNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_CounterOfLevelNumber(const IGESSelect_CounterOfLevelNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_CounterOfLevelNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_CounterOfLevelNumber {
	IGESSelect_CounterOfLevelNumber* GetObject() {
	return (IGESSelect_CounterOfLevelNumber*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SetLabel;
class Handle_IGESSelect_SetLabel : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SetLabel();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetLabel();
		%feature("autodoc", "1");
		Handle_IGESSelect_SetLabel(const Handle_IGESSelect_SetLabel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetLabel(const IGESSelect_SetLabel *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SetLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SetLabel {
	IGESSelect_SetLabel* GetObject() {
	return (IGESSelect_SetLabel*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SplineToBSpline;
class Handle_IGESSelect_SplineToBSpline : public Handle_IFSelect_Transformer {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SplineToBSpline();
		%feature("autodoc", "1");
		Handle_IGESSelect_SplineToBSpline();
		%feature("autodoc", "1");
		Handle_IGESSelect_SplineToBSpline(const Handle_IGESSelect_SplineToBSpline &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SplineToBSpline(const IGESSelect_SplineToBSpline *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SplineToBSpline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SplineToBSpline {
	IGESSelect_SplineToBSpline* GetObject() {
	return (IGESSelect_SplineToBSpline*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_IGESName;
class Handle_IGESSelect_IGESName : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_IGESName();
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESName();
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESName(const Handle_IGESSelect_IGESName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESName(const IGESSelect_IGESName *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_IGESName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_IGESName {
	IGESSelect_IGESName* GetObject() {
	return (IGESSelect_IGESName*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectBasicGeom;
class Handle_IGESSelect_SelectBasicGeom : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectBasicGeom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBasicGeom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBasicGeom(const Handle_IGESSelect_SelectBasicGeom &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBasicGeom(const IGESSelect_SelectBasicGeom *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBasicGeom const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectBasicGeom {
	IGESSelect_SelectBasicGeom* GetObject() {
	return (IGESSelect_SelectBasicGeom*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_Dumper;
class Handle_IGESSelect_Dumper : public Handle_IFSelect_SessionDumper {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_Dumper();
		%feature("autodoc", "1");
		Handle_IGESSelect_Dumper();
		%feature("autodoc", "1");
		Handle_IGESSelect_Dumper(const Handle_IGESSelect_Dumper &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_Dumper(const IGESSelect_Dumper *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_Dumper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_Dumper {
	IGESSelect_Dumper* GetObject() {
	return (IGESSelect_Dumper*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectFaces;
class Handle_IGESSelect_SelectFaces : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectFaces();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFaces();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFaces(const Handle_IGESSelect_SelectFaces &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFaces(const IGESSelect_SelectFaces *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectFaces const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectFaces {
	IGESSelect_SelectFaces* GetObject() {
	return (IGESSelect_SelectFaces*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectSubordinate;
class Handle_IGESSelect_SelectSubordinate : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectSubordinate();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSubordinate();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSubordinate(const Handle_IGESSelect_SelectSubordinate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSubordinate(const IGESSelect_SelectSubordinate *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectSubordinate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectSubordinate {
	IGESSelect_SelectSubordinate* GetObject() {
	return (IGESSelect_SelectSubordinate*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_EditDirPart;
class Handle_IGESSelect_EditDirPart : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_EditDirPart();
		%feature("autodoc", "1");
		Handle_IGESSelect_EditDirPart();
		%feature("autodoc", "1");
		Handle_IGESSelect_EditDirPart(const Handle_IGESSelect_EditDirPart &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_EditDirPart(const IGESSelect_EditDirPart *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_EditDirPart const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_EditDirPart {
	IGESSelect_EditDirPart* GetObject() {
	return (IGESSelect_EditDirPart*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_AddGroup;
class Handle_IGESSelect_AddGroup : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_AddGroup();
		%feature("autodoc", "1");
		Handle_IGESSelect_AddGroup();
		%feature("autodoc", "1");
		Handle_IGESSelect_AddGroup(const Handle_IGESSelect_AddGroup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_AddGroup(const IGESSelect_AddGroup *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_AddGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_AddGroup {
	IGESSelect_AddGroup* GetObject() {
	return (IGESSelect_AddGroup*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_DispPerSingleView;
class Handle_IGESSelect_DispPerSingleView : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_DispPerSingleView();
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerSingleView();
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerSingleView(const Handle_IGESSelect_DispPerSingleView &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerSingleView(const IGESSelect_DispPerSingleView *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_DispPerSingleView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_DispPerSingleView {
	IGESSelect_DispPerSingleView* GetObject() {
	return (IGESSelect_DispPerSingleView*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_UpdateLastChange;
class Handle_IGESSelect_UpdateLastChange : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_UpdateLastChange();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateLastChange();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateLastChange(const Handle_IGESSelect_UpdateLastChange &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateLastChange(const IGESSelect_UpdateLastChange *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateLastChange const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_UpdateLastChange {
	IGESSelect_UpdateLastChange* GetObject() {
	return (IGESSelect_UpdateLastChange*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectBypassSubfigure;
class Handle_IGESSelect_SelectBypassSubfigure : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectBypassSubfigure();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassSubfigure();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassSubfigure(const Handle_IGESSelect_SelectBypassSubfigure &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassSubfigure(const IGESSelect_SelectBypassSubfigure *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectBypassSubfigure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectBypassSubfigure {
	IGESSelect_SelectBypassSubfigure* GetObject() {
	return (IGESSelect_SelectBypassSubfigure*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_AutoCorrect;
class Handle_IGESSelect_AutoCorrect : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_AutoCorrect();
		%feature("autodoc", "1");
		Handle_IGESSelect_AutoCorrect();
		%feature("autodoc", "1");
		Handle_IGESSelect_AutoCorrect(const Handle_IGESSelect_AutoCorrect &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_AutoCorrect(const IGESSelect_AutoCorrect *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_AutoCorrect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_AutoCorrect {
	IGESSelect_AutoCorrect* GetObject() {
	return (IGESSelect_AutoCorrect*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectVisibleStatus;
class Handle_IGESSelect_SelectVisibleStatus : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectVisibleStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectVisibleStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectVisibleStatus(const Handle_IGESSelect_SelectVisibleStatus &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectVisibleStatus(const IGESSelect_SelectVisibleStatus *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectVisibleStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectVisibleStatus {
	IGESSelect_SelectVisibleStatus* GetObject() {
	return (IGESSelect_SelectVisibleStatus*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_UpdateFileName;
class Handle_IGESSelect_UpdateFileName : public Handle_IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_UpdateFileName();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateFileName();
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateFileName(const Handle_IGESSelect_UpdateFileName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateFileName(const IGESSelect_UpdateFileName *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_UpdateFileName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_UpdateFileName {
	IGESSelect_UpdateFileName* GetObject() {
	return (IGESSelect_UpdateFileName*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SignColor;
class Handle_IGESSelect_SignColor : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SignColor();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignColor();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignColor(const Handle_IGESSelect_SignColor &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignColor(const IGESSelect_SignColor *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignColor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SignColor {
	IGESSelect_SignColor* GetObject() {
	return (IGESSelect_SignColor*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SignStatus;
class Handle_IGESSelect_SignStatus : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SignStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignStatus();
		%feature("autodoc", "1");
		Handle_IGESSelect_SignStatus(const Handle_IGESSelect_SignStatus &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignStatus(const IGESSelect_SignStatus *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SignStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SignStatus {
	IGESSelect_SignStatus* GetObject() {
	return (IGESSelect_SignStatus*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_Activator;
class Handle_IGESSelect_Activator : public Handle_IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_Activator();
		%feature("autodoc", "1");
		Handle_IGESSelect_Activator();
		%feature("autodoc", "1");
		Handle_IGESSelect_Activator(const Handle_IGESSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_Activator(const IGESSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_Activator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_Activator {
	IGESSelect_Activator* GetObject() {
	return (IGESSelect_Activator*)$self->Access();
	}
};

%nodefaultctor Handle_IGESSelect_SelectDrawingFrom;
class Handle_IGESSelect_SelectDrawingFrom : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		~Handle_IGESSelect_SelectDrawingFrom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectDrawingFrom();
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectDrawingFrom(const Handle_IGESSelect_SelectDrawingFrom &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectDrawingFrom(const IGESSelect_SelectDrawingFrom *anItem);
		%feature("autodoc", "1");
		Handle_IGESSelect_SelectDrawingFrom const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSelect_SelectDrawingFrom {
	IGESSelect_SelectDrawingFrom* GetObject() {
	return (IGESSelect_SelectDrawingFrom*)$self->Access();
	}
};

%nodefaultctor IGESSelect_ModelModifier;
class IGESSelect_ModelModifier : public IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void PerformProtocol(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, const Handle_IGESData_Protocol &proto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSelect_ModelModifier {
	Handle_IGESSelect_ModelModifier GetHandle() {
	return *(Handle_IGESSelect_ModelModifier*) &$self;
	}
};

%nodefaultctor IGESSelect_UpdateLastChange;
class IGESSelect_UpdateLastChange : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_UpdateLastChange();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_UpdateLastChange();

};
%extend IGESSelect_UpdateLastChange {
	Handle_IGESSelect_UpdateLastChange GetHandle() {
	return *(Handle_IGESSelect_UpdateLastChange*) &$self;
	}
};

%nodefaultctor IGESSelect_UpdateCreationDate;
class IGESSelect_UpdateCreationDate : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_UpdateCreationDate();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_UpdateCreationDate();

};
%extend IGESSelect_UpdateCreationDate {
	Handle_IGESSelect_UpdateCreationDate GetHandle() {
	return *(Handle_IGESSelect_UpdateCreationDate*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectDrawingFrom;
class IGESSelect_SelectDrawingFrom : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectDrawingFrom();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectDrawingFrom();

};
%extend IGESSelect_SelectDrawingFrom {
	Handle_IGESSelect_SelectDrawingFrom GetHandle() {
	return *(Handle_IGESSelect_SelectDrawingFrom*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectName;
class IGESSelect_SelectName : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectName();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectName();

};
%extend IGESSelect_SelectName {
	Handle_IGESSelect_SelectName GetHandle() {
	return *(Handle_IGESSelect_SelectName*) &$self;
	}
};

%nodefaultctor IGESSelect_IGESTypeForm;
class IGESSelect_IGESTypeForm : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IGESSelect_IGESTypeForm(const Standard_Boolean withform=1);
		%feature("autodoc", "1");
		void SetForm(const Standard_Boolean withform);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_IGESTypeForm();

};
%extend IGESSelect_IGESTypeForm {
	Handle_IGESSelect_IGESTypeForm GetHandle() {
	return *(Handle_IGESSelect_IGESTypeForm*) &$self;
	}
};

%nodefaultctor IGESSelect_SignStatus;
class IGESSelect_SignStatus : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IGESSelect_SignStatus();
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model, const TCollection_AsciiString &text, const Standard_Boolean exact) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SignStatus();

};
%extend IGESSelect_SignStatus {
	Handle_IGESSelect_SignStatus GetHandle() {
	return *(Handle_IGESSelect_SignStatus*) &$self;
	}
};

%nodefaultctor IGESSelect_SetGlobalParameter;
class IGESSelect_SetGlobalParameter : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_SetGlobalParameter(const Standard_Integer numpar);
		%feature("autodoc", "1");
		Standard_Integer GlobalNumber() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_TCollection_HAsciiString &text);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Value() const;
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SetGlobalParameter();

};
%extend IGESSelect_SetGlobalParameter {
	Handle_IGESSelect_SetGlobalParameter GetHandle() {
	return *(Handle_IGESSelect_SetGlobalParameter*) &$self;
	}
};

%nodefaultctor IGESSelect_RebuildGroups;
class IGESSelect_RebuildGroups : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_RebuildGroups();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_RebuildGroups();

};
%extend IGESSelect_RebuildGroups {
	Handle_IGESSelect_RebuildGroups GetHandle() {
	return *(Handle_IGESSelect_RebuildGroups*) &$self;
	}
};

%nodefaultctor IGESSelect_AddGroup;
class IGESSelect_AddGroup : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_AddGroup();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_AddGroup();

};
%extend IGESSelect_AddGroup {
	Handle_IGESSelect_AddGroup GetHandle() {
	return *(Handle_IGESSelect_AddGroup*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectSingleViewFrom;
class IGESSelect_SelectSingleViewFrom : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectSingleViewFrom();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectSingleViewFrom();

};
%extend IGESSelect_SelectSingleViewFrom {
	Handle_IGESSelect_SelectSingleViewFrom GetHandle() {
	return *(Handle_IGESSelect_SelectSingleViewFrom*) &$self;
	}
};

%nodefaultctor IGESSelect_ComputeStatus;
class IGESSelect_ComputeStatus : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_ComputeStatus();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_ComputeStatus();

};
%extend IGESSelect_ComputeStatus {
	Handle_IGESSelect_ComputeStatus GetHandle() {
	return *(Handle_IGESSelect_ComputeStatus*) &$self;
	}
};

%nodefaultctor IGESSelect_RemoveCurves;
class IGESSelect_RemoveCurves : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_RemoveCurves(const Standard_Boolean UV);
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_RemoveCurves();

};
%extend IGESSelect_RemoveCurves {
	Handle_IGESSelect_RemoveCurves GetHandle() {
	return *(Handle_IGESSelect_RemoveCurves*) &$self;
	}
};

%nodefaultctor IGESSelect_ChangeLevelNumber;
class IGESSelect_ChangeLevelNumber : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_ChangeLevelNumber();
		%feature("autodoc", "1");
		Standard_Boolean HasOldNumber() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam OldNumber() const;
		%feature("autodoc", "1");
		void SetOldNumber(const Handle_IFSelect_IntParam &param);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam NewNumber() const;
		%feature("autodoc", "1");
		void SetNewNumber(const Handle_IFSelect_IntParam &param);
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_ChangeLevelNumber();

};
%extend IGESSelect_ChangeLevelNumber {
	Handle_IGESSelect_ChangeLevelNumber GetHandle() {
	return *(Handle_IGESSelect_ChangeLevelNumber*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectBypassGroup;
class IGESSelect_SelectBypassGroup : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectBypassGroup(const Standard_Integer level=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectBypassGroup();

};
%extend IGESSelect_SelectBypassGroup {
	Handle_IGESSelect_SelectBypassGroup GetHandle() {
	return *(Handle_IGESSelect_SelectBypassGroup*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectPCurves;
class IGESSelect_SelectPCurves : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectPCurves(const Standard_Boolean basic);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectPCurves();

};
%extend IGESSelect_SelectPCurves {
	Handle_IGESSelect_SelectPCurves GetHandle() {
	return *(Handle_IGESSelect_SelectPCurves*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectFromDrawing;
class IGESSelect_SelectFromDrawing : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectFromDrawing();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectFromDrawing();

};
%extend IGESSelect_SelectFromDrawing {
	Handle_IGESSelect_SelectFromDrawing GetHandle() {
	return *(Handle_IGESSelect_SelectFromDrawing*) &$self;
	}
};

%nodefaultctor IGESSelect_EditHeader;
class IGESSelect_EditHeader : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		IGESSelect_EditHeader();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const Handle_IFSelect_EditForm &form, const Standard_Integer num, const Handle_TCollection_HAsciiString &newval, const Standard_Boolean enforce) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_EditHeader();

};
%extend IGESSelect_EditHeader {
	Handle_IGESSelect_EditHeader GetHandle() {
	return *(Handle_IGESSelect_EditHeader*) &$self;
	}
};

%nodefaultctor IGESSelect_WorkLibrary;
class IGESSelect_WorkLibrary : public IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		IGESSelect_WorkLibrary(const Standard_Boolean modefnes=0);
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadFile(const char * name, Handle_Interface_InterfaceModel & model, const Handle_Interface_Protocol &protocol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteFile(IFSelect_ContextWrite & ctx) const;
		%feature("autodoc", "1");
		Handle_IGESData_Protocol DefineProtocol();
		%feature("autodoc", "1");
		virtual		void DumpEntity(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &protocol, const Handle_Standard_Transient &entity, const Handle_Message_Messenger &S, const Standard_Integer level) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_WorkLibrary();

};
%extend IGESSelect_WorkLibrary {
	Handle_IGESSelect_WorkLibrary GetHandle() {
	return *(Handle_IGESSelect_WorkLibrary*) &$self;
	}
};

%nodefaultctor IGESSelect_FileModifier;
class IGESSelect_FileModifier : public IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, IGESData_IGESWriter & writer) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSelect_FileModifier {
	Handle_IGESSelect_FileModifier GetHandle() {
	return *(Handle_IGESSelect_FileModifier*) &$self;
	}
};

%nodefaultctor IGESSelect_CounterOfLevelNumber;
class IGESSelect_CounterOfLevelNumber : public IFSelect_SignCounter {
	public:
		%feature("autodoc", "1");
		IGESSelect_CounterOfLevelNumber(const Standard_Boolean withmap=1, const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void AddSign(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void AddLevel(const Handle_Standard_Transient &ent, const Standard_Integer level);
		%feature("autodoc", "1");
		Standard_Integer HighestLevel() const;
		%feature("autodoc", "1");
		Standard_Integer NbTimesLevel(const Standard_Integer level) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger Levels() const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Sign(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		void PrintCount(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_CounterOfLevelNumber();

};
%extend IGESSelect_CounterOfLevelNumber {
	Handle_IGESSelect_CounterOfLevelNumber GetHandle() {
	return *(Handle_IGESSelect_CounterOfLevelNumber*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectFaces;
class IGESSelect_SelectFaces : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectFaces();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectFaces();

};
%extend IGESSelect_SelectFaces {
	Handle_IGESSelect_SelectFaces GetHandle() {
	return *(Handle_IGESSelect_SelectFaces*) &$self;
	}
};

%nodefaultctor IGESSelect_EditDirPart;
class IGESSelect_EditDirPart : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		IGESSelect_EditDirPart();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const Handle_IFSelect_EditForm &form, const Standard_Integer num, const Handle_TCollection_HAsciiString &newval, const Standard_Boolean enforce) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_EditDirPart();

};
%extend IGESSelect_EditDirPart {
	Handle_IGESSelect_EditDirPart GetHandle() {
	return *(Handle_IGESSelect_EditDirPart*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectSubordinate;
class IGESSelect_SelectSubordinate : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectSubordinate(const Standard_Integer status);
		%feature("autodoc", "1");
		Standard_Integer Status() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectSubordinate();

};
%extend IGESSelect_SelectSubordinate {
	Handle_IGESSelect_SelectSubordinate GetHandle() {
	return *(Handle_IGESSelect_SelectSubordinate*) &$self;
	}
};

%nodefaultctor IGESSelect_IGESName;
class IGESSelect_IGESName : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IGESSelect_IGESName();
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_IGESName();

};
%extend IGESSelect_IGESName {
	Handle_IGESSelect_IGESName GetHandle() {
	return *(Handle_IGESSelect_IGESName*) &$self;
	}
};

%nodefaultctor IGESSelect_Dumper;
class IGESSelect_Dumper : public IFSelect_SessionDumper {
	public:
		%feature("autodoc", "1");
		IGESSelect_Dumper();
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteOwn(IFSelect_SessionFile & file, const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ReadOwn(IFSelect_SessionFile & file, const TCollection_AsciiString &type, Handle_Standard_Transient & item) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_Dumper();

};
%extend IGESSelect_Dumper {
	Handle_IGESSelect_Dumper GetHandle() {
	return *(Handle_IGESSelect_Dumper*) &$self;
	}
};

%nodefaultctor IGESSelect;
class IGESSelect {
	public:
		%feature("autodoc", "1");
		~IGESSelect();
		%feature("autodoc", "1");
		IGESSelect();
		%feature("autodoc", "1");
		void Run();
		%feature("autodoc", "1");
		Standard_Integer WhatIges(const Handle_IGESData_IGESEntity &ent, const Interface_Graph &G, Handle_IGESData_IGESEntity & sup, Standard_Integer & index);

};

%nodefaultctor IGESSelect_AutoCorrect;
class IGESSelect_AutoCorrect : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_AutoCorrect();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_AutoCorrect();

};
%extend IGESSelect_AutoCorrect {
	Handle_IGESSelect_AutoCorrect GetHandle() {
	return *(Handle_IGESSelect_AutoCorrect*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectVisibleStatus;
class IGESSelect_SelectVisibleStatus : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectVisibleStatus();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectVisibleStatus();

};
%extend IGESSelect_SelectVisibleStatus {
	Handle_IGESSelect_SelectVisibleStatus GetHandle() {
	return *(Handle_IGESSelect_SelectVisibleStatus*) &$self;
	}
};

%nodefaultctor IGESSelect_Activator;
class IGESSelect_Activator : public IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		IGESSelect_Activator();
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		virtual		char * Help(const Standard_Integer number) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_Activator();

};
%extend IGESSelect_Activator {
	Handle_IGESSelect_Activator GetHandle() {
	return *(Handle_IGESSelect_Activator*) &$self;
	}
};

%nodefaultctor IGESSelect_UpdateFileName;
class IGESSelect_UpdateFileName : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_UpdateFileName();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_UpdateFileName();

};
%extend IGESSelect_UpdateFileName {
	Handle_IGESSelect_UpdateFileName GetHandle() {
	return *(Handle_IGESSelect_UpdateFileName*) &$self;
	}
};

%nodefaultctor IGESSelect_ViewSorter;
class IGESSelect_ViewSorter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESSelect_ViewSorter();
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Boolean AddEntity(const Handle_IGESData_IGESEntity &igesent);
		%feature("autodoc", "1");
		void AddList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		void AddModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		void SortSingleViews(const Standard_Boolean alsoframes);
		%feature("autodoc", "1");
		void SortDrawings(const Interface_Graph &G);
		%feature("autodoc", "1");
		Standard_Integer NbSets(const Standard_Boolean final) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity SetItem(const Standard_Integer num, const Standard_Boolean final) const;
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList Sets(const Standard_Boolean final) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_ViewSorter();

};
%extend IGESSelect_ViewSorter {
	Handle_IGESSelect_ViewSorter GetHandle() {
	return *(Handle_IGESSelect_ViewSorter*) &$self;
	}
};

%nodefaultctor IGESSelect_FloatFormat;
class IGESSelect_FloatFormat : public IGESSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_FloatFormat();
		%feature("autodoc", "1");
		void SetDefault(const Standard_Integer digits=0);
		%feature("autodoc", "1");
		void SetZeroSuppress(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetFormat(const char * format="%E");
		%feature("autodoc", "1");
		void SetFormatForRange(const char * format="%f", const Standard_Real Rmin=1.00000000000000005551115123125782702118158340454e-1, const Standard_Real Rmax=1.0e+3);
		%feature("autodoc", "1");
		void Format(Standard_Boolean & zerosup, TCollection_AsciiString & mainform, Standard_Boolean & hasrange, TCollection_AsciiString & forminrange, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, IGESData_IGESWriter & writer) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_FloatFormat();

};
%extend IGESSelect_FloatFormat {
	Handle_IGESSelect_FloatFormat GetHandle() {
	return *(Handle_IGESSelect_FloatFormat*) &$self;
	}
};

%nodefaultctor IGESSelect_SignLevelNumber;
class IGESSelect_SignLevelNumber : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IGESSelect_SignLevelNumber(const Standard_Boolean countmode);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SignLevelNumber();

};
%extend IGESSelect_SignLevelNumber {
	Handle_IGESSelect_SignLevelNumber GetHandle() {
	return *(Handle_IGESSelect_SignLevelNumber*) &$self;
	}
};

%nodefaultctor IGESSelect_DispPerSingleView;
class IGESSelect_DispPerSingleView : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IGESSelect_DispPerSingleView();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanHaveRemainder() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator Remainder(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_DispPerSingleView();

};
%extend IGESSelect_DispPerSingleView {
	Handle_IGESSelect_DispPerSingleView GetHandle() {
	return *(Handle_IGESSelect_DispPerSingleView*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectBasicGeom;
class IGESSelect_SelectBasicGeom : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectBasicGeom(const Standard_Integer mode);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		Standard_Boolean SubCurves(const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & explored);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectBasicGeom();

};
%extend IGESSelect_SelectBasicGeom {
	Handle_IGESSelect_SelectBasicGeom GetHandle() {
	return *(Handle_IGESSelect_SelectBasicGeom*) &$self;
	}
};

%nodefaultctor IGESSelect_SetVersion5;
class IGESSelect_SetVersion5 : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_SetVersion5();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SetVersion5();

};
%extend IGESSelect_SetVersion5 {
	Handle_IGESSelect_SetVersion5 GetHandle() {
	return *(Handle_IGESSelect_SetVersion5*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectBypassSubfigure;
class IGESSelect_SelectBypassSubfigure : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectBypassSubfigure(const Standard_Integer level=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectBypassSubfigure();

};
%extend IGESSelect_SelectBypassSubfigure {
	Handle_IGESSelect_SelectBypassSubfigure GetHandle() {
	return *(Handle_IGESSelect_SelectBypassSubfigure*) &$self;
	}
};

%nodefaultctor IGESSelect_ChangeLevelList;
class IGESSelect_ChangeLevelList : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_ChangeLevelList();
		%feature("autodoc", "1");
		Standard_Boolean HasOldNumber() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam OldNumber() const;
		%feature("autodoc", "1");
		void SetOldNumber(const Handle_IFSelect_IntParam &param);
		%feature("autodoc", "1");
		Standard_Boolean HasNewNumber() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam NewNumber() const;
		%feature("autodoc", "1");
		void SetNewNumber(const Handle_IFSelect_IntParam &param);
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_ChangeLevelList();

};
%extend IGESSelect_ChangeLevelList {
	Handle_IGESSelect_ChangeLevelList GetHandle() {
	return *(Handle_IGESSelect_ChangeLevelList*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectFromSingleView;
class IGESSelect_SelectFromSingleView : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectFromSingleView();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectFromSingleView();

};
%extend IGESSelect_SelectFromSingleView {
	Handle_IGESSelect_SelectFromSingleView GetHandle() {
	return *(Handle_IGESSelect_SelectFromSingleView*) &$self;
	}
};

%nodefaultctor IGESSelect_RebuildDrawings;
class IGESSelect_RebuildDrawings : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_RebuildDrawings();
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_RebuildDrawings();

};
%extend IGESSelect_RebuildDrawings {
	Handle_IGESSelect_RebuildDrawings GetHandle() {
	return *(Handle_IGESSelect_RebuildDrawings*) &$self;
	}
};

%nodefaultctor IGESSelect_SetLabel;
class IGESSelect_SetLabel : public IGESSelect_ModelModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_SetLabel(const Standard_Integer mode, const Standard_Boolean enforce);
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_IGESData_IGESModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SetLabel();

};
%extend IGESSelect_SetLabel {
	Handle_IGESSelect_SetLabel GetHandle() {
	return *(Handle_IGESSelect_SetLabel*) &$self;
	}
};

%nodefaultctor IGESSelect_AddFileComment;
class IGESSelect_AddFileComment : public IGESSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		IGESSelect_AddFileComment();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddLine(const char * line);
		%feature("autodoc", "1");
		void AddLines(const Handle_TColStd_HSequenceOfHAsciiString &lines);
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		char * Line(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString Lines() const;
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, IGESData_IGESWriter & writer) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_AddFileComment();

};
%extend IGESSelect_AddFileComment {
	Handle_IGESSelect_AddFileComment GetHandle() {
	return *(Handle_IGESSelect_AddFileComment*) &$self;
	}
};

%nodefaultctor IGESSelect_DispPerDrawing;
class IGESSelect_DispPerDrawing : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IGESSelect_DispPerDrawing();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanHaveRemainder() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator Remainder(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_DispPerDrawing();

};
%extend IGESSelect_DispPerDrawing {
	Handle_IGESSelect_DispPerDrawing GetHandle() {
	return *(Handle_IGESSelect_DispPerDrawing*) &$self;
	}
};

%nodefaultctor IGESSelect_SplineToBSpline;
class IGESSelect_SplineToBSpline : public IFSelect_Transformer {
	public:
		%feature("autodoc", "1");
		IGESSelect_SplineToBSpline(const Standard_Boolean tryC2);
		%feature("autodoc", "1");
		Standard_Boolean OptionTryC2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Interface_Graph &G, const Handle_Interface_Protocol &protocol, Interface_CheckIterator & checks, Handle_Interface_InterfaceModel & newmod);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Updated(const Handle_Standard_Transient &entfrom, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SplineToBSpline();

};
%extend IGESSelect_SplineToBSpline {
	Handle_IGESSelect_SplineToBSpline GetHandle() {
	return *(Handle_IGESSelect_SplineToBSpline*) &$self;
	}
};

%nodefaultctor IGESSelect_SelectLevelNumber;
class IGESSelect_SelectLevelNumber : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IGESSelect_SelectLevelNumber();
		%feature("autodoc", "1");
		void SetLevelNumber(const Handle_IFSelect_IntParam &levnum);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam LevelNumber() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SelectLevelNumber();

};
%extend IGESSelect_SelectLevelNumber {
	Handle_IGESSelect_SelectLevelNumber GetHandle() {
	return *(Handle_IGESSelect_SelectLevelNumber*) &$self;
	}
};

%nodefaultctor IGESSelect_SignColor;
class IGESSelect_SignColor : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IGESSelect_SignColor(const Standard_Integer mode);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESSelect_SignColor();

};
%extend IGESSelect_SignColor {
	Handle_IGESSelect_SignColor GetHandle() {
	return *(Handle_IGESSelect_SignColor*) &$self;
	}
};
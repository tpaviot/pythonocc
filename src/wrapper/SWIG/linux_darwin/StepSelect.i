/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module StepSelect

%include StepSelect_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include StepSelect_dependencies.i


%include StepSelect_headers.i




%nodefaultctor Handle_StepSelect_ModelModifier;
class Handle_StepSelect_ModelModifier : public Handle_IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier();
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier(const Handle_StepSelect_ModelModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier(const StepSelect_ModelModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier & operator=(const Handle_StepSelect_ModelModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier & operator=(const StepSelect_ModelModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_ModelModifier {
	StepSelect_ModelModifier* GetObject() {
	return (StepSelect_ModelModifier*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_ModelModifier::~Handle_StepSelect_ModelModifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StepSelect_FileModifier;
class Handle_StepSelect_FileModifier : public Handle_IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier();
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier(const Handle_StepSelect_FileModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier(const StepSelect_FileModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier & operator=(const Handle_StepSelect_FileModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier & operator=(const StepSelect_FileModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_FileModifier {
	StepSelect_FileModifier* GetObject() {
	return (StepSelect_FileModifier*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_FileModifier::~Handle_StepSelect_FileModifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StepSelect_FloatFormat;
class Handle_StepSelect_FloatFormat : public Handle_StepSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat();
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat(const Handle_StepSelect_FloatFormat &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat(const StepSelect_FloatFormat *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat & operator=(const Handle_StepSelect_FloatFormat &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat & operator=(const StepSelect_FloatFormat *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_FloatFormat {
	StepSelect_FloatFormat* GetObject() {
	return (StepSelect_FloatFormat*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_FloatFormat::~Handle_StepSelect_FloatFormat %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StepSelect_WorkLibrary;
class Handle_StepSelect_WorkLibrary : public Handle_IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary();
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary(const Handle_StepSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary(const StepSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary & operator=(const Handle_StepSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary & operator=(const StepSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_WorkLibrary {
	StepSelect_WorkLibrary* GetObject() {
	return (StepSelect_WorkLibrary*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_WorkLibrary::~Handle_StepSelect_WorkLibrary %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StepSelect_Activator;
class Handle_StepSelect_Activator : public Handle_IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_Activator();
		%feature("autodoc", "1");
		Handle_StepSelect_Activator(const Handle_StepSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator(const StepSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator & operator=(const Handle_StepSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator & operator=(const StepSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_Activator {
	StepSelect_Activator* GetObject() {
	return (StepSelect_Activator*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_Activator::~Handle_StepSelect_Activator %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StepSelect_StepType;
class Handle_StepSelect_StepType : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_StepType();
		%feature("autodoc", "1");
		Handle_StepSelect_StepType(const Handle_StepSelect_StepType &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType(const StepSelect_StepType *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType & operator=(const Handle_StepSelect_StepType &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType & operator=(const StepSelect_StepType *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_StepType {
	StepSelect_StepType* GetObject() {
	return (StepSelect_StepType*)$self->Access();
	}
};
%feature("shadow") Handle_StepSelect_StepType::~Handle_StepSelect_StepType %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_FileModifier;
class StepSelect_FileModifier : public IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, StepData_StepWriter & writer) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_FileModifier {
	Handle_StepSelect_FileModifier GetHandle() {
	return *(Handle_StepSelect_FileModifier*) &$self;
	}
};
%extend StepSelect_FileModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_FileModifier::~StepSelect_FileModifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_WorkLibrary;
class StepSelect_WorkLibrary : public IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		StepSelect_WorkLibrary(const Standard_Boolean copymode=1);
		%feature("autodoc", "1");
		void SetDumpLabel(const Standard_Integer mode);
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadFile(const char * name, Handle_Interface_InterfaceModel & model, const Handle_Interface_Protocol &protocol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteFile(IFSelect_ContextWrite & ctx) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CopyModel(const Handle_Interface_InterfaceModel &original, const Handle_Interface_InterfaceModel &newmodel, const Interface_EntityIterator &list, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void DumpEntity(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &protocol, const Handle_Standard_Transient &entity, const Handle_Message_Messenger &S, const Standard_Integer level) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_WorkLibrary {
	Handle_StepSelect_WorkLibrary GetHandle() {
	return *(Handle_StepSelect_WorkLibrary*) &$self;
	}
};
%extend StepSelect_WorkLibrary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_WorkLibrary::~StepSelect_WorkLibrary %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_Activator;
class StepSelect_Activator : public IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		StepSelect_Activator();
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		virtual		char * Help(const Standard_Integer number) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_Activator {
	Handle_StepSelect_Activator GetHandle() {
	return *(Handle_StepSelect_Activator*) &$self;
	}
};
%extend StepSelect_Activator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_Activator::~StepSelect_Activator %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_StepType;
class StepSelect_StepType : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		StepSelect_StepType();
		%feature("autodoc", "1");
		void SetProtocol(const Handle_Interface_Protocol &proto);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_StepType {
	Handle_StepSelect_StepType GetHandle() {
	return *(Handle_StepSelect_StepType*) &$self;
	}
};
%extend StepSelect_StepType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_StepType::~StepSelect_StepType %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_FloatFormat;
class StepSelect_FloatFormat : public StepSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		StepSelect_FloatFormat();
		%feature("autodoc", "1");
		void SetDefault(const Standard_Integer digits=0);
		%feature("autodoc", "1");
		void SetZeroSuppress(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetFormat(const char * format="%E");
		%feature("autodoc", "1");
		void SetFormatForRange(const char * format="%f", const Standard_Real Rmin=1.00000000000000005551115123125782702118158340454e-1, const Standard_Real Rmax=1.0e+3);
		%feature("autodoc","Format() -> [Standard_Real, Standard_Real]");
		void Format(Standard_Boolean & zerosup, TCollection_AsciiString & mainform, Standard_Boolean & hasrange, TCollection_AsciiString & forminrange, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, StepData_StepWriter & writer) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_FloatFormat {
	Handle_StepSelect_FloatFormat GetHandle() {
	return *(Handle_StepSelect_FloatFormat*) &$self;
	}
};
%extend StepSelect_FloatFormat {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_FloatFormat::~StepSelect_FloatFormat %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StepSelect_ModelModifier;
class StepSelect_ModelModifier : public IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void PerformProtocol(IFSelect_ContextModif & ctx, const Handle_StepData_StepModel &target, const Handle_StepData_Protocol &proto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_StepData_StepModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_ModelModifier {
	Handle_StepSelect_ModelModifier GetHandle() {
	return *(Handle_StepSelect_ModelModifier*) &$self;
	}
};
%extend StepSelect_ModelModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepSelect_ModelModifier::~StepSelect_ModelModifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}

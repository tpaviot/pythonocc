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
%module IGESDimen
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include IGESDimen_dependencies.i


%include IGESDimen_headers.i




%nodefaultctor Handle_IGESDimen_DiameterDimension;
class Handle_IGESDimen_DiameterDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension(const Handle_IGESDimen_DiameterDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension(const IGESDimen_DiameterDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension & operator=(const Handle_IGESDimen_DiameterDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DiameterDimension & operator=(const IGESDimen_DiameterDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_DiameterDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DiameterDimension {
	IGESDimen_DiameterDimension* GetObject() {
	return (IGESDimen_DiameterDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_DiameterDimension::~Handle_IGESDimen_DiameterDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_DiameterDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_DimensionDisplayData;
class Handle_IGESDimen_DimensionDisplayData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData(const Handle_IGESDimen_DimensionDisplayData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData(const IGESDimen_DimensionDisplayData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData & operator=(const Handle_IGESDimen_DimensionDisplayData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionDisplayData & operator=(const IGESDimen_DimensionDisplayData *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_DimensionDisplayData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionDisplayData {
	IGESDimen_DimensionDisplayData* GetObject() {
	return (IGESDimen_DimensionDisplayData*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_DimensionDisplayData::~Handle_IGESDimen_DimensionDisplayData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_DimensionDisplayData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_GeneralSymbol;
class Handle_IGESDimen_GeneralSymbol : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol(const Handle_IGESDimen_GeneralSymbol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol(const IGESDimen_GeneralSymbol *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol & operator=(const Handle_IGESDimen_GeneralSymbol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralSymbol & operator=(const IGESDimen_GeneralSymbol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_GeneralSymbol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralSymbol {
	IGESDimen_GeneralSymbol* GetObject() {
	return (IGESDimen_GeneralSymbol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_GeneralSymbol::~Handle_IGESDimen_GeneralSymbol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_GeneralSymbol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_LeaderArrow;
class Handle_IGESDimen_LeaderArrow : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow(const Handle_IGESDimen_LeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow(const IGESDimen_LeaderArrow *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow & operator=(const Handle_IGESDimen_LeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LeaderArrow & operator=(const IGESDimen_LeaderArrow *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_LeaderArrow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_LeaderArrow {
	IGESDimen_LeaderArrow* GetObject() {
	return (IGESDimen_LeaderArrow*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_LeaderArrow::~Handle_IGESDimen_LeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_LeaderArrow {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_DimensionTolerance;
class Handle_IGESDimen_DimensionTolerance : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance(const Handle_IGESDimen_DimensionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance(const IGESDimen_DimensionTolerance *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance & operator=(const Handle_IGESDimen_DimensionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionTolerance & operator=(const IGESDimen_DimensionTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_DimensionTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionTolerance {
	IGESDimen_DimensionTolerance* GetObject() {
	return (IGESDimen_DimensionTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_DimensionTolerance::~Handle_IGESDimen_DimensionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_DimensionTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_HArray1OfGeneralNote;
class Handle_IGESDimen_HArray1OfGeneralNote : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote(const Handle_IGESDimen_HArray1OfGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote(const IGESDimen_HArray1OfGeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote & operator=(const Handle_IGESDimen_HArray1OfGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfGeneralNote & operator=(const IGESDimen_HArray1OfGeneralNote *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_HArray1OfGeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_HArray1OfGeneralNote {
	IGESDimen_HArray1OfGeneralNote* GetObject() {
	return (IGESDimen_HArray1OfGeneralNote*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_HArray1OfGeneralNote::~Handle_IGESDimen_HArray1OfGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_HArray1OfGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_SectionedArea;
class Handle_IGESDimen_SectionedArea : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea();
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea(const Handle_IGESDimen_SectionedArea &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea(const IGESDimen_SectionedArea *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea & operator=(const Handle_IGESDimen_SectionedArea &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SectionedArea & operator=(const IGESDimen_SectionedArea *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_SectionedArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_SectionedArea {
	IGESDimen_SectionedArea* GetObject() {
	return (IGESDimen_SectionedArea*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_SectionedArea::~Handle_IGESDimen_SectionedArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_SectionedArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_GeneralLabel;
class Handle_IGESDimen_GeneralLabel : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel(const Handle_IGESDimen_GeneralLabel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel(const IGESDimen_GeneralLabel *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel & operator=(const Handle_IGESDimen_GeneralLabel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralLabel & operator=(const IGESDimen_GeneralLabel *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_GeneralLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralLabel {
	IGESDimen_GeneralLabel* GetObject() {
	return (IGESDimen_GeneralLabel*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_GeneralLabel::~Handle_IGESDimen_GeneralLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_GeneralLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_RadiusDimension;
class Handle_IGESDimen_RadiusDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension(const Handle_IGESDimen_RadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension(const IGESDimen_RadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension & operator=(const Handle_IGESDimen_RadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_RadiusDimension & operator=(const IGESDimen_RadiusDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_RadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_RadiusDimension {
	IGESDimen_RadiusDimension* GetObject() {
	return (IGESDimen_RadiusDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_RadiusDimension::~Handle_IGESDimen_RadiusDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_RadiusDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_WitnessLine;
class Handle_IGESDimen_WitnessLine : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine(const Handle_IGESDimen_WitnessLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine(const IGESDimen_WitnessLine *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine & operator=(const Handle_IGESDimen_WitnessLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_WitnessLine & operator=(const IGESDimen_WitnessLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_WitnessLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_WitnessLine {
	IGESDimen_WitnessLine* GetObject() {
	return (IGESDimen_WitnessLine*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_WitnessLine::~Handle_IGESDimen_WitnessLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_WitnessLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_CurveDimension;
class Handle_IGESDimen_CurveDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension(const Handle_IGESDimen_CurveDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension(const IGESDimen_CurveDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension & operator=(const Handle_IGESDimen_CurveDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CurveDimension & operator=(const IGESDimen_CurveDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_CurveDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_CurveDimension {
	IGESDimen_CurveDimension* GetObject() {
	return (IGESDimen_CurveDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_CurveDimension::~Handle_IGESDimen_CurveDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_CurveDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_GeneralModule;
class Handle_IGESDimen_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule(const Handle_IGESDimen_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule(const IGESDimen_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule & operator=(const Handle_IGESDimen_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralModule & operator=(const IGESDimen_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralModule {
	IGESDimen_GeneralModule* GetObject() {
	return (IGESDimen_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_GeneralModule::~Handle_IGESDimen_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_BasicDimension;
class Handle_IGESDimen_BasicDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension(const Handle_IGESDimen_BasicDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension(const IGESDimen_BasicDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension & operator=(const Handle_IGESDimen_BasicDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_BasicDimension & operator=(const IGESDimen_BasicDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_BasicDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_BasicDimension {
	IGESDimen_BasicDimension* GetObject() {
	return (IGESDimen_BasicDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_BasicDimension::~Handle_IGESDimen_BasicDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_BasicDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_Section;
class Handle_IGESDimen_Section : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_Section();
		%feature("autodoc", "1");
		Handle_IGESDimen_Section(const Handle_IGESDimen_Section &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Section(const IGESDimen_Section *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_Section & operator=(const Handle_IGESDimen_Section &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Section & operator=(const IGESDimen_Section *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_Section const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_Section {
	IGESDimen_Section* GetObject() {
	return (IGESDimen_Section*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_Section::~Handle_IGESDimen_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_Section {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_OrdinateDimension;
class Handle_IGESDimen_OrdinateDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension(const Handle_IGESDimen_OrdinateDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension(const IGESDimen_OrdinateDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension & operator=(const Handle_IGESDimen_OrdinateDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_OrdinateDimension & operator=(const IGESDimen_OrdinateDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_OrdinateDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_OrdinateDimension {
	IGESDimen_OrdinateDimension* GetObject() {
	return (IGESDimen_OrdinateDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_OrdinateDimension::~Handle_IGESDimen_OrdinateDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_OrdinateDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_ReadWriteModule;
class Handle_IGESDimen_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule(const Handle_IGESDimen_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule(const IGESDimen_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule & operator=(const Handle_IGESDimen_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_ReadWriteModule & operator=(const IGESDimen_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_ReadWriteModule {
	IGESDimen_ReadWriteModule* GetObject() {
	return (IGESDimen_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_ReadWriteModule::~Handle_IGESDimen_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_Protocol;
class Handle_IGESDimen_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol();
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol(const Handle_IGESDimen_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol(const IGESDimen_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol & operator=(const Handle_IGESDimen_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_Protocol & operator=(const IGESDimen_Protocol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_Protocol {
	IGESDimen_Protocol* GetObject() {
	return (IGESDimen_Protocol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_Protocol::~Handle_IGESDimen_Protocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_Protocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_FlagNote;
class Handle_IGESDimen_FlagNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote(const Handle_IGESDimen_FlagNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote(const IGESDimen_FlagNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote & operator=(const Handle_IGESDimen_FlagNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_FlagNote & operator=(const IGESDimen_FlagNote *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_FlagNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_FlagNote {
	IGESDimen_FlagNote* GetObject() {
	return (IGESDimen_FlagNote*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_FlagNote::~Handle_IGESDimen_FlagNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_FlagNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_DimensionUnits;
class Handle_IGESDimen_DimensionUnits : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits(const Handle_IGESDimen_DimensionUnits &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits(const IGESDimen_DimensionUnits *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits & operator=(const Handle_IGESDimen_DimensionUnits &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionUnits & operator=(const IGESDimen_DimensionUnits *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_DimensionUnits const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionUnits {
	IGESDimen_DimensionUnits* GetObject() {
	return (IGESDimen_DimensionUnits*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_DimensionUnits::~Handle_IGESDimen_DimensionUnits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_DimensionUnits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_AngularDimension;
class Handle_IGESDimen_AngularDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension(const Handle_IGESDimen_AngularDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension(const IGESDimen_AngularDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension & operator=(const Handle_IGESDimen_AngularDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_AngularDimension & operator=(const IGESDimen_AngularDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_AngularDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_AngularDimension {
	IGESDimen_AngularDimension* GetObject() {
	return (IGESDimen_AngularDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_AngularDimension::~Handle_IGESDimen_AngularDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_AngularDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_NewDimensionedGeometry;
class Handle_IGESDimen_NewDimensionedGeometry : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry(const Handle_IGESDimen_NewDimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry(const IGESDimen_NewDimensionedGeometry *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry & operator=(const Handle_IGESDimen_NewDimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewDimensionedGeometry & operator=(const IGESDimen_NewDimensionedGeometry *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_NewDimensionedGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_NewDimensionedGeometry {
	IGESDimen_NewDimensionedGeometry* GetObject() {
	return (IGESDimen_NewDimensionedGeometry*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_NewDimensionedGeometry::~Handle_IGESDimen_NewDimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_NewDimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_HArray1OfLeaderArrow;
class Handle_IGESDimen_HArray1OfLeaderArrow : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow();
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow(const Handle_IGESDimen_HArray1OfLeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow(const IGESDimen_HArray1OfLeaderArrow *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow & operator=(const Handle_IGESDimen_HArray1OfLeaderArrow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_HArray1OfLeaderArrow & operator=(const IGESDimen_HArray1OfLeaderArrow *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_HArray1OfLeaderArrow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_HArray1OfLeaderArrow {
	IGESDimen_HArray1OfLeaderArrow* GetObject() {
	return (IGESDimen_HArray1OfLeaderArrow*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_HArray1OfLeaderArrow::~Handle_IGESDimen_HArray1OfLeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_HArray1OfLeaderArrow {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_DimensionedGeometry;
class Handle_IGESDimen_DimensionedGeometry : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry();
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry(const Handle_IGESDimen_DimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry(const IGESDimen_DimensionedGeometry *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry & operator=(const Handle_IGESDimen_DimensionedGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_DimensionedGeometry & operator=(const IGESDimen_DimensionedGeometry *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_DimensionedGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_DimensionedGeometry {
	IGESDimen_DimensionedGeometry* GetObject() {
	return (IGESDimen_DimensionedGeometry*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_DimensionedGeometry::~Handle_IGESDimen_DimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_DimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_PointDimension;
class Handle_IGESDimen_PointDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension(const Handle_IGESDimen_PointDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension(const IGESDimen_PointDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension & operator=(const Handle_IGESDimen_PointDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_PointDimension & operator=(const IGESDimen_PointDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_PointDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_PointDimension {
	IGESDimen_PointDimension* GetObject() {
	return (IGESDimen_PointDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_PointDimension::~Handle_IGESDimen_PointDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_PointDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_NewGeneralNote;
class Handle_IGESDimen_NewGeneralNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote(const Handle_IGESDimen_NewGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote(const IGESDimen_NewGeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote & operator=(const Handle_IGESDimen_NewGeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_NewGeneralNote & operator=(const IGESDimen_NewGeneralNote *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_NewGeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_NewGeneralNote {
	IGESDimen_NewGeneralNote* GetObject() {
	return (IGESDimen_NewGeneralNote*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_NewGeneralNote::~Handle_IGESDimen_NewGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_NewGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_GeneralNote;
class Handle_IGESDimen_GeneralNote : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote();
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote(const Handle_IGESDimen_GeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote(const IGESDimen_GeneralNote *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote & operator=(const Handle_IGESDimen_GeneralNote &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote & operator=(const IGESDimen_GeneralNote *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_GeneralNote const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_GeneralNote {
	IGESDimen_GeneralNote* GetObject() {
	return (IGESDimen_GeneralNote*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_GeneralNote::~Handle_IGESDimen_GeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_GeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_LinearDimension;
class Handle_IGESDimen_LinearDimension : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension();
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension(const Handle_IGESDimen_LinearDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension(const IGESDimen_LinearDimension *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension & operator=(const Handle_IGESDimen_LinearDimension &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_LinearDimension & operator=(const IGESDimen_LinearDimension *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_LinearDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_LinearDimension {
	IGESDimen_LinearDimension* GetObject() {
	return (IGESDimen_LinearDimension*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_LinearDimension::~Handle_IGESDimen_LinearDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_LinearDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_SpecificModule;
class Handle_IGESDimen_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule(const Handle_IGESDimen_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule(const IGESDimen_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule & operator=(const Handle_IGESDimen_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_SpecificModule & operator=(const IGESDimen_SpecificModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_SpecificModule {
	IGESDimen_SpecificModule* GetObject() {
	return (IGESDimen_SpecificModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_SpecificModule::~Handle_IGESDimen_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESDimen_CenterLine;
class Handle_IGESDimen_CenterLine : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine();
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine(const Handle_IGESDimen_CenterLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine(const IGESDimen_CenterLine *anItem);
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine & operator=(const Handle_IGESDimen_CenterLine &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDimen_CenterLine & operator=(const IGESDimen_CenterLine *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESDimen_CenterLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDimen_CenterLine {
	IGESDimen_CenterLine* GetObject() {
	return (IGESDimen_CenterLine*)$self->Access();
	}
};
%feature("shadow") Handle_IGESDimen_CenterLine::~Handle_IGESDimen_CenterLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESDimen_CenterLine {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_CenterLine {
	Handle_IGESDimen_CenterLine GetHandle() {
	return *(Handle_IGESDimen_CenterLine*) &$self;
	}
};
%extend IGESDimen_CenterLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_CenterLine::~IGESDimen_CenterLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_CenterLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolDimensionTolerance;
class IGESDimen_ToolDimensionTolerance {
	public:
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
%feature("shadow") IGESDimen_ToolDimensionTolerance::~IGESDimen_ToolDimensionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolDimensionTolerance {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_HArray1OfLeaderArrow {
	Handle_IGESDimen_HArray1OfLeaderArrow GetHandle() {
	return *(Handle_IGESDimen_HArray1OfLeaderArrow*) &$self;
	}
};
%extend IGESDimen_HArray1OfLeaderArrow {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_HArray1OfLeaderArrow::~IGESDimen_HArray1OfLeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_HArray1OfLeaderArrow {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_LeaderArrow {
	Handle_IGESDimen_LeaderArrow GetHandle() {
	return *(Handle_IGESDimen_LeaderArrow*) &$self;
	}
};
%extend IGESDimen_LeaderArrow {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_LeaderArrow::~IGESDimen_LeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_LeaderArrow {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_ReadWriteModule {
	Handle_IGESDimen_ReadWriteModule GetHandle() {
	return *(Handle_IGESDimen_ReadWriteModule*) &$self;
	}
};
%extend IGESDimen_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_ReadWriteModule::~IGESDimen_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_GeneralSymbol {
	Handle_IGESDimen_GeneralSymbol GetHandle() {
	return *(Handle_IGESDimen_GeneralSymbol*) &$self;
	}
};
%extend IGESDimen_GeneralSymbol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_GeneralSymbol::~IGESDimen_GeneralSymbol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_GeneralSymbol {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_DimensionedGeometry {
	Handle_IGESDimen_DimensionedGeometry GetHandle() {
	return *(Handle_IGESDimen_DimensionedGeometry*) &$self;
	}
};
%extend IGESDimen_DimensionedGeometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_DimensionedGeometry::~IGESDimen_DimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_DimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolSection;
class IGESDimen_ToolSection {
	public:
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
%feature("shadow") IGESDimen_ToolSection::~IGESDimen_ToolSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolSection {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_WitnessLine {
	Handle_IGESDimen_WitnessLine GetHandle() {
	return *(Handle_IGESDimen_WitnessLine*) &$self;
	}
};
%extend IGESDimen_WitnessLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_WitnessLine::~IGESDimen_WitnessLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_WitnessLine {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_PointDimension {
	Handle_IGESDimen_PointDimension GetHandle() {
	return *(Handle_IGESDimen_PointDimension*) &$self;
	}
};
%extend IGESDimen_PointDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_PointDimension::~IGESDimen_PointDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_PointDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolGeneralNote;
class IGESDimen_ToolGeneralNote {
	public:
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
%feature("shadow") IGESDimen_ToolGeneralNote::~IGESDimen_ToolGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_DimensionDisplayData {
	Handle_IGESDimen_DimensionDisplayData GetHandle() {
	return *(Handle_IGESDimen_DimensionDisplayData*) &$self;
	}
};
%extend IGESDimen_DimensionDisplayData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_DimensionDisplayData::~IGESDimen_DimensionDisplayData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_DimensionDisplayData {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_GeneralModule {
	Handle_IGESDimen_GeneralModule GetHandle() {
	return *(Handle_IGESDimen_GeneralModule*) &$self;
	}
};
%extend IGESDimen_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_GeneralModule::~IGESDimen_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_GeneralModule {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_NewGeneralNote {
	Handle_IGESDimen_NewGeneralNote GetHandle() {
	return *(Handle_IGESDimen_NewGeneralNote*) &$self;
	}
};
%extend IGESDimen_NewGeneralNote {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_NewGeneralNote::~IGESDimen_NewGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_NewGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolRadiusDimension;
class IGESDimen_ToolRadiusDimension {
	public:
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
%feature("shadow") IGESDimen_ToolRadiusDimension::~IGESDimen_ToolRadiusDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolRadiusDimension {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_SpecificModule {
	Handle_IGESDimen_SpecificModule GetHandle() {
	return *(Handle_IGESDimen_SpecificModule*) &$self;
	}
};
%extend IGESDimen_SpecificModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_SpecificModule::~IGESDimen_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolBasicDimension;
class IGESDimen_ToolBasicDimension {
	public:
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
%feature("shadow") IGESDimen_ToolBasicDimension::~IGESDimen_ToolBasicDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolBasicDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolCurveDimension;
class IGESDimen_ToolCurveDimension {
	public:
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
%feature("shadow") IGESDimen_ToolCurveDimension::~IGESDimen_ToolCurveDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolCurveDimension {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_SectionedArea {
	Handle_IGESDimen_SectionedArea GetHandle() {
	return *(Handle_IGESDimen_SectionedArea*) &$self;
	}
};
%extend IGESDimen_SectionedArea {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_SectionedArea::~IGESDimen_SectionedArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_SectionedArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolGeneralLabel;
class IGESDimen_ToolGeneralLabel {
	public:
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
%feature("shadow") IGESDimen_ToolGeneralLabel::~IGESDimen_ToolGeneralLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolGeneralLabel {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_FlagNote {
	Handle_IGESDimen_FlagNote GetHandle() {
	return *(Handle_IGESDimen_FlagNote*) &$self;
	}
};
%extend IGESDimen_FlagNote {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_FlagNote::~IGESDimen_FlagNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_FlagNote {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_DiameterDimension {
	Handle_IGESDimen_DiameterDimension GetHandle() {
	return *(Handle_IGESDimen_DiameterDimension*) &$self;
	}
};
%extend IGESDimen_DiameterDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_DiameterDimension::~IGESDimen_DiameterDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_DiameterDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolWitnessLine;
class IGESDimen_ToolWitnessLine {
	public:
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
%feature("shadow") IGESDimen_ToolWitnessLine::~IGESDimen_ToolWitnessLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolWitnessLine {
	void _kill_pointed() {
		delete $self;
	}
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
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESDimen_Array1OfLeaderArrow & Assign(const IGESDimen_Array1OfLeaderArrow &Other);
		%feature("autodoc", "1");
		const IGESDimen_Array1OfLeaderArrow & operator=(const IGESDimen_Array1OfLeaderArrow &Other);
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
%feature("shadow") IGESDimen_Array1OfLeaderArrow::~IGESDimen_Array1OfLeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_Array1OfLeaderArrow {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_Section {
	Handle_IGESDimen_Section GetHandle() {
	return *(Handle_IGESDimen_Section*) &$self;
	}
};
%extend IGESDimen_Section {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_Section::~IGESDimen_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_Section {
	void _kill_pointed() {
		delete $self;
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
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESDimen_Array1OfGeneralNote & Assign(const IGESDimen_Array1OfGeneralNote &Other);
		%feature("autodoc", "1");
		const IGESDimen_Array1OfGeneralNote & operator=(const IGESDimen_Array1OfGeneralNote &Other);
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
%feature("shadow") IGESDimen_Array1OfGeneralNote::~IGESDimen_Array1OfGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_Array1OfGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_HArray1OfGeneralNote {
	Handle_IGESDimen_HArray1OfGeneralNote GetHandle() {
	return *(Handle_IGESDimen_HArray1OfGeneralNote*) &$self;
	}
};
%extend IGESDimen_HArray1OfGeneralNote {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_HArray1OfGeneralNote::~IGESDimen_HArray1OfGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_HArray1OfGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolDiameterDimension;
class IGESDimen_ToolDiameterDimension {
	public:
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
%feature("shadow") IGESDimen_ToolDiameterDimension::~IGESDimen_ToolDiameterDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolDiameterDimension {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_LinearDimension {
	Handle_IGESDimen_LinearDimension GetHandle() {
	return *(Handle_IGESDimen_LinearDimension*) &$self;
	}
};
%extend IGESDimen_LinearDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_LinearDimension::~IGESDimen_LinearDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_LinearDimension {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_GeneralNote {
	Handle_IGESDimen_GeneralNote GetHandle() {
	return *(Handle_IGESDimen_GeneralNote*) &$self;
	}
};
%extend IGESDimen_GeneralNote {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_GeneralNote::~IGESDimen_GeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_GeneralNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolCenterLine;
class IGESDimen_ToolCenterLine {
	public:
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
%feature("shadow") IGESDimen_ToolCenterLine::~IGESDimen_ToolCenterLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolCenterLine {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_CurveDimension {
	Handle_IGESDimen_CurveDimension GetHandle() {
	return *(Handle_IGESDimen_CurveDimension*) &$self;
	}
};
%extend IGESDimen_CurveDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_CurveDimension::~IGESDimen_CurveDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_CurveDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolFlagNote;
class IGESDimen_ToolFlagNote {
	public:
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
%feature("shadow") IGESDimen_ToolFlagNote::~IGESDimen_ToolFlagNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolFlagNote {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolNewDimensionedGeometry;
class IGESDimen_ToolNewDimensionedGeometry {
	public:
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
%feature("shadow") IGESDimen_ToolNewDimensionedGeometry::~IGESDimen_ToolNewDimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolNewDimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolDimensionUnits;
class IGESDimen_ToolDimensionUnits {
	public:
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
%feature("shadow") IGESDimen_ToolDimensionUnits::~IGESDimen_ToolDimensionUnits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolDimensionUnits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolOrdinateDimension;
class IGESDimen_ToolOrdinateDimension {
	public:
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
%feature("shadow") IGESDimen_ToolOrdinateDimension::~IGESDimen_ToolOrdinateDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolOrdinateDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolDimensionedGeometry;
class IGESDimen_ToolDimensionedGeometry {
	public:
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
%feature("shadow") IGESDimen_ToolDimensionedGeometry::~IGESDimen_ToolDimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolDimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolLinearDimension;
class IGESDimen_ToolLinearDimension {
	public:
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
%feature("shadow") IGESDimen_ToolLinearDimension::~IGESDimen_ToolLinearDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolLinearDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolAngularDimension;
class IGESDimen_ToolAngularDimension {
	public:
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
%feature("shadow") IGESDimen_ToolAngularDimension::~IGESDimen_ToolAngularDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolAngularDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen;
class IGESDimen {
	public:
		%feature("autodoc", "1");
		IGESDimen();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		Handle_IGESDimen_Protocol Protocol();

};
%feature("shadow") IGESDimen::~IGESDimen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_AngularDimension {
	Handle_IGESDimen_AngularDimension GetHandle() {
	return *(Handle_IGESDimen_AngularDimension*) &$self;
	}
};
%extend IGESDimen_AngularDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_AngularDimension::~IGESDimen_AngularDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_AngularDimension {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_OrdinateDimension {
	Handle_IGESDimen_OrdinateDimension GetHandle() {
	return *(Handle_IGESDimen_OrdinateDimension*) &$self;
	}
};
%extend IGESDimen_OrdinateDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_OrdinateDimension::~IGESDimen_OrdinateDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_OrdinateDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolSectionedArea;
class IGESDimen_ToolSectionedArea {
	public:
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
%feature("shadow") IGESDimen_ToolSectionedArea::~IGESDimen_ToolSectionedArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolSectionedArea {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_GeneralLabel {
	Handle_IGESDimen_GeneralLabel GetHandle() {
	return *(Handle_IGESDimen_GeneralLabel*) &$self;
	}
};
%extend IGESDimen_GeneralLabel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_GeneralLabel::~IGESDimen_GeneralLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_GeneralLabel {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_BasicDimension {
	Handle_IGESDimen_BasicDimension GetHandle() {
	return *(Handle_IGESDimen_BasicDimension*) &$self;
	}
};
%extend IGESDimen_BasicDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_BasicDimension::~IGESDimen_BasicDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_BasicDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolLeaderArrow;
class IGESDimen_ToolLeaderArrow {
	public:
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
%feature("shadow") IGESDimen_ToolLeaderArrow::~IGESDimen_ToolLeaderArrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolLeaderArrow {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_DimensionTolerance {
	Handle_IGESDimen_DimensionTolerance GetHandle() {
	return *(Handle_IGESDimen_DimensionTolerance*) &$self;
	}
};
%extend IGESDimen_DimensionTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_DimensionTolerance::~IGESDimen_DimensionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_DimensionTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolGeneralSymbol;
class IGESDimen_ToolGeneralSymbol {
	public:
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
%feature("shadow") IGESDimen_ToolGeneralSymbol::~IGESDimen_ToolGeneralSymbol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolGeneralSymbol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolPointDimension;
class IGESDimen_ToolPointDimension {
	public:
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
%feature("shadow") IGESDimen_ToolPointDimension::~IGESDimen_ToolPointDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolPointDimension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolNewGeneralNote;
class IGESDimen_ToolNewGeneralNote {
	public:
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
%feature("shadow") IGESDimen_ToolNewGeneralNote::~IGESDimen_ToolNewGeneralNote %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolNewGeneralNote {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_DimensionUnits {
	Handle_IGESDimen_DimensionUnits GetHandle() {
	return *(Handle_IGESDimen_DimensionUnits*) &$self;
	}
};
%extend IGESDimen_DimensionUnits {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_DimensionUnits::~IGESDimen_DimensionUnits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_DimensionUnits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESDimen_ToolDimensionDisplayData;
class IGESDimen_ToolDimensionDisplayData {
	public:
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
%feature("shadow") IGESDimen_ToolDimensionDisplayData::~IGESDimen_ToolDimensionDisplayData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_ToolDimensionDisplayData {
	void _kill_pointed() {
		delete $self;
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

};
%extend IGESDimen_RadiusDimension {
	Handle_IGESDimen_RadiusDimension GetHandle() {
	return *(Handle_IGESDimen_RadiusDimension*) &$self;
	}
};
%extend IGESDimen_RadiusDimension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_RadiusDimension::~IGESDimen_RadiusDimension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_RadiusDimension {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend IGESDimen_NewDimensionedGeometry {
	Handle_IGESDimen_NewDimensionedGeometry GetHandle() {
	return *(Handle_IGESDimen_NewDimensionedGeometry*) &$self;
	}
};
%extend IGESDimen_NewDimensionedGeometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESDimen_NewDimensionedGeometry::~IGESDimen_NewDimensionedGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESDimen_NewDimensionedGeometry {
	void _kill_pointed() {
		delete $self;
	}
};

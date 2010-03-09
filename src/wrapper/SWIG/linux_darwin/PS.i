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
%module PS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include PS_dependencies.i


%include PS_headers.i




%nodefaultctor Handle_PS_Driver;
class Handle_PS_Driver : public Handle_PlotMgt_PlotterDriver {
	public:
		%feature("autodoc", "1");
		Handle_PS_Driver();
		%feature("autodoc", "1");
		Handle_PS_Driver(const Handle_PS_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_PS_Driver(const PS_Driver *anItem);
		%feature("autodoc", "1");
		Handle_PS_Driver & operator=(const Handle_PS_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_PS_Driver & operator=(const PS_Driver *anItem);
		%feature("autodoc", "1");
		Handle_PS_Driver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PS_Driver {
	PS_Driver* GetObject() {
	return (PS_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_PS_Driver::~Handle_PS_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PS_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PS_Driver;
class PS_Driver : public PlotMgt_PlotterDriver {
	public:
		%feature("autodoc", "1");
		PS_Driver(const char * aName, const Quantity_Length aDX, const Quantity_Length aDY, const Aspect_TypeOfColorSpace aTypeOfColorSpace=Aspect_TOCS_RGB, const Aspect_FormatOfSheetPaper aSheetFormat=Aspect_FOSP_A4);
		%feature("autodoc", "1");
		PS_Driver(const Handle_PlotMgt_Plotter &aPlotter, const char * aName, const Quantity_Length aPaperX, const Quantity_Length aPaperY, const Aspect_TypeOfColorSpace aTypeOfColorSpace=Aspect_TOCS_RGB);
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		virtual		void EndDraw(const Standard_Boolean dontFlush=0);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant, const Quantity_Factor aHScale, const Quantity_Factor aWScale, const Standard_Boolean isUnderlined=0);
		%feature("autodoc","SizeOfImageFile(Standard_CString anImageFile) -> [Standard_Integer, Standard_Integer]");

		virtual		Standard_Boolean SizeOfImageFile(const char * anImageFile, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PS_Driver {
	Handle_PS_Driver GetHandle() {
	return *(Handle_PS_Driver*) &$self;
	}
};
%extend PS_Driver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PS_Driver::~PS_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PS_Driver {
	void _kill_pointed() {
		delete $self;
	}
};

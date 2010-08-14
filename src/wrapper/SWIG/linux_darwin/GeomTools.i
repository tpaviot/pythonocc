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
%module GeomTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include GeomTools_dependencies.i


%include GeomTools_headers.i




%nodefaultctor Handle_GeomTools_UndefinedTypeHandler;
class Handle_GeomTools_UndefinedTypeHandler : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler();
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler(const Handle_GeomTools_UndefinedTypeHandler &aHandle);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler(const GeomTools_UndefinedTypeHandler *anItem);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler & operator=(const Handle_GeomTools_UndefinedTypeHandler &aHandle);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler & operator=(const GeomTools_UndefinedTypeHandler *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomTools_UndefinedTypeHandler const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomTools_UndefinedTypeHandler {
	GeomTools_UndefinedTypeHandler* GetObject() {
	return (GeomTools_UndefinedTypeHandler*)$self->Access();
	}
};
%feature("shadow") Handle_GeomTools_UndefinedTypeHandler::~Handle_GeomTools_UndefinedTypeHandler %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomTools_UndefinedTypeHandler {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomTools_Curve2dSet;
class GeomTools_Curve2dSet {
	public:
		%feature("autodoc", "1");
		GeomTools_Curve2dSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom2d_Curve &C) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		static		void PrintCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		static		std::istream & ReadCurve2d(std::istream & IS, Handle_Geom2d_Curve & C);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};
%feature("shadow") GeomTools_Curve2dSet::~GeomTools_Curve2dSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomTools_Curve2dSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomTools_CurveSet;
class GeomTools_CurveSet {
	public:
		%feature("autodoc", "1");
		GeomTools_CurveSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Curve &C) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		static		void PrintCurve(const Handle_Geom_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		static		std::istream & ReadCurve(std::istream & IS, Handle_Geom_Curve & C);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};
%feature("shadow") GeomTools_CurveSet::~GeomTools_CurveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomTools_CurveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomTools;
class GeomTools {
	public:
		%feature("autodoc", "1");
		GeomTools();
		%feature("autodoc", "1");
		static		void Dump(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Write(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Read(Handle_Geom_Surface & S, std::istream & IS);
		%feature("autodoc", "1");
		static		void Dump(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Write(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Read(Handle_Geom_Curve & C, std::istream & IS);
		%feature("autodoc", "1");
		static		void Dump(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Write(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		static		void Read(Handle_Geom2d_Curve & C, std::istream & IS);
		%feature("autodoc", "1");
		static		void SetUndefinedTypeHandler(const Handle_GeomTools_UndefinedTypeHandler &aHandler);
		%feature("autodoc", "1");
		static		Handle_GeomTools_UndefinedTypeHandler GetUndefinedTypeHandler();

};
%feature("shadow") GeomTools::~GeomTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomTools_SurfaceSet;
class GeomTools_SurfaceSet {
	public:
		%feature("autodoc", "1");
		GeomTools_SurfaceSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Surface &S) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		static		void PrintSurface(const Handle_Geom_Surface &S, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		static		std::istream & ReadSurface(std::istream & IS, Handle_Geom_Surface & S);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};
%feature("shadow") GeomTools_SurfaceSet::~GeomTools_SurfaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomTools_SurfaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomTools_UndefinedTypeHandler;
class GeomTools_UndefinedTypeHandler : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomTools_UndefinedTypeHandler();
		%feature("autodoc", "1");
		virtual		void PrintCurve(const Handle_Geom_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadCurve(const Standard_Integer ctype, std::istream & IS, Handle_Geom_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void PrintCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadCurve2d(const Standard_Integer ctype, std::istream & IS, Handle_Geom2d_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void PrintSurface(const Handle_Geom_Surface &S, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadSurface(const Standard_Integer ctype, std::istream & IS, Handle_Geom_Surface & S) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomTools_UndefinedTypeHandler {
	Handle_GeomTools_UndefinedTypeHandler GetHandle() {
	return *(Handle_GeomTools_UndefinedTypeHandler*) &$self;
	}
};
%extend GeomTools_UndefinedTypeHandler {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomTools_UndefinedTypeHandler::~GeomTools_UndefinedTypeHandler %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomTools_UndefinedTypeHandler {
	void _kill_pointed() {
		delete $self;
	}
};

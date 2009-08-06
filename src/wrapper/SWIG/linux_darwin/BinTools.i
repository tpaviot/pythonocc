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
%module BinTools

%include BinTools_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinTools_dependencies.i


%include BinTools_headers.i




%nodefaultctor BinTools_Curve2dSet;
class BinTools_Curve2dSet {
	public:
		%feature("autodoc", "1");
		BinTools_Curve2dSet();
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
		void WriteCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadCurve2d(std::istream & IS, Handle_Geom2d_Curve & C);

};
%extend BinTools_Curve2dSet {
	~BinTools_Curve2dSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools_Curve2dSet\n");}
	}
};


%nodefaultctor BinTools_LocationSet;
class BinTools_LocationSet {
	public:
		%feature("autodoc", "1");
		BinTools_LocationSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopLoc_Location &L);
		%feature("autodoc", "1");
		const TopLoc_Location & Location(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		Standard_Integer NbLocations() const;
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

};
%extend BinTools_LocationSet {
	~BinTools_LocationSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools_LocationSet\n");}
	}
};


%nodefaultctor BinTools;
class BinTools {
	public:
		%feature("autodoc", "1");
		BinTools();
		%feature("autodoc", "1");
		Standard_OStream & PutReal(Standard_OStream & OS, const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutInteger(Standard_OStream & OS, const Standard_Integer theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutBool(Standard_OStream & OS, const Standard_Boolean theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutExtChar(Standard_OStream & OS, const Standard_ExtCharacter theValue);
		%feature("autodoc","GetReal()->Standard_Real");
		std::istream & GetReal(std::istream & IS, Standard_Real &OutValue);
		%feature("autodoc","GetInteger()->Standard_Integer");
		std::istream & GetInteger(std::istream & IS, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		std::istream & GetBool(std::istream & IS, Standard_Boolean & theValue);
		%feature("autodoc", "1");
		std::istream & GetExtChar(std::istream & IS, Standard_ExtCharacter & theValue);

};
%extend BinTools {
	~BinTools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools\n");}
	}
};


%nodefaultctor BinTools_ShapeSet;
class BinTools_ShapeSet {
	public:
		%feature("autodoc", "1");
		BinTools_ShapeSet(const Standard_Boolean isWithTriangles=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetFormatNb(const Standard_Integer theFormatNb);
		%feature("autodoc", "1");
		Standard_Integer FormatNb() const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const BinTools_LocationSet & Locations() const;
		%feature("autodoc", "1");
		BinTools_LocationSet & ChangeLocations();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
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
		virtual		void Write(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteGeometryToString() {
			std::stringstream s;
			self->WriteGeometry(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadGeometryFromString(std::string src) {
			std::stringstream s(src);
			self->ReadGeometry(s);}
		};
		%feature("autodoc", "1");
		virtual		void Read(TopoDS_Shape & S, std::istream & IS, const Standard_Integer NbShapes) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void ReadGeometry(const TopAbs_ShapeEnum T, std::istream & IS, TopoDS_Shape & S);
		%feature("autodoc", "1");
		virtual		void AddGeometry(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadPolygon3DFromString(std::string src) {
			std::stringstream s(src);
			self->ReadPolygon3D(s);}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WritePolygon3DToString() {
			std::stringstream s;
			self->WritePolygon3D(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadTriangulationFromString(std::string src) {
			std::stringstream s(src);
			self->ReadTriangulation(s);}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteTriangulationToString() {
			std::stringstream s;
			self->WriteTriangulation(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadPolygonOnTriangulationFromString(std::string src) {
			std::stringstream s(src);
			self->ReadPolygonOnTriangulation(s);}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WritePolygonOnTriangulationToString() {
			std::stringstream s;
			self->WritePolygonOnTriangulation(s);
			return s.str();}
		};

};
%extend BinTools_ShapeSet {
	~BinTools_ShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools_ShapeSet\n");}
	}
};


%nodefaultctor BinTools_SurfaceSet;
class BinTools_SurfaceSet {
	public:
		%feature("autodoc", "1");
		BinTools_SurfaceSet();
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
		void WriteSurface(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadSurface(std::istream & IS, Handle_Geom_Surface & S);

};
%extend BinTools_SurfaceSet {
	~BinTools_SurfaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools_SurfaceSet\n");}
	}
};


%nodefaultctor BinTools_CurveSet;
class BinTools_CurveSet {
	public:
		%feature("autodoc", "1");
		BinTools_CurveSet();
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
		void WriteCurve(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadCurve(std::istream & IS, Handle_Geom_Curve & C);

};
%extend BinTools_CurveSet {
	~BinTools_CurveSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinTools_CurveSet\n");}
	}
};

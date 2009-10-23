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
%module GccEnt

%include GccEnt_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include GccEnt_dependencies.i


%include GccEnt_headers.i


enum GccEnt_Position {
	GccEnt_unqualified,
	GccEnt_enclosing,
	GccEnt_enclosed,
	GccEnt_outside,
	GccEnt_noqualifier,
	};



%nodefaultctor Handle_GccEnt_BadQualifier;
class Handle_GccEnt_BadQualifier : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier();
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier(const Handle_GccEnt_BadQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier(const GccEnt_BadQualifier *anItem);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier & operator=(const Handle_GccEnt_BadQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier & operator=(const GccEnt_BadQualifier *anItem);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccEnt_BadQualifier {
	GccEnt_BadQualifier* GetObject() {
	return (GccEnt_BadQualifier*)$self->Access();
	}
};
%feature("shadow") Handle_GccEnt_BadQualifier::~Handle_GccEnt_BadQualifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GccEnt_QualifiedLin;
class GccEnt_QualifiedLin {
	public:
		%feature("autodoc", "1");
		GccEnt_QualifiedLin(const gp_Lin2d &Qualified, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		gp_Lin2d Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;
		%feature("autodoc", "1");
		GccEnt_QualifiedLin();
		%feature("autodoc", "1");
		GccEnt_Position _CSFDB_GetGccEnt_QualifiedLinTheQualifier() const;
		%feature("autodoc", "1");
		void _CSFDB_SetGccEnt_QualifiedLinTheQualifier(const GccEnt_Position p);
		%feature("autodoc", "1");
		const gp_Lin2d & _CSFDB_GetGccEnt_QualifiedLinTheQualified() const;

};
%feature("shadow") GccEnt_QualifiedLin::~GccEnt_QualifiedLin %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GccEnt_Array1OfPosition;
class GccEnt_Array1OfPosition {
	public:
		%feature("autodoc", "1");
		GccEnt_Array1OfPosition(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GccEnt_Array1OfPosition(const GccEnt_Position &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const GccEnt_Position &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GccEnt_Array1OfPosition & Assign(const GccEnt_Array1OfPosition &Other);
		%feature("autodoc", "1");
		const GccEnt_Array1OfPosition & operator=(const GccEnt_Array1OfPosition &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const GccEnt_Position &Value);
		%feature("autodoc", "1");
		const GccEnt_Position & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const GccEnt_Position & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		GccEnt_Position & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		GccEnt_Position & operator()(const Standard_Integer Index);

};
%feature("shadow") GccEnt_Array1OfPosition::~GccEnt_Array1OfPosition %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GccEnt_BadQualifier;
class GccEnt_BadQualifier : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GccEnt_BadQualifier();
		%feature("autodoc", "1");
		GccEnt_BadQualifier(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccEnt_BadQualifier {
	Handle_GccEnt_BadQualifier GetHandle() {
	return *(Handle_GccEnt_BadQualifier*) &$self;
	}
};
%extend GccEnt_BadQualifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccEnt_BadQualifier::~GccEnt_BadQualifier %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GccEnt;
class GccEnt {
	public:
		%feature("autodoc", "1");
		GccEnt();
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Unqualified(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Unqualified(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Enclosing(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Enclosed(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Enclosed(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Outside(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Outside(const gp_Circ2d &Obj);

};
%feature("shadow") GccEnt::~GccEnt %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GccEnt_QualifiedCirc;
class GccEnt_QualifiedCirc {
	public:
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc(const gp_Circ2d &Qualified, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		gp_Circ2d Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc();
		%feature("autodoc", "1");
		const gp_Circ2d & _CSFDB_GetGccEnt_QualifiedCircTheQualified() const;
		%feature("autodoc", "1");
		GccEnt_Position _CSFDB_GetGccEnt_QualifiedCircTheQualifier() const;
		%feature("autodoc", "1");
		void _CSFDB_SetGccEnt_QualifiedCircTheQualifier(const GccEnt_Position p);

};
%feature("shadow") GccEnt_QualifiedCirc::~GccEnt_QualifiedCirc %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}

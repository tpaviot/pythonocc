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
%module GGraphic2d

%include GGraphic2d_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include GGraphic2d_dependencies.i


%include GGraphic2d_headers.i




%nodefaultctor Handle_GGraphic2d_Curve;
class Handle_GGraphic2d_Curve : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve(const Handle_GGraphic2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve(const GGraphic2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve & operator=(const Handle_GGraphic2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve & operator=(const GGraphic2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_Curve {
	GGraphic2d_Curve* GetObject() {
	return (GGraphic2d_Curve*)$self->Access();
	}
};
%feature("shadow") Handle_GGraphic2d_Curve::~Handle_GGraphic2d_Curve %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_GGraphic2d_SetOfCurves;
class Handle_GGraphic2d_SetOfCurves : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves(const Handle_GGraphic2d_SetOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves(const GGraphic2d_SetOfCurves *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves & operator=(const Handle_GGraphic2d_SetOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves & operator=(const GGraphic2d_SetOfCurves *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_SetOfCurves {
	GGraphic2d_SetOfCurves* GetObject() {
	return (GGraphic2d_SetOfCurves*)$self->Access();
	}
};
%feature("shadow") Handle_GGraphic2d_SetOfCurves::~Handle_GGraphic2d_SetOfCurves %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_GGraphic2d_CurveDefinitionError;
class Handle_GGraphic2d_CurveDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError();
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError(const Handle_GGraphic2d_CurveDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError(const GGraphic2d_CurveDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError & operator=(const Handle_GGraphic2d_CurveDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError & operator=(const GGraphic2d_CurveDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_CurveDefinitionError {
	GGraphic2d_CurveDefinitionError* GetObject() {
	return (GGraphic2d_CurveDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_GGraphic2d_CurveDefinitionError::~Handle_GGraphic2d_CurveDefinitionError %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve;
class Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve(const Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve(const GGraphic2d_SequenceNodeOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve & operator=(const Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve & operator=(const GGraphic2d_SequenceNodeOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve {
	GGraphic2d_SequenceNodeOfSequenceOfCurve* GetObject() {
	return (GGraphic2d_SequenceNodeOfSequenceOfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve::~Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GGraphic2d_SequenceNodeOfSequenceOfCurve;
class GGraphic2d_SequenceNodeOfSequenceOfCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SequenceNodeOfSequenceOfCurve(const Handle_Geom2d_Curve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GGraphic2d_SequenceNodeOfSequenceOfCurve {
	Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve GetHandle() {
	return *(Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve*) &$self;
	}
};
%extend GGraphic2d_SequenceNodeOfSequenceOfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GGraphic2d_SequenceNodeOfSequenceOfCurve::~GGraphic2d_SequenceNodeOfSequenceOfCurve %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GGraphic2d_SetOfCurves;
class GGraphic2d_SetOfCurves : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SetOfCurves(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void Add(const Handle_Geom2d_Curve &aCurve);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Values(const Standard_Integer aRank) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GGraphic2d_SetOfCurves {
	Handle_GGraphic2d_SetOfCurves GetHandle() {
	return *(Handle_GGraphic2d_SetOfCurves*) &$self;
	}
};
%extend GGraphic2d_SetOfCurves {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GGraphic2d_SetOfCurves::~GGraphic2d_SetOfCurves %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GGraphic2d_SequenceOfCurve;
class GGraphic2d_SequenceOfCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SequenceOfCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GGraphic2d_SequenceOfCurve & Assign(const GGraphic2d_SequenceOfCurve &Other);
		%feature("autodoc", "1");
		const GGraphic2d_SequenceOfCurve & operator=(const GGraphic2d_SequenceOfCurve &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Append(GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Prepend(GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & First() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GGraphic2d_SequenceOfCurve::~GGraphic2d_SequenceOfCurve %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GGraphic2d_CurveDefinitionError;
class GGraphic2d_CurveDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		GGraphic2d_CurveDefinitionError();
		%feature("autodoc", "1");
		GGraphic2d_CurveDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GGraphic2d_CurveDefinitionError {
	Handle_GGraphic2d_CurveDefinitionError GetHandle() {
	return *(Handle_GGraphic2d_CurveDefinitionError*) &$self;
	}
};
%extend GGraphic2d_CurveDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GGraphic2d_CurveDefinitionError::~GGraphic2d_CurveDefinitionError %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor GGraphic2d_Curve;
class GGraphic2d_Curve : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		GGraphic2d_Curve(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Handle_Geom2d_Curve &aCurve);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve GeomCurve() const;
		%feature("autodoc", "1");
		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GGraphic2d_Curve {
	Handle_GGraphic2d_Curve GetHandle() {
	return *(Handle_GGraphic2d_Curve*) &$self;
	}
};
%extend GGraphic2d_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GGraphic2d_Curve::~GGraphic2d_Curve %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}

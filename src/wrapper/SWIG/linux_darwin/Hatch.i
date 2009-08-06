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
%module Hatch

%include Hatch_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Hatch_dependencies.i


%include Hatch_headers.i


enum Hatch_LineForm {
	Hatch_XLINE,
	Hatch_YLINE,
	Hatch_ANYLINE,
	};



%nodefaultctor Handle_Hatch_SequenceNodeOfSequenceOfLine;
class Handle_Hatch_SequenceNodeOfSequenceOfLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine();
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine(const Handle_Hatch_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine(const Hatch_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine & operator=(const Handle_Hatch_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine & operator=(const Hatch_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Hatch_SequenceNodeOfSequenceOfLine {
	Hatch_SequenceNodeOfSequenceOfLine* GetObject() {
	return (Hatch_SequenceNodeOfSequenceOfLine*)$self->Access();
	}
};
%extend Handle_Hatch_SequenceNodeOfSequenceOfLine {
	~Handle_Hatch_SequenceNodeOfSequenceOfLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Hatch_SequenceNodeOfSequenceOfLine\n");}
	}
};


%nodefaultctor Handle_Hatch_SequenceNodeOfSequenceOfParameter;
class Handle_Hatch_SequenceNodeOfSequenceOfParameter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter();
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter(const Handle_Hatch_SequenceNodeOfSequenceOfParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter(const Hatch_SequenceNodeOfSequenceOfParameter *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter & operator=(const Handle_Hatch_SequenceNodeOfSequenceOfParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter & operator=(const Hatch_SequenceNodeOfSequenceOfParameter *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Hatch_SequenceNodeOfSequenceOfParameter {
	Hatch_SequenceNodeOfSequenceOfParameter* GetObject() {
	return (Hatch_SequenceNodeOfSequenceOfParameter*)$self->Access();
	}
};
%extend Handle_Hatch_SequenceNodeOfSequenceOfParameter {
	~Handle_Hatch_SequenceNodeOfSequenceOfParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Hatch_SequenceNodeOfSequenceOfParameter\n");}
	}
};


%nodefaultctor Hatch_SequenceNodeOfSequenceOfParameter;
class Hatch_SequenceNodeOfSequenceOfParameter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceNodeOfSequenceOfParameter(const Hatch_Parameter &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Hatch_Parameter & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Hatch_SequenceNodeOfSequenceOfParameter {
	Handle_Hatch_SequenceNodeOfSequenceOfParameter GetHandle() {
	return *(Handle_Hatch_SequenceNodeOfSequenceOfParameter*) &$self;
	}
};
%extend Hatch_SequenceNodeOfSequenceOfParameter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Hatch_SequenceNodeOfSequenceOfParameter {
	~Hatch_SequenceNodeOfSequenceOfParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_SequenceNodeOfSequenceOfParameter\n");}
	}
};


%nodefaultctor Hatch_SequenceOfLine;
class Hatch_SequenceOfLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceOfLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Hatch_SequenceOfLine & Assign(const Hatch_SequenceOfLine &Other);
		%feature("autodoc", "1");
		const Hatch_SequenceOfLine & operator=(const Hatch_SequenceOfLine &Other);
		%feature("autodoc", "1");
		void Append(const Hatch_Line &T);
		%feature("autodoc", "1");
		void Append(Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void Prepend(const Hatch_Line &T);
		%feature("autodoc", "1");
		void Prepend(Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Hatch_Line &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Hatch_Line &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Hatch_Line & First() const;
		%feature("autodoc", "1");
		const Hatch_Line & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Hatch_Line & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Hatch_Line & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Hatch_Line &I);
		%feature("autodoc", "1");
		Hatch_Line & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Hatch_Line & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Hatch_SequenceOfLine {
	~Hatch_SequenceOfLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_SequenceOfLine\n");}
	}
};


%nodefaultctor Hatch_Line;
class Hatch_Line {
	public:
		%feature("autodoc", "1");
		Hatch_Line();
		%feature("autodoc", "1");
		Hatch_Line(const gp_Lin2d &L, const Hatch_LineForm T);
		%feature("autodoc", "1");
		void AddIntersection(const Standard_Real Par1, const Standard_Boolean Start, const Standard_Integer Index, const Standard_Real Par2, const Standard_Real theToler);

};
%extend Hatch_Line {
	~Hatch_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_Line\n");}
	}
};


%nodefaultctor Hatch_SequenceOfParameter;
class Hatch_SequenceOfParameter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceOfParameter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Hatch_SequenceOfParameter & Assign(const Hatch_SequenceOfParameter &Other);
		%feature("autodoc", "1");
		const Hatch_SequenceOfParameter & operator=(const Hatch_SequenceOfParameter &Other);
		%feature("autodoc", "1");
		void Append(const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void Append(Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void Prepend(const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void Prepend(Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Hatch_Parameter &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		const Hatch_Parameter & First() const;
		%feature("autodoc", "1");
		const Hatch_Parameter & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		const Hatch_Parameter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Hatch_Parameter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Hatch_Parameter &I);
		%feature("autodoc", "1");
		Hatch_Parameter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Hatch_Parameter & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Hatch_SequenceOfParameter {
	~Hatch_SequenceOfParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_SequenceOfParameter\n");}
	}
};


%nodefaultctor Hatch_Hatcher;
class Hatch_Hatcher {
	public:
		%feature("autodoc", "1");
		Hatch_Hatcher(const Standard_Real Tol, const Standard_Boolean Oriented=1);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void AddLine(const gp_Lin2d &L, const Hatch_LineForm T=Hatch_ANYLINE);
		%feature("autodoc", "1");
		void AddLine(const gp_Dir2d &D, const Standard_Real Dist);
		%feature("autodoc", "1");
		void AddXLine(const Standard_Real X);
		%feature("autodoc", "1");
		void AddYLine(const Standard_Real Y);
		%feature("autodoc", "1");
		void Trim(const gp_Lin2d &L, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		void Trim(const gp_Lin2d &L, const Standard_Real Start, const Standard_Real End, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		void Trim(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const gp_Lin2d & Line(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Hatch_LineForm LineForm(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsXLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsYLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real Coordinate(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real Start(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc","StartIndex(Standard_Integer I, Standard_Integer J)->[Standard_IntegerStandard_Real]");
		void StartIndex(const Standard_Integer I, const Standard_Integer J, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real End(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc","EndIndex(Standard_Integer I, Standard_Integer J)->[Standard_IntegerStandard_Real]");
		void EndIndex(const Standard_Integer I, const Standard_Integer J, Standard_Integer &OutValue, Standard_Real &OutValue) const;

};
%extend Hatch_Hatcher {
	~Hatch_Hatcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_Hatcher\n");}
	}
};


%nodefaultctor Hatch_Parameter;
class Hatch_Parameter {
	public:
		%feature("autodoc", "1");
		Hatch_Parameter();
		%feature("autodoc", "1");
		Hatch_Parameter(const Standard_Real Par1, const Standard_Boolean Start, const Standard_Integer Index=0, const Standard_Real Par2=0);

};
%extend Hatch_Parameter {
	~Hatch_Parameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_Parameter\n");}
	}
};


%nodefaultctor Hatch_SequenceNodeOfSequenceOfLine;
class Hatch_SequenceNodeOfSequenceOfLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceNodeOfSequenceOfLine(const Hatch_Line &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Hatch_Line & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Hatch_SequenceNodeOfSequenceOfLine {
	Handle_Hatch_SequenceNodeOfSequenceOfLine GetHandle() {
	return *(Handle_Hatch_SequenceNodeOfSequenceOfLine*) &$self;
	}
};
%extend Hatch_SequenceNodeOfSequenceOfLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Hatch_SequenceNodeOfSequenceOfLine {
	~Hatch_SequenceNodeOfSequenceOfLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Hatch_SequenceNodeOfSequenceOfLine\n");}
	}
};

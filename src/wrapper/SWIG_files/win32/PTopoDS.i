/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module PTopoDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PTopoDS_renames.i


%include PTopoDS_required_python_modules.i


%include PTopoDS_dependencies.i


%include PTopoDS_headers.i




%nodefaultctor Handle_PTopoDS_TShape;
class Handle_PTopoDS_TShape : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape(const Handle_PTopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape(const PTopoDS_TShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape & operator=(const Handle_PTopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape & operator=(const PTopoDS_TShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TShape DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShape {
	PTopoDS_TShape* GetObject() {
	return (PTopoDS_TShape*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TShape::~Handle_PTopoDS_TShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TSolid;
class Handle_PTopoDS_TSolid : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid(const Handle_PTopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid(const PTopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid & operator=(const Handle_PTopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid & operator=(const PTopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TSolid DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TSolid {
	PTopoDS_TSolid* GetObject() {
	return (PTopoDS_TSolid*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TSolid::~Handle_PTopoDS_TSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TShell;
class Handle_PTopoDS_TShell : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell(const Handle_PTopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell(const PTopoDS_TShell *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell & operator=(const Handle_PTopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell & operator=(const PTopoDS_TShell *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TShell DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShell {
	PTopoDS_TShell* GetObject() {
	return (PTopoDS_TShell*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TShell::~Handle_PTopoDS_TShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TVertex;
class Handle_PTopoDS_TVertex : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex(const Handle_PTopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex(const PTopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex & operator=(const Handle_PTopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex & operator=(const PTopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TVertex DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TVertex {
	PTopoDS_TVertex* GetObject() {
	return (PTopoDS_TVertex*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TVertex::~Handle_PTopoDS_TVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TCompound;
class Handle_PTopoDS_TCompound : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound(const Handle_PTopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound(const PTopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound & operator=(const Handle_PTopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound & operator=(const PTopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TCompound DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompound {
	PTopoDS_TCompound* GetObject() {
	return (PTopoDS_TCompound*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TCompound::~Handle_PTopoDS_TCompound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TCompound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape;
class Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape & operator=(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape & operator=(const PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape* GetObject() {
	return (PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape::~Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TShape1;
class Handle_PTopoDS_TShape1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1(const Handle_PTopoDS_TShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1(const PTopoDS_TShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1 & operator=(const Handle_PTopoDS_TShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1 & operator=(const PTopoDS_TShape1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TShape1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShape1 {
	PTopoDS_TShape1* GetObject() {
	return (PTopoDS_TShape1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TShape1::~Handle_PTopoDS_TShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TShell1;
class Handle_PTopoDS_TShell1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1(const Handle_PTopoDS_TShell1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1(const PTopoDS_TShell1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1 & operator=(const Handle_PTopoDS_TShell1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1 & operator=(const PTopoDS_TShell1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TShell1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShell1 {
	PTopoDS_TShell1* GetObject() {
	return (PTopoDS_TShell1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TShell1::~Handle_PTopoDS_TShell1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TShell1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TEdge1;
class Handle_PTopoDS_TEdge1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1(const Handle_PTopoDS_TEdge1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1(const PTopoDS_TEdge1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1 & operator=(const Handle_PTopoDS_TEdge1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1 & operator=(const PTopoDS_TEdge1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TEdge1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TEdge1 {
	PTopoDS_TEdge1* GetObject() {
	return (PTopoDS_TEdge1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TEdge1::~Handle_PTopoDS_TEdge1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TEdge1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1;
class Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 & operator=(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 & operator=(const PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1* GetObject() {
	return (PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1::~Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TFace1;
class Handle_PTopoDS_TFace1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1(const Handle_PTopoDS_TFace1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1(const PTopoDS_TFace1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1 & operator=(const Handle_PTopoDS_TFace1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1 & operator=(const PTopoDS_TFace1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TFace1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TFace1 {
	PTopoDS_TFace1* GetObject() {
	return (PTopoDS_TFace1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TFace1::~Handle_PTopoDS_TFace1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TFace1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TCompSolid1;
class Handle_PTopoDS_TCompSolid1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1(const Handle_PTopoDS_TCompSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1(const PTopoDS_TCompSolid1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1 & operator=(const Handle_PTopoDS_TCompSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1 & operator=(const PTopoDS_TCompSolid1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TCompSolid1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompSolid1 {
	PTopoDS_TCompSolid1* GetObject() {
	return (PTopoDS_TCompSolid1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TCompSolid1::~Handle_PTopoDS_TCompSolid1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TCompSolid1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TFace;
class Handle_PTopoDS_TFace : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace(const Handle_PTopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace(const PTopoDS_TFace *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace & operator=(const Handle_PTopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace & operator=(const PTopoDS_TFace *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TFace DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TFace {
	PTopoDS_TFace* GetObject() {
	return (PTopoDS_TFace*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TFace::~Handle_PTopoDS_TFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TSolid1;
class Handle_PTopoDS_TSolid1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1(const Handle_PTopoDS_TSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1(const PTopoDS_TSolid1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1 & operator=(const Handle_PTopoDS_TSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1 & operator=(const PTopoDS_TSolid1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TSolid1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TSolid1 {
	PTopoDS_TSolid1* GetObject() {
	return (PTopoDS_TSolid1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TSolid1::~Handle_PTopoDS_TSolid1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TSolid1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TEdge;
class Handle_PTopoDS_TEdge : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge(const Handle_PTopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge(const PTopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge & operator=(const Handle_PTopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge & operator=(const PTopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TEdge DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TEdge {
	PTopoDS_TEdge* GetObject() {
	return (PTopoDS_TEdge*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TEdge::~Handle_PTopoDS_TEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_HShape;
class Handle_PTopoDS_HShape : public Handle_ObjMgt_ExternShareable {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape(const Handle_PTopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape(const PTopoDS_HShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & operator=(const Handle_PTopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & operator=(const PTopoDS_HShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_HShape DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HShape {
	PTopoDS_HShape* GetObject() {
	return (PTopoDS_HShape*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_HShape::~Handle_PTopoDS_HShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_HShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Face;
class Handle_PTopoDS_Face : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Face();
		%feature("autodoc", "1");
		Handle_PTopoDS_Face(const Handle_PTopoDS_Face &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Face(const PTopoDS_Face *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Face & operator=(const Handle_PTopoDS_Face &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Face & operator=(const PTopoDS_Face *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Face DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Face {
	PTopoDS_Face* GetObject() {
	return (PTopoDS_Face*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Face::~Handle_PTopoDS_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TWire;
class Handle_PTopoDS_TWire : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire(const Handle_PTopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire(const PTopoDS_TWire *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire & operator=(const Handle_PTopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire & operator=(const PTopoDS_TWire *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TWire DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TWire {
	PTopoDS_TWire* GetObject() {
	return (PTopoDS_TWire*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TWire::~Handle_PTopoDS_TWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Shell;
class Handle_PTopoDS_Shell : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell();
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell(const Handle_PTopoDS_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell(const PTopoDS_Shell *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell & operator=(const Handle_PTopoDS_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell & operator=(const PTopoDS_Shell *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Shell DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Shell {
	PTopoDS_Shell* GetObject() {
	return (PTopoDS_Shell*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Shell::~Handle_PTopoDS_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Vertex;
class Handle_PTopoDS_Vertex : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex(const Handle_PTopoDS_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex(const PTopoDS_Vertex *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex & operator=(const Handle_PTopoDS_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex & operator=(const PTopoDS_Vertex *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Vertex DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Vertex {
	PTopoDS_Vertex* GetObject() {
	return (PTopoDS_Vertex*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Vertex::~Handle_PTopoDS_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Edge;
class Handle_PTopoDS_Edge : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge();
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge(const Handle_PTopoDS_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge(const PTopoDS_Edge *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge & operator=(const Handle_PTopoDS_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge & operator=(const PTopoDS_Edge *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Edge DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Edge {
	PTopoDS_Edge* GetObject() {
	return (PTopoDS_Edge*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Edge::~Handle_PTopoDS_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Wire;
class Handle_PTopoDS_Wire : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire();
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire(const Handle_PTopoDS_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire(const PTopoDS_Wire *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire & operator=(const Handle_PTopoDS_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire & operator=(const PTopoDS_Wire *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Wire DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Wire {
	PTopoDS_Wire* GetObject() {
	return (PTopoDS_Wire*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Wire::~Handle_PTopoDS_Wire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Wire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_HArray1OfHShape;
class Handle_PTopoDS_HArray1OfHShape : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape(const Handle_PTopoDS_HArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape(const PTopoDS_HArray1OfHShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape & operator=(const Handle_PTopoDS_HArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape & operator=(const PTopoDS_HArray1OfHShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_HArray1OfHShape DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HArray1OfHShape {
	PTopoDS_HArray1OfHShape* GetObject() {
	return (PTopoDS_HArray1OfHShape*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_HArray1OfHShape::~Handle_PTopoDS_HArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_HArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TCompSolid;
class Handle_PTopoDS_TCompSolid : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid(const Handle_PTopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid(const PTopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid & operator=(const Handle_PTopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid & operator=(const PTopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TCompSolid DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompSolid {
	PTopoDS_TCompSolid* GetObject() {
	return (PTopoDS_TCompSolid*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TCompSolid::~Handle_PTopoDS_TCompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TCompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TVertex1;
class Handle_PTopoDS_TVertex1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1(const Handle_PTopoDS_TVertex1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1(const PTopoDS_TVertex1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1 & operator=(const Handle_PTopoDS_TVertex1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1 & operator=(const PTopoDS_TVertex1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TVertex1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TVertex1 {
	PTopoDS_TVertex1* GetObject() {
	return (PTopoDS_TVertex1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TVertex1::~Handle_PTopoDS_TVertex1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TVertex1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Compound;
class Handle_PTopoDS_Compound : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound();
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound(const Handle_PTopoDS_Compound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound(const PTopoDS_Compound *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound & operator=(const Handle_PTopoDS_Compound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound & operator=(const PTopoDS_Compound *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Compound DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Compound {
	PTopoDS_Compound* GetObject() {
	return (PTopoDS_Compound*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Compound::~Handle_PTopoDS_Compound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Compound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_HArray1OfShape1;
class Handle_PTopoDS_HArray1OfShape1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1(const Handle_PTopoDS_HArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1(const PTopoDS_HArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 & operator=(const Handle_PTopoDS_HArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 & operator=(const PTopoDS_HArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_HArray1OfShape1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HArray1OfShape1 {
	PTopoDS_HArray1OfShape1* GetObject() {
	return (PTopoDS_HArray1OfShape1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_HArray1OfShape1::~Handle_PTopoDS_HArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_HArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_Solid;
class Handle_PTopoDS_Solid : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid();
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid(const Handle_PTopoDS_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid(const PTopoDS_Solid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid & operator=(const Handle_PTopoDS_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid & operator=(const PTopoDS_Solid *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_Solid DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Solid {
	PTopoDS_Solid* GetObject() {
	return (PTopoDS_Solid*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_Solid::~Handle_PTopoDS_Solid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_Solid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_CompSolid;
class Handle_PTopoDS_CompSolid : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid(const Handle_PTopoDS_CompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid(const PTopoDS_CompSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid & operator=(const Handle_PTopoDS_CompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid & operator=(const PTopoDS_CompSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_CompSolid DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_CompSolid {
	PTopoDS_CompSolid* GetObject() {
	return (PTopoDS_CompSolid*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_CompSolid::~Handle_PTopoDS_CompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_CompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TCompound1;
class Handle_PTopoDS_TCompound1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1(const Handle_PTopoDS_TCompound1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1(const PTopoDS_TCompound1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1 & operator=(const Handle_PTopoDS_TCompound1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1 & operator=(const PTopoDS_TCompound1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TCompound1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompound1 {
	PTopoDS_TCompound1* GetObject() {
	return (PTopoDS_TCompound1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TCompound1::~Handle_PTopoDS_TCompound1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TCompound1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopoDS_TWire1;
class Handle_PTopoDS_TWire1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1(const Handle_PTopoDS_TWire1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1(const PTopoDS_TWire1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1 & operator=(const Handle_PTopoDS_TWire1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1 & operator=(const PTopoDS_TWire1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopoDS_TWire1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TWire1 {
	PTopoDS_TWire1* GetObject() {
	return (PTopoDS_TWire1*)$self->Access();
	}
};
%feature("shadow") Handle_PTopoDS_TWire1::~Handle_PTopoDS_TWire1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopoDS_TWire1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_HArray1OfShape1;
class PTopoDS_HArray1OfShape1 : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Standard_Integer Low, const Standard_Integer Up, const PTopoDS_Shape1 &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PTopoDS_Shape1 &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		PTopoDS_Shape1 Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfShape1LowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfShape1LowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfShape1UpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfShape1UpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopoDS_FieldOfHArray1OfShape1 & _CSFDB_GetPTopoDS_HArray1OfShape1Data() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_HArray1OfShape1 {
	Handle_PTopoDS_HArray1OfShape1 GetHandle() {
	return *(Handle_PTopoDS_HArray1OfShape1*) &$self;
	}
};
%extend PTopoDS_HArray1OfShape1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_HArray1OfShape1::~PTopoDS_HArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_HArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape;
class PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape _CSFDB_GetPTopoDS_VArrayNodeOfFieldOfHArray1OfHShapemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_VArrayNodeOfFieldOfHArray1OfHShapemyValue(const Handle_PTopoDS_HShape &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape GetHandle() {
	return *(Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape*) &$self;
	}
};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape::~PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TWire;
class PTopoDS_TWire : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TWire();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TWire(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TWire {
	Handle_PTopoDS_TWire GetHandle() {
	return *(Handle_PTopoDS_TWire*) &$self;
	}
};
%extend PTopoDS_TWire {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TWire::~PTopoDS_TWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TShell;
class PTopoDS_TShell : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TShell();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TShell(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TShell {
	Handle_PTopoDS_TShell GetHandle() {
	return *(Handle_PTopoDS_TShell*) &$self;
	}
};
%extend PTopoDS_TShell {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TShell::~PTopoDS_TShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_HShape;
class PTopoDS_HShape : public ObjMgt_ExternShareable {
	public:
		%feature("autodoc", "1");
		PTopoDS_HShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape TShape() const;
		%feature("autodoc", "1");
		void TShape(const Handle_PTopoDS_TShape &T);
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		PTopoDS_HShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape _CSFDB_GetPTopoDS_HShapemyTShape() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HShapemyTShape(const Handle_PTopoDS_TShape &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopoDS_HShapemyLocation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetPTopoDS_HShapemyOrient() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HShapemyOrient(const TopAbs_Orientation p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_HShape {
	Handle_PTopoDS_HShape GetHandle() {
	return *(Handle_PTopoDS_HShape*) &$self;
	}
};
%extend PTopoDS_HShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_HShape::~PTopoDS_HShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_HShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Shell;
class PTopoDS_Shell : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Shell();
		%feature("autodoc", "1");
		PTopoDS_Shell(const Storage_stCONSTclCOM &a);

};
%extend PTopoDS_Shell {
	Handle_PTopoDS_Shell GetHandle() {
	return *(Handle_PTopoDS_Shell*) &$self;
	}
};
%extend PTopoDS_Shell {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Shell::~PTopoDS_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TEdge1;
class PTopoDS_TEdge1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TEdge1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TEdge1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TEdge1 {
	Handle_PTopoDS_TEdge1 GetHandle() {
	return *(Handle_PTopoDS_TEdge1*) &$self;
	}
};
%extend PTopoDS_TEdge1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TEdge1::~PTopoDS_TEdge1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TEdge1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1;
class PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		void SetValue(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopoDS_Shape1 & _CSFDB_GetPTopoDS_VArrayNodeOfFieldOfHArray1OfShape1myValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 GetHandle() {
	return *(Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1*) &$self;
	}
};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1::~PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TCompound1;
class PTopoDS_TCompound1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompound1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompound1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TCompound1 {
	Handle_PTopoDS_TCompound1 GetHandle() {
	return *(Handle_PTopoDS_TCompound1*) &$self;
	}
};
%extend PTopoDS_TCompound1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TCompound1::~PTopoDS_TCompound1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TCompound1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Wire;
class PTopoDS_Wire : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Wire();
		%feature("autodoc", "1");
		PTopoDS_Wire(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Wire {
	Handle_PTopoDS_Wire GetHandle() {
	return *(Handle_PTopoDS_Wire*) &$self;
	}
};
%extend PTopoDS_Wire {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Wire::~PTopoDS_Wire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Wire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TEdge;
class PTopoDS_TEdge : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TEdge(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TEdge();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TEdge {
	Handle_PTopoDS_TEdge GetHandle() {
	return *(Handle_PTopoDS_TEdge*) &$self;
	}
};
%extend PTopoDS_TEdge {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TEdge::~PTopoDS_TEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TShell1;
class PTopoDS_TShell1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TShell1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TShell1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TShell1 {
	Handle_PTopoDS_TShell1 GetHandle() {
	return *(Handle_PTopoDS_TShell1*) &$self;
	}
};
%extend PTopoDS_TShell1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TShell1::~PTopoDS_TShell1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TShell1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Compound;
class PTopoDS_Compound : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Compound();
		%feature("autodoc", "1");
		PTopoDS_Compound(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Compound {
	Handle_PTopoDS_Compound GetHandle() {
	return *(Handle_PTopoDS_Compound*) &$self;
	}
};
%extend PTopoDS_Compound {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Compound::~PTopoDS_Compound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Compound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Edge;
class PTopoDS_Edge : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Edge();
		%feature("autodoc", "1");
		PTopoDS_Edge(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Edge {
	Handle_PTopoDS_Edge GetHandle() {
	return *(Handle_PTopoDS_Edge*) &$self;
	}
};
%extend PTopoDS_Edge {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Edge::~PTopoDS_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TSolid;
class PTopoDS_TSolid : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TSolid {
	Handle_PTopoDS_TSolid GetHandle() {
	return *(Handle_PTopoDS_TSolid*) &$self;
	}
};
%extend PTopoDS_TSolid {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TSolid::~PTopoDS_TSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TCompSolid;
class PTopoDS_TCompSolid : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TCompSolid {
	Handle_PTopoDS_TCompSolid GetHandle() {
	return *(Handle_PTopoDS_TCompSolid*) &$self;
	}
};
%extend PTopoDS_TCompSolid {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TCompSolid::~PTopoDS_TCompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TCompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TCompound;
class PTopoDS_TCompound : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompound();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompound(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TCompound {
	Handle_PTopoDS_TCompound GetHandle() {
	return *(Handle_PTopoDS_TCompound*) &$self;
	}
};
%extend PTopoDS_TCompound {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TCompound::~PTopoDS_TCompound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TCompound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TSolid1;
class PTopoDS_TSolid1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TSolid1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TSolid1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TSolid1 {
	Handle_PTopoDS_TSolid1 GetHandle() {
	return *(Handle_PTopoDS_TSolid1*) &$self;
	}
};
%extend PTopoDS_TSolid1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TSolid1::~PTopoDS_TSolid1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TSolid1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TVertex1;
class PTopoDS_TVertex1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TVertex1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TVertex1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TVertex1 {
	Handle_PTopoDS_TVertex1 GetHandle() {
	return *(Handle_PTopoDS_TVertex1*) &$self;
	}
};
%extend PTopoDS_TVertex1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TVertex1::~PTopoDS_TVertex1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TVertex1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape;
class PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape::~PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Solid;
class PTopoDS_Solid : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Solid();
		%feature("autodoc", "1");
		PTopoDS_Solid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Solid {
	Handle_PTopoDS_Solid GetHandle() {
	return *(Handle_PTopoDS_Solid*) &$self;
	}
};
%extend PTopoDS_Solid {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Solid::~PTopoDS_Solid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Solid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_FieldOfHArray1OfHShape;
class PTopoDS_FieldOfHArray1OfHShape : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape(const Standard_Integer Size);
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape(const PTopoDS_FieldOfHArray1OfHShape &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PTopoDS_FieldOfHArray1OfHShape &Other);
		%feature("autodoc", "1");
		void operator=(const PTopoDS_FieldOfHArray1OfHShape &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PTopoDS_HShape &Value);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PTopoDS_FieldOfHArray1OfHShape::~PTopoDS_FieldOfHArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_FieldOfHArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1;
class PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		void SetValue(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1::~PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Face;
class PTopoDS_Face : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Face();
		%feature("autodoc", "1");
		PTopoDS_Face(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Face {
	Handle_PTopoDS_Face GetHandle() {
	return *(Handle_PTopoDS_Face*) &$self;
	}
};
%extend PTopoDS_Face {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Face::~PTopoDS_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_HArray1OfHShape;
class PTopoDS_HArray1OfHShape : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Standard_Integer Low, const Standard_Integer Up, const Handle_PTopoDS_HShape &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PTopoDS_HShape &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfHShapeLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfHShapeLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfHShapeUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfHShapeUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopoDS_FieldOfHArray1OfHShape & _CSFDB_GetPTopoDS_HArray1OfHShapeData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_HArray1OfHShape {
	Handle_PTopoDS_HArray1OfHShape GetHandle() {
	return *(Handle_PTopoDS_HArray1OfHShape*) &$self;
	}
};
%extend PTopoDS_HArray1OfHShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_HArray1OfHShape::~PTopoDS_HArray1OfHShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_HArray1OfHShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TWire1;
class PTopoDS_TWire1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TWire1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TWire1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TWire1 {
	Handle_PTopoDS_TWire1 GetHandle() {
	return *(Handle_PTopoDS_TWire1*) &$self;
	}
};
%extend PTopoDS_TWire1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TWire1::~PTopoDS_TWire1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TWire1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_FieldOfHArray1OfShape1;
class PTopoDS_FieldOfHArray1OfShape1 : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1(const Standard_Integer Size);
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1(const PTopoDS_FieldOfHArray1OfShape1 &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PTopoDS_FieldOfHArray1OfShape1 &Other);
		%feature("autodoc", "1");
		void operator=(const PTopoDS_FieldOfHArray1OfShape1 &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PTopoDS_Shape1 &Value);
		%feature("autodoc", "1");
		PTopoDS_Shape1 & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		PTopoDS_Shape1 & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PTopoDS_FieldOfHArray1OfShape1::~PTopoDS_FieldOfHArray1OfShape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_FieldOfHArray1OfShape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Vertex;
class PTopoDS_Vertex : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Vertex();
		%feature("autodoc", "1");
		PTopoDS_Vertex(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_Vertex {
	Handle_PTopoDS_Vertex GetHandle() {
	return *(Handle_PTopoDS_Vertex*) &$self;
	}
};
%extend PTopoDS_Vertex {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_Vertex::~PTopoDS_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_CompSolid;
class PTopoDS_CompSolid : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_CompSolid();
		%feature("autodoc", "1");
		PTopoDS_CompSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_CompSolid {
	Handle_PTopoDS_CompSolid GetHandle() {
	return *(Handle_PTopoDS_CompSolid*) &$self;
	}
};
%extend PTopoDS_CompSolid {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_CompSolid::~PTopoDS_CompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_CompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TVertex;
class PTopoDS_TVertex : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TVertex(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TVertex();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TVertex {
	Handle_PTopoDS_TVertex GetHandle() {
	return *(Handle_PTopoDS_TVertex*) &$self;
	}
};
%extend PTopoDS_TVertex {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TVertex::~PTopoDS_TVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TFace;
class PTopoDS_TFace : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TFace();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TFace(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TFace {
	Handle_PTopoDS_TFace GetHandle() {
	return *(Handle_PTopoDS_TFace*) &$self;
	}
};
%extend PTopoDS_TFace {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TFace::~PTopoDS_TFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TCompSolid1;
class PTopoDS_TCompSolid1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompSolid1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompSolid1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TCompSolid1 {
	Handle_PTopoDS_TCompSolid1 GetHandle() {
	return *(Handle_PTopoDS_TCompSolid1*) &$self;
	}
};
%extend PTopoDS_TCompSolid1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TCompSolid1::~PTopoDS_TCompSolid1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TCompSolid1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_Shape1;
class PTopoDS_Shape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_Shape1();
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		const Handle_PTopoDS_TShape1 & TShape() const;
		%feature("autodoc", "1");
		void TShape(const Handle_PTopoDS_TShape1 &T);
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1 _CSFDB_GetPTopoDS_Shape1myTShape() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_Shape1myTShape(const Handle_PTopoDS_TShape1 &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopoDS_Shape1myLocation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetPTopoDS_Shape1myOrient() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_Shape1myOrient(const TopAbs_Orientation p);

};
%feature("shadow") PTopoDS_Shape1::~PTopoDS_Shape1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_Shape1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopoDS_TFace1;
class PTopoDS_TFace1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TFace1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TFace1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopoDS_TFace1 {
	Handle_PTopoDS_TFace1 GetHandle() {
	return *(Handle_PTopoDS_TFace1*) &$self;
	}
};
%extend PTopoDS_TFace1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") PTopoDS_TFace1::~PTopoDS_TFace1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopoDS_TFace1 {
	void _kill_pointed() {
		delete $self;
	}
};

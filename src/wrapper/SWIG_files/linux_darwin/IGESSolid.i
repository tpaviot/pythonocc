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

%module IGESSolid
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IGESSolid_renames.i


%include IGESSolid_required_python_modules.i


%include IGESSolid_dependencies.i


%include IGESSolid_headers.i




%nodefaultctor Handle_IGESSolid_Block;
class Handle_IGESSolid_Block : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Block();
		%feature("autodoc", "1");
		Handle_IGESSolid_Block(const Handle_IGESSolid_Block &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Block(const IGESSolid_Block *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Block & operator=(const Handle_IGESSolid_Block &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Block & operator=(const IGESSolid_Block *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Block DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Block {
	IGESSolid_Block* GetObject() {
	return (IGESSolid_Block*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Block::~Handle_IGESSolid_Block %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Block {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_RightAngularWedge;
class Handle_IGESSolid_RightAngularWedge : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_RightAngularWedge();
		%feature("autodoc", "1");
		Handle_IGESSolid_RightAngularWedge(const Handle_IGESSolid_RightAngularWedge &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_RightAngularWedge(const IGESSolid_RightAngularWedge *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_RightAngularWedge & operator=(const Handle_IGESSolid_RightAngularWedge &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_RightAngularWedge & operator=(const IGESSolid_RightAngularWedge *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_RightAngularWedge DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_RightAngularWedge {
	IGESSolid_RightAngularWedge* GetObject() {
	return (IGESSolid_RightAngularWedge*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_RightAngularWedge::~Handle_IGESSolid_RightAngularWedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_RightAngularWedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Torus;
class Handle_IGESSolid_Torus : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Torus();
		%feature("autodoc", "1");
		Handle_IGESSolid_Torus(const Handle_IGESSolid_Torus &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Torus(const IGESSolid_Torus *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Torus & operator=(const Handle_IGESSolid_Torus &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Torus & operator=(const IGESSolid_Torus *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Torus DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Torus {
	IGESSolid_Torus* GetObject() {
	return (IGESSolid_Torus*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Torus::~Handle_IGESSolid_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_ConeFrustum;
class Handle_IGESSolid_ConeFrustum : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_ConeFrustum();
		%feature("autodoc", "1");
		Handle_IGESSolid_ConeFrustum(const Handle_IGESSolid_ConeFrustum &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConeFrustum(const IGESSolid_ConeFrustum *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConeFrustum & operator=(const Handle_IGESSolid_ConeFrustum &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConeFrustum & operator=(const IGESSolid_ConeFrustum *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_ConeFrustum DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_ConeFrustum {
	IGESSolid_ConeFrustum* GetObject() {
	return (IGESSolid_ConeFrustum*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_ConeFrustum::~Handle_IGESSolid_ConeFrustum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_ConeFrustum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_HArray1OfFace;
class Handle_IGESSolid_HArray1OfFace : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfFace();
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfFace(const Handle_IGESSolid_HArray1OfFace &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfFace(const IGESSolid_HArray1OfFace *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfFace & operator=(const Handle_IGESSolid_HArray1OfFace &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfFace & operator=(const IGESSolid_HArray1OfFace *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_HArray1OfFace DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_HArray1OfFace {
	IGESSolid_HArray1OfFace* GetObject() {
	return (IGESSolid_HArray1OfFace*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_HArray1OfFace::~Handle_IGESSolid_HArray1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_HArray1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SpecificModule;
class Handle_IGESSolid_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESSolid_SpecificModule(const Handle_IGESSolid_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SpecificModule(const IGESSolid_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SpecificModule & operator=(const Handle_IGESSolid_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SpecificModule & operator=(const IGESSolid_SpecificModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SpecificModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SpecificModule {
	IGESSolid_SpecificModule* GetObject() {
	return (IGESSolid_SpecificModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SpecificModule::~Handle_IGESSolid_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_HArray1OfLoop;
class Handle_IGESSolid_HArray1OfLoop : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfLoop();
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfLoop(const Handle_IGESSolid_HArray1OfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfLoop(const IGESSolid_HArray1OfLoop *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfLoop & operator=(const Handle_IGESSolid_HArray1OfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfLoop & operator=(const IGESSolid_HArray1OfLoop *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_HArray1OfLoop DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_HArray1OfLoop {
	IGESSolid_HArray1OfLoop* GetObject() {
	return (IGESSolid_HArray1OfLoop*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_HArray1OfLoop::~Handle_IGESSolid_HArray1OfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_HArray1OfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_EdgeList;
class Handle_IGESSolid_EdgeList : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList();
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList(const Handle_IGESSolid_EdgeList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList(const IGESSolid_EdgeList *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList & operator=(const Handle_IGESSolid_EdgeList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList & operator=(const IGESSolid_EdgeList *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_EdgeList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_EdgeList {
	IGESSolid_EdgeList* GetObject() {
	return (IGESSolid_EdgeList*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_EdgeList::~Handle_IGESSolid_EdgeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_EdgeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Shell;
class Handle_IGESSolid_Shell : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell();
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell(const Handle_IGESSolid_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell(const IGESSolid_Shell *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell & operator=(const Handle_IGESSolid_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell & operator=(const IGESSolid_Shell *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Shell DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Shell {
	IGESSolid_Shell* GetObject() {
	return (IGESSolid_Shell*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Shell::~Handle_IGESSolid_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SolidInstance;
class Handle_IGESSolid_SolidInstance : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidInstance();
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidInstance(const Handle_IGESSolid_SolidInstance &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidInstance(const IGESSolid_SolidInstance *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidInstance & operator=(const Handle_IGESSolid_SolidInstance &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidInstance & operator=(const IGESSolid_SolidInstance *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SolidInstance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SolidInstance {
	IGESSolid_SolidInstance* GetObject() {
	return (IGESSolid_SolidInstance*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SolidInstance::~Handle_IGESSolid_SolidInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SolidInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_CylindricalSurface;
class Handle_IGESSolid_CylindricalSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_CylindricalSurface();
		%feature("autodoc", "1");
		Handle_IGESSolid_CylindricalSurface(const Handle_IGESSolid_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_CylindricalSurface(const IGESSolid_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_CylindricalSurface & operator=(const Handle_IGESSolid_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_CylindricalSurface & operator=(const IGESSolid_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_CylindricalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_CylindricalSurface {
	IGESSolid_CylindricalSurface* GetObject() {
	return (IGESSolid_CylindricalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_CylindricalSurface::~Handle_IGESSolid_CylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_CylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SolidOfRevolution;
class Handle_IGESSolid_SolidOfRevolution : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfRevolution();
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfRevolution(const Handle_IGESSolid_SolidOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfRevolution(const IGESSolid_SolidOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfRevolution & operator=(const Handle_IGESSolid_SolidOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfRevolution & operator=(const IGESSolid_SolidOfRevolution *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SolidOfRevolution DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SolidOfRevolution {
	IGESSolid_SolidOfRevolution* GetObject() {
	return (IGESSolid_SolidOfRevolution*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SolidOfRevolution::~Handle_IGESSolid_SolidOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SolidOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_ConicalSurface;
class Handle_IGESSolid_ConicalSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_ConicalSurface();
		%feature("autodoc", "1");
		Handle_IGESSolid_ConicalSurface(const Handle_IGESSolid_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConicalSurface(const IGESSolid_ConicalSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConicalSurface & operator=(const Handle_IGESSolid_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ConicalSurface & operator=(const IGESSolid_ConicalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_ConicalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_ConicalSurface {
	IGESSolid_ConicalSurface* GetObject() {
	return (IGESSolid_ConicalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_ConicalSurface::~Handle_IGESSolid_ConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_ConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SolidAssembly;
class Handle_IGESSolid_SolidAssembly : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidAssembly();
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidAssembly(const Handle_IGESSolid_SolidAssembly &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidAssembly(const IGESSolid_SolidAssembly *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidAssembly & operator=(const Handle_IGESSolid_SolidAssembly &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidAssembly & operator=(const IGESSolid_SolidAssembly *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SolidAssembly DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SolidAssembly {
	IGESSolid_SolidAssembly* GetObject() {
	return (IGESSolid_SolidAssembly*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SolidAssembly::~Handle_IGESSolid_SolidAssembly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SolidAssembly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Face;
class Handle_IGESSolid_Face : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Face();
		%feature("autodoc", "1");
		Handle_IGESSolid_Face(const Handle_IGESSolid_Face &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face(const IGESSolid_Face *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face & operator=(const Handle_IGESSolid_Face &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face & operator=(const IGESSolid_Face *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Face DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Face {
	IGESSolid_Face* GetObject() {
	return (IGESSolid_Face*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Face::~Handle_IGESSolid_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Protocol;
class Handle_IGESSolid_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Protocol();
		%feature("autodoc", "1");
		Handle_IGESSolid_Protocol(const Handle_IGESSolid_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Protocol(const IGESSolid_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Protocol & operator=(const Handle_IGESSolid_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Protocol & operator=(const IGESSolid_Protocol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Protocol DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Protocol {
	IGESSolid_Protocol* GetObject() {
	return (IGESSolid_Protocol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Protocol::~Handle_IGESSolid_Protocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Protocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_GeneralModule;
class Handle_IGESSolid_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESSolid_GeneralModule(const Handle_IGESSolid_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_GeneralModule(const IGESSolid_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_GeneralModule & operator=(const Handle_IGESSolid_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_GeneralModule & operator=(const IGESSolid_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_GeneralModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_GeneralModule {
	IGESSolid_GeneralModule* GetObject() {
	return (IGESSolid_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_GeneralModule::~Handle_IGESSolid_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_VertexList;
class Handle_IGESSolid_VertexList : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList();
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList(const Handle_IGESSolid_VertexList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList(const IGESSolid_VertexList *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList & operator=(const Handle_IGESSolid_VertexList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList & operator=(const IGESSolid_VertexList *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_VertexList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_VertexList {
	IGESSolid_VertexList* GetObject() {
	return (IGESSolid_VertexList*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_VertexList::~Handle_IGESSolid_VertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_VertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_BooleanTree;
class Handle_IGESSolid_BooleanTree : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree();
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree(const Handle_IGESSolid_BooleanTree &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree(const IGESSolid_BooleanTree *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree & operator=(const Handle_IGESSolid_BooleanTree &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree & operator=(const IGESSolid_BooleanTree *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_BooleanTree DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_BooleanTree {
	IGESSolid_BooleanTree* GetObject() {
	return (IGESSolid_BooleanTree*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_BooleanTree::~Handle_IGESSolid_BooleanTree %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_BooleanTree {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Cylinder;
class Handle_IGESSolid_Cylinder : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Cylinder();
		%feature("autodoc", "1");
		Handle_IGESSolid_Cylinder(const Handle_IGESSolid_Cylinder &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Cylinder(const IGESSolid_Cylinder *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Cylinder & operator=(const Handle_IGESSolid_Cylinder &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Cylinder & operator=(const IGESSolid_Cylinder *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Cylinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Cylinder {
	IGESSolid_Cylinder* GetObject() {
	return (IGESSolid_Cylinder*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Cylinder::~Handle_IGESSolid_Cylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Cylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_ManifoldSolid;
class Handle_IGESSolid_ManifoldSolid : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid();
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid(const Handle_IGESSolid_ManifoldSolid &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid(const IGESSolid_ManifoldSolid *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid & operator=(const Handle_IGESSolid_ManifoldSolid &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid & operator=(const IGESSolid_ManifoldSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_ManifoldSolid DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_ManifoldSolid {
	IGESSolid_ManifoldSolid* GetObject() {
	return (IGESSolid_ManifoldSolid*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_ManifoldSolid::~Handle_IGESSolid_ManifoldSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_ManifoldSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SphericalSurface;
class Handle_IGESSolid_SphericalSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SphericalSurface();
		%feature("autodoc", "1");
		Handle_IGESSolid_SphericalSurface(const Handle_IGESSolid_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SphericalSurface(const IGESSolid_SphericalSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SphericalSurface & operator=(const Handle_IGESSolid_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SphericalSurface & operator=(const IGESSolid_SphericalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SphericalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SphericalSurface {
	IGESSolid_SphericalSurface* GetObject() {
	return (IGESSolid_SphericalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SphericalSurface::~Handle_IGESSolid_SphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_HArray1OfVertexList;
class Handle_IGESSolid_HArray1OfVertexList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfVertexList();
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfVertexList(const Handle_IGESSolid_HArray1OfVertexList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfVertexList(const IGESSolid_HArray1OfVertexList *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfVertexList & operator=(const Handle_IGESSolid_HArray1OfVertexList &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfVertexList & operator=(const IGESSolid_HArray1OfVertexList *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_HArray1OfVertexList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_HArray1OfVertexList {
	IGESSolid_HArray1OfVertexList* GetObject() {
	return (IGESSolid_HArray1OfVertexList*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_HArray1OfVertexList::~Handle_IGESSolid_HArray1OfVertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_HArray1OfVertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Sphere;
class Handle_IGESSolid_Sphere : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Sphere();
		%feature("autodoc", "1");
		Handle_IGESSolid_Sphere(const Handle_IGESSolid_Sphere &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Sphere(const IGESSolid_Sphere *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Sphere & operator=(const Handle_IGESSolid_Sphere &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Sphere & operator=(const IGESSolid_Sphere *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Sphere DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Sphere {
	IGESSolid_Sphere* GetObject() {
	return (IGESSolid_Sphere*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Sphere::~Handle_IGESSolid_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SolidOfLinearExtrusion;
class Handle_IGESSolid_SolidOfLinearExtrusion : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfLinearExtrusion(const Handle_IGESSolid_SolidOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfLinearExtrusion(const IGESSolid_SolidOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfLinearExtrusion & operator=(const Handle_IGESSolid_SolidOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SolidOfLinearExtrusion & operator=(const IGESSolid_SolidOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SolidOfLinearExtrusion DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SolidOfLinearExtrusion {
	IGESSolid_SolidOfLinearExtrusion* GetObject() {
	return (IGESSolid_SolidOfLinearExtrusion*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SolidOfLinearExtrusion::~Handle_IGESSolid_SolidOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SolidOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_ReadWriteModule;
class Handle_IGESSolid_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESSolid_ReadWriteModule(const Handle_IGESSolid_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ReadWriteModule(const IGESSolid_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_ReadWriteModule & operator=(const Handle_IGESSolid_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ReadWriteModule & operator=(const IGESSolid_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_ReadWriteModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_ReadWriteModule {
	IGESSolid_ReadWriteModule* GetObject() {
	return (IGESSolid_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_ReadWriteModule::~Handle_IGESSolid_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Ellipsoid;
class Handle_IGESSolid_Ellipsoid : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Ellipsoid();
		%feature("autodoc", "1");
		Handle_IGESSolid_Ellipsoid(const Handle_IGESSolid_Ellipsoid &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Ellipsoid(const IGESSolid_Ellipsoid *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Ellipsoid & operator=(const Handle_IGESSolid_Ellipsoid &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Ellipsoid & operator=(const IGESSolid_Ellipsoid *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Ellipsoid DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Ellipsoid {
	IGESSolid_Ellipsoid* GetObject() {
	return (IGESSolid_Ellipsoid*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Ellipsoid::~Handle_IGESSolid_Ellipsoid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Ellipsoid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_HArray1OfShell;
class Handle_IGESSolid_HArray1OfShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfShell();
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfShell(const Handle_IGESSolid_HArray1OfShell &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfShell(const IGESSolid_HArray1OfShell *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfShell & operator=(const Handle_IGESSolid_HArray1OfShell &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_HArray1OfShell & operator=(const IGESSolid_HArray1OfShell *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_HArray1OfShell DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_HArray1OfShell {
	IGESSolid_HArray1OfShell* GetObject() {
	return (IGESSolid_HArray1OfShell*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_HArray1OfShell::~Handle_IGESSolid_HArray1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_HArray1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_ToroidalSurface;
class Handle_IGESSolid_ToroidalSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_ToroidalSurface();
		%feature("autodoc", "1");
		Handle_IGESSolid_ToroidalSurface(const Handle_IGESSolid_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ToroidalSurface(const IGESSolid_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_ToroidalSurface & operator=(const Handle_IGESSolid_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_ToroidalSurface & operator=(const IGESSolid_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_ToroidalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_ToroidalSurface {
	IGESSolid_ToroidalSurface* GetObject() {
	return (IGESSolid_ToroidalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_ToroidalSurface::~Handle_IGESSolid_ToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_ToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_Loop;
class Handle_IGESSolid_Loop : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop();
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop(const Handle_IGESSolid_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop(const IGESSolid_Loop *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop & operator=(const Handle_IGESSolid_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop & operator=(const IGESSolid_Loop *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Loop DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_Loop {
	IGESSolid_Loop* GetObject() {
	return (IGESSolid_Loop*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_Loop::~Handle_IGESSolid_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_PlaneSurface;
class Handle_IGESSolid_PlaneSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_PlaneSurface();
		%feature("autodoc", "1");
		Handle_IGESSolid_PlaneSurface(const Handle_IGESSolid_PlaneSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_PlaneSurface(const IGESSolid_PlaneSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_PlaneSurface & operator=(const Handle_IGESSolid_PlaneSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_PlaneSurface & operator=(const IGESSolid_PlaneSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_PlaneSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_PlaneSurface {
	IGESSolid_PlaneSurface* GetObject() {
	return (IGESSolid_PlaneSurface*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_PlaneSurface::~Handle_IGESSolid_PlaneSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_PlaneSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESSolid_SelectedComponent;
class Handle_IGESSolid_SelectedComponent : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESSolid_SelectedComponent();
		%feature("autodoc", "1");
		Handle_IGESSolid_SelectedComponent(const Handle_IGESSolid_SelectedComponent &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SelectedComponent(const IGESSolid_SelectedComponent *anItem);
		%feature("autodoc", "1");
		Handle_IGESSolid_SelectedComponent & operator=(const Handle_IGESSolid_SelectedComponent &aHandle);
		%feature("autodoc", "1");
		Handle_IGESSolid_SelectedComponent & operator=(const IGESSolid_SelectedComponent *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESSolid_SelectedComponent DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESSolid_SelectedComponent {
	IGESSolid_SelectedComponent* GetObject() {
	return (IGESSolid_SelectedComponent*)$self->Access();
	}
};
%feature("shadow") Handle_IGESSolid_SelectedComponent::~Handle_IGESSolid_SelectedComponent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESSolid_SelectedComponent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolTorus;
class IGESSolid_ToolTorus {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolTorus();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Torus &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Torus &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Torus &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Torus &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Torus &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Torus &entfrom, const Handle_IGESSolid_Torus &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Torus &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolTorus::~IGESSolid_ToolTorus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolTorus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SolidOfRevolution;
class IGESSolid_SolidOfRevolution : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SolidOfRevolution();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aCurve, const Standard_Real aFract, const gp_XYZ aAxisPnt, const gp_XYZ aDirection);
		%feature("autodoc", "1");
		void SetClosedToAxis(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsClosedToAxis() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Curve() const;
		%feature("autodoc", "1");
		Standard_Real Fraction() const;
		%feature("autodoc", "1");
		gp_Pnt AxisPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedAxisPoint() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SolidOfRevolution {
	Handle_IGESSolid_SolidOfRevolution GetHandle() {
	return *(Handle_IGESSolid_SolidOfRevolution*) &$self;
	}
};
%extend IGESSolid_SolidOfRevolution {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SolidOfRevolution::~IGESSolid_SolidOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SolidOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_HArray1OfShell;
class IGESSolid_HArray1OfShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESSolid_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESSolid_Shell &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Shell &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Shell &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfShell & Array1() const;
		%feature("autodoc", "1");
		IGESSolid_Array1OfShell & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_HArray1OfShell {
	Handle_IGESSolid_HArray1OfShell GetHandle() {
	return *(Handle_IGESSolid_HArray1OfShell*) &$self;
	}
};
%extend IGESSolid_HArray1OfShell {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_HArray1OfShell::~IGESSolid_HArray1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_HArray1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSolidInstance;
class IGESSolid_ToolSolidInstance {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSolidInstance();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SolidInstance &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SolidInstance &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SolidInstance &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SolidInstance &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SolidInstance &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SolidInstance &entfrom, const Handle_IGESSolid_SolidInstance &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SolidInstance &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSolidInstance::~IGESSolid_ToolSolidInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSolidInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSphere;
class IGESSolid_ToolSphere {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSphere();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Sphere &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Sphere &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Sphere &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Sphere &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Sphere &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Sphere &entfrom, const Handle_IGESSolid_Sphere &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Sphere &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSphere::~IGESSolid_ToolSphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolToroidalSurface;
class IGESSolid_ToolToroidalSurface {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolToroidalSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_ToroidalSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_ToroidalSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_ToroidalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_ToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_ToroidalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_ToroidalSurface &entfrom, const Handle_IGESSolid_ToroidalSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_ToroidalSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolToroidalSurface::~IGESSolid_ToolToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ConeFrustum;
class IGESSolid_ConeFrustum : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_ConeFrustum();
		%feature("autodoc", "1");
		void Init(const Standard_Real Ht, const Standard_Real R1, const Standard_Real R2, const gp_XYZ Center, const gp_XYZ anAxis);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		Standard_Real LargerRadius() const;
		%feature("autodoc", "1");
		Standard_Real SmallerRadius() const;
		%feature("autodoc", "1");
		gp_Pnt FaceCenter() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedFaceCenter() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_ConeFrustum {
	Handle_IGESSolid_ConeFrustum GetHandle() {
	return *(Handle_IGESSolid_ConeFrustum*) &$self;
	}
};
%extend IGESSolid_ConeFrustum {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_ConeFrustum::~IGESSolid_ConeFrustum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ConeFrustum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SolidOfLinearExtrusion;
class IGESSolid_SolidOfLinearExtrusion : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SolidOfLinearExtrusion();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aCurve, const Standard_Real aLength, const gp_XYZ aDirection);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Curve() const;
		%feature("autodoc", "1");
		Standard_Real ExtrusionLength() const;
		%feature("autodoc", "1");
		gp_Dir ExtrusionDirection() const;
		%feature("autodoc", "1");
		gp_Dir TransformedExtrusionDirection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SolidOfLinearExtrusion {
	Handle_IGESSolid_SolidOfLinearExtrusion GetHandle() {
	return *(Handle_IGESSolid_SolidOfLinearExtrusion*) &$self;
	}
};
%extend IGESSolid_SolidOfLinearExtrusion {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SolidOfLinearExtrusion::~IGESSolid_SolidOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SolidOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_BooleanTree;
class IGESSolid_BooleanTree : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_BooleanTree();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &operands, const Handle_TColStd_HArray1OfInteger &operations);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOperand(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Operand(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Operation(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_BooleanTree {
	Handle_IGESSolid_BooleanTree GetHandle() {
	return *(Handle_IGESSolid_BooleanTree*) &$self;
	}
};
%extend IGESSolid_BooleanTree {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_BooleanTree::~IGESSolid_BooleanTree %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_BooleanTree {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Array1OfShell;
class IGESSolid_Array1OfShell {
	public:
		%feature("autodoc", "1");
		IGESSolid_Array1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_Array1OfShell(const Handle_IGESSolid_Shell &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Shell &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESSolid_Array1OfShell & Assign(const IGESSolid_Array1OfShell &Other);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfShell & operator=(const IGESSolid_Array1OfShell &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Shell &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESSolid_Shell & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESSolid_Array1OfShell::~IGESSolid_Array1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Array1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSolidOfRevolution;
class IGESSolid_ToolSolidOfRevolution {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSolidOfRevolution();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SolidOfRevolution &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SolidOfRevolution &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SolidOfRevolution &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SolidOfRevolution &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SolidOfRevolution &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SolidOfRevolution &entfrom, const Handle_IGESSolid_SolidOfRevolution &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SolidOfRevolution &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSolidOfRevolution::~IGESSolid_ToolSolidOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSolidOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Array1OfVertexList;
class IGESSolid_Array1OfVertexList {
	public:
		%feature("autodoc", "1");
		IGESSolid_Array1OfVertexList(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_Array1OfVertexList(const Handle_IGESSolid_VertexList &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_VertexList &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESSolid_Array1OfVertexList & Assign(const IGESSolid_Array1OfVertexList &Other);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfVertexList & operator=(const IGESSolid_Array1OfVertexList &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_VertexList &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_VertexList & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESSolid_VertexList & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESSolid_Array1OfVertexList::~IGESSolid_Array1OfVertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Array1OfVertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSphericalSurface;
class IGESSolid_ToolSphericalSurface {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSphericalSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SphericalSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SphericalSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SphericalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SphericalSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SphericalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SphericalSurface &entfrom, const Handle_IGESSolid_SphericalSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SphericalSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSphericalSurface::~IGESSolid_ToolSphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_CylindricalSurface;
class IGESSolid_CylindricalSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_CylindricalSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Point &aLocation, const Handle_IGESGeom_Direction &anAxis, const Standard_Real aRadius, const Handle_IGESGeom_Direction &aRefdir);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point LocationPoint() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParametrised() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction ReferenceDir() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_CylindricalSurface {
	Handle_IGESSolid_CylindricalSurface GetHandle() {
	return *(Handle_IGESSolid_CylindricalSurface*) &$self;
	}
};
%extend IGESSolid_CylindricalSurface {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_CylindricalSurface::~IGESSolid_CylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_CylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Ellipsoid;
class IGESSolid_Ellipsoid : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Ellipsoid();
		%feature("autodoc", "1");
		void Init(const gp_XYZ aSize, const gp_XYZ aCenter, const gp_XYZ anXAxis, const gp_XYZ anZAxis);
		%feature("autodoc", "1");
		gp_XYZ Size() const;
		%feature("autodoc", "1");
		Standard_Real XLength() const;
		%feature("autodoc", "1");
		Standard_Real YLength() const;
		%feature("autodoc", "1");
		Standard_Real ZLength() const;
		%feature("autodoc", "1");
		gp_Pnt Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		gp_Dir XAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedXAxis() const;
		%feature("autodoc", "1");
		gp_Dir YAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedYAxis() const;
		%feature("autodoc", "1");
		gp_Dir ZAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedZAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Ellipsoid {
	Handle_IGESSolid_Ellipsoid GetHandle() {
	return *(Handle_IGESSolid_Ellipsoid*) &$self;
	}
};
%extend IGESSolid_Ellipsoid {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Ellipsoid::~IGESSolid_Ellipsoid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Ellipsoid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Torus;
class IGESSolid_Torus : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Torus();
		%feature("autodoc", "1");
		void Init(const Standard_Real R1, const Standard_Real R2, const gp_XYZ aPoint, const gp_XYZ anAxisdir);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real DiscRadius() const;
		%feature("autodoc", "1");
		gp_Pnt AxisPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedAxisPoint() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Torus {
	Handle_IGESSolid_Torus GetHandle() {
	return *(Handle_IGESSolid_Torus*) &$self;
	}
};
%extend IGESSolid_Torus {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Torus::~IGESSolid_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_RightAngularWedge;
class IGESSolid_RightAngularWedge : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_RightAngularWedge();
		%feature("autodoc", "1");
		void Init(const gp_XYZ aSize, const Standard_Real lowX, const gp_XYZ aCorner, const gp_XYZ anXAxis, const gp_XYZ anZAxis);
		%feature("autodoc", "1");
		gp_XYZ Size() const;
		%feature("autodoc", "1");
		Standard_Real XBigLength() const;
		%feature("autodoc", "1");
		Standard_Real XSmallLength() const;
		%feature("autodoc", "1");
		Standard_Real YLength() const;
		%feature("autodoc", "1");
		Standard_Real ZLength() const;
		%feature("autodoc", "1");
		gp_Pnt Corner() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCorner() const;
		%feature("autodoc", "1");
		gp_Dir XAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedXAxis() const;
		%feature("autodoc", "1");
		gp_Dir YAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedYAxis() const;
		%feature("autodoc", "1");
		gp_Dir ZAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedZAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_RightAngularWedge {
	Handle_IGESSolid_RightAngularWedge GetHandle() {
	return *(Handle_IGESSolid_RightAngularWedge*) &$self;
	}
};
%extend IGESSolid_RightAngularWedge {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_RightAngularWedge::~IGESSolid_RightAngularWedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_RightAngularWedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolEllipsoid;
class IGESSolid_ToolEllipsoid {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolEllipsoid();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Ellipsoid &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Ellipsoid &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Ellipsoid &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Ellipsoid &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Ellipsoid &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Ellipsoid &entfrom, const Handle_IGESSolid_Ellipsoid &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Ellipsoid &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolEllipsoid::~IGESSolid_ToolEllipsoid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolEllipsoid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SpecificModule;
class IGESSolid_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESSolid_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SpecificModule {
	Handle_IGESSolid_SpecificModule GetHandle() {
	return *(Handle_IGESSolid_SpecificModule*) &$self;
	}
};
%extend IGESSolid_SpecificModule {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SpecificModule::~IGESSolid_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SelectedComponent;
class IGESSolid_SelectedComponent : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SelectedComponent();
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_BooleanTree &anEntity, const gp_XYZ selectPnt);
		%feature("autodoc", "1");
		Handle_IGESSolid_BooleanTree Component() const;
		%feature("autodoc", "1");
		gp_Pnt SelectPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedSelectPoint() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SelectedComponent {
	Handle_IGESSolid_SelectedComponent GetHandle() {
	return *(Handle_IGESSolid_SelectedComponent*) &$self;
	}
};
%extend IGESSolid_SelectedComponent {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SelectedComponent::~IGESSolid_SelectedComponent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SelectedComponent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_HArray1OfLoop;
class IGESSolid_HArray1OfLoop : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESSolid_HArray1OfLoop(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_HArray1OfLoop(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESSolid_Loop &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Loop &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Loop &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Loop & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfLoop & Array1() const;
		%feature("autodoc", "1");
		IGESSolid_Array1OfLoop & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_HArray1OfLoop {
	Handle_IGESSolid_HArray1OfLoop GetHandle() {
	return *(Handle_IGESSolid_HArray1OfLoop*) &$self;
	}
};
%extend IGESSolid_HArray1OfLoop {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_HArray1OfLoop::~IGESSolid_HArray1OfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_HArray1OfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Array1OfLoop;
class IGESSolid_Array1OfLoop {
	public:
		%feature("autodoc", "1");
		IGESSolid_Array1OfLoop(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_Array1OfLoop(const Handle_IGESSolid_Loop &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Loop &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESSolid_Array1OfLoop & Assign(const IGESSolid_Array1OfLoop &Other);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfLoop & operator=(const IGESSolid_Array1OfLoop &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Loop &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Loop & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESSolid_Loop & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESSolid_Array1OfLoop::~IGESSolid_Array1OfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Array1OfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_EdgeList;
class IGESSolid_EdgeList : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_EdgeList();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &curves, const Handle_IGESSolid_HArray1OfVertexList &startVertexList, const Handle_TColStd_HArray1OfInteger &startVertexIndex, const Handle_IGESSolid_HArray1OfVertexList &endVertexList, const Handle_TColStd_HArray1OfInteger &endVertexIndex);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Curve(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList StartVertexList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer StartVertexIndex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList EndVertexList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer EndVertexIndex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_EdgeList {
	Handle_IGESSolid_EdgeList GetHandle() {
	return *(Handle_IGESSolid_EdgeList*) &$self;
	}
};
%extend IGESSolid_EdgeList {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_EdgeList::~IGESSolid_EdgeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_EdgeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Array1OfFace;
class IGESSolid_Array1OfFace {
	public:
		%feature("autodoc", "1");
		IGESSolid_Array1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_Array1OfFace(const Handle_IGESSolid_Face &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Face &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESSolid_Array1OfFace & Assign(const IGESSolid_Array1OfFace &Other);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfFace & operator=(const IGESSolid_Array1OfFace &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Face &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESSolid_Face & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESSolid_Array1OfFace::~IGESSolid_Array1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Array1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolEdgeList;
class IGESSolid_ToolEdgeList {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolEdgeList();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_EdgeList &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_EdgeList &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_EdgeList &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_EdgeList &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_EdgeList &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_EdgeList &entfrom, const Handle_IGESSolid_EdgeList &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_EdgeList &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolEdgeList::~IGESSolid_ToolEdgeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolEdgeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolRightAngularWedge;
class IGESSolid_ToolRightAngularWedge {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolRightAngularWedge();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_RightAngularWedge &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_RightAngularWedge &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_RightAngularWedge &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_RightAngularWedge &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_RightAngularWedge &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_RightAngularWedge &entfrom, const Handle_IGESSolid_RightAngularWedge &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_RightAngularWedge &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolRightAngularWedge::~IGESSolid_ToolRightAngularWedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolRightAngularWedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_HArray1OfVertexList;
class IGESSolid_HArray1OfVertexList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESSolid_HArray1OfVertexList(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_HArray1OfVertexList(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESSolid_VertexList &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_VertexList &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_VertexList &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_VertexList & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfVertexList & Array1() const;
		%feature("autodoc", "1");
		IGESSolid_Array1OfVertexList & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_HArray1OfVertexList {
	Handle_IGESSolid_HArray1OfVertexList GetHandle() {
	return *(Handle_IGESSolid_HArray1OfVertexList*) &$self;
	}
};
%extend IGESSolid_HArray1OfVertexList {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_HArray1OfVertexList::~IGESSolid_HArray1OfVertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_HArray1OfVertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolConeFrustum;
class IGESSolid_ToolConeFrustum {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolConeFrustum();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_ConeFrustum &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_ConeFrustum &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_ConeFrustum &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_ConeFrustum &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_ConeFrustum &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_ConeFrustum &entfrom, const Handle_IGESSolid_ConeFrustum &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_ConeFrustum &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolConeFrustum::~IGESSolid_ToolConeFrustum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolConeFrustum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Shell;
class IGESSolid_Shell : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Shell();
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_HArray1OfFace &allFaces, const Handle_TColStd_HArray1OfInteger &allOrient);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		void SetClosed(const Standard_Boolean closed);
		%feature("autodoc", "1");
		Standard_Integer NbFaces() const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Face Face(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Orientation(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Shell {
	Handle_IGESSolid_Shell GetHandle() {
	return *(Handle_IGESSolid_Shell*) &$self;
	}
};
%extend IGESSolid_Shell {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Shell::~IGESSolid_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSelectedComponent;
class IGESSolid_ToolSelectedComponent {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSelectedComponent();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SelectedComponent &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SelectedComponent &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SelectedComponent &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SelectedComponent &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SelectedComponent &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SelectedComponent &entfrom, const Handle_IGESSolid_SelectedComponent &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SelectedComponent &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSelectedComponent::~IGESSolid_ToolSelectedComponent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSelectedComponent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToroidalSurface;
class IGESSolid_ToroidalSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToroidalSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Point &aCenter, const Handle_IGESGeom_Direction &anAxis, const Standard_Real majRadius, const Standard_Real minRadius, const Handle_IGESGeom_Direction &Refdir);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction ReferenceDir() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParametrised() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_ToroidalSurface {
	Handle_IGESSolid_ToroidalSurface GetHandle() {
	return *(Handle_IGESSolid_ToroidalSurface*) &$self;
	}
};
%extend IGESSolid_ToroidalSurface {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_ToroidalSurface::~IGESSolid_ToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolFace;
class IGESSolid_ToolFace {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolFace();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Face &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Face &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Face &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Face &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Face &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Face &entfrom, const Handle_IGESSolid_Face &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Face &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolFace::~IGESSolid_ToolFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SolidInstance;
class IGESSolid_SolidInstance : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SolidInstance();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &anEntity);
		%feature("autodoc", "1");
		Standard_Boolean IsBrep() const;
		%feature("autodoc", "1");
		void SetBrep(const Standard_Boolean brep);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SolidInstance {
	Handle_IGESSolid_SolidInstance GetHandle() {
	return *(Handle_IGESSolid_SolidInstance*) &$self;
	}
};
%extend IGESSolid_SolidInstance {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SolidInstance::~IGESSolid_SolidInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SolidInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolLoop;
class IGESSolid_ToolLoop {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolLoop();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Loop &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Loop &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Loop &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Loop &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Loop &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Loop &entfrom, const Handle_IGESSolid_Loop &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Loop &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolLoop::~IGESSolid_ToolLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolBlock;
class IGESSolid_ToolBlock {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolBlock();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Block &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Block &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Block &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Block &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Block &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Block &entfrom, const Handle_IGESSolid_Block &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Block &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolBlock::~IGESSolid_ToolBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Cylinder;
class IGESSolid_Cylinder : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Cylinder();
		%feature("autodoc", "1");
		void Init(const Standard_Real aHeight, const Standard_Real aRadius, const gp_XYZ aCenter, const gp_XYZ anAxis);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		gp_Pnt FaceCenter() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedFaceCenter() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Cylinder {
	Handle_IGESSolid_Cylinder GetHandle() {
	return *(Handle_IGESSolid_Cylinder*) &$self;
	}
};
%extend IGESSolid_Cylinder {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Cylinder::~IGESSolid_Cylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Cylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_TopoBuilder;
class IGESSolid_TopoBuilder {
	public:
		%feature("autodoc", "1");
		IGESSolid_TopoBuilder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddVertex(const gp_XYZ val);
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		const gp_XYZ  Vertex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_VertexList VertexList() const;
		%feature("autodoc", "1");
		void AddEdge(const Handle_IGESData_IGESEntity &curve, const Standard_Integer vstart, const Standard_Integer vend);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc","Edge(Standard_Integer num) -> [Standard_Integer, Standard_Integer]");

		void Edge(const Standard_Integer num, Handle_IGESData_IGESEntity & curve, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_EdgeList EdgeList() const;
		%feature("autodoc", "1");
		void MakeLoop();
		%feature("autodoc", "1");
		void MakeEdge(const Standard_Integer edgetype, const Standard_Integer edge3d, const Standard_Integer orientation);
		%feature("autodoc", "1");
		void AddCurveUV(const Handle_IGESData_IGESEntity &curve, const Standard_Integer iso);
		%feature("autodoc", "1");
		void EndEdge();
		%feature("autodoc", "1");
		void MakeFace(const Handle_IGESData_IGESEntity &surface);
		%feature("autodoc", "1");
		void SetOuter();
		%feature("autodoc", "1");
		void AddInner();
		%feature("autodoc", "1");
		void EndFace(const Standard_Integer orientation);
		%feature("autodoc", "1");
		void MakeShell();
		%feature("autodoc", "1");
		void EndSimpleShell();
		%feature("autodoc", "1");
		void SetMainShell(const Standard_Integer orientation);
		%feature("autodoc", "1");
		void AddVoidShell(const Standard_Integer orientation);
		%feature("autodoc", "1");
		void EndSolid();
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell Shell() const;
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid Solid() const;

};
%feature("shadow") IGESSolid_TopoBuilder::~IGESSolid_TopoBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_TopoBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolBooleanTree;
class IGESSolid_ToolBooleanTree {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolBooleanTree();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_BooleanTree &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_BooleanTree &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_BooleanTree &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_BooleanTree &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_BooleanTree &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_BooleanTree &entfrom, const Handle_IGESSolid_BooleanTree &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_BooleanTree &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolBooleanTree::~IGESSolid_ToolBooleanTree %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolBooleanTree {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Sphere;
class IGESSolid_Sphere : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Sphere();
		%feature("autodoc", "1");
		void Init(const Standard_Real aRadius, const gp_XYZ aCenter);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		gp_Pnt Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Sphere {
	Handle_IGESSolid_Sphere GetHandle() {
	return *(Handle_IGESSolid_Sphere*) &$self;
	}
};
%extend IGESSolid_Sphere {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Sphere::~IGESSolid_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolManifoldSolid;
class IGESSolid_ToolManifoldSolid {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolManifoldSolid();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_ManifoldSolid &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_ManifoldSolid &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_ManifoldSolid &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_ManifoldSolid &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_ManifoldSolid &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_ManifoldSolid &entfrom, const Handle_IGESSolid_ManifoldSolid &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_ManifoldSolid &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolManifoldSolid::~IGESSolid_ToolManifoldSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolManifoldSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_VertexList;
class IGESSolid_VertexList : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_VertexList();
		%feature("autodoc", "1");
		void Init(const Handle_TColgp_HArray1OfXYZ &vertices);
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		gp_Pnt Vertex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_VertexList {
	Handle_IGESSolid_VertexList GetHandle() {
	return *(Handle_IGESSolid_VertexList*) &$self;
	}
};
%extend IGESSolid_VertexList {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_VertexList::~IGESSolid_VertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_VertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolConicalSurface;
class IGESSolid_ToolConicalSurface {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolConicalSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_ConicalSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_ConicalSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_ConicalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_ConicalSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_ConicalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_ConicalSurface &entfrom, const Handle_IGESSolid_ConicalSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_ConicalSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolConicalSurface::~IGESSolid_ToolConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_HArray1OfFace;
class IGESSolid_HArray1OfFace : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESSolid_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESSolid_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESSolid_Face &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Face &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESSolid_Face &Value);
		%feature("autodoc", "1");
		const Handle_IGESSolid_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESSolid_Array1OfFace & Array1() const;
		%feature("autodoc", "1");
		IGESSolid_Array1OfFace & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_HArray1OfFace {
	Handle_IGESSolid_HArray1OfFace GetHandle() {
	return *(Handle_IGESSolid_HArray1OfFace*) &$self;
	}
};
%extend IGESSolid_HArray1OfFace {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_HArray1OfFace::~IGESSolid_HArray1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_HArray1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid;
class IGESSolid {
	public:
		%feature("autodoc", "1");
		IGESSolid();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		Handle_IGESSolid_Protocol Protocol();

};
%feature("shadow") IGESSolid::~IGESSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_PlaneSurface;
class IGESSolid_PlaneSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_PlaneSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Point &aLocation, const Handle_IGESGeom_Direction &aNormal, const Handle_IGESGeom_Direction &refdir);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point LocationPoint() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Normal() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction ReferenceDir() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParametrised() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_PlaneSurface {
	Handle_IGESSolid_PlaneSurface GetHandle() {
	return *(Handle_IGESSolid_PlaneSurface*) &$self;
	}
};
%extend IGESSolid_PlaneSurface {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_PlaneSurface::~IGESSolid_PlaneSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_PlaneSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SphericalSurface;
class IGESSolid_SphericalSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SphericalSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Point &aCenter, const Standard_Real aRadius, const Handle_IGESGeom_Direction &anAxis, const Handle_IGESGeom_Direction &aRefdir);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction ReferenceDir() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParametrised() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SphericalSurface {
	Handle_IGESSolid_SphericalSurface GetHandle() {
	return *(Handle_IGESSolid_SphericalSurface*) &$self;
	}
};
%extend IGESSolid_SphericalSurface {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SphericalSurface::~IGESSolid_SphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Face;
class IGESSolid_Face : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Face();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aSurface, const Standard_Boolean outerLoopFlag, const Handle_IGESSolid_HArray1OfLoop &loops);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		Standard_Integer NbLoops() const;
		%feature("autodoc", "1");
		Standard_Boolean HasOuterLoop() const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop Loop(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Face {
	Handle_IGESSolid_Face GetHandle() {
	return *(Handle_IGESSolid_Face*) &$self;
	}
};
%extend IGESSolid_Face {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Face::~IGESSolid_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Loop;
class IGESSolid_Loop : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Loop();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &types, const Handle_IGESData_HArray1OfIGESEntity &edges, const Handle_TColStd_HArray1OfInteger &index, const Handle_TColStd_HArray1OfInteger &orient, const Handle_TColStd_HArray1OfInteger &nbParameterCurves, const Handle_IGESBasic_HArray1OfHArray1OfInteger &isoparametricFlags, const Handle_IGESBasic_HArray1OfHArray1OfIGESEntity &curves);
		%feature("autodoc", "1");
		Standard_Boolean IsBound() const;
		%feature("autodoc", "1");
		void SetBound(const Standard_Boolean bound);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Integer EdgeType(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Orientation(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbParameterCurves(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIsoparametric(const Standard_Integer EdgeIndex, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ParametricCurve(const Standard_Integer EdgeIndex, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Standard_Integer ListIndex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Loop {
	Handle_IGESSolid_Loop GetHandle() {
	return *(Handle_IGESSolid_Loop*) &$self;
	}
};
%extend IGESSolid_Loop {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Loop::~IGESSolid_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolCylindricalSurface;
class IGESSolid_ToolCylindricalSurface {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolCylindricalSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_CylindricalSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_CylindricalSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_CylindricalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_CylindricalSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_CylindricalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_CylindricalSurface &entfrom, const Handle_IGESSolid_CylindricalSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_CylindricalSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolCylindricalSurface::~IGESSolid_ToolCylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolCylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ConicalSurface;
class IGESSolid_ConicalSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_ConicalSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Point &aLocation, const Handle_IGESGeom_Direction &anAxis, const Standard_Real aRadius, const Standard_Real anAngle, const Handle_IGESGeom_Direction &aRefdir);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point LocationPoint() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Axis() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction ReferenceDir() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParametrised() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_ConicalSurface {
	Handle_IGESSolid_ConicalSurface GetHandle() {
	return *(Handle_IGESSolid_ConicalSurface*) &$self;
	}
};
%extend IGESSolid_ConicalSurface {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_ConicalSurface::~IGESSolid_ConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolShell;
class IGESSolid_ToolShell {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolShell();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Shell &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Shell &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Shell &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Shell &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Shell &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Shell &entfrom, const Handle_IGESSolid_Shell &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Shell &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolShell::~IGESSolid_ToolShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSolidAssembly;
class IGESSolid_ToolSolidAssembly {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSolidAssembly();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SolidAssembly &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SolidAssembly &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SolidAssembly &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SolidAssembly &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SolidAssembly &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SolidAssembly &entfrom, const Handle_IGESSolid_SolidAssembly &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SolidAssembly &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSolidAssembly::~IGESSolid_ToolSolidAssembly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSolidAssembly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolVertexList;
class IGESSolid_ToolVertexList {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolVertexList();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_VertexList &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_VertexList &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_VertexList &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_VertexList &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_VertexList &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_VertexList &entfrom, const Handle_IGESSolid_VertexList &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_VertexList &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolVertexList::~IGESSolid_ToolVertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolVertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolPlaneSurface;
class IGESSolid_ToolPlaneSurface {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolPlaneSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_PlaneSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_PlaneSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_PlaneSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_PlaneSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_PlaneSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_PlaneSurface &entfrom, const Handle_IGESSolid_PlaneSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_PlaneSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolPlaneSurface::~IGESSolid_ToolPlaneSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolPlaneSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolSolidOfLinearExtrusion;
class IGESSolid_ToolSolidOfLinearExtrusion {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolSolidOfLinearExtrusion();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_SolidOfLinearExtrusion &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_SolidOfLinearExtrusion &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_SolidOfLinearExtrusion &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_SolidOfLinearExtrusion &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_SolidOfLinearExtrusion &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_SolidOfLinearExtrusion &entfrom, const Handle_IGESSolid_SolidOfLinearExtrusion &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_SolidOfLinearExtrusion &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolSolidOfLinearExtrusion::~IGESSolid_ToolSolidOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolSolidOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ToolCylinder;
class IGESSolid_ToolCylinder {
	public:
		%feature("autodoc", "1");
		IGESSolid_ToolCylinder();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESSolid_Cylinder &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESSolid_Cylinder &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESSolid_Cylinder &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESSolid_Cylinder &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESSolid_Cylinder &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESSolid_Cylinder &entfrom, const Handle_IGESSolid_Cylinder &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESSolid_Cylinder &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESSolid_ToolCylinder::~IGESSolid_ToolCylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ToolCylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ReadWriteModule;
class IGESSolid_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESSolid_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_ReadWriteModule {
	Handle_IGESSolid_ReadWriteModule GetHandle() {
	return *(Handle_IGESSolid_ReadWriteModule*) &$self;
	}
};
%extend IGESSolid_ReadWriteModule {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_ReadWriteModule::~IGESSolid_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_SolidAssembly;
class IGESSolid_SolidAssembly : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_SolidAssembly();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &allItems, const Handle_IGESGeom_HArray1OfTransformationMatrix &allMatrices);
		%feature("autodoc", "1");
		Standard_Boolean HasBrep() const;
		%feature("autodoc", "1");
		void SetBrep(const Standard_Boolean hasbrep);
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Item(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix TransfMatrix(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_SolidAssembly {
	Handle_IGESSolid_SolidAssembly GetHandle() {
	return *(Handle_IGESSolid_SolidAssembly*) &$self;
	}
};
%extend IGESSolid_SolidAssembly {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_SolidAssembly::~IGESSolid_SolidAssembly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_SolidAssembly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_GeneralModule;
class IGESSolid_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESSolid_GeneralModule();
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
%extend IGESSolid_GeneralModule {
	Handle_IGESSolid_GeneralModule GetHandle() {
	return *(Handle_IGESSolid_GeneralModule*) &$self;
	}
};
%extend IGESSolid_GeneralModule {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_GeneralModule::~IGESSolid_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_Block;
class IGESSolid_Block : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_Block();
		%feature("autodoc", "1");
		void Init(const gp_XYZ aSize, const gp_XYZ aCorner, const gp_XYZ aXAxis, const gp_XYZ aZAxis);
		%feature("autodoc", "1");
		gp_XYZ Size() const;
		%feature("autodoc", "1");
		Standard_Real XLength() const;
		%feature("autodoc", "1");
		Standard_Real YLength() const;
		%feature("autodoc", "1");
		Standard_Real ZLength() const;
		%feature("autodoc", "1");
		gp_Pnt Corner() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCorner() const;
		%feature("autodoc", "1");
		gp_Dir XAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedXAxis() const;
		%feature("autodoc", "1");
		gp_Dir YAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedYAxis() const;
		%feature("autodoc", "1");
		gp_Dir ZAxis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedZAxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_Block {
	Handle_IGESSolid_Block GetHandle() {
	return *(Handle_IGESSolid_Block*) &$self;
	}
};
%extend IGESSolid_Block {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_Block::~IGESSolid_Block %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_Block {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESSolid_ManifoldSolid;
class IGESSolid_ManifoldSolid : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESSolid_ManifoldSolid();
		%feature("autodoc", "1");
		void Init(const Handle_IGESSolid_Shell &aShell, const Standard_Boolean shellflag, const Handle_IGESSolid_HArray1OfShell &voidShells, const Handle_TColStd_HArray1OfInteger &voidShellFlags);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell Shell() const;
		%feature("autodoc", "1");
		Standard_Boolean OrientationFlag() const;
		%feature("autodoc", "1");
		Standard_Integer NbVoidShells() const;
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell VoidShell(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean VoidOrientationFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESSolid_ManifoldSolid {
	Handle_IGESSolid_ManifoldSolid GetHandle() {
	return *(Handle_IGESSolid_ManifoldSolid*) &$self;
	}
};
%extend IGESSolid_ManifoldSolid {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") IGESSolid_ManifoldSolid::~IGESSolid_ManifoldSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESSolid_ManifoldSolid {
	void _kill_pointed() {
		delete $self;
	}
};

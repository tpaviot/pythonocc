/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Geom2dToIGES
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2dToIGES_renames.i


%include Geom2dToIGES_required_python_modules.i


%include Geom2dToIGES_dependencies.i


%include Geom2dToIGES_headers.i




%nodefaultctor Geom2dToIGES_Geom2dEntity;
class Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dEntity();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dEntity(const Geom2dToIGES_Geom2dEntity &GE);
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		void SetUnit(const Standard_Real unit);
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;

};
%feature("shadow") Geom2dToIGES_Geom2dEntity::~Geom2dToIGES_Geom2dEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dToIGES_Geom2dEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dToIGES_Geom2dCurve;
class Geom2dToIGES_Geom2dCurve : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dCurve();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dCurve(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Transfer2dCurve(const Handle_Geom2d_Curve &start, const Standard_Real Udeb, const Standard_Real Ufin);

};
%feature("shadow") Geom2dToIGES_Geom2dCurve::~Geom2dToIGES_Geom2dCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dToIGES_Geom2dCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dToIGES_Geom2dPoint;
class Geom2dToIGES_Geom2dPoint : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dPoint();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dPoint(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Transfer2dPoint(const Handle_Geom2d_Point &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point Transfer2dPoint(const Handle_Geom2d_CartesianPoint &start);

};
%feature("shadow") Geom2dToIGES_Geom2dPoint::~Geom2dToIGES_Geom2dPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dToIGES_Geom2dPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dToIGES_Geom2dVector;
class Geom2dToIGES_Geom2dVector : public Geom2dToIGES_Geom2dEntity {
	public:
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dVector();
		%feature("autodoc", "1");
		Geom2dToIGES_Geom2dVector(const Geom2dToIGES_Geom2dEntity &G2dE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_Vector &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_VectorWithMagnitude &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction Transfer2dVector(const Handle_Geom2d_Direction &start);

};
%feature("shadow") Geom2dToIGES_Geom2dVector::~Geom2dToIGES_Geom2dVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dToIGES_Geom2dVector {
	void _kill_pointed() {
		delete $self;
	}
};

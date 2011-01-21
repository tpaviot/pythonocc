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

%module TopClass
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopClass_renames.i


%include TopClass_required_python_modules.i


%include TopClass_dependencies.i


%include TopClass_headers.i




%nodefaultctor TopClass_Intersection3d;
class TopClass_Intersection3d {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(const gp_Lin L, const Standard_Real Prm, const Standard_Real Tol, const TopoDS_Face Face);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasAPoint() const;
		%feature("autodoc", "1");
		virtual		const IntCurveSurface_IntersectionPoint & Point() const;
		%feature("autodoc", "1");
		virtual		TopAbs_State State() const;

};
%feature("shadow") TopClass_Intersection3d::~TopClass_Intersection3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopClass_Intersection3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopClass_SolidExplorer;
class TopClass_SolidExplorer {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const gp_Pnt P) const;
		%feature("autodoc","Segment(const P) -> Standard_Real");

		virtual		void Segment(const gp_Pnt P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc","OtherSegment(const P) -> Standard_Real");

		virtual		void OtherSegment(const gp_Pnt P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void InitShell();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreShells() const;
		%feature("autodoc", "1");
		virtual		void NextShell();
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectShell(const gp_Lin L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		virtual		void InitFace();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreFaces() const;
		%feature("autodoc", "1");
		virtual		void NextFace();
		%feature("autodoc", "1");
		virtual		TopoDS_Face CurrentFace() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectFace(const gp_Lin L, const Standard_Real Par) const;

};
%feature("shadow") TopClass_SolidExplorer::~TopClass_SolidExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopClass_SolidExplorer {
	void _kill_pointed() {
		delete $self;
	}
};

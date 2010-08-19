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

%module IntCurvesFace
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntCurvesFace_renames.i


%include IntCurvesFace_required_python_modules.i


%include IntCurvesFace_dependencies.i


%include IntCurvesFace_headers.i




%nodefaultctor IntCurvesFace_Intersector;
class IntCurvesFace_Intersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_Intersector(const TopoDS_Face &F, const Standard_Real aTol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		GeomAbs_SurfaceType SurfaceType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		TopAbs_State ClassifyUVPoint(const gp_Pnt2d &Puv) const;
		%feature("autodoc", "1");
		Bnd_Box Bounding() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") IntCurvesFace_Intersector::~IntCurvesFace_Intersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurvesFace_Intersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurvesFace_ShapeIntersector;
class IntCurvesFace_ShapeIntersector {
	public:
		%feature("autodoc", "1");
		IntCurvesFace_ShapeIntersector();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &Sh, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void PerformNearest(const gp_Lin &L, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &HCu, const Standard_Real PInf, const Standard_Real PSup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real WParameter(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer i) const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition(const Standard_Integer i) const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer i) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const Standard_Integer i) const;
		%feature("autodoc", "1");
		void SortResult();
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") IntCurvesFace_ShapeIntersector::~IntCurvesFace_ShapeIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurvesFace_ShapeIntersector {
	void _kill_pointed() {
		delete $self;
	}
};

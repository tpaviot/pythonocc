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
%module XDEDRAW

%include XDEDRAW_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XDEDRAW_dependencies.i


%include XDEDRAW_headers.i




%nodefaultctor XDEDRAW_Common;
class XDEDRAW_Common {
	public:
		%feature("autodoc", "1");
		XDEDRAW_Common();
		%feature("autodoc", "1");
		void InitCommands(Draw_Interpretor & theCommands);

};
%extend XDEDRAW_Common {
	~XDEDRAW_Common() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW_Common\n");}
	}
};


%nodefaultctor XDEDRAW_Layers;
class XDEDRAW_Layers {
	public:
		%feature("autodoc", "1");
		XDEDRAW_Layers();
		%feature("autodoc", "1");
		void InitCommands(Draw_Interpretor & theCommands);

};
%extend XDEDRAW_Layers {
	~XDEDRAW_Layers() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW_Layers\n");}
	}
};


%nodefaultctor XDEDRAW;
class XDEDRAW {
	public:
		%feature("autodoc", "1");
		XDEDRAW();
		%feature("autodoc", "1");
		void Init(Draw_Interpretor & di);
		%feature("autodoc", "1");
		void Factory(Draw_Interpretor & theDI);

};
%extend XDEDRAW {
	~XDEDRAW() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW\n");}
	}
};


%nodefaultctor XDEDRAW_Colors;
class XDEDRAW_Colors {
	public:
		%feature("autodoc", "1");
		XDEDRAW_Colors();
		%feature("autodoc", "1");
		void InitCommands(Draw_Interpretor & theCommands);

};
%extend XDEDRAW_Colors {
	~XDEDRAW_Colors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW_Colors\n");}
	}
};


%nodefaultctor XDEDRAW_Shapes;
class XDEDRAW_Shapes {
	public:
		%feature("autodoc", "1");
		XDEDRAW_Shapes();
		%feature("autodoc", "1");
		void InitCommands(Draw_Interpretor & theCommands);

};
%extend XDEDRAW_Shapes {
	~XDEDRAW_Shapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW_Shapes\n");}
	}
};


%nodefaultctor XDEDRAW_Props;
class XDEDRAW_Props {
	public:
		%feature("autodoc", "1");
		XDEDRAW_Props();
		%feature("autodoc", "1");
		void InitCommands(Draw_Interpretor & theCommands);

};
%extend XDEDRAW_Props {
	~XDEDRAW_Props() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XDEDRAW_Props\n");}
	}
};

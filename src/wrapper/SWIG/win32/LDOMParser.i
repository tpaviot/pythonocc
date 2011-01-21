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

%module LDOMParser
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include LDOMParser_renames.i


%include LDOMParser_required_python_modules.i


%include LDOMParser_dependencies.i


%include LDOMParser_headers.i




%nodefaultctor LDOMParser;
class LDOMParser {
	public:
		%feature("autodoc", "1");
		LDOMParser();
		%feature("autodoc", "1");
		LDOM_Document getDocument();
		%feature("autodoc", "1");
		const TCollection_AsciiString & GetError(TCollection_AsciiString & aData) const;

};
%feature("shadow") LDOMParser::~LDOMParser %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LDOMParser {
	void _kill_pointed() {
		delete $self;
	}
};

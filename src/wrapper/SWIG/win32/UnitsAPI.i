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
%module UnitsAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include UnitsAPI_dependencies.i


%include UnitsAPI_headers.i


enum UnitsAPI_SystemUnits {
	UnitsAPI_DEFAULT,
	UnitsAPI_SI,
	UnitsAPI_MDTV,
	};



%nodefaultctor UnitsAPI;
class UnitsAPI {
	public:
		%feature("autodoc", "1");
		UnitsAPI();
		%feature("autodoc", "1");
		static		Standard_Real CurrentToLS(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		Standard_Real CurrentToSI(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		Standard_Real CurrentFromLS(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		Standard_Real CurrentFromSI(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		Standard_Real AnyToLS(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real AnyToLS(const Standard_Real aData, const char * aUnit, Handle_Units_Dimensions & aDim);
		%feature("autodoc", "1");
		static		Standard_Real AnyToSI(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real AnyToSI(const Standard_Real aData, const char * aUnit, Handle_Units_Dimensions & aDim);
		%feature("autodoc", "1");
		static		Standard_Real AnyFromLS(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real AnyFromSI(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real CurrentToAny(const Standard_Real aData, const char * aQuantity, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real CurrentFromAny(const Standard_Real aData, const char * aQuantity, const char * aUnit);
		%feature("autodoc", "1");
		static		Standard_Real AnyToAny(const Standard_Real aData, const char * aUnit1, const char * aUnit2);
		%feature("autodoc", "1");
		static		Standard_Real LSToSI(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		Standard_Real SIToLS(const Standard_Real aData, const char * aQuantity);
		%feature("autodoc", "1");
		static		void SetLocalSystem(const UnitsAPI_SystemUnits aSystemUnit=UnitsAPI_SI);
		%feature("autodoc", "1");
		static		UnitsAPI_SystemUnits LocalSystem();
		%feature("autodoc", "1");
		static		void SetCurrentUnit(const char * aQuantity, const char * aUnit);
		%feature("autodoc", "1");
		static		char * CurrentUnit(const char * aQuantity);
		%feature("autodoc", "1");
		static		void Save();
		%feature("autodoc", "1");
		static		void Reload();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions Dimensions(const char * aQuantity);
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionLess();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionMass();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionLength();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionTime();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionElectricCurrent();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionThermodynamicTemperature();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionAmountOfSubstance();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionLuminousIntensity();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionPlaneAngle();
		%feature("autodoc", "1");
		static		Handle_Units_Dimensions DimensionSolidAngle();
		%feature("autodoc", "1");
		static		Standard_Boolean Check(const char * aQuantity, const char * aUnit);

};
%feature("shadow") UnitsAPI::~UnitsAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend UnitsAPI {
	void _kill_pointed() {
		delete $self;
	}
};

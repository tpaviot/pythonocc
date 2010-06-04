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
%module Message
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Message_dependencies.i


%include Message_headers.i


enum Message_Status {
	Message_None,
	Message_Done1,
	Message_Done2,
	Message_Done3,
	Message_Done4,
	Message_Done5,
	Message_Done6,
	Message_Done7,
	Message_Done8,
	Message_Done9,
	Message_Done10,
	Message_Done11,
	Message_Done12,
	Message_Done13,
	Message_Done14,
	Message_Done15,
	Message_Done16,
	Message_Done17,
	Message_Done18,
	Message_Done19,
	Message_Done20,
	Message_Done21,
	Message_Done22,
	Message_Done23,
	Message_Done24,
	Message_Done25,
	Message_Done26,
	Message_Done27,
	Message_Done28,
	Message_Done29,
	Message_Done30,
	Message_Done31,
	Message_Done32,
	Message_Warn1,
	Message_Warn2,
	Message_Warn3,
	Message_Warn4,
	Message_Warn5,
	Message_Warn6,
	Message_Warn7,
	Message_Warn8,
	Message_Warn9,
	Message_Warn10,
	Message_Warn11,
	Message_Warn12,
	Message_Warn13,
	Message_Warn14,
	Message_Warn15,
	Message_Warn16,
	Message_Warn17,
	Message_Warn18,
	Message_Warn19,
	Message_Warn20,
	Message_Warn21,
	Message_Warn22,
	Message_Warn23,
	Message_Warn24,
	Message_Warn25,
	Message_Warn26,
	Message_Warn27,
	Message_Warn28,
	Message_Warn29,
	Message_Warn30,
	Message_Warn31,
	Message_Warn32,
	Message_Alarm1,
	Message_Alarm2,
	Message_Alarm3,
	Message_Alarm4,
	Message_Alarm5,
	Message_Alarm6,
	Message_Alarm7,
	Message_Alarm8,
	Message_Alarm9,
	Message_Alarm10,
	Message_Alarm11,
	Message_Alarm12,
	Message_Alarm13,
	Message_Alarm14,
	Message_Alarm15,
	Message_Alarm16,
	Message_Alarm17,
	Message_Alarm18,
	Message_Alarm19,
	Message_Alarm20,
	Message_Alarm21,
	Message_Alarm22,
	Message_Alarm23,
	Message_Alarm24,
	Message_Alarm25,
	Message_Alarm26,
	Message_Alarm27,
	Message_Alarm28,
	Message_Alarm29,
	Message_Alarm30,
	Message_Alarm31,
	Message_Alarm32,
	Message_Fail1,
	Message_Fail2,
	Message_Fail3,
	Message_Fail4,
	Message_Fail5,
	Message_Fail6,
	Message_Fail7,
	Message_Fail8,
	Message_Fail9,
	Message_Fail10,
	Message_Fail11,
	Message_Fail12,
	Message_Fail13,
	Message_Fail14,
	Message_Fail15,
	Message_Fail16,
	Message_Fail17,
	Message_Fail18,
	Message_Fail19,
	Message_Fail20,
	Message_Fail21,
	Message_Fail22,
	Message_Fail23,
	Message_Fail24,
	Message_Fail25,
	Message_Fail26,
	Message_Fail27,
	Message_Fail28,
	Message_Fail29,
	Message_Fail30,
	Message_Fail31,
	Message_Fail32,
	};

enum Message_Gravity {
	Message_Trace,
	Message_Info,
	Message_Warning,
	Message_Alarm,
	Message_Fail,
	};

enum Message_StatusType {
	Message_DONE,
	Message_WARN,
	Message_ALARM,
	Message_FAIL,
	};



%nodefaultctor Handle_Message_Printer;
class Handle_Message_Printer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Message_Printer();
		%feature("autodoc", "1");
		Handle_Message_Printer(const Handle_Message_Printer &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Printer(const Message_Printer *anItem);
		%feature("autodoc", "1");
		Handle_Message_Printer & operator=(const Handle_Message_Printer &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Printer & operator=(const Message_Printer *anItem);
		%feature("autodoc", "1");
		Handle_Message_Printer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_Printer {
	Message_Printer* GetObject() {
	return (Message_Printer*)$self->Access();
	}
};
%feature("shadow") Handle_Message_Printer::~Handle_Message_Printer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_Printer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_PrinterOStream;
class Handle_Message_PrinterOStream : public Handle_Message_Printer {
	public:
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream();
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream(const Handle_Message_PrinterOStream &aHandle);
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream(const Message_PrinterOStream *anItem);
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream & operator=(const Handle_Message_PrinterOStream &aHandle);
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream & operator=(const Message_PrinterOStream *anItem);
		%feature("autodoc", "1");
		Handle_Message_PrinterOStream const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_PrinterOStream {
	Message_PrinterOStream* GetObject() {
	return (Message_PrinterOStream*)$self->Access();
	}
};
%feature("shadow") Handle_Message_PrinterOStream::~Handle_Message_PrinterOStream %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_PrinterOStream {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_Messenger;
class Handle_Message_Messenger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Message_Messenger();
		%feature("autodoc", "1");
		Handle_Message_Messenger(const Handle_Message_Messenger &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Messenger(const Message_Messenger *anItem);
		%feature("autodoc", "1");
		Handle_Message_Messenger & operator=(const Handle_Message_Messenger &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Messenger & operator=(const Message_Messenger *anItem);
		%feature("autodoc", "1");
		Handle_Message_Messenger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_Messenger {
	Message_Messenger* GetObject() {
	return (Message_Messenger*)$self->Access();
	}
};
%feature("shadow") Handle_Message_Messenger::~Handle_Message_Messenger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_Messenger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_SequenceNodeOfSequenceOfPrinters;
class Handle_Message_SequenceNodeOfSequenceOfPrinters : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters();
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters(const Handle_Message_SequenceNodeOfSequenceOfPrinters &aHandle);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters(const Message_SequenceNodeOfSequenceOfPrinters *anItem);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters & operator=(const Handle_Message_SequenceNodeOfSequenceOfPrinters &aHandle);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters & operator=(const Message_SequenceNodeOfSequenceOfPrinters *anItem);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfPrinters const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_SequenceNodeOfSequenceOfPrinters {
	Message_SequenceNodeOfSequenceOfPrinters* GetObject() {
	return (Message_SequenceNodeOfSequenceOfPrinters*)$self->Access();
	}
};
%feature("shadow") Handle_Message_SequenceNodeOfSequenceOfPrinters::~Handle_Message_SequenceNodeOfSequenceOfPrinters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_SequenceNodeOfSequenceOfPrinters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_ListNodeOfListOfMsg;
class Handle_Message_ListNodeOfListOfMsg : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg();
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg(const Handle_Message_ListNodeOfListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg(const Message_ListNodeOfListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg & operator=(const Handle_Message_ListNodeOfListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg & operator=(const Message_ListNodeOfListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_Message_ListNodeOfListOfMsg const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_ListNodeOfListOfMsg {
	Message_ListNodeOfListOfMsg* GetObject() {
	return (Message_ListNodeOfListOfMsg*)$self->Access();
	}
};
%feature("shadow") Handle_Message_ListNodeOfListOfMsg::~Handle_Message_ListNodeOfListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_ListNodeOfListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_ProgressIndicator;
class Handle_Message_ProgressIndicator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator();
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator(const Handle_Message_ProgressIndicator &aHandle);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator(const Message_ProgressIndicator *anItem);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator & operator=(const Handle_Message_ProgressIndicator &aHandle);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator & operator=(const Message_ProgressIndicator *anItem);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_ProgressIndicator {
	Message_ProgressIndicator* GetObject() {
	return (Message_ProgressIndicator*)$self->Access();
	}
};
%feature("shadow") Handle_Message_ProgressIndicator::~Handle_Message_ProgressIndicator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_ProgressIndicator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_SequenceNodeOfSequenceOfProgressScale;
class Handle_Message_SequenceNodeOfSequenceOfProgressScale : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale();
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale(const Handle_Message_SequenceNodeOfSequenceOfProgressScale &aHandle);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale(const Message_SequenceNodeOfSequenceOfProgressScale *anItem);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale & operator=(const Handle_Message_SequenceNodeOfSequenceOfProgressScale &aHandle);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale & operator=(const Message_SequenceNodeOfSequenceOfProgressScale *anItem);
		%feature("autodoc", "1");
		Handle_Message_SequenceNodeOfSequenceOfProgressScale const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_SequenceNodeOfSequenceOfProgressScale {
	Message_SequenceNodeOfSequenceOfProgressScale* GetObject() {
	return (Message_SequenceNodeOfSequenceOfProgressScale*)$self->Access();
	}
};
%feature("shadow") Handle_Message_SequenceNodeOfSequenceOfProgressScale::~Handle_Message_SequenceNodeOfSequenceOfProgressScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_SequenceNodeOfSequenceOfProgressScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Message_Algorithm;
class Handle_Message_Algorithm : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Message_Algorithm();
		%feature("autodoc", "1");
		Handle_Message_Algorithm(const Handle_Message_Algorithm &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Algorithm(const Message_Algorithm *anItem);
		%feature("autodoc", "1");
		Handle_Message_Algorithm & operator=(const Handle_Message_Algorithm &aHandle);
		%feature("autodoc", "1");
		Handle_Message_Algorithm & operator=(const Message_Algorithm *anItem);
		%feature("autodoc", "1");
		Handle_Message_Algorithm const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Message_Algorithm {
	Message_Algorithm* GetObject() {
	return (Message_Algorithm*)$self->Access();
	}
};
%feature("shadow") Handle_Message_Algorithm::~Handle_Message_Algorithm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Message_Algorithm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ProgressIndicator;
class Message_ProgressIndicator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Reset();
		%feature("autodoc", "1");
		void SetName(const char * name);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		void SetRange(const Standard_Real min, const Standard_Real max);
		%feature("autodoc", "1");
		void SetStep(const Standard_Real step);
		%feature("autodoc", "1");
		void SetInfinite(const Standard_Boolean isInf=1);
		%feature("autodoc", "1");
		void SetScale(const char * name, const Standard_Real min, const Standard_Real max, const Standard_Real step, const Standard_Boolean isInf=0);
		%feature("autodoc", "1");
		void SetScale(const Standard_Real min, const Standard_Real max, const Standard_Real step, const Standard_Boolean isInf=0);
		%feature("autodoc","GetScale() -> [Standard_Real, Standard_Real, Standard_Real]");

		void GetScale(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & isInf) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Real val);
		%feature("autodoc", "1");
		Standard_Real GetValue() const;
		%feature("autodoc", "1");
		void Increment();
		%feature("autodoc", "1");
		void Increment(const Standard_Real step);
		%feature("autodoc", "1");
		Standard_Boolean NewScope(const char * name=0);
		%feature("autodoc", "1");
		Standard_Boolean NewScope(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Standard_Boolean NewScope(const Standard_Real span, const char * name=0);
		%feature("autodoc", "1");
		Standard_Boolean NewScope(const Standard_Real span, const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Standard_Boolean EndScope();
		%feature("autodoc", "1");
		Standard_Boolean NextScope(const char * name=0);
		%feature("autodoc", "1");
		Standard_Boolean NextScope(const Standard_Real span, const char * name=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UserBreak();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Show(const Standard_Boolean force=1);
		%feature("autodoc", "1");
		Standard_Real GetPosition() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbScopes() const;
		%feature("autodoc", "1");
		const Message_ProgressScale & GetScope(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_ProgressIndicator {
	Handle_Message_ProgressIndicator GetHandle() {
	return *(Handle_Message_ProgressIndicator*) &$self;
	}
};
%extend Message_ProgressIndicator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_ProgressIndicator::~Message_ProgressIndicator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ProgressIndicator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ProgressScale;
class Message_ProgressScale {
	public:
		%feature("autodoc", "1");
		Message_ProgressScale();
		%feature("autodoc", "1");
		void SetName(const char * theName);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &theName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		void SetMin(const Standard_Real theMin);
		%feature("autodoc", "1");
		Standard_Real GetMin() const;
		%feature("autodoc", "1");
		void SetMax(const Standard_Real theMax);
		%feature("autodoc", "1");
		Standard_Real GetMax() const;
		%feature("autodoc", "1");
		void SetRange(const Standard_Real theMin, const Standard_Real theMax);
		%feature("autodoc", "1");
		void SetStep(const Standard_Real theStep);
		%feature("autodoc", "1");
		Standard_Real GetStep() const;
		%feature("autodoc", "1");
		void SetInfinite(const Standard_Boolean theInfinite=1);
		%feature("autodoc", "1");
		Standard_Boolean GetInfinite() const;
		%feature("autodoc", "1");
		void SetScale(const Standard_Real theMin, const Standard_Real theMax, const Standard_Real theStep, const Standard_Boolean theInfinite=1);
		%feature("autodoc", "1");
		void SetSpan(const Standard_Real theFirst, const Standard_Real theLast);
		%feature("autodoc", "1");
		Standard_Real GetFirst() const;
		%feature("autodoc", "1");
		Standard_Real GetLast() const;
		%feature("autodoc", "1");
		Standard_Real LocalToBase(const Standard_Real val) const;
		%feature("autodoc", "1");
		Standard_Real BaseToLocal(const Standard_Real val) const;

};
%feature("shadow") Message_ProgressScale::~Message_ProgressScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ProgressScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_Messenger;
class Message_Messenger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Message_Messenger();
		%feature("autodoc", "1");
		Message_Messenger(const Handle_Message_Printer &thePrinter);
		%feature("autodoc", "1");
		Standard_Boolean AddPrinter(const Handle_Message_Printer &thePrinter);
		%feature("autodoc", "1");
		Standard_Boolean RemovePrinter(const Handle_Message_Printer &thePrinter);
		%feature("autodoc", "1");
		Standard_Integer RemovePrinters(const Handle_Standard_Type &theType);
		%feature("autodoc", "1");
		const Message_SequenceOfPrinters & Printers() const;
		%feature("autodoc", "1");
		Message_SequenceOfPrinters & ChangePrinters();
		%feature("autodoc", "1");
		void Send(const char * theString, const Message_Gravity theGravity=Message_Warning, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		void Send(const TCollection_AsciiString &theString, const Message_Gravity theGravity=Message_Warning, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		void Send(const TCollection_ExtendedString &theString, const Message_Gravity theGravity=Message_Warning, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_Messenger {
	Handle_Message_Messenger GetHandle() {
	return *(Handle_Message_Messenger*) &$self;
	}
};
%extend Message_Messenger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_Messenger::~Message_Messenger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_Messenger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message;
class Message {
	public:
		%feature("autodoc", "1");
		Message();
		%feature("autodoc", "1");
		const Handle_Message_Messenger & DefaultMessenger();
		%feature("autodoc", "1");
		TCollection_AsciiString FillTime(const Standard_Integer Hour, const Standard_Integer Minute, const Standard_Real Second);

};
%feature("shadow") Message::~Message %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_SequenceOfPrinters;
class Message_SequenceOfPrinters : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Message_SequenceOfPrinters();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Message_SequenceOfPrinters & Assign(const Message_SequenceOfPrinters &Other);
		%feature("autodoc", "1");
		const Message_SequenceOfPrinters & operator=(const Message_SequenceOfPrinters &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Message_Printer &T);
		%feature("autodoc", "1");
		void Append(Message_SequenceOfPrinters & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Message_Printer &T);
		%feature("autodoc", "1");
		void Prepend(Message_SequenceOfPrinters & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Message_Printer &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Message_SequenceOfPrinters & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Message_Printer &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Message_SequenceOfPrinters & S);
		%feature("autodoc", "1");
		const Handle_Message_Printer & First() const;
		%feature("autodoc", "1");
		const Handle_Message_Printer & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Message_SequenceOfPrinters & S);
		%feature("autodoc", "1");
		const Handle_Message_Printer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Message_Printer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Message_Printer &I);
		%feature("autodoc", "1");
		Handle_Message_Printer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Message_Printer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Message_SequenceOfPrinters::~Message_SequenceOfPrinters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_SequenceOfPrinters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_SequenceOfProgressScale;
class Message_SequenceOfProgressScale : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Message_SequenceOfProgressScale();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Message_SequenceOfProgressScale & Assign(const Message_SequenceOfProgressScale &Other);
		%feature("autodoc", "1");
		const Message_SequenceOfProgressScale & operator=(const Message_SequenceOfProgressScale &Other);
		%feature("autodoc", "1");
		void Append(const Message_ProgressScale &T);
		%feature("autodoc", "1");
		void Append(Message_SequenceOfProgressScale & S);
		%feature("autodoc", "1");
		void Prepend(const Message_ProgressScale &T);
		%feature("autodoc", "1");
		void Prepend(Message_SequenceOfProgressScale & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Message_ProgressScale &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Message_SequenceOfProgressScale & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Message_ProgressScale &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Message_SequenceOfProgressScale & S);
		%feature("autodoc", "1");
		const Message_ProgressScale & First() const;
		%feature("autodoc", "1");
		const Message_ProgressScale & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Message_SequenceOfProgressScale & S);
		%feature("autodoc", "1");
		const Message_ProgressScale & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Message_ProgressScale & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Message_ProgressScale &I);
		%feature("autodoc", "1");
		Message_ProgressScale & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Message_ProgressScale & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Message_SequenceOfProgressScale::~Message_SequenceOfProgressScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_SequenceOfProgressScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_SequenceNodeOfSequenceOfPrinters;
class Message_SequenceNodeOfSequenceOfPrinters : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Message_SequenceNodeOfSequenceOfPrinters(const Handle_Message_Printer &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Message_Printer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_SequenceNodeOfSequenceOfPrinters {
	Handle_Message_SequenceNodeOfSequenceOfPrinters GetHandle() {
	return *(Handle_Message_SequenceNodeOfSequenceOfPrinters*) &$self;
	}
};
%extend Message_SequenceNodeOfSequenceOfPrinters {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_SequenceNodeOfSequenceOfPrinters::~Message_SequenceNodeOfSequenceOfPrinters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_SequenceNodeOfSequenceOfPrinters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ProgressSentry;
class Message_ProgressSentry {
	public:
		%feature("autodoc", "1");
		Message_ProgressSentry(const Handle_Message_ProgressIndicator &PI, const char * name, const Standard_Real min, const Standard_Real max, const Standard_Real step, const Standard_Boolean isInf=0, const Standard_Real newScopeSpan=0.0);
		%feature("autodoc", "1");
		Message_ProgressSentry(const Handle_Message_ProgressIndicator &PI, const Handle_TCollection_HAsciiString &name, const Standard_Real min, const Standard_Real max, const Standard_Real step, const Standard_Boolean isInf=0, const Standard_Real newScopeSpan=0.0);
		%feature("autodoc", "1");
		void EndScope();
		%feature("autodoc", "1");
		void NextScope() const;
		%feature("autodoc", "1");
		void Next() const;
		%feature("autodoc", "1");
		void NextScope(const Standard_Real span) const;
		%feature("autodoc", "1");
		void Next(const double span) const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;

};
%feature("shadow") Message_ProgressSentry::~Message_ProgressSentry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ProgressSentry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ListOfMsg;
class Message_ListOfMsg {
	public:
		%feature("autodoc", "1");
		Message_ListOfMsg();
		%feature("autodoc", "1");
		void Assign(const Message_ListOfMsg &Other);
		%feature("autodoc", "1");
		void operator=(const Message_ListOfMsg &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Message_Msg &I);
		%feature("autodoc", "1");
		void Prepend(const Message_Msg &I, Message_ListIteratorOfListOfMsg & theIt);
		%feature("autodoc", "1");
		void Prepend(Message_ListOfMsg & Other);
		%feature("autodoc", "1");
		void Append(const Message_Msg &I);
		%feature("autodoc", "1");
		void Append(const Message_Msg &I, Message_ListIteratorOfListOfMsg & theIt);
		%feature("autodoc", "1");
		void Append(Message_ListOfMsg & Other);
		%feature("autodoc", "1");
		Message_Msg & First() const;
		%feature("autodoc", "1");
		Message_Msg & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Message_ListIteratorOfListOfMsg & It);
		%feature("autodoc", "1");
		void InsertBefore(const Message_Msg &I, Message_ListIteratorOfListOfMsg & It);
		%feature("autodoc", "1");
		void InsertBefore(Message_ListOfMsg & Other, Message_ListIteratorOfListOfMsg & It);
		%feature("autodoc", "1");
		void InsertAfter(const Message_Msg &I, Message_ListIteratorOfListOfMsg & It);
		%feature("autodoc", "1");
		void InsertAfter(Message_ListOfMsg & Other, Message_ListIteratorOfListOfMsg & It);

};
%feature("shadow") Message_ListOfMsg::~Message_ListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_MsgFile;
class Message_MsgFile {
	public:
		%feature("autodoc", "1");
		Message_MsgFile();
		%feature("autodoc", "1");
		Standard_Boolean Load(const char * theDirName, const char * theFileName);
		%feature("autodoc", "1");
		Standard_Boolean LoadFile(const char * theFName);
		%feature("autodoc", "1");
		void LoadFromEnv(const char * envname, const char * filename, const char * ext="");
		%feature("autodoc", "1");
		Standard_Boolean AddMsg(const TCollection_AsciiString &key, const TCollection_ExtendedString &text);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Msg(const char * key);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Msg(const TCollection_AsciiString &key);

};
%feature("shadow") Message_MsgFile::~Message_MsgFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_MsgFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_SequenceNodeOfSequenceOfProgressScale;
class Message_SequenceNodeOfSequenceOfProgressScale : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Message_SequenceNodeOfSequenceOfProgressScale(const Message_ProgressScale &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Message_ProgressScale & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_SequenceNodeOfSequenceOfProgressScale {
	Handle_Message_SequenceNodeOfSequenceOfProgressScale GetHandle() {
	return *(Handle_Message_SequenceNodeOfSequenceOfProgressScale*) &$self;
	}
};
%extend Message_SequenceNodeOfSequenceOfProgressScale {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_SequenceNodeOfSequenceOfProgressScale::~Message_SequenceNodeOfSequenceOfProgressScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_SequenceNodeOfSequenceOfProgressScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ListNodeOfListOfMsg;
class Message_ListNodeOfListOfMsg : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Message_ListNodeOfListOfMsg(const Message_Msg &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Message_Msg & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_ListNodeOfListOfMsg {
	Handle_Message_ListNodeOfListOfMsg GetHandle() {
	return *(Handle_Message_ListNodeOfListOfMsg*) &$self;
	}
};
%extend Message_ListNodeOfListOfMsg {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_ListNodeOfListOfMsg::~Message_ListNodeOfListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ListNodeOfListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_Printer;
class Message_Printer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Send(const TCollection_ExtendedString &theString, const Message_Gravity theGravity, const Standard_Boolean putEndl) const;
		%feature("autodoc", "1");
		virtual		void Send(const char * theString, const Message_Gravity theGravity, const Standard_Boolean putEndl) const;
		%feature("autodoc", "1");
		virtual		void Send(const TCollection_AsciiString &theString, const Message_Gravity theGravity, const Standard_Boolean putEndl) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_Printer {
	Handle_Message_Printer GetHandle() {
	return *(Handle_Message_Printer*) &$self;
	}
};
%extend Message_Printer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_Printer::~Message_Printer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_Printer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_PrinterOStream;
class Message_PrinterOStream : public Message_Printer {
	public:
		%feature("autodoc", "1");
		Message_PrinterOStream(const Message_Gravity theTraceLevel=Message_Warning);
		%feature("autodoc", "1");
		Message_PrinterOStream(const char * theFileName, const Standard_Boolean theDoAppend, const Message_Gravity theTraceLevel=Message_Warning);
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		Message_Gravity GetTraceLevel() const;
		%feature("autodoc", "1");
		void SetTraceLevel(const Message_Gravity theTraceLevel);
		%feature("autodoc", "1");
		Standard_Boolean GetUseUtf8() const;
		%feature("autodoc", "1");
		void SetUseUtf8(const Standard_Boolean useUtf8);
		%feature("autodoc", "1");
		Standard_OStream & GetStream() const;
		%feature("autodoc", "1");
		virtual		void Send(const char * theString, const Message_Gravity theGravity, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		virtual		void Send(const TCollection_AsciiString &theString, const Message_Gravity theGravity, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		virtual		void Send(const TCollection_ExtendedString &theString, const Message_Gravity theGravity, const Standard_Boolean putEndl=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Message_PrinterOStream {
	Handle_Message_PrinterOStream GetHandle() {
	return *(Handle_Message_PrinterOStream*) &$self;
	}
};
%extend Message_PrinterOStream {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Message_PrinterOStream::~Message_PrinterOStream %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_PrinterOStream {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_ListIteratorOfListOfMsg;
class Message_ListIteratorOfListOfMsg {
	public:
		%feature("autodoc", "1");
		Message_ListIteratorOfListOfMsg();
		%feature("autodoc", "1");
		Message_ListIteratorOfListOfMsg(const Message_ListOfMsg &L);
		%feature("autodoc", "1");
		void Initialize(const Message_ListOfMsg &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Message_Msg & Value() const;

};
%feature("shadow") Message_ListIteratorOfListOfMsg::~Message_ListIteratorOfListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_ListIteratorOfListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Message_Msg;
class Message_Msg {
	public:
		%feature("autodoc", "1");
		Message_Msg();
		%feature("autodoc", "1");
		Message_Msg(const Message_Msg &theMsg);
		%feature("autodoc", "1");
		Message_Msg(const char * theKey);
		%feature("autodoc", "1");
		Message_Msg(const TCollection_AsciiString &theKey);
		%feature("autodoc", "1");
		void Set(const char * theMsg);
		%feature("autodoc", "1");
		void Set(const TCollection_AsciiString &theMsg);
		%feature("autodoc", "1");
		Message_Msg & Arg(const char * theString);
		%feature("autodoc", "1");
		Message_Msg & Arg(const TCollection_AsciiString &theString);
		%feature("autodoc", "1");
		Message_Msg & Arg(const Handle_TCollection_HAsciiString &theString);
		%feature("autodoc", "1");
		Message_Msg & Arg(const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		Message_Msg & Arg(const Handle_TCollection_HExtendedString &theString);
		%feature("autodoc", "1");
		Message_Msg & Arg(const Standard_Integer theInt);
		%feature("autodoc", "1");
		Message_Msg & Arg(const Standard_Real theReal);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Original() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEdited() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Get();

};
%feature("shadow") Message_Msg::~Message_Msg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Message_Msg {
	void _kill_pointed() {
		delete $self;
	}
};

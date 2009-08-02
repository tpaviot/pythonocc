/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%{

// Headers necessary to define wrapped classes.

#include<Handle_Message_Algorithm.hxx>
#include<Handle_Message_ListNodeOfListOfMsg.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_Message_Printer.hxx>
#include<Handle_Message_PrinterOStream.hxx>
#include<Handle_Message_ProgressIndicator.hxx>
#include<Handle_Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Handle_Message_SequenceNodeOfSequenceOfProgressScale.hxx>
#include<Message.hxx>
#include<Message_Gravity.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<Message_ListNodeOfListOfMsg.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_Messenger.hxx>
#include<Message_Msg.hxx>
#include<Message_MsgFile.hxx>
#include<Message_Printer.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Message_SequenceNodeOfSequenceOfProgressScale.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Status.hxx>
#include<Message_StatusType.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_Standard_Type.hxx>
#include<Message.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
%}

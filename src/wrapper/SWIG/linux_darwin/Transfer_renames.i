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
%rename(downcast) Handle_Transfer_ProcessForFinder::DownCast;
%rename(downcast) Handle_Transfer_FinderProcess::DownCast;
%rename(downcast) Handle_Transfer_HSequenceOfFinder::DownCast;
%rename(downcast) Handle_Transfer_Finder::DownCast;
%rename(downcast) Handle_Transfer_ActorOfProcessForTransient::DownCast;
%rename(downcast) Handle_Transfer_DispatchControl::DownCast;
%rename(downcast) Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder::DownCast;
%rename(downcast) Handle_Transfer_ActorOfProcessForFinder::DownCast;
%rename(downcast) Handle_Transfer_TransientMapper::DownCast;
%rename(downcast) Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient::DownCast;
%rename(downcast) Handle_Transfer_Binder::DownCast;
%rename(downcast) Handle_Transfer_SimpleBinderOfTransient::DownCast;
%rename(downcast) Handle_Transfer_ProcessForTransient::DownCast;
%rename(downcast) Handle_Transfer_TransientProcess::DownCast;
%rename(downcast) Handle_Transfer_TransferFailure::DownCast;
%rename(downcast) Handle_Transfer_SequenceNodeOfSequenceOfBinder::DownCast;
%rename(downcast) Handle_Transfer_SequenceNodeOfSequenceOfFinder::DownCast;
%rename(downcast) Handle_Transfer_ActorOfTransientProcess::DownCast;
%rename(downcast) Handle_Transfer_BinderOfTransientInteger::DownCast;
%rename(downcast) Handle_Transfer_DataMapNodeOfDataMapOfTransientTransient::DownCast;
%rename(downcast) Handle_Transfer_ActorOfFinderProcess::DownCast;
%rename(downcast) Handle_Transfer_ActorDispatch::DownCast;
%rename(downcast) Handle_Transfer_HSequenceOfBinder::DownCast;
%rename(downcast) Handle_Transfer_MultipleBinder::DownCast;
%rename(downcast) Handle_Transfer_MapContainer::DownCast;
%rename(downcast) Handle_Transfer_VoidBinder::DownCast;
%rename(downcast) Handle_Transfer_ResultFromTransient::DownCast;
%rename(downcast) Handle_Transfer_ResultFromModel::DownCast;
%rename(downcast) Handle_Transfer_TransientListBinder::DownCast;
%rename(downcast) Handle_Transfer_TransferDeadLoop::DownCast;
%rename(gettypedresult) Transfer_SimpleBinderOfTransient::GetTypedResult;
%rename(hashcode) Transfer_FindHasher::HashCode;
%rename(isequal) Transfer_FindHasher::IsEqual;
%rename(raise) Transfer_TransferFailure::Raise;
%rename(raise) Transfer_TransferFailure::Raise;
%rename(newinstance) Transfer_TransferFailure::NewInstance;
%rename(raise) Transfer_TransferDeadLoop::Raise;
%rename(raise) Transfer_TransferDeadLoop::Raise;
%rename(newinstance) Transfer_TransferDeadLoop::NewInstance;
%rename(type) Transfer_DataInfo::Type;
%rename(typename) Transfer_DataInfo::TypeName;

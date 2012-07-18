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
%rename(DownCast) Handle_Transfer_Binder::DownCast;
%rename(DownCast) Handle_Transfer_ProcessForFinder::DownCast;
%rename(DownCast) Handle_Transfer_FinderProcess::DownCast;
%rename(DownCast) Handle_Transfer_HSequenceOfFinder::DownCast;
%rename(DownCast) Handle_Transfer_SimpleBinderOfTransient::DownCast;
%rename(DownCast) Handle_Transfer_ResultFromTransient::DownCast;
%rename(DownCast) Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder::DownCast;
%rename(DownCast) Handle_Transfer_ActorOfProcessForFinder::DownCast;
%rename(DownCast) Handle_Transfer_ActorOfFinderProcess::DownCast;
%rename(DownCast) Handle_Transfer_BinderOfTransientInteger::DownCast;
%rename(DownCast) Handle_Transfer_Finder::DownCast;
%rename(DownCast) Handle_Transfer_TransientMapper::DownCast;
%rename(DownCast) Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient::DownCast;
%rename(DownCast) Handle_Transfer_TransferFailure::DownCast;
%rename(DownCast) Handle_Transfer_SequenceNodeOfSequenceOfBinder::DownCast;
%rename(DownCast) Handle_Transfer_ProcessForTransient::DownCast;
%rename(DownCast) Handle_Transfer_TransientProcess::DownCast;
%rename(DownCast) Handle_Transfer_MultipleBinder::DownCast;
%rename(DownCast) Handle_Transfer_ActorOfProcessForTransient::DownCast;
%rename(DownCast) Handle_Transfer_ActorOfTransientProcess::DownCast;
%rename(DownCast) Handle_Transfer_DispatchControl::DownCast;
%rename(DownCast) Handle_Transfer_HSequenceOfBinder::DownCast;
%rename(DownCast) Handle_Transfer_ActorDispatch::DownCast;
%rename(DownCast) Handle_Transfer_VoidBinder::DownCast;
%rename(DownCast) Handle_Transfer_ResultFromModel::DownCast;
%rename(DownCast) Handle_Transfer_MapContainer::DownCast;
%rename(DownCast) Handle_Transfer_TransientListBinder::DownCast;
%rename(DownCast) Handle_Transfer_TransferDeadLoop::DownCast;
%rename(DownCast) Handle_Transfer_SequenceNodeOfSequenceOfFinder::DownCast;
%rename(Raise) Transfer_TransferFailure::Raise;
%rename(NewInstance) Transfer_TransferFailure::NewInstance;
%rename(Raise) Transfer_TransferDeadLoop::Raise;
%rename(NewInstance) Transfer_TransferDeadLoop::NewInstance;
%rename(HashCode) Transfer_FindHasher::HashCode;
%rename(IsEqual) Transfer_FindHasher::IsEqual;
%rename(GetTypedResult) Transfer_SimpleBinderOfTransient::GetTypedResult;
%rename(Type) Transfer_DataInfo::Type;
%rename(TypeName) Transfer_DataInfo::TypeName;

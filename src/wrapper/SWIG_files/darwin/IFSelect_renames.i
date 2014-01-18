/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_IFSelect_SignatureList::DownCast;
%rename(DownCast) Handle_IFSelect_WorkSession::DownCast;
%rename(DownCast) Handle_IFSelect_Transformer::DownCast;
%rename(DownCast) Handle_IFSelect_TransformStandard::DownCast;
%rename(DownCast) Handle_IFSelect_Dispatch::DownCast;
%rename(DownCast) Handle_IFSelect_AppliedModifiers::DownCast;
%rename(DownCast) Handle_IFSelect_GeneralModifier::DownCast;
%rename(DownCast) Handle_IFSelect_Modifier::DownCast;
%rename(DownCast) Handle_IFSelect_ModifReorder::DownCast;
%rename(DownCast) Handle_IFSelect_Activator::DownCast;
%rename(DownCast) Handle_IFSelect_Selection::DownCast;
%rename(DownCast) Handle_IFSelect_SelectDeduct::DownCast;
%rename(DownCast) Handle_IFSelect_SelectExplore::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSignedShared::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSignedSharing::DownCast;
%rename(DownCast) Handle_IFSelect_Signature::DownCast;
%rename(DownCast) Handle_IFSelect_ListEditor::DownCast;
%rename(DownCast) Handle_IFSelect_DispGlobal::DownCast;
%rename(DownCast) Handle_IFSelect_SessionDumper::DownCast;
%rename(DownCast) Handle_IFSelect_SelectExtract::DownCast;
%rename(DownCast) Handle_IFSelect_SelectUnknownEntities::DownCast;
%rename(DownCast) Handle_IFSelect_ModifEditForm::DownCast;
%rename(DownCast) Handle_IFSelect_SelectErrorEntities::DownCast;
%rename(DownCast) Handle_IFSelect_IntParam::DownCast;
%rename(DownCast) Handle_IFSelect_SignCounter::DownCast;
%rename(DownCast) Handle_IFSelect_SelectFlag::DownCast;
%rename(DownCast) Handle_IFSelect_HSeqOfSelection::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSuite::DownCast;
%rename(DownCast) Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier::DownCast;
%rename(DownCast) Handle_IFSelect_SelectControl::DownCast;
%rename(DownCast) Handle_IFSelect_WorkLibrary::DownCast;
%rename(DownCast) Handle_IFSelect_SelectCombine::DownCast;
%rename(DownCast) Handle_IFSelect_SelectIntersection::DownCast;
%rename(DownCast) Handle_IFSelect_SelectBase::DownCast;
%rename(DownCast) Handle_IFSelect_SelectModelEntities::DownCast;
%rename(DownCast) Handle_IFSelect_CheckCounter::DownCast;
%rename(DownCast) Handle_IFSelect_SelectModelRoots::DownCast;
%rename(DownCast) Handle_IFSelect_DispPerSignature::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSignature::DownCast;
%rename(DownCast) Handle_IFSelect_SignType::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSharing::DownCast;
%rename(DownCast) Handle_IFSelect_EditForm::DownCast;
%rename(DownCast) Handle_IFSelect_DispPerFiles::DownCast;
%rename(DownCast) Handle_IFSelect_DispPerOne::DownCast;
%rename(DownCast) Handle_IFSelect_PacketList::DownCast;
%rename(DownCast) Handle_IFSelect_SelectIncorrectEntities::DownCast;
%rename(DownCast) Handle_IFSelect_SelectAnyList::DownCast;
%rename(DownCast) Handle_IFSelect_SelectInList::DownCast;
%rename(DownCast) Handle_IFSelect_ShareOut::DownCast;
%rename(DownCast) Handle_IFSelect_SelectShared::DownCast;
%rename(DownCast) Handle_IFSelect_SelectAnyType::DownCast;
%rename(DownCast) Handle_IFSelect_SelectType::DownCast;
%rename(DownCast) Handle_IFSelect_SelectUnion::DownCast;
%rename(DownCast) Handle_IFSelect_SequenceNodeOfTSeqOfDispatch::DownCast;
%rename(DownCast) Handle_IFSelect_SignMultiple::DownCast;
%rename(DownCast) Handle_IFSelect_GraphCounter::DownCast;
%rename(DownCast) Handle_IFSelect_SelectDiff::DownCast;
%rename(DownCast) Handle_IFSelect_Editor::DownCast;
%rename(DownCast) Handle_IFSelect_ParamEditor::DownCast;
%rename(DownCast) Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers::DownCast;
%rename(DownCast) Handle_IFSelect_SignAncestor::DownCast;
%rename(DownCast) Handle_IFSelect_SelectRootComps::DownCast;
%rename(DownCast) Handle_IFSelect_SignValidity::DownCast;
%rename(DownCast) Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel::DownCast;
%rename(DownCast) Handle_IFSelect_SelectRange::DownCast;
%rename(DownCast) Handle_IFSelect_SignCategory::DownCast;
%rename(DownCast) Handle_IFSelect_SelectRoots::DownCast;
%rename(DownCast) Handle_IFSelect_DispPerCount::DownCast;
%rename(DownCast) Handle_IFSelect_BasicDumper::DownCast;
%rename(DownCast) Handle_IFSelect_SessionPilot::DownCast;
%rename(DownCast) Handle_IFSelect_SelectSent::DownCast;
%rename(DownCast) Handle_IFSelect_ModelCopier::DownCast;
%rename(DownCast) Handle_IFSelect_SequenceNodeOfTSeqOfSelection::DownCast;
%rename(DownCast) Handle_IFSelect_SelectEntityNumber::DownCast;
%rename(DownCast) Handle_IFSelect_Act::DownCast;
%rename(DownCast) Handle_IFSelect_SelectPointed::DownCast;
%rename(SaveSession) IFSelect::SaveSession;
%rename(RestoreSession) IFSelect::RestoreSession;
%rename(MatchValue) IFSelect_Signature::MatchValue;
%rename(IntValue) IFSelect_Signature::IntValue;
%rename(CVal) IFSelect_SignValidity::CVal;
%rename(GiveEntity) IFSelect_Functions::GiveEntity;
%rename(GiveEntityNumber) IFSelect_Functions::GiveEntityNumber;
%rename(GiveList) IFSelect_Functions::GiveList;
%rename(GiveDispatch) IFSelect_Functions::GiveDispatch;
%rename(Init) IFSelect_Functions::Init;
%rename(Adding) IFSelect_Activator::Adding;
%rename(Remove) IFSelect_Activator::Remove;
%rename(SetAlias) IFSelect_Activator::SetAlias;
%rename(SetCurrentAlias) IFSelect_Activator::SetCurrentAlias;
%rename(Alias) IFSelect_Activator::Alias;
%rename(Select) IFSelect_Activator::Select;
%rename(Mode) IFSelect_Activator::Mode;
%rename(Commands) IFSelect_Activator::Commands;
%rename(StaticEditor) IFSelect_ParamEditor::StaticEditor;
%rename(First) IFSelect_SessionDumper::First;
%rename(SetGroup) IFSelect_Act::SetGroup;

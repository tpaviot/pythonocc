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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_IFSelect_SignatureList::DownCast;
%rename(downcast) Handle_IFSelect_Selection::DownCast;
%rename(downcast) Handle_IFSelect_SelectDeduct::DownCast;
%rename(downcast) Handle_IFSelect_SelectExtract::DownCast;
%rename(downcast) Handle_IFSelect_SelectAnyType::DownCast;
%rename(downcast) Handle_IFSelect_SelectType::DownCast;
%rename(downcast) Handle_IFSelect_Transformer::DownCast;
%rename(downcast) Handle_IFSelect_TransformStandard::DownCast;
%rename(downcast) Handle_IFSelect_Signature::DownCast;
%rename(downcast) Handle_IFSelect_SignCategory::DownCast;
%rename(downcast) Handle_IFSelect_GeneralModifier::DownCast;
%rename(downcast) Handle_IFSelect_Modifier::DownCast;
%rename(downcast) Handle_IFSelect_ModifReorder::DownCast;
%rename(downcast) Handle_IFSelect_Activator::DownCast;
%rename(downcast) Handle_IFSelect_SelectAnyList::DownCast;
%rename(downcast) Handle_IFSelect_AppliedModifiers::DownCast;
%rename(downcast) Handle_IFSelect_SignMultiple::DownCast;
%rename(downcast) Handle_IFSelect_Dispatch::DownCast;
%rename(downcast) Handle_IFSelect_DispGlobal::DownCast;
%rename(downcast) Handle_IFSelect_SessionDumper::DownCast;
%rename(downcast) Handle_IFSelect_SelectControl::DownCast;
%rename(downcast) Handle_IFSelect_SelectErrorEntities::DownCast;
%rename(downcast) Handle_IFSelect_SelectFlag::DownCast;
%rename(downcast) Handle_IFSelect_SignCounter::DownCast;
%rename(downcast) Handle_IFSelect_SelectSent::DownCast;
%rename(downcast) Handle_IFSelect_PacketList::DownCast;
%rename(downcast) Handle_IFSelect_SelectUnknownEntities::DownCast;
%rename(downcast) Handle_IFSelect_SelectSuite::DownCast;
%rename(downcast) Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier::DownCast;
%rename(downcast) Handle_IFSelect_SignType::DownCast;
%rename(downcast) Handle_IFSelect_Editor::DownCast;
%rename(downcast) Handle_IFSelect_ParamEditor::DownCast;
%rename(downcast) Handle_IFSelect_WorkLibrary::DownCast;
%rename(downcast) Handle_IFSelect_SelectCombine::DownCast;
%rename(downcast) Handle_IFSelect_SelectIntersection::DownCast;
%rename(downcast) Handle_IFSelect_DispPerCount::DownCast;
%rename(downcast) Handle_IFSelect_CheckCounter::DownCast;
%rename(downcast) Handle_IFSelect_HSeqOfSelection::DownCast;
%rename(downcast) Handle_IFSelect_SelectExplore::DownCast;
%rename(downcast) Handle_IFSelect_SelectBase::DownCast;
%rename(downcast) Handle_IFSelect_SelectModelRoots::DownCast;
%rename(downcast) Handle_IFSelect_ModelCopier::DownCast;
%rename(downcast) Handle_IFSelect_DispPerOne::DownCast;
%rename(downcast) Handle_IFSelect_SelectShared::DownCast;
%rename(downcast) Handle_IFSelect_SelectSignature::DownCast;
%rename(downcast) Handle_IFSelect_SelectSignedSharing::DownCast;
%rename(downcast) Handle_IFSelect_EditForm::DownCast;
%rename(downcast) Handle_IFSelect_DispPerFiles::DownCast;
%rename(downcast) Handle_IFSelect_SelectIncorrectEntities::DownCast;
%rename(downcast) Handle_IFSelect_SelectRange::DownCast;
%rename(downcast) Handle_IFSelect_DispPerSignature::DownCast;
%rename(downcast) Handle_IFSelect_SelectInList::DownCast;
%rename(downcast) Handle_IFSelect_ShareOut::DownCast;
%rename(downcast) Handle_IFSelect_BasicDumper::DownCast;
%rename(downcast) Handle_IFSelect_SelectModelEntities::DownCast;
%rename(downcast) Handle_IFSelect_SelectUnion::DownCast;
%rename(downcast) Handle_IFSelect_GraphCounter::DownCast;
%rename(downcast) Handle_IFSelect_SelectDiff::DownCast;
%rename(downcast) Handle_IFSelect_ListEditor::DownCast;
%rename(downcast) Handle_IFSelect_SequenceNodeOfTSeqOfDispatch::DownCast;
%rename(downcast) Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers::DownCast;
%rename(downcast) Handle_IFSelect_IntParam::DownCast;
%rename(downcast) Handle_IFSelect_Act::DownCast;
%rename(downcast) Handle_IFSelect_SignAncestor::DownCast;
%rename(downcast) Handle_IFSelect_SelectRootComps::DownCast;
%rename(downcast) Handle_IFSelect_SignValidity::DownCast;
%rename(downcast) Handle_IFSelect_ModifEditForm::DownCast;
%rename(downcast) Handle_IFSelect_WorkSession::DownCast;
%rename(downcast) Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel::DownCast;
%rename(downcast) Handle_IFSelect_SelectRoots::DownCast;
%rename(downcast) Handle_IFSelect_SelectSharing::DownCast;
%rename(downcast) Handle_IFSelect_SelectSignedShared::DownCast;
%rename(downcast) Handle_IFSelect_SessionPilot::DownCast;
%rename(downcast) Handle_IFSelect_SequenceNodeOfTSeqOfSelection::DownCast;
%rename(downcast) Handle_IFSelect_SelectEntityNumber::DownCast;
%rename(downcast) Handle_IFSelect_SelectPointed::DownCast;
%rename(matchvalue) IFSelect_Signature::MatchValue;
%rename(intvalue) IFSelect_Signature::IntValue;
%rename(adding) IFSelect_Activator::Adding;
%rename(remove) IFSelect_Activator::Remove;
%rename(setalias) IFSelect_Activator::SetAlias;
%rename(setcurrentalias) IFSelect_Activator::SetCurrentAlias;
%rename(alias) IFSelect_Activator::Alias;
%rename(select) IFSelect_Activator::Select;
%rename(mode) IFSelect_Activator::Mode;
%rename(commands) IFSelect_Activator::Commands;
%rename(setgroup) IFSelect_Act::SetGroup;
%rename(savesession) IFSelect::SaveSession;
%rename(restoresession) IFSelect::RestoreSession;
%rename(giveentity) IFSelect_Functions::GiveEntity;
%rename(giveentitynumber) IFSelect_Functions::GiveEntityNumber;
%rename(givelist) IFSelect_Functions::GiveList;
%rename(givedispatch) IFSelect_Functions::GiveDispatch;
%rename(init) IFSelect_Functions::Init;
%rename(first) IFSelect_SessionDumper::First;
%rename(cval) IFSelect_SignValidity::CVal;
%rename(staticeditor) IFSelect_ParamEditor::StaticEditor;

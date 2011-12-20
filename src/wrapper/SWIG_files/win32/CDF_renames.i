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
%rename(DownCast) Handle_CDF_MetaDataDriverError::DownCast;
%rename(DownCast) Handle_CDF_StoreList::DownCast;
%rename(DownCast) Handle_CDF_Directory::DownCast;
%rename(DownCast) Handle_CDF_Application::DownCast;
%rename(DownCast) Handle_CDF_MetaDataDriver::DownCast;
%rename(DownCast) Handle_CDF_MetaDataDriverFactory::DownCast;
%rename(DownCast) Handle_CDF_Session::DownCast;
%rename(Raise) CDF_MetaDataDriverError::Raise;
%rename(NewInstance) CDF_MetaDataDriverError::NewInstance;
%rename(GetLicense) CDF::GetLicense;
%rename(IsAvailable) CDF::IsAvailable;
%rename(Load) CDF_Application::Load;
%rename(Exists) CDF_Session::Exists;
%rename(CurrentSession) CDF_Session::CurrentSession;

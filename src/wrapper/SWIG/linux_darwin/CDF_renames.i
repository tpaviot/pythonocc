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
%rename(downcast) Handle_CDF_MetaDataDriver::DownCast;
%rename(downcast) Handle_CDF_StoreList::DownCast;
%rename(downcast) Handle_CDF_Directory::DownCast;
%rename(downcast) Handle_CDF_MetaDataDriverError::DownCast;
%rename(downcast) Handle_CDF_Application::DownCast;
%rename(downcast) Handle_CDF_MetaDataDriverFactory::DownCast;
%rename(downcast) Handle_CDF_Session::DownCast;
%rename(raise) CDF_MetaDataDriverError::Raise;
%rename(newinstance) CDF_MetaDataDriverError::NewInstance;
%rename(getlicense) CDF::GetLicense;
%rename(isavailable) CDF::IsAvailable;
%rename(load) CDF_Application::Load;
%rename(exists) CDF_Session::Exists;
%rename(currentsession) CDF_Session::CurrentSession;

;Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
;
;This file is part of pythonOCC.
;
;pythonOCC is free software: you can redistribute it and/or modify
;it under the terms of the GNU General Public License as published by
;the Free Software Foundation, either version 3 of the License, or
;(at your option) any later version.
;
;pythonOCC is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.


[Setup]
;Informations générales sur l'application
AppName=pythonOCC
AppVerName=pythonOCC-0.3
AppVersion=0.3
AppPublisher=Thomas Paviot
AppCopyright=Copyright © 2008-2009 Thomas Paviot
AppPublisherURL=http://www.pythonocc.org
AppSupportURL=http://www.pythonocc.org
AppUpdatesURL=http://www.pythonocc.org

DefaultDirName={pf}\pythonOCC\0.3
DefaultGroupName=pythonOCC
LicenseFile=C:\Developpement\pythonocc\LICENSE
;Compression parameters
;lzma or zip
Compression=lzma/ultra64
SolidCompression=yes
;By default, admin privilege are required
;AdminPrivilegesRequired=no
PrivilegesRequired=admin
;Nom du fichier généré et répertoire de destination
OutputBaseFilename=pythonOCC-0.3-all-in-one-py25.exe
OutputDir=C:\Developpement\pythonocc\Releases\Buffer

UninstallDisplayIcon={app}\bitmaps\icons\Decade.ico
;Fenêtre en background
;WindowVisible=true
WindowResizable=false
WindowStartMaximized=true
WindowShowCaption=true
BackColorDirection=lefttoright
;AppID={36B962F1-A4B7-4BA0-A515-6CD233FE4203}
;InfoAfterFile=D:\pyMotion\CHANGELOG.txt
; Les différentes images
;WizardSmallImageFile=C:\Developpement\Decade\bitmaps\installation\55-58.bmp
;WizardImageFile=C:\Developpement\Decade\bitmaps\installation\164-314.bmp

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"

[Messages]
BeveledLabel=pythonOCC-0.3 for Python25 installation

[CustomMessages]
en.tutorial=Tutorial Decade 1.5 (French)
en.uninstall=Uninstall
en.catia=Run Decadein Catia V5 mode
en.solidworks=Run Decade in SolidWorks mode
en.gpl_licence=Read the GNU GPL
en.fdl_licence=Read the GNU FDL
en.AssocFileExtension=&Associate Decade with .Dec extension
en.CreateDesktopIcon=Create Desktop shortcut to
en.CreateQuickLaunchIcon=Create a &Quick Launch icon to

[Files]
Source: C:\Developpement\pythonOCC\src\build\lib.win32-2.5\OCC\*.*; DestDir: {app}\bin; Flags : ignoreversion;
;Source: C:\Developpement\decade\src\dist\matplotlibdata\*.*; DestDir: {app}\bin\matplotlibdata; Flags : ignoreversion;
;Source: C:\Developpement\decade\src\Macro_Catia_V5\*.catvba; DestDir: {app}\Macro_Catia_V5;Flags : ignoreversion;
;
; Samples
;
;Source: C:\Developpement\decade\samples\SolidWorks\Pendule_Simple_SW2005\*.*; DestDir: {app}\samples\SolidWorks\Pendule_Simple_SW2005; Flags : ignoreversion;
;Source: C:\Developpement\decade\samples\SolidWorks\Pendule_Double_SW2005\*.*; DestDir: {app}\samples\SolidWorks\Pendule_Double_SW2005; Flags : ignoreversion;
;Source: C:\Developpement\decade\samples\SolidWorks\Pendule_3D_SW2003\*.*; DestDir: {app}\samples\SolidWorks\Pendule_3D_SW2003; Flags : ignoreversion;
;Source: C:\Developpement\decade\samples\SolidWorks\Cardan_SW2005\*.*; DestDir: {app}\samples\SolidWorks\Cardan_SW2005; Flags : ignoreversion;
;Source: C:\Developpement\decade\samples\SolidWorks\Masse_Ressort_SW2003\*.*; DestDir: {app}\samples\SolidWorks\Masse_Ressort_SW2003; Flags : ignoreversion;
;Source: C:\Developpement\decade\samples\SolidWorks\Oldham_SW2003\*.*; DestDir: {app}\samples\SolidWorks\Oldham_SW2003; Flags : ignoreversion;

;
; Misc files
;
Source: C:\Developpement\pythonocc\LICENSE; DestDir: {app}; Flags : ignoreversion;
Source: C:\Developpement\pythonocc\AUTHORS; DestDir: {app}; Flags : ignoreversion;
Source: C:\Developpement\pythonocc\CHANGES; DestDir: {app}; Flags : ignoreversion;

;
; Copie des fonts manquantes pour matplotlib
;
;Source: C:\Developpement\decade\fonts\hlbi____.ttf; DestDir : {fonts};Flags : ignoreversion;
;Source: C:\Developpement\decade\fonts\hlb_____.ttf; DestDir : {fonts};Flags : ignoreversion;

;[Tasks]
;Name: desktopicon1; Description: {cm:CreateDesktopIcon} Decade; GroupDescription: Additional icons:; MinVersion: 4,4;Flags : unchecked
;Name: desktopicon2; Description: {cm:CreateDesktopIcon} DecadeWorks; Check:SolidWorksInstalled; GroupDescription: Additional icons:; MinVersion: 4,4
;Name: desktopicon3; Description: {cm:CreateDesktopIcon} DecadeCATIA; Check:CatiaInstalled;GroupDescription: Additional icons:; MinVersion: 4,4
;Name: desktopicon4; Description: {cm:CreateDesktopIcon} DecadeInventor (EXPERIMENTAL); Check:InventorInstalled;GroupDescription: Additional icons:; MinVersion: 4,4
;Name: quicklaunchicon1; Description: {cm:CreateQuickLaunchIcon} DecadeCATIA; GroupDescription: Additional icons;    Check:CatiaInstalled;
;Name: quicklaunchicon2; Description: {cm:CreateQuickLaunchIcon} DecadeWorks; GroupDescription: Additional icons;  Check:SolidWorksInstalled;
;Name: quicklaunchicon3; Description: {cm:CreateQuickLaunchIcon} DecadeInventor (EXPERIMENTAL);Check:InventorInstalled; GroupDescription: Additional icons;
;Name: fileassoc; Description: {cm:AssocFileExtension}; GroupDescription: "Other tasks:";

[Icons]
; Les icones de lancement du programme
Name: {group}\DecadeCATIA 1.5;Filename: {app}\bin\decade.exe; Parameters:"--CATIA"; WorkingDir: {app}\bin; Comment: {cm:catia}; IconFileName: {app}\bin\decade.exe
Name: {group}\DecadeWorks 1.5;Filename: {app}\bin\decade.exe; Parameters:"--SOLIDWORKS";WorkingDir: {app}\bin; Comment: {cm:solidworks}; IconFileName: {app}\bin\decade.exe
Name: {group}\DecadeInventor 1.5;Filename: {app}\bin\decade.exe; Parameters:"--INVENTOR";WorkingDir: {app}\bin; Comment: EXPERIMANTAL; IconFileName: {app}\bin\decade.exe
; Les fichiers relatifs à la documentation
Name: {group}\Documentation\Decade Aide 1.5; Filename: {app}\doc\help_chm\decade_aide.chm; Comment: Aide en ligne; IconFileName: {app}\doc\help_chm\decade_aide.chm
Name: {group}\Documentation\Macro Catia V5; Filename: {app}\doc\Macro_Catia_V5.pdf; Comment: Aide en ligne; IconFileName: {app}\doc\Macro_Catia_V5.pdf
Name: {group}\Documentation\Fiche méthodologique; Filename: {app}\doc\Fiche méthodologique (Franck Vitte).pdf; Comment: Fiche méthodologique; IconFileName: {app}\doc\Fiche méthodologique (Franck Vitte).pdf
Name: {group}\Documentation\{cm:tutorial}; Filename: {app}\doc\Tutoriel Decade.pdf; Comment: Tutoriel Decade pendule double; IconFileName: {app}\doc\Tutoriel Decade.pdf
; Les fichiers relatifs à la licence
Name: {group}\Licence\GNU GPL; Comment : {cm:gpl_licence};Filename: {app}\licenses\gpl.html; IconFileName:  {app}\licenses\gpl.html
Name: {group}\Licence\GNU FDL; Comment : {cm:fdl_licence};Filename: {app}\licenses\fdl.html; IconFileName:  {app}\licenses\fdl.html
Name: {group}\{cm:uninstall}; Filename: {app}\unins000.exe;IconFileName: {app}\unins000.exe

;
; Startmenu shortcuts
;
;
;Name: {group}\Exemples\SolidWorks\Pendule simple (SW2005);Filename:{app}\samples\SolidWorks\Pendule_simple_SW2005\Pendule_simple.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Pendule double (SW2005);Filename:{app}\samples\SolidWorks\Pendule_double_SW2005\Pendule_double.Dec; IconFileName: {app}\bin\decade.exe
;ame: {group}\Exemples\SolidWorks\Joint de Cardan (SW2005);Filename:{app}\samples\SolidWorks\Cardan_SW2005\Cardan_simple.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Masse-Ressort simple (SW2003);Filename:{app}\samples\SolidWorks\Masse_Ressort_SW2003\Masse_ressort_simple.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Masse-Ressort double (SW2003);Filename:{app}\samples\SolidWorks\Masse_Ressort_SW2003\Masse_ressort_double.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Joint de Oldham (SW2003);Filename:{app}\samples\SolidWorks\Oldham_SW2003\Oldham.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Equilibrage (SW2005);Filename:{app}\samples\SolidWorks\Equilibrage_SW2005\Equilibrage.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Cisaille (SW2003);Filename:{app}\samples\SolidWorks\Cisaille_SW2003\Cisaille.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Pince de préhension (SW2003);Filename:{app}\samples\SolidWorks\Pince_schraeder_SW2003\Pince_parker.Dec; IconFileName: {app}\bin\decade.exe
;Name: {group}\Exemples\SolidWorks\Réducteur FDA (SW2003);Filename:{app}\samples\SolidWorks\Reducteur_FDA_SW2003\Reducteur_FDA.Dec; IconFileName: {app}\bin\decade.exe

;
; Desktop shortcuts
;
;Name: {userdesktop}\Decade 1.5; Filename: {app}\bin\decade.exe; Parameters:"--STANDALONE";WorkingDir: {app}\bin; MinVersion: 4,4; Tasks: desktopicon1; IconFileName: {app}\bin\decade.exe
Name: {userdesktop}\DecadeWORKS 1.5;   Filename: {app}\bin\decade.exe; Parameters:"--SOLIDWORKS";WorkingDir: {app}\bin; MinVersion: 4,4; Tasks: desktopicon2; IconFileName: {app}\bin\decade.exe
Name: {userdesktop}\DecadeCATIA 1.5;   Filename: {app}\bin\decade.exe; Parameters:"--CATIA";WorkingDir: {app}\bin; MinVersion: 4,4; Tasks: desktopicon3; IconFileName: {app}\bin\decade.exe
Name: {userdesktop}\DecadeInventor 1.5;Filename: {app}\bin\decade.exe; Parameters:"--INVENTOR";WorkingDir: {app}\bin; MinVersion: 4,4; Tasks: desktopicon4; IconFileName: {app}\bin\decade.exe
;
; On ajoute également ces icones dans labarre de lancement rapide, pour éviter d'avoir à chercher sur le Bureau
;
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\DecadeCATIA 1.5; Filename: {app}\bin\decade.exe; Parameters:"--CATIA";WorkingDir: {app}\bin; Tasks: quicklaunchicon1; IconFileName: {app}\bitmaps\icons\decade.ico
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\DecadeWorks 1.5; Filename: {app}\bin\decade.exe; Parameters:"--SOLIDWORKS";WorkingDir: {app}\bin; Tasks: quicklaunchicon2; IconFileName: {app}\bitmaps\icons\decade.ico
;[Run]
;Filename: {sys}\regsvr32.exe; Parameters: {app}\ActiveX\proxy_catia.dll; Description: Register ActiveX proxy_catia.dll; Flags: nowait runhidden;StatusMsg: "Registerig ActiveX..."
;Filename: {app}\bin\decade.exe; Description: Launch Decade; Flags: nowait postinstall skipifsilent

[_ISTool]
Use7zip=true

[Registry]
Root: HKCR; SubKey: .Dec; ValueType: string; ValueData: Decade project file; Flags: uninsdeletekey
Root: HKCR; SubKey: Decade project file; ValueType: string; Flags: uninsdeletekey; ValueData: Decade project file
Root: HKCR; SubKey: Decade project file\Shell\Open\Command; ValueType: string; ValueData: """{app}\bin\Decade.exe"" ""%1"""; Flags: uninsdeletekey;
Root: HKCR; Subkey: Decade project file\DefaultIcon; ValueType: string; ValueData: {app}\bitmaps\icons\Decade.ico,0; Flags: uninsdeletekey;
; La clé qui permet d'enregistrer la variable d'environnement système DECADE_PATH
Root : HKLM; Subkey :SYSTEM\CurrentControlSet\Control\Session Manager\Environment;ValueName:DECADE_EXEC_CATIA;ValueType: string;ValueData: "{app}\bin\Decade.exe --CATIA"

[code]
; Python installation path
;HKEY_LOCAL_MACHINE,'Software\Python\PythonCore\2.5\InstallPath'
;or
;HKEY_LOCAL_MACHINE,'Software\Python\PythonCore\2.4\InstallPath'

function Python25Installed():Boolean;
begin
  if RegKeyExists(HKEY_LOCAL_MACHINE,'HKEY_LOCAL_MACHINE,'Software\Python\PythonCore\2.5\') then
    Result:=True
  else
    Result:=False;
end;

function Python24Installed():Boolean;
begin
  if RegKeyExists(HKEY_LOCAL_MACHINE,'HKEY_LOCAL_MACHINE,'Software\Python\PythonCore\2.4\') then
    Result:=True
  else
    Result:=False;
end;


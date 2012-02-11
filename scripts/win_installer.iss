; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{40AF40BB-C73D-46DF-A2F9-A19CCDEEF1DD}
AppName=SoundGrain
AppVersion=4.0
AppPublisher=iACT.umontreal.ca
AppPublisherURL=http://code.google.com/p/soundgrain
AppSupportURL=http://code.google.com/p/soundgrain
AppUpdatesURL=http://code.google.com/p/soundgrain
DefaultDirName={pf}\SoundGrain
DisableDirPage=yes
DefaultGroupName=SoundGrain
AllowNoIcons=yes
;LicenseFile=C:\Documents and Settings\olipetwin\svn\cecilia4\Cecilia_Win\Resources\COPYING.txt
;InfoBeforeFile=C:\Documents and Settings\olipetwin\svn\cecilia4\Cecilia_Win\README.txt
OutputBaseFilename=SoundGrain_4.0_setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Documents and Settings\olipetwin\svn\soundgrain\SoundGrain_Win\SoundGrain.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Documents and Settings\olipetwin\svn\soundgrain\SoundGrain_Win\Resources\*"; DestDir: "{app}\Resources"; Flags: ignoreversion recursesubdirs createallsubdirs
SOurce: "C:\Documents and Settings\olipetwin\svn\soundgrain\SoundGrain_Win\examples\*"; DestDir: "{userdesktop}\soundgrain_examples"; Flags: ignoreversion
;Source: "C:\Documents and Settings\olipetwin\svn\soundgrain\SoundGrain_Win\README.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCR; Subkey: ".sg"; ValueType: string; ValueName: ""; ValueData: "SoundGrainFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "SoundGrainFile"; ValueType: string; ValueName: ""; ValueData: "SoundGrain File"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "SoundGrainFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Resources\SoundGrainDocIcon.ico"
Root: HKCR; Subkey: "SoundGrainFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SoundGrain.exe"" ""%1"""

[Icons]
Name: "{group}\SoundGrain"; Filename: "{app}\SoundGrain.exe"; WorkingDir: "{app}"
Name: "{commondesktop}\SoundGrain"; Filename: "{app}\SoundGrain.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\SoundGrain.exe"; Description: "{cm:LaunchProgram,SoundGrain}"; Flags: nowait postinstall skipifsilent










; Unikey Setup
; (C) 2022 michioxd - UniKey by Pham Kim Long (https://sourceforge.net/projects/unikey)
;
; MIT License
;
; Copyright (c) 2022 michioxd
;
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
;
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.
#define MainAppName "UniKey"
#define AppVer "4.3 RC5"
#define AppPublisher "Pham Kim Long for UniKey"
#define AppUrl "https://github.com/michioxd/unikey-setup"
#define AppExe "UniKeyNT.exe"

[Setup]
AppId={{06FAA1EC-3D71-47B4-8392-9F012C0E29E8}
AppName={#MainAppName}
AppVersion={#AppVer}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppUrl}
AppSupportURL={#AppUrl}
AppUpdatesURL={#AppUrl}
DefaultDirName={autopf}\UniKeyNT
DefaultGroupName=UniKeyNT
AllowNoIcons=yes
LicenseFile=".\licenseSetup.txt"
OutputDir=".\output"
OutputBaseFilename=UniKeyNTSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\assets\{#AppExe}"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\assets\keymap.txt"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
Name: "{group}\{#MainAppName}"; Filename: "{app}\{#AppExe}"
Name: "{group}\{cm:UninstallProgram,{#MainAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MainAppName}"; Filename: "{app}\{#AppExe}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExe}"; Description: "{cm:LaunchProgram,{#StringChange(MainAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{cmd}"; Parameters: "/C ""taskkill /im {#AppExe}.exe /f"
unit Class_System_General;

interface

uses
  Windows,SysUtils, Forms;

const

 SRUnknown = '(UnKnown)';

type
  TLMDVersionInfoType = (
    viCompanyName,
    viProductName,
    viFileVersion,
    viProductVersion,
    viCopyright,
    viTrademark,
    viDescription,
    viComments,
    viPrivateBuild,
    viInternalName,
    viSpecialBuild
    );

const

  // Must be in same order as TLMDVersionInfoType
 VersionStrings : array[low(TLMDVersionInfoType)..High(TLMDVersionInfoType)] of string = (
    'CompanyName',
    'ProductName',
    'FileVersion',
    'ProductVersion',
    'LegalCopyright',
    'LegalTrademark',
    'FileDescription',
    'Comments',
    'PrivateBuild',
    'InternalName',
    'SpecialBuild');

//type


type
  TSystemInfo = class(TObject)
  private
    function GetsystemUser: string;
    function GetversionProductName: string;
    function GetversionCompanyName: string;
    function GetsystemComputer: string;
    function GetversionFileVersion: string;
    function GetversionProductVersion: string;
    function GetversionCopyright: string;
    function GetversionTrademark: string;
    function GetversionDescription: string;
    function GetversionComments: string;
    function GetversionPrivateBuild: string;
    function GetversionInternalName: string;
    function GetversionSpecialBuild: string;
    function GetversionMajor: string;
    function GetversionMinor: string;
  public
    function RegistryPath: string;
    property systemUser: string read GetsystemUser;
    property versionProductName: string read GetversionProductName;
    property versionCompanyName: string read GetversionCompanyName;
    property systemComputer: string read GetsystemComputer;
    property versionFileVersion: string read GetversionFileVersion;
    property versionProductVersion: string read GetversionProductVersion;
    property versionCopyright: string read GetversionCopyright;
    property versionTrademark: string read GetversionTrademark;
    property versionDescription: string read GetversionDescription;
    property versionComments: string read GetversionComments;
    property versionPrivateBuild: string read GetversionPrivateBuild;
    property versionInternalName: string read GetversionInternalName;
    property versionSpecialBuild: string read GetversionSpecialBuild;
    property versionMajor: string read GetversionMajor;
    property versionMinor: string read GetversionMinor;
  end;

function DMPComputerName:String;
function DMPUserName:String;
function DMPVersionInfo(inf : TLMDVersionInfoType) : String;

implementation


function DMPVersionInfo(inf : TLMDVersionInfoType) : String;
var
  InfoResSize,
  Zero            : DWORD;
  VersionInfo,
  Translation,
  Info            : Pointer;
  VersionInfoSize : UINT;
  InfoPath        : String;
begin
  result := '';
  //retrieve the size of the version information resource, if one exists
  InfoResSize := GetFileVersionInfoSize(PChar(Application.Exename), Zero);

  if InfoResSize=0 then exit;
  //if there are infos we will go on

  //allocate the needed memory for the info structure
  GetMem(VersionInfo, InfoResSize);

  try
    //Get the information of the current file
    if not GetFileVersionInfo(PChar(Application.Exename), 0, InfoResSize, VersionInfo) then
      begin
        FreeMem (VersionInfo);
        exit;
      end;

    if VerQueryValue(VersionInfo, '\\VarFileInfo\\Translation', Translation, VersionInfoSize) then
      begin
        //set the version value path string
        InfoPath :='\\StringFileInfo\\'+
                        IntToHex(LoWord(LongInt(Translation^)),4)+
                        IntToHex(HiWord(LongInt(Translation^)),4)+
                        '\\';
      end
    else //set Microsoft default value
      begin
       //set the version value path string
        InfoPath :='\\StringFileInfo\\040904E4\\';
      end;

    if VerQueryValue(VersionInfo, PChar(InfoPath+VersionStrings[inf]), Info, VersionInfoSize) then
      result := string(PChar(Info));

  finally
    FreeMem (VersionInfo, InfoResSize);
  end;
end;


function DMPComputerName:String;
var
  le:DWORD;
begin
  le:=MAX_COMPUTERNAME_LENGTH+1;
  SetLength(result, le);
  if GetComputerName(PChar(result),le) then SetLength(result, le) else result:=SRUnknown;
end;

(*------------------------------------------------------------------------------*)
function DMPUserName:String;
var
  le:DWORD;
begin
   le:=63;
   SetLength(result,le);
   if GetUsername(PChar(result),le) then SetLength(result, le-1) else result:=SRUnknown;
end;

function TSystemInfo.GetsystemUser: string;
begin
  Result := DMPUserName;
end;

function TSystemInfo.GetsystemComputer: string;
begin
  Result := DMPComputerName;
end;

function TSystemInfo.GetversionProductName: string;
begin
  Result := DMPVersionInfo(viProductName);
end;

function TSystemInfo.GetversionCompanyName: string;
begin
  Result := DMPVersionInfo(viCompanyName);
end;


function TSystemInfo.GetversionFileVersion: string;
begin
  Result := DMPVersionInfo(viFileVersion);
end;

function TSystemInfo.GetversionProductVersion: string;
begin
  Result := DMPVersionInfo(viProductVersion);
end;

function TSystemInfo.GetversionCopyright: string;
begin
  Result := DMPVersionInfo(viCopyright);
end;

function TSystemInfo.GetversionTrademark: string;
begin
  Result := DMPVersionInfo(viTradeMark);
end;

function TSystemInfo.GetversionDescription: string;
begin
  Result := DMPVersionInfo(viDescription);
end;

function TSystemInfo.GetversionComments: string;
begin
  Result := DMPVersionInfo(viComments);
end;

function TSystemInfo.GetversionPrivateBuild: string;
begin
  Result := DMPVersionInfo(viPrivateBuild);
end;

function TSystemInfo.GetversionInternalName: string;
begin
  Result := DMPVersionInfo(viInternalName);
end;

function TSystemInfo.GetversionSpecialBuild: string;
begin
  Result := DMPVersionInfo(viSpecialBuild);
end;

function TSystemInfo.GetversionMajor: string;
var
  i, cycle: Integer;
  versionNum, majorVer :string;
begin

  versionNum  := DMPVersionInfo(viFileVersion);
  majorVer    := '';
  cycle       := 1;
  for i := 1 to length(versionNum) do    // Iterate
    if versionNum[i] <> '.' then
      begin
      if cycle = 1 then majorVer := majorVer + versionNum[i];
      end else
      inc(cycle);

  Result := majorVer;

end;

function TSystemInfo.GetversionMinor: string;
var
  i, cycle: Integer;
  versionNum, minorVer :string;
begin

  versionNum  := DMPVersionInfo(viFileVersion);
  minorVer    := '';
  cycle       := 1;
  for i := 1 to length(versionNum) do    // Iterate
    if versionNum[i] <> '.' then
      begin
      if cycle = 2 then minorVer := minorVer + versionNum[i];
      end else
      inc(cycle);
  Result := minorVer;
  
end;

function TSystemInfo.RegistryPath: string;
                                                                                (*procedure:Build----------------------------*)
                                                                                (*===========================================*)
                                                                    (*7.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)

  AppPath   : string;                                                           //Stores application path
  AppVer    : string;                                                           //Stores application version info

begin (*.............................................................*)(*begin*)(*...........................................*)

    if versionProductName = '' then
      AppPath := '\DefaultApp'
      else
      AppPath := '\' + versionProductName;
    AppVer := '\' + versionMajor + '.' + versionMinor;
    Result := '\Software' + AppPath + AppVer;
    
end; (*................................................................*)(*end*)(*...........................................*)



end.

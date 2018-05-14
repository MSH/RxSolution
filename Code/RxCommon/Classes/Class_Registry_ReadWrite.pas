unit Class_Registry_ReadWrite;

interface

{ ---------------------------------------------------------------------------- }
{ - * Extra Component Sets used by this unit *  2003/20/4                    - }
{ ---------------------------------------------------------------------------- }
{ - ElDos                                                                    - }
{ - [Gets file version info]-used to set default registry                    - }
{ -                                                                          - }
{ -                                                                          - }
{ -                                                                          - }
{ ---------------------------------------------------------------------------- }


uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Registry, DBCtrls, ADODB, ComObj;


type
  TRegistryObject = class(TObject)
  private
    FEncode: Boolean;
    FField: string;
    FFolder: string;
    FKey: string;
    FKeyAndFolder: string;
    FRootKey: HKEY;
  public
    constructor Create;
  private
    procedure Build;
    procedure BuildKey;
    procedure SetField(const Value: string);
    procedure SetFolder(const Value: string);
    procedure SetKey(const Value: string);
  public
    function Delete: Boolean; virtual;
    property Encode: Boolean read FEncode write FEncode;
    property Field: string read FField write SetField;
    property Folder: string read FFolder write SetFolder;
    property Key: string read FKey write SetKey;
    property Root: HKEY read FRootKey write FRootKey;
  end;

  TRegistryString = class(TRegistryObject)
  private
    FValue  :string;
    procedure SetValue(const Value: string);
    function GetValue: string;
  public
    property Value: string read GetValue write SetValue;
  end;

  TRegistryDefault = class(TObject)
  private
  public
  end;


procedure SetApplicationRegistryDefaults;                                       // Called by apps with object management overhead
                                                                                // stores default reg settings

implementation

uses Class_Security_HashCodes, Class_System_General;




constructor TRegistryObject.Create;
                                                                                (*constructor:Create-------------------------*)
                                                                                (*===========================================*)
                                                                    (*7.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  inherited;
  FRootKey := HKEY_CURRENT_USER;                                                // Always use current user.  Can overide in derived classes
  FKey := '\Software\DefaultApp';
  FFolder := '';
  FEncode := False;
  Build;                                                                        // Builds the key. Private method

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRegistryObject.Build; (*:::::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Build----------------------------*)
                                                                                (*===========================================*)
                                                                    (*7.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)

  MyApp     : TSystemInfo;                                                   //Used to get application data
  AppPath   : string;                                                           //Stores application path
  AppVer    : string;                                                           //Stores application version info

begin (*.............................................................*)(*begin*)(*...........................................*)

  // TODO -cDMP: TRegistryObject.Create.  Do error protecting when version could be null or nil.

  inherited;
  MyApp := TSystemInfo.Create;
  with MyApp do
    try
//    FileName := Application.ExeName;
    if versionProductName = '' then
      AppPath := '\DefaultApp'
      else
      AppPath := '\' + versionProductName;
    AppVer := '\' + versionMajor + '.' + versionMinor;
    FKey := '\Software' + AppPath + AppVer;
    BuildKey;
    finally
    Free;
    end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRegistryObject.BuildKey;
begin
  if FFolder <> '' then
    FKeyAndFolder := FKey + '\' + FFolder
    else
    FKeyAndFolder := FKey;
end;

function TRegistryObject.Delete: Boolean;
begin
  Result := False;
end;

procedure TRegistryObject.SetField(const Value: string);
begin
  FField := Value;
end;

procedure TRegistryObject.SetFolder(const Value: string); (*::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetFolder------------------------*)
                                                                                (*===========================================*)
                                                                    (*7.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  FFolder := Value;
  BuildKey;                                                                     // combine key and folder

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRegistryObject.SetKey(const Value: string);
begin
  FKey := Value;
  BuildKey;// combine key and folder
end;




procedure TRegistryString.SetValue(const Value: string); (*:::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetValue-------------------------*)
                                                                                (*===========================================*)
                                                                    (*9.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  Reg       :TRegistry;                                                         // Registry object
  MyHash    :THashCode_1_0_0;                                                   // Used to encrypt the string before writing
  CommitVal :string;


begin (*.............................................................*)(*begin*)(*...........................................*)

  Reg := TRegistry.Create;
  MyHash := THashCode_1_0_0.Create;

  FValue    := Value;
  CommitVal := Value;

  with Reg do
    try
    Reg.RootKey := FRootKey;
      try
      if Reg.OpenKey(FKeyAndFolder, True) then
        begin
        if FEncode then CommitVal := MyHash.Encode(Value);                      // If this needs to be encoded use hash object
        Reg.WriteString(FField, CommitVal);
        Reg.CloseKey;
        end;
      except
      end;
    finally
    Reg.Free;
    MyHash.Free;
    end;

end; (*................................................................*)(*end*)(*...........................................*)


function TRegistryString.GetValue: string;
var
  Reg :TRegistry;
  MyHash:THashCode_1_0_0;
begin

  Reg := TRegistry.Create;
  MyHash := THashCode_1_0_0.Create;

  with Reg do
    try
    Reg.RootKey := FRootKey;
      try
      if Reg.OpenKey(FKeyAndFolder, True) then
        begin
        if FEncode then
          FValue := MyHash.Decode(Reg.ReadString(FField))
          else
          FValue := Reg.ReadString(FField);
        Reg.CloseKey;
        end;
      except
      end;
    finally
    Reg.Free;
    end;
  Result := FValue;
end;













procedure SetApplicationRegistryDefaults; (*::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetApplicationRegistryDefaults---*)
                                                                                (*===========================================*)
                                                                    (*7.9.2003*)(* Orig::Deane Putzier                       *)
const                                                                  (*const*)(*...........................................*)
  TOTFLDS = 6;

  REGFIELDS : array[0..TOTFLDS-1] of string =
    ('Path', 'Product', 'Company', 'Description', 'File Version', 'Last Accessed');

var (*.................................................................*)(*var*)(*...........................................*)

  AppData   : TSystemInfo;
  AppReg    : TRegistryString;
  RegValues : array[0..TOTFLDS-1] of string;
  i         : integer;

begin (*.............................................................*)(*begin*)(*...........................................*)


  AppData := TSystemInfo.Create;
  with AppData do
    try
//    FileName  := Application.ExeName;
    for i:= low(RegValues) to high(RegValues) do
      case i of
        0 : RegValues[i] := Application.ExeName;
        1 : RegValues[i] := versionProductName + ' - Version ' + versionProductVersion;
        2 : RegValues[i] := versionCompanyName;
        3 : RegValues[i] := versionDescription;
        4 : RegValues[i] := versionFileVersion;
        5 : RegValues[i] := FormatDateTime('dddd, mmmm d, yyyy, " @ " hh:mm AM/PM', Now);
        end;
    finally
    Free;
    end;

  AppReg  := TRegistryString.Create;
  with AppReg do
    try
    for i:= low(RegValues) to high(RegValues) do
      begin
      AppReg.Field := REGFIELDS[i];
      AppReg.Value := RegValues[i];
      end;
    finally
    Free;
    end;

end; (*................................................................*)(*end*)(*...........................................*)

end.

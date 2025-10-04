unit Class_Database_Connections;

interface

uses  DB, ADODB{Used by ADOConnection}, SysUtils{Format function}, Forms {Application variable},
      Dialogs, Classes, ComObj,

      //depends on the registry class
      Class_Registry_ReadWrite;
const
      CMDBFILE      = 'Access File';
      CSERVER       = 'Server';
      CDATABASE     = 'DB';
      CDATABASEBACKUPPATH = 'DB Backup Path';
      CUSER         = 'User';
      CPASSWORD     = 'Password';
      CINTSECURITY  = 'SSPI';
      CTRUE         = '#@$5%SdvB';
      CFALSE        = '%^6gFrd@34';
      CPORT         = 'Port';
      CDRIVER       = 'Driver';
      CLEGACYDATABASEPHYSICALNAME = 'DB Physical File Name';
      DBFOLDER      = 'Data';
      DBBACKEXT     = '_DB.dat';
      DBBACKLOGEXT  = '_DBLog.dat';
      DBBACK        = '_DB';
      DBBACKLOG     = '_DBLog';

      DEFAULT_MYSQL_DRIVER = 'MySQL ODBC 8.0 ANSI Driver';
      DEFAULT_MYSQL_PORT   = 3306;
      DEFAULT_ODBC_OPTIONS = 'Option=3';

type

  TConnection = class(TObject)
  private
    FautoOpen: Boolean;
    FReg: TRegistryString;
    FsaveToRegistry: Boolean;
    FuseLogFile: Boolean;
    FUserName, FPassword: string;
    OLEDBProvider: string;
    FConnection: TADOConnection;
    FConnectionNames: array of string;
    FFirstLoad: Boolean;
    function Getconnection: TADOConnection;
    function Getpassword: string;
    function GetuserName: string;
    procedure Setpassword(const Value: string);
    procedure SetuserName(const Value: string);
    procedure SaveStringToRegistry(pField, pValue : string; pEncode :boolean);
    function ConnectionName(newName :string ; autoAdd : boolean = False): Integer;
    procedure Setfolder(const Value: string);
    function Getfolder: string;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    function BuildConnectionString: string; virtual;
    procedure OpenDatasets(pDataConnection :string = '' ); virtual;
    function ReadStringFromRegistry(pField :string; pEncode :boolean): string;
    function Add(newConnection : TADOConnection ; dontOpen : boolean = false): 
        Integer; virtual;
    procedure Remove(oldConnection : TADOConnection); virtual;
    function Refresh(conName : TADOConnection): Boolean; virtual;
    function Database_Backup: string; virtual;
    function Database_Attach(FileName :string = ''): string; virtual;
    procedure CloseConnection; virtual;
    property autoOpen: Boolean read FautoOpen write FautoOpen;
    property connection: TADOConnection read Getconnection;
    property password: string read Getpassword write Setpassword;
    property saveToRegistry: Boolean read FsaveToRegistry write FsaveToRegistry;
    property useLogFile: Boolean read FuseLogFile write FuseLogFile;
    property userName: string read GetuserName write SetuserName;
    property folder: string read Getfolder write Setfolder;
  end;

  TSQLConnection = class(TConnection)
  private
    FconnectionReady: Boolean;
    FServer, FDatabase, FDatabaseBackupPath: string;
    FuseIntegratedSecurity: Boolean;
    FPort: Word;
    FDriver: string;
    FWarnedIntegratedSecurity: Boolean;
    function Getdatabase: string;
    function Getserver: string;
    function GetuseIntegratedSecurity: Boolean;
    procedure Setdatabase(const Value: string);
    procedure Setserver(const Value: string);
    procedure SetuseIntegratedSecurity(Value: Boolean);
    function GetdatabaseBackupPath: string;
    procedure SetdatabaseBackupPath(const Value: string);
    function Getport: Word;
    procedure Setport(const Value: Word);
    function Getdriver: string;
    procedure Setdriver(const Value: string);
  public
    constructor Create; override;
    function BuildConnectionString: string; override;
    function EditConnectionProperties: Boolean; virtual;
    procedure OpenDatasets(pDataConnection :string = '' ); override;
    function Database_Backup: string; override;
    function BuildConnectionString_WithoutDB: string; virtual;
    function Database_Attach(FileName :string = ''): string; override;
    function TestConnectivity: Boolean;
    property connectionReady: Boolean read FconnectionReady;
    property database: string read Getdatabase write Setdatabase;
    property server: string read Getserver write Setserver;
    property useIntegratedSecurity: Boolean read GetuseIntegratedSecurity write
        SetuseIntegratedSecurity;
    property databaseBackupPath: string read GetdatabaseBackupPath write
        SetdatabaseBackupPath;
    property port: Word read Getport write Setport;
    property driver: string read Getdriver write Setdriver;
  end;

  TOracleConnection = class(TConnection)
  end;

  TAccessConnection = class(TConnection)
  private
    FmdbFileName: string;
    function GetmdbFileName: string;
    procedure SetmdbFileName(const Value: string);
  public
    constructor Create; override;
    function BuildConnectionString: string; override;
    function EditConnectionProperties: Boolean; virtual;
    property mdbFileName: string read GetmdbFileName write SetmdbFileName;
  end;

implementation

uses Class_Security_HashCodes, Class_Database_Connections_FrmConnect;
//  Classes_Logging;



{

                                                                   (*13.9.2003*)(* PAr::Deane Putzier                       *)
                                                                                // (A)
                                                                                //Autocreate is used to see if when creating the
                                                                                // connection, you need to create a connection
                                                                                // object, if you do you need to destroy it afterwards.
                                                                                // If you are using an existing connection from
                                                                                // the app, it important not to destroy it after
                                                                                //use as you may still want to use it

}
constructor TConnection.Create;

begin (*.............................................................*)(*begin*)(*...........................................*)

  FConnection := TADOConnection.Create(nil);
  FReg  := TRegistryString.Create;
  FFirstLoad := True;

  FConnection.LoginPrompt := False;
  FsaveToRegistry := True;
  FReg.Folder := DBFOLDER;
  FuseLogFile := True;
  FautoOpen := True;

end; (*................................................................*)(*end*)(*...........................................*)


destructor TConnection.Destroy; (*::::::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*destructor:Destroy-------------------------*)
                                                                                (*===========================================*)
                                                                   (*13.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  try
    if Assigned(FConnection) then FConnection.Free;
    FReg.Free;
    inherited;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;


end; (*................................................................*)(*end*)(*...........................................*)


function TConnection.BuildConnectionString: string; (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:BuildConnectionString-------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
                                                                                // This method MUST be overriden in calling
                                                                                // classes.
begin (*.............................................................*)(*begin*)(*...........................................*)

  Fconnection.Close;
  Result := '';

end; (*................................................................*)(*end*)(*...........................................*)


procedure TConnection.OpenDatasets(pDataConnection :string = '' );
                                                                                (*procedure:OpenDatasets---------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)

var (*.................................................................*)(*var*)(*...........................................*)

  j,k, dsCount, vCollection     : integer;
  //DBLog   : TCSVLogger;
  xC, xM, xO, xT   : string;
  ProcessDatasets :boolean;

const                                                                  (*const*)(*...........................................*)
  MSG_0   = 'CLASS: %s METHOD: %s OBJECT: %s';
  MSG_DB  = 'EDatabaseError: CLASS: %s METHOD: %s OBJECT: %s';
  MSG_VR  = 'EVariantError: CLASS: %s METHOD: %s OBJECT: %s';
  MSG_OLE = 'EOLEException: CLASS: %s METHOD: %s OBJECT: %s';

begin (*.............................................................*)(*begin*)(*...........................................*)

  if FFirstLoad then
    begin
    BuildConnectionString; // this makes sure that all registry values are read when first loading the system
    FFirstLoad := False;
    end;

  xC := ClassName;
  xM := 'OpenDatasets';
  if pDataConnection = '' then
    vCollection := -1
    else
    vCollection := ConnectionName(pDataConnection);

//  DBLog := TCSVLogger.Create;
  ProcessDatasets := False;

  with FConnection do
    try

    xO := FConnection.Name;
    xT := FConnection.ClassName;

    if vCollection = -1 then
      begin
      FConnection.Close;
      FConnection.Open;
      end;

    ProcessDatasets := True;

    except
      on E : Exception do Exception.Create('Auto Open' + #13 + E.Message);
{
      on E: EDatabaseError do
        if FuseLogFile then
          DBLog.Add(ecError , xC, xM, xT, xO, 'EDatabaseError',E.Message);                       // Add to log file

      on E: EVariantError do
        if FuseLogFile then
          DBLog.Add(ecError , xC, xM, xT, xO, 'EVariantError',E.Message);                       // Add to log file

      on E: EOleException do
        if FuseLogFile then
          DBLog.Add(ecError , xC, xM, xT, xO, 'EOleException',E.Message);                       // Add to log file
}
    end; (*try.. except*)


  dsCount := 0;
  if ProcessDatasets then
    with FConnection do
      for j := low(FConnectionNames) to high(FConnectionNames) do                                              // If tag value is > Max_Tag_Count, won't open
        for k := 0 to DataSetCount -1 do
        try
        xO := DataSets[k].Name;
        xT := DataSets[k].ClassType.ClassName;

        if DataSets[k].Tag = j then
          if (vCollection = -1) or (vCollection = j) then
            begin
            DataSets[k].Active := True;                                           // Activate the datastore
            inc(dsCount);
            end;

        if (j = high(FConnectionNames)) and (k = DataSetCount -1) then
          if FuseLogFile then
            begin
            xO := FConnection.Name;
            xT := FConnection.ClassName;
 //           DBLog.Add(ecInformation , xC, xM, xT, xO, 'Opened',
//              IntToStr(dsCount) + ' Dataset(s) successfully opened');                       // Add to log file
            end;

        except
          on E : Exception do Exception.Create('Auto Open' + #13 + E.Message);
{
        on E: EDatabaseError do
          if FuseLogFile then
            DBLog.Add(ecError , xC, xM, xT, xO, 'EDatabaseError',E.Message);                       // Add to log file

        on E: EVariantError do
          if FuseLogFile then
            DBLog.Add(ecError , xC, xM, xT, xO, 'EVariantError',E.Message);                       // Add to log file

        on E: EOleException do
          if FuseLogFile then
            DBLog.Add(ecError , xC, xM, xT, xO, 'EOleException',E.Message);                       // Add to log file
}
        end; (*try.. except*)

//  if assigned(DBLog) then DBLog.free;

end; (*................................................................*)(*end*)(*...........................................*)


function TConnection.Getconnection: TADOConnection;
                                                                                (*function:Getconnection---------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := Fconnection;

end; (*................................................................*)(*end*)(*...........................................*)


function TConnection.Getpassword: string; (*::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:Getpassword-----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FsaveToRegistry then FPassword := ReadStringFromRegistry(CPASSWORD, True);
  Result := FPassword;

end; (*................................................................*)(*end*)(*...........................................*)


function TConnection.GetuserName: string; (*::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetuserName-----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FsaveToRegistry then FUserName := ReadStringFromRegistry(CUSER, True);
  Result := FUserName;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TConnection.Setpassword(const Value: string); (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Setpassword----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  FPassword := Value;
  if FsaveToRegistry then SaveStringToRegistry(CPASSWORD, Value, True);
  BuildConnectionString;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TConnection.SetuserName(const Value: string); (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetuserName----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  FUserName := Value;
  if FsaveToRegistry then SaveStringToRegistry(CUSER, Value, True);
  BuildConnectionString;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TConnection.SaveStringToRegistry(pField, pValue : string; pEncode 
    :boolean);
var (*.................................................................*)(*var*)(*...........................................*)
  OldEncodeVal :Boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  OldEncodeVal  := FReg.Encode;
  FReg.Encode   := pEncode;
  FReg.Field    := pField;
  FReg.Value    := pValue;
  FReg.Encode   := OldEncodeVal;

end;

function TConnection.ReadStringFromRegistry(pField :string; pEncode :boolean): 
    string;
var (*.................................................................*)(*var*)(*...........................................*)
  OldEncodeVal :Boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  OldEncodeVal := FReg.Encode;
  FReg.Encode := pEncode;
  FReg.Field := pField;
  Result := FReg.Value;
  FReg.Encode := OldEncodeVal;

end;

function TConnection.Add(newConnection : TADOConnection ; dontOpen : boolean = 
    false): Integer;
var
  i :integer;
  curConn:integer;
  dsCount :integer;

begin

  newConnection.Close;
  curConn := ConnectionName(newConnection.Name, True);
  dsCount := newConnection.DataSetCount -1;

  for i := dsCount downto  0 do
    with newConnection.DataSets[i] do
      if newConnection.DataSets[i].Connection <> FConnection then
        begin
        if Tag > -1 then Tag := curConn else Tag := -1;
        newConnection.DataSets[i].Connection := FConnection;
        end;

  if not dontOpen then
    if autoOpen then
      if FConnection.Connected then
        if curConn <> -1 then
          OpenDatasets(newConnection.Name);

  if not dontOpen then
    if autoOpen then
      if FConnection.Connected then
        Refresh(newConnection);

  Result := curConn;

end;

function TConnection.ConnectionName(newName :string ; autoAdd : boolean =
    False): Integer;
var
  i : integer;
  itemFound : boolean;
begin

  try

  Result := -1;
  itemFound := False;

  for i := low(FConnectionNames) to high(FConnectionNames) do
    if FConnectionNames[i] = newName then
      begin
      itemFound := True;
      Result := i;
      end;

  if autoAdd then
    if not itemFound then
      begin
      SetLength(FConnectionNames, Length(FConnectionNames) + 1);
      FConnectionNames[high(FConnectionNames)] := newName;
      Result := high(FConnectionNames);
      end;

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;


end;

procedure TConnection.Remove(oldConnection : TADOConnection);
var
  i :integer;
  curConn:integer;
begin

  try
    oldConnection.Close;
    curConn := ConnectionName(oldConnection.Name);

    if curConn <> -1 then
      begin
      for i := FConnection.DataSetCount -1 downto 0 do
        if FConnection.DataSets[i].Tag = curConn then
        begin
          FConnection.DataSets[i].Active := False;
          FConnection.DataSets[i].Connection := oldConnection;
          end;
      FConnectionNames[curConn] := '';
      end;

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

function TConnection.Refresh(conName : TADOConnection): Boolean;
var
  k,vCollection     : integer;

begin

  try
    Result := False;
    vCollection := ConnectionName(conName.Name);
    for k := 0 to FConnection.DataSetCount -1 do
      if FConnection.DataSets[k].Tag = vCollection then
        with FConnection.DataSets[k] do
          begin
          Close;
          Open;
          end;
    Result := True;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TConnection.Setfolder(const Value: string);
begin
  try
    FReg.Folder := DBFOLDER;
    if Value <> '' then FReg.Folder := FReg.Folder + '\' + Value;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;


end;

function TConnection.Getfolder: string;
begin
  Result := FReg.Folder;
end;

function TConnection.Database_Backup: string;
begin
  Result := '';
end;

function TConnection.Database_Attach(FileName :string = ''): string;
begin
  Result := '';
end;

procedure TConnection.CloseConnection;
begin
  FConnection.Connected := False;
end;


constructor TSQLConnection.Create;
                                                                                (*constructor:Create-------------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  try
  inherited Create;
  OLEDBProvider := 'MSDASQL.1';
  FconnectionReady := False;
  FPort := DEFAULT_MYSQL_PORT;
  FDriver := DEFAULT_MYSQL_DRIVER;
  FuseIntegratedSecurity := False;
  FWarnedIntegratedSecurity := False;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.BuildConnectionString: string; (*:::::::::::::::START:*)(*===========================================*)
                                                                                (*function:BuildConnectionString-------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  RetStr, vPassword, vUsername, vDatabase, vServer, vDriver: string;
  vPort: Word;

begin (*.............................................................*)(*begin*)(*...........................................*)

  try
  inherited BuildConnectionString;

  RetStr := '';
  vPassword := GetPassword;
  vUsername := GetUsername;
  vDatabase := GetDatabase;
  vServer   := GetServer;
  vDriver   := Getdriver;
  vPort     := Getport;

  GetuseIntegratedSecurity;

  if Trim(vDriver) = '' then vDriver := DEFAULT_MYSQL_DRIVER;
  if vPort = 0 then vPort := DEFAULT_MYSQL_PORT;

  RetStr := Format('Provider=%s;Persist Security Info=False;Driver={%s};Server=%s;Port=%d',
    [OLEDBProvider, vDriver, vServer, vPort]);

  if vDatabase <> '' then
    RetStr := RetStr + Format(';Database=%s', [vDatabase]);

  if vUsername <> '' then
    RetStr := RetStr + Format(';User=%s', [vUsername]);

  if vPassword <> '' then
    RetStr := RetStr + Format(';Password=%s', [vPassword]);

  if Pos('Option=', AnsiUpperCase(RetStr)) = 0 then
    RetStr := RetStr + Format(';%s', [DEFAULT_ODBC_OPTIONS]);

  if RetStr[Length(RetStr)] <> ';' then
    RetStr := RetStr + ';';

  Result := RetStr;
  FConnection.ConnectionString := Result;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.EditConnectionProperties: Boolean; (*:::::::::::START:*)(*===========================================*)
                                                                                (*function:EditConnectionProperties----------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  MyConn :TSetConnection;

begin (*.............................................................*)(*begin*)(*...........................................*)

try
  Result := False;
  MyConn := TSetConnection.Create;
  with MyConn do
    try
    MyConn.Server := GetServer;
    MyConn.Database := GetDatabase;
    MyConn.UserName := GetUsername;
    MyConn.Password := GetPassword;
    MyConn.integratedSecurity := False;
    MyConn.Port := IntToStr(Getport);
    MyConn.BackupPath := GetdatabaseBackupPath;

    if MyConn.Connect(etSQL) then
      begin
      SetServer(MyConn.Server);
      SetDatabase(MyConn.Database);
      SetuseIntegratedSecurity(MyConn.integratedSecurity);
      Setport(StrToIntDef(MyConn.Port, DEFAULT_MYSQL_PORT));
      SetdatabaseBackupPath(MyConn.BackupPath);

      // Changed Deane 2006- feb  Cleared values for user and password if using intergrated security
      if MyConn.integratedSecurity then
        begin
        SetUsername('');
        SetPassword('');
        end else
        begin
        SetUsername(MyConn.UserName);
        SetPassword(MyConn.Password);
        end;

      Result := True;
      if FautoOpen then OpenDatasets;
      end;
    finally
    Free;
    end;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.Getdatabase: string; (*:::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:Getdatabase-----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FsaveToRegistry then FDatabase := ReadStringFromRegistry(CDATABASE, False);
  Result := FDatabase;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.Getserver: string; (*:::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:Getserver-------------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FsaveToRegistry then FServer := ReadStringFromRegistry(CSERVER, False);
  Result := FServer;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.GetuseIntegratedSecurity: Boolean; (*:::::::::::START:*)(*===========================================*)
                                                                                (*function:GetuseIntegratedSecurity----------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  RetVal : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

try
  if FsaveToRegistry then
    begin
    RetVal := ReadStringFromRegistry(CINTSECURITY, True);
    if RetVal = CTRUE then
      begin
      FuseIntegratedSecurity := False;
      if not FWarnedIntegratedSecurity then
        begin
        MessageDlg('Integrated security is not supported for MySQL connections. '
          + 'Credentials will be required instead.', mtWarning, [mbOK], 0);
        FWarnedIntegratedSecurity := True;
        end;
      SaveStringToRegistry(CINTSECURITY, CFALSE, True);
      end
      else
      FuseIntegratedSecurity := False;
    end;
  Result := FuseIntegratedSecurity;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TSQLConnection.Setdatabase(const Value: string); (*:::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Setdatabase----------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
try
  FDatabase := Value;
  if FsaveToRegistry then SaveStringToRegistry(CDATABASE, Value, False);
  BuildConnectionString;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TSQLConnection.Setserver(const Value: string); (*:::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Setserver------------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

try
  FServer := Value;
  if FsaveToRegistry then SaveStringToRegistry(CSERVER, Value, False);
  BuildConnectionString;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TSQLConnection.SetuseIntegratedSecurity(Value: Boolean);



begin

try
  if Value then
    FuseIntegratedSecurity := False
    else
    FuseIntegratedSecurity := False;

  if FsaveToRegistry then
    SaveStringToRegistry(CINTSECURITY, CFALSE, True);

  BuildConnectionString;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end;

procedure TSQLConnection.OpenDatasets(pDataConnection :string = '' );
                                                                                (*procedure:OpenDatasets---------------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)

begin (*.............................................................*)(*begin*)(*...........................................*)
try
  BuildConnectionString; // this makes sure that all registry values are read when first loading the system
  if FServer <> '' then
    if FDatabase <> '' then
      inherited OpenDatasets(pDataConnection);
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)


function TSQLConnection.Database_Backup: string;
begin

  Result := '';
  MessageDlg('Automated backup routines are not supported for MySQL connections. '
    + 'Please use mysqldump or your preferred MySQL backup utility.',
    mtInformation, [mbOK], 0);

end;

function TSQLConnection.GetdatabaseBackupPath: string;
begin
  if FsaveToRegistry then FDatabaseBackupPath := ReadStringFromRegistry(CDATABASEBACKUPPATH, False);
  Result := FDatabaseBackupPath;
end;

procedure TSQLConnection.SetdatabaseBackupPath(const Value: string);
begin
  FDatabaseBackupPath := Value;
  if FsaveToRegistry then SaveStringToRegistry(CDATABASEBACKUPPATH, Value, False);
end;

function TSQLConnection.Getport: Word;
var
  PortValue: string;
begin
  if FsaveToRegistry then
    begin
    PortValue := ReadStringFromRegistry(CPORT, False);
    if PortValue = '' then
      PortValue := ReadStringFromRegistry(CLEGACYDATABASEPHYSICALNAME, False);
    if PortValue <> '' then
      FPort := StrToIntDef(PortValue, DEFAULT_MYSQL_PORT);
    end;

  if FPort = 0 then
    FPort := DEFAULT_MYSQL_PORT;

  Result := FPort;
end;

procedure TSQLConnection.Setport(const Value: Word);
var
  StoredValue: string;
begin
  if Value = 0 then
    FPort := DEFAULT_MYSQL_PORT
    else
    FPort := Value;

  if FsaveToRegistry then
    begin
    StoredValue := IntToStr(FPort);
    SaveStringToRegistry(CPORT, StoredValue, False);
    end;

  BuildConnectionString;
end;

function TSQLConnection.Getdriver: string;
begin
  if FsaveToRegistry then
    begin
    FDriver := ReadStringFromRegistry(CDRIVER, False);
    if FDriver = '' then
      FDriver := ReadStringFromRegistry(CLEGACYDATABASEPHYSICALNAME, False);
    end;

  if Trim(FDriver) = '' then
    FDriver := DEFAULT_MYSQL_DRIVER;

  if Length(FDriver) > 1 then
    if (FDriver[1] = '{') and (FDriver[Length(FDriver)] = '}') then
      FDriver := Copy(FDriver, 2, Length(FDriver) - 2);

  Result := FDriver;
end;

procedure TSQLConnection.Setdriver(const Value: string);
begin
  FDriver := Trim(Value);
  if FDriver = '' then
    FDriver := DEFAULT_MYSQL_DRIVER;

  if Length(FDriver) > 1 then
    if (FDriver[1] = '{') and (FDriver[Length(FDriver)] = '}') then
      FDriver := Copy(FDriver, 2, Length(FDriver) - 2);

  if FsaveToRegistry then
    SaveStringToRegistry(CDRIVER, FDriver, False);

  BuildConnectionString;
end;


function TSQLConnection.BuildConnectionString_WithoutDB: string;
                                                                                (*function:BuildConnectionString-------------*)
                                                                                (*===========================================*)
                                                                   (*14.9.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  RetStr, vPassword, vUsername, vServer, vDriver: string;
  vPort: Word;

begin (*.............................................................*)(*begin*)(*...........................................*)

try
  inherited BuildConnectionString;

  RetStr := '';
  vPassword := GetPassword;
  vUsername := GetUsername;
  vServer   := GetServer;
  vDriver   := Getdriver;
  vPort     := Getport;

  GetuseIntegratedSecurity;

  if Trim(vDriver) = '' then vDriver := DEFAULT_MYSQL_DRIVER;
  if vPort = 0 then vPort := DEFAULT_MYSQL_PORT;

  RetStr := Format('Provider=%s;Persist Security Info=False;Driver={%s};Server=%s;Port=%d',
    [OLEDBProvider, vDriver, vServer, vPort]);

  if vUsername <> '' then
    RetStr := RetStr + Format(';User=%s', [vUsername]);

  if vPassword <> '' then
    RetStr := RetStr + Format(';Password=%s', [vPassword]);

  if Pos('Option=', AnsiUpperCase(RetStr)) = 0 then
    RetStr := RetStr + Format(';%s', [DEFAULT_ODBC_OPTIONS]);

  if RetStr[Length(RetStr)] <> ';' then
    RetStr := RetStr + ';';

  Result := RetStr;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end; (*................................................................*)(*end*)(*...........................................*)

function TSQLConnection.Database_Attach(FileName :string = ''): string;
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  MessageDlg('Automatic database attach operations are not supported for MySQL '
    + 'connections. Restore the database using native MySQL tooling.',
    mtInformation, [mbOK], 0);

end;

function TSQLConnection.TestConnectivity: Boolean;
var
  adoCon: TADOConnection;

begin

  Result := False;
  FconnectionReady := False;
  BuildConnectionString; // this makes sure that all registry values are read when first loading the system
  if FServer <> '' then
    if FDatabase <> '' then
      try
      adoCon := TADOConnection.Create(nil);
      adoCon.LoginPrompt := False;
      adoCon.ConnectionString := FConnection.ConnectionString;
        try
        adoCon.Open;
        adoCon.Close;
        FconnectionReady := True;
        Result := True;
        except
        end;
      finally
      adoCon.Free;
      end;

end;


























constructor TAccessConnection.Create;
begin

  inherited Create;
  OLEDBProvider := 'Microsoft.Jet.OLEDB.4.0';

end;

function TAccessConnection.BuildConnectionString: string;
const
  CONNSTR_0 = 'Provider=%s;Password="";Data Source=%s;Persist Security Info=True';
var
  RetStr :string;
begin

try
  inherited BuildConnectionString;

  RetStr := '';                                      //'L:\My Data\Access DB.mdb'
  RetStr := Format(CONNSTR_0, [OLEDBProvider, GetmdbFileName]);
  Result := RetStr;
  FConnection.ConnectionString := Result;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end;


function TAccessConnection.EditConnectionProperties: Boolean;
var
  MyConn :TSetConnection;
begin

  Result := False;
try
  MyConn := TSetConnection.Create;
  with MyConn do
    try
    MyConn.FileName := GetmdbFileName;
    MyConn.UserName := GetUsername;
    MyConn.Password := GetPassword;
    if MyConn.Connect(etAccess) then
      begin
      SetmdbFileName(MyConn.FileName);
      SetUsername(MyConn.UserName);
      SetPassword(MyConn.Password);
      Result := True;
      if FautoOpen then OpenDatasets;
      end;
    finally
    Free;
    end;
except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
end;

end;

function TAccessConnection.GetmdbFileName: string;
begin

  if FsaveToRegistry then FmdbFileName := ReadStringFromRegistry(CMDBFILE, False);
  Result := FmdbFileName;

end;

procedure TAccessConnection.SetmdbFileName(const Value: string);
begin

  FmdbFileName := Value;
  if FsaveToRegistry then SaveStringToRegistry(CMDBFILE, Value, False);
  BuildConnectionString;

end;






end.


unit MyApplicationClass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Registry, DBCtrls, ADODB, ComObj;



const

  SQL_USER  = 'sa';
  SQL_PWD   = '';
  SQL_DB    = 'RxStore';
  SQLCON    = 'Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';

  MSG_INFO  = 1;
  MSG_ERROR = 2;
  MSG_DEBUG = 3;
  MSG_FATAL = 4;




  MAX_TAG_COUNT       = 20;

  DTRUE               = '1';
  DFALSE              = '0';
  DAPPKEY             = 'Application\';
  DHELPKEY            = 'Help\';
  DLOGKEY             = 'Event Log\';
  DDATAKEY            = 'Data\';
  DSECKEY             = 'Security\';
  DNILKEY             = '\\';



  VALSTR              = 0;
  VALBOOL             = 1;
  VALINT              = 2;


  DATA_CONTYPE        = 'Microsoft.Jet.OLEDB.4.0';



  //  Application properties
  maNAME              = 0;
  maVERSION           = 1;
  maRELEASE           = 2;
  maBUILD             = 3;
  maDEVELOPER         = 4;
  maAPPPATH           = 5;
  maGETVERINFO        = 0;

  // Log File
  maLOGPATH           = 6;
  maLOGSAVETOFILE     = 1;
  maLOGSAVEASXML      = 2;


  // Data properties
  maDATACONNECTED     = 3;
  maDATAAUTOCONNECT   = 4;
  maDATAPATH          = 7;
  maDATABASE          = 8;
  maDATAUSER          = 9;
  maDATAPASS          = 10;
  maDATAVERSION       = 11;


  maSECURITYCONNECTED = 5;
  maSECURITYIGNORE    = 6;
  maSECURITYLOGGEDON  = 7;
  maSECURITYADONAME   = 12;



  maUSERNAME          = 13;
  maUSERLEVEL         = 14;
  maUSERFIRSTNAME     = 15;
  maUSERLASTNAME      = 16;
  maUSERCOMPUTERNAME  = 17;
  maUSERCURRENTSCREEN = 18;
  maUSERCURRENTACTION = 19;

  maTOTALSTRING       = 20;
  maTOTALBOOL         =  8;
  maTOTALINT          =  0;

  maTOTAL             = maTOTALSTRING + maTOTALBOOL + maTOTALINT  - 1;

type

  rDefaultProps = record
    rCls  :Boolean;   // Store values only in class: if true it won't update from registry
    dTyp  :integer;
    rPth  :string;
    rKey  :string;
    rVal  :string;
    rInd  :integer;
    end;

  TDataProcessingEvent = procedure(Sender : TObject; const PercentComplete : integer) of Object;

const

  {Version History}
  { 1.0  Initial release }
  { 1.1  Database changes, general changes }
  { 1.1a Security bug changes, add call for external reportbuilder file }
  { 1.1b Security Bug finally fixed??   Adjusted filter dispalys for demanders } // bug not fixed
  { 1.1c Updated printing table/stored procs.  was calling all data from tables ???? }


  RegArray  :array[0..maTOTAL] of rDefaultProps = (
  { 0}(rCls:True; dTyp:VALSTR; rPth:DAPPKEY; rKey:'Application Name'; rVal:'RxStore'   ;rInd:maNAME),
  { 1}(rCls:True; dTyP:VALSTR; rPth:DAPPKEY; rKey:'Release'         ; rVal:'Standard'  ;rInd:maRELEASE),
  { 2}(rCls:True; dTyP:VALSTR; rPth:DAPPKEY; rKey:'Version'         ; rVal:'1.1f'     ;rInd:maVERSION),
  { 3}(rCls:True; dTyP:VALSTR; rPth:DAPPKEY; rKey:'Build'           ; rVal:''    ;rInd:maBUILD),
  { 4}(rCls:True; dTyP:VALSTR; rPth:DAPPKEY; rKey:'Developer'       ; rVal:'Department of Health'; rInd:maDEVELOPER),
  { 5}(rCls:True; dTyP:VALSTR; rPth:DAPPKEY; rKey:'Installation Folder'; rVal:''     ;rInd:maAPPPATH),
  { 6}(rCls:True; dTyP:VALBOOL;rPth:DNILKEY; rKey:'AppGetVerInfo'   ; rVal:DFALSE    ;rInd:maGETVERINFO),

  { 7}(rCls:False;dTyP:VALSTR; rPth:DLOGKEY; rKey:'Log File Folder' ; rVal:'..\Log Files\'; rInd:maLOGPATH),
  { 8}(rCls:False;dTyP:VALBOOL;rPth:DLOGKEY; rKey:'Save to File'    ; rVal:DTRUE     ;rInd:maLOGSAVETOFILE),
  { 9}(rCls:False;dTyP:VALBOOL;rPth:DLOGKEY; rKey:'Save as XML'     ; rVal:DFALSE    ;rInd:maLOGSAVEASXML),

  {10}(rCls:True; dTyP:VALBOOL;rPth:DNILKEY; rKey:'DataConnected'   ; rVal:DFALSE    ;rInd:maDATACONNECTED),
  {11}(rCls:False;dTyP:VALBOOL;rPth:DDATAKEY;rKey:'Auto Connect'    ; rVal:DTRUE     ;rInd:maDATAAUTOCONNECT),
  {12}(rCls:False;dTyP:VALSTR; rPth:DDATAKEY;rKey:'Server'          ; rVal:''        ;rInd:maDATAPATH),
  {13}(rCls:False;dTyP:VALSTR; rPth:DDATAKEY;rKey:'DB'              ; rVal:''        ;rInd:maDATABASE),
  {14}(rCls:False;dTyP:VALSTR; rPth:DDATAKEY;rKey:'UserName'        ; rVal:''        ;rInd:maDATAUSER),
  {15}(rCls:False;dTyP:VALSTR; rPth:DDATAKEY;rKey:'Password'        ; rVal:''        ;rInd:maDATAPASS),
  {16}(rCls:True; dTyP:VALSTR; rPth:DDATAKEY;rKey:'Data Version'    ; rVal:'1.1C'    ;rInd:maDATAVERSION),

  {17}(rCls:True; dTyP:VALBOOL;rPth:DSECKEY; rKey:'Security Connected'; rVal:DFALSE  ;rInd:maSECURITYCONNECTED),
  {18}(rCls:True; dTyP:VALBOOL;rPth:DSECKEY; rKey:'Ignore Security' ; rVal:DFALSE    ;rInd:maSECURITYIGNORE),
  {19}(rCls:True; dTyP:VALBOOL;rPth:DSECKEY; rKey:'User Logged On'  ; rVal:DFALSE    ;rInd:maSECURITYLOGGEDON),
  {20}(rCls:True; dTyP:VALSTR; rPth:DSECKEY; rKey:'SecurityADOName' ; rVal:'Security';rInd:maSECURITYADONAME),

  {21}(rCls:True; dTyP:VALSTR; rPth:DNILKEY; rKey:'UserName'        ; rVal:''        ;rInd:maUSERNAME),
  {22}(rCls:True; dTyP:VALSTR; rPth:DNILKEY; rKey:'UserLevel'       ; rVal:''        ;rInd:maUSERLEVEL),
  {23}(rCls:True; dTyP:VALSTR; rPth:DNILKEY; rKey:'UserFirstName'   ; rVal:''        ;rInd:maUSERFIRSTNAME),
  {24}(rCls:True; dTyP:VALSTR; rPth:DNILKEY; rKey:'UserLastName'    ; rVal:''        ;rInd:maUSERLASTNAME),
  {25}(rCls:True; dTyP:VALSTR; rPth:DNILKEY; rKey:'UserComputerName'; rVal:''        ;rInd:maUSERCOMPUTERNAME),
  {26}(rCls:False;dTyP:VALSTR; rPth:DNILKEY; rKey:'UserCurrentScreen';rVal:''        ;rInd:maUSERCURRENTSCREEN),
  {27}(rCls:False;dTyP:VALSTR; rPth:DNILKEY; rKey:'UserCurrentAction';rVal:''        ;rInd:maUSERCURRENTACTION));

  SecurityTables  :array[0..2] of string =(
                  'sysConnections',
                  'sysUsers',
                  'sysUsersLoggedOn');

  SystemTables  :array[0..0] of string =(
                  'sysDatabase'
                  );


type

  (*==========================================================================*)
  (*  MYAPPLICATION OBJECT                                                    *)
  (*==========================================================================*)
  (*  These settings are not from the global application variable, but are    *)
  (*  from this applications settings                                         *)
  (*                                                                          *)
  (*==========================================================================*)
TMyApplication = class(TObject)

  private
    (*.........................................................*)
    (*  OBJECT wide variables                                  *)
    (*.........................................................*)
    FRegistryPath   :String;     // = '\Software\Calliope' + AppName + Version;
    FLogCount       :integer;    // Used for a running count for log file.
    FDebug          :Boolean;     // If true detailed log reports with be created.
    FDataSets       :Integer;

    (*.........................................................*)
    (*  PROPERTY variables                                     *)
    (*.........................................................*)
    (*  Most variables for the application part of this object *)
    (*  are stored in the registry                             *)
    (*.........................................................*)
    FDataStr            :array[0..maTOTALSTRING] of String;
    FDataBool           :array[0..maTOTALBOOL] of Boolean;
//    FDataInt            :array[0..0] of Integer;

    (*.........................................................*)
    (*  LOGS variables                                         *)
    (*.........................................................*)
    FLogFile            :TStringList;  // Internal var for holding log file.
    FLogFileName        :String;      // name of log file created by current session



    (*.........................................................*)
    (*  DATA variables                                         *)
    (*.........................................................*)




    (*.........................................................*)
    (*  SECURITY variables                                     *)
    (*.........................................................*)



    (*.........................................................*)
    (*  EVENT  properties                                      *)
    (*.........................................................*)
    (* Methods from properties call other methods..............*)
    FOnPasswordChanged: TNotifyEvent;
    FOnAfterLogOff: TNotifyEvent;
    FOnUserLevelChange: TNotifyEvent;
    FOnAfterLogOn: TNotifyEvent;
    FOnDataBeforeConnect: TNotifyEvent;
    FOnSecurityConnect: TNotifyEvent;
    FOnSecurityErrorConnecting: TNotifyEvent;
    FOnDataAfterConnect: TNotifyEvent;
    FOnDataErrorConnecting: TNotifyEvent;
    FOnSecurityDisConnect: TNotifyEvent;
    FOnPasswordChange: TNotifyEvent;
    FOnDataProcessing: TDataProcessingEvent;
    FOnDataBeforeDisconnect: TNotifyEvent;
    FOnDataAfterDisconnect: TNotifyEvent;

    (* Methods that work on the registry object................*)
    function GetRegistryValue(const Index :integer):Variant;
    function SetRegistryValue(const Index :integer; NewValue:Variant):Boolean;


    (*.........................................................*)
    (*  OBJECT methods of properties                           *)
    (*.........................................................*)
    (* Methods for properties..................................*)
    function GetClassItem(const Index: Integer): String;
    procedure SetClassItem(const Index: Integer; const Value: String);
    function GetBoolClassItem(const Index: Integer): Boolean;
    procedure SetBoolClassItem(const Index: Integer; const Value: Boolean);






    procedure InitialRegistrySetup;
    function CheckForDataModules: Boolean;
    function GetActualIndex(Index, ValType: Integer): Integer;
    function GetLogFileName: String;
    function GetPropertyValue(const Index, VariableType: Integer): Variant;
    procedure SetPropertyValue(const Index, VariableType: Integer;
      const Value: Variant);
    function GetNewDataSource(var DataSource: string): Boolean;
    function GetNewSQLServer(var DataSource: string): Boolean;
    function ConnectToDatabase(const ConType, DataSource, prmDB, prmUser,
        prmPassword: string): Boolean;
    procedure DisConnectDatabase;
    function ConnectToSecurity: Boolean;


      procedure PasswordChanged; dynamic;
      procedure AfterLogOff; dynamic;
      procedure UserLevelChange; dynamic;
      procedure AfterLogOn; dynamic;
      procedure DataBeforeConnect; dynamic;
      procedure SecurityConnect; dynamic;
      procedure SecurityErrorConnecting; dynamic;
      procedure DataAfterConnect; dynamic;
      procedure DataErrorConnecting; dynamic;
      procedure SecurityDisConnect; dynamic;
      procedure DataProcessing(const CurrentPosition : integer); dynamic;

      procedure DataBeforeDisconnect; dynamic;
      procedure DataAfterDisconnect; dynamic;

    protected

    public
      constructor Create;
      destructor  Destroy;override;
      function  Connect(NewSource: Boolean = False):Boolean;
      procedure   AddLogItem(NewItem :String);
      procedure   LogOn;



    published

      // Registry Properties
      property AppName            :string index maNAME read GetClassItem;
      property AppVersion         :string index maVERSION read GetClassItem;
      property AppRelease         :string index maRELEASE read GetClassItem;
      property AppBuild           :string index maBUILD read GetClassItem;
      property AppDeveloper       :string index maDEVELOPER read GetClassItem;
      property AppPath            :string index maAPPPATH read GetClassItem write SetClassItem;
      property AppGetVerInfo      :Boolean index maGETVERINFO read GetBoolClassItem write SetBoolClassItem;
//    property AppSaveToRegistry  :Boolean index maSAVETOREGISTRY read GetBoolClassItem write SetBoolClassItem;

      property LogFile            :TStringList read FLogFile;
      property LogPath            :string index maLOGPATH read GetClassItem write SetClassItem;
      property LogSaveToFile      :Boolean index maLOGSAVETOFILE read GetBoolClassItem write SetBoolClassItem;
      property LogSaveAsXML       :Boolean index maLOGSAVEASXML read GetBoolClassItem write SetBoolClassItem;

      property DataConnected      :Boolean index maDATACONNECTED read GetBoolClassItem;
      property DataAutoConnect    :Boolean index maDATAAUTOCONNECT read GetBoolClassItem write SetBoolClassItem;
      property DataServer         :string index maDATAPATH read GetClassItem write SetClassItem;
      property Database           :string index maDATABASE read GetClassItem write SetClassItem;
      property DataUser           :string index maDATAUSER read GetClassItem write SetClassItem;
      property DataPassword       :string index maDATAPASS read GetClassItem write SetClassItem;
      property DataVersion        :string index maDATAVERSION read GetClassItem Write SetClassItem;

      property SecurityConnected  :Boolean index maSECURITYCONNECTED read GetBoolClassItem;
      property SecurityIgnore     :Boolean index maSECURITYIGNORE read GetBoolClassItem;
      property SecurityLoggedOn   :Boolean index maSECURITYLOGGEDON read GetBoolClassItem;
      property SecurityADOName    :string index maSECURITYADONAME read GetClassItem;

      property UserName           :string index maUSERNAME read GetClassItem;
      property UserLevel          :string index maUSERLEVEL read GetClassItem;
      property UserFirstName      :string index maUSERFIRSTNAME read GetClassItem;
      property UserLastName       :string index maUSERLASTNAME read GetClassItem;
      property UserComputerName   :string index maUSERCOMPUTERNAME read GetClassItem;
      property UserCurrentScreen  :string index maUSERCURRENTSCREEN read GetClassItem;
      property UserCurrentAction  :string index maUSERCURRENTACTION read GetClassItem;

      //EVENTS
      property OnDataBeforeConnect    :TNotifyEvent read FOnDataBeforeConnect write FOnDataBeforeConnect;
      property OnDataAfterConnect     :TNotifyEvent read FOnDataAfterConnect write FOnDataAfterConnect;
      property OnDataBeforeDisconnect :TNotifyEvent read FOnDataBeforeDisconnect write FOnDataBeforeDisconnect;
      property OnDataAfterDisconnect  :TNotifyEvent read FOnDataAfterDisconnect write FOnDataAfterDisconnect;

      property OnDataErrorConnecting  :TNotifyEvent read FOnDataErrorConnecting write FOnDataErrorConnecting;

      property OnSecurityConnect      :TNotifyEvent read FOnSecurityConnect write FOnSecurityConnect;
      property OnSecurityDisConnect   :TNotifyEvent read FOnSecurityDisConnect write FOnSecurityDisConnect;
      property OnSecurityErrorConnecting   :TNotifyEvent read FOnSecurityErrorConnecting write FOnSecurityErrorConnecting;

      property OnAfterLogOn           :TNotifyEvent read FOnAfterLogOn write FOnAfterLogOn;
      property OnAfterLogOff          :TNotifyEvent read FOnAfterLogOff write FOnAfterLogOff;

      property OnPasswordChanged      :TNotifyEvent read FOnPasswordChange write FOnPasswordChange;
      property OnUserLevelChange      :TNotifyEvent read FOnUserLevelChange write FOnUserLevelChange;

      property OnDataProcessing       :TDataProcessingEvent read FOnDataProcessing write FOnDataProcessing;


    end;


implementation

//  uses frm_Security;


  { TMyApplication }


constructor TMyApplication.Create; (*:::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*constructor:Create-------------------------*)
                                                                                (*===========================================*)
                                                                    (*5.4.2002*)(* Orig::Deane Putzier                       *)

  (*...........................................................*)
  (*  Create                                                   *)
  (*...........................................................*)
  (*  Creates Object.                                          *)
  (*  Need to set registry key, and do initial setup for       *)
  (*  object.                                                  *)
  (*...........................................................*)

var (*.................................................................*)(*var*)(*...........................................*)
                                    // Following are used to create reg path
  tDev              : string;       // Holds Developer name.
  tNam              : string;       // Holds Application name.
  tRel              : string;       // Holds Release type.
  tVer              : string;       // Holds version number.

const                                                                  (*const*)(*...........................................*)
REGPATH = '\Software\%s\%s\%s\%s\';

begin (*.............................................................*)(*begin*)(*...........................................*)


  inherited;                                                                    // Make sure everything is properly set up.

                                                                                // Initialise vars.
  FLogFile        := TStringList.Create;
  FLogCount       := 0;
  FDebug          := False;                                                     // Internal var, for creating detailed logs
  FDataSets       := 0;                                                         // Datasets available for opening in the App

                                                                                // Build registry key path. Done before
                                                                                // registry setup is called. (Needs path)
  tDev            := RegArray[maDEVELOPER].rVal;
  tNam            := RegArray[maNAME].rVal;
  tRel            := RegArray[maRELEASE].rVal;
  tVer            := RegArray[maVERSION].rVal;
  FRegistryPath   := Format(REGPATH,[tDev,TNam,tRel,tVer]);                     // Assign the string to the object wide var.

                                                                                // SETUP registry and properties.
  InitialRegistrySetup;

                                                                                // Create log file name for this session.
  FLogFileName    := GetLogFileName;                                            // function: names & creates file.

end; (*................................................................*)(*end*)(*...........................................*)




destructor TMyApplication.Destroy; (*:::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*destructor:Destroy-------------------------*)
                                                                                (*===========================================*)
                                                                    (*5.4.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if Assigned(LogFile) then LogFile.Free;                                       // Release log file.
                                                                                // (ONLY IF IT HAS BEEN CREATED)
  inherited;                                                                    // Destructors call inherited last.
end; (*................................................................*)(*end*)(*...........................................*)



function TMyApplication.GetLogFileName:String; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetLogFileName--------------------*)
                                                                                (*===========================================*)
                                                                    (*5.4.2002*)(* Orig::Deane Putzier                       *)
                                                                                (*...........................................*)
                                                                                (*  Creates application log file name.                       *)
                                                                                (*  It is a unique that consists of date and time vars, so   *)
                                                                                (*  that no file name can be repeated.                       *)
                                                                                (*  A log file is created every time the app is started.     *)
                                                                                (*...........................................................*)

const                                                                  (*const*)(*...........................................*)
  LOGNAME   = '%s\%s %s%s%s-[%sh%s;%s].txt';
  LOGERROR  = 'Could not create log file.' + #13#10 + '%s';
  LOGDESC   = 'Created File: %s';

var (*.................................................................*)(*var*)(*...........................................*)
  Present           : TDateTime;                                                // Stores exact date and time for decoding
  Year, Month, Day,
  Hour, Min, Sec,
  MSec              : Word;                                                     // Decoded date values for file name
  sYr, sMn, sDy,
  sH, sM, sS        : string;                                                   // Decoded date values String equivalents
  LogPath           : string;                                                   // Path of the logfile
  TmpPath           : string;                                                   // Temporary work variable
  FFileHandle       : TextFile;                                                 // Handle to the created file.

begin (*.............................................................*)(*begin*)(*...........................................*)

  Present:= Now;
  DecodeDate(Present, Year, Month, Day);                                        // Decode date
  DecodeTime(Present, Hour, Min, Sec, MSec);                                    // Decode time

  sYr := IntToStr(Year);
  if Month < 10 then sMn := '0' + IntToStr(Month) else sMn := IntToStr(Month);  // Make sure values < 10 show as 05 not 5
  if Day < 10 then sDy := '0' + IntToStr(Day) else sDy := IntToStr(Day);        // This is for string sorting procedures as
  if Hour < 10 then sH := '0' + IntToStr(Hour) else sH := IntToStr(Hour);       // in the windows explorer.
  if Min < 10 then sM := '0' + IntToStr(Min) else sM := IntToStr(Min);
  if Sec < 10 then sS := '0' + IntToStr(Sec) else sS := IntToStr(Sec);

  LogPath := FDataStr[maLOGPATH];                                               // Get property values for file path
  TmpPath := Copy(LogPath, 1, 3);

  (*..........................................................................*)// Check if the file log must be a sub folder
  if TmpPath = '..\' then                                                       // of application path
    begin
    TmpPath := ExtractFileDir(Application.ExeName);                             // Get application path.  Has a '\' on the end.
    LogPath := TmpPath + Copy(LogPath, 3, Length(LogPath) - 3);                 // Remove the '..\' and join the string
    end;

  (*..........................................................................*)// Now remove the '\'
  if Copy(LogPath,Length(LogPath)-1,1) = '\' then
    LogPath := Copy(LogPath,1,Length(LogPath)-1);

  (*..........................................................................*)// Check if the path exists, if not create it.
  if not DirectoryExists(LogPath) then
    if not CreateDir(LogPath) then
      begin
      LogPath := ExtractFileDir(Application.ExeName);                           // It all failed, so place it in the app folder.
      LogPath := Copy(LogPath,1,Length(LogPath)-1);
      end;

  (*..........................................................................*)// Build the file name.
//TmpPath := LogPath;
  LogPath := Format(LOGNAME,[LogPath,FDataStr[maNAME],sYr,sMn,sDy,sH,sM,sS]);


  (*..........................................................................*)// Create the file.
  {
  try
    try
    AssignFile(FFileHandle, LogPath);                                           // Pass the name.
    Rewrite(FFileHandle);                                                       // Create and Open the file.
    Writeln(FFileHandle,Format(LOGDESC,[LogPath]));
    Flush(FFileHandle);                                                         // Use this to make sure the file is written.
    except
      on E: EInOutError do
        MessageDlg( Format(LOGERROR, [E.Message]),mtError, [mbOK], 0);
    end;
  finally
  CloseFile(FFileHandle);                                                       // Close it.
  end;
  }

  Result := LogPath;
  (*__________________________________________________________________________*)(*END____________________________*)
end;



  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*procedure:INITIALREGISTRYSETUP-------------*)
  (*                                                                          *)(*===========================================*)
procedure TMyApplication.InitialRegistrySetup;
  (*...........................................................*)
  (*  InitialRegistrySetup                                     *)
  (*...........................................................*)
  (*  Sets the program defaults.  Creates registry settings    *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  i                 : integer;      // Procedure loop variable
  RetVal            : Variant;      // Value returned from a regidtry query
  NewVal            : Variant;      // New value for property
  SetType           : integer;      // Type variant to work on, Bool, Str etc.

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin


  (*..........................................................................*)// Cycle through default array and setup.
  for i:= low(RegArray) to high(RegArray) do
    begin
    SetType := RegArray[i].dTyp;                                                // Get type, String boolean etc.

    (*........................................................................*)// Now process according to type.
    case SetType of

      VALBOOL:                                                                  // Boolean.
        begin
        if RegArray[i].rVal = DTRUE then NewVal := True else NewVal := False;   // Reg Array stores strings. Change to bool.
        RetVal := GetBoolClassItem(RegArray[i].rInd);                           // Find out if a value already exists.

        if (not RetVal) then SetBoolClassItem(RegArray[i].rInd,NewVal);         // If not, add it
        end; (*VALBOOL*)


      VALSTR:                                                                   // String.
        begin
        if (RegArray[i].dTyp = VALSTR) and (RegArray[i].rInd = maAPPPATH) then  // Process special case (Application path).
          begin
          NewVal := Application.ExeName;                                        // Get application path.
          RetVal := '';                                                         // App Path must always be updated.
          end else
          begin
          NewVal := RegArray[i].rVal;                                           // Just get from default array
          RetVal := GetClassItem(RegArray[i].rInd);                             // Find out if a value already exists.
          end;
        if RetVal = '' then  SetClassItem(RegArray[i].rInd,NewVal);             // If value does not exist create, set default
        end; (*VALSTR*)

      end;(*case*)
    (*........................................................................*)// Finish processing different types

    end; (*for i:=low(RegArray) to High(RegArray)*)

  (*__________________________________________________________________________*)(*END____________________________*)
end;




  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETREGISTRYVALUE------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.GetRegistryValue(const Index :integer):Variant;
  (*...........................................................*)
  (*  GetRegistryValue                                         *)
  (*...........................................................*)
  (*  Gets items from the registry.  Can be boolean or string  *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  i                 : integer;      // Procedure loop variable
  Reg               : TRegistry;    // Registry object
  MainKey           : HKEY;         // Main registry key (current user or local machine)
  RegPath           : String;       // Applications default path
  RegValue          : Variant;      // Key item in the path to get
  GetType           : integer;      // Type of get, string or boolean.

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Don't Process if there is an error
  if Index <> -1 then                                                           // Make sure the value is above -1 (no error)
    begin
    Reg := TRegistry.Create;                                                    // Create registry object

    (*........................................................................*)// Use try loop so registry is freed at finish
    try

    (*........................................................................*)// Setup parameters to find item
    Reg.Access:= KEY_ALL_ACCESS;
    MainKey   := HKEY_LOCAL_MACHINE;                                            // HKEY_CURRENT_USER or HKEY_LOCAL_MACHINE
//    MainKey   := HKEY_CURRENT_USER;
    GetType   := RegArray[Index].dTyp;                                          // Type of variant, boolean, str etc
    RegPath   := FRegistryPath + RegArray[Index].rPth;                          // Get main path and add it to item sub path
    RegValue  := RegArray[Index].rKey;                                          // Key item to look for

    (*........................................................................*)// Default return values.
    case GetType of                                                             // Do this here as OpenKey will only process if
      VALBOOL : Result := False;                                                // the key exists.
      VALSTR  : Result := '';
      end; (*CASE*)

    (*........................................................................*)// Work with registry object
    Reg.RootKey := MainKey;                                                     // Set default key

    if Reg.OpenKeyReadOnly(RegPath) then                                         // Open key if it is available. (Don't create)
      begin
      (*......................................................................*)// Work with different types of objects
      case GetType of

        VALBOOL:                                                                // Boolean.
          if Reg.ValueExists(RegValue) then                                     // Does key exist in the registry
            Result := Reg.ReadBool(RegValue) else Result := False;              // If yes read it, else false.

        VALSTR:                                                                 // String
          if Reg.ValueExists(RegValue) then
            Result := Reg.ReadString(RegValue) else Result := '';               // If yes read it, else empty str.

        end; (*CASE*)
      (*......................................................................*)// Finished with types.

      Reg.CloseKey;                                                             // Close the residtry key
      end; (*if Reg.OpenKey(RegPath, False) then*)


    (*........................................................................*)// Do clean up work
    finally
      Reg.Free;                                                                 // Free the registry object.
    end; (*Try*)

  end; (*if Index <> -1 then*)

  (*__________________________________________________________________________*)(*END____________________________*)
end;




  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:SETREGISTRYVALUE------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.SetRegistryValue(const Index :integer;
                                          NewValue:Variant):Boolean;
  (*...........................................................*)
  (*  SetRegistryValue                                         *)
  (*...........................................................*)
  (*  Sets items to the registry.  Can be boolean or string    *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  i                 : integer;      // Procedure loop variable
  Reg               : TRegistry;    // Registry object
  MainKey           : HKEY;         // Main registry key (current user or local machine)
  RegPath           : String;       // Applications default path
  RegValue          : Variant;      // Key item in the path to get
  SetType           : integer;      // Type of set, string or boolean.

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin
  (*..........................................................................*)// Don't Process if there is an error
  Result := False;                                                              // Default return value
  if Index <> -1 then
    begin
    Reg := TRegistry.Create;                                                    // Create registry object

    (*........................................................................*)// Use try loop so registry is freed at finish
    try

    (*........................................................................*)// Setup parameters to find item
    Reg.Access:= KEY_ALL_ACCESS;
    MainKey   := HKEY_LOCAL_MACHINE;                                            // HKEY_CURRENT_USER or HKEY_LOCAL_MACHINE
//    MainKey   := HKEY_CURRENT_USER;                                             // HKEY_CURRENT_USER or HKEY_LOCAL_MACHINE
    SetType   := RegArray[Index].dTyp;                                          // Type of variant, boolean, str etc
    RegPath   := FRegistryPath + RegArray[Index].rPth;                          // Get main path and add it to item sub path
    RegValue  := RegArray[Index].rKey;                                          // Key item to look for

    (*........................................................................*)// Work with registry object
    Reg.RootKey := MainKey;                                                     // Set default key

    if Reg.OpenKey(RegPath, True) then                                          // Open or create the key.
      begin

      (*......................................................................*)// Work with different types of objects
      case SetType of

        VALBOOL : Reg.WriteBool(RegValue, NewValue);                            // Write Boolean value.

        VALSTR  : Reg.WriteString(RegValue, NewValue);                          // Write String value.
        end; (*CASE*)
        (*....................................................................*)// Finished working with different types.

      Reg.CloseKey;                                                             // Close the key.
      Result := True;                                                           // If it got here, it was successfull
      end; (*if Reg.OpenKey(RegPath, True) then*)

    (*........................................................................*)// Do clean up work
    finally
      Reg.Free;                                                                 // Free the registry object.
    end; (*Try*)

  end;(*if Index <> -1 then*)
  (*__________________________________________________________________________*)(*END____________________________*)
end;




  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETACTUALINDEX--------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.GetActualIndex(Index, ValType: Integer): Integer;

  (*...........................................................*)
  (*  GetActualIndex                                           *)
  (*...........................................................*)
  (*  The RegArray is a mixture of all default properties,     *)
  (*  so this function gets the index of regarray when passed  *)
  (*  an index from one of the typecast variables.             *)
  (*  In other words the it is the link between the arrays     *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  i                 : integer;      // Procedure loop variable

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Default Result
  Result := -1;

  (*..........................................................................*)// Cycle through reg array for a match
  for i:= low(RegArray) to high(RegArray) do
    if RegArray[i].dTyp = ValType then                                          // First match type, Boolean, Str etc
      if RegArray[i].rInd = Index then                                          // Now compare base index. (index for FDataStr)
        begin
        Result := i;                                                            // Found.  New index = i
        Break;                                                                  // Now we can stop proccessing this loop
        end; (*if RegArray[i].rInd = Index then*)
  (*__________________________________________________________________________*)(*END____________________________*)

end;




  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETPROPERTYVALUE------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.GetPropertyValue(const Index, VariableType:Integer):Variant;
  (*...........................................................*)
  (*  GetPropertyValue                                         *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  property type.      This function works on variant       *)
  (*  values.  It is called from the typecast methods of the   *)
  (*  different properties and works on all types of values    *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)
const
GETITEM     = 'GET Property:%s Index:%s Stored:%s Value:[%s]';
PROPERROR   = 'An ERROR occured get Object Property. Object:TMyApplication Type:Boolean Index:%d';

  (*..........................................................................*)(*VARIABLES......................*)
var
  ActualIndex       : Integer;      // Value retreived from GETACTUALINDEX
  Str01,Str02       : string;       // Log string prep strings
  Str03,Str04       : string;       // Log string prep strings
  UpDateFromClass   : Boolean;      // If the class value must be updated from the registry

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Get actual index based on FDataBool index
  ActualIndex := GetActualIndex(Index, VariableType);

  if ActualIndex <> -1 then                                                     // Make sure no errors have occured
    begin

    (*........................................................................*)// Set whether we can lookup from the registry.
    UpDateFromClass := RegArray[ActualIndex].rCls;                              // if true then can't lookup from registry

    (*........................................................................*)// Prepare common log strings
    Str01 := RegArray[ActualIndex].rKey;                                        // 01 Property name
    if Index < 10 then
      Str02 := '0' + IntToStr(Index) else Str02 := IntToStr(Index);             // 02 Index value

    (*........................................................................*)// Check if this item is stored in the registry
    if (RegArray[ActualIndex].rPth <> DNILKEY) and (not UpDateFromClass) then
      begin
      Result  := GetRegistryValue(ActualIndex);                                 // Get the value from the registry.
      Str03 := 'Registry';                                                      // 03 Stored where?

      (*......................................................................*)// Update the Class variable with reg result
      case VariableType of
        VALBOOL:
          begin
          FDataBool[index] := Result;                                           // Store the data to the class variable
          if Result then Str04 := 'TRUE' else Str04 := 'FALSE';                 // 04 Value. Update Str04 here, type sensitive
          end;
        VALSTR:
          begin
          FDataStr[Index] := Result;                                            // Store the data to the class variable
          Str04 := Result;                                                      // 04 Value. Update Str04 here, type sensitive
          end;
        end; (*CASE*)

      end else (*RegArray[ActualIndex].rPth <> DNILKEY*)

      (*......................................................................*)// Item is not stored in the registry
      begin
      Str03 := 'Class';                                                         // 03 prepare log string, Stored where?

      (*......................................................................*)// Update the Class variable with reg result
      case VariableType of
        VALBOOL:
          begin
          Result := FDataBool[index];                                           // Get result from variable property
          if Result then Str04 := 'TRUE' else Str04 := 'FALSE';                 // 04 Value. Update Str04 here, type sensitive
          end;
        VALSTR:
          begin
          Result := FDataStr[Index];                                            // Get result from variable property
          Str04 := Result;                                                      // 04 Value. Update Str04 here, type sensitive
          end;
        end; (*CASE*)
      end; (*RegArray[ActualIndex].rPth <> DNILKEY*)

    (*........................................................................*)// Check debug level for log file
    if FDebug then AddLogItem(Format(GETITEM,[Str01,Str02,Str03,Str04]));       // FDebug is true so add to log

    end else (*if ActualIndex <> -1 then*)
    AddLogItem(Format(PROPERROR,[Index]));
  (*__________________________________________________________________________*)(*END____________________________*)
end;



  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETPROPERTYVALUE------------------*)
  (*                                                                          *)(*===========================================*)

procedure TMyApplication.SetPropertyValue(const Index, VariableType: Integer;
  const Value: Variant);

  (*...........................................................*)
  (*  GetPropertyValue                                         *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  property type.      This function works on variant       *)
  (*  values.  It is called from the typecast methods of the   *)
  (*  different properties and works on all types of values    *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)
const
SETITEM     = 'SAVE Property:%s Index:%s Stored:%s Value:[%s]';
PROPERROR   = 'An ERROR occured get Object Property. Object:TMyApplication Type:Boolean Index:%d';

  (*..........................................................................*)(*VARIABLES......................*)
var
  ActualIndex       : Integer;      // Value retreived from GETACTUALINDEX
  Str01,Str02       : string;       // Log string prep strings
  Str03,Str04       : string;       // Log string prep strings

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin
  (*..........................................................................*)// Get actual index based on FDataBool index
  ActualIndex := GetActualIndex(Index, VariableType);

  if ActualIndex <> -1 then                                                     // Make sure no errors have occured
    begin

    (*........................................................................*)// Prepare common log strings
    Str01 := RegArray[ActualIndex].rKey;                                        // 01 Property name
    if Index < 10 then
      Str02 := '0' + IntToStr(Index) else Str02 := IntToStr(Index);             // 02 Index value

    case VariableType of
      VALBOOL:
        begin
        FDataBool[index] := Value;                                              // Store the data to the class variable
        if Value then Str04 := 'TRUE' else Str04 := 'FALSE';                    // 04 Value. Update Str04 here, type sensitive
        end;
      VALSTR:
        begin
        FDataStr[Index] := Value;                                               // Store the data to the class variable
        Str04 := Value;                                                         // 04 Value. Update Str04 here, type sensitive
        end;
      end; (*CASE*)

    (*........................................................................*)// Check if this item is stored in the registry
    if RegArray[ActualIndex].rPth <> DNILKEY then
      begin
      Str03 := 'Registry';                                                      // 03 Stored where?
      SetRegistryValue(ActualIndex,Value);
      end else  (*RegArray[ActualIndex].rPth <> DNILKEY*)
      Str03 := 'Class';                                                         // 03 Stored where?

    (*........................................................................*)// Check debug level for log file
    if FDebug then AddLogItem(Format(SETITEM,[Str01,Str02,Str03,Str04]));       // FDebug is true so add to log

    end else (*if ActualIndex <> -1 then*)
    AddLogItem(Format(PROPERROR,[Index]));

  (*__________________________________________________________________________*)(*END____________________________*)
end;

  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETBOOLCLASSITEM------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.GetBoolClassItem(const Index: Integer): Boolean;
  (*...........................................................*)
  (*  GetBoolClassItem                                         *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  properties type.  This then uses a common method.        *)
  (*  This method works on boolean values.                     *)
  (*...........................................................*)

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin
  Result := GetPropertyValue(Index, VALBOOL);
  (*__________________________________________________________________________*)(*END____________________________*)
end;

  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETCLASSITEM----------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.GetClassItem(const Index: Integer): String;
  (*...........................................................*)
  (*  GetClassItem                                             *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  properties type.  This then uses a common method.        *)
  (*  This method works on string values.                      *)
  (*...........................................................*)

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin
  Result := GetPropertyValue(Index, VALSTR);
  (*__________________________________________________________________________*)(*END____________________________*)
end;


  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETCLASSITEM----------------------*)
  (*                                                                          *)(*===========================================*)

procedure TMyApplication.SetClassItem(const Index: Integer;
  const Value: String);
  (*...........................................................*)
  (*  SetClassItem                                             *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  properties type.  This then uses a common method.        *)
  (*  This method works on string values.                      *)
  (*...........................................................*)

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  SetPropertyValue(Index,VALSTR,Value);

  (*__________________________________________________________________________*)(*END____________________________*)
end;

  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETCLASSITEM----------------------*)
  (*                                                                          *)(*===========================================*)

procedure TMyApplication.SetBoolClassItem(const Index: Integer;
  const Value: Boolean);
  (*...........................................................*)
  (*  SetBoolClassItem                                         *)
  (*...........................................................*)
  (*  Procedures that use methods must be typecast of the      *)
  (*  properties type.  This then uses a common method.        *)
  (*  This method works on Boolean values.                     *)
  (*...........................................................*)

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  SetPropertyValue(Index,VALBOOL,Value);

  (*__________________________________________________________________________*)(*END____________________________*)
end;


  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:CHECKFORDATAMODULES---------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.CheckForDataModules:Boolean;
  (*...........................................................*)
  (*  CheckForDataModules                                      *)
  (*...........................................................*)
  (*  Check for available data modules.                        *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)
const
FOUNDDM = 'Datamodule found. Module name:[%s]';
TOTALDM = 'A total of %d datamodule(s) and %d available datastore(s) were found';

  (*..........................................................................*)(*VARIABLES......................*)
var
  i,j,k             : integer;      // Procedure loop variable

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Use TScreen to list DataModules
  if Screen.DataModuleCount > 0 then
    begin
    Result := True;                                                             // There are modules available
    FDataSets := 0;                                                             // Reset the datacount

    (*........................................................................*)// List the names on the app log
    for i:= 0 to Screen.DataModuleCount -1 do
      begin
      AddLogItem(Format(FOUNDDM,[Screen.DataModules[i].Name]));

      (*......................................................................*)// Now count the datastores in the module
      for j:= 0 to Screen.DataModules[i].ComponentCount -1 do
        if Screen.DataModules[i].Components[j] is TADOConnection then           // Check for ADOConnection's
          with Screen.DataModules[i].Components[j] as TADOConnection do         // Found one, now count the datastores
            for k:= 0 to DataSetCount -1 do
              if DataSets[k].Tag > 0 then                                      // Only count then if the tag prop is > 0
                inc(FDataSets);                                                 // Increase the global count

      end; (*for i:= 0 to Screen.DataModuleCount -1 do*)

    (*........................................................................*)// Add a datastore count to the log
    AddLogItem(Format(TOTALDM,[Screen.DataModuleCount,FDataSets]));

    end else
    begin
    Result := False;                                                            // No datamodules in the project.
    end; (*if Screen.DataModuleCount > 0 then*)

  (*__________________________________________________________________________*)(*END____________________________*)
end;



  (****************************************************************************)(*********************************************)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:CHECKFORDATAMODULES---------------*)
  (****************************************************************************)(*********************************************)

function TMyApplication.Connect(NewSource: Boolean):Boolean;
  (*...........................................................*)
  (*  Connect                                                  *)
  (*...........................................................*)
  (*  Public method for users to use for connecting DB         *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  ContinueProcessing: boolean;      // Use to check processing loop
  OpeningDataBase   : boolean;      // Use to check processing loop on final part
  DataSource        : string;       // Holds the current datasource location
  Database          : string;       // Database name
  UserName          : string;       // User access name
  Password          : string;       // Password for connection
  FileOnly          : string;       // Hold the filename only of Datasource

const
  USE_SQL_SERVER    = True;

begin

  (*..........................................................................*)// Only process if modules are available
  Result := False;
  if CheckForDataModules then
    begin
    ContinueProcessing  := True;                                                // Keeps check on whether the method continues.

    if not USE_SQL_SERVER then
      begin
      DataSource := FDataStr[maDATAPATH];                                       // Get the stored datapath.

      (*........................................................................*)// New datasource has been requested.
      if NewSource then
        begin
        AddLogItem('Locating new database file(s)');
        ContinueProcessing := GetNewDataSource(DataSource);
        if ContinueProcessing then
          AddLogItem('New new database file(s) Located')
          else
          AddLogItem('User has cancelled file search');
        end else
        begin
        ContinueProcessing := FDataBool[maDATAAUTOCONNECT];
        if ContinueProcessing then
          AddLogItem('Auto connect has been requested')
          else
          AddLogItem('No connection requested was made');
        end; // if NewSource then


      FileOnly   := ExtractFileName(DataSource);
      if ContinueProcessing then
        if not FileExists(DataSource) then
          begin
          ContinueProcessing := False;
          AddLogItem(Format('Data file [%s] is NOT available',[FileOnly]));
          end else
          begin
          AddLogItem(Format('Data file [%s] is available',[FileOnly]));
          end;

      end else // if not USE_SQL_SERVER then
      begin

      DataSource := FDataStr[maDATAPATH];
      Database   := FDataStr[maDATABASE];
      UserName   := FDataStr[maDATAUSER];
      Password   := FDataStr[maDATAPASS];

                                             // Get the stored datapath.
      if NewSource then ContinueProcessing := GetNewSQLServer(DataSource);
      ContinueProcessing := FDataBool[maDATAAUTOCONNECT];
      if DataSource = '' then ContinueProcessing := False;

      end;
//      if NewSource then


    if ContinueProcessing then
      begin
      OpeningDataBase := True;

//      SecuritySystemDisconnect;
      DisConnectDatabase;

      if ConnectToDatabase('SQL', DataSource, Database, Username, Password) then
        begin
        (*____________________________________________________________________*)(*EVENT__________________________*)
        DataAfterConnect;                                                       // EVENT
        SetClassItem(maDATAPATH, DataSource);                                   // Update Property
        SetBoolClassItem(maDATACONNECTED, True);                                // Update Property
        end else
        begin
        (*____________________________________________________________________*)(*EVENT__________________________*)
        DataErrorConnecting;
        OpeningDataBase := False;                                               // Don't continue
        SetBoolClassItem(maDATACONNECTED, False);                               // Update property
        DisConnectDatabase;                                                     // Make sure there are no stragglers
        end;

//      SecuritySystemConnect;
//      if not SecurityConnect then SystemDisConnect else FDataStr[maDATAPATH] := DataSource

      end;

  end;

  (*__________________________________ ________________________________________*)(*END____________________________*)
end;






  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETNEWDATASOURCE------------------*)
  (*                                                                          *)(*===========================================*)
function TMyApplication.ConnectToSecurity:Boolean;
begin
Result := True;
end;









  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETNEWDATASOURCE------------------*)
  (*                                                                          *)(*===========================================*)
function TMyApplication.GetNewDataSource(var DataSource :string):Boolean;

  (*...........................................................*)
  (*  GetNewDataSource                                         *)
  (*...........................................................*)
  (*  If the user requires, this will create a fileopen dialog *)
  (*  box and allow selection of a new database.               *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)
const
DATA_FILEEXT  = 'mdb';
FILTERSTR     = '%s data files (*.%s)|*.%s|All files (*.*)|*.*';
DATADIRSTR    = 'C:\My Data\%s.%s';

  (*..........................................................................*)(*VARIABLES......................*)
var
  FileOpenDialogBox : TOpenDialog;  // Object to open dialog  box

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Set default return value
  Result := False;
  FileOpenDialogBox := TOpenDialog.Create(Application);                         // Create the dialog box
  try
  with FileOpenDialogBox do
    begin

    (*........................................................................*)// Set default dialog values
    if FileExists(DataSource) then
      begin
      InitialDir  := ExtractFilePath(DataSource);
      Filename    := ExtractFileName(DataSource);
      end else
      begin
      InitialDir  := ExtractFilePath(
                      Format(DATADIRSTR,[FDataStr[maNAME],DATA_FILEEXT]));      // Set defaults if it does'nt exist
      Filename    := ExtractFileName(
                      Format(DATADIRSTR,[FDataStr[maNAME],DATA_FILEEXT]));      // Set defaults if it does'nt exist
      end; (*if FileExists(DataSource) then*)

    (*........................................................................*)// Set filter values
    Filter := Format(FILTERSTR,[FDataStr[maNAME],DATA_FILEEXT,DATA_FILEEXT]);

    (*........................................................................*)// EXECUTE the dialog box
    if Execute then
      begin
      DataSource := FileName;                                                   // Execution successfull
      Result := True;
      end; (*if Execute then*)

    end; (*with FileOpenDialogBox do*)

  finally
    (*........................................................................*)// Clean up memory
    FileOpenDialogBox.Free;
  end;

  (*__________________________________________________________________________*)(*END____________________________*)
end;




  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETNEWDATASOURCE------------------*)
  (*                                                                          *)(*===========================================*)
function TMyApplication.GetNewSQLServer(var DataSource :string):Boolean;

  (*...........................................................*)
  (*  GetNewDataSource                                         *)
  (*...........................................................*)
  (*  If the user requires, this will create a fileopen dialog *)
  (*  box and allow selection of a new database.               *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Set default return value
  Result := False;
  DataSource:= InputBox('Connect to SQL Server', 'Server name', DataSource);
  If DataSource <> '' then Result := True;

  (*__________________________________________________________________________*)(*END____________________________*)
end;





procedure TMyApplication.DisConnectDatabase; (*:::::::::::::::::::::::::::::::*)(*===========================================*)
                                                                                (*function:GETNEWDATASOURCE------------------*)
  (*                                                                          *)(*===========================================*)


  (*...........................................................*)
  (*  ConnectToDatabase                                        *)
  (*...........................................................*)
  (*  Connect to the database.  Issue events.                  *)
  (*...........................................................*)

  (*..........................................................................*)(*VARIABLES......................*)
var
  i,j,k,m           :integer;       // Loop variables.

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  if FDataBool[maDATACONNECTED] then
    (*_________________________________________________________________________*)(*EVENT__________________________*)
    DataBeforeDisConnect;

  for i := 0 to Screen.DataModuleCount-1 do
    for j := 0 to Screen.DataModules[i].ComponentCount -1 do
      if Screen.DataModules[i].Components[j] is TADOConnection then
        with Screen.DataModules[i].Components[j] as TADOConnection do
          Connected := False;

  if FDataBool[maDATACONNECTED] then
    (*________________________________________________________________________*)(*EVENT__________________________*)
    DataAfterDisConnect;

  SetBoolClassItem(maDATACONNECTED, False);

end;







  (*==========================================================================*)(*===========================================*)
  (*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*)(*function:GETNEWDATASOURCE------------------*)
  (*                                                                          *)(*===========================================*)

function TMyApplication.ConnectToDatabase(const ConType, DataSource, prmDB,
    prmUser, prmPassword: string): Boolean;

  procedure IssueOnProcessingMessage(var CurrentStatus :integer);
    begin
    inc(CurrentStatus);
    if FDataSets > 0 then
      DataProcessing(Round((CurrentStatus/FDataSets)*100));
    end;


  (*...........................................................*)
  (*  ConnectToDatabase                                        *)
  (*...........................................................*)
  (*  Connect to the database.  Issue events.                  *)
  (*...........................................................*)

  (*..........................................................................*)(*CONSTANTS......................*)
const
// ADO OLE Jet provider string
CONSTR        = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Persist Security Info=False';
// ADO SQL Server provider string

//SQL Server
//SQLCON        = 'Provider=SQLOLEDB.1;Password=lvr8;Persist Security Info=True;User ID=ecdoh;Initial Catalog=RxStore;Data Source=%s';
//SQL MSDE

TABLE_ERROR   = 'Error opening datastore! [%s:%s]' + #13#10 + 'System Message: %s';
CONN_ERROR    = 'Error opening ADO connection! [%s]' + #13#10 + 'System Message: %s';

  (*..........................................................................*)(*VARIABLES......................*)
var
  CountAllDataStores,
  ErrorCount,
  OpenedDataSets    :integer;       // Incremental int for counting the processing of info

  i,j,k,m           :integer;       // Loop variables.

  Save_Cursor       :TCursor;
  ConnStr           :string;

  (*__________________________________________________________________________*)(*BEGIN__________________________*)
begin

  (*..........................................................................*)// Default return Value
  Result := False;

  (*..........................................................................*)// Show user that the program is busy
  Save_Cursor   := Screen.Cursor;                                               // First get current cursor.
  Screen.Cursor := crHourGlass;                                                 // Now Show hourglass cursor

  ErrorCount          := 0;                                                     // Set initial values for default variables
  OpenedDataSets      := 0;                                                     // Total datasets opened for use.
  CountAllDataStores  := 0;

  (*__________________________________________________________________________*)(*EVENT__________________________*)
  DataBeforeConnect;

  (*..........................................................................*)// Try..Finally
  try

  for m := 0 to Screen.DataModuleCount-1 do
   for i := 0 to Screen.DataModules[m].ComponentCount -1 do
    if Screen.DataModules[m].Components[i] is TADOConnection then
      with Screen.DataModules[m].Components[i] as TADOConnection do
        begin

        (*....................................................................*)// Place the open procedure in a try..except
        try

        if ConType = 'SQL' then
          ConnStr := Format(SQLCON, [prmPassword, prmUser, prmDB, DataSource])
          else
          ConnStr := Format(CONSTR, [DataSource]);


        ConnectionString      := ConnStr;
        Connected             := True;

        (*....................................................................*)// Made it here.  Connection could open.
        AddLogItem(Format('ADO Connection made to [%s]',[Name]));               // Send message to log file

        (*....................................................................*)// Now open datasets linked to this connection
        for j := 1 to MAX_TAG_COUNT do                                          // If tag value is > Max_Tag_Count, won't open
          for k := 0 to DataSetCount -1 do
            begin

            (*................................................................*)// Place the opening in a nested try..except
            try

            if DataSets[k].Tag = j then                                         // Make sure of the sequence
              begin
              DataSets[k].Active := True;                                       // Activate the datastore
              AddLogItem(Format('Opened datastore [%s:%s]',[Name, DataSets[k].Name]));   // Add to log file
              inc(OpenedDataSets);
              IssueOnProcessingMessage(CountAllDataStores);                     // Sub proc in this function
              end;


            except

              on E: EDatabaseError do                                           // Pick up any databse errors and send to log
                begin
                IssueOnProcessingMessage(CountAllDataStores);                   // Sub proc in this function
                inc(ErrorCount);                                                // Increase error count.
                AddLogItem(Format(TABLE_ERROR,[Name,DataSets[k].Name,E.Message]));   // Add to log file
                end; (*E: EDatabaseError*)

            end; (*Try..Except*)
            (*................................................................*)// END OF NESTED TRY..EXCEPT

            end; (*for k := 0 to DataSetCount -1 do*)



        except

          on E: EDatabaseError do
            begin
            inc(ErrorCount);
            AddLogItem(Format(CONN_ERROR,[Name, E.Message]));
            MessageDlg( E.Message , mtError , [mbOk], 0);
            end;

          on E: EVariantError do
            begin
            inc(ErrorCount);
            AddLogItem(Format(CONN_ERROR,[Name, E.Message]));
            MessageDlg( E.Message , mtError , [mbOk], 0);
            end;

          on E: EOleException do
            begin
            inc(ErrorCount);
            AddLogItem(Format(CONN_ERROR,[Name, E.Message]));
            MessageDlg( E.Message , mtError , [mbOk], 0);
            end;

        end; (*try.. except*)

      end; (*with Screen.DataModules[m].Components[i] as TADOConnection do*)

  finally
    if ErrorCount = 0 then Result := True;
    Screen.Cursor := Save_Cursor;  // Always restore to normal
  end;

end;










procedure TMyApplication.AddLogItem(NewItem: String);
const
MSG_NUM         = '[%d]';
NEWLOGITEM  = MSG_NUM + #9 + '%s';
HEADER  = 'No.' + #9 + 'Info' + #9 + 'Description';
BLANKLINE = '';
DRAWLINE = '---------------------------------------------------------------------------------------';
var
AddStr    :string;
F         :TextFile;
begin

  with FLogFile do begin
    if (NewItem = HEADER) or (NewItem = BLANKLINE) or (NewItem = DRAWLINE) then
      AddStr := NewItem
      else
      begin
      inc(FLogCount);
      AddStr := Format(NEWLOGITEM,[FLogCount, NewItem]);
      end;
    Add(AddStr);
    end;

  if FDataBool[maLOGSAVETOFILE] then
    if FileExists(FLogFileName) then
      begin
      try
      AssignFile(F, FLogFileName);
        try
        Append(F);
        Writeln(F,AddStr);
        Flush(F);
        except
          on E: EFCreateError do
            MessageDlg('Could not add item to Application Log' + #13#10 + E.Message,mtConfirmation, [mbOK], 0);
          on E: EInOutError do
            MessageDlg('Could not add item to Application Log' + #13#10 + E.Message,mtConfirmation, [mbOK], 0);
        end;
      finally
      CloseFile(F);
      end;
    end;
end;








procedure TMyApplication.AfterLogOff;
begin
  if assigned(FOnAfterLogOff) then FOnAfterLogOff(self);
end;

procedure TMyApplication.AfterLogOn;
begin
  if assigned(FOnAfterLogOn) then FOnAfterLogOn(self);
end;

procedure TMyApplication.PasswordChanged;
begin
  if assigned(FOnPasswordChanged) then FOnPasswordChanged(self);
end;

procedure TMyApplication.SecurityConnect;
begin
  if assigned(FOnSecurityConnect) then FOnSecurityConnect(self);
end;

procedure TMyApplication.SecurityErrorConnecting;
begin
  if assigned(FOnSecurityErrorConnecting) then FOnSecurityErrorConnecting(self);
end;

procedure TMyApplication.SecurityDisConnect;
begin
  if assigned(FOnSecurityDisConnect) then FOnSecurityDisConnect(self);
end;

procedure TMyApplication.UserLevelChange;
begin
  if assigned(FOnUserLevelChange) then FOnUserLevelChange(self);
end;

procedure TMyApplication.DataProcessing(const CurrentPosition: integer);
begin
//  ShowMessage('DataProcessing' + IntToStr(CurrentPosition));
  if assigned(FOnDataProcessing) then FOnDataProcessing(Self,CurrentPosition);
end;




procedure TMyApplication.DataAfterConnect;
begin
//  ShowMessage('DataAfterConnect');
  if assigned(FOnDataAfterConnect) then FOnDataAfterConnect(self);
end;

procedure TMyApplication.DataBeforeConnect;
begin
//  ShowMessage('DataBeforeConnect');
  if assigned(FOnDataBeforeConnect) then FOnDataBeforeConnect(self);
end;

procedure TMyApplication.DataAfterDisconnect;
begin
//  ShowMessage('DataAfterDisconnect');
  if assigned(FOnDataAfterDisconnect) then FOnDataAfterDisconnect(Self);
end;

procedure TMyApplication.DataBeforeDisconnect;
begin
//  ShowMessage('DataBeforeDisconnect');
  if assigned(FOnDataBeforeDisconnect) then FOnDataBeforeDisconnect(Self);
end;

procedure TMyApplication.DataErrorConnecting;
begin
//  ShowMessage('DataErrorConnecting');
  if assigned(FOnDataErrorConnecting) then FOnDataErrorConnecting(self);
end;

procedure TMyApplication.LogOn;
//var
//LogOnForm :TApplicationSecurity;
begin
{
LogOnForm := TApplicationSecurity.Create;
  try
  LogOnForm.LogOn;
  finally
    LogOnForm.Free;
  end;
}
end;

end.

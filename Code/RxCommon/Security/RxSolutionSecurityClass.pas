unit RxSolutionSecurityClass;

interface

uses  dmpDataObjectBaseModule, Variants, Controls, Dialogs, DateUtils, ExtCtrls,
      ComObj, SysUtils;

const
{
  '[Core] RxSolution'           = 0;
  '[Core] User Administration'  = 1;
  '[Core] Reporting'            = 2;
  '[Core] Products'             = 3;
  '[Store] Demanders'           = 4;
  '[Store] Suppliers'           = 5;
  '[Store] Requisitions'        = 6;
  '[Store] Orders'              = 7;
  '[Store] Receipts'            = 8;
  '[Store] Budget'              = 9;
  '[Dispensing] Prescribers'    = 10;
  '[Dispensing] Dispensers'     = 11;
  '[Dispensing] Patients'       = 12;
  '[Dispensing] Prescribing'    = 13;
  '[Dispensing] Dispensing'     = 14;
  '[Dispensing] Clinics'        = 15;
  '[Store] Returns'             = 16;
}

  MODULE_CORE_OPEN                    = -1;
  MODULE_CORE_SYSTEM                  = 0;
  MODULE_CORE_USERADMINISTRATION      = 1;

  MODULE_CORE_REPORTS                 = 2;

  MODULE_CORE_PRODUCTS                = 3;
  MODULE_CORE_DEMANDERS               = 4;
  MODULE_CORE_SUPPLIERS               = 5;

  MODULE_STORE_REQUISITION            = 6;
  MODULE_STORE_ORDERS                 = 7;
  MODULE_STORE_RECEIPTS               = 8;
  MODULE_STORE_BUDGET                 = 9;
  MODULE_STORE_RETURNS                = 16;

  MODULE_DISPENSING_PRESCRIBERS       = 10;
  MODULE_DISPENSING_DISPENSERS        = 11;
  MODULE_DISPENSING_PATIENTS          = 12;
  MODULE_DISPENSING_PRESCRIBING       = 13;
  MODULE_DISPENSING_DISPENSING        = 14;
  MODULE_DISPENSING_CLINICS           = 15;



  MODULE_CORE_PROTOCOLS               = 17;
  MODULE_DISPENSING_DOSING            = 18;

  MODULE_DISPENSING_BATCHDISPENSING   = 19;
  MODULE_CORE_CLINICALINFO            = 20;
  MODULE_CORE_PHARMACY                = 101;     //changed this from 21 to 101. not being used yet.
  MODULE_CORE_CLINICS                 = 22;

  MODULE_STOCKTAKING                  = 21;
  MODULE_CREDITS                      = 23;
  MODULE_PREPACKING                   = 26;
  MODULE_CORE_COMPLEX                 = 27;
  MODULE_DEMANDER_TRANSFERS           = 28;
  MODULE_QUOTATION                    = 29;
  MODULE_RECORDUNLOCKING              = 30;     //SM
  MODULE_DEMANDERSTOCKTAKING          = 31;     //SM
  MODULE_LABELCONFIGURATION           = 32;     //SM      
  MODULE_LOCALSETTINGS                = 33;     //SM
  MODULE_PATIENT_VISITS               = 34;     //SM

  SYSTEM_DEBUG          = False;

  // Used by RxStore
  USER_SYS_ADMIN_T      = 'System Administrator';
  USER_ADMIN_T          = 'Administrator';
  USER_USER_T           = 'User';
  USER_BROWSER_T        = 'Browser';
  USER_NONE_T           = 'None';

  // Used by RxStore
  USER_SYS_ADMIN        = 4;
  USER_ADMIN            = 3;
  USER_USER             = 2;
  USER_BROWSER          = 1;
  USER_NONE             = 0;


 {
  SYSTEM_SYSTEM_T       = 'System';

  USER_NAME_OVERRIDE    = 'jp';
  USER_PASS_OVERRIDE    = 'sallet';
  MAXLOGATTEMPTS        = 3;
  }


type

  TUser = class;
  TUserList = class;
  TUserAccess = class;
  TUserSession = class;
  TUserAccessList = class;

  TSecurity = class(TObject)
  private
    FApplicationComponents: TListOfItems;
    FEncrypt: Boolean;
    FIsLoggedOn: Boolean;
    FLists: TListOfLists;
    FLoggedUser: Variant;
    FMachineName: string;
    FSession: TSQLSession;
    FUser: TUser;
    FUserAccess: TUserAccessList;
    FUserSession: TUserSession;
    function CheckBasicAccess(const prmModule : integer): Integer;
    procedure DataClear;
    procedure DataLoad;
    procedure SetSession(const Value: TSQLSession);
  public
    constructor Create(prmSession : TSQLSession);
    destructor Destroy; override;
    procedure Administration;
    procedure ChangePassword;
    function GetUserAccessLevel(const prmModule : integer ; const prmRecordIntID :
        double): Integer; overload;
    function GetUserAccessLevel(const prmModule : integer ; const prmRecordGUIDID :
        string): Integer; overload;
    function GetUserAccessLevel(const prmModule : integer): Integer; overload;
    function LogOff(prmAsk : boolean = True): Boolean;
    function LogOn: Boolean;
    property ApplicationComponents: TListOfItems read FApplicationComponents write
        FApplicationComponents;
    property Encrypt: Boolean read FEncrypt;
    property IsLoggedOn: Boolean read FIsLoggedOn;
    property MachineName: string read FMachineName write FMachineName;
    property Session: TSQLSession read FSession write SetSession;
    property User: TUser read FUser write FUser;
    property UserAccess: TUserAccessList read FUserAccess write FUserAccess;
    property UserSession: TUserSession read FUserSession write FUserSession;
  end;

  TUserList = class(TdmpIndexerBase)
  private
    function GetUser: TUser;
    procedure SetUser(const Value: TUser);
  protected
  public
    function GetNewObject: TdmpObjectBase; override;
    property User: TUser read GetUser write SetUser;
  end;

  TUser = class(TdmpObjectBase)
  private
    FBuilding: TdmpStringProperty;
    FCellular: TdmpStringProperty;
    FDispenserID: TdmpStringProperty;
    FEMail: TdmpStringProperty;
    FFirstName: TdmpStringProperty;
    FInitials: TdmpStringProperty;
    FLastName: TdmpStringProperty;
    FOffice: TdmpStringProperty;
    FUserNumID: TdmpDoubleProperty;
    FPassword: TdmpStringProperty;
    FPosition: TdmpStringProperty;
    FRank: TdmpStringProperty;
    FTelephone: TdmpStringProperty;
    FTitle: TdmpStringProperty;
    FUserName: TdmpStringProperty;
    FUserDemanderID : TdmpDoubleProperty;//SM
    FuserPin_str : TdmpStringProperty; //SM
    FpasswordSet_dat: TdmpDateTimeProperty;//SM

  public
    constructor Create(prmSession : TSQLSession ; prmTableName : string);
    procedure CalculateObjectValue(const prmPropertyName : string); override;
    property Building: TdmpStringProperty read FBuilding write FBuilding;
    property Cellular: TdmpStringProperty read FCellular write FCellular;
    property DispenserID: TdmpStringProperty read FDispenserID write FDispenserID;
    property EMail: TdmpStringProperty read FEMail write FEMail;
    property FirstName: TdmpStringProperty read FFirstName write FFirstName;
    property Initials: TdmpStringProperty read FInitials write FInitials;
    property LastName: TdmpStringProperty read FLastName write FLastName;
    property Office: TdmpStringProperty read FOffice write FOffice;
    property UserNumID: TdmpDoubleProperty read FUserNumID;
    property Password: TdmpStringProperty read FPassword write FPassword;
    property Position: TdmpStringProperty read FPosition write FPosition;
    property Rank: TdmpStringProperty read FRank write FRank;
    property Telephone: TdmpStringProperty read FTelephone write FTelephone;
    property Title: TdmpStringProperty read FTitle write FTitle;
    property UserName: TdmpStringProperty read FUserName write FUserName;
    property UserDemanderID : TdmpDoubleProperty read FUserDemanderID; //SM
    property UserPasswordSet_dat : TdmpDateTimeProperty read FpasswordSet_dat write FpasswordSet_dat; //SM

  end;

  TUserSession = class(TdmpObjectBase)
  private
    FLogOffTime: TdmpDateTimeProperty;
    FLogOnTime: TdmpDateTimeProperty;
    FMachineName: TdmpStringProperty;
    FSecondsOnLine: TdmpIntegerProperty;
    FTimer: TTimer;
    FUserID: TdmpGUIDProperty;
  public
    constructor Create(prmSession : TSQLSession ; prmTableName : string);
    destructor Destroy; override;
    procedure CalculateObjectValue(const prmPropertyName : string); override;
    procedure OnMyTimer(Sender : TObject);
    property LogOffTime: TdmpDateTimeProperty read FLogOffTime write FLogOffTime;
    property LogOnTime: TdmpDateTimeProperty read FLogOnTime write FLogOnTime;
    property MachineName: TdmpStringProperty read FMachineName write FMachineName;
    property SecondsOnLine: TdmpIntegerProperty read FSecondsOnLine write
        FSecondsOnLine;
    property UserID: TdmpGUIDProperty read FUserID write FUserID;
  end;

  TUserAccess = class(TdmpObjectBase)
  private
    FAccessDescription: TdmpStringProperty;
    FAccessException: TdmpBooleanProperty;
    FAccessExceptionGUIDKey: TdmpGUIDProperty;
    FAccessExceptionIntKey: TdmpIntegerProperty;
    FAccessLevel: TdmpIntegerProperty;
    FModuleNumber: TdmpIntegerProperty;
    FUserID: TdmpGUIDProperty;
  public
    constructor Create(prmSession : TSQLSession ; prmTableName : string);
    procedure CalculateObjectValue(const prmPropertyName : string); override;
    property AccessDescription: TdmpStringProperty read FAccessDescription write
        FAccessDescription;
    property AccessException: TdmpBooleanProperty read FAccessException write
        FAccessException;
    property AccessExceptionGUIDKey: TdmpGUIDProperty read FAccessExceptionGUIDKey
        write FAccessExceptionGUIDKey;
    property AccessExceptionIntKey: TdmpIntegerProperty read FAccessExceptionIntKey
        write FAccessExceptionIntKey;
    property AccessLevel: TdmpIntegerProperty read FAccessLevel write FAccessLevel;
    property ModuleNumber: TdmpIntegerProperty read FModuleNumber write
        FModuleNumber;
    property UserID: TdmpGUIDProperty read FUserID write FUserID;
  end;

  TUserAccessList = class(TdmpIndexerBase)
  private
    function GetUserAccess: TUserAccess;
    procedure SetUserAccess(const Value: TUserAccess);
  public
    function GetNewObject: TdmpObjectBase; override;
    property UserAccess: TUserAccess read GetUserAccess write SetUserAccess;
  end;

implementation

uses RxSolutionSecurityAdministratorUFrm, Forms,
  RxSolutionSecurityLogOnUFrm, RxSolutionSecurityChangePasswordUFrm,
  RxSolutionUFrm;

const
  SOIDPROPERTYNAME = 'UserID';
  SOIDFIELDNAME = 'UserID';
  SUSERHINT = 'The user name you use to log on. This is NOT case sensitive.';
  SUSERDEFAULT = 'user';
  SUSERCAPTION = 'User Name';
  SUSERFIELDNAME = 'userName_str';
  SUSERPROPERTYNAME = 'Username';
  SPASSWORDCAPTION = 'Password';
  SPASSWORDFIELDNAME = 'password_str';
  SPASSWORDPROPERTYNAME = 'Password';
  SPASSWORDDEFAULT = '';
  SPASSWORDHINT = 'The password you use to log on. This IS case sensitive.';


constructor TSecurity.Create(prmSession : TSQLSession);
begin
  inherited Create;
  FIsLoggedOn := False;
  FSession    := prmSession;
  FEncrypt    := True;
  DataLoad;

end;

destructor TSecurity.Destroy;
begin

  if Assigned(FUser) then FUser.Free;
  if Assigned(FUserSession) then
    begin
    FUserSession.LogOffTime.Value := Now;
    FUserSession.Save;
    FUserSession.Free;
    end;
  inherited;
end;

procedure TSecurity.Administration;

begin

  TSecurityAccessManager.Administration(FSession, FLoggedUser, CheckBasicAccess(MODULE_CORE_USERADMINISTRATION));
  if Assigned(FUserAccess) then FUserAccess.RefreshAll;


end;

procedure TSecurity.ChangePassword;
begin
  TSecurityPasswordManager.ChangePassword(FSession, FLoggedUser, CheckBasicAccess(MODULE_CORE_USERADMINISTRATION), RxSolutionFrm.FPasswordLength);
end;

function TSecurity.CheckBasicAccess(const prmModule : integer): Integer;
var
  i: Integer;
begin

  Result := 0;  // Lowest level of access. Higher number means More access
  if FIsLoggedOn then
    for i := 0 to FUserAccess.RecordsCount - 1 do
      if FUserAccess.Records[i].PropertyByName['ModuleNumber'].Value = prmModule then
          Result := FUserAccess.Records[i].PropertyByName['AccessLevel'].Value;
          
end;

procedure TSecurity.DataClear;
var
  i: Integer;
begin

  if Assigned(FLists) then
    begin
    FApplicationComponents := nil;
    for i := 0 to FLists.ListCount -1 do FLists.ListByNumber[i].Free;
    FLists.Free;
    FLists := nil;
    end;

end;

procedure TSecurity.DataLoad;
begin

  if Assigned(FSession) then
    begin
    FIsLoggedOn := False;
    FLists := TListOfLists.Create(FSession.ThisConnection.ConnectionString);
    FLists.ListCreate('ApplicationComponents', 1,'tblSystem_Access_Areas','accessAreaDescription_str','accessAreaID','','displayOrder_int');
    FApplicationComponents := FLists.ListByName['ApplicationComponents'];
    end;

end;

function TSecurity.GetUserAccessLevel(const prmModule : integer ; const
    prmRecordIntID : double): Integer;
begin
  // TODO -cDMP: TSecurity.GetUserAccessLevel - Check for record exception (INT)
  Result := CheckBasicAccess(prmModule);
end;

function TSecurity.GetUserAccessLevel(const prmModule : integer ; const
    prmRecordGUIDID : string): Integer;
begin
  Result := CheckBasicAccess(prmModule);
  // TODO -cDMP: TSecurity.GetUserAccessLevel - Check for record exception (GUID)
end;

function TSecurity.GetUserAccessLevel(const prmModule : integer): Integer;
begin
  Result := CheckBasicAccess(prmModule);
end;

function TSecurity.LogOff(prmAsk : boolean = True): Boolean;
var
  prvLogOff: Boolean;
begin

  Result := False;
  prvLogOff := True;

  if prmAsk then
    if MessageDlg('Log Off', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
      prvLogOff := False;

  if prvLogOff then
    begin
    Result := True;
    FIsLoggedOn := False;

    if Assigned(FUser) then
      begin
      FUser.Free;
      FUser := Nil;
      end;
    if Assigned(FUserSession) then
      begin
      FUserSession.LogOffTime.Value := Now;
      FUserSession.Save;
      FUserSession.Free;
      FUserSession := Nil;
      end;

    if Assigned(FUserAccess) then
      begin
      FUserAccess.Free;
      FUserAccess := nil;
      end;

    end;

end;

function TSecurity.LogOn: Boolean;
begin


  Result := False;
  if TSecurityLogOnManager.LogOn(FSession, FLoggedUser) then
    begin
    Result      := True;
    FIsLoggedOn := True;

    // Create the user object
    FUser := TUser.Create(FSession, 'tblSystem_User');
    FUser.OID.Parameter := FLoggedUser;
    FUser.Load;

    // Create the session object
    FUserSession := TUserSession.Create(FSession, 'tblSystem_User_Session');
    FUserSession.UserID.Value := FLoggedUser;
    FUserSession.MachineName.Value  := FMachineName;
    FUserSession.Save;

    // Create user access objects
    FUserAccess := TUserAccessList.Create(FSession, 'tblSystem_User_Access','userAccessID','UserID',FLoggedUser);
    FUserAccess.Load;
    end;
    
end;

procedure TSecurity.SetSession(const Value: TSQLSession);
begin
  if FSession <> Value then
    begin
    DataClear;
    FSession := Value;
    FUserSession.LogOffTime.Value := Now;
    FUserSession.Save;
    FUserSession.Free;
    DataLoad;
    end;
end;

function TUserList.GetNewObject: TdmpObjectBase;

begin
  Result := TUser.Create(Self.Session, Self.Table);
end;

function TUserList.GetUser: TUser;
begin
  Result := Records[Self.RecordsCurrent] as TUser ;
end;

procedure TUserList.SetUser(const Value: TUser);
begin
  Records[Self.RecordsCurrent] := (Value as TUser);
end;

constructor TUser.Create(prmSession : TSQLSession ; prmTableName : string);
begin
  inherited Create(prmSession, prmTableName);

  // OVERRIDE BASE.
  Self.OID.FieldName  := SOIDFIELDNAME;
  Self.OID.Name       := SOIDPROPERTYNAME;

  // NEW
  FPassword := TdmpStringProperty.Create(SPASSWORDPROPERTYNAME, SPASSWORDFIELDNAME, SPASSWORDCAPTION);
  FPassword.Encrypt := True;
  FPassword.Default := SPASSWORDDEFAULT;
  FPassword.Hint    := SPASSWORDHINT;
  PropertiesAdd(FPassword);

  FUserName := TdmpStringProperty.Create(SUSERPROPERTYNAME, SUSERFIELDNAME, SUSERCAPTION);
  FUserName.Default := SUSERDEFAULT;
  FUserName.Hint    := SUSERHINT;
  PropertiesAdd(FUserName);

  //
  FBuilding := TdmpStringProperty.Create('Building','building_str','Building');
  FBuilding.Default := '';
  FBuilding.Hint := '';
  PropertiesAdd(FBuilding);

  FCellular := TdmpStringProperty.Create('CellPhone','cellular_str','Cellular');
  FCellular.Default := '';
  FCellular.Hint    := '';
  PropertiesAdd(FCellular);

  FEMail := TdmpStringProperty.Create('EMail','email_str','EMail');
  FEMail.Default := '';
  FEMail.Hint := '';
  PropertiesAdd(FEMail);

  FFirstName := TdmpStringProperty.Create('FirstName','firstName_str','First Name');
  FFirstName.Default := '';
  FFirstName.Hint := '';
  PropertiesAdd(FFirstName);

  FInitials := TdmpStringProperty.Create('Initials','initials_str','Initials');
  FInitials.Default := '';
  FInitials.Hint := '';
  PropertiesAdd(FInitials);

  FLastName := TdmpStringProperty.Create('LastName','lastName_str','Last Name');
  FLastName.Default := '';
  FLastName.Hint := '';
  PropertiesAdd(FLastName);

  FOffice := TdmpStringProperty.Create('Office','office_str','Office');
  FOffice.Default := '';
  FOffice.Hint := '';
  PropertiesAdd(FOffice);

  FPosition := TdmpStringProperty.Create('Position','position_str','Position');
  FPosition.Default := '';
  FPosition.Hint := '';
  PropertiesAdd(FPosition);

  FRank := TdmpStringProperty.Create('Rank','rank_str','Rank');
  FRank.Default := '';
  FRank.Hint := '';
  PropertiesAdd(FRank);

  FTelephone := TdmpStringProperty.Create('Telephone','telephone_str','Telephone');
  FTelephone.Default := '';
  FTelephone.Hint := '';
  PropertiesAdd(FTelephone);

  FTitle := TdmpStringProperty.Create('Title','title_str','Title');
  FTitle.Default := '';
  FTitle.Hint := '';
  PropertiesAdd(FTitle);

  FUserNumID := TdmpDoubleProperty.Create('UserIntID','userNo_int','UserIntID');
  FTitle.Default := '';
  FTitle.Hint := '';
  PropertiesAdd(FUserNumID);

  FDispenserID := TdmpStringProperty.Create('Dispenser','dispenser_ID','Dispenser');
  FDispenserID.Default := '';
  FDispenserID.Hint := '';
  PropertiesAdd(FDispenserID);

  //SM
  FUserDemanderID := TdmpDoubleProperty.Create('UserDemanderID','Demander_ID','UserDemanderID');
  FUserDemanderID.Default := 0;
  FUserDemanderID.Hint := '';
  PropertiesAdd(FUserDemanderID);

  //SM
  FpasswordSet_dat := TdmpDateTimeProperty.Create('passwordSet_dat', 'passwordSet_dat', 'passwordSet_dat');
  FPassword.Default := Now();
  PropertiesAdd(FpasswordSet_dat);

end;

procedure TUser.CalculateObjectValue(const prmPropertyName : string);
begin
  inherited CalculateObjectValue(prmPropertyName);

  // TODO -cDMP: TUser.CalculateObjectValue - Do any changes here.
  // TODO -cDMP: TUser.CalculateObjectValue - Force edited value of manually changed props.

end;

constructor TUserAccess.Create(prmSession : TSQLSession ; prmTableName :
    string);
begin
  inherited Create(prmSession, prmTableName);

  // OVERRIDE BASE.
  Self.OID.FieldName  := 'userAccessID';
  Self.OID.Name       := 'userAccessID';

   // NEW
  FAccessDescription := TdmpStringProperty.Create('AccessDescription', 'accessDescription_str');
  PropertiesAdd(FAccessDescription);

  FAccessException := TdmpBooleanProperty.Create('AccessException', 'accessException_bol');
  PropertiesAdd(FAccessException);

  FAccessExceptionGUIDKey := TdmpGUIDProperty.Create('AccessExceptionGUID', 'accessException_guid');
  PropertiesAdd(FAccessExceptionGUIDKey);

  FAccessExceptionIntKey := TdmpIntegerProperty.Create('AccessExceptionINT', 'accessException_int');
  PropertiesAdd(FAccessExceptionIntKey);

  FAccessLevel := TdmpIntegerProperty.Create('AccessLevel', 'accessLevel_int');
  PropertiesAdd(FAccessLevel);

  FModuleNumber := TdmpIntegerProperty.Create('ModuleNumber', 'moduleNum_int');
  PropertiesAdd(FModuleNumber);

  FUserID := TdmpGUIDProperty.Create('UserID', 'UserID');
  PropertiesAdd(FUserID);

end;

procedure TUserAccess.CalculateObjectValue(const prmPropertyName : string);
begin
  inherited CalculateObjectValue(prmPropertyName);

end;

constructor TUserSession.Create(prmSession : TSQLSession ; prmTableName :
    string);
begin
  inherited Create(prmSession, prmTableName);

  // OVERRIDE BASE.
  Self.OID.FieldName  := 'sessionID';
  Self.OID.Name       := 'sessionID';

  // NEW
  FLogOffTime   := TdmpDateTimeProperty.Create('LogOffTime', 'LogOffTime_dat', 'LogOffTime');
  PropertiesAdd(FLogOffTime);

  FLogOnTime    := TdmpDateTimeProperty.Create('LogOnTime', 'LogOnTime_dat', 'LogOnTime');
  PropertiesAdd(FLogOnTime);

  FMachineName  := TdmpStringProperty.Create('MachineName','MachineName_str');
  PropertiesAdd(FMachineName);

  FUserID := TdmpGUIDProperty.Create('UserID','UserID');
  PropertiesAdd(FUserID);

  FSecondsOnLine := TdmpIntegerProperty.Create('SecondsOnLine','SecondsOnLine_int');
  PropertiesAdd(FSecondsOnLine);

  FLogOnTime.Value    := Now;
  FLogOffTime.Value   := FLogOnTime.Value;
  Self.OID.Value      := CreateClassID;
  Self.OID.Parameter  := Self.OID.Value;

  FTimer := TTimer.Create(nil);
  FTimer.Interval := 10000;
  FTimer.OnTimer := OnMyTimer;
  FTimer.Enabled := True;

end;

destructor TUserSession.Destroy;
begin
  if Assigned(FTimer) then
    begin
    FTimer.OnTimer := Nil;
    FTimer.Free;
    end;
  inherited;
end;

procedure TUserSession.CalculateObjectValue(const prmPropertyName : string);
begin
  inherited CalculateObjectValue(prmPropertyName);

  if prmPropertyName = 'LogOffTime' then
    begin
    SecondsOnLine.Value   := SecondsBetween(LogOffTime.Value, LogOnTime.Value);
    SecondsOnLine.Changed := True;
    end;

end;

procedure TUserSession.OnMyTimer(Sender : TObject);
begin
  LogOffTime.Value := Now;
  Self.Save;
end;

function TUserAccessList.GetNewObject: TdmpObjectBase;

begin
  Result := TUserAccess.Create(Self.Session, Self.Table);
end;

function TUserAccessList.GetUserAccess: TUserAccess;
begin
  Result := TUserAccess(Records[Self.RecordsCurrent]) ;
end;

procedure TUserAccessList.SetUserAccess(const Value: TUserAccess);
begin
  Records[Self.RecordsCurrent] := TUserAccess(Value);
end;




end.

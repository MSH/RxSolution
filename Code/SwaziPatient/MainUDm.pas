unit MainUDm;

interface

uses
  SysUtils, Classes, DB, ADODB, Windows,
  Forms,
  Messages, RzLaunch, Dialogs, ComObj, DateUtils;

type
  TMainDm = class(TDataModule)
    PatientMainConnection: TADOConnection;
    TblSystem: TADOTable;
    dsSystem: TDataSource;
    TblSystemSystemStore_ID: TAutoIncField;
    TblSystemDemanderCode_str: TWideStringField;
    TblSystemFinancialYear_str: TWideStringField;
    TblSystemFYStart_dat: TDateTimeField;
    TblSystemFYEnd_dat: TDateTimeField;
    TblSystemDemanderName_str: TWideStringField;
    TblSystemAddress1_str: TWideStringField;
    TblSystemAddress2_str: TWideStringField;
    TblSystemAddress3_str: TWideStringField;
    TblSystemCity_str: TWideStringField;
    TblSystemPostalCode_str: TWideStringField;
    TblSystemPhone_str: TWideStringField;
    TblSystemFax_str: TWideStringField;
    TblSystemDistrict_str: TWideStringField;
    TblSystemRegion_str: TWideStringField;
    TblSystemContact_str: TWideStringField;
    TblSystemProvince_str: TWideStringField;
    TblSystemType_str: TWideStringField;
    TblSystemMainDepot_str: TWideStringField;
    TblSystemReportBuilderFile: TStringField;
    TblSystemSupplierDef_ID: TIntegerField;
    TblSystemAccountDef_ID: TIntegerField;
    TblSystemDemanderDef_ID: TIntegerField;
    TblSystemReportStart_dat: TDateTimeField;
    TblSystemReportEnd_dat: TDateTimeField;
    TblSystemprovincialLogo_img: TBlobField;
    Rzlauncher1: TRzLauncher;
    tblSystemUser: TADOTable;
    tblSystemUserUserID: TGuidField;
    tblSystemUsertitle_str: TWideStringField;
    tblSystemUserfirstName_str: TWideStringField;
    tblSystemUserlastName_str: TWideStringField;
    tblSystemUserinitials_str: TWideStringField;
    tblSystemUserposition_str: TWideStringField;
    tblSystemUserrank_str: TWideStringField;
    tblSystemUseruserName_str: TWideStringField;
    tblSystemUserpassword_str: TWideStringField;
    tblSystemUsertelephone_str: TWideStringField;
    tblSystemUsercellular_str: TWideStringField;
    tblSystemUseremail_str: TWideStringField;
    tblSystemUseroffice_str: TWideStringField;
    tblSystemUserbuilding_str: TWideStringField;
    tblSystemUseruserNo_int: TAutoIncField;
    tblSystemUserprescriber_ID: TGuidField;
    tblSystemUserdispenser_ID: TGuidField;
    tblUserSession: TADOQuery;
    TblSystemCohortInterval: TIntegerField;
    TblSystemCohortLength: TIntegerField;
    dsTicketNumber: TDataSource;
    tblTicketNumber: TADOQuery;
    TblSystemTemp01: TWideStringField;
    TblSystemTemp02: TWideStringField;
    TblSystemTemp03: TWideStringField;
    TblSystemTemp04: TWideStringField;
    TblSystemTemp05: TWideStringField;
    tblSystemUserdemander_id: TIntegerField;
    procedure LaunchUdlFile;
    function UserLogonCheck(username : string; password : string): boolean;
    procedure AddUserSession;
    procedure OpenRecordNumbering;
    procedure CloseRecordNumbering;
    procedure tblTicketNumberBeforePost(DataSet: TDataSet);
    procedure SaveSystemSettings;
    procedure ResetTicketNumber;
    procedure UpdateTicketNumberDate;
    function IsNumberValidToday: Boolean;
    function GetTicketNumber(tblTicketNumber:TADOQuery): integer;
    function GetComputerNetName: string;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDm: TMainDm;

implementation

uses RxSolutionSecurityEncryption, MainUFrm;

{$R *.dfm}

function TMainDm.GetTicketNumber(tblTicketNumber:TADOQuery): integer;
var
  Attempts, NextID,i: Integer;
  vNum: string;
begin

  with tblTicketNumber do
    begin
    Active := False;
    Active := True;                                                             // do this to prevent can't locate record error
    NextID  := FieldByName('Record_Number').AsInteger;
    Edit;
    FieldByName('Record_Number').AsInteger := NextID + 1;
    Post;  // Close the record someone else can access
    vNum := IntToStr(NextID);
//    Active := False;
    Result := NextID;
    end;
end;


function TMainDm.GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

//THIS PROCEDURE ADDS THE USER SESSION; LOG ON TIME; LOG OFF TIME; USER LOGGED ON
procedure TMainDm.AddUserSession;
begin
 with tblUserSession do
  begin
  Close;
  Open;
  Append;
  FieldByName('sessionID').Value                := CreateClassID;
  FieldByName('LogOnTime_dat').AsDateTime       := MainFrm.LogOnTime;
  FieldByName('LogOffTime_dat').AsDateTime      := Now;
  FieldByName('UserID').AsString                := MainFrm.FUserId;
  FieldByName('MachineName_str').AsString       := GetComputerNetName;
  FieldByName('SecondsOnLine_int').AsInteger    := StrToInt(IntToStr(SecondsBetween(Now, MainFrm.LogOnTime)));
  Post;
  Close;
  end;
end;


function TMainDm.UserLogonCheck(username : string; password : string): boolean;
var
 g : THashCode_1_0_0;
begin

  g := THashCode_1_0_0.Create;
  with tblSystemUser do
  begin
  
  Open; First;
  if not Locate('userName_str', username, [loCaseInsensitive]) then
   Result := False
  else
   begin
   if (password = Trim(g.Decode(FieldByName('password_str').AsString))) then
    begin
    MainFrm.FUser := FieldByName('lastname_str').AsString+', '+FieldByName('firstname_str').AsString;
    MainFrm.FUserName := FieldByName('username_str').AsString;
    MainFrm.FUserId := fieldByName('UserID').AsString;
    MainFrm.FViewType := fieldByName('position_str').AsString;
    MainFrm.Logged_In := True;
    MainFrm.LogOnTime := Now;
    if Length(Trim(fieldByName('position_str').AsString)) > 0 then
     Result := True
    else
     begin
     MessageDlg('User cannot logon because you don''t a valid position. Please assign a position for this user.', mtWarning, [mbOK], 0);
     Result := False;
     end;
    end
   else
    Result := False;
   end;
  Close;
  end;
end;

procedure TMainDm.LaunchUdlFile;
begin
 Rzlauncher1.FileName:=ExtractFilePath(Application.ExeName)+'RxDispensingReporter.udl';
 Rzlauncher1.launch;
end;

procedure TMainDm.OpenRecordNumbering;
begin
 //
 with tblTicketNumber do
  begin
  if not Active then
   Open;
  end;

end;

procedure TMainDm.CloseRecordNumbering;
begin
 //
 with tblTicketNumber do
  begin
  if Active then
   begin
   if State in [dsEdit, dsInsert] then
    Post;
   //Close;
   end;
  end;

end;

procedure TMainDm.tblTicketNumberBeforePost(DataSet: TDataSet);
begin
 with DataSet do
  begin
  FieldByName('Record_DateSet').AsDateTime := Now();
  end;
end;

procedure TMainDm.SaveSystemSettings;
begin
 with TblSystem do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;
end;

procedure TMainDm.ResetTicketNumber;
begin

 with tblTicketNumber do
  begin
  Open;
  Edit;
  FieldByName('Record_Number').AsInteger        := 0;
  FieldByName('Record_DateSet').AsDateTime      := Date();
  Post;
  Close;
  end;
end;

//UPDATE TICKET NUMBER WITHOUT CHANGIN THE RECORD NUMBER; JUST UPDATE THE DATE WHEN RECORD NUMBER LAST CHANGED
procedure TMainDm.UpdateTicketNumberDate;
begin

 with tblTicketNumber do
  begin
  Open;
  Edit;
  FieldByName('Record_DateSet').AsDateTime      := Date();
  Post;
  Close;
  end;

end;

function TMainDm.IsNumberValidToday: Boolean;
begin
 with tblTicketNumber do
  begin
  Open;
  if DateOf(FieldByName('Record_DateSet').AsDateTime) = Date() then
   Result := True
  else
   Result := False;
  Close;
  end;
end;



end.

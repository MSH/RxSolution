unit PrescriptionListUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  SystemConstants,
  DBCtrls, RzDBCmbo, StdCtrls, RzCmboBx, RzDBEdit,
  RzButton, RzDlgBtn, RzDBLbl, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, Mask, RzEdit, RzPanel, RzLabel, ExtCtrls, RzCommon,
  Menus, DB, ADODB, ActnList, dxExEdtr, RzGroupBar, TB2Item, TB2Dock,
  TB2Toolbar, RxSolutionSecurityClass, ElPopBtn, RzBckgnd, jpeg, RzLaunch, PrjConst,
  RzRadChk, TDelta9U, TResponseU, TPatientU, TMessageResultU;

type
  TPrescriptionListFrm = class(TForm)
    ActionList1: TActionList;
    atnPrescription_Edit: TAction;
    atnPrescription_Add: TAction;
    atnPrescription_Delete: TAction;
    atnPerson_Add: TAction;
    atnPerson_Save: TAction;
    atnPerson_Edit: TAction;
    atnPrescription_EditInactive: TAction;
    atnPerson_Update: TAction;
    conPatientPrescription: TADOConnection;
    qryPatientList: TADOQuery;
    dsqryPatientList: TDataSource;
    dsqryPrescriptionActive: TDataSource;
    qryPrescriptionActive: TADOQuery;
    qryPrescriptionItemActive: TADOQuery;
    dsqryPrescriptionItemActive: TDataSource;
    pmnuRX: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    qryPersonPositionActive: TADOQuery;
    dsqryPersonPositionActive: TDataSource;
    rzcMain: TRzFrameController;
    pmnuInactiveRx: TPopupMenu;
    ViewinactiveRx1: TMenuItem;
    pmnuPatient: TPopupMenu;
    atnPrescriptionItemEdit1: TMenuItem;
    Editpatient1: TMenuItem;
    atnPersonSearch: TAction;
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Main_PatientListPanel: TPanel;
    Label83: TLabel;
    rzbGradientA: TRzBackground;
    Shape2: TShape;
    Label1: TLabel;
    rzsLine01: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    pnl_Main_PrescriptionPanel: TPanel;
    rzLblRxList: TLabel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape1: TShape;
    grdPatientList: TdxDBGrid;
    grdPatientListpersonLastName_Str: TdxDBGridColumn;
    grdPatientListpersonFirstName_Str: TdxDBGridColumn;
    grdPatientListpersonGender_Str: TdxDBGridColumn;
    Label2: TLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    Label3: TLabel;
    Label4: TLabel;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    Label17: TLabel;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    rzgRxListItems: TRzGroupBox;
    grdPrescriptionItemsActive: TdxDBGrid;
    rzbGradientB: TRzBackground;
    atnPatientDisplayColumns: TAction;
    atnPrescriptionDisplayColumns: TAction;
    grdPatientListpersonIDNumber_Str: TdxDBGridColumn;
    grdPatientListpersonAgeYears_int: TdxDBGridMaskColumn;
    grdPatientListpersonInstitution_str: TdxDBGridColumn;
    grdPatientListpersonRefNoCurrent_str: TdxDBGridColumn;
    grdPatientListpersonTelNoCurrent_str: TdxDBGridColumn;
    grdPatientListpersonCelNoCurrent_str: TdxDBGridColumn;
    btnSearchPaab: TRzButton;
    rzvFileLaunchUtil: TRzLauncher;
    qryPrescriptionActiveRxDate_dat: TDateTimeField;
    qryPrescriptionActiveRxDateRepeat_Dat: TDateTimeField;
    qryPrescriptionActiveprescriptionNumber_Str: TWideStringField;
    qryPrescriptionActiverepeats_Int: TIntegerField;
    qryPrescriptionActiveprescriptionCost_Mon: TBCDField;
    qryPrescriptionActivepatient_ID: TGuidField;
    qryPrescriptionActiveprescription_ID: TGuidField;
    qryPrescriptionActivepatientName_Str: TWideStringField;
    qryPrescriptionActiveprescriber_ID: TGuidField;
    qryPrescriptionActiveprescriberName_Str: TWideStringField;
    qryPrescriptionActiveprescriberRXLevel_Str: TWideStringField;
    qryPrescriptionActiveprescriptionStatus_Str: TWideStringField;
    qryPrescriptionActiveprescriptionActive_bol: TBooleanField;
    qryPrescriptionActivedispensingPosted_bol: TBooleanField;
    qryPrescriptionActivefolderNumber_Str: TWideStringField;
    qryPrescriptionActivedispenserName_Str: TWideStringField;
    qryPrescriptionActivedispenserRxLevel_Str: TWideStringField;
    qryPrescriptionActiveRepeatStatus_Str: TWideStringField;
    qryPrescriptionActivepersonpregnant_bol: TBooleanField;
    qryItemHistory: TADOQuery;
    dsItemHistory: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1FrmFormulation_Str: TdxDBGridColumn;
    Label23: TLabel;
    RzEdit5: TRzEdit;
    atnPrescription_Copy: TAction;
    Button1: TButton;
    RzButton1: TRzButton;
    qryPrescriptionActivevstTreamentPrescribed_bol: TBooleanField;
    qryPrescriptionActivevstVisitDate_dat: TDateTimeField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    rzStartDate: TRzDateTimeEdit;
    rzEndDate: TRzDateTimeEdit;
    pnl_Image_Header: TRzLabel;
    atnFindPatient: TAction;
    cmbPatientActive: TComboBox;
    Label10: TLabel;
    dsPersoAllergies: TDataSource;
    qryPersonAllergies: TADOQuery;
    rzgRxList: TRzGroupBox;
    grdPrescriptionActive: TdxDBGrid;
    grdPrescriptionActiveRxDate_dat: TdxDBGridDateColumn;
    grdPrescriptionActiveprescriptionNumber_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriberName_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    grdPrescriptionActiveprescriptionStatus_Str: TdxDBGridColumn;
    grdPrescriptionActiveRepeatStatus_Str: TdxDBGridColumn;
    grdPrescriptionActivePosted_bol: TdxDBGridCheckColumn;
    grdPrescriptionActivevstVisitDate_dat: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    Label11: TLabel;
    rzLblRxListItems: TLabel;
    qryPatientProtocols: TADOQuery;
    dsPatientProtocols: TDataSource;
    dxDBGrid4: TdxDBGrid;
    qryPatientProtocolsProtocol: TWideStringField;
    dxDBGrid2Protocol: TdxDBGridColumn;
    qryPersonAllergiesAllergyDescription_str: TWideStringField;
    Label5: TLabel;
    lblstatus: TLabel;
    lblRxStatus: TLabel;
    qryPersonAllergiespersonAllergySource_Str: TWideStringField;
    dxDBGrid4AllergyDescription_str: TdxDBGridColumn;
    dxDBGrid4personAllergySource_Str: TdxDBGridColumn;
    qryPatientProtocolsIndication: TWideStringField;
    dxDBGrid2Indication_str: TdxDBGridColumn;
    CopyRx1: TMenuItem;
    qryPrescriptionItemActiveRXItem_ID: TGuidField;
    qryPrescriptionItemActiveDspDescription_Str: TWideStringField;
    grdPrescriptionItemsActiveDspDescription_Str: TdxDBGridColumn;
    qryPatientProtocolsDate_dat: TDateTimeField;
    dxDBGrid2Date_dat: TdxDBGridDateColumn;
    qryPatientProtocolsStatus: TWideStringField;
    dxDBGrid2Status: TdxDBGridColumn;
    lblInterfaceResult: TLabel;
    qryPatientHopping: TADOQuery;
    qryWasMedicationReceived: TADOQuery;
    grdPrescriptionActiveDemanderName_Str: TdxDBGridColumn;
    qryPrescriptionActiveRxCancelReasonsAfterPosting_str: TWideStringField;
    qryPrescriptionActiveDemanderName_Str: TWideStringField;
    grdPatientListpersonDOB_Dat: TdxDBGridColumn;
    qryPrescriptionActivePosted_dat: TDateTimeField;
    qryPrescriptionActivePostedBy_str: TWideStringField;
    grdPrescriptionActivePosted_dat: TdxDBGridColumn;
    procedure atnPerson_AddExecute(Sender: TObject);
    procedure atnPerson_EditExecute(Sender: TObject);
    procedure atnPrescription_AddExecute(Sender: TObject);
    procedure atnPrescription_DeleteExecute(Sender: TObject);
    procedure atnPrescription_EditExecute(Sender: TObject);
    procedure qryPatientListAfterEdit(DataSet: TDataSet);
    procedure qryPatientListAfterPost(DataSet: TDataSet);
    procedure qryPatientListAfterScroll(DataSet: TDataSet);
    procedure qryPersonPositionActiveAfterEdit(DataSet: TDataSet);
    procedure qryPersonPositionActiveAfterPost(DataSet: TDataSet);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzEdit3Change(Sender: TObject);
    procedure RzEdit4Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atnPatientDisplayColumnsExecute(Sender: TObject);
    procedure atnPrescriptionDisplayColumnsExecute(Sender: TObject);
    procedure RzEdit5Change(Sender: TObject);
    procedure btnSearchPaabClick(Sender: TObject);
    procedure atnPrescription_CopyExecute(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure atnFindPatientExecute(Sender: TObject);
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    FUserAccess: Integer;
    FUserName : string;
    FUserID : string;
    FUserUniqueName: string;
    FUserPin: string;
    FUserClinic: string;
    atnRxCanBrowse : Boolean;
    atnRxCanPrescribe : Boolean;
    atnRxCanDispense : Boolean;
    atnPatientCanEdit : Boolean;
    atnPatientNoAccess : Boolean;
    FIsDispenser : Boolean;
    FIsPrescriber : Boolean;
    procedure Screen_Resize;
    procedure SetButtonStatus;
    procedure SetDbConnectionString(const Value: string);
    procedure SetSearchStatusDisplay;
    procedure SetSearchRxDisplay;
    function WasPatientAtOtherClinics(patientID: string; clinic: string): Boolean;
    { Private declarations }
  public
    procedure Close;
    procedure ConnectPatientList(const SearchVal : string; const SearchType :
        integer);
    function GetCurrentPatientID: string;
    function GetCurrentPrescriptionID(pFromWhere : integer): SGUID;
    function GetSearchString(const SearchVal : string; const SearchType : integer):
        string;
    function GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string; PatientActive: string): string;

    procedure Open;
    procedure Prescription_Add(pFromWhere : integer);
    procedure Prescription_Delete(pFromWhere : integer);
    //MC MANKGA ----- 10/08/2012
    procedure Prescription_Edit(pFromWhere : integer; atnBrowse: Boolean; atnEditLabel: Boolean);
    procedure Prescription_Copy(pFromWhere : integer);
    procedure OpenPatientRxList;
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    property UserAccess: Integer read FUserAccess write FUserAccess;
    procedure CheckEnableSearch;


    { Public declarations }
  end;


var
  PrescriptionListFrm: TPrescriptionListFrm;

implementation

uses RxSolutionUFrm, DialogGridColumnSelectorUFrm,
  DLLInterface, TabEnter, MainUDM;

{$R *.dfm}

procedure TPrescriptionListFrm.atnPerson_AddExecute(Sender: TObject);
begin
  try
  RxSolutionFrm.Patient.Add(RxSolutionFrm.Security);
//  TDLLInterface.Patient__Add(FDbConnectionString, RxSolutionFrm.Security);
  Refresh_DataSet(qryPatientList, 'person_ID');
  except
  end;
end;

procedure TPrescriptionListFrm.atnPerson_EditExecute(Sender: TObject);
var
  ID : string;
begin

  if qryPatientList.active then
    begin
    ID := qryPatientList.FieldByName('person_ID').AsString;
    //******** Check if patient was at other clinics
    WasPatientAtOtherClinics(ID, FUserClinic);
    RxSolutionFrm.Patient.Edit(ID, RxSolutionFrm.Security);
    //TDLLInterface.Patient__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
    Refresh_DataSet(qryPatientList, 'person_ID');
    end;

end;

procedure TPrescriptionListFrm.atnPrescription_AddExecute(Sender: TObject);
begin
 //******** SM 20 Mar 2014
 //******** Do not allow prescribing to deceased or in-active patients
 if qryPatientList.Active then
  begin
  if (qryPatientList.FieldByName('personActive_bol').AsBoolean) then
   begin
   Prescription_Add(0);
   Refresh_DataSet(qryPrescriptionActive, 'prescription_ID');
  //  Refresh_DataSet(qryPrescriptionInActive, 'prescription_ID');
   Refresh_DataSet(qryPrescriptionItemActive, '');
   Refresh_DataSet(qryItemHistory, '');
   end
  else
   MessageDlg('Patient is not active. Cannot create a prescription!', mtError, [mbOk], 0);
 end;
 
end;

procedure TPrescriptionListFrm.atnPrescription_DeleteExecute(Sender: TObject);
begin

  Prescription_Delete(0);

  Refresh_DataSet(qryPrescriptionActive, 'prescription_ID');
//  Refresh_DataSet(qryPrescriptionInActive, 'prescription_ID');
  Refresh_DataSet(qryPrescriptionItemActive, '');
  Refresh_DataSet(qryItemHistory, '');

end;

//MC - MANKGA -----check rights --- 10/08/2012
procedure TPrescriptionListFrm.atnPrescription_EditExecute(Sender: TObject);
var
 atnRegimenCanEdit: Boolean;
 atnEditLabel : Boolean;
begin

 with RxSolutionFrm.Security do
  atnRegimenCanEdit := (GetUserAccessLevel(MODULE_DISPENSING_DOSING) > USER_BROWSER);

 with RxSolutionFrm.Security do
  atnEditLabel := (GetUserAccessLevel(MODULE_LABELCONFIGURATION) > USER_BROWSER);

  //*************** SM - 27 Jan 2013
  Prescription_Edit(0, (atnRxCanPrescribe and atnRxCanDispense), atnEditLabel);
  Refresh_DataSet(qryPrescriptionActive, 'prescription_ID');
  Refresh_DataSet(qryPrescriptionItemActive, '');
  Refresh_DataSet(qryItemHistory, '');  
  Refresh_DataSet(qryPatientProtocols, '');
end;

procedure TPrescriptionListFrm.Close;
begin

  conPatientPrescription.Close;

end;

procedure TPrescriptionListFrm.ConnectPatientList(const SearchVal : string; const
    SearchType : integer);
begin

  qryPrescriptionItemActive.Close;
  qryPrescriptionActive.Close;
  qryItemHistory.Close;
  qryPersonAllergies.Close;
  qryPatientProtocols.Close;

  with qryPatientList do
    begin
    Close;
    if Searchval <> '' then
     begin
     SQL.Clear;
     SQL.Add(GetSearchString(Searchval, SearchType));
     Open;
     end;
    end;

   Open;

   qryPatientProtocols.Open;
   SetButtonStatus;

end;

function TPrescriptionListFrm.GetCurrentPatientID: string;
begin

  if qryPatientList.Active then
    if qryPatientList.RecordCount > 0 then
      Result := qryPatientList.fieldByName('person_ID').AsString
      else
      Result := '';
end;

function TPrescriptionListFrm.GetCurrentPrescriptionID(pFromWhere : integer):
    SGUID;
begin

  case pFromWhere of
    0 : Result := qryPrescriptionActive.fieldByName('prescription_ID').AsString;
    1 : Result := qryPrescriptionItemActive.fieldByName('prescription_ID').AsString;
//    2 : Result := qryPrescriptionInActive.fieldByName('prescription_ID').AsString;
    end;
end;

function TPrescriptionListFrm.GetSearchString(const SearchVal : string; const
    SearchType : integer): string;
var
  SQLSTR : string;

begin

SQLSTR := 'Select * from view_v01_Patient_List ';

case SearchType of
  0: SQLSTR := SQLSTR + 'WHERE (personRefNoCurrent_str LIKE ''' + SearchVal + '%'') ';
  1: SQLSTR := SQLSTR + 'WHERE (personLastName_Str LIKE ''' + SearchVal + '%'') ';
  2: SQLSTR := SQLSTR + 'WHERE (personFirstName_Str LIKE ''' + SearchVal + '%'') ';
  3: SQLSTR := SQLSTR + 'WHERE (personIDNumber_Str LIKE ''' + SearchVal + '%'') ';
  4: SQLSTR := SQLSTR + 'WHERE (personPAS_str LIKE ''' + SearchVal + '%'') ';
  end;

Result := SQLSTR;

end;

function TPrescriptionListFrm.GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string; PatientActive: string): string;
var
  SQLSTR : string;
begin

  SQLSTR := 'Select * from view_v01_Patient_List WHERE ';

  //if (Lastname) then
   begin
   SQLSTR := SQLSTR + ' (personRefNoCurrent_str LIKE ''' + IPN + '%'') ';
   if Length(Lastname) > 0 then
    SQLSTR := SQLSTR + 'AND (personLastName_Str LIKE ''' + Lastname + '%'') ';
   if Length(Firstname) > 0 then
    SQLSTR := SQLSTR + 'AND (personFirstName_Str LIKE ''' + Firstname + '%'') ';
   if Length(IDNumber) > 0 then
    SQLSTR := SQLSTR + 'AND (personIDNumber_Str LIKE ''' + IDNumber + '%'') ';
   if Length(PAS) > 0 then
    SQLSTR := SQLSTR + 'AND (personPAS_str LIKE ''' + PAS + '%'') ';
    
   //Bug Issue 2915 Add filter on 'Active' field
   if PatientActive <> '<All>' then 
    begin
    if PatientActive = 'True' then SQLSTR := SQLSTR + 'AND (personActive_bol = 1)'
    else SQLSTR := SQLSTR + 'AND (personActive_bol = 0)';
    end;

   end;

  Result := SQLSTR;

end;

procedure TPrescriptionListFrm.Open;
begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  Floading := False;
  SetButtonStatus;

end;

procedure TPrescriptionListFrm.Prescription_Add(pFromWhere : integer);
var
  ID : string;

begin

  try
  ID := GetCurrentPatientID;
  if ID <> '' then
    RxSolutionFrm.RX.Add(ID, FUserUniqueName, FUserPin)
//    TDLLInterface.Prescription__Add(FDbConnectionString, ID, '', '', RxSolutionFrm.Security )
    else
    MessageDlg(SNoPatientAvailable, mtError, [mbOK], 0);
  except
  end;

end;

procedure TPrescriptionListFrm.Prescription_Delete(pFromWhere : integer);
var
  ID : SGUID;
begin

  if MessageDlg(SDoYouWantToDelet, mtWarning, [mbYes, mbNo, mbCancel], 0) = mrYes then
    begin
    ID := GetCurrentPrescriptionID(pFromWhere);
    RxSolutionFrm.RX.Delete(ID);
    end;

//  TDLLInterface.Prescription__Delete(FDbConnectionString, ID, RxSolutionFrm.Security);
end;

//MC --10/08/2012
procedure TPrescriptionListFrm.Prescription_Edit(pFromWhere : integer; atnBrowse : Boolean; atnEditLabel: Boolean);
var
  ID : SGUID;
begin
  try
  ID := GetCurrentPrescriptionID(pFromWhere);
  RxSolutionFrm.RX.Edit(ID, atnBrowse, FUserUniqueName, atnEditLabel, FUserPin);
    //TDLLInterface.Prescription__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
  except
  end;

end;

procedure TPrescriptionListFrm.qryPatientListAfterEdit(DataSet: TDataSet);
begin
  SetButtonStatus;
end;

procedure TPrescriptionListFrm.qryPatientListAfterPost(DataSet: TDataSet);
begin
  SetButtonStatus;
end;

procedure TPrescriptionListFrm.qryPatientListAfterScroll(DataSet: TDataSet);
begin
  SetButtonStatus;
  qryPrescriptionActive.close;
  qryPrescriptionItemActive.close;
  qryItemHistory.close;
  qryPersonAllergies.Close;
  qryPatientProtocols.Close;
end;

procedure TPrescriptionListFrm.qryPersonPositionActiveAfterEdit(DataSet:
    TDataSet);
begin
  SetButtonStatus;
end;

procedure TPrescriptionListFrm.qryPersonPositionActiveAfterPost(DataSet:
    TDataSet);
begin
  SetButtonStatus;
end;

procedure TPrescriptionListFrm.Refresh_DataSet(DataSet : TDataset ;
    PrimaryKeyField : String);
var
  curRecord :String;
begin

  if DataSet.Active then
    try
    with DataSet do

      try
      DisableControls;
      if PrimaryKeyField <> '' then
        curRecord := FieldByName(PrimaryKeyField).AsString;
      Close;
      Open;

      if PrimaryKeyField <> '' then
        begin
        Last;
        while not BOF do
          begin
          if FieldByName(PrimaryKeyField).AsString = curRecord then Break;
          Prior;
          end;
        end;
        
      finally
      EnableControls;
      end;
    except
    end;

end;

procedure TPrescriptionListFrm.RzEdit1Change(Sender: TObject);
var
  str : string;
  typ : integer;
begin

 CheckEnableSearch;

end;

procedure TPrescriptionListFrm.RzEdit2Change(Sender: TObject);
var
  str : string;
  typ : integer;
begin
  {
  str := Trim((Sender as TRzEdit).Text);
  typ := (Sender as TRzEdit).Tag;
  ConnectPatientList(str, typ);
  }
  CheckEnableSearch;

  if (Length(RzEdit2.Text) = 10) then
   begin
   atnFindPatient.Execute;
   end;

end;

procedure TPrescriptionListFrm.RzEdit3Change(Sender: TObject);
var
  str : string;
  typ : integer;
begin
  {
  str := Trim((Sender as TRzEdit).Text);
  typ := (Sender as TRzEdit).Tag;
  ConnectPatientList(str, typ);
 }
 CheckEnableSearch;
end;

procedure TPrescriptionListFrm.RzEdit4Change(Sender: TObject);
var
  str : string;
  typ : integer;
begin
 {
  str := Trim((Sender as TRzEdit).Text);
  typ := (Sender as TRzEdit).Tag;
  ConnectPatientList(str, typ);
 }
 CheckEnableSearch;
 if (Length(RzEdit4.Text) = 13) then
   begin
   atnFindPatient.Execute;
   end;

end;

procedure TPrescriptionListFrm.SetButtonStatus;
var
    atnBrowse : Boolean;
begin

  if (qryPatientList.State in [dsEdit, dsInsert]) or (qryPersonPositionActive.State in [dsEdit, dsInsert]) then
    atnPerson_Save.Enabled := True
    else
    atnPerson_Save.Enabled := False; 

end;

procedure TPrescriptionListFrm.SetDbConnectionString(const Value: string);
begin
  conPatientPrescription.Close;
  conPatientPrescription.ConnectionString := Value;
  FDbConnectionString := Value;
end;

procedure TPrescriptionListFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TPrescriptionListFrm.FormCreate(Sender: TObject);
var
 UserID: Double;
 FCheckPinBeforePost: Boolean;
begin
  rzbGradientA.Align := alClient;
  rzbGradientB.Align := alClient;

  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  conPatientPrescription.Close;
  conPatientPrescription.ConnectionString := FDbConnectionString;

  //******* SM 20 Mar 2014
  FCheckPinBeforePost := MainDm.GetPinBeforePost;

  with RxSolutionFrm.Security.User do
   UserID := UserNumID.Value;

  //******* SM 17 Mar 2014
  FIsPrescriber := (MainDm.GetUserPrescriberID(UserID) <> '');
  FIsDispenser  := (MainDm.GetUserDispenserID(UserID) <> '');

  //MC - 07/08/2012
  with RxSolutionFrm.Security do
   atnPatientCanEdit := (GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) > USER_BROWSER);

  //******* SM - 23 Jan 2013
  with RxSolutionFrm.Security do
   atnRxCanPrescribe := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) > USER_BROWSER);

  //******* SM - 23 Jan 2013
  with RxSolutionFrm.Security do
   atnRxCanDispense := (GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) > USER_BROWSER);

  //******* SM - 23 Jan 2013
  with RxSolutionFrm.Security do
   atnRxCanBrowse := (GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) = USER_BROWSER);

  //****** SM - 23 Jan 2013
  with RxSolutionFrm.Security do
   atnPatientNoAccess := (GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) < USER_BROWSER);

  atnPerson_Add.Enabled := atnPatientCanEdit;
  atnPerson_Edit.Enabled := atnPatientCanEdit;

  atnPrescription_Add.Enabled := ((not atnRxCanBrowse) and atnRxCanPrescribe and atnRxCanDispense);
  atnPrescription_Edit.Enabled := (atnRxCanPrescribe and atnRxCanDispense) or (atnRxCanBrowse);

  //****** SM - 04 Feb 2013
  atnPrescription_Copy.Enabled := (atnRxCanPrescribe and atnRxCanDispense);

  //****** SM IS user dispenser or prescriber only
  if FCheckPinBeforePost then
   begin
   atnPrescription_Add.Enabled := (not FIsDispenser) or (FIsPrescriber);
   end;


  btnSearchPaab.Visible := FileExists('PaabInterface\Paab.exe');

end;

procedure TPrescriptionListFrm.Screen_Resize;
var
  pnlWid: Integer;
  curWid, curHgt  :integer;

  LeftPnl, RightPnl : TPanel;

const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnl_Main_Back.Width;
  curHgt  := pnl_Main_Back.Height;

  pnlToolbar_Header_ShapeBorder.Left  := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Top   := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Width := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height:= curHgt - (STEP * 2);

  pnl_Image_Header.Left               := 12;
  pnl_Image_Header.Top                := (STEP * 2);

  LeftPnl   := pnl_Main_PatientListPanel;
  RightPnl  := pnl_Main_PrescriptionPanel;

  if RightPnl.Visible then
    begin
    pnlWid := (curWid - (STEP * 5)) div 7;
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid * 2;

    RightPnl.Left         := LeftPnl.Left + LeftPnl.Width + (STEP * 1);
    RightPnl.Top          := pnl_Image_Header.Top + pnl_Image_Header.Height;
    RightPnl.Height       := curHgt - (LeftPnl.Top + (STEP * 2));
    RightPnl.Width        := pnlWid * 5;
    end else
    begin
    pnlWid := (curWid - (STEP * 2));
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid;
    end;

  // Now the items on the filter panel
  curWid  := LeftPnl.Width;
  curHgt  := LeftPnl.Height;

  rzsLine01.Width           := curWid - (STEP * 2);
//  rzsLine02.Width           := curWid - (STEP * 2);

//  grdPatientList.Top       := 240;
  grdPatientList.Left      := STEP;
  grdPatientList.Width     := curWid - (STEP * 2);
  grdPatientList.Height    := curHgt - (grdPatientList.Top + STEP);

  //  Left Panel
  curHgt := pnl_Main_PrescriptionPanel.Height;
  curWid := pnl_Main_PrescriptionPanel.Width;

  rzgRxList.Height  := curHgt - (rzgRxList.Top + STEP);
  rzgRxList.Width   := curWid - (rzgRxListItems.Width  + (STEP * 2));
  rzLblRxList.Width := rzgRxList.Width;

//  rzbPersonSave.Top := rzgPersonDetail.Height - (rzbPersonSave.Height + STEP);
//  rzbPersonEdit.Top := rzbPersonSave.Top;
//  rzbPersonAdd.Top := rzbPersonSave.Top;


  // Right panel (before middle)
  rzgRxListItems.Left := rzgRxList.Width  + rzgRxList.Left + STEP;
  rzgRxListItems.Height  := curHgt - (rzgRxListItems.Top + STEP);
  rzLblRxListItems.Left := rzgRxListItems.Left;         

end;

procedure TPrescriptionListFrm.atnPatientDisplayColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdPatientList);
end;

procedure TPrescriptionListFrm.atnPrescriptionDisplayColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdPrescriptionActive);
end;

procedure TPrescriptionListFrm.RzEdit5Change(Sender: TObject);
var
  str : string;
  typ : integer;
begin
  {  //********** SM 
  str := Trim((Sender as TRzEdit).Text);
  typ := (Sender as TRzEdit).Tag;
  ConnectPatientList(str, typ); }
  CheckEnableSearch;

  if (Length(RzEdit5.Text) = 10) then
   begin
   atnFindPatient.Execute;
   end;

end;

procedure TPrescriptionListFrm.btnSearchPaabClick(Sender: TObject);
begin
   with rzvFileLaunchUtil do
    try
    FileName :=  'PaabInterface\Paab.exe';
    StartDir := ExtractFilePath(Application.ExeName);
    Launch;
    except
    {  on E : Exception do MessageDlg(e.Message, mtWarning, [mbOK], 0);}
     ShowMessage(SErrorLoadinPaabIn);
    end;
end;

procedure TPrescriptionListFrm.atnPrescription_CopyExecute(
  Sender: TObject);
begin
  Prescription_Copy(0);
  Refresh_DataSet(qryPrescriptionActive, 'prescription_ID');
  Refresh_DataSet(qryPrescriptionItemActive, '');
  Refresh_DataSet(qryItemHistory, '');
end;

procedure TPrescriptionListFrm.Prescription_Copy(pFromWhere : integer);
var
  ID : SGUID;
begin

  if MessageDlg(SDoYouWantToCopy, mtWarning, [mbYes, mbNo, mbCancel], 0) = mrYes then
    try
    ID := GetCurrentPrescriptionID(pFromWhere);
    RxSolutionFrm.RX.CopyRx(ID, FUserUniqueName, FUserPin);
    except
    end;

end;

procedure TPrescriptionListFrm.RzButton1Click(Sender: TObject);
begin

 OpenPatientRxList;

end;

procedure TPrescriptionListFrm.OpenPatientRxList;
begin
//open Rx list only if the patient list is active
 if qryPatientList.Active = True then
  begin
  qryPrescriptionActive.Close;
  qryPrescriptionActive.Parameters.ParamByName('@StartDate').Value      := rzStartDate.Date;
  qryPrescriptionActive.Parameters.ParamByName('@EndDate').Value        := rzEndDate.Date;
  qryPrescriptionActive.Open;
//open items belonging to Rx
  qryPrescriptionItemActive.Open;
//open patient item history list
  qryItemHistory.Open;
//Open Allergies List
  qryPersonAllergies.Open;
//Open Protocols
  qryPatientProtocols.Open;
  end;

  SetSearchRxDisplay;
  SetButtonStatus;

end;

procedure TPrescriptionListFrm.FormShow(Sender: TObject);
begin
 RzEdit4.SetFocus;
 //set date filters here
 //set start to today's date - 60 days
 rzStartDate.Date := Now - 60;
 //end date to today's date + 30 days
 rzEndDate.Date := Now + 30;
 //New way of searching for patients
 CheckEnableSearch;

 with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);    
    end;

 //********* 27 August 2013
 //********* SM Dis-able some search button if Delta9 Patient Integration used
 if (RxSolutionFrm.FUseDelta9Integration) then
  begin
  //RzEdit1.Enabled := False;
  //RzEdit2.Enabled := False;
  //RzEdit3.Enabled := False;
  //RzEdit4.Enabled := False;
  cmbPatientActive.Enabled := False; 
  RzEdit5.SetFocus;
  end;

end;

procedure TPrescriptionListFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := NextControl(PrescriptionListFrm, Key);
end;

procedure TPrescriptionListFrm.CheckEnableSearch;
var
 vEnable : Boolean;
 vStringConc : string;
begin

 vEnable := False;
 vStringConc := (Trim(RzEdit1.Text)) + (Trim(RzEdit2.Text)) + (Trim(RzEdit3.Text)) + (Trim(RzEdit4.Text)) + (Trim(RzEdit5.Text));
 if Length(vStringConc) > 0 then
  vEnable := True;

 //********* USer can only use the Find Patient function if you have Browse or Access Rights
 atnFindPatient.Enabled := (vEnable and (not atnPatientNoAccess));

end;

procedure TPrescriptionListFrm.atnFindPatientExecute(Sender: TObject);
var
 vPatientActive : string;
 comObj : TDelta9;
 retMessage : TMessageResult;
 vConn, vResult : string;
begin

  qryPrescriptionItemActive.Close;
  qryPrescriptionActive.Close;
  qryItemHistory.Close;
  qryPersonAllergies.Close;
  qryPatientProtocols.Close;

  vConn := 'Persist Security Info=True;User ID=' + RxSolutionFrm.DatabaseSession.Username
   + ';Initial Catalog='+ RxSolutionFrm.DatabaseSession.DB + ';Data Source='+ RxSolutionFrm.DatabaseSession.Server
   + ';Password='+ RxSolutionFrm.DatabaseSession.Password;


  //GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string): string;
  vPatientActive := cmbPatientActive.Text;   

  //********* 27 August 2013
  //********* If system has Delta9 Patient integration then:
  //********* Search for patient; if found then Add patient to db then open it datagrid
  if (RxSolutionFrm.FUseDelta9Integration) then
     begin

     comObj := TDelta9.Create(vConn);
     //********* Search Patient
     retMessage := comObj.UpdateRxPatientFromD9ByFolderNumber(Trim(RzEdit5.Text));

     if (retMessage.Response.Success) then
       begin
       lblInterfaceResult.Caption := 'Patient file found from Delta 9';
       end
     else
       lblInterfaceResult.Caption := 'No File found from Delta 9'; 


     comObj.Free;
     retMessage.Free;

    end;

    //************ SM 29 July 2014
  //************ Paab Search Function
  if ((RxSolutionFrm.FUsePAABIntegration)) then
     begin
     // RxSolutionFrm.PaabInterface.SearchPatient(edtName.Text, edtSurname.Text, edtMPI.Text, edtID.Text, vConn);
     //vResult := RxSolutionFrm.PaabInterface.SearchPatient(RzEdit3.Text, RzEdit1.Text, RzEdit2.Text, RzEdit4.Text, vConn, RxSolutionFrm.PaabUrl,
     vResult := RxSolutionFrm.PaabInterface.SearchPatient(RzEdit3.Text, RzEdit1.Text, RzEdit2.Text, RzEdit4.Text, vConn, RxSolutionFrm.PaabUrl,
     RxSolutionFrm.Paabusername, RxSolutionFrm.Paabuserpwd, RxSolutionFrm.Paabuserpracnumber);
     lblInterfaceResult.Caption := vResult;
     end;

  with qryPatientList do
    begin
    Close;
    SQL.Clear;
    SQL.Add(GetSearchStringALL(Trim(RzEdit2.Text), Trim(RzEdit1.Text), Trim(RzEdit3.Text), Trim(RzEdit4.Text), Trim(RzEdit5.Text), vPatientActive));
    Open;
    //********** Update search Status Result
    lblstatus.Caption := IntToStr(RecordCount) + ' patient(s) found.';
    end;  

   SetSearchStatusDisplay();
   SetButtonStatus;

end;

procedure TPrescriptionListFrm.SetSearchStatusDisplay();
var
 vRecountCount: integer;
begin

 with qryPatientList do
  begin
  if Active then
   if (RecordCount > 0) then
    begin
    vRecountCount := RecordCount;
    lblstatus.Caption := intToStr(vRecountCount) + ' record(s) found';
    end
   else
    begin
    lblstatus.Caption := '*no record(s) found';
    end;
  end;

end;
procedure TPrescriptionListFrm.SetSearchRxDisplay();
var
 vRecountCount: integer;
begin

 with qryPrescriptionActive do
  begin
  if Active then
   if (RecordCount > 0) then
    begin
    vRecountCount := RecordCount;
    lblRxStatus.Caption := intToStr(vRecountCount) + ' record(s) found';
    end
   else
    begin
    lblRxStatus.Caption := '*no record(s) found for this date range';
    end;
  end;

end;

function TPrescriptionListFrm.WasPatientAtOtherClinics(patientID: string; clinic: string): Boolean;
var
 lastClinic: string;
 lastVisitDate: TDateTime;
 lastRxDate: string;
 vMSG: string;
 lastVisit: Boolean;
begin

 Result := False;
 lastVisit := False;
 //******** SM 18 Dec 2013
 //******** This function returns true if patient has visited clinics in the past
 with qryPatientHopping do
  begin
  Close;
  Parameters.ParamByName('PatientID').Value := patientID;
  Open;

  if (RecordCount > 0) then
   begin
   First;
   lastClinic           := FieldByName('consultingRoom_str').AsString;
   lastVisitDate        := FieldByName('date_dat').AsDateTime;
   lastVisit := True;
   vMSG := 'The patient was last seen at ' + lastClinic + ' on ' + DateToStr(lastVisitDate);
   end;
  Close;
  end;

 if lastVisit then
  begin
  with qryWasMedicationReceived do
   begin
   Close;
   Parameters.ParamByName('@StartDate').Value := lastVisitDate - 1;
   Parameters.ParamByName('@EndDate').Value := lastVisitDate;
   Open;

   if RecordCount > 0 then
     begin
     First;
     vMSG := vMSG + ' and medication was received.';
     Close;
     end;
  end;


 if lastVisit then
  begin
  MessageDlg(vMSG, mtWarning, [mbOk], 0);
  Result := True;
  end
 else
  Result := False;

 end;
end;





end.

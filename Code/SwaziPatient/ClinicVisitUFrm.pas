unit ClinicVisitUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, wwdbdatetimepicker, ExtCtrls, DB,
  dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, RzDBCmbo, RzCmboBx,
  RzButton, RzDBEdit, ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, Menus, ActnList, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TClinicVisitFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit17: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    Panel3: TPanel;
    dbnvgVisit: TDBNavigator;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    tbsClinicalInformation: TTabSheet;
    tbsVisitNotes: TTabSheet;
    grbClinicalInfo: TGroupBox;
    gpVisitDates: TGroupBox;
    Label13: TLabel;
    Label11: TLabel;
    dteScheduled: TwwDBDateTimePicker;
    dteVisitDate: TwwDBDateTimePicker;
    chkTreatmentPrecribed: TDBCheckBox;
    gpPregnancyBox: TGroupBox;
    Label14: TLabel;
    Label2: TLabel;
    Label30: TLabel;
    dbPregnancyChk: TDBCheckBox;
    dteActualDeliveryDate: TwwDBDateTimePicker;
    dteExpectedDeliveryDate: TwwDBDateTimePicker;
    cmbTrimester: TDBComboBox;
    gpTreatmentDetails: TGroupBox;
    GroupBox11: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    grbProphylacticTreatment: TGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    dteCoStartDate: TwwDBDateTimePicker;
    dteCoStopDate: TwwDBDateTimePicker;
    dteFluStartDate: TwwDBDateTimePicker;
    dteFluStopDate: TwwDBDateTimePicker;
    grbRegimenChange: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    RzDBMemo1: TRzDBMemo;
    tbsOIs: TTabSheet;
    dbOINavigator: TDBNavigator;
    dxVisitOIs: TdxDBGrid;
    dxVisitOIsVisitOI_ID: TdxDBGridMaskColumn;
    dxVisitOIsVisit_ID: TdxDBGridColumn;
    dxVisitOIsNote_Str: TdxDBGridMemoColumn;
    dxVisitOIsOI_Description: TdxDBGridPickColumn;
    Label28: TLabel;
    DBComboBox2: TDBComboBox;
    Label27: TLabel;
    dteTreatStopped: TwwDBDateTimePicker;
    Label47: TLabel;
    dteLostToFollow: TwwDBDateTimePicker;
    gpPeadInfo: TGroupBox;
    edtWeanAge: TDBEdit;
    Label32: TLabel;
    cmbFeedingType: TDBRadioGroup;
    Label33: TLabel;
    cmbPProphylaxis: TDBComboBox;
    Label34: TLabel;
    cmbStoppedBy: TDBComboBox;
    tbsTBVisit: TTabSheet;
    Label78: TLabel;
    DBCheckBox2: TDBCheckBox;
    dteIPTStart: TwwDBDateTimePicker;
    Label79: TLabel;
    dteIPTStop: TwwDBDateTimePicker;
    wwDBDateTimePicker9: TwwDBDateTimePicker;
    Label82: TLabel;
    DBComboBox4: TDBComboBox;
    Label81: TLabel;
    DBComboBox6: TDBComboBox;
    btnPost: TButton;
    Label35: TLabel;
    Label12: TLabel;
    dteNextVistDate: TwwDBDateTimePicker;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label37: TLabel;
    Label38: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label39: TLabel;
    Label26: TLabel;
    dteTBStopDate: TwwDBDateTimePicker;
    DBLookupComboBox8: TDBLookupComboBox;
    Label24: TLabel;
    GroupBox2: TGroupBox;
    Label86: TLabel;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    Label41: TLabel;
    DBComboBox10: TDBComboBox;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    Label85: TLabel;
    Label36: TLabel;
    DBComboBox7: TDBComboBox;
    Label87: TLabel;
    wwDBDateTimePicker8: TwwDBDateTimePicker;
    Label42: TLabel;
    DBComboBox9: TDBComboBox;
    GroupBox3: TGroupBox;
    Label74: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label75: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label25: TLabel;
    dteTBStartDate: TwwDBDateTimePicker;
    DBComboBox1: TDBComboBox;
    Label76: TLabel;
    Label77: TLabel;
    DBComboBox3: TDBComboBox;
    Label40: TLabel;
    DBComboBox8: TDBComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    cmbFucntional: TDBComboBox;
    Label29: TLabel;
    Label9: TLabel;
    cmbClinicalStage: TDBComboBox;
    Label80: TLabel;
    cmbTBStatus: TDBComboBox;
    Label31: TLabel;
    dteLNMPDate: TwwDBDateTimePicker;
    DBComboBox11: TDBComboBox;
    Label43: TLabel;
    Label44: TLabel;
    edtExtraPulmonary: TDBEdit;
    DBComboBox12: TDBComboBox;
    Label45: TLabel;
    dteTBContinuationPhase: TwwDBDateTimePicker;
    Label46: TLabel;
    tbsNutritionalPage: TTabSheet;
    dbNutritionalNavigator: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    edtOnBehalf: TDBEdit;
    Label48: TLabel;
    gpTransfer: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    wwDBDateTimePicker10: TwwDBDateTimePicker;
    wwDBDateTimePicker11: TwwDBDateTimePicker;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBComboBox13: TDBComboBox;
    Label53: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    dteINHStopDate: TwwDBDateTimePicker;
    dteINHStartDate: TwwDBDateTimePicker;
    dxDBVisitNotesHisotry: TdxDBGrid;
    dxDBVisitNotesHisotrynotes_mem: TdxDBGridMemoColumn;
    dxDBVisitNotesHisotryvisitType_str: TdxDBGridColumn;
    dxDBVisitNotesHisotryvstFunctionalStatus_str: TdxDBGridColumn;
    dxDBVisitNotesHisotryvstClinicalStage_str: TdxDBGridColumn;
    dxDBVisitNotesHisotryvstRegimenChange_From_str: TdxDBGridColumn;
    PopupMenuVisitNotesHistory: TPopupMenu;
    ActionList1: TActionList;
    atnVisitHistoryColumnDisplay: TAction;
    dxDBVisitNotesHisotryvstVisitDate_dat: TdxDBGridColumn;
    atnVisitHistoryColumnDisplay1: TMenuItem;
    lblVisitsScheduled: TLabel;
    dxNutritionalGridDBTableView1: TcxGridDBTableView;
    dxNutritionalGridLevel1: TcxGridLevel;
    dxNutritionalGrid: TcxGrid;
    Label21: TLabel;
    DBComboBox14: TDBComboBox;
    dxNutritionalGridDBTableView1DBFoodName_str: TcxGridDBColumn;
    dxNutritionalGridDBTableView1DBFoodType_str: TcxGridDBColumn;
    dxNutritionalGridDBTableView1DBFoodWeight_dbl: TcxGridDBColumn;
    dxNutritionalGridDBTableView1DBkitCompleted_bol: TcxGridDBColumn;
    dxNutritionalGridDBTableView1DBSource_str: TcxGridDBColumn;
    dxNutritionalGridDBTableView1DBcompleteDiet_bol: TcxGridDBColumn;
    Button1: TButton;
    DBComboBox5: TDBComboBox;
    Label54: TLabel;
    procedure btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetupDateMaximums;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //Displays; 
    procedure HideTreatmentDetails;
    procedure HideClinicalDetails;

    procedure ShowTreatmentDetails;
    procedure ShowPregnancyInfo;


    //Receptionist, nurse, Dcotor views
    procedure ViewReceptionist;
    procedure ViewNurse;
    procedure ViewDoctor;
    procedure ViewAll;
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

    //Load all OIs
    procedure LoadOIs;
    procedure CheckProphylacticDates;
    procedure dteFluStartDateChange(Sender: TObject);
    procedure dteCoStartDateChange(Sender: TObject);
    procedure dteINHStartDateChange(Sender: TObject);
    procedure dteTBStartDateChange(Sender: TObject);
    procedure dteFluStartDateExit(Sender: TObject);
    procedure dteCoStartDateExit(Sender: TObject);
    procedure dteINHStartDateExit(Sender: TObject);
    procedure dteTBStartDateExit(Sender: TObject);

    procedure CheckPregnancy;
    procedure dbPregnancyChkClick(Sender: TObject);
    procedure CheckPeadiatricVisitInfo;
    procedure cmbFeedingTypeChange(Sender: TObject);
    procedure dteTreatStoppedEnter(Sender: TObject);
    function IsDate(date: String): Boolean;
    procedure dteVisitDateExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBDateTimePicker1Exit(Sender: TObject);
    procedure DBCheckBox2Exit(Sender: TObject);

    procedure CheckIPTDates;
    procedure atnVisitHistoryColumnDisplayExecute(Sender: TObject);
    procedure dteNextVistDateChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClinicVisitFrm: TClinicVisitFrm;

implementation

uses PatientUDm, MainUFrm, TabEnter, DialogGridColumnSelectorUFrm;

{$R *.dfm}

procedure TClinicVisitFrm.HidetreatmentDetails;
begin
//Hide treatment details
 gpTreatmentDetails.Visible     := False;
 cmbFucntional.Enabled          := False;
 cmbClinicalStage.Enabled       := False;
 cmbTBStatus.Enabled            := False;
end;

procedure TClinicVisitFrm.HideClinicalDetails;
begin
//Hide clinical details
// gpTopClinical.Visible := False;
end;

procedure TClinicVisitFrm.ShowTreatmentDetails;
begin
 gpTreatmentDetails.Visible     := True;
 cmbFucntional.Enabled          := True;
 cmbClinicalStage.Enabled       := True;
 cmbTBStatus.Enabled            := True;
end;

procedure TClinicVisitFrm.ShowPregnancyInfo;
begin
 gpPregnancyBox.Visible     := (not PatientDm.IsChild) AND (PatientDm.CanPersonBePregnant);
end;

procedure TClinicVisitFrm.ViewReceptionist;
begin
 HidetreatmentDetails;
 HideClinicalDetails;
 //SET THE HEIGHT OF THE VISIT WINDOW
// ClinicVisitFrm.Height := 225;
 //set visit dates

 //set dates
 dteScheduled.Enabled := False;
 dteVisitDate.Enabled := True;
 dteNextVistDate.Enabled := False;
 //dteNextVistDate.Visible := False;
 chkTreatmentPrecribed.Visible := False;

 dbnvgVisit.VisibleButtons := [nbEdit,nbPost,nbCancel];
 //Hide Tabsheets for OIs & TB
 tbsOIs.TabVisible      := False;
 tbsTBVisit.TabVisible  := False;

end;

procedure TClinicVisitFrm.ViewNurse;
begin
 HideTreatmentDetails;
 ShowPregnancyInfo;
 //SET THE HEIGHT OF THE VISIT WINDOW
// ClinicVisitFrm.Height := 320;

 //set dates
 dteScheduled.Enabled := False;
 dteVisitDate.Enabled := False;

 dteNextVistDate.Visible := True;
 dteNextVistDate.Enabled := True;

 chkTreatmentPrecribed.Visible := True;

 dbnvgVisit.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel];

  //Show Tabsheets for OIs & TB
 tbsOIs.TabVisible      := True;
 tbsTBVisit.TabVisible  := True;

end;

procedure TClinicVisitFrm.ViewDoctor;
begin
// HideTreatmentDetails;
 ShowPregnancyInfo;
// ClinicVisitFrm.Height := 260;

 //set dates
 dteScheduled.Enabled := False;
 dteVisitDate.Enabled := False;

 dteNextVistDate.Visible := True;
 dteNextVistDate.Enabled := True;

 dbnvgVisit.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel];
 //Show Tabsheets for OIs & TB
 tbsOIs.TabVisible      := True;
 tbsTBVisit.TabVisible  := True;
end;

procedure TClinicVisitFrm.ViewAll;
begin
// HideTreatmentDetails;
 ShowPregnancyInfo;

 ShowTreatmentDetails;
// ClinicVisitFrm.Height := 502;

 //set dates
 dteScheduled.Enabled := True;
 dteVisitDate.Enabled := True;

 dteNextVistDate.Visible := True;
 dteNextVistDate.Enabled := True;

 dbnvgVisit.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbEdit,nbPost,nbCancel];

end;


procedure TClinicVisitFrm.SetupDateMaximums;
var
 Date_max, Date_min : Integer;
begin
// Prevents data that is beyond a year from now
Date_max := 365;
Date_min := 365*10;

dteVisitDate.MaxDate    := Date + Date_max;
dteNextVistDate.MaxDate := Date + Date_max;
dteCoStartDate.MaxDate  := Date + Date_max;
dteCoStopDate.MaxDate   := Date + Date_max;
dteFluStartDate.MaxDate := Date + Date_max;
dteFluStopDate.MaxDate  := Date + Date_max;
dteINHStartDate.MaxDate := Date + Date_max;
dteINHStopDate.MaxDate  := Date + Date_max;
dteTBStartDate.MaxDate  := Date + Date_max;
dteTBStopDate.MaxDate   := Date + Date_max;

// Prevents data entry that is 10 years older then now
dteVisitDate.MinDate    := Date - Date_min;
dteNextVistDate.MinDate := Date - Date_min;

end;

procedure TClinicVisitFrm.btnPostClick(Sender: TObject);
begin
if MessageDlg('Post this visit?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin
 if not (PatientDm.TblClinicalVisit.state in [dsEdit, dsInsert]) then
 PatientDm.TblClinicalVisit.Edit;
 PatientDm.TblClinicalVisitcompleted_bol.AsBoolean := True;
 PatientDm.TblClinicalVisit.Post;
 Close;
 end;
end;

procedure TClinicVisitFrm.FormShow(Sender: TObject);
var
 visitPosted : Boolean;
begin
 visitPosted :=  PatientDm.TblClinicalVisitcompleted_bol.AsBoolean;

 grbRegimenChange.Enabled               := not visitPosted;
 grbProphylacticTreatment.Enabled       := not visitPosted;
// grbOpportunisticIInfections.Enabled    := not visitPosted;
 grbClinicalInfo.Enabled                := not visitPosted;
 dbnvgVisit.Enabled                     := not visitPosted;
 SetupDateMaximums;

 //Display views
 if MainFrm.FViewType = 'Nurse' then ViewNurse()
 else if MainFrm.FViewType = 'Receptionist' then ViewReceptionist()
 else if MainFrm.FViewType = 'Doctor' then ViewDoctor()
 else ViewAll();
 //Set form caption
 ClinicVisitFrm.Caption := 'Current System user : ['+ MainFrm.FUser +']'+' '+ MainFrm.FViewType;

 LoadOIs;
 PageControl1.ActivePage := tbsClinicalInformation;

 CheckProphylacticDates();
 CheckPregnancy();

 dteLNMPDate.Enabled := PatientDm.IsPatientFemale;

 gpPregnancyBox.Visible  := PatientDm.CanPersonBePregnant;
 gpPeadInfo.Visible := PatientDm.IsChild;
 CheckPeadiatricVisitInfo();

 dbOINavigator.Enabled   := PatientDm.CanAddSupportTables;
 dxVisitOIs.Enabled     := PatientDm.CanAddSupportTables;

 dbNutritionalNavigator.Enabled := PatientDm.CanAddSupportTables;
 dxNutritionalGrid.Enabled := PatientDm.CanAddSupportTables;


 dteLostToFollow.Enabled := not PatientDm.TblPatient.FieldByName('vstTempPatient_bol').AsBoolean;

 CheckIPTDates();

 lblVisitsScheduled.Caption := '...';
end;

procedure TClinicVisitFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if PatientDm.TblClinicalVisit.State in [dsEdit, dsInsert] then
  PatientDm.TblClinicalVisit.Post;
end;

procedure TClinicVisitFrm.Button2Click(Sender: TObject);
begin
 ViewReceptionist();
end;

procedure TClinicVisitFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Key := NextControl(ClinicVisitFrm, Key); 
end;

procedure TClinicVisitFrm.LoadOIs;
begin
dxVisitOIsOI_Description.Items.Clear;
with PatientDm.tblOIs do
 begin
 First;
 while not EOF do
  begin
  dxVisitOIsOI_Description.Items.Add(fieldByNAme('InfectionName_str').AsString);
  Next;
  end;
 end;
end;

procedure TClinicVisitFrm.CheckProphylacticDates;
begin
//
  if VarIsNull(PatientDm.TblClinicalVisitvstPropo_CoTri_Start_dat.Value) or (PatientDm.TblClinicalVisitvstPropo_CoTri_Start_dat.AsString = '') then
   dteCoStopDate.Enabled := False
  else
   begin
   dteCoStopDate.Enabled := True;
   dteCoStopDate.MinDate := dteCoStartDate.Date;
   end;

  if VarIsNull(PatientDm.TblClinicalVisitvstPropo_Fluconazole_Start_dat.Value) or (PatientDm.TblClinicalVisitvstPropo_Fluconazole_Start_dat.AsString = '') then
   dteFluStopDate.Enabled := False
  else
   begin
   dteFluStopDate.Enabled := True;
   dteFluStopDate.MinDate := dteFluStartDate.Date;
   end;

  if VarIsNull(PatientDm.TblClinicalVisitvstPropo_INH_Start_dat.Value) or (PatientDm.TblClinicalVisitvstPropo_INH_Start_dat.AsString = '') then
   dteINHStopDate.Enabled := False
  else
   begin
   dteINHStopDate.Enabled := True;
   dteINHStopDate.MinDate := dteINHStartDate.Date;
   end;

  if VarIsNull(PatientDm.TblClinicalVisitvstPropo_TBTreatment_Start_dat.Value) or (PatientDm.TblClinicalVisitvstPropo_TBTreatment_Start_dat.AsString = '') then
   dteTBStopDate.Enabled := False
  else
   begin  //depends on which field we use for TB start
   dteTBStopDate.Enabled := True;
   dteTBStopDate.MinDate := dteTBStartDate.Date;
   end;

end;


procedure TClinicVisitFrm.dteFluStartDateChange(Sender: TObject);
begin
 CheckProphylacticDates;
end;

procedure TClinicVisitFrm.dteCoStartDateChange(Sender: TObject);
begin
  CheckProphylacticDates();
end;

procedure TClinicVisitFrm.dteINHStartDateChange(Sender: TObject);
begin
 CheckProphylacticDates();
end;

procedure TClinicVisitFrm.dteTBStartDateChange(Sender: TObject);
begin
 CheckProphylacticDates();
end;

procedure TClinicVisitFrm.dteFluStartDateExit(Sender: TObject);
begin
  CheckProphylacticDates;
end;

procedure TClinicVisitFrm.dteCoStartDateExit(Sender: TObject);
begin
 CheckProphylacticDates;
end;

procedure TClinicVisitFrm.dteINHStartDateExit(Sender: TObject);
begin
  CheckProphylacticDates;
end;

procedure TClinicVisitFrm.dteTBStartDateExit(Sender: TObject);
begin
 CheckProphylacticDates;
end;

procedure TClinicVisitFrm.CheckPregnancy;
begin
 //
  //dteLNMPDate.Enabled       := dbPregnancyChk.Checked;
  dteExpectedDeliveryDate.Enabled := dbPregnancyChk.Checked;
  dteActualDeliveryDate.Enabled   := dbPregnancyChk.Checked;
  cmbTrimester.Enabled            := dbPregnancyChk.Checked;
  cmbPProphylaxis.Enabled         := dbPregnancyChk.Checked;
  //
end;


procedure TClinicVisitFrm.dbPregnancyChkClick(Sender: TObject);
begin
 CheckPregnancy();
end;

procedure TClinicVisitFrm.CheckPeadiatricVisitInfo;
begin
//
 if cmbFeedingType.Value = 'W' then
  begin
  edtWeanAge.Enabled := True;
  end
 else
  begin
  edtWeanAge.Enabled := False;
  edtWeanAge.Clear;
  end;

end;



procedure TClinicVisitFrm.cmbFeedingTypeChange(Sender: TObject);
begin
 CheckPeadiatricVisitInfo();
end;

procedure TClinicVisitFrm.dteTreatStoppedEnter(Sender: TObject);
begin
  if IsDate(DateToStr(dteTreatStopped.DateTime)) then
   dteLostToFollow.ClearDateTime; 
end;

function TClinicVisitFrm.IsDate(date: String): Boolean;
begin
  try
    StrToDateTime(date);
    result := TRUE;
  except
    result := FALSE;
  end;
end;

procedure TClinicVisitFrm.dteVisitDateExit(Sender: TObject);
begin
//only if the actual visit is not empty
 if dteVisitDate.DateTime > (Date()-365*20) then
 dteNextVistDate.MinDate := dteVisitDate.DateTime;
end;

procedure TClinicVisitFrm.PageControl1Change(Sender: TObject);
begin
 //
 dbOINavigator.Enabled := PatientDm.CanAddSupportTables;
 dxVisitOIs.Enabled := PatientDm.CanAddSupportTables;

 dbNutritionalNavigator.Enabled := PatientDm.CanAddSupportTables;
 dxNutritionalGrid.Enabled := PatientDm.CanAddSupportTables;

 //
 if PageControl1.ActivePage = tbsOIs then
  dbnvgVisit.Visible := False
 else
  dbnvgVisit.Visible := True;

end;

procedure TClinicVisitFrm.FormCreate(Sender: TObject);
const
  cbuf = 1;
var
  vDetFormSize  :TRect;
begin
 { vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);
  }
end;

procedure TClinicVisitFrm.wwDBDateTimePicker1Exit(Sender: TObject);
begin
 CheckProphylacticDates;
end;

procedure TClinicVisitFrm.CheckIPTDates;
begin

 dteIPTStart.Enabled := PatientDm.IsPatientOnIPT;
 dteIPTStop.Enabled  := PatientDm.IsPatientOnIPT;

end;

procedure TClinicVisitFrm.DBCheckBox2Exit(Sender: TObject);
begin
 CheckIPTDates;
end;

procedure TClinicVisitFrm.atnVisitHistoryColumnDisplayExecute(
  Sender: TObject);
begin
 MainFrm.DisplayColumns(dxDBVisitNotesHisotry);
end;

procedure TClinicVisitFrm.dteNextVistDateChange(Sender: TObject);
var
 vNumberofPatients: integer;
begin
 vNumberofPatients := PatientDm.NumberofVisitorsOnFutureDate(dteNextVistDate.Date);
 lblVisitsScheduled.Caption := 'Already scheduled visits: ' + IntToStr(vNumberofPatients);

end;

procedure TClinicVisitFrm.Button1Click(Sender: TObject);
var
 PID : string;
begin
 PID := PatientDm.TblPatient.fieldByName('person_ID').AsString;
// MainFrm.RX.Add(PID);
  MainFrm.RX.Add(PID, 'Test');
end;

end.

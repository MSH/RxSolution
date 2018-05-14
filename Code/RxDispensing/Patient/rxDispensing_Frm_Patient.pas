unit rxDispensing_Frm_Patient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, 
  dxExEdtr, RzDlgBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxPageControl,
  dxDBTLCl, dxGrClms, DBCtrls, RzDBNav, RzDBCmbo, RzEdit, RzDBEdit, RzTabs,
  dxEdLib, dxDBELib, RzGroupBar, RzDTP, RzDBDTP, wwdblook, Mask, RzButton,
  RzCommon, RzPanel, ImgList, DBActns, StdActns, ActnList, RzDBLbl,
  RzRadGrp, RzDBRGrp, RzLabel, RzCmboBx, RzRadChk, RzDBChk,
  wwdbdatetimepicker, Grids, DBGrids, TeEngine, Series, TeeProcs, Chart,
  DbChart, ElPopBtn, DB, RzBmpBtn, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Menus, cxGridCardView, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,LocOnFly, StrUtils;

type
  TfrmPatientDetail_ = class(TForm)
    rzdButtons: TRzDialogButtons;
    RzPageControl1: TRzPageControl;
    TbsCd4Weight_Graph: TRzTabSheet;
    TbsContact: TRzTabSheet;
    TbsAllergies: TRzTabSheet;
    TbsAnthropometries: TRzTabSheet;
    tbsPrescription: TRzTabSheet;
    TabSheet10: TRzTabSheet;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    Panel1: TPanel;
    pnlProductDetailColorBackground: TPanel;
    groupBoxDemographics: TRzGroupBox;
    Label12: TLabel;
    Label3: TLabel;
    Label25: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    RzDBIDNumber: TRzDBEdit;
    RzDBFirstName: TRzDBEdit;
    RzDBLastName: TRzDBEdit;
    rzGenderGrp: TRzDBRadioGroup;
    atnList: TActionList;
    atnEdit_Cut: TEditCut;
    atnEdit_Copy: TEditCopy;
    atnEdit_Paste: TEditPaste;
    atnPosition_Print: TAction;
    atnContact_Print: TAction;
    atnQualification_Print: TAction;
    atnComments_Print: TAction;
    imgToolbar: TImageList;
    Panel2: TPanel;
    RzLabel1: TRzLabel;
    RzGroupBox6: TRzGroupBox;
    grdPersonContact: TdxDBGrid;
    grdPersonContactcontactMode_str: TdxDBGridColumn;
    grdPersonContactcontactType_Str: TdxDBGridPickColumn;
    grdPersonContactcontactDetail_Str: TdxDBGridColumn;
    grdPersonContactcontactDescription_Str: TdxDBGridColumn;
    rzContactDetails: TRzGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    lblContact_01: TLabel;
    lblContact_02: TLabel;
    lblContact_03: TLabel;
    lblContact_04: TLabel;
    Label18: TLabel;
    edtContact_Edit01: TRzDBEdit;
    edtContact_Edit03: TRzDBEdit;
    edtContact_Edit04: TRzDBEdit;
    edtContact_Edit02: TRzDBEdit;
    edtContactNote: TRzDBEdit;
    cmbContactMode: TRzDBComboBox;
    cmbContactType: TRzDBComboBox;
    RzToolbar3: TRzToolbar;
    Panel5: TPanel;
    RzLabel3: TRzLabel;
    RzToolbar5: TRzToolbar;
    Panel4: TPanel;
    RzLabel6: TRzLabel;
    Panel8: TPanel;
    RzLabel7: TRzLabel;
    Panel9: TPanel;
    RzLabel8: TRzLabel;
    Panel10: TPanel;
    RzLabel9: TRzLabel;
    RzGroupBox11: TRzGroupBox;
    grdPersonWeight: TdxDBGrid;
    grdPersonWeightpersonWeightDateRecorded_Dat: TdxDBGridDateColumn;
    grdPersonWeightpersonWeight_int: TdxDBGridMaskColumn;
    grdPersonWeightpersonHeight_Int: TdxDBGridMaskColumn;
    RzGroupBox15: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzToolbar4: TRzToolbar;
    RzDBKnownName: TRzDBEdit;
    atnPrescriptionEdit: TAction;
    atnPrescriptionAdd: TAction;
    grdPrescriptionActive: TdxDBGrid;
    grdPrescriptionActiveRxDate_dat: TdxDBGridDateColumn;
    grdPrescriptionActiveprescriptionNumber_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriberName_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriptionStatus_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriptionActive_bol: TdxDBGridCheckColumn;
    grdPrescriptionActivedispensingPosted_bol: TdxDBGridCheckColumn;
    grdPrescriptionActiveprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    Label14: TLabel;
    edtRxNumber: TRzDBEdit;
    DBPatientDOB: TwwDBDateTimePicker;
    atnPrescriptionPrint: TAction;
    Label31: TLabel;
    RzDBPasNumber: TRzDBEdit;
    atnPosition_NewNumber: TAction;
    Button1: TButton;
    RzToolbar6: TRzToolbar;
    Label7: TLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    Label8: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzGroupBox3: TRzGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    rzlLangaugeNarrative: TRzDBLookupComboBox;
    rzlLangaugeWritten: TRzDBLookupComboBox;
    RzGroupBox2: TRzGroupBox;
    Label2: TLabel;
    cmbDepartment: TRzDBLookupComboBox;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    TbsLabResults: TRzTabSheet;
    Panel6: TPanel;
    RzLabel4: TRzLabel;
    RzToolbar7: TRzToolbar;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    TbsViralLoadGraph: TRzTabSheet;
    Panel7: TPanel;
    RzLabel5: TRzLabel;
    DBChart2: TDBChart;
    Series3: TLineSeries;
    atnPersonContactInsert: TDataSetInsert;
    atnpersonContactDelete: TDataSetDelete;
    btnContactAdd: TElSpeedButton;
    btnContactDelete: TElSpeedButton;
    btnContactSave: TElSpeedButton;
    btnContactCancel: TElSpeedButton;
    btnAllergyAdd: TElSpeedButton;
    btnAllergyDelete: TElSpeedButton;
    atnPerosnAllegryInsert: TDataSetInsert;
    atnPersonAllergyDelete: TDataSetDelete;
    atnPersonAllergyPost: TDataSetPost;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    atnPersonAllergyRefresh: TDataSetRefresh;
    atnpersonAllergyCancel: TDataSetCancel;
    atnPersonContactPost: TDataSetPost;
    atnPersonContactCancel: TDataSetCancel;
    btnAnthroAdd: TElSpeedButton;
    atnAnthroDelete: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    atnpersonAnthroInsert: TDataSetInsert;
    atnPersonAnthroPost: TDataSetPost;
    atnPersonAnthroDelete: TDataSetDelete;
    atnPersonAnthroCancel: TDataSetCancel;
    btnRxAdd: TElSpeedButton;
    btnLabsAdd: TElSpeedButton;
    btnLabsDelete: TElSpeedButton;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    RzBmpButton1: TRzBmpButton;
    atnPersonLabResultAdd: TDataSetInsert;
    atnPersonLabResultDelete: TDataSetDelete;
    atnPersonLabResultPost: TDataSetPost;
    RzBmpButton2: TRzBmpButton;
    RzBmpButton3: TRzBmpButton;
    RzBmpButton4: TRzBmpButton;
    RzBmpButton5: TRzBmpButton;
    frcEdit: TRzFrameController;
    cxStyleRepository1: TcxStyleRepository;
    cxLabTestHeader: TcxStyle;
    grdLabResultsDBTableView1: TcxGridDBTableView;
    grdLabResultsLevel1: TcxGridLevel;
    grdLabResults: TcxGrid;
    cxGrid1DBTestCode: TcxGridDBColumn;
    cxGrid1DBTestName: TcxGridDBColumn;
    cxGrid1DBTestResult: TcxGridDBColumn;
    cxGrid1DBTestDate: TcxGridDBColumn;
    cxGrid1DBTestPlace: TcxGridDBColumn;
    cxBody: TcxStyle;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    cxsrRegiminDetail: TcxStyleRepository;
    cxs01_Content: TcxStyle;
    cxs01_ContentEven: TcxStyle;
    cxs01_ContentOdd: TcxStyle;
    cxs01_Footer: TcxStyle;
    cxs01_Group: TcxStyle;
    cxs01_GroupByBox: TcxStyle;
    cxs01_Header: TcxStyle;
    cxs01_Inactive: TcxStyle;
    cxs01_Indicator: TcxStyle;
    cxs01_Preview: TcxStyle;
    cxs01_Selection: TcxStyle;
    cxsLbl_Background: TcxStyle;
    cxsLbl_CaptionRow: TcxStyle;
    cxsLbl_CardBorder: TcxStyle;
    cxsLbl_Content: TcxStyle;
    cxsLbl_ContentEven: TcxStyle;
    cxsLbl_ContentOdd: TcxStyle;
    cxsLbl_Inactive: TcxStyle;
    cxsLbl_IncSearch: TcxStyle;
    cxsLbl_RowCaption: TcxStyle;
    cxsLbl_Selection: TcxStyle;
    gtvsStandard: TcxGridTableViewStyleSheet;
    gcvsLabel: TcxGridCardViewStyleSheet;
    chkPersonActive: TRzDBCheckBox;
    RzDBCheckBox3: TRzDBCheckBox;
    Label33: TLabel;
    PopupMenu2: TPopupMenu;
    PrintPatientLabel1: TMenuItem;
    Label34: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label35: TLabel;
    Label36: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    grdPersonWeightpersonBMI_dbl: TdxDBGridColumn;
    grdPersonWeightpersonBSA_dbl: TdxDBGridColumn;
    DBpatientDeceasedDate: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    grdPersonAllergies: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBAllergyDateEntered_Dat: TcxGridDBColumn;
    cxGridDBAllergyDescription_Str: TcxGridDBColumn;
    cxGridDBAllergySource_Str: TcxGridDBColumn;
    cxGridLevel1Allergies: TcxGridLevel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label9: TLabel;
    tbsADRs: TRzTabSheet;
    RzToolbar1: TRzToolbar;
    btnADRAdd: TElSpeedButton;
    ElSpeedButton17: TElSpeedButton;
    grdPersonWeightpersonBP_str: TdxDBGridMaskColumn;
    dxDBADRs: TdxDBGrid;
    dxDBADRsAdverseReation_bol: TdxDBGridCheckColumn;
    dxDBADRsProductReaction_bol: TdxDBGridCheckColumn;
    dxDBADRsADRDate: TdxDBGridDateColumn;
    dxDBADRsDateOnSetReaction: TdxDBGridDateColumn;
    dxDBADRsDescription_str: TdxDBGridMemoColumn;
    dxDBADRsPosted_bol: TdxDBGridCheckColumn;
    dxDBADRsPosted_dat: TdxDBGridDateColumn;
    tbsAdherence: TRzTabSheet;
    RzToolbar2: TRzToolbar;
    btnAdherenceAdd: TElSpeedButton;
    ElSpeedButton18: TElSpeedButton;
    dxDBAdherence: TdxDBGrid;
    dxDBAdherenceObservation_dat: TdxDBGridDateColumn;
    dxDBAdherenceCaptured_dat: TdxDBGridDateColumn;
    dxDBAdherenceLevelOfAdherence_str: TdxDBGridColumn;
    dxDBAdherenceCapturedBy_str: TdxDBGridColumn;
    PopupMenuADR: TPopupMenu;
    atnAddADR1: TMenuItem;
    atnEditADR1: TMenuItem;
    PrintADRReport1: TMenuItem;
    RzBmpButton6: TRzBmpButton;
    RzBmpButton7: TRzBmpButton;
    dxDBAdherencePosted_dat: TdxDBGridColumn;
    dxDBAdherencePosted_bol: TdxDBGridCheckColumn;
    N3: TMenuItem;
    MenuAdherencePopUp: TPopupMenu;
    Copy1: TMenuItem;
    grdPrescriptionActiveRxCancelReasonsAfterPosting_str: TdxDBGridColumn;
    lblBrowseOnly: TLabel;
    CopyADR1: TMenuItem;
    grdPersonWeightpersonPulse_int: TdxDBGridColumn;
    grdPersonWeightpersonRespiratoryRate_str: TdxDBGridMaskColumn;
    grdPersonWeightpersonTemperature_dbl: TdxDBGridColumn;
    grdPersonWeightpersonMUAC_dbl: TdxDBGridColumn;
    grdPersonWeightpersonWeightforHeight_str: TdxDBGridColumn;
    ElSpeedButton19: TElSpeedButton;
    grdPersonWeightpersonBloodGlucose_dbl: TdxDBGridColumn;
    grdPersonWeightpersonUrineTest_str: TdxDBGridColumn;
    grdPersonWeightpersonHaemoglobin_dbl: TdxDBGridColumn;
    RzDBCheckBox1: TRzDBCheckBox;
    tbsVisits: TRzTabSheet;
    Panel3: TPanel;
    RzLabel2: TRzLabel;
    RzToolbar8: TRzToolbar;
    btnAtnPatientVisitsAdd: TElSpeedButton;
    RzGroupBox1: TRzGroupBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Date_dat: TdxDBGridDateColumn;
    dxDBGrid1ConsultingRoom_str: TdxDBGridColumn;
    dxDBGrid1CompletedBy_str: TdxDBGridColumn;
    atnPersonLabResultCancel: TDataSetCancel;
    PopupMenu3: TPopupMenu;
    EditPatientBarcodelabel1: TMenuItem;
    atnCommentsInsert: TDataSetInsert;
    atnCommentsDelete: TDataSetDelete;
    atnCommentsPost: TDataSetPost;
    atnCommentsCancel: TDataSetCancel;
    tbsCommentsNotes: TRzTabSheet;
    Panel11: TPanel;
    RzLabel10: TRzLabel;
    RzToolbar9: TRzToolbar;
    btnAddComments: TElSpeedButton;
    RzGroupBox4: TRzGroupBox;
    dxDBGrid2: TdxDBGrid;
    btnCommentsPost: TElSpeedButton;
    dxDBGrid2personCommentDate_Dat: TdxDBGridDateColumn;
    dxDBGrid2personCommentDescription_Str: TdxDBGridMemoColumn;
    btnCommentsCancel: TElSpeedButton;
    Button2: TButton;
    atnBioMetricEnrol: TAction;
    atnVerifyBiometric: TAction;
    Button3: TButton;
    EditPatientLabel1: TMenuItem;
    PrintbarcodeLabel1: TMenuItem;
    PrintPatientLabel2: TMenuItem;
    N1: TMenuItem;
    PrintbarcodeLabel2: TMenuItem;
    img_Verified: TImage;
    img_NotVerified: TImage;
    dxDBGrid1Clinic_str: TdxDBGridColumn;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    C: TDBComboBox;
    Label17: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    grdPrescriptionActiveDemanderName_Str: TdxDBGridColumn;
    tbsMedicalAid: TRzTabSheet;
    RzToolbar10: TRzToolbar;
    btnMedicalAidAdd: TElSpeedButton;
    atnMedicalAidInsert: TDataSetInsert;
    atnMedicalAidPost: TDataSetPost;
    ElSpeedButton2: TElSpeedButton;
    dxDBMedicalAid: TdxDBGrid;
    dxDBMedicalAidpersonMedicalAidName_Str: TdxDBGridColumn;
    dxDBMedicalAidpersonMedicalAidNumber_Str: TdxDBGridColumn;
    dxDBMedicalAidpersonMedicalAidDateRecorded_Dat: TdxDBGridDateColumn;
    dxDBMedicalAidpersonMedicalAidActive_Bol: TdxDBGridCheckColumn;
    atnMedicalAidCancel: TDataSetCancel;
    EditHistory1: TMenuItem;
    RzBmpButton8: TRzBmpButton;
    atnPrescriptionCopy: TAction;
    CopyRx1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cmbContactModeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdPersonContactClick(Sender: TObject);
    procedure grdPersonContactKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure atnPrescriptionAddExecute
    (Sender: TObject);
    procedure atnPrescriptionPrintExecute(Sender: TObject);
    procedure atnPosition_NewNumberExecute(Sender: TObject);
    procedure RzDBIDNumberExit(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure atnPersonAllergyDeleteExecute(Sender: TObject);
    procedure atnPersonAllergyPostExecute(Sender: TObject);
    procedure atnPersonAllergyRefreshExecute(Sender: TObject);
    procedure atnpersonAllergyCancelExecute(Sender: TObject);
    procedure atnPerosnAllegryInsertExecute(Sender: TObject);
    procedure atnPersonContactInsertExecute(Sender: TObject);
    procedure atnpersonContactDeleteExecute(Sender: TObject);
    procedure atnPersonContactPostExecute(Sender: TObject);
    procedure atnPersonContactCancelExecute(Sender: TObject);
    procedure atnpersonAnthroInsertExecute(Sender: TObject);
    procedure atnPersonAnthroPostExecute(Sender: TObject);
    procedure atnPersonAnthroDeleteExecute(Sender: TObject);
    procedure atnPersonAnthroCancelExecute(Sender: TObject);
    procedure atnPersonLabResultAddExecute(Sender: TObject);
    procedure atnPersonLabResultDeleteExecute(Sender: TObject);
    procedure atnPersonLabResultPostExecute(Sender: TObject);
    procedure atnPersonLabResultCancelExecute(Sender: TObject);
    procedure TbsCd4Weight_GraphClick(Sender: TObject);
    procedure RzPageControl1Click(Sender: TObject);
    procedure atnPrescriptionEditExecute(Sender: TObject);
    procedure edtRxNumberExit(Sender: TObject);
    procedure RzDBPasNumberExit(Sender: TObject);
    procedure RzDBLastNameChange(Sender: TObject);
    procedure CheckNames;
    procedure RzDBFirstNameChange(Sender: TObject);
    procedure RzDBKnownNameChange(Sender: TObject);
    procedure edtRxNumberChange(Sender: TObject);
    procedure ActionSettings;
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure rzGenderGrpChange(Sender: TObject);
    procedure rzGenderGrpExit(Sender: TObject);
    procedure DBPatientDOBChange(Sender: TObject);
    procedure dxDBADRsDblClick(Sender: TObject);
    procedure dxDBAdherenceDblClick(Sender: TObject);
    procedure ElSpeedButton19Click(Sender: TObject);
    procedure atnBioMetricEnrolExecute(Sender: TObject);
    procedure atnVerifyBiometricExecute(Sender: TObject);
    procedure atnPrescriptionCopyExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
   
  private
    atnRxEnabled : Boolean;
    atnEnabled, atnRxCanPrescribe, atnRxCanDispense, atnRxBrowse, atnBrowse, atnCanEditLabel : Boolean;
    atnAddVisits : Boolean;
    patientActive: Boolean;
    userWarnedAboutID: Boolean;
    procedure SetHeaderPanel;
    { Private declarations }
  public
    procedure FillContactTypeDropDown(inputType : string);
    procedure SetContactDisplay(const pContactMode : string);
    { Public declarations }
  end;

var
  frmPatientDetail_: TfrmPatientDetail_;

implementation

uses rxDispensing_Dm_Patient, SystemConstants, {RxSolutionUFrm,}
  RxSolutionSecurityClass, ADRDetailUFRM, PatientRxUFrm,
  AdherencePatientRecordUFrm, RxSolutionUFrm, DialogGridColumnSelectorUFrm,
  patientNotesUFrm, MainUDM;


procedure TfrmPatientDetail_.SetHeaderPanel;
begin

  frmPatientDetail_.Caption := AREA_PATIENT_DESC + ' - ' + dmPatient.PatientName;
  pnlToolbar_Header_Display.Caption := dmPatient.PatientName + ' - ' + dmPatient.PatientNumber;

//  ActionSettings;

end;

{$R *.dfm}

procedure TfrmPatientDetail_.ActionSettings; //SM 15 Jan 08
var
 atnEnabled, atnBrowse, atnAddVisits, atnPatientLabels : Boolean;
begin

{$ifdef not RxPrescription_DLL}
{$endif}
 with RxSolutionFrm.Security do
  begin
  atnEnabled := GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) > USER_BROWSER;
  atnRxEnabled := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) > USER_BROWSER) and ((GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) > USER_BROWSER));
  atnBrowse := GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) = USER_BROWSER;

  atnPatientLabels := GetUserAccessLevel(MODULE_LABELCONFIGURATION) > USER_BROWSER;
  end;

 atnPrescriptionAdd.Enabled     := atnRxEnabled;
 atnPrescriptionEdit.Enabled    := atnRxEnabled;
 atnPosition_NewNumber.Enabled  := atnEnabled;
 atnPersonContactInsert.Enabled := atnEnabled;
 atnpersonContactDelete.Enabled := atnEnabled;
 atnPerosnAllegryInsert.Enabled := atnEnabled;
 atnPersonAllergyDelete.Enabled := atnEnabled;
 atnpersonAnthroInsert.Enabled  := atnEnabled;
 atnPersonAnthroDelete.Enabled  := atnEnabled;
 atnPersonLabResultAdd.Enabled  := atnEnabled;
 atnPersonLabResultDelete.Enabled := atnEnabled;
 dmPatient.atnAddTodaysVisit.Enabled := atnAddVisits;
// dmPatient.atnEditPatientLabel.Visible := atnPatientLabels;
// dmPatient.atnEditBarcodeLabel.Visible := atnPatientLabels;
 //Enable and disable editing on patient Demographics

 //groupBoxDemographics.Enabled := atnEnabled;
 //****** 09 Aprl 2014 Patient Demographics
 RzDBLastName.Enabled := atnEnabled;
 RzDBFirstName.Enabled := atnEnabled;
 RzDBKnownName.Enabled := atnEnabled;
 rzGenderGrp.Enabled := atnEnabled;
 RzDBLookupComboBox2.Enabled := atnEnabled;
 RzDBComboBox1.Enabled := atnEnabled;
 RzDBLookupComboBox1.Enabled := atnEnabled;
 cmbDepartment.Enabled := atnEnabled;
 RzDBIDNumber.Enabled := atnEnabled;
 RzDBPasNumber.Enabled := atnEnabled;
 edtRxNumber.Enabled := atnEnabled;
 DBPatientDOB.Enabled := atnEnabled;
 RzDBDateTimeEdit1.Enabled := atnEnabled;
 DBpatientDeceasedDate.Enabled := atnEnabled;
 wwDBDateTimePicker4.Enabled := atnEnabled;
 wwDBDateTimePicker3.Enabled := atnEnabled;
 RzDBEdit8.Enabled := atnEnabled;
 RzDBEdit9.Enabled := atnEnabled;
 rzlLangaugeNarrative.Enabled := atnEnabled;
 rzlLangaugeWritten.Enabled := atnEnabled;
 chkPersonActive.Enabled := atnEnabled;
 RzDBCheckBox3.Enabled := atnEnabled;
 RzDBCheckBox1.Enabled := atnEnabled;
 //****** End of Patient Demographics

 //****** Medical Aid
 atnMedicalAidInsert.Enabled := atnEnabled;
 dxDBMedicalAid.Enabled := atnEnabled;
 //****** End of Medical Aid 
end;


procedure TfrmPatientDetail_.FormShow(Sender: TObject);
var
 UserID: Double;
 FIsPrescriber, FIsDispenser: Boolean;
 FCheckPinBeforePost: Boolean;
begin

 //Resize the form
 with Sender do
  begin
  Height := Screen.Height - (rzdButtons.Height+10);
  end;

 //If surname is blank then focus on surname edit field
 //This is assuming that if its blank then its a new record.
 if (RzDBLastName.Text = '') then
  RzDBLastName.SetFocus;
 //ActionSettings;
  SetHeaderPanel;
 //Set MaxDate for DOB
  DBPatientDOB.MaxDate := Date();
  DBpatientDeceasedDate.MaxDate := Date();
 //CheckNames;
  dmPatient.LoadADRs;

 with dmPatient.qryPersonDetail do
   begin
   patientActive := FieldByName('personActive_bol').AsBoolean;
   end;

 //******* SM 20 Mar 2014
 FCheckPinBeforePost := MainDm.GetPinBeforePost;

 with RxSolutionFrm.Security.User do
   UserID := UserNumID.Value;

 with RxSolutionFrm.Security do
  begin
  atnEnabled := GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) > USER_BROWSER;
  atnRxCanPrescribe := GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) > USER_BROWSER;
  atnRxCanDispense := GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) > USER_BROWSER;
  atnRxBrowse := GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) = USER_BROWSER;
  atnBrowse := GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) = USER_BROWSER;
  atnCanEditLabel := GetUserAccessLevel(MODULE_LABELCONFIGURATION) > USER_BROWSER;
  atnAddVisits := GetUserAccessLevel(MODULE_PATIENT_VISITS) > USER_BROWSER;

  end;

 //******* SM 17 Mar 2014
 FIsPrescriber := (MainDm.GetUserPrescriberID(UserID) <> '');
 FIsDispenser  := (MainDm.GetUserDispenserID(UserID) <> '');

 atnPrescriptionAdd.Enabled     := (atnRxCanPrescribe and atnRxCanDispense) and atnEnabled and patientActive;
 atnPrescriptionEdit.Enabled    := ((atnRxCanPrescribe and atnRxCanDispense) or atnRxBrowse);

 //****** SM IS user dispenser or prescriber only
 if FCheckPinBeforePost then
   begin
   atnPrescriptionAdd.Enabled := (not FIsDispenser) or (FIsPrescriber);
   end;

 //Enable and disable editing on patient Demographics
 //groupBoxDemographics.Enabled := atnEnabled;
 //****** 09 Aprl 2014 Patient Demographics
 RzDBLastName.Enabled := atnEnabled;
 RzDBFirstName.Enabled := atnEnabled;
 RzDBKnownName.Enabled := atnEnabled;
 rzGenderGrp.Enabled := atnEnabled;
 RzDBLookupComboBox2.Enabled := atnEnabled;
 RzDBComboBox1.Enabled := atnEnabled;
 RzDBLookupComboBox1.Enabled := atnEnabled;
 cmbDepartment.Enabled := atnEnabled;
 RzDBIDNumber.Enabled := atnEnabled;
 RzDBPasNumber.Enabled := atnEnabled;
 edtRxNumber.Enabled := atnEnabled;
 DBPatientDOB.Enabled := atnEnabled;
 RzDBDateTimeEdit1.Enabled := atnEnabled;
 DBpatientDeceasedDate.Enabled := atnEnabled;
 wwDBDateTimePicker4.Enabled := atnEnabled;
 wwDBDateTimePicker3.Enabled := atnEnabled;
 RzDBEdit8.Enabled := atnEnabled;
 RzDBEdit9.Enabled := atnEnabled;
 rzlLangaugeNarrative.Enabled := atnEnabled;
 rzlLangaugeWritten.Enabled := atnEnabled;
 chkPersonActive.Enabled := atnEnabled;
 RzDBCheckBox3.Enabled := atnEnabled;
 RzDBCheckBox1.Enabled := atnEnabled;

 dmPatient.atnEditPatientLabel.Visible := atnCanEditLabel;
 dmPatient.atnEditBarcodeLabel.Visible := atnCanEditLabel;

 //****** End of Patient Demographics
 lblBrowseOnly.Visible := atnBrowse;   

 //********** SM 31 Jan 2013
 if (not atnEnabled) or (not patientActive) then
  begin
  //Contact Details
  rzContactDetails.Enabled := False;
  //Contact Buttons
  btnContactAdd.Action := nil;
  btnContactAdd.Enabled := False;
  btnContactDelete.Action := nil;
  btnContactDelete.Enabled := False;
  //Allergy Buttons
  btnAllergyAdd.Action := nil;
  btnAllergyAdd.Enabled := False;
  btnAllergyDelete.Action := nil;
  btnAllergyDelete.Enabled := False;
  //Allergy Grid
  grdPersonAllergies.Enabled := False;
  //Lab Grid
  grdLabResults.Enabled := False;
  //Lab Buttons
  btnLabsAdd.Action := nil;
  btnLabsAdd.Enabled := False;
  btnLabsDelete.Action := nil;
  btnLabsDelete.Enabled := False;
  //Anthro Grid
  grdPersonWeight.Enabled := False;
  //Anthro Buttons
  btnAnthroAdd.Action := nil;
  btnAnthroAdd.Enabled := False;
  //ADR
  btnADRAdd.Action := nil;
  btnADRAdd.Enabled := False;
  //Adherence
  btnAdherenceAdd.Action := nil;
  btnAdherenceAdd.Enabled := False;
  //Comments/Notes
  //btnAddComments.Action := nil;
  //btnAddComments.Enabled:= False;
  //Visits
  btnAtnPatientVisitsAdd.Action := nil;
  btnAtnPatientVisitsAdd.Enabled := False;
  //Medical aid
  btnMedicalAidAdd.Action := nil;
  btnMedicalAidAdd.Enabled := False;

  //Patient Name and Details De-activated
//  groupBoxDemographics.Enabled := False;
  RzDBLastName.Enabled := False;
  RzDBFirstName.Enabled := False;
  RzDBKnownName.Enabled := False;
  rzGenderGrp.Enabled := False;
  RzDBLookupComboBox2.Enabled := False;
  RzDBComboBox1.Enabled := False;
  RzDBLookupComboBox1.Enabled := False;
  cmbDepartment.Enabled := False;
  RzDBIDNumber.Enabled := False;
  RzDBPasNumber.Enabled := False;
  edtRxNumber.Enabled := False;
  DBPatientDOB.Enabled := False;
  RzDBDateTimeEdit1.Enabled := False;
  DBpatientDeceasedDate.Enabled := False;
  wwDBDateTimePicker4.Enabled := False;
  wwDBDateTimePicker3.Enabled := False;
  RzDBEdit8.Enabled := False;
  RzDBEdit9.Enabled := False;
  rzlLangaugeNarrative.Enabled := False;
  rzlLangaugeWritten.Enabled := False;
//  chkPersonActive.Enabled := False;
  RzDBCheckBox3.Enabled := False;
  RzDBCheckBox1.Enabled := False;
  end;

 if (not atnAddVisits) then
  begin
  btnAtnPatientVisitsAdd.Action := nil;
  btnAtnPatientVisitsAdd.Enabled := False;
  end;

 //******** Check if Biometric system is available
 with RxSolutionFrm do
  begin
  atnBioMetricEnrol.Visible := FHaveBiometric AND atnEnabled;
  atnVerifyBiometric.Visible := (FHaveBiometric AND dmPatient.IsEnrolledonBiometric);
  end;

 dmPatient.patientBioEnrollemt := False;

 if (MainDm.GetPinBeforePost) then
  if (edtRxNumber.Text <> '') AND (edtRxNumber.Text <> RzDBPasNumber.Text) then
   begin
   atnPosition_NewNumber.Enabled := False;
   end;

 if MainDm.GetPinBeforePost then
  edtRxNumber.Enabled := False;   

end;

procedure TfrmPatientDetail_.SetContactDisplay(const pContactMode : string);
begin

  edtContact_Edit01.Visible   := False;
  lblContact_01.Visible       := False;
  edtContact_Edit02.Visible   := False;
  lblContact_02.Visible       := False;
  edtContact_Edit03.Visible   := False;
  lblContact_03.Visible       := False;
  edtContact_Edit04.Visible   := False;
  lblContact_04.Visible       := False;  

if pContactMode = 'Cell Phone' then
  begin
  lblContact_01.Caption       := 'Cellphone #:';
  edtContact_Edit01.Visible   := True;
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Phone' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'LandLine #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Fax' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Fax #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Pager' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Pager #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'e-Mail' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'eMail Address:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Address' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Street:';
  edtContact_Edit02.Visible   := True;
  lblContact_02.Caption       := 'Suburb:';
  edtContact_Edit03.Visible   := True;
  lblContact_03.Caption       := 'City:';
  edtContact_Edit04.Visible   := True;
  lblContact_04.Caption       := 'Code:';
  lblContact_01.Visible       := True;
  lblContact_02.Visible       := True;
  lblContact_03.Visible       := True;
  lblContact_04.Visible       := True;
  end;

 if pContactMode = 'TB Number' then       //SM
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Number';
  lblContact_01.Visible       := True;
  end;

 FillContactTypeDropDown(pContactMode);

end;

procedure TfrmPatientDetail_.cmbContactModeChange(Sender: TObject);
begin
  SetContactDisplay((Sender as TRzDBComboBox).Text);
end;

procedure TfrmPatientDetail_.FillContactTypeDropDown(inputType : string);
begin

  cmbContactType.Items.Clear;
  if  (inputType = 'Phone') or (inputType = 'Fax') or (inputType = 'Pager') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Home');
    cmbContactType.Items.Add('Next of Kin');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'e-Mail') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Personal');
    cmbContactType.Items.Add('Next of Kin');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'Cell Phone') then
    begin
    cmbContactType.Items.Add('Personal');
    cmbContactType.Items.Add('Next of Kin');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'Address') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Home');
    cmbContactType.Items.Add('Physical');
    cmbContactType.Items.Add('Postal');
    cmbContactType.Items.Add('Delivery');
    cmbContactType.Items.Add('Payment');
    cmbContactType.Items.Add('Next of Kin');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'TB Number') then         //SM
    begin
    cmbContactType.Items.Add('TB Number');
    end;

end;

procedure TfrmPatientDetail_.FormCreate(Sender: TObject);
begin
  SetContactDisplay(cmbContactMode.Text);
  {$ifdef RxPrescription_DLL}
  rzdButtons.Visible := False;
  rzdButtons.Enabled := False;
  tbsPrescription.TabVisible := False;
  {$endif}
end;

procedure TfrmPatientDetail_.grdPersonContactClick(Sender: TObject);
begin
  SetContactDisplay(cmbContactMode.Text);
end;

procedure TfrmPatientDetail_.grdPersonContactKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  SetContactDisplay(cmbContactMode.Text);
end;

procedure TfrmPatientDetail_.atnPrescriptionAddExecute(Sender: TObject);
begin
 if not dmPatient.qryPersonDetail.FieldByName('personActive_bol').AsBoolean then
  begin
  if MessageDlg('Patient is in-active.  Continue anyway?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin

   dmPatient.PrescriptionAdd;
   SetHeaderPanel;
   end;
  end
 else
  begin

  dmPatient.PrescriptionAdd;
  SetHeaderPanel;
  end;
end;

procedure TfrmPatientDetail_.atnPrescriptionPrintExecute(Sender: TObject);
begin
  dmPatient.PrescriptionPrint;
end;

procedure TfrmPatientDetail_.atnPosition_NewNumberExecute(Sender: TObject);
begin
  dmPatient.SetNewNumber;
end;

procedure TfrmPatientDetail_.RzDBIDNumberExit(Sender: TObject);
var
firstsix, year_str, month_str, day_str, DOB_str : string;
month_int, year_int, day_int : integer;
myYear, myMonth, myDay : Word;
vCurrentYear, vDOBYear : integer;
currentYear_int: integer;
Ok : Boolean;
similarPatient, errMsg: string;
begin

 userWarnedAboutID := False;
 DecodeDate(Date(), myYear, myMonth, myDay);

 //MC - 20/04/2012 - Check if ID number exist
 if (RzDBIDNumber.Text <> '') then
   begin
   dmPatient.patientDuplicateID.Close;
   dmPatient.patientDuplicateID.Prepared := False;
   dmPatient.patientDuplicateID.Parameters.ParamByName('personIDNo').Value := RzDBIDNumber.Text ;
   dmPatient.patientDuplicateID.Parameters.ParamByName('personID').Value := dmPatient.qryPersonDetailperson_ID.Value;
   dmPatient.patientDuplicateID.Prepared := True;
   dmPatient.patientDuplicateID.Open;

   if dmPatient.patientDuplicateID.RecordCount > 0 then
    begin
    dmPatient.patientDuplicateID.First;
    similarPatient := dmPatient.patientDuplicateID.FieldByName('PatientName').AsString;
    errMsg := 'Duplicate ID number:'+#13+#13+ similarPatient + ' has the same ID number';
    MessageDlg(errMsg, mtWarning, [mbOk], 0);
    userWarnedAboutID := True;
    Abort;
    end;
   dmPatient.patientDuplicateID.Close;
   
   end;


 //SM Code for ID number
 //If valid number then carry on
 if (Length(RzDBIDNumber.Text) = 13) then //check length and if it is a valid number.
  begin
  Ok := True;
  firstsix := copy(RzDBIDNumber.Text, 1, 6);
  year_str := copy(firstsix, 1, 2);
  month_str := copy(firstsix, 3, 2);
  day_str := copy(firstsix, 5, 2);
  try
   month_int := StrToInt(month_str);
   year_int := StrToInt(year_str);
   day_int := StrToInt(day_str);
  except
   Ok := False;
  end;                             


 if Ok then
  begin      
  vCurrentYear := myYear - 2000;
  vDOBYear     := StrToInt(year_str);

  if Length(year_str) < 2 then
   Ok := False;
  if (Length(month_str) < 2) or (month_int>12) or (month_int=0) then
   Ok := False;
  if (Length(day_str) < 2) or (day_int>31) then
   Ok := False;
  end;
  DOB_str := day_str+'/'+month_str+'/'+year_str;
  if Ok then
   begin
   if not (dmPatient.dsqryPersonDetail.DataSet.State in [dsEdit, dsInsert]) then dmPatient.dsqryPersonDetail.DataSet.Edit;
   //check that the date is valid...
   if (vCurrentYear < vDOBYear) then
    dmPatient.dsqryPersonDetail.DataSet.fieldByName('personDOB_Dat').AsDateTime := EncodeDate(year_int+1900, month_int, day_int)
   else
    dmPatient.dsqryPersonDetail.DataSet.fieldByName('personDOB_Dat').AsDateTime := EncodeDate(year_int+2000, month_int, day_int);
   end;
 end;

 
end;


procedure TfrmPatientDetail_.RzToolButton5Click(Sender: TObject);
begin
  dmPatient.LabResultAdd;
end;

procedure TfrmPatientDetail_.RzToolButton10Click(Sender: TObject);
begin
  dmPatient.LabResultDelete;
end;

procedure TfrmPatientDetail_.RzToolButton3Click(Sender: TObject);
begin
  dmPatient.LabResultRefresh;
end;

procedure TfrmPatientDetail_.atnPersonAllergyDeleteExecute(Sender: TObject);
begin
if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
 if dmPatient.qryPersonAllergies.RecordCount > 0 then
  dmPatient.qryPersonAllergies.Delete;
end;

procedure TfrmPatientDetail_.atnPersonAllergyPostExecute(Sender: TObject);
begin
if dmPatient.qryPersonAllergies.State in [dsedit, dsinsert] then
 dmPatient.qryPersonAllergies.Post;
end;

procedure TfrmPatientDetail_.atnPersonAllergyRefreshExecute(
  Sender: TObject);
begin
dmPatient.qryPersonAllergies.Refresh;
end;

procedure TfrmPatientDetail_.atnpersonAllergyCancelExecute(Sender: TObject);
begin
if dmPatient.qryPersonAllergies.State in [dsedit, dsinsert] then
 dmPatient.qryPersonAllergies.Cancel;
end;

procedure TfrmPatientDetail_.atnPerosnAllegryInsertExecute(
  Sender: TObject);
Begin
 dmPatient.qryPersonAllergies.Append;
end;

procedure TfrmPatientDetail_.atnPersonContactInsertExecute(
  Sender: TObject);
begin
dmPatient.qryPersonContact.Append;
end;

procedure TfrmPatientDetail_.atnpersonContactDeleteExecute(
  Sender: TObject);
Begin
if dmPatient.qryPersonContact.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
  dmPatient.qryPersonContact.Delete;
end;

procedure TfrmPatientDetail_.atnPersonContactPostExecute(Sender: TObject);
begin
if dmPatient.qryPersonContact.State in [dsEdit, dsInsert] then
 dmPatient.qryPersonContact.Post;
end;

procedure TfrmPatientDetail_.atnPersonContactCancelExecute(
  Sender: TObject);
begin
if dmPatient.qryPersonContact.State in [dsEdit, dsInsert] then
 dmPatient.qryPersonContact.Cancel;
end;

procedure TfrmPatientDetail_.atnpersonAnthroInsertExecute(Sender: TObject);
begin
dmPatient.qryPersonIdealWeight.Append;
end;

procedure TfrmPatientDetail_.atnPersonAnthroPostExecute(Sender: TObject);
begin
if dmPatient.qryPersonIdealWeight.State in [dsEdit, dsInsert] then
 dmPatient.qryPersonIdealWeight.Post;
end;

procedure TfrmPatientDetail_.atnPersonAnthroDeleteExecute(Sender: TObject);
begin
if dmPatient.qryPersonIdealWeight.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
  dmPatient.qryPersonIdealWeight.Delete;
end;

procedure TfrmPatientDetail_.atnPersonAnthroCancelExecute(Sender: TObject);
begin
if dmPatient.qryPersonIdealWeight.State in [dsEdit, dsInsert] then
 dmPatient.qryPersonIdealWeight.Cancel;
end;

procedure TfrmPatientDetail_.atnPersonLabResultAddExecute(Sender: TObject);
begin
dmPatient.qryLaboratoryResults.Append;
end;

procedure TfrmPatientDetail_.atnPersonLabResultDeleteExecute(
  Sender: TObject);
begin
if dmPatient.qryLaboratoryResults.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
  dmPatient.qryLaboratoryResults.Delete;
end;

procedure TfrmPatientDetail_.atnPersonLabResultPostExecute(
  Sender: TObject);
begin
 if dmPatient.qryLaboratoryResults.State in [dsEdit, dsInsert] then
  dmPatient.qryLaboratoryResults.Post;
end;

procedure TfrmPatientDetail_.atnPersonLabResultCancelExecute(
  Sender: TObject);
begin
 if dmPatient.qryLaboratoryResults.State in [dsEdit, dsInsert] then
  dmPatient.qryLaboratoryResults.Cancel;
end;

procedure TfrmPatientDetail_.TbsCd4Weight_GraphClick(Sender: TObject);
begin
dmPatient.LabResultRefresh;
end;

procedure TfrmPatientDetail_.RzPageControl1Click(Sender: TObject);
begin
dmPatient.tlkLabTests.Open;
end;

procedure TfrmPatientDetail_.atnPrescriptionEditExecute(Sender: TObject);
begin
 //********* SM - 23 Jan 2013 If user has rights to Prescribe and Dispense then allow them
 if (atnRxCanPrescribe and atnRxCanDispense) then
  begin
  dmPatient.PrescriptionEdit(True, atnCanEditLabel);
  SetHeaderPanel;
  end;

end;

procedure TfrmPatientDetail_.edtRxNumberExit(Sender: TObject);
begin

if (Trim(edtRxNumber.Text) <> '-') AND (Trim(edtRxNumber.Text) <> '') then
 begin
 dmPatient.patientDuplicateIPN.Prepared := False;
 dmPatient.patientDuplicateIPN.Parameters.ParamByName('personRefNoCurrentstr').Value := edtRxNumber.Text ;
 dmPatient.patientDuplicateIPN.Parameters.ParamByName('personID').Value := dmPatient.qryPersonDetailperson_ID.Value;
 dmPatient.patientDuplicateIPN.Prepared := True;
 dmPatient.patientDuplicateIPN.Open;
 if dmPatient.patientDuplicateIPN.RecordCount > 0 then
  begin
  dmPatient.patientDuplicateIPN.First;
  ShowMessage('Duplicate IPN number. '+#13+#13+dmPatient.patientDuplicateIPN.FieldByName('PatientName').AsString + ' has the same IPN number.');
  edtRxNumber.SetFocus;
  end;
 dmPatient.patientDuplicateIPN.Close;
 end;
 
end;

procedure TfrmPatientDetail_.RzDBPasNumberExit(Sender: TObject);
begin

if (Trim(RzDBPasNumber.Text) <> '') then
 begin
 dmPatient.patientDuplicatePAS.Parameters.ParamByName('personPASstr').Value := RzDBPasNumber.Text;
 dmPatient.patientDuplicatePAS.Parameters.ParamByName('personID').Value := dmPatient.qryPersonDetailperson_ID.Value;
 dmPatient.patientDuplicatePAS.Prepared := True;
 dmPatient.patientDuplicatePAS.Open;
 if dmPatient.patientDuplicatePAS.RecordCount > 0 then
  begin
  dmPatient.patientDuplicatePAS.First;
  ShowMessage('Duplicate PAS number. '+#13+#13+dmPatient.patientDuplicatePAS.FieldByName('PatientName').AsString + ' has the same PAS number.');
   RzDBPasNumber.SetFocus;
  end;
   
 dmPatient.patientDuplicatePAS.Close;
 end;

end;

procedure TfrmPatientDetail_.CheckNames;
begin
 rzdButtons.EnableOk := ((edtRxNumber.Text <> '') and ((RzDBLastName.Text <> '') and (RzDBFirstName.Text <> ''))
        and (rzGenderGrp.Value <> '') and (DBPatientDOB.Text <> ''));
end;

procedure TfrmPatientDetail_.RzDBLastNameChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.RzDBFirstNameChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.RzDBKnownNameChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.edtRxNumberChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.dxDBGrid1DblClick(Sender: TObject);
begin
 dmPatient.EditADR;
 ADRDetailForm.Show;
end;

 procedure TfrmPatientDetail_.rzGenderGrpChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.rzGenderGrpExit(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.DBPatientDOBChange(Sender: TObject);
begin
 CheckNames;
end;

procedure TfrmPatientDetail_.dxDBADRsDblClick(Sender: TObject);
begin
 dmPatient.atnEditADR.Execute;
end;

procedure TfrmPatientDetail_.dxDBAdherenceDblClick(Sender: TObject);
begin
 dmPatient.atnEditAdherence.Execute;
end;

procedure TfrmPatientDetail_.ElSpeedButton19Click(Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdPersonWeight);
end;

procedure TfrmPatientDetail_.atnBioMetricEnrolExecute(Sender: TObject);
var
 errMsg: string;
 showError: boolean;
begin

 dmPatient.patientBioEnrollemt := True;

 errMsg := '';
 showError := False;

 if RzDBLastName.Text = '' then
  begin
  errMsg := #13 + 'Last Name';
  showError := True;
  end;
 if RzDBFirstName.Text = '' then
  begin
  errMsg := errMsg + #13 + 'First Name';
  showError := True;
  end;
 if RzDBIDNumber.Text = '' then
  begin
  errMsg := errMsg + #13 + 'ID/Passport Number';
  showError := True;
  end;

 // Check Patient name and ID are captured before you enrol on biometric system
 if (not showError) then
  dmPatient.EnrolPatientOnBioMetric
 else
  MessageDlg('Please make sure the following are captured before enrolling the patient.' + errMsg, mtWarning, [mbOk], 0);

 dmPatient.patientBioEnrollemt := False;

end;

procedure TfrmPatientDetail_.atnVerifyBiometricExecute(Sender: TObject);
begin
 dmPatient.VerifyBioPatient;
end;

procedure TfrmPatientDetail_.atnPrescriptionCopyExecute(Sender: TObject);
begin
//
 if not dmPatient.qryPersonDetail.FieldByName('personActive_bol').AsBoolean then
  begin
  if MessageDlg('Patient is in-active.  Continue anyway?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin

   dmPatient.PrescriptionCopy;
   SetHeaderPanel;
   end;
  end
 else
  begin

  dmPatient.PrescriptionCopy;
  SetHeaderPanel;
  end;

end;

procedure TfrmPatientDetail_.FormResize(Sender: TObject);
begin
 //Resize the form
 with Sender do
  begin
  Height := Screen.Height - (rzdButtons.Height+10);
  end;
end;

end.








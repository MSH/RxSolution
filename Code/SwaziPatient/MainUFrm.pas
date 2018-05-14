unit MainUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  StdCtrls, Buttons, DBCtrls, wwdbdatetimepicker, Mask, dxExEdtr, dxDBCtrl,
  dxDBGrid, ComCtrls, dxDBTLCl, dxGrClms, dxTL, dxCntner, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, RzLaunch, RzCommon,
  ElPopBtn, ActnList, inifiles, RzButton, RzLstBox, RzDBList, Grids,
  DBGrids, RzCmboBx, RzDBCmbo, DBActns, Prescription_TLB, RzPanel, RzRadGrp,
  ImgList;

type
  TMainFrm = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Reports1: TMenuItem;
    SystemDefaults1: TMenuItem;
    grpPatientIdentifiers: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit9: TDBEdit;
    dbeIDNo: TDBEdit;
    dtpDOB: TwwDBDateTimePicker;
    DBEdit17: TDBEdit;
    dbSerialNo: TDBEdit;
    Panel3: TPanel;
    dbnvgClient: TDBNavigator;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    dbArtNo: TDBEdit;
    pgClient: TPageControl;
    tbsPatient: TTabSheet;
    gridPatientList: TdxDBGrid;
    gridPatientListSerialNo_str: TdxDBGridColumn;
    gridPatientListArtNo_str: TdxDBGridColumn;
    gridPatientListLastName_str: TdxDBGridColumn;
    gridPatientListFirstName_str: TdxDBGridColumn;
    gridPatientListOtherName_str: TdxDBGridColumn;
    gridPatientListGender_str: TdxDBGridColumn;
    tbsVisits: TTabSheet;
    tbsLaboratoryTests: TTabSheet;
    Label16: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    tbsMostRecentStatus: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox3: TGroupBox;
    gpContactDetails: TGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    gpSupporter: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit20: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    dbClinicLkUp: TDBLookupComboBox;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox10: TGroupBox;
    Label43: TLabel;
    DBEdit24: TDBEdit;
    Label44: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit27: TDBEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label29: TLabel;
    Label23: TLabel;                                   
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBCheckBox1: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    GroupBox8: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit21: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    DBEdit28: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    RzLauncher1: TRzLauncher;
    frcEdit: TRzFrameController;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    tbsObservation: TTabSheet;
    gridPatientListBirthDate_dat: TdxDBGridDateColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2personpregnant_bol: TdxDBGridCheckColumn;
    dxDBGrid2vstTreamentPrescribed_bol: TdxDBGridCheckColumn;
    dxDBGrid2vstPregnancyDeliveryDate_dat: TdxDBGridDateColumn;
    dxDBGrid2vstVisitDate_dat: TdxDBGridDateColumn;
    dxDBGrid2vstNextVisit_dat: TdxDBGridDateColumn;
    dxDBGrid2vstScheduledVisit_dat: TdxDBGridDateColumn;
    dxDBGrid2vstFunctionalStatus_str: TdxDBGridColumn;
    dxDBGrid2vstClinicalStage_str: TdxDBGridColumn;
    dxGridPatientObs: TdxDBGrid;
    dxGridPatientObspersonWeight_int: TdxDBGridMaskColumn;
    dxGridPatientObspersonHeight_Int: TdxDBGridMaskColumn;
    dxGridPatientObspersonWeightDateRecorded_Dat: TdxDBGridDateColumn;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    dxDBGridLabs: TdxDBGrid;
    dxDBGridLabstestName_str: TdxDBGridColumn;
    dxDBGridLabstestResult_dbl: TdxDBGridMaskColumn;
    dxDBGridLabstestDate_dat: TdxDBGridDateColumn;
    dxDBGridLabstestPlace_str: TdxDBGridColumn;
    dxDBGridLabstestCode_str: TdxDBGridPickColumn;
    dxDBGrid2completed_bol: TdxDBGridCheckColumn;
    dxGridPatientObspersonBMI_dbl: TdxDBGridColumn;
    DBCheckBox11: TDBCheckBox;
    gridPatientListpersonActive: TdxDBGridCheckColumn;
    gpTransfer: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit22: TDBEdit;
    Label41: TLabel;
    DBEdit23: TDBEdit;
    GroupBox11: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    dxGridPatientObspersonBSA: TdxDBGridColumn;
    DBCheckBox12: TDBCheckBox;
    gridPatientListvstTempPatient_bol: TdxDBGridCheckColumn;
    bntRefresh: TElSpeedButton;
    actList: TActionList;
    actPatientRefresh: TAction;
    DBEdit8: TDBEdit;
    Label62: TLabel;
    File1: TMenuItem;
    atnLogon: TAction;
    Logon1: TMenuItem;
    atnLogOff: TAction;
    LogOff1: TMenuItem;
    atnAddUSerSession: TAction;
    Label8: TLabel;
    ReportSettings1: TMenuItem;
    atnPatientgrid_View: TAction;
    PopupMenuPatients: TPopupMenu;
    atnColumnDisplay1: TMenuItem;
    atnVisitsgrid_View: TAction;
    PopupMenuVisits: TPopupMenu;
    ColumnDisplay1: TMenuItem;
    btnToNurse: TButton;
    atnToLab: TAction;
    atnToNurse: TAction;
    atnToPharmacy: TAction;
    dxGridPatientObspersonPulse_int: TdxDBGridColumn;
    dxGridPatientObspersonTemperature_dbl: TdxDBGridColumn;
    dxGridPatientObspersonBP_str: TdxDBGridMaskColumn;
    atnLocalViewSettings: TAction;
    LocalViewSettings1: TMenuItem;
    atnReportSettings: TAction;
    PrintPatientCard1: TMenuItem;
    atnAddTodaysVisit: TAction;
    Button1: TButton;
    gridPatientListvstIsOnSite_bol: TdxDBGridCheckColumn;
    atnAddTodayWeightPatient: TAction;
    Button2: TButton;
    atnCheckTicketNumber: TAction;
    grpStatus: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    dteEnrolled: TwwDBDateTimePicker;
    dteDeceased: TwwDBDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    atnToDoctor: TAction;
    tbsSearch: TTabSheet;
    Label45: TLabel;
    edtSerial: TEdit;
    Label46: TLabel;
    edtSurname: TEdit;
    Label61: TLabel;
    edtFirstname: TEdit;
    Label63: TLabel;
    edtArtNumber: TEdit;
    Button5: TButton;
    Button6: TButton;
    atnSearchPatient: TAction;
    atnResetSearch: TAction;
    atnViewAllActive: TAction;
    Button7: TButton;
    BitBtn1: TBitBtn;
    dxDBGridLabstestBarCode_str: TdxDBGridColumn;
    dxDBGridLabstestPostive_bol: TdxDBGridCheckColumn;
    atnMakeOffSite: TAction;
    atnMakeOffSite1: TMenuItem;
    Label64: TLabel;
    DBEdit38: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit42: TDBEdit;
    Label67: TLabel;
    DBEdit46: TDBEdit;
    atnToData: TAction;
    dxDBGrid2visitType_str: TdxDBGridColumn;
    Label68: TLabel;
    DBEdit47: TDBEdit;
    PopupMenuLabs: TPopupMenu;
    Label60: TLabel;
    DBEdit45: TDBEdit;
    DBGrid1: TDBGrid;
    dxGridPatientObspersonMUAC_dbl: TdxDBGridColumn;
    dxGridPatientObsnotes_str: TdxDBGridMemoColumn;
    dteDiagnosis: TwwDBDateTimePicker;
    Label47: TLabel;
    Label69: TLabel;
    dteARTStartDate: TwwDBDateTimePicker;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    edtEntryPoint: TDBEdit;
    Label70: TLabel;
    Button8: TButton;
    atnCheckAnyLeftOverOnSite: TAction;
    Button9: TButton;
    atnViewALLPatients: TAction;
    gridPatientListpersonTransferredInFrom_str: TdxDBGridColumn;
    gridPatientListpersonTransferredOutTo_str: TdxDBGridColumn;
    DBMemo1: TDBMemo;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    atnPrintPatientSummary1: TMenuItem;
    Button10: TButton;
    Button11: TButton;
    DataSetEdit1: TDataSetEdit;
    PrintPatientBarcode1: TMenuItem;
    DataSetPost1: TDataSetPost;
    Label83: TLabel;
    Label84: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label74: TLabel;
    Label75: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    cmbVisitType: TComboBox;
    lblLastVisitType: TLabel;
    DBComboBox5: TDBComboBox;
    DBEdit1: TDBEdit;
    Label76: TLabel;
    atnPrintTodaysHandovers: TAction;
    Button12: TButton;
    PrintTodaysPatientHandovers1: TMenuItem;
    atnHandOverPatient: TAction;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label77: TLabel;
    Label78: TLabel;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label79: TLabel;
    atnShowExpectedPatients: TAction;
    Button13: TButton;
    atnViewHandOverToMyRole: TAction;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    gridPatientListpersonInstitution_str: TdxDBGridColumn;
    dxGridPatientObspersonWeightforHeight_str: TdxDBGridColumn;
    dxGridPatientObspersonRespiratoryRate_str: TdxDBGridMaskColumn;
    PopupPatientOBS: TPopupMenu;
    Column1: TMenuItem;
    atnDisplayPatientObsGrid: TAction;
    atnDisplayLabsGridcolumns: TAction;
    ColumnDisplay2: TMenuItem;
    dxGridPatientObspersonCrCC: TdxDBGridColumn;
    dxGridPatientObspersonCrCl_dbl: TdxDBGridColumn;
    dxGridPatientObspersonIBW_dbl: TdxDBGridColumn;
    dxGridPatientObspersonLBW_dbl: TdxDBGridColumn;
    dxGridPatientObspersonSrCr_dbl: TdxDBGridColumn;
    dxGridPatientObspersonTBW_dbl: TdxDBGridColumn;
    dxDBGrid2TBVisit_dat: TdxDBGridColumn;
    dxDBGrid2TBCategory_str: TdxDBGridColumn;
    dxDBGrid2TBSite_str: TdxDBGridColumn;
    dxDBGrid2TBReTreatmentType_str: TdxDBGridColumn;
    DBLookupComboBox3: TDBLookupComboBox;
    Label80: TLabel;
    atnCloseSearchAgain: TAction;
    Button4: TButton;
    atnViewMyHandOvers: TAction;
    atnPrintPatientHandOVerNotes: TAction;
    PrintPatientHandOverNotes1: TMenuItem;
    PrintPatientHandOverNotes2: TMenuItem;
    PrintPatientBarcode2: TMenuItem;
    PrintTicket1: TMenuItem;
    PrintTicket2: TMenuItem;
    N1: TMenuItem;
    tbsPrecription: TTabSheet;
    dxPrescriptions: TdxDBGrid;
    dxPrescriptionsprescriptionNumber_Str: TdxDBGridColumn;
    dxPrescriptionsdate_Dat: TdxDBGridDateColumn;
    dxPrescriptionsprescriberName_Str: TdxDBGridColumn;
    dxPrescriptionsdispenserName_Str: TdxDBGridColumn;
    dxPrescriptionsrepeatNo_Int: TdxDBGridMaskColumn;
    dxPrescriptionsprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    dxPrescriptionsprescriptionItemsCount_Int: TdxDBGridMaskColumn;
    dxPrescriptionsprescriptionStatus_Str: TdxDBGridColumn;
    dxPrescriptionsRepeatStatus_Str: TdxDBGridColumn;
    atnAddRx: TAction;
    atnEditRx: TAction;
    atnCopyRx: TAction;
    atnDeleteRx: TAction;
    PopupMenuPrescriptions: TPopupMenu;
    AddRx1: TMenuItem;
    DeleteRx1: TMenuItem;
    atnRxGridColumnDisplay: TAction;
    N2: TMenuItem;
    ColumnDisplay3: TMenuItem;
    tbsBookings: TTabSheet;
    dxBookings: TdxDBGrid;
    Panel2: TPanel;
    Label81: TLabel;
    dteBookingDay: TDateTimePicker;
    atnSearchBookings: TAction;
    dxBookingspersonPAS_str: TdxDBGridColumn;
    dxBookingspersonRefNoCurrent_str: TdxDBGridColumn;
    dxBookingspersonLastname_str: TdxDBGridColumn;
    dxBookingspersonFirstname_str: TdxDBGridColumn;
    dxBookingspersonDOB_dat: TdxDBGridDateColumn;
    dxBookingspersonActive_bol: TdxDBGridCheckColumn;
    dxBookingspersonIDNumber_str: TdxDBGridColumn;
    dxBookingsvstNextVisit_dat: TdxDBGridDateColumn;
    dxBookingsvstNextVisitType_str: TdxDBGridColumn;
    dxBookingskept_bol: TdxDBGridCheckColumn;
    PopupMenuBookings: TPopupMenu;
    atnBookingColumnDisplay: TAction;
    ColumnDisplay4: TMenuItem;
    rdFilterRange: TRadioGroup;
    ElSpeedButton1: TElSpeedButton;
    ImageList1: TImageList;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Exit1Click(Sender: TObject);
    procedure dbnvgClientClick(Sender: TObject; Button: TNavigateBtn);
    procedure pgClientChange(Sender: TObject);
    procedure Reports1Click(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure actPatientRefreshExecute(Sender: TObject);
    procedure atnLogonExecute(Sender: TObject);
    procedure SetDisplay;
    procedure atnLogOffExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atnAddUSerSessionExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DisplayColumns(GridCols: TDxDBGrid);
    procedure atnPatientgrid_ViewExecute(Sender: TObject);
    procedure atnVisitsgrid_ViewExecute(Sender: TObject);

    //User Views; Receptionist, Nurse, All
    //12/01/2009
    procedure ViewReception;
    procedure ViewNurse;
    procedure ViewDoctor;
    procedure ViewAll;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure atnReportSettingsExecute(Sender: TObject);
    procedure DisplayStatusReceiption;
    procedure DisplayStatusNurse;
    procedure DisplayStatusDoctor;
    procedure DisplayStatusAll;

    procedure DisplayObservationReception;
    procedure DisplayObservationNurse;
    procedure DisplayObservationDoctor;
    procedure DisplayObservationAll;
    procedure atnAddTodaysVisitExecute(Sender: TObject);
    procedure atnAddTodayWeightPatientExecute(Sender: TObject);
    procedure atnCheckTicketNumberExecute(Sender: TObject);
    procedure atnToNurseExecute(Sender: TObject);
    procedure atnToPharmacyExecute(Sender: TObject);
    procedure atnToDoctorExecute(Sender: TObject);
    procedure atnSearchPatientExecute(Sender: TObject);
    procedure atnResetSearchExecute(Sender: TObject);
    procedure atnViewAllActiveExecute(Sender: TObject);
    procedure atnToLabExecute(Sender: TObject);

    procedure CheckTicketNumber;
    procedure atnMakeOffSiteExecute(Sender: TObject);
    procedure atnToDataExecute(Sender: TObject);

    procedure CheckARTStartDate;
    procedure dteEnrolledExit(Sender: TObject);
    procedure gridPatientListClick(Sender: TObject);
    procedure gridPatientListKeyPress(Sender: TObject; var Key: Char);
    procedure atnCheckAnyLeftOverOnSiteExecute(Sender: TObject);
    procedure SetAtnHandOvers;
    procedure MakePatientUnEditable;
    procedure MakePatientEditable;

    procedure ValidateSearch;
    procedure edtSerialChange(Sender: TObject);
    procedure edtSurnameChange(Sender: TObject);
    procedure edtFirstnameChange(Sender: TObject);
    procedure edtArtNumberChange(Sender: TObject);
    procedure edtSerialEnter(Sender: TObject);
    procedure edtSurnameEnter(Sender: TObject);
    procedure edtFirstnameEnter(Sender: TObject);
    procedure edtArtNumberEnter(Sender: TObject);
    procedure atnViewALLPatientsExecute(Sender: TObject);
    procedure DataSetEdit1Execute(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SwitchMostRecentType();
    procedure cmbVisitTypeSelect(Sender: TObject);
    procedure atnPrintTodaysHandoversExecute(Sender: TObject);

    procedure MarkRequiredFields;
    procedure atnHandOverPatientExecute(Sender: TObject);
    procedure atnShowExpectedPatientsExecute(Sender: TObject);
    procedure atnViewHandOverToMyRoleExecute(Sender: TObject);
    procedure atnDisplayPatientObsGridExecute(Sender: TObject);
    procedure atnDisplayLabsGridcolumnsExecute(Sender: TObject);
    procedure atnCloseSearchAgainExecute(Sender: TObject);
    procedure atnViewMyHandOversExecute(Sender: TObject);
    procedure atnPrintPatientHandOVerNotesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure atnAddRxExecute(Sender: TObject);
    procedure atnEditRxExecute(Sender: TObject);
    procedure atnCopyRxExecute(Sender: TObject);
    procedure atnDeleteRxExecute(Sender: TObject);
    procedure atnRxGridColumnDisplayExecute(Sender: TObject);
    procedure CheckAvailableActionsForPatient;
    procedure dteBookingDayChange(Sender: TObject);
    procedure atnSearchBookingsExecute(Sender: TObject);
    procedure atnBookingColumnDisplayExecute(Sender: TObject);
    procedure ElSpeedButton1Click(Sender: TObject);
    procedure rdFilterRangeClick(Sender: TObject);

  private
    { Private declarations }
     FRX: IRX;
  public
    { Public declarations }
   FUser : string;
   FUserName : string;
   FUserId : string;
   Logged_In : Boolean;
   PatientsReturned : Boolean;
   LogOnTime : TDateTime;
   FViewType : string;
   property RX: IRX read FRX write FRX;
  end;

var
  MainFrm: TMainFrm;

implementation

uses PatientUDm, MainUDm, ClinicVisitUFrm, UserLogonfrm,
  TabEnter, frmSettingsUfrm, DialogGridColumnSelectorUFrm,
  WeightPatientUfrm, HandOverStatusUFrm, OnsiteListUFrm, HandOverPeopleUFrm,
  AddPatientUFrm, LabResultsUFrm;

{$R *.dfm}



procedure TMainFrm.ViewReception;
begin
//
 tbsMostRecentStatus.TabVisible := False;
 tbsLaboratoryTests.TabVisible  := False;
 tbsPrecription.TabVisible      := False;
 
//navigation button; no insert button for receptionist
 dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbEdit,nbPost,nbCancel];

//Reporting period; hide for receptionist
 atnReportSettings.Visible      := False;
 atnMakeOffSite.Visible         := False;
 atnAddRx.Visible               := False;

 DisplayStatusReceiption();
 atnViewAllActive.Enabled := False;

 atnAddTodaysVisit.Enabled := True;
 atnCheckAnyLeftOverOnSite.Enabled := True;
 atnViewALLPatients.Enabled := False;
 PatientDm.atnPrintPatientCard.Enabled := True;

end;

procedure TMainFrm.ViewNurse;
begin
//navigation button; remove the insert button for nurse
if pgClient.ActivePageIndex < 2 then
 dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel]
else
 dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbEdit,nbPost,nbCancel];

 atnToNurse.Enabled     := False;
 atnMakeOffSite.Visible := True;

 DisplayStatusNurse();
 atnViewAllActive.Enabled := True;
 atnAddTodaysVisit.Enabled := False;

 atnCheckAnyLeftOverOnSite.Enabled := False;
 atnViewALLPatients.Enabled := False;
 PatientDm.atnPrintPatientCard.Enabled := False;  
end;

procedure TMainFrm.ViewDoctor;
begin

//navigation button; remove the insert button for doctor
 if pgClient.ActivePageIndex > 2 then
  dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast, nbInsert,nbEdit,nbPost,nbCancel]
 else
  dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel];

 atnToDoctor.Enabled    := False;
 dbClinicLkUp.Enabled   := True;
 atnMakeOffSite.Visible := True;
 atnAddRx.Visible       := True;

 DisplayStatusDoctor();
 atnViewAllActive.Enabled  := True;
 atnAddTodaysVisit.Enabled := True;
 atnAddRx.Enabled          := True;

 atnCheckAnyLeftOverOnSite.Enabled      := False;
 atnViewALLPatients.Enabled             := False;
 PatientDm.atnPrintPatientCard.Enabled  := False;
end;

procedure TMainFrm.ViewAll;
begin
//
 tbsLaboratoryTests.TabVisible      := True;
 tbsMostRecentStatus.TabVisible     := True;
 tbsPrecription.TabVisible          := True;    

//navigation button showing all relevant button
 dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert, nbEdit,nbPost,nbCancel];
//Reporting period
 atnReportSettings.Visible      := True;
 atnMakeOffSite.Visible         := True;
 atnAddRx.Visible               := True;

 DisplayStatusAll();

 atnViewAllActive.Enabled       := True;
 atnToData.Enabled              := False;
 atnAddTodaysVisit.Enabled      := True;

 atnCheckAnyLeftOverOnSite.Enabled := True;
 atnViewALLPatients.Enabled     := True;
 PatientDm.atnPrintPatientCard.Enabled := True;
end;

procedure TMainFrm.DisplayStatusReceiption;
begin
 //make all read only
end;

procedure TMainFrm.DisplayStatusNurse;
begin
// grpStatus.Enabled      := True;
 dteEnrolled.Enabled    := False;
 dteDeceased.Enabled    := False;
// dteDefaulted.Enabled   := True;
end;

procedure TMainFrm.DisplayStatusDoctor;
begin
 //grpStatus.Enabled      := True;
 dteEnrolled.Enabled    := False;
 dteDeceased.Enabled    := True;
 //dteDefaulted.Enabled   := True;
end;


procedure TMainFrm.DisplayStatusAll;
begin
// grpStatus.Enabled      := True;
 dteEnrolled.Enabled    := True;
 dteDeceased.Enabled    := True;
 //dteDefaulted.Enabled   := True;
end;

procedure TMainFrm.DisplayObservationReception;
begin
 //
 dxGridPatientObspersonBMI_dbl.Visible          := False;
 dxGridPatientObspersonBSA.Visible              := False;
 dxGridPatientObspersonPulse_int.Visible        := False;
 dxGridPatientObspersonTemperature_dbl.Visible  := False;
 dxGridPatientObspersonBP_str.Visible           := False;
end;

procedure TMainFrm.DisplayObservationNurse;
begin
 //
 dxGridPatientObspersonBMI_dbl.Visible          := True;
 dxGridPatientObspersonBSA.Visible              := True;
 dxGridPatientObspersonPulse_int.Visible        := True;
 dxGridPatientObspersonTemperature_dbl.Visible  := True;
 dxGridPatientObspersonBP_str.Visible           := True;
end;

procedure TMainFrm.DisplayObservationDoctor;
begin
 //
end;

procedure TMainFrm.DisplayObservationAll;
begin
 //          
end;

procedure TMainFrm.SetDisplay;
begin
//Set actions visibility
  pgClient.ActivePageIndex := 0;
  atnLogon.Enabled      := not Logged_In;
  atnLogOff.Enabled     := Logged_In;
  actPatientRefresh.Enabled:= Logged_In;

  atnToLab.Enabled      := Logged_In;
  atnToNurse.Enabled    := Logged_In;
  atnToPharmacy.Enabled := Logged_In;
  atnToDoctor.Enabled   := Logged_In;
  atnAddTodaysVisit.Enabled:= Logged_In;
  atnAddTodayWeightPatient.Enabled := Logged_In;
  atnAddRx.Enabled      := Logged_In;
  atnEditRx.Enabled     := Logged_In;

  atnMakeOffSite.Enabled := Logged_In;
  
  atnPrintTodaysHandovers.Enabled := Logged_In;
  atnPrintPatientHandOVerNotes.Enabled := Logged_In;
  atnPrintPatientSummary1.Enabled := Logged_In;
  PatientDm.atnPrintPatientBarcode.Enabled := Logged_In;
  PatientDm.atnPrintPatientCard.Enabled := Logged_In;


 if Logged_In then
   Mainfrm.Caption :=  'RxSolution Patient Management System - Current System user : ['+ fuser +']'+' '+ FViewType
  else
   Mainfrm.Caption :=  'RxSolution Patient Management System';
   
 if Logged_In then
  begin
  if (FViewType = 'Receptionist') or (FViewType = 'Data Clerk') or (FViewType = 'Administrator') then
   CheckTicketNumber;

  if FViewType = 'Nurse'              then ViewNurse()
  else if FViewType = 'Receptionist'  then ViewReception()
  else if FViewType = 'Doctor'        then ViewDoctor()
  else ViewAll();
  end;
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Exit;
end;

procedure TMainFrm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainFrm.dbnvgClientClick(Sender: TObject; Button: TNavigateBtn);
begin
  Case pgClient.ActivePageIndex of
  0:  //If in the Patient list tabsheet
   Case button of
   nbEdit : MakePatientEditable; //
   nbPost : MakePatientUnEditable;
   nbInsert : begin MakePatientEditable; AddPatientFrm.ShowModal {dbSerialNo.SetFocus;}; end;
   nbCancel : MakePatientUnEditable;
   end;
  2: //If in the Visit tabsheet
   Case button of
   nbEdit: ClinicVisitFrm.ShowModal;
   nbInsert: if (not PatientDm.IsNewVisitFirstToday) then
                ClinicVisitFrm.ShowModal
             else
                begin
                PatientDm.TblClinicalVisit.Cancel;
                end;
   end;
  3: //If in the LabsResult tabsheet
   Case button of
   //nbEdit: LabResultsFrm.ShowModal;
   nbInsert: LabResultsFrm.ShowModal;
   end;
   5:  //If in the Prescrition tabsheet
   Case button of
   nbEdit: atnEditRx.Execute;
   nbInsert: atnAddRx.Execute;
   end;
  end;
end;

procedure TMainFrm.pgClientChange(Sender: TObject);
begin
  Case pgClient.ActivePageIndex of
  0:dbnvgClient.DataSource := PatientDm.dsPatient;
  1:dbnvgClient.DataSource := PatientDm.dsPatient;
  2:dbnvgClient.DataSource := PatientDm.dsClinicalVisit;
  3:dbnvgClient.DataSource := PatientDm.dsLaboratoryResults;
  4:dbnvgClient.DataSource := PatientDm.dsPatientWeight;
  5:dbnvgClient.DataSource := PatientDm.dsPrescriptions;
  7: if Logged_In then PatientDm.LoadBookings(dteBookingDay.Date, rdFilterRange.ItemIndex);
  end;

 if FViewType = 'Nurse'              then ViewNurse()
 else if FViewType = 'Receptionist'  then ViewReception()
 else if FViewType = 'Doctor'        then ViewDoctor()  
 else ViewAll();

 CheckAvailableActionsForPatient;

end;

procedure TMainFrm.Reports1Click(Sender: TObject);
begin
 Rzlauncher1.FileName := ExtractFilePath(Application.ExeName) + 'RxDispensingReporter.exe';
 Rzlauncher1.launch;
end;

procedure TMainFrm.dxDBGrid2DblClick(Sender: TObject);
begin
 if  not PatientDm.TblClinicalVisitcompleted_bol.AsBoolean then
  PatientDm.TblClinicalVisit.Edit;
 ClinicVisitFrm.ShowModal;
end;

procedure TMainFrm.actPatientRefreshExecute(Sender: TObject);
begin
 PatientDm.PatientRefresh;
 CheckARTStartDate;
end;

procedure TMainFrm.atnLogonExecute(Sender: TObject);
begin
 frmLogon.ShowModal;
 if Logged_In then
  begin
  PatientDm.tblLabTests.First;
  dxDBGridLabstestCode_str.Items.Clear;    //clear and load test codes and names into grid drop down
  while not PatientDm.tblLabTests.Eof do
   begin
   dxDBGridLabstestCode_str.Items.Add(PatientDm.tblLabTests.FieldByName('TestCode_str').AsString);
   PatientDm.tblLabTests.Next;
   end;
  dtpDOB.MaxDate := Date;  //Set date of birth maximum so it's never greater then today
  end;
  //gridPatientList.SetFocus;
  pgClient.ActivePage := tbsSearch;
  SetDisplay;   
end;

procedure TMainFrm.atnLogOffExecute(Sender: TObject);
begin

 if Logged_In then
  atnAddUSerSession.Execute;
 Logged_In := False;
 PatientDm.CloseTables;
 SetDisplay;

end;

procedure TMainFrm.FormShow(Sender: TObject);
begin
 //Logon
 atnLogon.Execute;

 MakePatientUnEditable;
// PatientsReturned := PatientDm.PatientsListActive;
 if Logged_In then
  begin
 // Search displayed on Form Show to speed up system start up
 // PatientDm.SearchPatientAllFields('##$%#$', '%^$%#$', '**$%*$', '&&$%&$', False);
 // pgClient.ActivePage := tbsPatient;
  pgClient.ActivePage := tbsSearch;
  
   //PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
 if FViewType = 'Nurse'              then ViewNurse()
 else if FViewType = 'Receptionist'  then ViewReception()
 else if FViewType = 'Doctor'        then ViewDoctor()
 else ViewAll();

 SetAtnHandOvers;

 if Logged_In then
  Mainfrm.Caption :=  'RxSolution Patient Management System - Current System user : ['+ fuser +']'+' '+ FViewType
 else
  Mainfrm.Caption :=  'RxSolution Patient Management System';
  end;

 dteBookingDay.Date := Now;
 rdFilterRange.ItemIndex := 0;

 if Logged_In then PatientDm.LoadBookings(Date(), 0);

end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//Checks if there is a need to add to user session log file
 if (LogOnTime > Now-1) then
  begin
  atnAddUSerSession.Execute;
  end;

end;

procedure TMainFrm.atnAddUSerSessionExecute(Sender: TObject);
begin
 Maindm.AddUserSession;
end;

procedure TMainFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := NextControl(MainFrm, Key);
end;

procedure TMainfrm.DisplayColumns(GridCols: TDxDBGrid);
var
  SelectColumns : TColumnSelector;
begin

  SelectColumns := TColumnSelector.Create;
  try
  //GridCols := pGridCols;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TMainFrm.atnPatientgrid_ViewExecute(Sender: TObject);
begin
 DisplayColumns(gridPatientList);
end;

procedure TMainFrm.atnVisitsgrid_ViewExecute(Sender: TObject);
begin
 DisplayColumns(dxDBGrid2);
end;

procedure TMainFrm.Button1Click(Sender: TObject);
begin
 ViewReception();
end;

procedure TMainFrm.Button2Click(Sender: TObject);
begin
 ViewAll();
end;

procedure TMainFrm.atnReportSettingsExecute(Sender: TObject);
begin
  SettingsFrm.ShowModal;
end;

procedure TMainFrm.atnAddTodaysVisitExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
 PatientDm.AddTodaysVisit;

end;

procedure TMainFrm.atnAddTodayWeightPatientExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
 PatientDm.AddPatientWeight;
end;

procedure TMainFrm.atnCheckTicketNumberExecute(Sender: TObject);
begin

 if not MainDm.IsNumberValidToday then
  MainDm.ResetTicketNumber;

end;

procedure TMainFrm.atnToNurseExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
  begin
  PatientDm.AddPatientHandOver('Nurse', '', '');
  if MessageDlg('The patient has been handed over to the nurse. Would you like to search for another patient?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   pgClient.ActivePage := tbsSearch;
  end;
end;

procedure TMainFrm.atnToPharmacyExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
  begin
  PatientDm.AddPatientHandOver('Pharmacy', '', '');
  if MessageDlg('The patient has been handed over to the pharmacy. Would you like to search for another patient?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   pgClient.ActivePage := tbsSearch;
  end;
   
end;

procedure TMainFrm.atnToDoctorExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
  begin
  PatientDm.AddPatientHandOver('Doctor', '', '');
  if MessageDlg('The patient has been handed over to the doctor. Would you like to search for another patient?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   pgClient.ActivePage := tbsSearch;
  end; 
end;

procedure TMainFrm.atnSearchPatientExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
Begin

 if Logged_In then
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  PatientDm.SearchPatientAllFields(TRIM(edtSurname.Text), TRIM(edtFirstname.Text), TRIM(edtArtNumber.Text), TRIM(edtSerial.Text), False);
  if PatientDm.TblPatient.RecordCount > 0 then
   pgClient.ActivePage := tbsPatient
  else
   begin
   MessageDlg('No patient records found', mtInformation, [mbOk], 0);
  // PatientDm.OpenEmptyPatients;
   pgClient.ActivePage := tbsPatient;
   end;
  Screen.Cursor := Save_Cursor;
  end;
 //PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.atnResetSearchExecute(Sender: TObject);
begin

 edtSerial.Clear;
 edtSurname.Clear;
 edtFirstname.Clear;
 edtArtNumber.Clear;

end;

procedure TMainFrm.atnViewAllActiveExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  PatientDm.SearchPatientAllFields('', '', '', '', True);
  pgClient.ActivePage := tbsPatient;
  end;
end;

procedure TMainFrm.atnToLabExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
  begin
  PatientDm.AddPatientHandOver('Lab', '', '');
  if MessageDlg('The patient has been handed over to the Lab. Would you like to search for another patient?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   pgClient.ActivePage := tbsSearch;
  end;
end;

procedure TMainFrm.CheckTicketNumber;
begin
 if not PatientDm.PatientsOnSite then
  if not MainDm.IsNumberValidToday then
  begin
  if MessageDlg('Would you like to reset the ticket numbers back to 1 for the day?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
   MainDm.ResetTicketNumber
  else
   MainDm.UpdateTicketNumberDate;
  end;
  
end;

procedure TMainFrm.atnMakeOffSiteExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  HandOverStatusFrm.ShowModal;
  SetAtnHandOvers;
  end;
end;

procedure TMainFrm.atnToDataExecute(Sender: TObject);
begin
if PatientDm.TblPatient.Active then
 if PatientDm.TblPatient.RecordCount > 0 then
  begin
  PatientDm.AddPatientHandOver('Data Clerk', '', '');
  if MessageDlg('The patient has been handed over to the Data Clerk. Would you like to search for another patient?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   pgClient.ActivePage := tbsSearch;
  end; 
end;

procedure TMainFrm.CheckARTStartDate;
begin
 dteARTStartDate.Enabled := (dteEnrolled.DateTime > (Date()-365*20));
end;


procedure TMainFrm.dteEnrolledExit(Sender: TObject);
begin
 CheckARTStartDate;
end;

procedure TMainFrm.gridPatientListClick(Sender: TObject);
begin
 CheckARTStartDate;
end;

procedure TMainFrm.gridPatientListKeyPress(Sender: TObject; var Key: Char);
begin
 CheckARTStartDate;
end;

procedure TMainFrm.atnCheckAnyLeftOverOnSiteExecute(Sender: TObject);
begin

if Logged_In then
 if PatientDm.PatientsOnSite then
  begin
  OnSiteFrm.ShowModal;
  //PatientDm.PatientRefresh;
  end
 else
  MessageDlg('There are no outstanding patients on site', mtInformation, [mbOk],0);
end;

procedure TMainFrm.SetAtnHandOvers;
begin
   //
  if not (FViewType = 'Nurse') then
   atnToNurse.Enabled   :=  PatientDm.IsOnSite;
  if not (FViewType = 'Doctor') then
   atnToDoctor.Enabled  :=  PatientDm.IsOnSite;
  atnToPharmacy.Enabled :=  PatientDm.IsOnSite;
  atnToData.Enabled    :=  PatientDm.IsOnSite;
  atnToLab.Enabled     := PatientDm.IsOnSite;

end;

procedure TMainFrm.MakePatientEditable;
begin

  grpPatientIdentifiers.Enabled         := True;
  gpContactDetails.Enabled              := True;
  gpTransfer.Enabled                    := True;
  gpSupporter.Enabled                   := True;
  MarkRequiredFields;

end;

procedure TMainFrm.MakePatientUnEditable;
begin

  grpPatientIdentifiers.Enabled         := False;
  gpContactDetails.Enabled              := False;
  gpTransfer.Enabled                    := False;
  gpSupporter.Enabled                   := False;

end;

procedure TMainFrm.ValidateSearch;
var
 vEnable : Boolean;
 vStringConc: string;
begin
 //
 vEnable := False;
 vStringConc := (Trim(edtSerial.Text)) + (Trim(edtSurname.Text)) + (Trim(edtFirstname.Text)) + (Trim(edtArtNumber.Text));
 if Length(vStringConc)  > 0 then
  vEnable := True;

// atnSearchPatient.Enabled := (edtSerial.Text <> '') or (edtSurname.Text <> '') or (edtFirstname.Text <> '') or (edtArtNumber.Text <> '');
  atnSearchPatient.Enabled := vEnable;

end;

procedure TMainFrm.edtSerialChange(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtSurnameChange(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtFirstnameChange(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtArtNumberChange(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtSerialEnter(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtSurnameEnter(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtFirstnameEnter(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.edtArtNumberEnter(Sender: TObject);
begin
 ValidateSearch;
end;

procedure TMainFrm.atnViewALLPatientsExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  PatientDm.SearchPatientAllFields('', '', '', '', True);
  pgClient.ActivePage := tbsPatient;
  end;
// PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.DataSetEdit1Execute(Sender: TObject);
begin
 MakePatientEditable;
end;

procedure TMainFrm.Button12Click(Sender: TObject);
begin
 if not (PatientDm.TblPatient.State in [dsEdit, dsInsert]) then
  MakePatientUnEditable;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
const
  cbuf = 1;
var
  vDetFormSize  :TRect;
  UDLFile : String;
begin

 try
  MainDm.PatientMainConnection.Close;
  UDLFile := 'FILE NAME=' + ExtractFilePath(Application.ExeName) + 'RxDispensingReporter.udl';
  MainDm.PatientMainConnection.ConnectionString := UDLFile;
  MainDm.PatientMainConnection.Open;

 except
  MessageDlg('Unable to connect to the database. Please check connection properties.',
  mtError, [mbOk],0 );
  Rzlauncher1.FileName:=ExtractFilePath(Application.ExeName)+'RxDispensingReporter.udl';
  Rzlauncher1.launch;
 end;

 FRX := CoRX.Create;
 FRX.Initialize(MainDm.PatientMainConnection.ConnectionString);

  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

 // Create Com Objects for Prescription DLL

end;

procedure TMainFrm.SwitchMostRecentType();
begin
 if cmbVisitType.Text = 'Drug Pickup' then
  PatientDm.dsMostRecentStatus.DataSet := PatientDm.LastDrugPickVisit
 else if cmbVisitType.Text = 'Lab Specific' then
  PatientDm.dsMostRecentStatus.DataSet := PatientDm.LastLabVisit
 else if cmbVisitType.Text = 'Clinical Review' then
  PatientDm.dsMostRecentStatus.DataSet := PatientDm.LastClinicalReview
 else if cmbVisitType.Text = 'Counselling/H.education' then
  PatientDm.dsMostRecentStatus.DataSet := PatientDm.LastCounselling;
end;


procedure TMainFrm.cmbVisitTypeSelect(Sender: TObject);
begin
 SwitchMostRecentType();
end;

procedure TMainFrm.atnPrintTodaysHandoversExecute(Sender: TObject);
begin
 if Logged_In then
  PatientDm.PrintTodaysPatientHandovers();
end;

procedure TMainFrm.MarkRequiredFields;
begin
 //

end;

procedure TMainFrm.atnHandOverPatientExecute(Sender: TObject);
begin
 //Show form for hand overs to system users
 if Logged_In then
  if PatientDm.TblPatient.Active then
   if PatientDm.TblPatient.RecordCount > 0 then
    HandOverPeopleFrm.ShowModal;
end;

procedure TMainFrm.atnShowExpectedPatientsExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  Patientdm.ShowAllTodaysVisitors();
  pgClient.ActivePage := tbsPatient;
  end;
// PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.atnViewHandOverToMyRoleExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  PatientDm.SearchPatientByROLE;
  pgClient.ActivePage := tbsPatient;
  end;

// PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.atnDisplayPatientObsGridExecute(Sender: TObject);
begin
  DisplayColumns(dxGridPatientObs);
end;

procedure TMainFrm.atnDisplayLabsGridcolumnsExecute(Sender: TObject);
begin
   DisplayColumns(dxDBGridLabs);
end;

procedure TMainFrm.atnCloseSearchAgainExecute(Sender: TObject);
Begin

 if Logged_In then
  begin
  PatientDm.CloseTables;
  PatientDm.OpenTables;
  atnResetSearch.Execute;
  edtArtNumber.SetFocus;
  end;

// PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.atnViewMyHandOversExecute(Sender: TObject);
begin
 if Logged_In then
  begin
  PatientDm.SearchPatientHandedToME;
  pgClient.ActivePage := tbsPatient;
  end;
// PatientsReturned := PatientDm.PatientsListActive;
 CheckAvailableActionsForPatient;
end;

procedure TMainFrm.atnPrintPatientHandOVerNotesExecute(Sender: TObject);
begin
 with PatientDm do
  begin
  if TblPatient.Active then
   if (TblPatient.RecordCount > 0) then
    PrintHandOverNotesHistory;
  end;
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  // Free Com Objects
  FRX := nil;
end;

procedure TMainFrm.atnAddRxExecute(Sender: TObject);
var
 PID : string;
begin
 PID := PatientDm.TblPatient.fieldByName('person_ID').AsString;
 RX.Add(PID, FUserName);
 PatientDm.RefreshRecentStatus;
end;

procedure TMainFrm.atnEditRxExecute(Sender: TObject);
var
 RXID : string;
begin
 RXID := PatientDm.tblPRescrioptions.FieldByName('prescription_ID').AsString;
 RX.Edit(RXID, true, FUserName, false);
 PatientDm.RefreshRecentStatus;
end;

procedure TMainFrm.atnCopyRxExecute(Sender: TObject);
var
 RXID : string;
begin
 RXID := PatientDm.tblPRescrioptions.FieldByName('prescription_ID').AsString;
 //RX.CopyRx(RXID);
 PatientDm.RefreshRecentStatus;
end;

procedure TMainFrm.atnDeleteRxExecute(Sender: TObject);
var
 RXID : string;
begin
 RXID := PatientDm.tblPRescrioptions.FieldByName('prescription_ID').AsString;
 RX.Delete(RXID);
 PatientDm.RefreshRecentStatus;
end;

procedure TMainFrm.atnRxGridColumnDisplayExecute(Sender: TObject);
begin
 DisplayColumns(dxPrescriptions);
end;

procedure TMainFrm.CheckAvailableActionsForPatient;
begin
  //
 //atnAddTodaysVisit.Enabled              := PatientsReturned;
 //atnAddTodayWeightPatient.Enabled       := PatientsReturned;
 //atnPrintPatientSummary1.Enabled        := PatientsReturned;
 //atnHandOverPatient.Enabled             := PatientsReturned;
 atnAddRx.Enabled                       := PatientsReturned;
 atnEditRx.Enabled                      := PatientsReturned;
 atnCopyRx.Enabled                      := PatientsReturned;
 atnDeleteRx.Enabled                    := PatientsReturned;

 PatientsReturned := PatientDm.PatientsListActive;

 if pgClient.ActivePageIndex > 0 then
  begin
  if PatientsReturned then
   dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbEdit,nbPost,nbCancel]
  else
   dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
  end
 else
  dbnvgClient.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbEdit,nbPost,nbCancel];
        
end;

procedure TMainFrm.dteBookingDayChange(Sender: TObject);
begin
 if Logged_In then PatientDm.LoadBookings(dteBookingDay.Date, rdFilterRange.ItemIndex);
end;

procedure TMainFrm.atnSearchBookingsExecute(Sender: TObject);
begin
 if Logged_In then PatientDm.LoadBookings(dteBookingDay.Date, rdFilterRange.ItemIndex);
end;

procedure TMainFrm.atnBookingColumnDisplayExecute(Sender: TObject);
begin
  DisplayColumns(dxBookings);
end;

procedure TMainFrm.ElSpeedButton1Click(Sender: TObject);
begin
 //refresh bookings...
 if Logged_In then PatientDm.LoadBookings(dteBookingDay.Date, rdFilterRange.ItemIndex);
end;

procedure TMainFrm.rdFilterRangeClick(Sender: TObject);
begin
  if Logged_In then PatientDm.LoadBookings(dteBookingDay.Date, rdFilterRange.ItemIndex);
end;

end.

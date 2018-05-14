unit PatientManagerUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Menus, ADODB,StdCtrls, ExtCtrls,

  SystemConstants, 

  RzButton, RzDlgBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, RzPanel, 
  RzCommon,  RzLabel, dxExEdtr, RxSolutionSecurityClass, RzGroupBar,
  RzDBLbl, ElPopBtn, RzBckgnd, jpeg, ppBands, ppStrtch, ppRegion, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppModule, daDataModule, RzLaunch, myChkBox, Mask, RzEdit,
  ppParameter, ppBarCod,

  TDelta9U, TResponseU, TPatientU, TMessageResultU, RzBmpBtn;

type
  TPatientManagerFrm = class(TForm)
    conPatient: TADOConnection;
    rzcMain: TRzFrameController;
    qryPatients: TADOQuery;
    pmnuPatient: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    N1: TMenuItem;
    pmnuPrint: TPopupMenu;
    dsqryPatients: TDataSource;
    ActionList1: TActionList;
    atnPatient_Add: TAction;
    atnPatient_Edit: TAction;
    atnPrntPrescribersByName: TAction;
    atnPrntPrescribersByNumber: TAction;
    atnPrintPatientBIODataSheet: TAction;
    BioDataSheet1: TMenuItem;
    BioDataSheet2: TMenuItem;
    atnPrntPrescribersByClinic: TAction;
    qryRxList: TADOQuery;
    dsqryRxList: TDataSource;
    atnPatient_Delete: TAction;
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Main_PatientListPanel: TPanel;
    Label83: TLabel;
    Shape2: TShape;
    Label1: TLabel;
    rzsLine01: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    pnl_Main_QuestionnairePanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape1: TShape;
    grdRxListPerPatient: TdxDBGrid;
    grdRxListPerPatientdate_Dat: TdxDBGridDateColumn;
    grdRxListPerPatientrepeats_Int: TdxDBGridMaskColumn;
    grdRxListPerPatientrepeatNo_Int: TdxDBGridMaskColumn;
    grdRxListPerPatientdispensingPosted_bol: TdxDBGridCheckColumn;
    grdPatients: TdxDBGrid;
    grdPatientspersonRefNoCurrent_str: TdxDBGridColumn;
    grdPatientspersonLastName_Str: TdxDBGridColumn;
    grdPatientspersonFirstName_Str: TdxDBGridColumn;
    grdPatientspersonGender_Str: TdxDBGridColumn;
    grdPatientspersonInstitution_str: TdxDBGridColumn;
    atnPatientDisplayColumns: TAction;
    atnPatientRxDisplayColumns: TAction;
    grdRxListPerPatientdownRefferal_Str: TdxDBGridColumn;
    grdRxListPerPatientprescriptionNumber_Str: TdxDBGridColumn;
    grdRxListPerPatientfolderNumber_Str: TdxDBGridColumn;
    grdRxListPerPatientprescriberName_Str: TdxDBGridColumn;
    grdRxListPerPatientdispenserName_Str: TdxDBGridColumn;
    grdRxListPerPatientprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    grdRxListPerPatientprescriptionItemsCount_Int: TdxDBGridMaskColumn;
    grdRxListPerPatientnaive_bol: TdxDBGridCheckColumn;
    atnPrescription_Edit: TAction;
    ppReportBioBlankDataSheet: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBImage9: TppDBImage;
    ppDetailBand3: TppDetailBand;
    ppLabel104: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppImage1: TppImage;
    ppLine26: TppLine;
    ppLabel105: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel106: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel107: TppLabel;
    ppPageStyle3: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion1: TppRegion;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape21: TppShape;
    ppLabel28: TppLabel;
    ppShape22: TppShape;
    ppLabel30: TppLabel;
    ppShape23: TppShape;
    ppLabel92: TppLabel;
    ppShape24: TppShape;
    ppRegion8: TppRegion;
    ppLabel93: TppLabel;
    ppLine9: TppLine;
    ppLabel94: TppLabel;
    ppRegion15: TppRegion;
    ppLabel98: TppLabel;
    ppRegion16: TppRegion;
    ppLabel99: TppLabel;
    ppRegion17: TppRegion;
    ppLabel100: TppLabel;
    ppShape25: TppShape;
    ppShape35: TppShape;
    ppLabel101: TppLabel;
    ppRegion18: TppRegion;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBBioDataSheet: TppDBPipeline;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape7: TppShape;
    ppShape9: TppShape;
    ppReportBioDataSheet: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppShape15: TppShape;
    ppLine10: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBImage6: TppDBImage;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppLine12: TppLine;
    ppPageStyle4: TppPageStyle;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppRegion3: TppRegion;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel41: TppLabel;
    ppRegion2: TppRegion;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBPipeline1: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel29: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel31: TppLabel;
    ppDBText23: TppDBText;
    grdPatientsAgeInYears_int: TdxDBGridColumn;
    rzvFileLaunchUtil: TRzLauncher;
    qryFindLastAddedPatient: TADOQuery;
    grdPatientspersonPAS_str: TdxDBGridColumn;
    grdPatientsActive_bol: TdxDBGridCheckColumn;
    atnCopyRx: TAction;
    PopupMenu1: TPopupMenu;
    atnPrescriptionEdit1: TMenuItem;
    CopyPrescription1: TMenuItem;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel32: TppLabel;
    ppDBText7: TppDBText;
    ppLabel33: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    RzButton1: TRzButton;
    grdRxListPerPatientVisitDate_dat: TdxDBGridColumn;
    rzEndDate: TRzDateTimeEdit;
    rzStartDate: TRzDateTimeEdit;
    Label2: TLabel;
    Label3: TLabel;
    grdPatientspersonTransferredInDate_dat: TdxDBGridColumn;
    grdPatientspersonTransferredInFrom_str: TdxDBGridColumn;
    ppDBBarCode1: TppDBBarCode;
    ppDBBarCode2: TppDBBarCode;
    grdPatientspersonIDNumber_Str: TdxDBGridColumn;
    grdPatientsClassification_str: TdxDBGridColumn;
    pnl_Image_Header: TRzLabel;
    ppLabel34: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    atnFindPatients: TAction;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    Label23: TLabel;
    RzEdit1: TRzEdit;
    RzEdit3: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit4: TRzEdit;
    RzEdit5: TRzEdit;
    cmbPatientActive: TComboBox;
    Button1: TButton;
    btnSearchPaab: TRzButton;
    btnRefresh: TRzButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    lblstatus: TLabel;
    Stp_AddPatient: TADOStoredProc;
    lblInterfaceResult: TLabel;
    qryPatientHopping: TADOQuery;
    grdPatientspersonDOB_Dat: TdxDBGridColumn;
    ElSpeedButton19: TElSpeedButton;
    btnPrint: TRzBmpButton;
    procedure atnPatient_AddExecute(Sender: TObject);
    procedure atnPatient_EditExecute(Sender: TObject);
    procedure atnPrntPrescribersByNameExecute(Sender: TObject);
    procedure atnPrntPrescribersByNumberExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atnPrntPrescribersByClinicExecute(Sender: TObject);
    procedure atnPatient_DeleteExecute(Sender: TObject);
    procedure atnPatientDisplayColumnsExecute(Sender: TObject);
    procedure atnPatientRxDisplayColumnsExecute(Sender: TObject);
    procedure atnPrintPatientBIODataSheetExecute(Sender: TObject);
    procedure atnPrescription_EditExecute(Sender: TObject);
    procedure btnSearchPaabClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure atnCopyRxExecute(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure qryPatientsAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure atnFindPatientsExecute(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit3Change(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzEdit4Change(Sender: TObject);
    procedure RzEdit5Change(Sender: TObject);
    
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    FUserID : string;
    FUserUniqueName: string;
    FUserPin: string;
    FUserName: string;
    FUserClinic: string;
    function GetCurrentPrescriptionID: string;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    procedure ActionSettings;
    function GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string; PatientActive: string): string;
    procedure CheckEnableSearch;
    { Private declarations }
  public
    procedure Close;
    procedure Delete(ID: string; askToDelete : boolean = true);
    procedure EditPrescription;
    procedure DeletePatient;
    procedure Open;
    procedure Print(printWhat : integer);
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    procedure SetGridRegistry;
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    procedure FuncRefresh; //SM
    procedure OpenPatientRxList;//SM
    function WasPatientAtOtherClinics(patientID: string; clinic: string): Boolean;
    { Public declarations }
  end;


var
  PrescriberList: TPatientManagerFrm;

implementation

uses RxSolutionUFrm, DialogGridColumnSelectorUFrm, DLLInterface, MainUDM;

{$R *.dfm}

procedure TPatientManagerFrm.ActionSettings; //SM  15 Jan 08
var
 atnEnabled : Boolean;
begin

 with RxSolutionFrm.Security do
  atnEnabled := GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) > USER_BROWSER;
 atnPatient_Add.Enabled         := atnEnabled ;
 atnPatient_Delete.Enabled      := atnEnabled;

end;


procedure TPatientManagerFrm.atnPatient_AddExecute(Sender: TObject);
var
 ID : string;
begin

  RxSolutionFrm.Patient.Add(RxSolutionFrm.Security);
//  TDLLInterface.Patient__Add(FDbConnectionString, RxSolutionFrm.Security);
   {
  qryPatients.Open;
  
  Refresh_DataSet(qryPatients, 'person_ID');
  //SM
  qryFindLastAddedPatient.Active := True;
  ID := qryFindLastAddedPatient.FieldByName('person_Id').AsString;
  qryPatients.Locate('person_ID', ID, []);
  qryFindLastAddedPatient.Active := False;
  }  //SM
end;

procedure TPatientManagerFrm.atnPatient_EditExecute(Sender: TObject);
var
  ID : string;
begin
  //************ SM Check if record set active and record count > 0
  if (qryPatients.Active) then
   if (qryPatients.RecordCount > 0) then
    begin
    ID := qryPatients.FieldByName('person_ID').AsString;
    if ID <> '' then
     begin
     WasPatientAtOtherClinics(ID, FUserClinic);
     RxSolutionFrm.Patient.Edit(ID, RxSolutionFrm.Security);
     //TDLLInterface.Patient__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
     Refresh_DataSet(qryPatients, 'person_ID');
     end;
    end;
    
end;

procedure TPatientManagerFrm.atnPrntPrescribersByNameExecute(Sender: TObject);
begin
  Print(0);
end;

procedure TPatientManagerFrm.atnPrntPrescribersByNumberExecute(Sender: TObject);
begin
  Print(2);
end;

procedure TPatientManagerFrm.Close;
begin

  conPatient.Close;

end;

procedure TPatientManagerFrm.Open;
var
  Server, DB :String;

begin

  FLoading := True; // stops connection to Rxstore on every record scroll

  grdRxListPerPatient.Align := alClient;
//  grdPatients.Align         := alClient;

  conPatient.Close;
  conPatient.ConnectionString := FDbConnectionString;
//  qryPatients.Open;
  qryRxList.Close;
  Floading := False;
  ActionSettings;
end;

procedure TPatientManagerFrm.Print(printWhat : integer);
begin

  TDLLInterface.Print__PatientList(FDbConnectionString, printWhat, grdPatients.Filter.FilterText);

end;

procedure TPatientManagerFrm.Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
var
  curRecord :String;
begin

  try
  with DataSet do
    try
    DisableControls;
    curRecord := FieldByName(PrimaryKeyField).AsString;
    Close;
    Open;
    Last;
    while not BOF do
      begin
      if FieldByName(PrimaryKeyField).AsString = curRecord then Break;
      Prior;
      end;
    finally
    EnableControls;
    end;
  except
  end;

end;

procedure TPatientManagerFrm.SetDbConnectionString(const Value: string);
begin
  conPatient.Close;
  conPatient.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TPatientManagerFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TPatientManagerFrm.FormCreate(Sender: TObject);
var
    atnCanEdit : Boolean;
begin
  SetGridRegistry;
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open;

  //MC - 30/03/2012
  with RxSolutionFrm.Security do
   atnCanEdit := (GetUserAccessLevel(MODULE_DISPENSING_PATIENTS) > USER_BROWSER);

  atnPatient_Add.Enabled        := atnCanEdit;
  atnPatient_Delete.Enabled     := atnCanEdit;

  btnSearchPaab.Visible := FileExists('PaabInterface\Paab.exe');
  btnRefresh.Visible := FileExists('PaabInterface\Paab.exe');
  
end;

procedure TPatientManagerFrm.atnPrntPrescribersByClinicExecute(
  Sender: TObject);
begin
  Print(1);
end;


procedure TPatientManagerFrm.atnPatient_DeleteExecute(Sender: TObject);
begin

 if not qryRxList.Active then
   OpenPatientRxList;
 if qryRxList.RecordCount < 1 then
  DeletePatient
 else
  ShowMessage('Cannot delete patient with active prescriptions');

end;

procedure TPatientManagerFrm.Screen_Resize;
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

  pnl_Image_Header.Left               := 68;
  pnl_Image_Header.Top                := (STEP * 2);

  LeftPnl   := pnl_Main_PatientListPanel;
  RightPnl  := pnl_Main_QuestionnairePanel;

  if RightPnl.Visible then
    begin
    pnlWid := (curWid - (STEP * 5)) div 6;
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid * 4;

    RightPnl.Left         := LeftPnl.Left + LeftPnl.Width + (STEP * 1);
    RightPnl.Top          := pnl_Image_Header.Top + pnl_Image_Header.Height;
    RightPnl.Height       := curHgt - (LeftPnl.Top + (STEP * 2));
    RightPnl.Width        := pnlWid * 2;
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

  grdPatients.Top       := 70;
  grdPatients.Left      := STEP;
  grdPatients.Width     := curWid - (STEP * 2);
  grdPatients.Height    := curHgt - (grdPatients.Top + STEP);
                                                                      

end;

procedure TPatientManagerFrm.atnPatientDisplayColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdPatients);
end;

procedure TPatientManagerFrm.atnPatientRxDisplayColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdRxListPerPatient);
end;

procedure TPatientManagerFrm.SetGridRegistry;
begin

//  grdPatients.RegistryPath := RxSolutionFrm.RegistryMainPath + '\Grid\Patient\' + grdPatients.Name;
//  grdRxListPerPatient.RegistryPath := RxSolutionFrm.RegistryMainPath + '\Grid\Patient\' + grdRxListPerPatient.Name;

end;

procedure TPatientManagerFrm.atnPrintPatientBIODataSheetExecute(
  Sender: TObject);
begin

 if qryPatients.Active then
  if qryPatients.RecordCount > 0 then
   ppReportBioDataSheet.Print;

end;

procedure TPatientManagerFrm.EditPrescription;
var
  ID : string;
  atnBrowse: Boolean;
begin

  if qryRxList.Active then
    if qryRxList.RecordCount > 0 then
      begin
      ID := GetCurrentPrescriptionID;
       with RxSolutionFrm.Security do
        atnBrowse := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) > USER_BROWSER) and ((GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) > USER_BROWSER));
//      RxSolutionFrm.RX.Edit(ID, atnBrowse);

           //TDLLInterface.Prescription__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
      end;

end;

function TPatientManagerFrm.GetCurrentPrescriptionID: string;
begin
  Result := qryRxList.FieldByName('prescription_ID').AsString;
end;

procedure TPatientManagerFrm.atnPrescription_EditExecute(Sender: TObject);
begin

  EditPrescription;

end;

procedure TPatientManagerFrm.Delete(ID: string; askToDelete : boolean = true);
var
  AddQry :TADOQuery;
  myConn  :TADOConnection;
  doDelete    : Boolean;
  delMsg      : String;

begin

  if FDbConnectionString <> '' then
    begin
    doDelete := False;
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := FDbConnectionString;
    myConn.LoginPrompt := False;
    AddQry := TADOQuery.Create(nil);
    with AddQry do
      try
      AddQry.Connection := myConn;
      myConn.Open;

      if askToDelete then
        begin
        AddQry.SQL.Add('select * from tblPerson where person_ID  = ''' + ID + '''');
        //AddQry.Parameters.ParamByName('PID').Value := ID;
        AddQry.Open;
        delMsg := 'Delete ' + ' - [' + AddQry.FieldByName('personLastName_Str').AsString + ']';
        if MessageDlg(delMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then doDelete := True;
        end
        else
        doDelete := True;

      if doDelete then
        begin
        myConn.BeginTrans;

        try
        AddQry.Close;
        AddQry.SQL.Add('delete from tblPerson where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
//        AddQry.Close;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPosition where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;


        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonQualification where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonSignature where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPhoto where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonMedicalAid where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonLaboratoryResult where personID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonAllergy where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonComment where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
          AddQry.SQL.Add('delete from tblPersonWeight where person_ID = ''' + ID + '''');
          AddQry.ExecSQL;

          myConn.CommitTrans;

          except
            on E:EDatabaseError do myConn.RollbackTrans;
          end;

        end;
      myConn.Close;
      finally
        AddQry.Free;
        myConn.Free;
      end;
    end;

end;

procedure TPatientManagerFrm.DeletePatient;
var
  prvID : string;
begin

  prvID := qryPatients.fieldByName('person_ID').AsString;
  if prvID <> '' then
    begin
    Delete(prvID);
    //TDLLInterface.Patient__Delete(FDbConnectionString, prvID, RxSolutionFrm.Security, True);
    Refresh_DataSet(qryPatients, 'person_ID');
    end;

end;

procedure TPatientManagerFrm.FuncRefresh;
var
 ID : String;
begin
 Open;
 grdPatients.Refresh;
 //SM
  qryFindLastAddedPatient.Active := True;
  ID := qryFindLastAddedPatient.FieldByName('person_Id').AsString;
  qryPatients.Locate('person_ID', ID, []);
  qryFindLastAddedPatient.Active := False;
  //SM
end;

//SM for Paab interface...
procedure TPatientManagerFrm.btnSearchPaabClick(Sender: TObject);
begin
 qryPatients.Close;
   with rzvFileLaunchUtil do
    try
    FileName :=  'PaabInterface\Paab.exe';
    StartDir := ExtractFilePath(Application.ExeName);
    Launch;
    except
    {  on E : Exception do MessageDlg(e.Message, mtWarning, [mbOK], 0);}
     ShowMessage('Error');
    end;
 qryPatients.Open;
end;

procedure TPatientManagerFrm.btnRefreshClick(Sender: TObject);
begin
 FuncRefresh;
end;

procedure TPatientManagerFrm.atnCopyRxExecute(Sender: TObject);
var ID: string;
begin
  if qryRxList.Active then
    if qryRxList.RecordCount > 0 then
      begin
      ID := GetCurrentPrescriptionID;
      RxSolutionFrm.RX.CopyRx(ID, FUserUniqueName, FUserPin);
      //TDLLInterface.Prescription__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
      end;
end;

procedure TPatientManagerFrm.RzButton1Click(Sender: TObject);
begin

 OpenPatientRxList;

end;

procedure TPatientManagerFrm.OpenPatientRxList;
begin

if qryPatients.Active = True then
  begin
  qryRxList.Close;
  qryRxList.Parameters.ParamByName('@StartDate').Value      := rzStartDate.Date;
  qryRxList.Parameters.ParamByName('@EndDate').Value        := rzEndDate.Date;
  qryRxList.Open;
  end;

end;

procedure TPatientManagerFrm.qryPatientsAfterScroll(DataSet: TDataSet);
begin
 if qryRxList.Active = True then
   qryRxList.Close;
end;

procedure TPatientManagerFrm.FormShow(Sender: TObject);
begin

 RzEdit4.SetFocus;
 
 with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);
    end;
    
 CheckEnableSearch;
 //set date filters here
 //set start to today's date - 60 days
 rzStartDate.Date := Now - 60;
 //end date to today's date + 30 days
 rzEndDate.Date := Now + 30;

 //********* 27 August 2013
 //********* SM Dis-able some search columns if Delta9 Patient Integration used
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

function TPatientManagerFrm.GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string; PatientActive: string): string;
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

procedure TPatientManagerFrm.atnFindPatientsExecute(Sender: TObject);
var
 vPatientActive : string;
 _delta9 : TDelta9;
 retMessage, updMessage : TMessageResult;
 vConn : string;
 vResult: string;
begin

 vConn := 'Persist Security Info=True;User ID=' + RxSolutionFrm.DatabaseSession.Username
   + ';Initial Catalog='+ RxSolutionFrm.DatabaseSession.DB + ';Data Source='+ RxSolutionFrm.DatabaseSession.Server
   + ';Password='+ RxSolutionFrm.DatabaseSession.Password;


 vPatientActive := cmbPatientActive.Text;

  //********* 27 August 2013
  //********* If system has Delta9 Patient integration then:
  //********* Search for patient; if found then Add patient to db then open it datagrid
  if ((RxSolutionFrm.FUseDelta9Integration)) then
     begin

     _delta9 := TDelta9.Create(vConn);
     //********* Search and Update Patient Details
     retMessage := _delta9.UpdateRxPatientFromD9ByFolderNumber(Trim(RzEdit5.Text));

     if (retMessage.Response.Success) then
       begin
       lblInterfaceResult.Caption := 'Patient file found from Delta 9';
       end
     else
       lblInterfaceResult.Caption := 'No File found from Delta 9';

     _delta9.Free;
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

  //************ SM 21 Feb 2013
  //************ New Search Function
  //GetSearchStringALL(IPN: string; Lastname: string; Firstname:string; IDNumber:string; PAS: string): string;

  with qryPatients do
    begin
    Close;
    SQL.Clear;
    SQL.Add(GetSearchStringALL(Trim(RzEdit2.Text), Trim(RzEdit1.Text), Trim(RzEdit3.Text), Trim(RzEdit4.Text), Trim(RzEdit5.Text), vPatientActive));
    Open;
    //********** Update search Status Result
    lblstatus.Caption := IntToStr(RecordCount) + ' patient(s) found.';
    end;

end;

function TPatientManagerFrm.WasPatientAtOtherClinics(patientID: string; clinic: string): Boolean;
var
 lastClinic: string;
 lastVisitDate: string;
begin

 Result := False;

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
   lastVisitDate        := FieldByName('date_dat').AsString;
   MessageDlg('The patient was last seen at ' + lastClinic + ' on ' + lastVisitDate, mtWarning, [mbOk], 0);
   Result := True;
   end
  else
   Result := False;

  Close;
  end;

end;

procedure TPatientManagerFrm.CheckEnableSearch;
var
 vEnable : Boolean;
 vStringConc : string;
begin

 vEnable := False;
 vStringConc := (Trim(RzEdit1.Text)) + (Trim(RzEdit2.Text)) + (Trim(RzEdit3.Text)) + (Trim(RzEdit4.Text)) + (Trim(RzEdit5.Text));
 if Length(vStringConc) > 0 then
  vEnable := True;

 //********* USer can only use the Find Patient function if you have Browse or Access Rights
 atnFindPatients.Enabled := (vEnable);

end;

procedure TPatientManagerFrm.RzEdit1Change(Sender: TObject);
begin
  CheckEnableSearch;
end;

procedure TPatientManagerFrm.RzEdit3Change(Sender: TObject);
begin
 CheckEnableSearch;
end;

procedure TPatientManagerFrm.RzEdit2Change(Sender: TObject);
begin
 CheckEnableSearch;
end;

procedure TPatientManagerFrm.RzEdit4Change(Sender: TObject);
begin
 CheckEnableSearch;
end;

procedure TPatientManagerFrm.RzEdit5Change(Sender: TObject);
begin
 CheckEnableSearch;
end;

end.

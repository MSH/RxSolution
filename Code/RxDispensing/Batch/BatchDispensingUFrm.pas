unit BatchDispensingUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  SystemConstants, ComObj, DateUtils,  
  Dialogs, StdCtrls, jpeg, ppBands, ppClass, ppCtrls, ppVar, ppMemo,
  ppPrnabl, ppStrtch, ppRegion, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, DB, RzCommon, ADODB, Menus, ActnList, RzDBEdit,
  dxDBTLCl, dxGrClms, RzButton, dxDBCtrl, dxDBGrid, RzPanel, DBCtrls,
  RzDBNav, RzDlgBtn, Mask, RzEdit, dxTL, dxCntner, RzGroupBar, RzLabel,
  ExtCtrls, dxExEdtr, RxSolutionSecurityClass, ElPopBtn, ComCtrls, RzBckgnd,
  Grids, DBGrids, ppParameter, RzBmpBtn;

type
  TBatchDispensingFrm = class(TForm)
    ActionList1: TActionList;
    atnPrescription_Edit: TAction;
    atnPrescription_Refresh: TAction;
    atnPrintBatch01Picking: TAction;
    atnPrintBatch02Picklist: TAction;
    atnPrintBatch03DeliveryConfirmation: TAction;
    atnPrintBatch04CollectionConfirmation: TAction;
    atnPrintBatch05Labels: TAction;
    pmPrinting: TPopupMenu;
    PickingSchedule1: TMenuItem;
    PickListforDeliveryRoute1: TMenuItem;
    DeliveryConfirmationListforDeliveryRoute1: TMenuItem;
    ClinicRxSummaryforDeliveryRoute1: TMenuItem;
    conRoute: TADOConnection;
    qryBatchRxList: TADOQuery;
    dsqryBatchRxList: TDataSource;
    qryBatchRxListSummary: TADOQuery;
    dsqryBatchRxListSummary: TDataSource;
    atnRouteRefreshAll: TAction;
    atnPrintBatch06AddressLabels: TAction;
    BatchAddresslabels1: TMenuItem;
    atnPrescription_Post: TAction;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    Refresh1: TMenuItem;
    PostRx1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    BatchPickingSchedule1: TMenuItem;
    BatchPickingLists1: TMenuItem;
    BatchDeliveryConfirmationList1: TMenuItem;
    BatchLabels1: TMenuItem;
    BatchAddresslabels2: TMenuItem;
    atnBatch_Display: TAction;
    qryBatchRxListSummaryrouteName_str: TWideStringField;
    qryBatchRxListSummaryCostTotal: TBCDField;
    qryBatchRxListSummaryCostAvg: TBCDField;
    qryBatchRxListSummaryCostMax: TBCDField;
    qryBatchRxListSummaryCostMin: TBCDField;
    qryBatchRxListSummaryRxCount: TIntegerField;
    qryBatchRxListSummaryItemTotal: TIntegerField;
    qryBatchRxListSummaryItemAvg: TIntegerField;
    qryBatchRxListSummaryItemMax: TIntegerField;
    qryBatchRxListSummaryItemMin: TIntegerField;
    rxItems: TADOQuery;
    dsRxitems: TDataSource;
    qryBatchRxListrouteName_str: TWideStringField;
    qryBatchRxListprescriber_ID: TGuidField;
    qryBatchRxListprescriberName_Str: TWideStringField;
    qryBatchRxListpatient_ID: TGuidField;
    qryBatchRxListpatientName_Str: TWideStringField;
    qryBatchRxListfolderNumber_Str: TWideStringField;
    qryBatchRxListdispenser_ID: TGuidField;
    qryBatchRxListdispenserName_Str: TWideStringField;
    qryBatchRxListrepeats_Int: TIntegerField;
    qryBatchRxListrepeatNo_Int: TIntegerField;
    qryBatchRxListprescribedAuthorisedBy_Str: TWideStringField;
    qryBatchRxListdispensedAuthorisedBy_Str: TWideStringField;
    qryBatchRxListprescriptionCost_Mon: TBCDField;
    qryBatchRxListprescriptionItemsCount_Int: TIntegerField;
    qryBatchRxListprescriptionActive_bol: TBooleanField;
    qryBatchRxListbatchIsBatched_bol: TBooleanField;
    qryBatchRxListdispensingAuthorised_bol: TBooleanField;
    qryBatchRxListprescriptionAuthorised_bol: TBooleanField;
    qryBatchRxListdispensingCollected_bol: TBooleanField;
    qryBatchRxListdispensingPicked_bol: TBooleanField;
    qryBatchRxListbatchIsCollated_bol: TBooleanField;
    qryBatchRxListbatchIsShipped_bol: TBooleanField;
    qryBatchRxListdispensingPosted_bol: TBooleanField;
    qryBatchRxListprescription_ID_Original: TGuidField;
    qryBatchRxListprescription_ID: TGuidField;
    qryBatchRxListprescriptionNumber_Str: TWideStringField;
    qryBatchRxListdate_Dat: TDateTimeField;
    qryBatchRxListrepeatDate_dat: TDateTimeField;
    qryBatchRxListdownRefRoute_ID: TGuidField;
    qryBatchRxListDemanderName_Str: TWideStringField;
    qryBatchRxListclinicName_str: TWideStringField;
    qryBatchRxListclinic_str: TWideStringField;
    ppDBRX: TppDBPipeline;
    qryRXPrint: TADOQuery;
    dsqryRXPrint: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape9: TppShape;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppShape10: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppShape11: TppShape;
    ppDBText15: TppDBText;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppImage2: TppImage;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppDBText30: TppDBText;
    ppLabel6: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion7: TppRegion;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText35: TppDBText;
    ppLine5: TppLine;
    ppDBText36: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText38: TppDBText;
    ppLabel15: TppLabel;
    ppDBText39: TppDBText;
    ppLabel17: TppLabel;
    ppDBText40: TppDBText;
    ppRegion9: TppRegion;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppDBText41: TppDBText;
    ppRegion10: TppRegion;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppRegion11: TppRegion;
    ppLabel29: TppLabel;
    ppLine7: TppLine;
    ppDBText42: TppDBText;
    ppLine10: TppLine;
    ppLabel32: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel33: TppLabel;
    ppDBText47: TppDBText;
    ppLabel34: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppRegion12: TppRegion;
    ppDBCalc2: TppDBCalc;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText48: TppDBText;
    ppRegion13: TppRegion;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine11: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText51: TppDBText;
    ppRegion14: TppRegion;
    ppLabel48: TppLabel;
    ppLine12: TppLine;
    ppLabel49: TppLabel;
    ppShape30: TppShape;
    ppLabel51: TppLabel;
    ppShape31: TppShape;
    ppLabel52: TppLabel;
    ppShape32: TppShape;
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Main_RoutePanel: TPanel;
    Label83: TLabel;
    RzBackground1: TRzBackground;
    lblSourceSelection: TLabel;
    lblClinicSelection: TLabel;
    lblRouteTo: TLabel;
    lblRouteFrom: TLabel;
    lblSelectRoute: TLabel;
    Shape2: TShape;
    lblDrugSchedule: TLabel;
    lblDrugATC: TLabel;
    lblIndication: TLabel;
    Label1: TLabel;
    rzsLine01: TRzSeparator;
    Label2: TLabel;
    rzsLine02: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    ElSpeedButton19: TElSpeedButton;
    cmbRouteSelection: TComboBox;
    dteRouteFrom: TDateTimePicker;
    dteRouteTo: TDateTimePicker;
    cmbClinicSelection: TComboBox;
    cmbSourceOfRx: TComboBox;
    cmbDrugSchedule: TComboBox;
    cmbDrugATC: TComboBox;
    cmbIndication: TComboBox;
    pnl_Main_RouteRxPanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton17: TElSpeedButton;
    dxgBatchRx: TdxDBGrid;
    dxgBatchRxprescriberName_Str: TdxDBGridColumn;
    dxgBatchRxdispenserName_Str: TdxDBGridColumn;
    dxgBatchRxprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    dxgBatchRxdate_Dat: TdxDBGridDateColumn;
    dxgBatchRxprescriptionNumber_Str: TdxDBGridColumn;
    dxgBatchRxPatientName_str: TdxDBGridColumn;
    dxgBatchRxbatchIsShipped_bol: TdxDBGridCheckColumn;
    dxgBatchRxrepeats_Int: TdxDBGridMaskColumn;
    dxgBatchRxrepeatNo_Int: TdxDBGridMaskColumn;
    dxgBatchRxprescriptionItemsCount_Int: TdxDBGridMaskColumn;
    dxgBatchRxbatchIsCollated_bol: TdxDBGridCheckColumn;
    dxgBatchRxdispensingCollected_bol: TdxDBGridCheckColumn;
    dxgBatchRxdispensingPicked_bol: TdxDBGridCheckColumn;
    dxgBatchRxDemanderName_Str: TdxDBGridColumn;
    dxgBatchRxclinicName_str: TdxDBGridColumn;
    dxgBatchRxdispensingPosted_bol: TdxDBGridCheckColumn;
    ppRX: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape2: TppShape;
    ppDBText26: TppDBText;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppDBText23: TppDBText;
    ppDBText22: TppDBText;
    ppDBText6: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppDBText29: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppImage1: TppImage;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel8: TppLabel;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppReportCopyright: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppRegion3: TppRegion;
    ppLabel9: TppLabel;
    ppLabel16: TppLabel;
    ppDBText37: TppDBText;
    ppDBText43: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText46: TppDBText;
    ppLine8: TppLine;
    ppDBText49: TppDBText;
    ppLabel23: TppLabel;
    ppLabel20: TppLabel;
    ppDBText50: TppDBText;
    ppLabel30: TppLabel;
    ppDBText52: TppDBText;
    ppLabel43: TppLabel;
    ppDBText92: TppDBText;
    ppRegion1: TppRegion;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppDBText3: TppDBText;
    ppRegion5: TppRegion;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppRegion2: TppRegion;
    ppLabel50: TppLabel;
    ppLine15: TppLine;
    ppDBText72: TppDBText;
    ppLine16: TppLine;
    ppLabel54: TppLabel;
    ppDBText76: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppRegion4: TppRegion;
    ppDBCalc1: TppDBCalc;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText2: TppDBText;
    ppRegion6: TppRegion;
    ppShape8: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape15: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine18: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppShape14: TppShape;
    ppShape16: TppShape;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDBText78: TppDBText;
    ppRegion8: TppRegion;
    ppLabel87: TppLabel;
    ppLine19: TppLine;
    ppLabel88: TppLabel;
    ppShape17: TppShape;
    ppLabel89: TppLabel;
    ppShape18: TppShape;
    ppLabel90: TppLabel;
    ppShape19: TppShape;
    ppParameterList1: TppParameterList;
    atnPrintBatchCheckList: TAction;
    BatchDeliveryCheckList1: TMenuItem;
    BatchDeliveryCheckList2: TMenuItem;
    atnPrintBatchRxSummary: TAction;
    BatchBatchsummaryList1: TMenuItem;
    BatchBatchsummaryList2: TMenuItem;
    atnPrintBatchProducts: TAction;
    BatchProductList1: TMenuItem;
    BatchProductList2: TMenuItem;
    pnl_Image_Header: TRzLabel;
    lblPostStatus: TLabel;
    cmbPostStatus: TComboBox;
    lblShipStatus: TLabel;
    cmbShipStatus: TComboBox;
    Batch1: TMenuItem;
    atnADTLabels: TAction;
    atnEditPatientLabels: TAction;
    ppEditLabelsMenu: TPopupMenu;
    EditPatientLabels1: TMenuItem;
    N3: TMenuItem;
    EditPatientLabels2: TMenuItem;
    atnEditTrailerLabel: TAction;
    atnEditAddressLabel: TAction;
    EditAddressLabel1: TMenuItem;
    EditTrailerLabel1: TMenuItem;
    RzBmpButton1: TRzBmpButton;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbRouteSelectionChange(Sender: TObject);
    procedure dteRouteFromChange(Sender: TObject);
    procedure dteRouteToChange(Sender: TObject);
    procedure atnPrintBatch01PickingExecute(Sender: TObject);
    procedure cmbClinicSelectionChange(Sender: TObject);
    procedure cmbSourceOfRxChange(Sender: TObject);
    procedure atnPrescription_EditExecute(Sender: TObject);
    procedure atnRouteRefreshAllExecute(Sender: TObject);
    procedure atnPrintBatch03DeliveryConfirmationExecute(Sender: TObject);
    procedure atnPrintBatch02PicklistExecute(Sender: TObject);
    procedure atnPrintBatch05LabelsExecute(Sender: TObject);
    procedure atnPrintBatch06AddressLabelsExecute(Sender: TObject);
    procedure atnPrescription_PostExecute(Sender: TObject);
    procedure atnBatch_DisplayExecute(Sender: TObject);
    procedure atnPrescription_RefreshExecute(Sender: TObject);
    procedure atnPrintBatchCheckListExecute(Sender: TObject);
    procedure atnPrintBatchRxSummaryExecute(Sender: TObject);
    procedure atnPrintBatchProductsExecute(Sender: TObject);
    procedure cmbPostStatusChange(Sender: TObject);
    procedure cmbShipStatusChange(Sender: TObject);
    procedure atnADTLabelsExecute(Sender: TObject);
    procedure DeliveryConfirmationListforDeliveryRoute1Click(
      Sender: TObject);
    procedure atnEditPatientLabelsExecute(Sender: TObject);
    procedure atnEditTrailerLabelExecute(Sender: TObject);
    procedure atnEditAddressLabelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FATCList: TStringList;
    FClinicList: TStringList;
    FDbConnectionString: string;
    FDispenseAuthorise: string;
    FIndicationList: TStringList;
    FPrescriptionAuthorise: string;
    FRouteList: TStringList;
    FRxOriginList: TStringList;
    FScheduleList: TStringList;
    function GetCurrentPrescriptionID: string;
    procedure GetListOfRoutes(var prmRouteList : TStringList);
    procedure GetListOfClinics(var prmClinicList : TStringList ; const prmRouteName
        : String);
    procedure GetListOfRxOrigins(var prmOriginsList : TStringList ; const
        prmRouteName : String ; prmDateFrom, prmDateTo : TDateTime);
    procedure GetListOfATC(var prmATCList : TStringList ; const prmRouteName :
        String  ; prmDateFrom, prmDateTo : TDateTime);
    procedure GetRxData(prmRouteName : string ; prmDateFrom, prmDateTo : TDateTime
        ;prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, Posted, shipped : string);
    procedure GetRxDataSummary(prmRouteName : string ; prmDateFrom, prmDateTo :
        TDateTime ; prmClinic, prmRxOrigin, Posted : string);
    procedure LoadClinics;
    procedure LoadATC;
    procedure LoadSchedule;
    procedure LoadIndication;
    procedure LoadDates;
    procedure LoadOrigins;
    procedure LoadRoutes;
    procedure LoadRxData;
    procedure Prescription_Edit;
    procedure Prescription_Post;
    procedure PrintBatch01;
    procedure PrintBatch03;
    procedure PrintBatch02;
    procedure PrintBatch05;
    procedure PrintBatch06;
    procedure PrintBatch07;
    procedure PrintBatch08;
    procedure PrintBatch09;
    procedure PrintBatch10;
    procedure PrintBatch11;
    procedure PrintBatch12;
    procedure PrintBatch13;

    //mc mankga - 12/02/2013
    procedure PrintBatch14;
    
    //function PrintShipped: Boolean;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    procedure EditBatchPatientLabels(vOption: integer);
    
    { Private declarations }
  public
    procedure Close;
    procedure LoadData(const prmStage : integer = 0);
    procedure Open;
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  BatchDispensingFrm: TBatchDispensingFrm;

implementation

uses RxSolutionUFrm, DLLInterface, DialogGridColumnSelectorUFrm;

{$R *.dfm}


procedure TBatchDispensingFrm.Close;
begin
  conRoute.Close;
  if Assigned(FRouteList) then FRouteList.Free;
  if Assigned(FClinicList) then FClinicList.Free;
  if Assigned(FRxOriginList) then FRxOriginList.Free;
  if Assigned(FATCList) then FATCList.Free;
  if Assigned(FScheduleList) then FScheduleList.Free;
  if Assigned(FIndicationList) then FIndicationList.Free;

end;

function TBatchDispensingFrm.GetCurrentPrescriptionID: string;
begin
  Result := '';
  Result := qryBatchRxList.fieldByName('prescription_ID').AsString;
end;

procedure TBatchDispensingFrm.Open;
begin

  dxgBatchRx.Align := alClient;

  conRoute.Close;
  conRoute.ConnectionString := FDbConnectionString;

  // Create Stringlists before use.
  FRouteList      := TStringList.Create;
  FClinicList     := TStringList.Create;
  FRxOriginList   := TStringList.Create;
  FATCList        := TStringList.Create;
  FScheduleList   := TStringList.Create;
  FIndicationList := TStringList.Create;

  // Load data
  LoadData;   
end;

procedure TBatchDispensingFrm.Prescription_Edit;
var
  ID : String;
  atnRxCanView, atnRxCanBrowse, atnCanEditLabel: Boolean;
  FUserUniqueName, FUserPin: string;
begin

  //******* SM - 03 Feb 2013
  with RxSolutionFrm.Security do
   atnRxCanView := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) > USER_BROWSER) and (GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) > USER_BROWSER);

  //******* SM - 03 Feb 2013
  with RxSolutionFrm.Security do
   atnRxCanBrowse := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBING) = USER_BROWSER) and (GetUserAccessLevel(MODULE_DISPENSING_DISPENSING) = USER_BROWSER);

  with RxSolutionFrm.Security do
   atnCanEditLabel := (GetUserAccessLevel(MODULE_LABELCONFIGURATION) > USER_BROWSER);

  FUserUniqueName     := RxSolutionFrm.Security.User.UserName.Value;
  FUserPin            := RxSolutionFrm.Security.User.Password.Value;

  ID := GetCurrentPrescriptionID;
  if ID <> '' then
    begin
    RxSolutionFrm.RX.Edit(ID, (atnRxCanView or atnRxCanBrowse),  FUserUniqueName, atnCanEditLabel, FUserPin);
    //TDLLInterface.Prescription__Edit(FDbConnectionString, ID, RxSolutionFrm.Security);
    Refresh_DataSet(qryBatchRxList, 'prescription_ID');
    end;

end;

procedure TBatchDispensingFrm.Refresh_DataSet(DataSet : TDataset ;
    PrimaryKeyField : String);
var
  curRecord :String;
begin

  try
  with DataSet do
    if Active then
      try
      DisableControls;
      curRecord := FieldByName(PrimaryKeyField).AsString;
      if State in [dsEdit, dsInsert] then Post;
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

procedure TBatchDispensingFrm.SetDbConnectionString(const Value: string);
begin
  conRoute.Close;
  conRoute.ConnectionString := Value;
  FDbConnectionString := Value;
end;

procedure TBatchDispensingFrm.FormResize(Sender: TObject);
begin
   Screen_Resize;
end;

procedure TBatchDispensingFrm.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open;
end;

procedure TBatchDispensingFrm.GetListOfRoutes(var prmRouteList : TStringList);
var
  srchQry   : TADOQuery;
  prvStr    : string;

begin

  try
    prmRouteList.Clear;
//    prmRouteList.Add('<All>');
    prvStr  := 'select * from view_v01_Batch_RouteList';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRoute;
      srchQry.SQL.Add(prvStr);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          prmRouteList.Add(srchQry.FieldByName('routeName_str').AsString);
          next;
          end;
      finally
      srchQry.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBatchDispensingFrm.GetListOfClinics(var prmClinicList : TStringList
    ; const prmRouteName : String);
var
  srchQry   : TADOQuery;
  prvStr    : string;

begin

  try
    prmClinicList.Clear;
    prmClinicList.Add('<All>');
    prvStr  := 'select * from view_v01_Batch_RouteClinicList where routeName_str = :rte';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRoute;
      srchQry.SQL.Add(prvStr);
      srchQry.Parameters.ParamByName('rte').Value := prmRouteName;
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          prmClinicList.Add(srchQry.FieldByName('clinicName_str').AsString);
          next;
          end;
      finally
      srchQry.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBatchDispensingFrm.LoadClinics;
begin

  GetListOfClinics(FClinicList, cmbRouteSelection.Text);
  cmbClinicSelection.Items.Clear;
  cmbClinicSelection.Items.Assign(FClinicList);
  cmbClinicSelection.ItemIndex := 0;

end;

procedure TBatchDispensingFrm.LoadRoutes;
begin

  GetListOfRoutes(FRouteList);
  cmbRouteSelection.Items.Clear;
  cmbRouteSelection.Items.Assign(FRouteList);
  cmbRouteSelection.ItemIndex := 0;

end;


procedure TBatchDispensingFrm.Screen_Resize;
var
  pnlWid: Integer;
  curWid, curHgt  :integer;
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

  pnl_Image_Header.Left               := 70;// (STEP * 2);
  pnl_Image_Header.Top                := (STEP * 2);


  if pnl_Main_RouteRxPanel.Visible then
    begin
    pnlWid := (curWid - (STEP * 5)) div 4;
    pnl_Main_RoutePanel.Left           := (STEP * 2);
    pnl_Main_RoutePanel.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    pnl_Main_RoutePanel.Height         := curHgt - (pnl_Main_RoutePanel.Top + (STEP * 2));
    pnl_Main_RoutePanel.Width          := pnlWid * 1;

    pnl_Main_RouteRxPanel.Left         := pnl_Main_RoutePanel.Left + pnl_Main_RoutePanel.Width + (STEP * 1);
    pnl_Main_RouteRxPanel.Top          := pnl_Image_Header.Top + pnl_Image_Header.Height;
    pnl_Main_RouteRxPanel.Height       := curHgt - (pnl_Main_RoutePanel.Top + (STEP * 2));
    pnl_Main_RouteRxPanel.Width        := pnlWid * 3;
    end else
    begin
    pnlWid := (curWid - (STEP * 2));
    pnl_Main_RoutePanel.Left           := (STEP * 2);
    pnl_Main_RoutePanel.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    pnl_Main_RoutePanel.Height         := curHgt - (pnl_Main_RoutePanel.Top + (STEP * 2));
    pnl_Main_RoutePanel.Width          := pnlWid;
    end;

  // Now the items on the filter panel
  curWid  := pnl_Main_RoutePanel.Width;
  curHgt  := pnl_Main_RoutePanel.Height;

  rzsLine01.Width           := curWid - (STEP * 2);
  cmbRouteSelection.Width   := curWid - (cmbRouteSelection.Left + STEP);
  dteRouteFrom.Width        := curWid - (dteRouteFrom.Left + STEP);
  dteRouteTo.Width          := curWid - (dteRouteTo.Left + STEP);
  cmbClinicSelection.Width  := curWid - (cmbClinicSelection.Left + STEP);
  cmbSourceOfRx.Width       := curWid - (cmbSourceOfRx.Left + STEP);

  rzsLine02.Width           := curWid - (STEP * 2);
  cmbDrugSchedule.Width     := curWid - (cmbDrugSchedule.Left + STEP);
  cmbDrugATC.Width          := curWid - (cmbDrugATC.Left + STEP);
  cmbIndication.Width       := curWid - (cmbIndication.Left + STEP);

end;

procedure TBatchDispensingFrm.cmbRouteSelectionChange(Sender: TObject);
begin
  LoadData(1);
end;

procedure TBatchDispensingFrm.GetListOfRxOrigins(var prmOriginsList :
    TStringList ; const prmRouteName : String ; prmDateFrom, prmDateTo :
    TDateTime);
var
  newStr: string;
  srchQry   : TADOQuery;
  prvStr    : string;

begin

  try
    prmOriginsList.Clear;
    prmOriginsList.Add('<All>');
    prvStr  := 'select * from view_v01_Batch_RxList where (routeName_str = :rxo) and (date_Dat >= :dtefrm) and (date_Dat <= :dteto)';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRoute;
      srchQry.SQL.Add(prvStr);
      srchQry.Parameters.ParamByName('rxo').Value := prmRouteName;
      srchQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
      srchQry.Parameters.ParamByName('dteto').Value := prmDateTo;
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          newStr := srchQry.FieldByName('DemanderName_Str').AsString;
          if prmOriginsList.IndexOf(newStr) = -1 then
            prmOriginsList.Add(newStr);
          next;
          end;
      finally
      srchQry.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBatchDispensingFrm.LoadDates;
begin

  dteRouteFrom.DateTime := StartOfTheWeek(Date);
  dteRouteTo.DateTime   := EndOfTheWeek(Date);

end;

procedure TBatchDispensingFrm.LoadOrigins;
begin
  GetListOfRxOrigins(FRxOriginList, cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date);
  cmbSourceOfRx.Items.Clear;
  cmbSourceOfRx.Items.Assign(FRxOriginList);
  cmbSourceOfRx.ItemIndex := 0;
end;

procedure TBatchDispensingFrm.dteRouteFromChange(Sender: TObject);
begin
  LoadData(3);
end;

procedure TBatchDispensingFrm.dteRouteToChange(Sender: TObject);
begin
  LoadData(3);
end;

procedure TBatchDispensingFrm.GetListOfATC(var prmATCList : TStringList ; const
    prmRouteName : String  ; prmDateFrom, prmDateTo : TDateTime);
var
  newStr: string;
  srchQry   : TADOQuery;
  prvStr    : string;

begin

  try
  {
    prmATCList.Clear;
    prmATCList.Add('<All>');
    prvStr  := 'select * from view_v01_Batch_RxList_ATC where (routeName_str = :rxo) and (date_Dat >= :dtefrm) and (date_Dat <= :dteto)';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRoute;
      srchQry.SQL.Add(prvStr);
      srchQry.Parameters.ParamByName('rxo').Value := prmRouteName;
      srchQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
      srchQry.Parameters.ParamByName('dteto').Value := prmDateTo;
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          newStr := srchQry.FieldByName('ATC_str').AsString;
          if prmATCList.IndexOf(newStr) = -1 then
            prmATCList.Add(newStr);
          next;
          end;
      finally
      srchQry.Free;
      end;
      }
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBatchDispensingFrm.GetRxData(prmRouteName : string ; prmDateFrom,
    prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
    prmIndication, posted, shipped :string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  try

  dataQry := qryBatchRxList;

  prvStr  := 'SELECT * FROM view_v01_Batch_RxList WHERE (routeName_str = :rnme) AND (date_Dat >= :dtefrm) AND (date_Dat <= :dteto) AND (batchIsBatched_bol=1)';
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_Str = :rxo)';
  if posted <> '<All>' then prvStr := prvStr + 'AND (dispensingPosted_bol = :pstatus)';
  if shipped <> '<All>' then prvStr := prvStr + 'AND (batchIsShipped_bol = :sstatus)';


//  if prmSchedule <> '<All>' then prvStr := prvStr + ' AND (tblProductPackSize.LevelOfUse_str = :sch)';
//  if prmATC <> '<All>' then prvStr := prvStr + ' AND (tblProductPackSize.ATC_str = :atc)';
//  if prmIndication <> '<All>' then prvStr := prvStr + ' AND (tblPrescriptionItem.indication_Str = :icd10)';


  dataQry.Close;
  dataQry.Connection := conRoute;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if posted <> '<All>' then dataQry.Parameters.ParamByName('pstatus').Value := StrToBool(posted);
  if shipped <> '<All>' then dataQry.Parameters.ParamByName('sstatus').Value := StrToBool(shipped);
  
//  if prmSchedule <> '<All>' then dataQry.Parameters.ParamByName('sch').Value := prmSchedule;
//  if prmATC <> '<All>' then dataQry.Parameters.ParamByName('atc').Value := prmATC;
//  if prmIndication <> '<All>' then dataQry.Parameters.ParamByName('icd10').Value := prmIndication;

  dataQry.Open;

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBatchDispensingFrm.LoadATC;
begin

  GetListOfATC(FATCList, cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date);
  cmbDrugATC.Items.Clear;
  cmbDrugATC.Items.Assign(FATCList);
  cmbDrugATC.ItemIndex := 0;

end;

procedure TBatchDispensingFrm.LoadSchedule;
begin

//  GetListOfSchedule(FScheduleList, cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date);
//  cmbDrugSchedule.Items.Clear;
//  cmbDrugSchedule.Items.Assign(FScheduleList);
//  cmbDrugSchedule.ItemIndex := 0;

end;

procedure TBatchDispensingFrm.LoadIndication;
begin

//  GetListOfIndications(FIndicationList, cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date);
//  cmbIndication.Items.Clear;
//  cmbIndication.Items.Assign(FIndicationList);
//  cmbIndication.ItemIndex := 0;

end;

procedure TBatchDispensingFrm.LoadRxData;
begin
  GetRxData(cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbDrugSchedule.Text,
            cmbDrugATC.Text, cmbIndication.Text, cmbPostStatus.Text, cmbShipStatus.Text);
  GetRxDataSummary(cmbRouteSelection.Text, dteRouteFrom.Date, dteRouteTo.Date,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbPostStatus.Text);
end;

procedure TBatchDispensingFrm.atnPrintBatch01PickingExecute(
  Sender: TObject);
begin
  PrintBatch01;
end;

procedure TBatchDispensingFrm.PrintBatch01;
begin
  try
  TDLLInterface.Print__Batch_01(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text, cmbPostStatus.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

procedure TBatchDispensingFrm.PrintBatch03;
begin
  try
  TDLLInterface.Print__Batch_03(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

//SM
procedure TBatchDispensingFrm.PrintBatch07;
begin
  try
  TDLLInterface.Print__Batch_07(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

//SM 02 June 2008
procedure TBatchDispensingFrm.PrintBatch08;
begin
  try
  TDLLInterface.Print__Batch_08(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text);

  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

//SM 02 June 2008
procedure TBatchDispensingFrm.PrintBatch09;
begin
  try
  TDLLInterface.Print__Batch_09(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

procedure TBatchDispensingFrm.cmbClinicSelectionChange(Sender: TObject);
begin
  LoadData(2);
end;

procedure TBatchDispensingFrm.cmbSourceOfRxChange(Sender: TObject);
begin
  LoadData(2);
end;

procedure TBatchDispensingFrm.atnPrescription_EditExecute(Sender: TObject);
begin
  Prescription_Edit;
end;

procedure TBatchDispensingFrm.LoadData(const prmStage : integer = 0);
begin
   case prmStage of
    0:  begin
        LoadRoutes;
        LoadClinics;
        LoadDates;
        LoadOrigins;
        LoadATC;
        LoadSchedule;
        LoadIndication;
        LoadRxData;
        end;
    1:  begin
        LoadClinics;
        LoadOrigins;
        LoadATC;
        LoadSchedule;
        LoadIndication;
        LoadRxData;
        end;
    2:  begin
        LoadRxData;
        end;
    3:  begin
        LoadOrigins;
        LoadATC;
        LoadSchedule;
        LoadIndication;
        LoadRxData;
        end;
    end;
end;

procedure TBatchDispensingFrm.atnRouteRefreshAllExecute(Sender: TObject);
begin
  LoadData;
end;

procedure TBatchDispensingFrm.atnPrintBatch03DeliveryConfirmationExecute(
  Sender: TObject);
begin
  PrintBatch03;
end;

procedure TBatchDispensingFrm.PrintBatch02;
begin
  try
  TDLLInterface.Print__Batch_02(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>', cmbShipStatus.Text, cmbPostStatus.Text);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

procedure TBatchDispensingFrm.atnPrintBatch02PicklistExecute(
  Sender: TObject);
var
 FirstPass : Boolean;
begin
PrintBatch02;     //SM
{FirstPass := True;
qryBatchRxList.First;

while not qryBatchRxList.Eof do
 begin
 qryRXPrint.Active := False;
 qryRXPrint.Parameters.ParamByName('prescription_id').Value := qryBatchRxListprescription_ID.Value;
 qryRXPrint.Active := True;

 if FirstPass then
  begin
  ppReport1.ShowPrintDialog := True;
  ppReport1.DeviceType := 'Screen';
  end
 else
  begin
  ppReport1.ShowPrintDialog := False;
  ppReport1.DeviceType := 'Screen';
  end;
 ppReport1.Print;
 qryBatchRxList.Next;

 FirstPass := False;
 end;
        }
end;

procedure TBatchDispensingFrm.PrintBatch05;
begin
  try
  TDLLInterface.Print__Batch_05(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>',cmbShipStatus.Text);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;


//MC - 20/08/2012
procedure TBatchDispensingFrm.PrintBatch11;
begin
  try
  TDLLInterface.Print__Batch_11(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>',cmbShipStatus.Text,qryBatchRxList.fieldByName('prescription_ID').AsString);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;


//MC - 02/02/2013
procedure TBatchDispensingFrm.PrintBatch14;
begin
  try
  TDLLInterface.Print__Batch_14(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>',cmbPostStatus.Text, cmbShipStatus.Text,qryBatchRxList.fieldByName('prescription_ID').AsString);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end; 

procedure TBatchDispensingFrm.PrintBatch10;
begin
  try
  TDLLInterface.Print__Batch_10(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text, cmbPostStatus.Text);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

//MC MANKGA - 20/08/2012
procedure TBatchDispensingFrm.PrintBatch13;
begin
  try
  TDLLInterface.Print__Batch_13(
            FDbConnectionString,
            cmbRouteSelection.Text, dteRouteFrom.DateTime, dteRouteTo.DateTime,
            cmbClinicSelection.Text, cmbSourceOfRx.Text, cmbShipStatus.Text, cmbPostStatus.Text, qryBatchRxList.fieldByName('prescription_ID').AsString);
//            cmbDrugSchedule.Text, cmbDrugATC.Text, cmbIndication.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;


procedure TBatchDispensingFrm.atnPrintBatch05LabelsExecute(
  Sender: TObject);
begin
 PrintBatch05;
end;

procedure TBatchDispensingFrm.atnPrintBatch06AddressLabelsExecute(
  Sender: TObject);
begin
 PrintBatch06;
end;

procedure TBatchDispensingFrm.GetRxDataSummary(prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, posted : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin
{
  try

  dataQry := qryBatchRxListSummary;

  prvStr  :=
    'SELECT     dbo.tblDRRoute.routeName_str, SUM(dbo.TblPrescription.prescriptionCost_Mon) AS CostTotal, AVG(dbo.TblPrescription.prescriptionCost_Mon) ' +
    '                AS CostAvg, MAX(dbo.TblPrescription.prescriptionCost_Mon) AS CostMax, MIN(dbo.TblPrescription.prescriptionCost_Mon) AS CostMin, ' +
    '                COUNT(dbo.TblPrescription.prescriptionNumber_Str) AS RxCount, SUM(dbo.TblPrescription.prescriptionItemsCount_Int) AS ItemTotal, ' +
    '                AVG(dbo.TblPrescription.prescriptionItemsCount_Int) AS ItemAvg, MAX(dbo.TblPrescription.prescriptionItemsCount_Int) AS ItemMax, ' +
    '                MIN(dbo.TblPrescription.prescriptionItemsCount_Int) AS ItemMin ' +
    'FROM         dbo.TblPrescription INNER JOIN ' +
    '                dbo.tblClinic ON dbo.TblPrescription.clinic_ID = dbo.tblClinic.clinic_ID INNER JOIN ' +
    '                dbo.tblDRRoute ON dbo.tblClinic.downRefRoute_ID = dbo.tblDRRoute.downRefRoute_ID ' +
    'WHERE (dbo.TblPrescription.date_Dat >= :dtefrm) AND (dbo.TblPrescription.date_Dat <= :dteTo) ';
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (dbo.tblClinic.clinicName_str = :cln) ';
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (dbo.TblPrescription.complexSiteDescription_str = :rxo) ';
  prvStr  := prvStr +
    'GROUP BY dbo.tblDRRoute.routeName_str ' +
    'HAVING dbo.tblDRRoute.routeName_str = :rnme';

  dataQry.Close;
  dataQry.Connection := conRoute;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;

  dataQry.Open;

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
  }
end;

procedure TBatchDispensingFrm.PrintBatch06;
begin
  try
  TDLLInterface.Print__Batch_06(
            FDbConnectionString, cmbRouteSelection.Text, dteRouteFrom.DateTime,
            dteRouteTo.DateTime, cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>', cmbShipStatus.Text);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

//MC - 20/02/2012
procedure TBatchDispensingFrm.PrintBatch12;
begin
  try
  TDLLInterface.Print__Batch_12(
            FDbConnectionString, cmbRouteSelection.Text, dteRouteFrom.DateTime,
            dteRouteTo.DateTime, cmbClinicSelection.Text, cmbSourceOfRx.Text,
            '<All>', '<All>', '<All>', cmbShipStatus.Text, qryBatchRxList.fieldByName('prescription_ID').AsString);
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;
end;

procedure TBatchDispensingFrm.atnPrescription_PostExecute(Sender: TObject);
begin
with qryBatchRxList do
 begin
 if Active then
  if not FieldByName('dispensingPosted_bol').AsBoolean then
   Prescription_Post;
 end;
end;

procedure TBatchDispensingFrm.Prescription_Post;
var
  ID : String;
begin
  ID := GetCurrentPrescriptionID;
  if ID <> '' then
    begin
    RxSolutionFrm.RX.Post(ID);
    //TDLLInterface.Prescription__Post(FDbConnectionString, ID, RxSolutionFrm.Security);
    Refresh_DataSet(qryBatchRxList, 'prescription_ID');
    end;

end;

procedure TBatchDispensingFrm.atnBatch_DisplayExecute(Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(dxgBatchRx);
end;

procedure TBatchDispensingFrm.atnPrescription_RefreshExecute(
  Sender: TObject);
begin
    Refresh_DataSet(qryBatchRxList, 'prescription_ID');
end;

//function TBatchDispensingFrm.PrintShipped: Boolean;
//begin
//  Result := chbPrintShipped.Checked;
//end;

procedure TBatchDispensingFrm.atnPrintBatchCheckListExecute(
  Sender: TObject);
begin
 PrintBatch07;
end;

procedure TBatchDispensingFrm.atnPrintBatchRxSummaryExecute(
  Sender: TObject);
begin
 PrintBatch08;
end;

procedure TBatchDispensingFrm.atnPrintBatchProductsExecute(
  Sender: TObject);
begin
 PrintBatch09;
end;

procedure TBatchDispensingFrm.cmbPostStatusChange(Sender: TObject);
begin
LoadData(3);
end;

procedure TBatchDispensingFrm.cmbShipStatusChange(Sender: TObject);
begin
 LoadData(3);
end;

//mc mankga - 12/02/2013
procedure TBatchDispensingFrm.atnADTLabelsExecute(Sender: TObject);
var
  i : Integer;
begin

if not dxgBatchRx.DataSource.DataSet.IsEmpty then
 begin
 dxgBatchRx.DataSource.DataSet.First;
 while not dxgBatchRx.DataSource.DataSet.EOF do
 begin
 //PrintBatch11;
 //PrintBatch12;
 //PrintBatch13;
   PrintBatch14;

 dxgBatchRx.DataSource.DataSet.Next;
 end;
 end;
end;

procedure TBatchDispensingFrm.DeliveryConfirmationListforDeliveryRoute1Click(
  Sender: TObject);
begin
 PrintBatch03;
end;

procedure TBatchDispensingFrm.atnEditPatientLabelsExecute(Sender: TObject);
begin
 EditBatchPatientLabels(0);
end;

procedure TBatchDispensingFrm.EditBatchPatientLabels(vOption: integer);
begin
 //********* SM 11 Mar 2013
 //********* Edit Patient Label
  try
  case vOption of
  0:TDLLInterface.Edit__BatchLabels(FDbConnectionString, 0);
  1:TDLLInterface.Edit__BatchLabels(FDbConnectionString, 1);
  2:TDLLInterface.Edit__BatchLabels(FDbConnectionString, 2);
  end;
  except
    on e:Exception do Raise Exception.Create(e.Message);
  end;

end;

procedure TBatchDispensingFrm.atnEditTrailerLabelExecute(Sender: TObject);
begin
 EditBatchPatientLabels(2);
end;

procedure TBatchDispensingFrm.atnEditAddressLabelExecute(Sender: TObject);
begin
 EditBatchPatientLabels(1);
end;

procedure TBatchDispensingFrm.FormShow(Sender: TObject);
var
 canEditLabels: Boolean;
begin

 //************ SM 11 Mar 2013
 //************ Can user edit Labels
 with RxSolutionFrm.Security do
  canEditLabels := (GetUserAccessLevel(MODULE_LABELCONFIGURATION) > USER_BROWSER);

 atnEditPatientLabels.Visible   := canEditLabels;
 atnEditTrailerLabel.Visible    := canEditLabels;
 atnEditAddressLabel.Visible    := canEditLabels;

end;

end.


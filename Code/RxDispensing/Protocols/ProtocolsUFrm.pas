unit ProtocolsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzRadGrp, RzDBRGrp, RzButton, RzRadChk, RzDBChk,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, RzPanel, dxPageControl, DBCtrls,
  RzDBCmbo, StdCtrls, Mask, RzEdit, RzDBEdit, RzDBLbl, RzLabel, ExtCtrls,
  DB, ADODB, ActnList, ImgList, RzCommon, dmpDataObjectManager, ComObj,
  dxExEdtr;

type
  TProtocolsFrm = class(TForm)
    rzcMain: TRzFrameController;
    imgProtocols: TImageList;
    atnProtocols: TActionList;
    atnProtocolRx_Add: TAction;
    atnProtocolRx_Delete: TAction;
    atnProtocolRx_Save: TAction;
    atnProtocolRx_Cancel: TAction;
    atnProtocolRx_Refresh: TAction;
    atnProtocol_Delete: TAction;
    atnProtocol_Add: TAction;
    atnProtocol_Cancel: TAction;
    atnProtocol_Save: TAction;
    atnProtocol_Refresh: TAction;
    Timer1: TTimer;
    conProtocols: TADOConnection;
    qryProtocols: TADOQuery;
    qryProtocolProduct: TADOQuery;
    qryRoute: TADOQuery;
    qryInterval: TADOQuery;
    qryUnit: TADOQuery;
    qrySysProductGenericNames: TADOQuery;
    qryIndication: TADOQuery;
    dsqryIndication: TDataSource;
    dsqrySysProductGenericNames: TDataSource;
    dsqryUnit: TDataSource;
    dsqryInterval: TDataSource;
    dsqryRoute: TDataSource;
    dsqryProtocolProduct: TDataSource;
    dsqryProtocols: TDataSource;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    pnl_Main_Back: TPanel;
    pnl_Main_Blue: TPanel;
    lblProtocolName: TRzDBLabel;
    RzLabel9: TRzLabel;
    lblProtocolDetail: TRzLabel;
    RzDBLabel1: TRzDBLabel;
    rzgProtocol: TRzGroupBox;
    lblProtocolEdit: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    edtProtovolName: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    rzlIndication: TRzDBLookupComboBox;
    pgeDetail: TdxPageControl;
    tbsRegimenDetail: TdxTabSheet;
    lblProtocolRegimen: TRzLabel;
    RzToolbar1: TRzToolbar;
    BtnNew: TRzToolButton;
    BtnSave: TRzToolButton;
    BtnDelete: TRzToolButton;
    RzSpacer1: TRzSpacer;
    BtnRefresh: TRzToolButton;
    RzSpacer3: TRzSpacer;
    BtnRecycle: TRzToolButton;
    rzgRegimen: TRzGroupBox;
    grdProtocolProduct: TdxDBGrid;
    grdProtocolProductdescription_str: TdxDBGridColumn;
    rzgRegimenDetail: TRzGroupBox;
    Label8: TLabel;
    lblDoseA: TLabel;
    Label2: TLabel;
    lblIntervalA: TLabel;
    lblRoute: TLabel;
    lblDuration: TLabel;
    lblDoseB: TLabel;
    lblIntervalB: TLabel;
    lblDosing: TLabel;
    Label7: TLabel;
    lblDailyDose: TLabel;
    lblDailyDoseUnit: TRzDBLabel;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBEdit6: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    rzluRoute: TRzDBLookupComboBox;
    edtDuration: TRzDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    edtDoseB: TRzDBEdit;
    edtIntervalB: TRzDBLookupComboBox;
    rzgrDosing: TRzDBRadioGroup;
    edtDailyDose: TRzDBEdit;
    tbsEvidence: TdxTabSheet;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    grdProtocols: TDBGrid;
    RzToolbar2: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzToolButton5: TRzToolButton;
    RzSpacer4: TRzSpacer;
    rzlIndicationCode: TRzDBLookupComboBox;
    lblDisplayUnit: TLabel;
    qryProductList: TADOQuery;
    dsqryProductList: TDataSource;
    rzcProductList: TRzDBLookupComboBox;
    lblProducts: TLabel;
    procedure atnProtocolRx_AddExecute(Sender: TObject);
    procedure atnProtocolRx_CancelExecute(Sender: TObject);
    procedure atnProtocolRx_DeleteExecute(Sender: TObject);
    procedure atnProtocolRx_RefreshExecute(Sender: TObject);
    procedure atnProtocolRx_SaveExecute(Sender: TObject);
    procedure atnProtocol_AddExecute(Sender: TObject);
    procedure atnProtocol_CancelExecute(Sender: TObject);
    procedure atnProtocol_DeleteExecute(Sender: TObject);
    procedure atnProtocol_RefreshExecute(Sender: TObject);
    procedure atnProtocol_SaveExecute(Sender: TObject);
    procedure qryProtocolProductAfterPost(DataSet: TDataSet);
    procedure qryProtocolProductAfterScroll(DataSet: TDataSet);
    procedure qryProtocolProductBeforePost(DataSet: TDataSet);
    procedure qryProtocolProductNewRecord(DataSet: TDataSet);
    procedure qryProtocolsNewRecord(DataSet: TDataSet);
    procedure RzDBCheckBox1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDataManager: TDataSetManager;
    FDbConnectionString: string;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open(const prmConnectionString : string); overload;
    procedure UpdateEccentricDisplay(prmDisplay : boolean = True);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  ProtocolsFrm: TProtocolsFrm;

implementation

uses RxSolutionUFrm, SystemGeneralMethods,
  rxDispensingPrescriptionItemClasses;

{$R *.dfm}

procedure TProtocolsFrm.atnProtocolRx_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocolProduct'].Add;
end;

procedure TProtocolsFrm.atnProtocolRx_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocolProduct'].Cancel;
end;

procedure TProtocolsFrm.atnProtocolRx_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocolProduct'].Delete;
end;

procedure TProtocolsFrm.atnProtocolRx_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocolProduct'].Save;
  FDataManager.DataSet['qryProtocolProduct'].Refresh;
  FDataManager.DataSet['qryIndication'].Refresh;
end;

procedure TProtocolsFrm.atnProtocolRx_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Save;
  FDataManager.DataSet['qryProtocolProduct'].Save;
  FDataManager.DataSet['qryIndication'].Refresh;
end;

procedure TProtocolsFrm.atnProtocol_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Add;
end;

procedure TProtocolsFrm.atnProtocol_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Cancel;
end;

procedure TProtocolsFrm.atnProtocol_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Delete;
end;

procedure TProtocolsFrm.atnProtocol_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Save;
  FDataManager.DataSet['qryProtocols'].Refresh;
end;

procedure TProtocolsFrm.atnProtocol_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryProtocols'].Save;
end;

procedure TProtocolsFrm.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TProtocolsFrm.Open(const prmConnectionString : string);
begin

  try
  FDbConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qryProtocols, 'protocolID');
  FDataManager.Add(qryProtocolProduct, 'protocolProductID');
  FDataManager.Add(qryRoute, 'Code_str');
  FDataManager.Add(qryInterval, 'abbreviation_Str');
  FDataManager.Add(qryUnit, 'abbreviation_Str');
  FDataManager.Add(qrySysProductGenericNames, 'genericName_ID');
  FDataManager.Add(qryIndication, 'ICode_str');
  FDataManager.Add(qryProductList, 'productPackSize_ID');

  except
  end;


end;

procedure TProtocolsFrm.qryProtocolProductAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet['qryProtocolProduct'].Refresh;
end;

procedure TProtocolsFrm.qryProtocolProductAfterScroll(DataSet: TDataSet);
begin

  with DataSet do
    begin
    UpdateEccentricDisplay(FieldByName('isEccentric_bol').AsBoolean);
    end;

end;

procedure TProtocolsFrm.qryProtocolProductBeforePost(DataSet: TDataSet);
var
  prvBrandName, prvGenericName,
  prvDoseUnit, prvRoute, prvIntervalA, prvIntervalB : string ;
  prvRepeats : integer ;
  prvDuration, prvDoseA, prvDoseB : double ;
  prvIsEccentric : boolean;
begin

with DataSet do
  begin
  prvBrandName    := '';
  prvGenericName  := FieldByName('genericName_str').AsString;
  prvDoseUnit     := FieldByName('doseUnit_str').AsString;
  prvRoute        := FieldByName('routeRecommended_str').AsString;
  prvIntervalA    := FieldByName('intervalRecommendedA_str').AsString;
  prvIntervalB    := FieldByName('intervalRecommendedB_str').AsString;
  prvRepeats      := 1;
  prvDuration     := FieldByName('durationRecommended_dbl').AsFloat;
  prvDoseA        := FieldByName('doseRecommendedA_dbl').AsFloat;
  prvDoseB        := FieldByName('doseRecommendedB_dbl').AsFloat;
  prvIsEccentric  := FieldByName('isEccentric_bol').AsBoolean;

  FieldByName('description_str').AsString :=
  TDAL.RxDescription(prvBrandName, prvGenericName, prvDoseUnit, prvRoute,
                  prvIntervalA, prvIntervalB, prvRepeats, prvDuration,
                  prvDoseA, prvDoseB, prvIsEccentric, False);


  try
  if FieldByName('dosePerDayValue_dbl').AsFloat <> 0 then
    FieldByName('dosePerDayValue_dbl').AsFloat :=
    (prvDoseA * 24) / GetAbbreviationValue(FDbConnectionString, prvIntervalA);
  except
  end;


  end;

end;

procedure TProtocolsFrm.qryProtocolProductNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
  FieldByName('protocolID').AsString                := qryProtocols.FieldByName('protocolID').AsString;
  FieldByName('protocolProductID').AsString         := CreateClassID;
  FieldByName('genericName_str').AsString           := '<Not Set>';
  FieldByName('doseRecommendedA_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedA_str').AsString  := '<Not Set>';
  FieldByName('durationRecommended_dbl').AsFloat    := 1;
  FieldByName('routeRecommended_str').AsString      := '<Not Set>';
  FieldByName('doseRecommendedB_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedB_str').AsString  := '<Not Set>';
  FieldByName('doseUnit_str').AsString              := 'mg';
  FieldByName('isEccentric_bol').AsBoolean          := False;
//  FieldByName('description_str').AsString         := '<Not Set>';
  end;    // with

end;

procedure TProtocolsFrm.qryProtocolsNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
  FieldByName('protocolID').AsString              := CreateClassID;
  FieldByName('protocolName_str').AsString        := '<Not Set>';
  FieldByName('protocolCode_str').AsString        := '<Not Set>';
  FieldByName('protocolIndication_str').AsString  := '<Not Set>';
  end;    // with
end;

procedure TProtocolsFrm.RzDBCheckBox1Click(Sender: TObject);
begin
  UpdateEccentricDisplay( (Sender as TRzDBCheckBox).Checked ); 
end;

procedure TProtocolsFrm.Screen_Resize;
var
  curWid, curHgt  :integer;
const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnlToolbar_Header.Width;
  curHgt  := HGHT;

  pnlToolbar_Header.Height              := curHgt;

  pnlToolbar_Header_ShapeBorder.Left    := STEP;
  pnlToolbar_Header_ShapeBorder.Top     := STEP;
  pnlToolbar_Header_ShapeBorder.Width   := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height  := curHgt - (STEP * 2);

  pnlToolbar_Header_Display.Left        := (STEP * 2);
  pnlToolbar_Header_Display.Top         := (STEP * 2);
  pnlToolbar_Header_Display.Width       := curWid - (STEP * 4);
  pnlToolbar_Header_Display.Height      := curHgt - (STEP * 4);

  curWid := pnl_Main_Back.Width;
  curHgt := pnl_Main_Back.Height;

  pnl_Main_Blue.Top     := 45;
  pnl_Main_Blue.Left    := STEP;
  pnl_Main_Blue.Height  := curHgt - (pnl_Main_Blue.Top + STEP);
  pnl_Main_Blue.Width   := curWid - (STEP * 2);

  curWid := pnl_Main_Blue.Width;
  curHgt := pnl_Main_Blue.Height;

  lblProtocolName.Width := curWid - (lblProtocolName.Left + STEP);
  lblProtocolDetail.Width := curWid - (lblProtocolDetail.Left + STEP);
  lblProtocolRegimen.Width:= curWid - (lblProtocolRegimen.Left + STEP);
  rzgProtocol.Width     := curWid - (rzgProtocol.Left + STEP);
  grdProtocols.Height   := curHgt - (grdProtocols.Top + STEP);
  pgeDetail.Height      := curHgt - (pgeDetail.Top + STEP);
  pgeDetail.Width       := curWid - (pgeDetail.Left + STEP);

  lblProtocolEdit.Width := rzgProtocol.Width - (lblProtocolEdit.Left + STEP);
  edtProtovolName.Width := rzgProtocol.Width - (edtProtovolName.Left + STEP);
  rzlIndication.Width   := rzgProtocol.Width - ( rzlIndication.Left + STEP);

  curWid := tbsRegimenDetail.Width;
  curHgt := tbsRegimenDetail.Height;

  rzgRegimenDetail.Left   := curWid - (rzgRegimenDetail.Width + STEP);
  rzgRegimenDetail.Height := curHgt - (rzgRegimenDetail.Top + STEP);
  rzgRegimen.Width        := curWid - (rzgRegimenDetail.Width + rzgRegimen.Left + (STEP * 2));
  rzgRegimen.Height       := curHgt - (rzgRegimen.Top + STEP);

  rzcProductList.Width    := curWid - (rzgRegimenDetail.Width + rzgRegimen.Left + (STEP * 2));


  curWid := rzgRegimenDetail.Width;

  rzcProductList.Width := curWid - (rzcProductList.Left + STEP);


//  rzLblClinics.Width := curWid - (STEP * 2);
//  rzgClinicDetails.Height := curHgt - (rzgClinicDetails.Top + STEP);
//  rznClinics.Top := rzgClinicDetails.Height - (rznClinics.Height + STEP);

//  rzlClinicList.Width := curWid - rzlClinicList.Left - STEP;
//  rzgClinicList.Width := rzlClinicList.Width;
//  rzgClinicList.Height := rzgClinicDetails.Height;


end;

procedure TProtocolsFrm.SetDbConnectionString(const Value: string);
begin

  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;

end;

procedure TProtocolsFrm.UpdateEccentricDisplay(prmDisplay : boolean = True);
var
  prvTop  : integer;
  prvSpace: integer;
begin

  edtIntervalB.Visible  := prmDisplay;
  lblDoseB.Visible      := prmDisplay;
  lblIntervalB.Visible  := prmDisplay;
  edtDoseB.Visible      := prmDisplay;

  if prmDisplay then lblDoseA.Caption := 'Dose A' else lblDoseA.Caption := 'Dose';
  if prmDisplay then lblIntervalA.Caption := 'Interval A' else lblIntervalA.Caption := 'Interval';

  if prmDisplay then prvTop := 169 else prvTop := 125;
  prvSpace := 1;

  lblRoute.Top        :=  prvTop + (prvSpace * 0);
  rzluRoute.Top       :=  prvTop + (prvSpace * 0);
  lblDuration.Top     :=  lblRoute.Top + lblRoute.Height + prvSpace;
  edtDuration.Top     :=  rzluRoute.Top + rzluRoute.Height + prvSpace;
  lblDosing.Top       :=  lblDuration.Top + lblDuration.Height + prvSpace;
  rzgrDosing.Top      :=  edtDuration.Top + edtDuration.Height + prvSpace;
  lblDailyDose.Top    :=  lblDosing.Top + lblDosing.Height + prvSpace;
  edtDailyDose.Top    :=  rzgrDosing.Top + rzgrDosing.Height + prvSpace;
  lblDailyDoseUnit.Top:=  rzgrDosing.Top + rzgrDosing.Height + prvSpace;
  lblDisplayUnit.Top  :=  lblDailyDose.Top;

  lblProducts.Top     :=  lblDailyDose.Top + lblDailyDose.Height + prvSpace;
  rzcProductList.Top  :=  lblProducts.Top;

end;

procedure TProtocolsFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TProtocolsFrm.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open(FDbConnectionString);
end;

end.

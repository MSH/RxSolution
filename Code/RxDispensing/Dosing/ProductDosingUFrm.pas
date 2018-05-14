unit ProductDosingUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzRadGrp, RzDBRGrp, RzButton, RzRadChk, RzDBChk,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, RzPanel, dxPageControl, DBCtrls,
  RzDBCmbo, StdCtrls, Mask, RzEdit, RzDBEdit, RzDBLbl, RzLabel, ExtCtrls,
  DB, ADODB, ActnList, ImgList, RzCommon, dmpDataObjectManager, ComObj,
  dxExEdtr, Menus, RzCmboBx;

type
  TDosingFrm = class(TForm)
    rzcMain: TRzFrameController;
    imgProtocols: TImageList;
    atnProtocols: TActionList;
    atnDosing_Add: TAction;
    atnDosing_Delete: TAction;
    atnDosing_Save: TAction;
    atnDosing_Cancel: TAction;
    atnDosing_Refresh: TAction;
    Timer1: TTimer;
    conProductDosing: TADOConnection;
    qryGenericNames: TADOQuery;
    qryDosing: TADOQuery;
    qryRoute: TADOQuery;
    qryInterval: TADOQuery;
    qryUnit: TADOQuery;
    qryIndication: TADOQuery;
    dsqryIndication: TDataSource;
    dsqryUnit: TDataSource;
    dsqryInterval: TDataSource;
    dsqryRoute: TDataSource;
    dsqryDosing: TDataSource;
    dsqryGenericNames: TDataSource;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    pnl_Main_Back: TPanel;
    pnl_Main_Blue: TPanel;
    pgeDetail: TdxPageControl;
    tbsRegimenDetail: TdxTabSheet;
    RzToolbar1: TRzToolbar;
    BtnNew: TRzToolButton;
    BtnSave: TRzToolButton;
    BtnDelete: TRzToolButton;
    RzSpacer1: TRzSpacer;
    BtnRefresh: TRzToolButton;
    RzSpacer3: TRzSpacer;
    BtnRecycle: TRzToolButton;
    rzgRegimen: TRzGroupBox;
    dxgRegimenDescription: TdxDBGrid;
    dxgRegimenDescriptiondescription_str: TdxDBGridColumn;
    rzgRegimenDetail: TRzGroupBox;
    tbsEvidence: TdxTabSheet;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    dxgRegimenDescriptiondescriptionRange_Str: TdxDBGridColumn;
    qryProductList: TADOQuery;
    dsqryProductList: TDataSource;
    RzGroupBox2: TRzGroupBox;
    Label8: TLabel;
    RzDBEdit5: TRzDBEdit;
    RzGroupBox3: TRzGroupBox;
    Label6: TLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzGroupBox4: TRzGroupBox;
    Label3: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    Label4: TLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label5: TLabel;
    RzGroupBox5: TRzGroupBox;
    lblRoute: TLabel;
    rzluRoute: TRzDBLookupComboBox;
    Label7: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    lblDoseA: TLabel;
    RzDBEdit6: TRzDBEdit;
    Label2: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    lblIntervalA: TLabel;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    lblDuration: TLabel;
    edtDuration: TRzDBEdit;
    lblDoseB: TLabel;
    lblIntervalB: TLabel;
    edtIntervalB: TRzDBLookupComboBox;
    edtDoseB: TRzDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBCheckBox2: TRzDBCheckBox;
    atnPrint_ListOf: TAction;
    popPrintMenu: TPopupMenu;
    PrintList1: TMenuItem;
    atnPrint_ListOfGeneric: TAction;
    PrintListofselectedGeneric1: TMenuItem;
    atnPrint_ListOfSelectedItem: TAction;
    Printselectedline1: TMenuItem;
    Label11: TLabel;
    RzDBEdit8: TRzDBEdit;
    Label12: TLabel;
    RzDBEdit9: TRzDBEdit;
    Label13: TLabel;
    RzDBEdit10: TRzDBEdit;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    Label14: TLabel;
    RzDBEdit11: TRzDBEdit;
    dxgRegimenDescriptiondefaultDose_int: TdxDBGridMaskColumn;
    Label15: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    qryProtocols: TADOQuery;
    dsqryProtocols: TDataSource;
    RzGroupBox1: TRzGroupBox;
    dxgRegimenGenericList: TdxDBGrid;
    dxDBGridColumn4: TdxDBGridColumn;
    RzLabel7: TRzLabel;
    RzSpacer2: TRzSpacer;
    RzToolButton1: TRzToolButton;
    procedure atnDosing_AddExecute(Sender: TObject);
    procedure atnDosing_CancelExecute(Sender: TObject);
    procedure atnDosing_DeleteExecute(Sender: TObject);
    procedure atnDosing_RefreshExecute(Sender: TObject);
    procedure atnDosing_SaveExecute(Sender: TObject);
    procedure qryDosingAfterPost(DataSet: TDataSet);
    procedure qryDosingAfterScroll(DataSet: TDataSet);
    procedure qryDosingBeforePost(DataSet: TDataSet);
    procedure qryDosingNewRecord(DataSet: TDataSet);
    procedure RzDBCheckBox1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atnPrint_ListOfExecute(Sender: TObject);
    procedure atnPrint_ListOfGenericExecute(Sender: TObject);
    procedure atnPrint_ListOfSelectedItemExecute(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
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

procedure Print_Dosing_StandardListOf(prmConStr : string ; prmGenericNameFilter
    : string ; prmDosingIDFilter : string); stdcall;

var
  DosingFrm: TDosingFrm;

implementation

uses RxSolutionUFrm, ProtocolsUFrm, rxDispensingPrescriptionItemClasses;

{$R *.dfm}

procedure Print_Dosing_StandardListOf(prmConStr : string ; prmGenericNameFilter
    : string ; prmDosingIDFilter : string); external 'PrintDll.dll';

procedure TDosingFrm.atnDosing_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryDosing'].Add;
end;

procedure TDosingFrm.atnDosing_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryDosing'].Cancel;
end;

procedure TDosingFrm.atnDosing_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryDosing'].Delete;
end;

procedure TDosingFrm.atnDosing_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryDosing'].Save;
  FDataManager.DataSet['qryDosing'].Refresh;
  FDataManager.DataSet['qryIndication'].Refresh;
end;

procedure TDosingFrm.atnDosing_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qryDosing'].Save;
  FDataManager.DataSet['qryIndication'].Refresh;
end;

procedure TDosingFrm.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TDosingFrm.Open(const prmConnectionString : string);
begin

  try
  FDbConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qryGenericNames, 'GenericName_str');
  FDataManager.Add(qryDosing, 'productDosingID');
  FDataManager.Add(qryRoute, 'Code_str');
  FDataManager.Add(qryInterval, 'abbreviation_Str');
  FDataManager.Add(qryUnit, 'abbreviation_Str');
  FDataManager.Add(qryIndication, 'ICode_str');
  FDataManager.Add(qryProductList, 'productPackSize_ID');

  except
  end;


end;

procedure TDosingFrm.qryDosingAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet['qryDosing'].Refresh;
end;

procedure TDosingFrm.qryDosingAfterScroll(DataSet: TDataSet);
begin

  with DataSet do
    begin
    UpdateEccentricDisplay(FieldByName('isEccentric_bol').AsBoolean);
    end;

end;

procedure TDosingFrm.qryDosingBeforePost(DataSet: TDataSet);
var
  prvWghtLo: Double;
  prvWghtHi: Double;
  prvAgeHi: Double;
  prvAgeLo: Double;
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

  prvAgeLo        := FieldByName('ageLo_dbl').AsFloat;
  prvAgeHi        := FieldByName('ageHi_dbl').AsFloat;
  prvWghtHi       := FieldByName('weightHi_dbl').AsFloat;
  prvWghtLo       := FieldByName('weightLo_dbl').AsFloat;


  if (FieldByName('freeForm_str').AsString = '') or (FieldByName('freeForm_str').IsNull) then
    FieldByName('description_str').AsString :=
    TDAL.RxDescription(prvBrandName, prvGenericName, prvDoseUnit, prvRoute,
                  prvIntervalA, prvIntervalB, prvRepeats, prvDuration,
                  prvDoseA, prvDoseB, prvIsEccentric, False)
    else
    FieldByName('description_str').AsString := prvGenericName + ' ' + FieldByName('freeForm_str').AsString;



  FieldByName('descriptionRange_Str').AsString :=
    TDAL.RxDoseRangeDescription(prvAgeLo, prvAgeHi, prvWghtLo, prvWghtHi);

  end;


end;

procedure TDosingFrm.qryDosingNewRecord(DataSet: TDataSet);
begin

  with DataSet do
  begin
  FieldByName('productDosingID').AsString           := CreateClassID;
  FieldByName('genericName_str').AsString           := qryGenericNames.FieldByName('genericName_str').AsString;
  FieldByName('doseRecommendedA_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedA_str').AsString  := 'bid';
  FieldByName('durationRecommended_dbl').AsFloat    := 1;
  FieldByName('routeRecommended_str').AsString      := 'PO';
  FieldByName('doseRecommendedB_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedB_str').AsString  := 'bid';
  FieldByName('doseUnit_str').AsString              := 'mg';
  FieldByName('isEccentric_bol').AsBoolean          := False;
  FieldByName('description_str').AsString           := '<Not Set>';
  FieldByName('descriptionRange_Str').AsString      := '<Not Set>';
  FieldByName('ageLo_dbl').AsFloat                  := 0;
  FieldByName('ageHi_dbl').AsFloat                  := 150;
  FieldByName('weightLo_dbl').AsFloat               := 0;
  FieldByName('weightHi_dbl').AsFloat               := 400;
  FieldByName('freeForm_str').AsString              := '';
  FieldByName('DefaultProductID').AsString          := CreateClassID;
  FieldByName('productPackToDispense_dbl').AsFloat  := 1;
  FieldByName('ProductBreakPack_bol').AsBoolean     := False;
  FieldByName('productLabelInstruction_str').AsString := '';
  FieldByName('productLabelInstructionAdditional_str').AsString := '';
  FieldByName('productLabelWarning_str').AsString   := '';

//  TDAL.RxDescription(prvBrandName, prvGenericName, prvDoseUnit, prvRoute,
//                  prvIntervalA, prvIntervalB, prvRepeats, prvDuration,
//                  prvDoseA, prvDoseB, prvIsEccentric, False);

//  FieldByName('description_str').AsString         := '<Not Set>';
  end;    // with


end;

procedure TDosingFrm.RzDBCheckBox1Click(Sender: TObject);
begin
  UpdateEccentricDisplay( (Sender as TRzDBCheckBox).Checked );
end;

procedure TDosingFrm.Screen_Resize;
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

//  grdGenericNames


  {
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
  }


//  rzLblClinics.Width := curWid - (STEP * 2);
//  rzgClinicDetails.Height := curHgt - (rzgClinicDetails.Top + STEP);
//  rznClinics.Top := rzgClinicDetails.Height - (rznClinics.Height + STEP);

//  rzlClinicList.Width := curWid - rzlClinicList.Left - STEP;
//  rzgClinicList.Width := rzlClinicList.Width;
//  rzgClinicList.Height := rzgClinicDetails.Height;


end;

procedure TDosingFrm.SetDbConnectionString(const Value: string);
begin

  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;

end;

procedure TDosingFrm.UpdateEccentricDisplay(prmDisplay : boolean = True);
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

//  if prmDisplay then prvTop := 169 else prvTop := 125;
//  prvSpace := 1;

//  lblRoute.Top        := prvTop + (prvSpace * 0);
//  rzluRoute.Top       := prvTop + (prvSpace * 0);
//  lblDuration.Top     := lblRoute.Top + lblRoute.Height + prvSpace;
//  edtDuration.Top     := rzluRoute.Top + rzluRoute.Height + prvSpace;


//  lblDosing.Top       :=lblDuration.Top + lblDuration.Height + prvSpace;
//  rzgrDosing.Top      :=edtDuration.Top + edtDuration.Height + prvSpace;
//  lblDailyDose.Top    :=lblDosing.Top + lblDosing.Height + prvSpace;
//  edtDailyDose.Top    :=rzgrDosing.Top + rzgrDosing.Height + prvSpace;
//  lblDailyDoseUnit.Top:=rzgrDosing.Top + rzgrDosing.Height + prvSpace;

end;

procedure TDosingFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TDosingFrm.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open(FDbConnectionString);
end;

procedure TDosingFrm.atnPrint_ListOfExecute(Sender: TObject);
begin
  Print_Dosing_StandardListOf(FDbConnectionString, '', '');
end;

procedure TDosingFrm.atnPrint_ListOfGenericExecute(Sender: TObject);
var
  g : String;
begin
  g := qryGenericNames.FieldByName('genericName_str').AsString;
  Print_Dosing_StandardListOf(FDbConnectionString, g, '');
end;

procedure TDosingFrm.atnPrint_ListOfSelectedItemExecute(Sender: TObject);
var
  g : String;
begin
  g := qryDosing.FieldByName('productDosingID').AsString;
  Print_Dosing_StandardListOf(FDbConnectionString, '', g);
end;

procedure TDosingFrm.RzButton1Click(Sender: TObject);
begin
{  ProtocolsFrm.Show;
  ProtocolsFrm.qryProtocols.Locate('protocolID', RzDBComboBox3.Text, [loPartialKey]);
   ProtocolsFrm.Close;
} // ProtocolsFrm.FDataManager.DataSet['qryProtocolProduct'].Add;
end;

end.

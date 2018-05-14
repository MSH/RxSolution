unit frameProducts;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzLabel, ExtCtrls, dxExEdtr, RzSplit, DBCtrls, RzDBNav,
  RzDBCmbo, Mask, RzEdit, RzDBEdit, RzCmboBx, dxDBTLCl, dxGrClms, dxDBGrid,
  dxTL, dxDBCtrl, dxCntner, RzPanel, RzTabs, RzDBLbl, ActnList, RzCommon,
  DB, ADODB, dmpDataObjectManager, RzButton, ImgList, dxPageControl,
  ComCtrls, ComObj, ppModule, daDataModule, ppDB, ppBands, ppStrtch,
  ppRegion, ppClass, ppVar, ppCtrls, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus;

type
  TfrmeProducts = class(TFrame)
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    rzcMain: TRzFrameController;
    ActionList1: TActionList;
    Panel2: TPanel;
    pnl_Main_Back: TPanel;
    pnl_Main_Blue: TPanel;
    conProducts: TADOConnection;
    qrySysProductProducts: TADOQuery;
    qrySysProductGenericBrandLink: TADOQuery;
    qrySysProductBrandNames: TADOQuery;
    dsqrySysProductProducts: TDataSource;
    dsqrySysProductGenericBrandLink: TDataSource;
    dsqrySysProductBrandNames: TDataSource;
    qrySysProductGenericNames: TADOQuery;
    dsqrySysProductGenericNames: TDataSource;
    qrySysProductDosingParameters: TADOQuery;
    dsqrySysProductDosingParameters: TDataSource;
    qrySysProductInteractions: TADOQuery;
    dsqrySysProductInteractions: TDataSource;
    qrySysProductLUGenericNames: TADOQuery;
    dsqrySysProductLUGenericNames: TDataSource;
    qrySysProductAllergies: TADOQuery;
    qrySysProductAllergyLink: TADOQuery;
    dsqrySysProductAllergies: TDataSource;
    dsqrySysProductAllergyLink: TDataSource;
    imgProducts: TImageList;
    grdGenericName: TdxDBGrid;
    grdGenericNamegenericName_Str: TdxDBGridColumn;
    lblGenericList: TRzLabel;
    lblGenericDetail: TRzLabel;
    lblGenericName: TRzDBLabel;
    pgeDetail: TdxPageControl;
    tbsProductList: TdxTabSheet;
    tbsDosing: TdxTabSheet;
    rzgDosingParameterDetail: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    rzgDosingParameters: TRzGroupBox;
    grdProductDosing: TdxDBGrid;
    grdProductDosingAgeLo_Int: TdxDBGridMaskColumn;
    grdProductDosingAgeHi_Int: TdxDBGridMaskColumn;
    grdProductDosingRoute_Str: TdxDBGridColumn;
    grdProductDosingDoseUnit_str: TdxDBGridColumn;
    grdProductDosingDose_Int: TdxDBGridMaskColumn;
    grdProductDosingDoseLo_Int: TdxDBGridMaskColumn;
    grdProductDosingDoseHi_Int: TdxDBGridMaskColumn;
    tbsInteractions: TdxTabSheet;
    rzgInteractionListDetail: TRzGroupBox;
    Label12: TLabel;
    rzgInteractionList: TRzGroupBox;
    grdInteractions: TdxDBGrid;
    tbsAllergies: TdxTabSheet;
    rzgAllergyDetail: TRzGroupBox;
    Label23: TLabel;
    rzgAllergyList: TRzGroupBox;
    grdAllergies: TdxDBGrid;
    grdAllergiesallergyName_Str: TdxDBGridColumn;
    tbsBrandNames: TdxTabSheet;
    rzgBrandList: TRzGroupBox;
    lblSelectedProductName: TRzDBLabel;
    rzgPackDetail: TRzGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    RzDBEdit24: TRzDBEdit;
    rzgDispensingData: TRzGroupBox;
    Label18: TLabel;
    RzDBEdit13: TRzDBEdit;
    rzgOther: TRzGroupBox;
    Label15: TLabel;
    rzgProducts: TRzGroupBox;
    grdProductList: TdxDBGrid;
    grdProductListDescription_str: TdxDBGridMaskColumn;
    Label19: TLabel;
    RzDBEdit10: TRzDBEdit;
    Label10: TLabel;
    Label26: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    Label28: TLabel;
    RzDBEdit25: TRzDBEdit;
    RzDBLabel5: TRzDBLabel;
    Label21: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    Label22: TLabel;
    RzDBLabel6: TRzDBLabel;
    RzDBEdit7: TRzDBEdit;
    Label16: TLabel;
    RzDBLabel2: TRzDBLabel;
    Label29: TLabel;
    RzDBEdit9: TRzDBEdit;
    lblProductList: TRzLabel;
    lblSelectedProductDetail: TRzLabel;
    Label17: TLabel;
    RzDBLabel3: TRzDBLabel;
    qryRoute: TADOQuery;
    dsqryRoute: TDataSource;
    qryUnit: TADOQuery;
    dsqryUnit: TDataSource;
    dsqryUnit2: TDataSource;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    RzDBLookupComboBox6: TRzDBLookupComboBox;
    Label25: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBComboBox1: TRzDBComboBox;
    atnProduct_Add: TAction;
    atnProduct_Delete: TAction;
    atnProduct_Refresh: TAction;
    atnProduct_Save: TAction;
    atnProduct_Cancel: TAction;
    rztGenericProducts: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton4: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzToolButton5: TRzToolButton;
    RzToolbar1: TRzToolbar;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzSpacer3: TRzSpacer;
    RzToolButton9: TRzToolButton;
    RzSpacer4: TRzSpacer;
    RzToolButton10: TRzToolButton;
    RzToolbar2: TRzToolbar;
    RzToolButton11: TRzToolButton;
    RzToolButton12: TRzToolButton;
    RzToolButton13: TRzToolButton;
    RzSpacer5: TRzSpacer;
    RzToolButton14: TRzToolButton;
    RzSpacer6: TRzSpacer;
    RzToolButton15: TRzToolButton;
    RzToolbar3: TRzToolbar;
    RzToolButton16: TRzToolButton;
    RzToolButton17: TRzToolButton;
    RzToolButton18: TRzToolButton;
    RzSpacer7: TRzSpacer;
    RzToolButton19: TRzToolButton;
    RzSpacer8: TRzSpacer;
    RzToolButton20: TRzToolButton;
    RzToolbar4: TRzToolbar;
    RzToolButton21: TRzToolButton;
    RzToolButton22: TRzToolButton;
    RzToolButton23: TRzToolButton;
    RzSpacer9: TRzSpacer;
    RzToolButton24: TRzToolButton;
    RzSpacer10: TRzSpacer;
    RzToolButton25: TRzToolButton;
    lblDosingParameters: TRzLabel;
    lblDosingParameterDetail: TRzLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    lblInteractionList: TRzLabel;
    lblInteractionListDetail: TRzLabel;
    lblDosingParameterDetailEvidence: TRzLabel;
    rzgDosingParameterDetailEvidence: TRzGroupBox;
    lblInteractionListDetailEvidence: TRzLabel;
    rzgInteractionListDetailEvidence: TRzGroupBox;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    lblAllergyList: TRzLabel;
    lblAllergyDetail: TRzLabel;
    lblAllergyDetailEvidence: TRzLabel;
    rzgAllergyDetailEvidence: TRzGroupBox;
    lblBrandDetail: TRzLabel;
    rzgBrandDetail: TRzGroupBox;
    lblBrandList: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label11: TLabel;
    Label13: TLabel;
    atnInteraction_Cancel: TAction;
    atnInteraction_Delete: TAction;
    atnInteraction_Add: TAction;
    atnInteraction_Refresh: TAction;
    atnInteraction_Save: TAction;
    atnDosing_Save: TAction;
    atnDosing_Cancel: TAction;
    atnDosing_Delete: TAction;
    atnDosing_Refresh: TAction;
    atnDosing_Add: TAction;
    atnAllergy_Save: TAction;
    atnAllergy_Add: TAction;
    atnAllergy_Cancel: TAction;
    atnAllergy_Refresh: TAction;
    atnAllergy_Delete: TAction;
    atnBrand_Add: TAction;
    atnBrand_Cancel: TAction;
    atnBrand_Delete: TAction;
    atnBrand_Refresh: TAction;
    atnBrand_Save: TAction;
    grdBrandLink: TdxDBGrid;
    grdBrandLinkbrandName_Str: TdxDBGridColumn;
    ImageList1: TImageList;
    RzDBMemo1: TRzDBMemo;
    grdInteractionsinteraction_Display_str: TdxDBGridColumn;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel7: TRzDBLabel;
    DBCheckBox1: TDBCheckBox;
    atnProduct_UpdatePackDescription: TAction;
    RzSpacer11: TRzSpacer;
    RzToolButton26: TRzToolButton;
    RzDBEdit1: TRzDBEdit;
    Label20: TLabel;
    RzDBEdit2: TRzDBEdit;
    Label27: TLabel;
    RzDBEdit3: TRzDBEdit;
    tbsProductUsage: TdxTabSheet;
    qryGenericUsageByPack: TADOQuery;
    dsqryGenericUsageByPack: TDataSource;
    lblProductUsage: TRzLabel;
    rzgUsageByPack: TRzGroupBox;
    dxDBGrid1: TdxDBGrid;
    RzToolbar5: TRzToolbar;
    dxDBGrid1dispDescription_Str: TdxDBGridColumn;
    dxDBGrid1Dispensed: TdxDBGridMaskColumn;
    dxDBGrid1Cost: TdxDBGridCurrencyColumn;
    rzgUsageByStrength: TRzGroupBox;
    dxDBGrid2: TdxDBGrid;
    qryGenericUsageByStrength: TADOQuery;
    dsqryGenericUsageByStrength: TDataSource;
    dxDBGrid2genericName_str: TdxDBGridColumn;
    dxDBGrid2dispDoseUnits_Str: TdxDBGridColumn;
    dxDBGrid2dispDose_dbl: TdxDBGridMaskColumn;
    dxDBGrid2Cost: TdxDBGridCurrencyColumn;
    dxDBGrid2Dispensed: TdxDBGridMaskColumn;
    dsqryUsageReport: TDataSource;
    qryUsageReport: TADOQuery;
    ppqryReportUsage: TppDBPipeline;
    ppReportUsage: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppImage6: TppImage;
    ppShape58: TppShape;
    ppLine31: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText85: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine32: TppLine;
    ppLabel146: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel147: TppLabel;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppLabel148: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppPageStyle5: TppPageStyle;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppRegion29: TppRegion;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel156: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    atnProduct_Usage: TAction;
    BtnPrint: TRzToolButton;
    RzMenuButton1: TRzMenuButton;
    atnToggleGenericList: TAction;
    PopupMenu1: TPopupMenu;
    ActiveGenericList1: TMenuItem;
    daDataModule1: TdaDataModule;
    procedure FrameResize(Sender: TObject);
    procedure qrySysProductGenericNamesAfterScroll(DataSet: TDataSet);
    procedure qrySysProductProductsBeforePost(DataSet: TDataSet);
    procedure qrySysProductProductsNewRecord(DataSet: TDataSet);
    procedure qrySysProductGenericBrandLinkNewRecord(DataSet: TDataSet);
    procedure qrySysProductDosingParametersNewRecord(DataSet: TDataSet);
    procedure qrySysProductInteractionsNewRecord(DataSet: TDataSet);
    procedure qrySysProductAllergyLinkNewRecord(DataSet: TDataSet);
    procedure atnProduct_SaveExecute(Sender: TObject);
    procedure atnProduct_CancelExecute(Sender: TObject);
    procedure atnProduct_DeleteExecute(Sender: TObject);
    procedure atnProduct_RefreshExecute(Sender: TObject);
    procedure atnInteraction_CancelExecute(Sender: TObject);
    procedure atnInteraction_DeleteExecute(Sender: TObject);
    procedure atnInteraction_AddExecute(Sender: TObject);
    procedure atnInteraction_RefreshExecute(Sender: TObject);
    procedure atnInteraction_SaveExecute(Sender: TObject);
    procedure atnDosing_SaveExecute(Sender: TObject);
    procedure atnDosing_CancelExecute(Sender: TObject);
    procedure atnDosing_DeleteExecute(Sender: TObject);
    procedure atnDosing_RefreshExecute(Sender: TObject);
    procedure atnDosing_AddExecute(Sender: TObject);
    procedure atnBrand_AddExecute(Sender: TObject);
    procedure atnBrand_CancelExecute(Sender: TObject);
    procedure atnBrand_DeleteExecute(Sender: TObject);
    procedure atnBrand_RefreshExecute(Sender: TObject);
    procedure atnBrand_SaveExecute(Sender: TObject);
    procedure atnAllergy_SaveExecute(Sender: TObject);
    procedure atnAllergy_AddExecute(Sender: TObject);
    procedure atnAllergy_CancelExecute(Sender: TObject);
    procedure atnAllergy_RefreshExecute(Sender: TObject);
    procedure atnAllergy_DeleteExecute(Sender: TObject);
    procedure atnProduct_AddExecute(Sender: TObject);
    procedure qrySysProductAllergiesNewRecord(DataSet: TDataSet);
    procedure qrySysProductInteractionsBeforePost(DataSet: TDataSet);
    procedure atnProduct_UpdatePackDescriptionExecute(Sender: TObject);
    procedure atnProduct_UsageExecute(Sender: TObject);
    procedure atnToggleGenericListExecute(Sender: TObject);
  private
    FDataManager: TDataSetManager;
    FDbConnectionString: string;
    FRefresh: Boolean;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open(const prmConnectionString : string); overload;
    procedure SetGenericList(const prmDisplay : boolean);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

implementation

uses Generic_;

{$R *.dfm}

procedure TfrmeProducts.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TfrmeProducts.Screen_Resize;
var
  curWid, curHgt  :integer;
const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnlToolbar_Header.Width;
  curHgt  := HGHT;

  pnlToolbar_Header.Height := curHgt;

  pnlToolbar_Header_ShapeBorder.Left   := STEP;
  pnlToolbar_Header_ShapeBorder.Top    := STEP;
  pnlToolbar_Header_ShapeBorder.Width  := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height := curHgt - (STEP * 2);

  pnlToolbar_Header_Display.Left   := (STEP * 2);
  pnlToolbar_Header_Display.Top    := (STEP * 2);
  pnlToolbar_Header_Display.Width  := curWid - (STEP * 4);
  pnlToolbar_Header_Display.Height := curHgt - (STEP * 4);

  curWid := pnl_Main_Back.Width;
  curHgt := pnl_Main_Back.Height;

  pnl_Main_Blue.Top     := 0;
  pnl_Main_Blue.Left    := STEP;
  pnl_Main_Blue.Height  := curHgt - (pnl_Main_Blue.Top + STEP);
  pnl_Main_Blue.Width   := curWid - (STEP * 2);

  curWid := pnl_Main_Blue.Width;
  curHgt := pnl_Main_Blue.Height;

  lblGenericDetail.Width := curWid - (lblGenericDetail.Left + STEP);
  lblGenericName.Width := curWid - (lblGenericName.Left + STEP);
  rztGenericProducts.Width := curWid - (rztGenericProducts.Left + STEP);
  grdGenericName.Height   := curHgt - (grdGenericName.Top + STEP);
  pgeDetail.Height      := curHgt - (pgeDetail.Top + STEP);
  pgeDetail.Width       := curWid - (pgeDetail.Left + STEP);

  curWid := tbsProductList.Width;
  curHgt := tbsProductList.Height;

  // Product List
  rzgProducts.Height    := curHgt - (rzgProducts.Top + STEP);
  lblSelectedProductDetail.Left := curWid - (lblSelectedProductDetail.Width + STEP);
  lblSelectedProductName.Left := curWid - (lblSelectedProductName.Width + STEP);
  rzgPackDetail.Left := curWid - (rzgPackDetail.Width + STEP);
  rzgDispensingData.Left := curWid - (rzgDispensingData.Width + STEP);
  rzgOther.Left := curWid - (rzgOther.Width + STEP);

  lblProductList.Width := curWid - (lblSelectedProductDetail.Width + (STEP * 2));
  rzgProducts.Width    := curWid - (lblSelectedProductDetail.Width + (STEP * 2));
  rzgOther.Height      := curHgt - (rzgOther.Top + STEP);

  // Dosing
  lblDosingParameterDetail.Left := curWid - (lblDosingParameterDetail.Width + STEP);
  rzgDosingParameterDetail.Left := curWid - (rzgDosingParameterDetail.Width + STEP);
  lblDosingParameters.Width := curWid - (lblDosingParameterDetail.Width + (STEP * 2));
  rzgDosingParameters.Width := curWid - (rzgDosingParameterDetail.Width + (STEP * 2));
  lblDosingParameterDetailEvidence.Left := curWid - (lblDosingParameterDetailEvidence.Width + STEP);
  rzgDosingParameterDetailEvidence.Left := curWid - (rzgDosingParameterDetailEvidence.Width + STEP);

  rzgDosingParameters.Height := curHgt - (rzgDosingParameters.Top + STEP);
  rzgDosingParameterDetailEvidence.Height := curHgt - (rzgDosingParameterDetailEvidence.Top + STEP);

  // Interactions
  lblInteractionListDetail.Left := curWid - (lblInteractionListDetail.Width + STEP);
  rzgInteractionListDetail.Left := curWid - (rzgInteractionListDetail.Width + STEP);
  lblInteractionList.Width := curWid - (lblInteractionListDetail.Width + (STEP * 2));
  rzgInteractionList.Width := curWid - (rzgInteractionListDetail.Width + (STEP * 2));
  lblInteractionListDetailEvidence.Left := curWid - (lblInteractionListDetailEvidence.Width + STEP);
  rzgInteractionListDetailEvidence.Left := curWid - (rzgInteractionListDetailEvidence.Width + STEP);

  rzgInteractionList.Height := curHgt - (rzgInteractionList.Top + STEP);
  rzgInteractionListDetailEvidence.Height := curHgt - (rzgInteractionListDetailEvidence.Top + STEP);

  // Allergies
  lblAllergyDetail.Left := curWid - (lblAllergyDetail.Width + STEP);
  rzgAllergyDetail.Left := curWid - (rzgAllergyDetail.Width + STEP);
  lblAllergyList.Width := curWid - (lblAllergyDetail.Width + (STEP * 2));
  rzgAllergyList.Width := curWid - (rzgAllergyDetail.Width + (STEP * 2));
  lblAllergyDetailEvidence.Left := curWid - (lblAllergyDetailEvidence.Width + STEP);
  rzgAllergyDetailEvidence.Left := curWid - (rzgAllergyDetailEvidence.Width + STEP);

  rzgAllergyList.Height := curHgt - (rzgAllergyList.Top + STEP);
  rzgAllergyDetailEvidence.Height := curHgt - (rzgAllergyDetailEvidence.Top + STEP);

  // Brand
  lblBrandDetail.Left := curWid - (lblBrandDetail.Width + STEP);
  rzgBrandDetail.Left := curWid - (rzgBrandDetail.Width + STEP);
  lblBrandList.Width := curWid - (lblBrandDetail.Width + (STEP * 2));
  rzgBrandList.Width := curWid - (rzgBrandDetail.Width + (STEP * 2));

  lblBrandList.Height := curHgt - (lblBrandList.Top + STEP);
  rzgBrandDetail.Height := curHgt - (rzgBrandDetail.Top + STEP);

  // Usage
  lblProductUsage.Width := curWid - (lblProductUsage.Left + STEP);
  rzgUsageByPack.Width  := (curWid div 2) - (rzgUsageByPack.Left + STEP);
  rzgUsageByStrength.Left  := (rzgUsageByPack.Left + rzgUsageByPack.Width + STEP);
  rzgUsageByStrength.Width  := curWid - (rzgUsageByStrength.Left + STEP);
  rzgUsageByPack.Height     := curHgt - (rzgUsageByPack.Top + STEP);
  rzgUsageByStrength.Height := curHgt - (rzgUsageByStrength.Top + STEP);




end;

procedure TfrmeProducts.FrameResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TfrmeProducts.Open(const prmConnectionString : string);
begin

  try
  FDbConnectionString := prmConnectionString;
  conProducts.Close;
  conProducts.ConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qrySysProductBrandNames, 'tradename_ID');
  FDataManager.Add(qrySysProductGenericNames, 'genericName_ID');
  FDataManager.Add(qrySysProductLUGenericNames, 'genericName_ID');
  FDataManager.Add(qrySysProductProducts, 'productPackSize_ID');
  FDataManager.Add(qrySysProductGenericBrandLink, 'genericBrandLink_ID');
  FDataManager.Add(qrySysProductDosingParameters, 'productDose_ID');
  FDataManager.Add(qrySysProductInteractions, 'interaction_ID');
  FDataManager.Add(qrySysProductAllergies, 'allergyName_Str');
  FDataManager.Add(qrySysProductAllergyLink, 'allergyItem_ID');
  FDataManager.Add(qryGenericUsageByPack, '');
  FDataManager.Add(qryGenericUsageByStrength, '');
  FDataManager.Add(qryRoute, 'Code_str');
  FDataManager.Add(qryUnit, 'abbreviation_Str');
  FRefresh := True;
  SetGenericList(True);
  except
  end;


end;

procedure TfrmeProducts.SetDbConnectionString(const Value: string);
begin
  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;
  conProducts.Close;
  conProducts.ConnectionString := FDbConnectionString;

end;

procedure TfrmeProducts.qrySysProductGenericNamesAfterScroll(
  DataSet: TDataSet);
var
  genStr  :string;
begin

if FRefresh then
  if not FDataManager.DataSet['qrySysProductGenericNames'].IsRefreshing then
  begin

  genStr := DataSet.FieldByName('genericName_Str').AsString;

  with qrySysProductInteractions do
    if Active then
      begin
      Close;
      Parameters.ParamByName('genericNameA_str').Value := genStr;
      Parameters.ParamByName('genericNameB_str').Value := genStr;
      Open;
      end;

  with qrySysProductProducts do
    if Active then
      begin
      Close;
      Parameters.ParamByName('genericName_str').Value := genStr;
      Open;
      end;

  with qrySysProductGenericBrandLink do
    if Active then
      begin
      Close;
      Parameters.ParamByName('genericName_str').Value := genStr;
      Open;
      end;

  with qrySysProductDosingParameters do
    if Active then
      begin
      Close;
      Parameters.ParamByName('genericName_str').Value := genStr;
      Open;
      end;

  with qrySysProductAllergyLink do
    if Active then
      begin
      Close;
      Parameters.ParamByName('genericName_str').Value := genStr;
      Open;
      end;
  end;
end;

procedure TfrmeProducts.qrySysProductProductsBeforePost(DataSet: TDataSet);
var
  PackDescription : string;
begin
  with Dataset do
    begin
    PackDescription :=
      TProduct.Description(
        FieldByName('StrengthValue_dbl').AsFloat,
        FieldByName('StrengthUnit_Str').AsString,
        FieldByName('DispensingValue_dbl').AsFloat,
        FieldByName('DispensingUnit_str').AsString,
        FieldByName('dispensedValue_dbl').AsFloat,
        FieldByName('dispensedUnit_str').AsString,
        FieldByName('PackSizeValue_dbl').AsFloat,
        FieldByName('PackSizeUnit_str').AsString,
        FieldByName('dispensingForm_str').AsString,
        FieldByName('strengthExtraDescription_str').AsString);

    FieldByName('packDescription_Str').AsString := PackDescription;
    if FieldByName('Description_str').AsString = '' then
      FieldByName('Description_str').AsString :=
      FieldByName('GenericName_str').AsString + ' ' + PackDescription;
    end;

end;

procedure TfrmeProducts.qrySysProductProductsNewRecord(DataSet: TDataSet);
begin

  Dataset.FieldByName('productPackSize_ID').AsString := CreateClassID;
  Dataset.FieldByName('genericName_Str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;
end;

procedure TfrmeProducts.qrySysProductGenericBrandLinkNewRecord(
  DataSet: TDataSet);
begin

  Dataset.FieldByName('genericBrandLink_ID').AsString := CreateClassID;
  Dataset.FieldByName('genericName_Str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;

end;

procedure TfrmeProducts.qrySysProductDosingParametersNewRecord(
  DataSet: TDataSet);
begin

  Dataset.FieldByName('productDose_ID').AsString := CreateClassID;
  Dataset.FieldByName('generic_Str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;

end;

procedure TfrmeProducts.qrySysProductInteractionsNewRecord(
  DataSet: TDataSet);
begin

  Dataset.FieldByName('interaction_ID').AsString := CreateClassID;
  Dataset.FieldByName('interaction_Generic_1_str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;
end;

procedure TfrmeProducts.qrySysProductAllergyLinkNewRecord(
  DataSet: TDataSet);
begin
  Dataset.FieldByName('allergyItem_ID').AsString := CreateClassID;
  Dataset.FieldByName('genericName_Str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;
end;

procedure TfrmeProducts.atnProduct_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductProducts'].Save;
end;

procedure TfrmeProducts.atnProduct_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductProducts'].Cancel;
end;

procedure TfrmeProducts.atnProduct_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductProducts'].Delete;
end;

procedure TfrmeProducts.atnProduct_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericNames'].Refresh;
  FDataManager.DataSet['qrySysProductProducts'].Refresh;
end;

procedure TfrmeProducts.atnInteraction_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductInteractions'].Cancel;
end;

procedure TfrmeProducts.atnInteraction_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductInteractions'].Delete;
end;

procedure TfrmeProducts.atnInteraction_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductInteractions'].Add;
end;

procedure TfrmeProducts.atnInteraction_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductInteractions'].Refresh;
end;

procedure TfrmeProducts.atnInteraction_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductInteractions'].Save;
end;

procedure TfrmeProducts.atnDosing_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductDosingParameters'].Save;
end;

procedure TfrmeProducts.atnDosing_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductDosingParameters'].Cancel;
end;

procedure TfrmeProducts.atnDosing_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductDosingParameters'].Delete;
end;

procedure TfrmeProducts.atnDosing_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductDosingParameters'].Refresh;
end;

procedure TfrmeProducts.atnDosing_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductDosingParameters'].Add;
end;

procedure TfrmeProducts.atnBrand_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericBrandLink'].Add;
end;

procedure TfrmeProducts.atnBrand_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericBrandLink'].Cancel;
end;

procedure TfrmeProducts.atnBrand_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericBrandLink'].Delete;
end;

procedure TfrmeProducts.atnBrand_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericBrandLink'].Refresh;
end;

procedure TfrmeProducts.atnBrand_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductGenericBrandLink'].Save;
end;

procedure TfrmeProducts.atnAllergy_SaveExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductAllergyLink'].Save;
end;

procedure TfrmeProducts.atnAllergy_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductAllergyLink'].Add;
end;

procedure TfrmeProducts.atnAllergy_CancelExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductAllergyLink'].Cancel;
end;

procedure TfrmeProducts.atnAllergy_RefreshExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductAllergyLink'].Refresh;
end;

procedure TfrmeProducts.atnAllergy_DeleteExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductAllergyLink'].Delete;
end;

procedure TfrmeProducts.atnProduct_AddExecute(Sender: TObject);
begin
  FDataManager.DataSet['qrySysProductProducts'].Add;
end;

procedure TfrmeProducts.qrySysProductAllergiesNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('allergyItem_ID').AsString := CreateClassID;
  Dataset.FieldByName('genericName_Str').AsString :=
    qrySysProductGenericNames.FieldByName('genericName_Str').AsString;
end;

procedure TfrmeProducts.qrySysProductInteractionsBeforePost(
  DataSet: TDataSet);
begin
  Dataset.FieldByName('interaction_Display_str').AsString :=
    TGeneric.Interaction_Description(
      Dataset.FieldByName('interaction_Generic_1_str').AsString,
      Dataset.FieldByName('interaction_Generic_2_str').AsString);
end;

procedure TfrmeProducts.atnProduct_UpdatePackDescriptionExecute(
  Sender: TObject);
var
  PackDescription : string;
begin

  with qrySysProductProducts do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;
    PackDescription :=
      TProduct.Description(
        FieldByName('StrengthValue_dbl').AsFloat,
        FieldByName('StrengthUnit_Str').AsString,
        FieldByName('DispensingValue_dbl').AsFloat,
        FieldByName('DispensingUnit_str').AsString,
        FieldByName('dispensedValue_dbl').AsFloat,
        FieldByName('dispensedUnit_str').AsString,
        FieldByName('PackSizeValue_dbl').AsFloat,
        FieldByName('PackSizeUnit_str').AsString,
        FieldByName('dispensingForm_str').AsString,
        FieldByName('strengthExtraDescription_str').AsString);
    FieldByName('Description_str').AsString :=
      FieldByName('GenericName_str').AsString + ' ' + PackDescription;

    FDataManager.DataSet['qrySysProductProducts'].Save;
    end;

end;

procedure TfrmeProducts.atnProduct_UsageExecute(Sender: TObject);
begin
  qryUsageReport.Close;
  ppReportUsage.Print;
end;

procedure TfrmeProducts.SetGenericList(const prmDisplay : boolean);
const
  SQL1 = 'select * from tblGenericName order by genericName_Str';
  SQL2 = 'select * from tblGenericName WHERE genericActive_Bol = 1 order by genericName_Str';


begin

try
  FDataManager.Session.ThisConnection.Close;
  atnToggleGenericList.Checked := prmDisplay;
  with qrySysProductGenericNames do
    begin
    SQL.Clear;
    if prmDisplay then SQL.Add(SQL2) else SQL.Add(SQL1);
    end;
//  with qrySysProductLUGenericNames do
//    begin
//    SQL.Clear;
//    if prmDisplay then SQL.Add(SQL2) else SQL.Add(SQL1);
//    end;

  FDataManager.Open;
except
  on e:exception do raise Exception.Create(e.Message);
end;

end;

procedure TfrmeProducts.atnToggleGenericListExecute(Sender: TObject);
begin
  SetGenericList( not (Sender as TAction).Checked );
end;

end.

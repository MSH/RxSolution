unit PrepackingItemsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ActnList, Menus, ElPopBtn, Mask, RzEdit, RzDBEdit,
  DBCtrls, RzDBCmbo, wwdbdatetimepicker, StdCtrls, RzBmpBtn, ExtCtrls,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, RzTabs, dxDBTLCl, dxGrClms, RzBckgnd;

type
  TPrepackingItemsFrm = class(TForm)
    Panel4: TPanel;
    btnClose: TButton;
    Panel1: TPanel;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label79: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    dteCheckedDate: TwwDBDateTimePicker;
    btnPostClose: TButton;
    cmbCheckedBy: TRzDBLookupComboBox;
    edtHumidity: TRzDBEdit;
    cmbPackedBy: TRzDBLookupComboBox;
    dtePackedDat: TwwDBDateTimePicker;
    Panel3: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    AddSingleItem1: TMenuItem;
    N1: TMenuItem;
    RemoveAllItems1: TMenuItem;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PageTakeItems: TRzPageControl;
    tbsCreditItems: TRzTabSheet;
    dbgPrepackingItems: TdxDBGrid;
    dbgPrepackingItemsNSN_str: TdxDBGridMaskColumn;
    dbgPrepackingItemsECN_str: TdxDBGridMaskColumn;
    dbgPrepackingItemsICN_str: TdxDBGridMaskColumn;
    dbgPrepackingItemsDescription_str: TdxDBGridColumn;
    dbgPrepackingItemsBatchNumber_str: TdxDBGridColumn;
    dbgPrepackingItemsExpiry_dat: TdxDBGridDateColumn;
    dbgPrepackingItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dbgPrepackingItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    tbsCredit_Remarks: TRzTabSheet;
    RzDBNotesField: TRzDBMemo;
    tbsCreditHistory: TRzTabSheet;
    dxDBPrepackingHistory: TdxDBGrid;
    cmbResultDescription: TRzDBLookupComboBox;
    dbgPrepackingItemsActualQty_int: TdxDBGridColumn;
    dxDBPrepackingHistoryPrepackingHistory_ID: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryPrepacking_ID: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryPrepackingItem_ID: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryDescription_str: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryDate_dat: TdxDBGridDateColumn;
    dxDBPrepackingHistoryProductCode_ID: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryType_str: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryUser_ID: TdxDBGridMaskColumn;
    dxDBPrepackingHistoryUserName_str: TdxDBGridMaskColumn;
    dbgPrepackingItemsAvailable: TdxDBGridColumn;
    Delete1: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    edtExpectYield: TRzDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtActualYield: TRzDBEdit;
    cmbResultICN: TRzDBLookupComboBox;
    atnSelectBatch1: TMenuItem;
    dteExpiryDate: TwwDBDateTimePicker;
    Label10: TLabel;
    Button2: TButton;
    dbgPrepackingItemsNotFromBulk_bol: TdxDBGridCheckColumn;
    N2: TMenuItem;
    N3: TMenuItem;
    PrePost1: TMenuItem;
    DBText1: TDBText;
    dbgPrepackingItemsRemainingSKUActual_dbl: TdxDBGridColumn;
    dbgPrepackingItemsRemainingSKUCalc_dbl: TdxDBGridColumn;
    dbgPrepackingItemsSourcePortion_dbl: TdxDBGridColumn;
    edtTemperature: TRzDBEdit;
    Label5: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label11: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzSeparator1: TRzSeparator;
    Label12: TLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label14: TLabel;
    DBText2: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    RzDBEdit5: TRzDBEdit;
    PopupMenu2: TPopupMenu;
    Print1: TMenuItem;
    Panel2: TPanel;
    lblPrepackRefNo: TDBText;
    lblPreposted: TLabel;
    lblLocked: TLabel;
    lblPosted: TLabel;
    btnPrint: TRzBmpButton;
    lblBrowseOnly: TLabel;
    lblResultDescription: TRzDBEdit;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    PrintResultLabels1: TMenuItem;
    EditProductLabel1: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure atnColSelectExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzDBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    procedure SetPageDisplay;

  public
    { Public declarations }
  end;

var
  PrepackingItemsFrm: TPrepackingItemsFrm;

implementation

uses PrepackingUDM, DialogGridColumnSelectorUFrm, RxSolutionSecurityClass, MainUDM,
  MyApplicationUtilities, DB, RxSolutionUFrm;

{$R *.dfm}

procedure TPrepackingItemsFrm.FormCreate(Sender: TObject);
const
  cbuf = 1;
var
  vDetFormSize  :TRect;
begin
  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);
end;

procedure TPrepackingItemsFrm.atnColSelectExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgPrepackingItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TPrepackingItemsFrm.SetPageDisplay;
var
  vAccessLevel  :integer;
  i: integer;

  prvIsRepLocked, prvIsRepPosted, prvIsPreposted : boolean;
  vDisable, atnBrowse : boolean;
begin

 with RxSolutionFrm.Security do
   atnBrowse := (GetUserAccessLevel(MODULE_PREPACKING) = USER_BROWSER);

 with PrepackingDM.qryPrepackingWorker do
  begin
  prvIsRepLocked  := (FieldByName('CheckedOut_bol').Asboolean and not PrepackingDM.IsLockedBySameUser);
  prvIsPreposted  := FieldByName('PrePosted_bol').Asboolean;
  prvIsRepPosted  := FieldByName('Posted_bol').Asboolean;
  end;

 vDisable := not (prvIsRepPosted or prvIsRepLocked or atnBrowse);
 pnlHeaderBackground.Enabled := vDisable;

 lblPosted.Visible := prvIsRepPosted;
 lblLocked.Visible := prvIsRepLocked;
 lblPreposted.Visible := (prvIsPreposted and (not prvIsRepPosted));    
 lblBrowseOnly.Visible := atnBrowse;   
 
 //********** Show or hide label to display Result Item Description
 //********** This solves the problem when a transaction is posted; but because the item has been made EDL = False
 //********** The item doesn't show up on the original item drop list 
 lblResultDescription.Visible := prvIsRepPosted;
 cmbResultDescription.Visible := (not prvIsRepPosted);

 with dbgPrepackingItems do
  for i:= 0 to ColumnCount -1 do
   if (Columns[i].FieldName = 'QtyUsed_dbl') or
      (Columns[i].FieldName = 'PackCost_mon') or
      (Columns[i].FieldName = 'RemainingSKUActual_int') or
      (Columns[i].FieldName = 'Expiry_dat') or
      (Columns[i].FieldName = 'BatchNumber_str') or
      (Columns[i].FieldName = 'NotFromBulk_bol') or
      (Columns[i].FieldName = 'SourcePortion_dbl') or
      (Columns[i].FieldName = 'RemainingSKUActual_int') or
      (Columns[i].FieldName = 'RemainingSKUActual_dbl') then  
      Columns[i].DisableEditor := (not vDisable or prvIsPreposted);

 PrepackingDM.atnAddSingleItem.Enabled  := (not (prvIsPreposted or atnBrowse));
 PrepackingDM.atnSelectBatch.Enabled    := (not (prvIsPreposted or atnBrowse));
 PrepackingDM.atnDeleteItem.Enabled     := (not (prvIsPreposted or atnBrowse));
 PrepackingDM.atnDeleteAllItems.Enabled := (not (prvIsPreposted or atnBrowse));

 PrepackingDM.atnPostandClose.Visible    := prvIsPreposted and (not prvIsRepPosted) and (not atnBrowse);
 PrepackingDM.atnPrePostandClose.visible := (not prvIsRepPosted) and (not atnBrowse);

 //********** MAKE the SELL BY/EXPIRY DATE Minimum equal to current
 if not prvIsRepPosted then
  begin
  dteExpiryDate.MinDate := Now()-1;
  end;

end;

procedure TPrepackingItemsFrm.FormShow(Sender: TObject);
begin
 SetPageDisplay;
 PrepackingItemsFrm.WindowState := wsMaximized;
end;


procedure TPrepackingItemsFrm.RzDBEdit3Exit(Sender: TObject);
begin
 //Update value of result item
 with PrepackingDM.qryPrepackingWorker do
  begin
  FieldByName('ResultCost_mon').Value := PrepackingDM.NewSumPrice();
  end;

end;

end.

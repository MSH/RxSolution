unit QuotationDetailUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, StdCtrls, DBCtrls, RzDBEdit, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, RzTabs, ActnList, Menus, ElPopBtn,
  RzDBCmbo, wwdbdatetimepicker, RzBmpBtn, ExtCtrls;

type
  TQuotationDetailFrm = class(TForm)
    Label6: TLabel;
    Panel4: TPanel;
    btnClose: TButton;
    Panel1: TPanel;
    Image2: TImage;
    btnPrint: TRzBmpButton;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label79: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    dteCheckedDate: TwwDBDateTimePicker;
    Panel2: TPanel;
    lblPrepackRefNo: TDBText;
    lblPosted: TLabel;
    lblLocked: TLabel;
    btnPostClose: TButton;
    cmbDemanderCode: TRzDBLookupComboBox;
    cmbDemanderName: TRzDBLookupComboBox;
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
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PopMenuPrint: TPopupMenu;
    PrintReturnOut2: TMenuItem;
    PageTakeItems: TRzPageControl;
    tbsQuotesItems: TRzTabSheet;
    dbgQuotationItems: TdxDBGrid;
    tbsQuotes_Remarks: TRzTabSheet;
    RzDBNotesField: TRzDBMemo;
    tbsQuotesHistory: TRzTabSheet;
    dxDBQuotationHistory: TdxDBGrid;
    dbgQuotationItemsNSN_str: TdxDBGridColumn;
    dbgQuotationItemsECN_str: TdxDBGridColumn;
    dbgQuotationItemsICN_str: TdxDBGridColumn;
    dbgQuotationItemsDescription_str: TdxDBGridColumn;
    dbgQuotationItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dbgQuotationItemsMarkUp_dbl: TdxDBGridMaskColumn;
    dbgQuotationItemsVAT_dbl: TdxDBGridMaskColumn;
    dbgQuotationItemsSellingPrice_mon: TdxDBGridCurrencyColumn;
    dbgQuotationItemsQty_int: TdxDBGridMaskColumn;
    dbgQuotationItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    dbgQuotationItemsQtyOnHand_int: TdxDBGridMaskColumn;
    atnAddSingleItem1: TMenuItem;
    AddAllEDLProducts1: TMenuItem;
    N2: TMenuItem;
    dxDBQuotationHistoryDescription_str: TdxDBGridMaskColumn;
    dxDBQuotationHistoryDate_dat: TdxDBGridDateColumn;
    dxDBQuotationHistoryType_str: TdxDBGridMaskColumn;
    dxDBQuotationHistoryUserName_str: TdxDBGridMaskColumn;
    RzBmpButton1: TRzBmpButton;
    atnDeleteItem1: TMenuItem;
    Removeallitems1: TMenuItem;
    N1: TMenuItem;
    atnMakeRequisition1: TMenuItem;
    Label1: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    CancelQuoute1: TMenuItem;
    DBText1: TDBText;
    AddDemanderItems1: TMenuItem;
    Label4: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dbgQuotationItemsAccepted_bol: TdxDBGridCheckColumn;
    Button1: TButton;
    lblBrowseOnly: TLabel;
    cmbRequestedBy: TRzDBLookupComboBox;
    cmbPreparedBy: TRzDBLookupComboBox;
    procedure atnColSelectExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationDetailFrm: TQuotationDetailFrm;

implementation

uses QuotationUDM, DialogGridColumnSelectorUFrm, RxSolutionUFrm, RxSolutionSecurityClass;

{$R *.dfm}

procedure TQuotationDetailFrm.atnColSelectExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgQuotationItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TQuotationDetailFrm.FormCreate(Sender: TObject);
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

  PageTakeItems.Height := Height - (Panel4.Height*2 + Panel1.Height  + Panel3.Height + 5);

end;

procedure TQuotationDetailFrm.FormShow(Sender: TObject);
var
  vAccessLevel  :integer;
  i:integer;

  prvIsRepLocked, prvIsRepPosted, prvIsLockedBySameUser : boolean;
  vDisable, atnBrowse : boolean;
begin

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_QUOTATION) = USER_BROWSER);

 QuotationDetailFrm.WindowState := wsMaximized;

 with QuotationDM.qryQuotationWorker do
  begin
  prvIsRepLocked  := (FieldByName('CheckedOut_bol').Asboolean and not QuotationDM.IsLockedBySameUser);
  prvIsRepPosted  := FieldByName('Posted_bol').Asboolean;
  end;

 vDisable := not (prvIsRepPosted or prvIsRepLocked or atnBrowse);
 pnlHeaderBackground.Enabled := vDisable;

 lblPosted.Visible := prvIsRepPosted;
 lblLocked.Visible := prvIsRepLocked;
 lblBrowseOnly.Visible := atnBrowse;

 with dbgQuotationItems do
  for i:= 0 to ColumnCount -1 do
   if (Columns[i].FieldName = 'Qty_int') or
      (Columns[i].FieldName = 'PackCost_mon') or
      (Columns[i].FieldName = 'SellingPrice_mon') or
      (Columns[i].FieldName = 'MarkUp_dbl') then
      Columns[i].DisableEditor := (not vDisable);

 QuotationDM.atnPost.Enabled            := vDisable;
 QuotationDM.atnAddSingleItem.Enabled   := vDisable;
 QuotationDM.atnAddEDLProducts.Enabled  := vDisable;
 QuotationDM.atnDeleteItem.Enabled      := vDisable;
 QuotationDM.atnDeleteallItems.Enabled  := vDisable;
 QuotationDM.atnAddDemanderAuthorisedItems.Enabled := vDisable;
 QuotationDM.atnMakeRequisition.Enabled := prvIsRepPosted and (not atnBrowse);

end;

end.

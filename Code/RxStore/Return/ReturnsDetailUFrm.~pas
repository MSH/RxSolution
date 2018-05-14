unit ReturnsDetailUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  ExtCtrls, DBCtrls, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  wwdbdatetimepicker, wwdblook, Mask, RzBmpBtn, DB, Menus, ElPopBtn,
  ActnList, RzDBEdit, RzTabs, RzCmboBx, RzDBCmbo, ComCtrls, DateUtils,
  RzEdit;

type
  TReturnsDetailFrm = class(TForm)
    PopupMenu1: TPopupMenu;
    AddSingleItem1: TMenuItem;
    Panel4: TPanel;
    btnClose: TButton;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PageTakeItems: TRzPageControl;
    tbsReturnsItems: TRzTabSheet;
    tbsReturns_Remarks: TRzTabSheet;
    dbgReturnsItems: TdxDBGrid;
    dbgStockTakeItemICN_str: TdxDBGridColumn;
    dbgStockTakeItemECN_str: TdxDBGridColumn;
    dbgStockTakeItemNSN_str: TdxDBGridColumn;
    dbgReturnQty_int: TdxDBGridMaskColumn;
    dbgPackCost_mon: TdxDBGridCurrencyColumn;
    dbgExpiry_dat: TdxDBGridDateColumn;
    RzDBNotesField: TRzDBMemo;
    dbgExtendedCost_mon: TdxDBGridCurrencyColumn;
    dbgReturnsItemsDescription_str: TdxDBGridColumn;
    dbgBatchNumber_str: TdxDBGridColumn;
    tbsReturnsHistory: TRzTabSheet;
    dxDBStocktakeHistory: TdxDBGrid;
    dxDBStocktakeHistoryDescription_str: TdxDBGridMaskColumn;
    dxDBStocktakeHistoryUser_ID: TdxDBGridMaskColumn;
    dxDBStocktakeHistoryDate_dat: TdxDBGridDateColumn;
    dxDBStocktakeHistoryType_str: TdxDBGridMaskColumn;
    dxDBStocktakeHistoryUserName_str: TdxDBGridMaskColumn;
    dbgBin_str: TdxDBGridColumn;
    DeleteAllItems1: TMenuItem;
    Panel1: TPanel;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label79: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbAuthorised_Dat: TwwDBDateTimePicker;
    cmbCaptured_dat: TwwDBDateTimePicker;
    btnPostClose: TButton;
    cmbSupplierCode: TRzDBLookupComboBox;
    cmbSupplierName: TRzDBLookupComboBox;
    cmbCaptured: TRzDBLookupComboBox;
    cmbAuthorised: TRzDBLookupComboBox;
    edtReference: TRzDBEdit;
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
    cmbType_str: TRzDBComboBox;
    edtReason_str: TRzDBEdit;
    Label4: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    PrintReturnOut1: TMenuItem;
    AddAnotherBatchItem1: TMenuItem;
    N3: TMenuItem;
    SelectInvoice1: TMenuItem;
    PopupMenuPrinting: TPopupMenu;
    PrintReturnstoSupplier1: TMenuItem;
    Label31: TLabel;
    Panel2: TPanel;
    lblReturns_str: TDBText;
    lblPosted: TLabel;
    lblLocked: TLabel;
    RzBmpButton1: TRzBmpButton;
    dbgShippingPack_int: TdxDBGridColumn;
    lblBrowseOnly: TLabel;
    atnCaptureCodes: TAction;
    CaptureBarCodes1: TMenuItem;
    procedure atnColSelectExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetDisplayProperties;
    procedure FormCreate(Sender: TObject);
    procedure atnCaptureCodesExecute(Sender: TObject);
       
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReturnsDetailFrm: TReturnsDetailFrm;

implementation

uses DialogGridColumnSelectorUFrm, RxSolutionUFrm,
  RxSolutionSecurityClass, ReturnsUDm, ReturnsUFrm, ReturnsBarCodeUFrm;

{$R *.dfm}

procedure TReturnsDetailFrm.atnColSelectExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgReturnsItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TReturnsDetailFrm.SetDisplayProperties;
var
 CheckPosted, atnBrowse, lockByUser : boolean;
begin

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_STORE_RETURNS) = USER_BROWSER);

 CheckPosted                    := ReturnsDm.CheckComplete;
 lockByUser                     := ReturnsDm.lockedByUser;
 lblPosted.Visible              := CheckPosted;
 lblBrowseOnly.Visible          := atnBrowse and (not CheckPosted);

 pnlHeaderBackground.Enabled    := not (CheckPosted or atnBrowse);

 dbgReturnQty_int.DisableEditor := (CheckPosted);
 dbgPackCost_mon.DisableEditor  := (CheckPosted);

 atnCaptureCodes.Enabled        := ReturnsDm.FUsesBarcoding;
 atnCaptureCodes.Visible        := not (CheckPosted or atnBrowse);

{ if ReturnsDm.AddNewRecord then
  begin
  pnlHeaderBackground.Enabled    := False;
  dbgReturnQty_int.DisableEditor := False;
  end;
 }
// lblLocked.Visible              := lockByUser;
end;

procedure TReturnsDetailFrm.FormShow(Sender: TObject);
begin
// Set Display properties
 SetDisplayProperties;
//maximise window state of Returns Out detail form
// ReturnsDetailFrm.WindowState := wsMaximized;
//Make Return Out items the active page whenever this form is open
 PageTakeItems.ActivePage := tbsReturnsItems;

end;

procedure TReturnsDetailFrm.FormCreate(Sender: TObject);
const
  cbuf = 0;
var
  vDetFormSize  :TRect;
begin
  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

 //SM 10 June 2014
 PageTakeItems.Height := Height - (pnlHeaderBackground.Height + Panel2.Height + Panel4.Height * 2 + Panel3.Height  + 5);

end;


procedure TReturnsDetailFrm.atnCaptureCodesExecute(Sender: TObject);
begin

 with ReturnsDm.qryReturnsWorker do
  begin
  if (State in [dsEdit, dsInsert]) then
   Post;
  end;

 with ReturnsBarCodeFrm do
  begin
  WindowState := wsMaximized;
  ShowModal;
  end;
  
end;

end.

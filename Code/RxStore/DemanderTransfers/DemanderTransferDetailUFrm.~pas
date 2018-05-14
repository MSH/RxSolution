unit DemanderTransferDetailUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, Menus, ActnList, StdCtrls, DBCtrls, RzDBEdit,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, RzTabs, ElPopBtn, RzDBCmbo,
  wwdbdatetimepicker, RzBmpBtn, ExtCtrls, dxDBTLCl, dxGrClms, Mask, RzEdit,
  RzPanel, RzRadGrp, RzDBRGrp, RzButton, RzRadChk, RzDBChk;

type
  TDemanderTransferDetailFrm = class(TForm)
    Label6: TLabel;
    Panel4: TPanel;
    btnClose: TButton;
    Panel1: TPanel;
    Image2: TImage;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    btnPostClose: TButton;
    cmbDemanderCode: TRzDBLookupComboBox;
    cmbDemanderName: TRzDBLookupComboBox;
    cmbRequestedBy: TRzDBLookupComboBox;
    dtePackedDat: TwwDBDateTimePicker;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
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
    PageTakeItems: TRzPageControl;
    tbsItems: TRzTabSheet;
    dbgtransferItems: TdxDBGrid;
    tbs_Remarks: TRzTabSheet;
    RzDBNotesField: TRzDBMemo;
    tbsHistory: TRzTabSheet;
    dxDBtransferHistory: TdxDBGrid;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PopMenuPrint: TPopupMenu;
    Label4: TLabel;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    dbgtransferItemsECN_str: TdxDBGridColumn;
    dbgtransferItemsICN_str: TdxDBGridColumn;
    dbgtransferItemsNSN_str: TdxDBGridColumn;
    dbgtransferItemsDescription_str: TdxDBGridColumn;
    dbgtransferItemsSKU_dbl: TdxDBGridMaskColumn;
    dbgtransferItemsRequestedQty_dbl: TdxDBGridMaskColumn;
    dxDBtransferHistoryDescription_str: TdxDBGridMaskColumn;
    dxDBtransferHistoryDate_dat: TdxDBGridDateColumn;
    dxDBtransferHistoryType_str: TdxDBGridMaskColumn;
    dxDBtransferHistoryUserName_str: TdxDBGridMaskColumn;
    atnAddSingleProduct1: TMenuItem;
    AddDemanderItems1: TMenuItem;
    N1: TMenuItem;
    DeleteselectedProduct1: TMenuItem;
    DeleteALLProductsfromthisTransfers1: TMenuItem;
    Label5: TLabel;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dbgtransferItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dbgtransferItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    DBText1: TDBText;
    Label7: TLabel;
    edtReference: TRzDBEdit;
    dbgtransferItemsPackQty_int: TdxDBGridColumn;
    chkUseSKUOnly_bol: TRzDBCheckBox;
    PrintDemanderTransfers1: TMenuItem;
    AddDemanderToItems1: TMenuItem;
    dbgtransferItemsSKUCost_mon: TdxDBGridCurrencyColumn;
    N2: TMenuItem;
    dbgtransferItemsSKUUnit_str: TdxDBGridColumn;
    dbgtransferItemsDemanderPacksOnHand: TdxDBGridColumn;
    dbgtransferItemsDemanderSKUOnHand: TdxDBGridColumn;
    Panel2: TPanel;
    lblRefNo: TDBText;
    lblPosted: TLabel;
    lblLocked: TLabel;
    lblBrowseOnly: TLabel;
    RzBmpButton1: TRzBmpButton;
    procedure FormCreate(Sender: TObject);
    procedure atnColSelectExecute(Sender: TObject);
    procedure SetPageDisplay;
    procedure FormShow(Sender: TObject);
    procedure CheckQtyType;
    procedure chkUseSKUOnly_bolExit(Sender: TObject);
    procedure chkUseSKUOnly_bolKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemanderTransferDetailFrm: TDemanderTransferDetailFrm;

implementation

uses DemanderTranfersUFrm, DemanderTransferUDM, DialogGridColumnSelectorUFrm,
  DB, RxSolutionSecurityClass, RxSolutionUFrm;

{$R *.dfm}

procedure TDemanderTransferDetailFrm.FormCreate(Sender: TObject);
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

  PageTakeItems.Height := Height - (Panel2.Height + pnlHeaderBackground.Height + Panel3.Height + Panel4.Height * 2 + 5) ;

end;

procedure TDemanderTransferDetailFrm.atnColSelectExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgtransferItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TDemanderTransferDetailFrm.SetPageDisplay;
var
  vAccessLevel, i: integer;
  prvIsRepLocked, prvIsRepPosted, atnBrowse : boolean;
  vDisable : boolean;
begin

  with RxSolutionFrm.Security do
   atnBrowse := (GetUserAccessLevel(MODULE_DEMANDER_TRANSFERS) = USER_BROWSER);

 with DemanderTransferDM.qryTransfersWorker do
  begin
  prvIsRepLocked  := (FieldByName('CheckedOut_bol').Asboolean and not DemanderTransferDM.IsLockedBySameUser);
  prvIsRepPosted  := FieldByName('Posted_bol').Asboolean;
  end;

 vDisable := not (prvIsRepPosted or prvIsRepLocked or atnBrowse);
 pnlHeaderBackground.Enabled := vDisable;

 lblPosted.Visible := prvIsRepPosted;
 lblLocked.Visible := prvIsRepLocked;
 lblBrowseOnly.Visible := atnBrowse;
 
 with dbgtransferItems do
  for i:= 0 to ColumnCount -1 do
   if (Columns[i].FieldName = 'SKU_dbl') or
      (Columns[i].FieldName = 'PackQty_int') or
      (Columns[i].FieldName = 'RequestedQty_dbl') then
      Columns[i].DisableEditor := (not vDisable);
  
 DemanderTransferDM.atnAddSingleProduct.Enabled  := vDisable;
 DemanderTransferDM.atnDeleteAllItems.Enabled    := vDisable;
 DemanderTransferDM.atnDeleteSingleItem.Enabled  := vDisable;
 DemanderTransferDM.atnAddDemanderFromItems.Enabled := vDisable;
 DemanderTransferDM.atnAddDemanderToItems.Enabled:= vDisable;  
 DemanderTransferDM.atnPostAndClose.Enabled      := not (prvIsRepPosted and atnBrowse);
 DemanderTransferDM.atnUnLockDemanderTransfer.Enabled := (prvIsRepLocked);

end;

procedure TDemanderTransferDetailFrm.FormShow(Sender: TObject);
begin
 SetPageDisplay;
 DemanderTransferDetailFrm.WindowState := wsMaximized;
 CheckQtyType;
end;

procedure TDemanderTransferDetailFrm.CheckQtyType;
begin
 with DemanderTransferDM.qryTransfersWorker do
  begin
  if FieldByName('UseSKUOnly_bol').AsBoolean then
   begin
   dbgtransferItemsPackQty_int.Visible := False;
   dbgtransferItemsSKU_dbl.Visible     := True;
   end
  else
   begin
   dbgtransferItemsPackQty_int.Visible := True;
   dbgtransferItemsSKU_dbl.Visible     := False;
   end;
  end;

end;

procedure TDemanderTransferDetailFrm.chkUseSKUOnly_bolExit(
  Sender: TObject);
begin

 CheckQtyType;

 with DemanderTransferDM.qryTransfersWorker do
  begin
  if FieldByName('UseSKUOnly_bol').AsBoolean then
   DemanderTransferDM.ZeroAllPackQty
  else
   DemanderTransferDM.ZeroAllSKU;
  end;

end;

procedure TDemanderTransferDetailFrm.chkUseSKUOnly_bolKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 CheckQtyType;

 with DemanderTransferDM.qryTransfersWorker do
  begin
  if FieldByName('UseSKUOnly_bol').AsBoolean then
   DemanderTransferDM.ZeroAllPackQty
  else
   DemanderTransferDM.ZeroAllSKU;
  end;
end;

end.

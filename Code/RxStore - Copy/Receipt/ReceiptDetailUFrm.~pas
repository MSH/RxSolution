unit ReceiptDetailUFrm;
{------------------------------------------------------------------------------}
{NOTE : THIS IS A SHARED UNIT.  IT IS USED TO BUILD BOTH RXSOLUTION & RXSTORE  }
{------------------------------------------------------------------------------}
{   It is optimised for compiling in RxSolution so any specific RxStore        }
{   directives need To be enclose in a compiler directive called -             }
{                                                                              }
{   ($IFDEF RXSTOREBUILD )                                                     }
{     RxStore specific code here.                                              }
{     This can be something like a form or a unit.                             }
{   ($ELSE)                                                                    }
{     RxStolution specific code here.                                          }
{                                                                              }
{   ($ENDIF)                                                                   }
{                                                                              }
{   This example used normal bracket, but for compiler directive use curly     }
{   brackets.                                                                  }
{                                                                              }
{ ---------------------------------------------------------------------------- }
{ EDIT/CHANGE NOTE                                                             }
{ Date Recorded : 2006-03-09                                                   }
{ Recorded By   : Deane Putzier                                                }
{ Reason        : Merging of the code files for compilation in both apps       }
{------------------------------------------------------------------------------}

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,DBCtrls,Mask, ActnList, DBActns,ImgList,
  Menus, DB,

  RzBmpBtn, dxExEdtr, dxCntner, dxEdLib, dxDBELib, dxDBTLCl,
  dxGrClms, dxDBGrid, dxTL, dxDBCtrl, ExtCtrls, ElPopBtn, dxPageControl,
  dxEditor, dxDBEdtr, wwdbdatetimepicker, wwdblook, RzDBCmbo, RzCommon,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

const
 EDGEMARGIN = 10;

 VALIDATE_POSTING             = 9;
 UPDATERECEIPTITEM_TOTALS     = 0;
 GENERATE_RECEIPT_FROM_ORDER  = 1;
 GENERATE_RECEIPT_FROM_ORDER_WITH_QTY = 7;//SM
 GET_PRODUCT_TRUE             = 2;
 UPDATE_RECEIPT_TOTALS        = 3;
 SET_SUPPLIER_STR             = 4;
 SET_SYSTEMSTORE_STR          = 5;
 SET_ORDERREF_STR             = 6;

type
  TReceiptDetailFrm = class(TForm)
    ActionList1: TActionList;
    atnItemsFirst: TDataSetFirst;
    atnItemsPrior: TDataSetPrior;
    atnItemsNext: TDataSetNext;
    atnItemsLast: TDataSetLast;
    atnItemsPost: TDataSetPost;
    atnItemsCancel: TDataSetCancel;
    atnItemsRefresh: TDataSetRefresh;
    atnItemsPageUp: TAction;
    atnItemsPageDown: TAction;
    atnItemsGenerateFromOrder: TAction;
    atnToggleDisplay: TAction;
    PopupMenu1: TPopupMenu;
    Generate1: TMenuItem;
    mnuType: TPopupMenu;
    DDV1: TMenuItem;
    Depot1: TMenuItem;
    BuyOut1: TMenuItem;
    mnuVAT: TPopupMenu;
    IncludeVatonItems1: TMenuItem;
    VATalreadyonitems1: TMenuItem;
    dxEditStyle_NoBorder: TdxEditStyleController;
    dxEditStyle_Flat: TdxEditStyleController;
    ImageList1: TImageList;
    atnItemsMarkAllItemsAsComplete: TAction;
    N1: TMenuItem;
    Markallascomplete1: TMenuItem;
    atnDisplayCols: TAction;
    RzFrameController1: TRzFrameController;
    atnItemsGenerateFromOrderWithQty: TAction;
    addanotherbatchitem1: TMenuItem;
    atnAddDiffBatchItem: TAction;
    N2: TMenuItem;
    Timer1: TTimer;
    PopupMenu2: TPopupMenu;
    PrintselectedReceivingReport1: TMenuItem;
    PrintselectedreceivingreportOutstandingItems1: TMenuItem;
    atnPrintReceipt: TAction;
    atnPrintReceiptOutstanding: TAction;
    atnCaptureBarCodes: TAction;
    atnCaptureBarCodes1: TMenuItem;
    pnlReceiptHeaderBackground: TPanel;
    Label4: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label51: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    dbtActivated_dat: TDBText;
    Label32: TLabel;
    Label3: TLabel;
    DBText7: TDBText;
    dbtActivatedBy_str: TDBText;
    DBText9: TDBText;
    Label23: TLabel;
    dbtOrderRef: TDBText;
    dbtSystemStore: TDBText;
    dbtSupplier: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    lblTypeDisplay: TLabel;
    lblVATDisplay: TLabel;
    Label5: TLabel;
    LabelVoucher: TLabel;
    lblDemander: TLabel;
    dbeICNCode: TDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    DBEdit8: TDBEdit;
    Panel1: TPanel;
    lblIssued: TLabel;
    dbtProductCode: TDBText;
    lblLocked: TLabel;
    btnPost: TButton;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxeCharges_mon: TdxDBCurrencyEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dbcActivated_bol: TDBCheckBox;
    dbcIncludeVAT: TDBCheckBox;
    rgrpType: TDBRadioGroup;
    rzlSupplierName: TRzDBLookupComboBox;
    rzlSystemStore: TRzDBLookupComboBox;
    rzlSystemStoreCode: TRzDBLookupComboBox;
    rzlReferenceString: TRzDBLookupComboBox;
    rzlReferenceNumber: TRzDBLookupComboBox;
    rzlSupplierCode: TRzDBLookupComboBox;
    RzlVoucherNo_str: TRzDBLookupComboBox;
    dbeDemander: TDBEdit;
    pnlStatusBar: TPanel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxTbctrlReceiptDetail: TdxPageControl;
    dxTbsReceipt_Items: TdxTabSheet;
    Panel3: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    Panel4: TPanel;
    Panel7: TPanel;
    dxDBReceipt_Itemss: TdxDBGrid;
    dxDBReceipt_ItemssProductCode_str: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssBin_str: TdxDBGridPickColumn;
    dxDBReceipt_ItemssICN_str: TdxDBGridColumn;
    dxDBReceipt_ItemssECN_str: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssDescription_str: TdxDBGridColumn;
    dxDBReceipt_ItemssQtyOrdered_int: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssQtyReceived_int: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssOrder_QtyOutstanding: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssQtyToFollow_int: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssPackCost_mon: TdxDBGridCurrencyColumn;
    dxDBReceipt_ItemssCompleted_bol: TdxDBGridCheckColumn;
    dxDBReceipt_ItemssExtendedCost_mon: TdxDBGridCurrencyColumn;
    dxDBReceipt_ItemssNSN_str: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssVoucherNo_str: TdxDBGridColumn;
    dxDBReceipt_ItemssExpiry_dat: TdxDBGridDateColumn;
    dxDBReceipt_ItemssBatchNumber_str: TdxDBGridColumn;
    dxDBReceipt_ItemssShippingPack_int: TdxDBGridColumn;
    dxDBReceipt_ItemssCalc_PackCost_mon: TdxDBGridCurrencyColumn;
    dxTbsReceipt_Notes: TdxTabSheet;
    dxDBMmRemarks: TdxDBMemo;
    dxTbsReceipt_History: TdxTabSheet;
    dxDBReceiptHistory: TdxDBGrid;
    dxDBReceiptHistorydate_dat: TdxDBGridDateColumn;
    dxDBReceiptHistoryType_str: TdxDBGridMaskColumn;
    dxDBReceiptHistoryDescription_str: TdxDBGridMaskColumn;
    dxDBReceiptHistoryUserName_str: TdxDBGridMaskColumn;
    RzBmpButton1: TRzBmpButton;
    lblAddBatch: TButton;
    Button2: TButton;
    Button1: TButton;
    atnUpdateAllReceivedBatches: TAction;
    CheckallReceived1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure atnItemsGenerateFromOrderExecute(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPostClick(Sender: TObject);
    procedure Depot1Click(Sender: TObject);
    procedure IncludeVatonItems1Click(Sender: TObject);
//    procedure tbsReceiptDisplayResize(Sender: TObject);
    procedure atnItemsPageUpExecute(Sender: TObject);
    procedure atnItemsPageDownExecute(Sender: TObject);
    procedure dxDBReceipt_Items2ChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
    procedure atnItemsMarkAllItemsAsCompleteExecute(Sender: TObject);
    procedure atnDisplayColsExecute(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure atnItemsGenerateFromOrderWithQtyExecute(Sender: TObject);
    procedure atnAddDiffBatchItemExecute(Sender: TObject);
    procedure rzlReferenceNumberCloseUp(Sender: TObject);
    procedure rzlReferenceStringCloseUp(Sender: TObject);
    procedure RzlVoucherNo_strCloseUp(Sender: TObject);
    procedure UpdateBinLookUps;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure atnPrintReceiptExecute(Sender: TObject);
    procedure atnPrintReceiptOutstandingExecute(Sender: TObject);
    procedure atnCaptureBarCodesExecute(Sender: TObject);
    procedure atnUpdateAllReceivedBatchesExecute(Sender: TObject);
  private
    procedure SetPageVisibility;
    procedure PageDataSet(PageSize: integer);
    function AccessDataModule(CallProcedure: integer): boolean;
    procedure SetVATDisplay;
    procedure SetTypeDisplay;
    procedure restartTimer;
    { Private declarations }
  public
    { Public declarations }

  end;

  TReceiptEditor = class(TObject)
  public
    function EditReceipt: Boolean;
  end;



implementation

uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,

  {$ENDIF}

  ReceiptUDm,
  MainUDM, ProductAutolevelUDM, ReceiptBarcodingUFrm;


{$R *.dfm}

{ TReceiptEditor }

function TReceiptEditor.EditReceipt: Boolean;
var
  ReceiptDetailFrm: TReceiptDetailFrm;
begin

  Result := False;
  ReceiptDetailFrm := TReceiptDetailFrm.Create(Application);
  with ReceiptDetailFrm do
    try
    SetPageVisibility;
    if ShowModal = mrOK then Result := True;
    //if ReceiptDm.IsLockedBySameUser then
     ReceiptDm.MakeRecordAvailable;

    finally
    Free;
    end;

end;



procedure TReceiptDetailFrm.SetPageVisibility;
var
  i :integer;
  vAccessLevel :double;

begin
  {$IFDEF RXSTOREBUILD}
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      vAccessLevel := GetUserRights(SYSTEM_RECEIPTS, 0);
  {$ELSE}
  vAccessLevel := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_STORE_RECEIPTS);
  {$ENDIF}
  

  with dxTbctrlReceiptDetail do
    Activepage := dxTbsReceipt_Items;
  dxTbsReceipt_History.TabVisible := vAccessLevel > USER_USER; 

  btnPost.Visible             := (not dbcActivated_bol.Field.AsBoolean) AND (vAccessLevel > USER_USER);

  dbtActivatedBy_str.Visible  := dbcActivated_bol.Field.AsBoolean;
  dbtActivated_dat.Visible    := dbcActivated_bol.Field.AsBoolean;
//  dbtPosted.Visible           := dbcActivated_bol.Field.AsBoolean;

  dbtSupplier.Visible         := dbcActivated_bol.Field.AsBoolean;
  dbtSystemStore.Visible      := dbcActivated_bol.Field.AsBoolean;
  dbtOrderRef.Visible         := dbcActivated_bol.Field.AsBoolean;

  rzlSupplierCode.Visible    := not dbcActivated_bol.Field.AsBoolean;
  rzlSupplierName.Visible    := not dbcActivated_bol.Field.AsBoolean;
  rzlSystemStoreCode.Visible := not dbcActivated_bol.Field.AsBoolean;
  rzlSystemStore.Visible     := not dbcActivated_bol.Field.AsBoolean;
  rzlReferenceNumber.Visible := not dbcActivated_bol.Field.AsBoolean;
  rzlReferenceString.Visible := not dbcActivated_bol.Field.AsBoolean;
  RzlVoucherNo_str.Visible   := not dbcActivated_bol.Field.AsBoolean;
//JP Label Voucher
  LabelVoucher.Visible       := not dbcActivated_bol.Field.AsBoolean;

//  atnAddDiffBatchItem.Enabled := ReceiptDm.FUsesBatchManagement;
  lblAddBatch.Visible         := ReceiptDm.FUsesBatchManagement;

  with dxDBReceipt_Itemss do
    if dbcActivated_bol.Field.AsBoolean then
      begin
      for i:= 0 to ColumnCount -1 do
        if  (Columns[i].FieldName = 'QtyReceived_int') or
            (Columns[i].FieldName = 'NSN_str') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'VoucherNo_str') or
            (Columns[i].FieldName = 'QtyToFollow_int') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'VoucherNo_str') or
            (Columns[i].FieldName = 'QtyReceived_int') or
            (Columns[i].FieldName = 'Bin_str') or
            (Columns[i].FieldName = 'PackCost_mon') or
            (Columns[i].FieldName = 'BatchNumber_str') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'Calc_PackCost_mon') or
            (Columns[i].FieldName = 'Completed_bol') then
          Columns[i].DisableEditor := True;
      end else
      for i:= 0 to ColumnCount -1 do
        if  (Columns[i].FieldName = 'QtyReceived_int') or
            (Columns[i].FieldName = 'NSN_str') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'VoucherNo_str') or
            (Columns[i].FieldName = 'QtyToFollow_int') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'VoucherNo_str') or
            (Columns[i].FieldName = 'QtyReceived_int')or
            (Columns[i].FieldName = 'Bin_str') or
            (Columns[i].FieldName = 'PackCost_mon') or
            (Columns[i].FieldName = 'BatchNumber_str') or
            (Columns[i].FieldName = 'Expiry_dat') or
            (Columns[i].FieldName = 'Calc_PackCost_mon') or
            (Columns[i].FieldName = 'Completed_bol') then
          Columns[i].DisableEditor := False;

  lblIssued.Visible                   := dbcActivated_bol.Field.AsBoolean;
  pnlReceiptHeaderBackground.Enabled  := not dbcActivated_bol.Field.AsBoolean;
  atnItemsGenerateFromOrder.Enabled   := not dbcActivated_bol.Field.AsBoolean;
  atnItemsGenerateFromOrderWithQty.Enabled:= not dbcActivated_bol.Field.AsBoolean; //SM
  atnAddDiffBatchItem.Enabled         := (not dbcActivated_bol.Field.AsBoolean) and (ReceiptDm.FUsesBatchManagement);
  //Issue 166
  atnItemsMarkAllItemsAsComplete.Enabled := not dbcActivated_bol.Field.AsBoolean;

  SetTypeDisplay;
  SetVATDisplay;

  //Load Bin Locations only if not posted
  if not dbcActivated_bol.Field.AsBoolean then
   UpdateBinLookUps;

  lblDemander.Visible := MainDm.IsRequisitionManagementOnly;
  dbeDemander.Visible := MainDm.IsRequisitionManagementOnly;

  atnCaptureBarCodes.Enabled := (ReceiptDm.FUsesBarcoding) and (RxSolutionFrm.HaveBarcodeScanner);
  atnCaptureBarCodes.Visible :=(not dbcActivated_bol.Field.AsBoolean) and (RxSolutionFrm.HaveBarcodeScanner);

end;

procedure TReceiptDetailFrm.FormCreate(Sender: TObject);
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
  dxTbctrlReceiptDetail.Height := Screen.Height - (pnlReceiptHeaderBackground.Height + Panel1.Height + pnlStatusBar.Height * 2 + 5); 

end;


procedure TReceiptDetailFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult = mrCancel then Canclose := False;
end;

procedure TReceiptDetailFrm.SetTypeDisplay;
begin

  if rgrpType.Field.AsString = 'D' then
    lblTypeDisplay.Caption := rgrpType.Items[0] + ' (LEVY included)'
    else
    if rgrpType.Field.AsString = 'V' then
      lblTypeDisplay.Caption := rgrpType.Items[1] + ' (Adds LEVY)'
      else
      if rgrpType.Field.AsString = 'B' then
        lblTypeDisplay.Caption := rgrpType.Items[2]
        else
        lblTypeDisplay.Caption := '-';

end;

procedure TReceiptDetailFrm.SetVATDisplay;
begin

  if dbcIncludeVAT.Field.AsBoolean then
    lblVATDisplay.Caption := 'Add VAT to Extended Cost'
    else
    lblVATDisplay.Caption := 'VAT Included on Pack Cost';

end;

procedure TReceiptDetailFrm.Depot1Click(Sender: TObject);
begin
  ReceiptDM.SetTypeValue( (Sender as TMenuItem).Tag );
  SetTypeDisplay;
  AccessDataModule(UPDATERECEIPTITEM_TOTALS);
end;


procedure TReceiptDetailFrm.IncludeVatonItems1Click(Sender: TObject);
begin
  if not (ReceiptDM.stpStockControlReceiptItems.State in [dsEdit, dsInsert]) then
   begin
   ReceiptDM.SetVATValue( (Sender as TMenuItem).Tag );
   SetVATDisplay;
   AccessDataModule(UPDATERECEIPTITEM_TOTALS);
   end
  else
   MessageDlg('Please save the changes made to the item before updating the VAT type', mtWarning, [mbOK], 0); 
end;


procedure TReceiptDetailFrm.PageDataSet(PageSize: integer);
begin

  if PageSize < -1000 then PageSize := -1000;
  if PageSize > 1000 then PageSize := 1000;

  with dxDBReceipt_Itemss.DataSource.DataSet do
    if Active then
      case PageSize of
        -1000..-1   : if not BOF then MoveBy(PageSize);
        1..1000     : if not EOF then MoveBy(PageSize);
        end;


end;


procedure TReceiptDetailFrm.btnPostClick(Sender: TObject);
const
  PMSG = 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';

begin


{
  if AccessDataModule(VALIDATE_POSTING) then
    begin
    if MessageDlg(PMSG , mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
      ModalResult := mrOk;

      end else
      ModalResult := mrCancel;
    end else
    ModalResult := mrCancel;
 }

{if not (ReceiptDm.stpStockControlReceiptItems.State in [dsEdit, dsInsert]) then ReceiptDm.stpStockControlReceiptItems.Edit;
       ReceiptDm.stpStockControlReceiptItems.Post; }

 if ReceiptDm.stpStockControlReceipt.State in [dsEdit, dsInsert] then ReceiptDm.stpStockControlReceipt.Post;

 if (ReceiptDm.stpStockControlReceiptItems.State in [dsEdit, dsInsert]) then
  MessageDlg('Please save the current item before posting.', mtError, [mbOk],0)
 else//otherwise post as normal
  ReceiptDm.PostNewReceipt;

end;


function TReceiptDetailFrm.AccessDataModule(CallProcedure: integer):boolean;
begin

  Result := False;

  if Assigned(ReceiptDm) and Assigned(MainDM)then
    begin
    with ReceiptDm, MainDM do
      case CallProcedure of
        GENERATE_RECEIPT_FROM_ORDER : GenerateReceiptFromOrder;
        GENERATE_RECEIPT_FROM_ORDER_WITH_QTY : GenerateReceiptFromWithOrderQuantities;  //SM
        UPDATE_RECEIPT_TOTALS       : UpDateReceiptTotals;
        VALIDATE_POSTING            : Result := ValidatePosting;
        UPDATERECEIPTITEM_TOTALS    : UpdateTotals;
      else
        MessageDlg('No Procedure has been called', mtError, [mbOK], 0)
      end;
    end else
      MessageDlg('ERROR! Receipt or Main data module not available', mtError, [mbOK], 0);
end;



procedure TReceiptDetailFrm.atnItemsGenerateFromOrderExecute(
  Sender: TObject);
begin
  AccessDataModule(GENERATE_RECEIPT_FROM_ORDER);
  if ReceiptDm.dsstpStockControlReceiptItems.DataSet.RecordCount > 0 then
   begin
   Markallascomplete1.Enabled := True;
   addanotherbatchitem1.Enabled := True;
   end;
end;


procedure TReceiptDetailFrm.DBEdit4Exit(Sender: TObject);
begin
  AccessDataModule(UPDATE_RECEIPT_TOTALS);
end;


procedure TReceiptDetailFrm.atnItemsPageUpExecute(Sender: TObject);
begin
  PageDataSet(-5);
end;

procedure TReceiptDetailFrm.atnItemsPageDownExecute(Sender: TObject);
begin
  PageDataSet(5);
end;

procedure TReceiptDetailFrm.dxDBReceipt_Items2ChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin

  with dxDBReceipt_Itemss, dxDBReceipt_Itemss.Columns[Column] do
    if (FieldName = 'ProductCode_str') or
       (FieldName = 'Description_str') or
       (FieldName = 'ECN_str') or
       (FieldName = 'Bin_str') or
       (FieldName = 'NSN_str') or
       (FieldName = 'ICN_str') then
      OptionsBehavior := OptionsBehavior + [edgoAutoSearch]
      else
      OptionsBehavior := OptionsBehavior - [edgoAutoSearch]   

end;

procedure TReceiptDetailFrm.atnItemsMarkAllItemsAsCompleteExecute(
  Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      MarkAllItemsAsComplete(1);

end;


procedure TReceiptDetailFrm.atnDisplayColsExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;

begin
  
  SelectColumns := TColumnSelector.Create;
  try
  GridCols := dxDBReceipt_Itemss;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TReceiptDetailFrm.RzBmpButton1Click(Sender: TObject);
begin
  if Assigned(ReceiptDm) then
    with ReceiptDm do
      begin
      PrintReceiptReport;
      end;
end;  

procedure TReceiptDetailFrm.atnItemsGenerateFromOrderWithQtyExecute(
  Sender: TObject);
begin
  AccessDataModule(GENERATE_RECEIPT_FROM_ORDER_WITH_QTY);
end;

procedure TReceiptDetailFrm.atnAddDiffBatchItemExecute(Sender: TObject);
var
OrderNoId,  ReceiptNoId : Integer;
BatchItem_ID : String; 
begin

 with ReceiptDm.stpStockControlReceiptItems do
  begin
  OrderNOId := FieldByName('OrderNo_ID').AsInteger;
  ReceiptNoId := FieldByName('ReceiptNo_ID').AsInteger;  
  BatchItem_ID := FieldByName('ProductCode_ID').AsString;
  //SM 06 Aug 2007
  if State in [dsEdit, dsInsert] then Post;//Save current record
  //NOTE; use the last batch price as well.
  ReceiptDm.stpAddBatchITem.Parameters.ParamByName('OrderID').Value := OrderNoId;
  ReceiptDm.stpAddBatchITem.Parameters.ParamByName('ReceiptID').Value := ReceiptNoId;
  ReceiptDm.stpAddBatchITem.Parameters.ParamByName('ProductCodeID').Value := BatchItem_ID;
  ReceiptDm.stpAddBatchITem.ExecProc;

  Close;
  Open;
  Locate('ProductCode_ID', BatchItem_ID, []);
  end;

end;

procedure TReceiptDetailFrm.rzlReferenceNumberCloseUp(Sender: TObject);
begin
 ReceiptDm.UpdateOrderDetails;
end;

procedure TReceiptDetailFrm.rzlReferenceStringCloseUp(Sender: TObject);
begin
 ReceiptDm.UpdateOrderDetails;
end;

procedure TReceiptDetailFrm.RzlVoucherNo_strCloseUp(Sender: TObject);
begin
 ReceiptDm.UpdateOrderDetails;
end;

//Load all bin locations into look up tables
procedure TReceiptDetailFrm.UpdateBinLookUps;
begin
//Clear the list first
dxDBReceipt_ItemssBin_str.Items.Clear;
 with ReceiptDm.tblBinLocations do
  begin
  Open;
    while not Eof do
    begin
    dxDBReceipt_ItemssBin_str.Items.Add(fieldByName('Code_str').AsString);
    Next;
    end;
  Close;
  end;    
end; 

procedure TReceiptDetailFrm.restartTimer;
begin

 with Timer1 do
  begin
  Enabled       := False;
  Interval      := 600000;
  Enabled       := True;
  end;

end;

procedure TReceiptDetailFrm.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TReceiptDetailFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TReceiptDetailFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 restartTimer;
end;

procedure TReceiptDetailFrm.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 restartTimer;
end;

procedure TReceiptDetailFrm.Timer1Timer(Sender: TObject);
begin
  //Cancel all tranasctions
 Close;
end;

//15-03-2012 - MC Mankga - Print Receipt Detail in the deatiled receipt form
procedure TReceiptDetailFrm.atnPrintReceiptExecute(Sender: TObject);
begin
     if Assigned(ReceiptDm) then
     with ReceiptDm do
      begin
      PrintReceiptReport;
      end;
end;

//15-03-2012 - MC Mankga - Print Receipts Outsatnding in the deatiled receipt form
procedure TReceiptDetailFrm.atnPrintReceiptOutstandingExecute(
  Sender: TObject);
begin
 if Assigned(ReceiptDm) then
    with ReceiptDm do
      PrintReceiptReportOutStanding;
end;
procedure TReceiptDetailFrm.atnCaptureBarCodesExecute(Sender: TObject);
var
 canAddProducts: Boolean;
begin

 with ReceiptDm.stpStockControlReceipt do
  begin
  if State in [dsEdit, dsInsert] then Post;
  canAddProducts := (not FieldByName('OrderNo_ID').IsNull);
  end;

 //********* Show Barcode capture Form
 if canAddProducts then
  begin
   with ReceiptBarcodingFrm do
    begin
    WindowState := wsMaximized;
    ShowModal;
    end;
  end
 else
   MessageDlg('Please select Order Reference Number first before adding products', mtError, [mbOk], 0);

end;

procedure TReceiptDetailFrm.atnUpdateAllReceivedBatchesExecute(
  Sender: TObject);
begin


 ReceiptDm.CheckAllTotalBatches;


end;

end.

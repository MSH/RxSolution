unit RequisitionBarCodeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ADODB, DB, DBCtrls, RzEdit, Mask, StdCtrls, RzLabel,
  RzDBLbl, ExtCtrls, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  RzCmboBx, RzDBCmbo, RzDBEdit, ActnList, ElPopBtn, DBActns;

type
  TRequisitionBarCodeFrm = class(TForm)
    dxDBRequisitionItemsBarcodes: TdxDBGrid;
    dxDBRequisitionItemsBarcodesICN_str: TdxDBGridColumn;
    dxDBRequisitionItemsBarcodesECN_str: TdxDBGridMaskColumn;
    dxDBRequisitionItemsBarcodesNSN_str: TdxDBGridMaskColumn;
    dxDBRequisitionItemsBarcodesDescription_str: TdxDBGridColumn;
    dxDBRequisitionItemsBarcodesExpiry_dat: TdxDBGridDateColumn;
    dxDBRequisitionItemsBarcodesBatchNumber_str: TdxDBGridColumn;
    editPanel: TPanel;
    Label4: TLabel;
    pnlRequisitionHeaderBackground: TPanel;
    Label27: TLabel;
    Label35: TLabel;
    dbtOrderRef: TDBText;
    dbtSystemStore: TDBText;
    dbtSupplier: TDBText;
    Label5: TLabel;
    stp_AddProduct: TADOStoredProc;
    qryProductBatch: TADOQuery;
    dsBatches: TDataSource;
    dxDBRequisitionItemsBarcodesQtyIssued_int: TdxDBGridColumn;
    qryBatchOnHoldTotal: TADOQuery;
    qryBatchOnHoldReturnsTotal: TADOQuery;
    ActionList1: TActionList;
    atnClose: TAction;
    qryProductBatchBATCH: TWideStringField;
    qryProductBatchProductBatch_ID: TAutoIncField;
    qryProductBatchProductCode_ID: TIntegerField;
    qryProductBatchSupplier_ID: TIntegerField;
    qryProductBatchPrice_mon: TBCDField;
    qryProductBatchContractBrandName_str: TWideStringField;
    qryProductBatchSupplierCode_str: TWideStringField;
    qryProductBatchBatchNumber_str: TWideStringField;
    qryProductBatchBarCode_str: TWideStringField;
    qryProductBatchExpiry_dat: TDateTimeField;
    qryProductBatchQtyOnHand_int: TIntegerField;
    qryProductBatchQtyReceived_int: TIntegerField;
    qryProductBatchQtyOnHold_int: TIntegerField;
    qryProductBatchBin_str: TWideStringField;
    qryProductBatchReceived_dat: TDateTimeField;
    qryProductBatchLastLeadTime_int: TIntegerField;
    qryProductBatchRemarks_mem: TMemoField;
    qryProductBatchLastUpdate_dat: TDateTimeField;
    qryProductBatchShippingPack_int: TIntegerField;
    Panel3: TPanel;
    Shape4: TShape;
    ElSpeedButton1: TElSpeedButton;
    Button1: TButton;
    atnColumnDisplay: TAction;
    ElSpeedButton10: TElSpeedButton;
    dxDBRequisitionItemsBarcodesCal_PackCost: TdxDBGridCurrencyColumn;
    atnDeleteItem: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    lblBatch: TLabel;
    Label2: TLabel;
    edtBarcode: TEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    edtQTY: TRzNumericEdit;
    btnAdd: TButton;
    procedure edtBarcodeExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure atnCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atnColumnDisplayExecute(Sender: TObject);
    procedure atnDeleteItemExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    function GetProductDetail(barCode: string): Boolean;
    procedure SetDisplay;
    procedure SearchProduct;
    procedure AddProduct;
    function AddProductDetail(productCodeID: integer; productBatchID: integer; qtyIssued: integer) : Boolean;
    function IsBatchAvailable: Boolean;
    function TotalOnHoldBatch(BatchID: integer): integer;

  public
    { Public declarations }
  end;

var
  RequisitionBarCodeFrm: TRequisitionBarCodeFrm;

implementation

uses RequisitionUDM, TabEnter, MainUDM, DialogGridColumnSelectorUFrm;

{$R *.dfm}

function TRequisitionBarCodeFrm.IsBatchAvailable: Boolean;
var
 qtyIssue, batchID : integer;
begin

 qtyIssue := StrToInt(edtQTY.Text);
 batchID := qryProductBatchProductBatch_ID.AsInteger;

 if (qryProductBatchQtyOnHand_int.AsInteger < (qtyIssue + TotalOnHoldBatch(batchID))) then
  begin
  MessageDlg('Cannot issue more then available', mtInformation, [mbOk], 0);
  Result := False;
  end
 else
  Result := True; 

end;

function TRequisitionBarCodeFrm.TotalOnHoldBatch(BatchID: integer): integer;
var
 OnHoldRequisition, OnHoldReturn: integer;
begin

 OnHoldRequisition := 0;
 OnHoldReturn := 0;

 with qryBatchOnHoldTotal do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := BatchID;
  Open;
  if RecordCount > 0 then
   OnHoldRequisition := FieldByName('SumQtyOrdered_int').AsInteger
  else
   OnHoldRequisition := 0;
  end;

 with qryBatchOnHoldReturnsTotal do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := BatchID;
  Open;
  if RecordCount > 0 then
   OnHoldReturn := FieldByName('SumQtyReturned_int').AsInteger
  else
   OnHoldReturn := 0;
  end;
  //Now return the combined total of Batches on Requisitions and Batches on Returns on hold
  Result := OnHoldRequisition + OnHoldReturn;
  
end;

procedure TRequisitionBarCodeFrm.SetDisplay;
var
 Posted: Boolean;
begin

 //******** Close Barcode table if open
 with MainDm.stpProductIDByBarcode do
  begin
  if Active then
   Close;
  end;

 //******** Clear Fields
 edtBarcode.Clear;
 edtQTY.Value                   := 0;

 //******** Check if Requisition is posted
 with RequisitionDM.stpStockControlRequisition do
  begin
  Posted := FieldByName('activated_bol').AsBoolean;
  end;

 //******** Enable and Disable Edit Fields
 if Posted then
  begin
  editPanel.Enabled := False;
  end;

 //******** Check if in Batch Management Mode or not
 if RequisitionDM.FUsesBatchManagement then
  begin
  edtQTY.TabOrder               := 2;
  //Labels
  lblBatch.Visible              := True;
  //Button
  btnAdd.TabOrder               := 3;
  end
 else
  begin
  edtQTY.TabOrder               := 1;
  //Labels
  lblBatch.Visible              := False;
  //Add Button
  btnAdd.TabOrder               := 2;
  end;

 edtBarcode.SetFocus;

end;

function TRequisitionBarCodeFrm.GetProductDetail(barCode: string): Boolean;
begin

 Result := MainDm.GetProductDetail(barCode);

end;


procedure TRequisitionBarCodeFrm.SearchProduct;
var
 _barCode: string;
 _ProID : integer;
begin

 _barCode := edtBarcode.Text;
 //******** Execute Search Function
 if GetProductDetail(_barCode) then
  begin
  edtQTY.Value := 0;
  with MainDm.stpProductIDByBarcode do
   begin
   _ProID := FieldByName('ProductCode_ID').AsInteger;
   end;

  //******* Load Product Batches
  with qryProductBatch do
    begin
    Close;
    Parameters.ParamByName('ProductCode_ID').Value := _ProID;
    Open;
    end;
  end
 else
  begin
  edtBarcode.SetFocus;
  //SetDisplay;
  end;

  
end;

procedure TRequisitionBarCodeFrm.edtBarcodeExit(Sender: TObject);
begin
 //******** Search for the Product
 SearchProduct;
 
end;

procedure TRequisitionBarCodeFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := NextControl(RequisitionBarCodeFrm, Key);
end;

function TRequisitionBarCodeFrm.AddProductDetail(productCodeID: integer; productBatchID: integer; qtyIssued: integer) : Boolean;
var
 ReqID: integer;
begin

 with RequisitionDM.stpStockControlRequisition do
  begin
  ReqID := FieldByName('Requisition_ID').AsInteger;
  end;

 //******** Add to existing batch if available
 with RequisitionDM.stpStockControlRequisitionItems do
  begin
  First;
  if Locate('ProductBatch_ID', productBatchID, []) then
   begin
   Edit;
   FieldByName('QtyIssued_int').AsInteger := FieldByName('QtyIssued_int').AsInteger + qtyIssued;
   Post;
   end
  else 
   RequisitionDM.AddBatchItemToList(ReqID, productCodeID, productBatchID, qtyIssued);
  end;

 Result := True;

end;

procedure TRequisitionBarCodeFrm.AddProduct;
var
 _qty: integer;
 _ProID: integer;
 _ProBatchID: integer;  
begin

 _qty := StrToInt(edtQTY.Text);
 _ProBatchID := -1;

 with MainDm.stpProductIDByBarcode do
  begin
  _ProID := FieldByName('ProductCode_ID').AsInteger;
  end;

 //******* Load available Batches
 with qryProductBatch do
  begin
  if (recordCount > 0) then
   _ProBatchID := FieldByName('ProductBatch_ID').AsInteger;
  end;

 //******* Only add Item to Requisition that is greater than 0
 //******* Need up date code here to accomodate users to enter a negative value.
 if (_qty <> 0) then
  begin
  //******* Add Product Detail to Requsition
  AddProductDetail(_ProID, _ProBatchID, _qty);

  with RequisitionDM do
   begin
    //******* Edit History
   AddEditHistory('ADDED', 'Adding product(s)', 1);
   //******* Refresh Product List
   stpStockControlRequisitionItems.Close;
   stpStockControlRequisitionItems.Open;
   end;
  end;

end;

procedure TRequisitionBarCodeFrm.atnCloseExecute(Sender: TObject);
begin
 Close;
end;

procedure TRequisitionBarCodeFrm.FormShow(Sender: TObject);
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

 dxDBRequisitionItemsBarcodes.Height := Height - (pnlRequisitionHeaderBackground.Height + editPanel.Height * 2);

 Panel1.Width := editPanel.Width - 10;

 SetDisplay;

 dxDBRequisitionItemsBarcodes.SetFocus;

end;

procedure TRequisitionBarCodeFrm.atnColumnDisplayExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin

  SelectColumns := TColumnSelector.Create;
  try
  GridCols := dxDBRequisitionItemsBarcodes;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TRequisitionBarCodeFrm.atnDeleteItemExecute(Sender: TObject);
begin

 RequisitionDM.DeleteCurrReqItem(true);

end;

procedure TRequisitionBarCodeFrm.FormResize(Sender: TObject);
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

 dxDBRequisitionItemsBarcodes.Height := Height - (pnlRequisitionHeaderBackground.Height + editPanel.Height * 2);

 Panel1.Width := editPanel.Width - 10;

end;

procedure TRequisitionBarCodeFrm.btnAddClick(Sender: TObject);
begin
 //******** Check if there is stock available
 if IsBatchAvailable then
  AddProduct;
 // Reset focus 
 edtBarcode.SetFocus;
  
end;

end.

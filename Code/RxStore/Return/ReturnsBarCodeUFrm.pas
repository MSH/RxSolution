unit ReturnsBarCodeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ActnList, DB, ADODB, DBCtrls, RzDBCmbo, Mask, RzEdit,
  StdCtrls, RzLabel, RzDBLbl, ExtCtrls, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, dxCntner;

type
  TReturnsBarCodeFrm = class(TForm)
    dxDBReturnBarcodeItems: TdxDBGrid;
    dxDBReturnBarcodeItemsICN_str: TdxDBGridColumn;
    dxDBReturnBarcodeItemsECN_str: TdxDBGridMaskColumn;
    dxDBReturnBarcodeItemsNSN_str: TdxDBGridMaskColumn;
    dxDBReturnBarcodeItemsDescription_str: TdxDBGridColumn;
    dxDBReturnBarcodeItemsQtyIssued_int: TdxDBGridColumn;
    editPanel: TPanel;
    RzDBLabel1: TRzDBLabel;
    Label1: TLabel;
    lblBatch: TLabel;
    Label4: TLabel;
    edtBarcode: TEdit;
    edtQTY: TRzNumericEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    pnlReceiptHeaderBackground: TPanel;
    dbtOrderRef: TDBText;
    Label5: TLabel;
    qryProductBatch: TADOQuery;
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
    dsBatches: TDataSource;
    ActionList1: TActionList;
    atnClose: TAction;
    dxDBReturnBarcodeItemsExpiry_dat: TdxDBGridColumn;
    dxDBReturnBarcodeItemsBatchNumber_str: TdxDBGridColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtBarcodeExit(Sender: TObject);
    procedure edtQTYExit(Sender: TObject);
    procedure atnCloseExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SetDisplay;
    function GetProductDetail(barCode: string): Boolean;
    procedure SearchProduct;
    procedure AddProduct;
    
  public
    { Public declarations }
  end;

var
  ReturnsBarCodeFrm: TReturnsBarCodeFrm;

implementation

uses ReturnsUDm, MainUDM, TabEnter;

{$R *.dfm}

procedure TReturnsBarCodeFrm.SetDisplay;
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
 edtQTY.Value                   := 1;

 //******** Check if Requisition is posted
 with ReturnsDm.qryReturnsWorker do
  begin
  Posted := FieldByName('Posted_bol').AsBoolean;
  end;

 //******** Enable and Disable Edit Fields
 if Posted then
  begin
  editPanel.Enabled := False;
  end;

 //******** Check if in Batch Management Mode or not
 if ReturnsDm.FUsesBatchManagement then
  begin
  edtQTY.TabOrder               := 3;
  //Labels
  lblBatch.Visible              := True;
  end
 else
  begin
  edtQTY.TabOrder               := 1;
  //Labels
  lblBatch.Visible              := False;
  end;
end;


function TReturnsBarCodeFrm.GetProductDetail(barCode: string): Boolean;
begin

 Result := MainDm.GetProductDetail(barCode);

end;


procedure TReturnsBarCodeFrm.SearchProduct;
var
 _barCode: string;
 _ProID : integer;
begin

 edtQTY.Value := 0; 

 _barCode := edtBarcode.Text;
 //******** Execute Search Function
 if GetProductDetail(_barCode) then
  begin
  edtQTY.Value := 1;
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
  edtBarcode.SetFocus;

  
end;

procedure TReturnsBarCodeFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin

 Key := NextControl(ReturnsBarCodeFrm, Key);

end;

procedure TReturnsBarCodeFrm.edtBarcodeExit(Sender: TObject);
begin
 //******** Search for the Product
 SearchProduct;
end;

procedure TReturnsBarCodeFrm.AddProduct;
var
 _qty: integer;
 _ProID: integer;
 _ProBatchID: integer;
 _ReturnID: integer;
begin

 _qty := StrToInt(edtQTY.Text);
 _ProBatchID := -1;

 with MainDm.stpProductIDByBarcode do
  begin
  _ProID := FieldByName('ProductCode_ID').AsInteger;
  end;

 with ReturnsDm.qryReturnsWorker do
  begin
  _ReturnID   := FieldByName('Returns_ID').AsInteger;
  end;
  
 //******* Load available Batches
 with qryProductBatch do
  begin
  if (recordCount > 0) then
    begin
    _ProBatchID := FieldByName('ProductBatch_ID').AsInteger;
    end;
  end;
  
 if (_qty > 0) then
  with ReturnsDm do
   begin
   AddAnotherProductBatch(_ReturnID, _ProID, _ProBatchID, qryProductBatchBatchNumber_str.AsString,
   qryProductBatchExpiry_dat.AsDateTime, _qty);
   //******* Edit History
   AddEditHistory('ADDED', 'Adding product(s)', 1);
   //******* Refresh Product List
   qryReturnsItems.Close;
   qryReturnsItems.Open;
   end;

end;

procedure TReturnsBarCodeFrm.edtQTYExit(Sender: TObject);
begin
 //****** Add Product
 AddProduct;
end;


procedure TReturnsBarCodeFrm.atnCloseExecute(Sender: TObject);
begin
 Close;
end;

end.

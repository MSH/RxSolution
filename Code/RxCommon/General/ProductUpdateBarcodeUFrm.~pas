unit ProductUpdateBarcodeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzDlgBtn, DB, ADODB, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, StdCtrls;

type
  TProductUpdateBarcodesFrm = class(TForm)
    stp_updateBarCode: TADOQuery;
    qryOrderProducts: TADOQuery;
    qryOrderProductsNSN_str: TWideStringField;
    qryOrderProductsICN_str: TWideStringField;
    qryOrderProductsECN_str: TWideStringField;
    qryOrderProductsProductCode_str: TWideStringField;
    qryOrderProductsBin_str: TWideStringField;
    qryOrderProductsQtyOrdered_int: TIntegerField;
    qryOrderProductsShippingPack_int: TIntegerField;
    dsOrderProducts: TDataSource;
    dbgItems: TdxDBGrid;
    Edit1: TEdit;
    btnUpdate: TButton;
    qryOrderProductsDescription_str: TStringField;
    qryOrderProductsProductCode_ID: TAutoIncField;
    dbgItemsNSN_str: TdxDBGridColumn;
    dbgItemsICN_str: TdxDBGridColumn;
    dbgItemsECN_str: TdxDBGridColumn;
    dbgItemsQtyOrdered_int: TdxDBGridMaskColumn;
    dbgItemsDescription_str: TdxDBGridMaskColumn;
    qryOrderProductsproductPackSize_ID: TGuidField;
    Button1: TButton;
    procedure btnUpdateClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure UpdateBarCode(OrderRef_ID: integer);
    procedure AddProductBarCode(vBarcode: string; vProductID: integer; vproductPackSizeID: string);
    procedure ShowItems;
  public
    procedure LoadProductsDetail(OrderRef_ID: integer; ReceiptID: integer);

  end;

var
  ProductUpdateBarcodesFrm: TProductUpdateBarcodesFrm;

implementation

uses ReceiptUDm, TabEnter;


{$R *.dfm}

procedure TProductUpdateBarcodesFrm.ShowItems;
begin

  
end;

procedure TProductUpdateBarcodesFrm.UpdateBarCode(OrderRef_ID: integer);
var
 vProductID: integer;
 VProductDetail, vBarCode, vproductPackSizeID: string;
begin

 vBarCode := Edit1.Text;      
 //Product Details
 with qryOrderProducts do
  begin
  if RecordCount > 0 then
   begin
   vProductID           := FieldByName('ProductCode_ID').AsInteger;
   VProductDetail       := FieldByName('Description_str').AsString;
   vproductPackSizeID   := FieldByName('productPackSize_ID').AsString;
   end;
   //******* Commit and add new barcode detail
   AddProductBarCode(vBarCode, vProductID, vproductPackSizeID);
   //******* Add Edit history about the updated barcode
   ReceiptDm.AddEditHistory(HST_BAR, VProductDetail + ': ' + vBarCode, 1);
   MessageDlg('Product barcode updated', mtInformation, [mbOk], 0);
  end;
  
end;

procedure TProductUpdateBarcodesFrm.AddProductBarCode(vBarcode: string; vProductID: integer; vproductPackSizeID: string);
begin

 //Insert new barcode against selected product
 with stp_updateBarCode do
  begin
  Parameters.ParamByName('productPackSizeID').Value     := vproductPackSizeID;
  Parameters.ParamByName('productCodeID').Value         := vProductID;
  Parameters.ParamByName('Barcode').Value               := vBarcode;
  ExecSQL;
  end;    

end;

procedure TProductUpdateBarcodesFrm.LoadProductsDetail(OrderRef_ID: integer; ReceiptID: integer);
begin

 Edit1.Clear;

 // Load only items that have been ordered.
 with qryOrderProducts do
  begin
  Close;
  Parameters.ParamByName('OrderNoID').Value := OrderRef_ID;
  Open;
  end;

 // Show Edit Form
 ProductUpdateBarcodesFrm.ShowModal;

end;

procedure TProductUpdateBarcodesFrm.btnUpdateClick(Sender: TObject);
var
 vOrderRef, vReceiptRef: integer;
begin


 if Edit1.Text <> '' then
  begin
  if MessageDlg('Are you sure you want to add this new barcode for the selected item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   with ReceiptDm.stpStockControlReceipt do
    begin
    vOrderRef    := FieldByName('OrderNo_ID').AsInteger;
    vReceiptRef  := FieldByName('ReceiptNo_ID').AsInteger;
    end;

   UpdateBarCode(vOrderRef);
   end;

  end
 else
   begin
   MessageDlg('Please enter barcode', mtWarning, [mbOk], 0);
   end;

end;

procedure TProductUpdateBarcodesFrm.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TProductUpdateBarcodesFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := NextControl(ProductUpdateBarcodesFrm, Key);
end;

end.

unit UpdateProductBarcodeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid;

type
  TUpdateProductBarcodeFrm = class(TForm)
    qryBarcodes: TADOQuery;
    qryBarcodesBarCode_ID: TAutoIncField;
    qryBarcodesproductPackSize_ID: TGuidField;
    qryBarcodesProductCode_ID: TIntegerField;
    qryBarcodesbarCode_str: TWideStringField;
    qryBarcodesShipperPackBarCode_str: TWideStringField;
    qryBarcodesSupplier_str: TWideStringField;
    qryBarcodesCapturedBy_str: TWideStringField;
    qryBarcodesModified_dat: TDateTimeField;
    dxDBReceipt_Itemss: TdxDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure UpdateBarcode(vProductCodeID: integer; vBarCode: string);
  end;



implementation

//uses ReceiptUDm;

{$R *.dfm}


procedure TUpdateProductBarcodeFrm.UpdateBarcode(vProductCodeID: integer; vBarCode: string);
begin

 //Append Barcode to Product Item
 with qryBarcodes do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := vProductCodeID;
  Open;
  Append;
  FieldByName('barCode_str').Value := vBarCode;
  FieldByName('Modified_dat').Value := now();
  Post;
  end;


end;

class procedure ShowOrderedItems;
var
 frmUpdateBarcode: TUpdateProductBarcodeFrm;
begin
 //



 frmUpdateBarcode := TUpdateProductBarcodeFrm.Create(Application);

 with frmUpdateBarcode do
  begin   
  Show;
  end;

 frmUpdateBarcode.Free;

end;

end.

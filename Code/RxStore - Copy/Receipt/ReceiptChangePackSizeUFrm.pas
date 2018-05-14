unit ReceiptChangePackSizeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ExtCtrls, RzDlgBtn, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls;

type
  TReceiptChangePackSizeFrm = class(TForm)
    Group2: TGroupBox;
    dxgPackSizes_Items: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    dxgPackSizes_ItemsProductCode_ID: TdxDBGridMaskColumn;
    dxgPackSizes_ItemsDescription_str: TdxDBGridMaskColumn;
    dxgPackSizes_ItemsECN_str: TdxDBGridColumn;
    dxgPackSizes_ItemsICN_str: TdxDBGridColumn;
    dxgPackSizes_ItemsNSN_str: TdxDBGridColumn;
    function SelectProduct: integer;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ReceiptChangePackSizeFrm: TReceiptChangePackSizeFrm;

implementation

uses ReceiptUDm;

{$R *.dfm}
function TReceiptChangePackSizeFrm.SelectProduct: integer;
begin

 if ReceiptChangePackSizeFrm.ShowModal = mrOk then
  begin
  if ReceiptDm.qryOtherPackSizes.RecordCount > 0 then
   Result := ReceiptDm.qryOtherPackSizes.FieldByName('ProductCode_ID').AsInteger
  else
   Result := 0;
  end
 else
  Result := 0;

end;

end.

unit StockTakeBatchSelectUfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner, StdCtrls,
  dxExEdtr;

type
  TStockTakeBatchSelectfrm = class(TForm)
    Use: TButton;
    Cancel: TButton;
    GroupBox1: TGroupBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1ProductCode_ID: TdxDBGridMaskColumn;
    dxDBGrid1BatchQty_int: TdxDBGridColumn;
    dxDBGrid1PackCost: TdxDBGridCurrencyColumn;
    procedure UseClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockTakeBatchSelectfrm: TStockTakeBatchSelectfrm;

implementation

uses StockTakeUDM, ADODB;

{$R *.dfm}

procedure TStockTakeBatchSelectfrm.UseClick(Sender: TObject);
begin





with  StockTakeDM.ADOQuery1 do
 begin
 Parameters.ParamByName('@ProductCodeID').Value  := StockTakeDM.qryStockTakeItems.FieldByName('ProductCode_ID').Value;
 Parameters.ParamByName('@ReceiptItem_ID').Value := StockTakeDM.qryProductBatchReceipts.FieldByName('ReceiptItem_ID').Value;
 Parameters.ParamByName('@Expiry_dat').Value  := StockTakeDM.qryProductBatchReceipts.FieldByName('Expiry_dat').Value;
 Parameters.ParamByName('@Batchnumber_str').Value := StockTakeDM.qryProductBatchReceipts.FieldByName('Batchnumber_str').Value;
 Parameters.ParamByName('@StockTakeID').Value := StockTakeDM.qryStockTakeItems.FieldByName('StockTake_ID').Value;
 Parameters.ParamByName('@BatchQty').Value := StockTakeDM.qryProductBatchReceipts.FieldByName('BatchQty_int').Value;
 Parameters.ParamByName('@DiffQty').Value := -1 * StockTakeDM.qryProductBatchReceipts.FieldByName('BatchQty_int').Value;
 Prepared := True;
 ExecSQL;
 end;
 StockTakeDM.UpdateStockTakeSubTotals;
Close;


end;

procedure TStockTakeBatchSelectfrm.CancelClick(Sender: TObject);
begin
 Close;
end;

end.


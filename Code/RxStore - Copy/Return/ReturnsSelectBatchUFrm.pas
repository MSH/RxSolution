unit ReturnsSelectBatchUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, Menus, ActnList, dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, ElPopBtn, ExtCtrls, StdCtrls;

type
  TReturnsSelectBatchFrm = class(TForm)
    Use: TButton;
    Cancel: TButton;
    Panel1: TPanel;
    ElSpeedButton12: TElSpeedButton;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1ProductCode_ID: TdxDBGridMaskColumn;
    dxDBGrid1BatchQty_int: TdxDBGridColumn;
    dxDBGrid1PackCost: TdxDBGridCurrencyColumn;
    dxDBGrid1ShippingPack_int: TdxDBGridColumn;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    atnRequeryShowAll1: TMenuItem;
    procedure UseClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReturnsSelectBatchFrm: TReturnsSelectBatchFrm;

implementation

uses ReturnsUDm, DB;

{$R *.dfm}

procedure TReturnsSelectBatchFrm.UseClick(Sender: TObject);
begin
 with ReturnsDm.qryReturnsItems do
  begin
  if not (state in [dsEdit, dsInsert]) then
   Edit;
  FieldByName('ProductBatch_ID').Value  := ReturnsDm.qryProductBatch.FieldByName('ProductBatch_ID').Value;
  FieldByName('BatchNumber_str').Value  := ReturnsDm.qryProductBatch.FieldByName('BatchNumber_str').Value;
  FieldByName('Expiry_dat').Value       := ReturnsDm.qryProductBatch.FieldByName('Expiry_dat').Value;
  FieldByName('OldQty_int').Value       := ReturnsDm.qryProductBatch.FieldByName('QtyOnHand_int').Value;
  //BUG Issue 428
  FieldByName('PackCost_mon').Value       := ReturnsDm.qryProductBatch.FieldByName('Price_mon').Value;
  Post;
  end;

Close;  
end;

procedure TReturnsSelectBatchFrm.CancelClick(Sender: TObject);
begin
  Close;
end;

end.

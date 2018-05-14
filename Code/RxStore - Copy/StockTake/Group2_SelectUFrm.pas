unit Group2_SelectUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls, RzDlgBtn,
  dxExEdtr;

type
  TGroup2_SelectFrm = class(TForm)
    Group2: TGroupBox;
    dxgOrders_Items: TdxDBGrid;
    dxgOrders_ItemsCode_str: TdxDBGridColumn;
    dxgOrders_ItemsDescription_str: TdxDBGridColumn;
    RzDialogButtons1: TRzDialogButtons;
    function SelectGroup: string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Group2_SelectFrm: TGroup2_SelectFrm;

implementation

uses StockTakeUDM;

{$R *.dfm}

function TGroup2_SelectFrm.SelectGroup: string;
begin

if Group2_SelectFrm.ShowModal = mrOk then
 Result := StockTakeDM.tblGroup2.FieldByName('Code_str').AsString
else
 Result := '-----' ;

end;

end.

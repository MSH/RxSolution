unit OrderGroup2SelectUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, StdCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid;

type
  TOrderGroup2SelectFrm = class(TForm)
    Group2: TGroupBox;
    dxgOrders_Items: TdxDBGrid;
    btnOk: TButton;
    btnCancel: TButton;
    dxgOrders_ItemsCode_str: TdxDBGridColumn;
    dxgOrders_ItemsDescription_str: TdxDBGridColumn;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderGroup2SelectFrm: TOrderGroup2SelectFrm;

implementation

uses OrderUDM, OrderDetailUFrm;

{$R *.dfm}

procedure TOrderGroup2SelectFrm.btnOkClick(Sender: TObject);
begin
OrderDM.GROUP2_str := OrderDM.tblProductGroup2.FieldByName('Code_str').AsString;
// OrderDM.tblProductGroup2.Close;
Close;
end;

procedure TOrderGroup2SelectFrm.FormShow(Sender: TObject);
begin
OrderDM.GROUP2_str := '';
OrderDM.tblProductGroup2.Open;
end;

procedure TOrderGroup2SelectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
OrderDM.tblProductGroup2.Close;
end;

procedure TOrderGroup2SelectFrm.btnCancelClick(Sender: TObject);
begin
OrderDM.GROUP2_str := '';
Close;
end;

end.


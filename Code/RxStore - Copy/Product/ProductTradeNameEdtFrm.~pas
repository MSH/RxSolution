unit ProductTradeNameEdtFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, DBCtrls, RzDBNav, ExtCtrls, Mask, RzEdit,
  RzDBEdit, StdCtrls, wwdblook, RzDlgBtn, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, DB;

type
  TfrmProductTradeNameAddEdit = class(TForm)
    dxgTradeNameAdd: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    Label38: TLabel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    RzDBEdit2: TRzDBEdit;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzFrameController1: TRzFrameController;
    dxgTradeNameAddTradename_ID: TdxDBGridMaskColumn;
    dxgTradeNameAddTradeName_Str: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTradeNameAddEdit = class(TObject)
  public
    class procedure Manage;
  end;


implementation

uses ProductUDm;

{$R *.dfm}
class procedure TTradeNameAddEdit.Manage;
var
  frmProductTradeNameAddEdit: TfrmProductTradeNameAddEdit;

begin

  frmProductTradeNameAddEdit := TfrmProductTradeNameAddEdit.Create(Application);
  try
    try
    frmProductTradeNameAddEdit.ShowModal;
    if ProductDm.qryADOTradeName.State in [dsEdit, dsInsert] then
      ProductDm.qryADOTradeName.Post;
    except
    end;
  finally
    frmProductTradeNameAddEdit.Free;
  end;
end;

procedure TfrmProductTradeNameAddEdit.FormCreate(Sender: TObject);
begin
dxgTradeNameAdd.Align := alClient;
end;

end.


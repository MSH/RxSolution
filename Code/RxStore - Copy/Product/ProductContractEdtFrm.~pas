unit ProductContractEdtFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, DBCtrls, RzDBNav, ExtCtrls, Mask, RzEdit,
  RzDBEdit, StdCtrls, wwdblook, RzDlgBtn, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner, DB;

type
  TfrmContractEdit = class(TForm)
    dxgPackSizeRange: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    Label12: TLabel;
    Label38: TLabel;
    Label31: TLabel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzFrameController1: TRzFrameController;
    dxgPackSizeRangeContract_ID: TdxDBGridMaskColumn;
    dxgPackSizeRangeCode_str: TdxDBGridColumn;
    dxgPackSizeRangeDescription_str: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


 TContractsEdit = class(TObject)
  public
    class procedure Manage;
  end;         

implementation

uses ProductUDm;

{$R *.dfm}
class procedure TContractsEdit.Manage;
var
  frmContractEdit: TfrmContractEdit;

begin

  frmContractEdit := TfrmContractEdit.Create(Application);
  try
    try
    frmContractEdit.ShowModal;
    if ProductDm.qryADOContractCode.State in [dsEdit, dsInsert] then
      ProductDm.qryADOContractCode.Post;
    except
    end;
  finally
    frmContractEdit.Free;
  end;
end;
end.


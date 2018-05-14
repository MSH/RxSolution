unit ProductPackSizeRangeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, DBCtrls, RzDBNav, ExtCtrls, Mask, RzEdit,
  RzDBEdit, StdCtrls, wwdblook, RzDlgBtn, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner, DB;

type
  TfrmPackSizeRangeEdit = class(TForm)
    dxgPackSizeRange: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzFrameController1: TRzFrameController;
    dxgPackSizeRangeDescription_str: TdxDBGridColumn;
    dxgPackSizeRangeCode_str: TdxDBGridMaskColumn;
    dxgPackSizeRangePackSizeValue_dbl: TdxDBGridMaskColumn;
    dxgPackSizeRangePackSizeUnit_str: TdxDBGridColumn;
    dxgPackSizeRangePackSizeRangeID: TdxDBGridMaskColumn;
    Label12: TLabel;
    RzDBEdit1: TRzDBEdit;
    dbePAckSizeValue: TDBEdit;
    RzDBEdit2: TRzDBEdit;
    Label38: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 TPackSizeRangeEdit = class(TObject)
  public
    class procedure Manage;
  end;

implementation

uses ProductUDm;

{$R *.dfm}
class procedure TPackSizeRangeEdit.Manage;
var
  frmPackSizeRangeEdit: TfrmPackSizeRangeEdit;

begin

  frmPackSizeRangeEdit := TfrmPackSizeRangeEdit.Create(Application);
  try
    try
    frmPackSizeRangeEdit.ShowModal;
    if ProductDm.qryADOTradeName.State in [dsEdit, dsInsert] then
      ProductDm.qryADOTradeName.Post;
    except
    end;
  finally
    frmPackSizeRangeEdit.Free;
  end;
end;

end.





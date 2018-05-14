unit ProductComparisonUnitsEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, DBCtrls, RzDBNav, ExtCtrls, Mask, RzEdit,
  RzDBEdit, StdCtrls, wwdblook, RzDlgBtn, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB;

type
  TfrmComparisonUnitsEdt = class(TForm)
    dxgComparisonUnits: TdxDBGrid;
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
    dxgComparisonUnitsUnit_str: TdxDBGridColumn;
    dxgComparisonUnitsdispensingUnit_str: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


 TComparisonUnitsEdit = class(TObject)
  public
    class procedure Manage;
  end;

implementation

uses ProductUDm;

{$R *.dfm}
class procedure TComparisonUnitsEdit.Manage;
var
  frmComparisonUnitsEdt: TfrmComparisonUnitsEdt;
begin
  frmComparisonUnitsEdt := TfrmComparisonUnitsEdt.Create(Application);
  try
    try
    frmComparisonUnitsEdt .ShowModal;
    if ProductDm.qryADOComparisonUnit.State in [dsEdit, dsInsert] then
      ProductDm.qryADOComparisonUnit.Post;
    except
    end;
  finally
    frmComparisonUnitsEdt .Free;
  end;
end;

end.


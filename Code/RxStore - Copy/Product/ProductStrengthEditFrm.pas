unit ProductStrengthEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxExEdtr, RzDlgBtn, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DBCtrls, RzDBNav, ExtCtrls, StdCtrls, wwdblook, RzCommon, Mask,
  RzEdit, RzDBEdit;

type
  TfrmProductStrengthEdit = class(TForm)
    pnlProductDetailColorBackground: TPanel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    dxgStrengthRangeAdd: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    dxgStrengthRangeAddDescription_str: TdxDBGridColumn;
    dxgStrengthRangeAddStrengthRangeCode_str: TdxDBGridColumn;
    dxgStrengthRangeAddStrengthRangeValue_dbl: TdxDBGridMaskColumn;
    dxgStrengthRangeAddStrengthRangeDispensingValue_dbl: TdxDBGridMaskColumn;
    dxgStrengthRangeAddStrengthRangeUnit_str: TdxDBGridColumn;
    Label31: TLabel;
    Label38: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzFrameController1: TRzFrameController;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TStrengthRangeManage = class(TObject)
  public
    class procedure Manage;
  end;


implementation

uses ProductUDm;

{$R *.dfm}

class procedure TStrengthRangeManage.Manage;
var
  frmProductStrengthEdit: TfrmProductStrengthEdit;

begin

  frmProductStrengthEdit := TfrmProductStrengthEdit.Create(Application);
  try
    try
    frmProductStrengthEdit.ShowModal;
    if ProductDm.qryADOStrengthRange.State in [dsEdit, dsInsert] then
      ProductDm.qryADOStrengthRange.Post;
    except
    end;
  finally
    frmProductStrengthEdit.Free;
  end;

end;


procedure TfrmProductStrengthEdit.FormCreate(Sender: TObject);
begin
  dxgStrengthRangeAdd.Align := alClient;
end;

end.


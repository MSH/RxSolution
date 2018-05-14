unit ProductGenericEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzButton, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  StdCtrls, Mask, DBCtrls, ElPopBtn, ExtCtrls, RzDlgBtn, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RzRadChk, RzDBChk, dxDBTLCl, dxGrClms, DB, ADODB,
  RzDBNav, RzCommon, RzEdit, RzDBEdit;

type
  TfrmProductGenricAddEdit = class(TForm)
    dxgGenericAdd: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    Label12: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label35: TLabel;
    dbeNSNCode: TDBEdit;
    dbeECNCode: TDBEdit;
    wwDBLookupCombo24: TwwDBLookupCombo;
    RzDBCheckBox1: TRzDBCheckBox;
    dxgGenericAddgenericNameCode_str: TdxDBGridColumn;
    dxgGenericAddgenericName_Str: TdxDBGridColumn;
    dxgGenericAddgenericRxLevel_str: TdxDBGridColumn;
    dxgGenericAddgenericActive_Bol: TdxDBGridCheckColumn;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzFrameController1: TRzFrameController;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TGenericAddEdit = class(TObject)
  public
    class procedure Manage;
  end;


implementation

uses ProductUDm;

{$R *.dfm}

class procedure TGenericAddEdit.Manage;
var
  frmProductGenricAddEdit: TfrmProductGenricAddEdit;

begin

  frmProductGenricAddEdit := TfrmProductGenricAddEdit.Create(Application);
  try
    try
    frmProductGenricAddEdit.ShowModal;
    if ProductDm.qryADOGenericName.State in [dsEdit, dsInsert] then
      ProductDm.qryADOGenericName.Post;
    except
    end;
  finally
    frmProductGenricAddEdit.Free;
  end;

end;

procedure TfrmProductGenricAddEdit.FormCreate(Sender: TObject);
begin
  dxgGenericAdd.Align := alClient;
end;

end.


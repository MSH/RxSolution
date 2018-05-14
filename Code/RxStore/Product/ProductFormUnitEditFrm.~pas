unit ProductFormUnitEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, DBCtrls, RzDBNav, ExtCtrls, RzEdit,
  RzDBEdit, RzButton, RzRadChk, RzDBChk, wwdblook, StdCtrls, Mask,
  RzDlgBtn, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, dxDBTLCl, dxGrClms;

type
  TfrmFormEditUFrm = class(TForm)
    dxgFormRange: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    Label12: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    dbeadminMode: TDBEdit;
    wwDBLookupCombo24: TwwDBLookupCombo;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzFrameController1: TRzFrameController;
    dxgFormRangeCode_str: TdxDBGridColumn;
    dxgFormRangeDescription_str: TdxDBGridColumn;
    dxgFormRangeInjectable_bol: TdxDBGridCheckColumn;
    dxgFormRangedispensingForm_str: TdxDBGridColumn;
    dxgFormRangeAdministration_str: TdxDBGridColumn;
    dxgFormRangeAdministrationCode_str: TdxDBGridColumn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TFormRangeEdit = class(TObject)
  public
    class procedure Manage;
  end;


var
  frmFormEditUFrm: TfrmFormEditUFrm;

implementation

uses ProductUDm;

{$R *.dfm}

 class procedure TFormRangeEdit.Manage;
var
  frmFormEditUFrm: TfrmFormEditUFrm;

begin
frmFormEditUFrm := TfrmFormEditUFrm.Create(Application);
try
 try
  frmFormEditUFrm.ShowModal;
  if ProductDm.qryADOFormRange.State in [dsEdit, dsInsert] then
   ProductDm.qryADOFormRange.Post;
  except
  end;
 finally
 frmFormEditUFrm.Free;
 end;
end;



procedure TfrmFormEditUFrm.FormCreate(Sender: TObject);
begin
dxgFormRange.Align := alClient;
end;

end.

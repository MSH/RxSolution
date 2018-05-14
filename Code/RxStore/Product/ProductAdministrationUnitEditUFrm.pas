unit ProductAdministrationUnitEditUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  RzDlgBtn, DBCtrls, RzDBNav, ExtCtrls, RzButton, RzRadChk, RzDBChk,
  wwdblook, StdCtrls, Mask, RzCommon, RzEdit, RzDBEdit;

type
  TProductAdministrationUnitEditFrm = class(TForm)
    pnlProductDetailColorBackground: TPanel;
    Label31: TLabel;
    Label38: TLabel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    Panel20: TPanel;
    Shape2: TShape;
    RzDBNavigator1: TRzDBNavigator;
    RzDialogButtons1: TRzDialogButtons;
    dxgAdministrationUnit: TdxDBGrid;
    dxgAdministrationUnitAdminUnit_Qty: TdxDBGridMaskColumn;
    dxgAdministrationUnitAdminUnit_Unit: TdxDBGridMaskColumn;
    dxgAdministrationUnitAdminUnit_Type: TdxDBGridMaskColumn;
    Label1: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzFrameController1: TRzFrameController;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TAdministrationUnitManage = class(TObject)
  public
    class procedure Manage;
  end;

var
  ProductAdministrationUnitEditFrm: TProductAdministrationUnitEditFrm;

implementation

uses ProductUDm;

{$R *.dfm}

class procedure TAdministrationUnitManage.Manage;
var
  ProductAdministrationUnitEditFrm: TProductAdministrationUnitEditFrm;

begin

  ProductAdministrationUnitEditFrm := TProductAdministrationUnitEditFrm.Create(Application);
  try
    try
    ProductAdministrationUnitEditFrm.ShowModal;
    if ProductDm.qryADOAdministrationUnits.State in [dsEdit, dsInsert] then
      ProductDm.qryADOAdministrationUnits.Post;
    except
    end;
  finally
    ProductAdministrationUnitEditFrm.Free;
  end;

end;


procedure TProductAdministrationUnitEditFrm.FormCreate(Sender: TObject);
begin
  dxgAdministrationUnit.Align := alClient;
end;

end.

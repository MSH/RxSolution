unit CopyUserRightsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls, RzDlgBtn,
  DB, ADODB;

type
  TCopyUserOtherRightsFrm = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    grdUsers: TdxDBGrid;
    grdUsersfirstName_str: TdxDBGridColumn;
    grdUserslastName_str: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure CopyUserRights(ID: string);

  end;

var
  CopyUserOtherRightsFrm: TCopyUserOtherRightsFrm;

implementation

uses RxSolutionSecurityAdministratorUFrm;

{$R *.dfm}


procedure TCopyUserOtherRightsFrm.CopyUserRights(ID: string);
begin
  //
  CopyUserOtherRightsFrm.Show;  


end;

procedure TCopyUserOtherRightsFrm.FormShow(Sender: TObject);
begin
  //
  grdUsers.Height := Screen.ActiveForm.Height - RzDialogButtons1.Height;
end;

procedure TCopyUserOtherRightsFrm.FormResize(Sender: TObject);
begin
grdUsers.Height := Screen.ActiveForm.Height - RzDialogButtons1.Height;
end;

end.


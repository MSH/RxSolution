unit UserLogonfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzDlgBtn, RzLaunch;

type
  TfrmLogon = class(TForm)
    edtUsername: TEdit;
    edtPassoword: TEdit;
    lblUsername: TLabel;
    Label2: TLabel;
    lblError: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    RzLauncher1: TRzLauncher;
    img: TImage;
    function VerifyLogonDetails : Boolean;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogon: TfrmLogon;

implementation

uses MainUDm,  MainUFrm, PatientUDm, TabEnter;

function TfrmLogon.VerifyLogonDetails : Boolean;
begin

  if MainDm.UserLogonCheck(Trim(edtUsername.Text), Trim(edtPassoword.Text)) then
   begin
   Result := True
   end
  else
   begin
   Result := False;
   end;

end;

{$R *.dfm}

procedure TfrmLogon.btnOkClick(Sender: TObject);
var 
  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

   if VerifyLogonDetails then
    begin
    PatientDm.OpenTables;
    Screen.Cursor := Save_Cursor;
    frmLogon.Close;
    end
   else
    begin
    lblError.Visible := True;
    Screen.Cursor := Save_Cursor;
    end;
    
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
 edtUsername.Clear;
 edtPassoword.Clear;
 lblError.Visible := False;     
 edtUsername.SetFocus;
end;

procedure TfrmLogon.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmLogon.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := NextControl(frmLogon, Key);
end;

end.

unit PrescriptionFRM_PasswordPin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, RzCommon, RzLine, StdCtrls, ExtCtrls, RzDlgBtn, Mask,
  RzEdit, RzDBEdit;

type
  TfrmRXPasswordPin = class(TForm)
    rzdButtons: TRzDialogButtons;
    pnlRXBackground: TPanel;
    pnlForm_Header: TPanel;
    lblPassword: TLabel;
    fcRXHeader: TRzFrameController;
    pmnuRX_: TPopupMenu;
    edtPassword: TRzEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TRXPinBeforePost = class(TObject)
  public
    function IsRequired: Boolean;
    class function Show: string;
  end;

implementation

{$R *.dfm}

function TRXPinBeforePost.IsRequired: Boolean;
begin
  Result := False;
end;

class function TRXPinBeforePost.Show(): string;
var
  frmRXPasswordPin: TfrmRXPasswordPin;
begin

  Result := '';
  try
  frmRXPasswordPin := TfrmRXPasswordPin.Create(nil);
    try
    if frmRXPasswordPin.ShowModal = mrOK then Result := frmRXPasswordPin.edtPassword.Text;
    except
      on E:Exception do raise Exception.Create('TRXPinBeforePost.Show' + #13 + E.Message);
    end;
  finally
  frmRXPasswordPin.Free;
  end;

end;

procedure TfrmRXPasswordPin.FormShow(Sender: TObject);
begin

 //********* Set Focus
 edtPassword.SetFocus;
 
end;

end.

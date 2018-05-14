unit RxSolutionSecurityLogOnUFrm;


interface

uses
  Windows, StdCtrls, Forms, Mask, Controls, Buttons, Classes, ExtCtrls,
  Variants, SysUtils, Dialogs,

  RxSolutionSecurityClass, RzBckgnd, RzLabel, Graphics, RzDlgBtn, ActnList,
  dmpDataObjectBaseModule;

type
  TSecurity_LogOnFrm = class(TForm)

    shpFormFrame: TShape;

    txtLogOnErrorText: TStaticText;
    edtPassword: TMaskEdit;
    edtUserName: TMaskEdit;

    lblCaptionPassword: TLabel;
    lblCaptionUserName: TLabel;
    lblCaptionDetails: TLabel;
    imgLogo: TImage;
    RzDialogButtons1: TRzDialogButtons;
    img: TImage;
    rzlDisplay: TRzLabel;
    RzSeparator1: TRzSeparator;
    ActionList1: TActionList;
    atnLogOn: TAction;
    atnCancel: TAction;

    procedure edtUserNameChange(Sender: TObject);
    procedure edtPasswordChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FLoggedUser: Variant;
    FPassword: string;
    FUserList: TUserList;
    FUserName: string;

    procedure SwitchOffErrorMsg;
    { Public declarations }
    procedure SwitchOnErrorMsg;
    function UserPasswordMatch: Boolean;

  public
    procedure CollectData(prmSession : TSQLSession );
    property LoggedUser: Variant read FLoggedUser write FLoggedUser;
    property UserList: TUserList read FUserList write FUserList;
  end;

  TSecurityLogOnManager = class(TObject)
  public
    class function LogOn(const prmSession : TSQLSession ; var prmUserID : Variant):
        Boolean;
  end;


implementation

uses TabEnter;

{$R *.dfm}

procedure TSecurity_LogOnFrm.CollectData(prmSession : TSQLSession );
begin
  FUserList := TUserList.Create(prmSession, 'tblSystem_User', 'UserID', '', null);
  FUserList.Load;
end;

{ TSystemSecurityFrmLogOn }

procedure TSecurity_LogOnFrm.SwitchOffErrorMsg;

begin
  txtLogOnErrorText.Visible := False;
end;



procedure TSecurity_LogOnFrm.SwitchOnErrorMsg;
begin
  txtLogOnErrorText.Visible := True;
end;

procedure TSecurity_LogOnFrm.edtUserNameChange(Sender: TObject);
begin
  FUserName := (Sender as TMaskEdit).Text;
  SwitchOffErrorMsg;
end;

procedure TSecurity_LogOnFrm.edtPasswordChange(Sender: TObject);
begin
  FPassWord := (Sender as TMaskEdit).Text;
  SwitchOffErrorMsg;
end;

procedure TSecurity_LogOnFrm.FormCreate(Sender: TObject);
begin

  //FUserName           := 'rpm';
  //FPassword           := 'rpm';
  //******** Default user name and password removed 
  FUserName           := '';
  FPassword           := '';
  FLoggedUser         := null;
  edtUserName.Text    := FUserName;
  edtPassword.Text    := FPassword;

end;

procedure TSecurity_LogOnFrm.FormDestroy(Sender: TObject);
begin
  if Assigned(FUserList) then FUserList.Free;
end;

function TSecurity_LogOnFrm.UserPasswordMatch: Boolean;
var
  i: Integer;
begin

  Result        := False;
  FLoggedUser   := Null;
  for i := 0 to FUserList.RecordsCount -1 do
    if Trim(LowerCase(TUser(FUserList.Records[i]).UserName.Value)) =
      Trim(LowerCase(FUserName)) then
        if Trim(TUser(FUserList.Records[i]).Password.Value) = Trim(FPassword) then
          begin
          Result        := True;
          FLoggedUser   := FUserList.Records[i].OID.Value;
          end;

end;

procedure TSecurity_LogOnFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if ModalResult = mrOk then
    begin
    CanClose          := UserPasswordMatch;
    if not CanClose then SwitchOnErrorMsg;
    end;

end;

class function TSecurityLogOnManager.LogOn(const prmSession : TSQLSession ; var
    prmUserID : Variant): Boolean;
var
  LogOnFrm: TSecurity_LogOnFrm;
begin


  Result      := False;
  prmUserID   := Null;

  LogOnFrm := TSecurity_LogOnFrm.Create(nil);
  try
  with LogOnFrm do
    try
    CollectData(prmSession);
    if LogOnFrm.ShowModal = mrOK then
      begin
      Result    := True;
      prmUserID := LoggedUser;
      end;
    except
      on E:Exception do raise Exception.Create(e.Message);
    end;
  finally
    LogOnFrm.Free
  end;

end;


procedure TSecurity_LogOnFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := NextControl(Self, Key);
end;

end.

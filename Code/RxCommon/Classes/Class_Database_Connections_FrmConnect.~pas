unit Class_Database_Connections_FrmConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzDlgBtn, RzCommon,
  RzBckgnd, RzLabel, Mask, RzEdit;


type

  EEditFormType = (etAccess, etSQL);

  TfrmConnections = class(TForm)
    OpenDialog1: TOpenDialog;
    RzDialogButtons1: TRzDialogButtons;
    Panel1: TPanel;
    imgLogo: TImage;
    img: TImage;
    Label9: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    chbIntegratedSecurity: TCheckBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    rzlServer: TRzEdit;
    rzlDatabase: TRzEdit;
    rzlUsername: TRzEdit;
    rzlPassword: TRzEdit;
    rzlPhysicalFilename: TRzEdit;
    rzlBackupPath: TRzEdit;
    Button2: TButton;
    Button1: TButton;
    shpFormFrame: TShape;
    rzlDisplay: TRzLabel;
    RzSeparator1: TRzSeparator;
    rzfMainFrameController: TRzFrameController;
    procedure chbIntegratedSecurityKeyPress(Sender: TObject;
      var Key: Char);
    procedure chbIntegratedSecurityClick(Sender: TObject);
  private
    FeditFormType: EeditFormType;
    procedure SeteditFormType(Value: EeditFormType);
    { Private declarations }
  public
    procedure DisplayEditOptions;
    property editFormType: EeditFormType read FeditFormType write SeteditFormType;
    { Public declarations }
  end;

  TSetConnection = class(TObject)
  private
    FServer: string;
    FDatabase: string;
    FUserName: string;
    FPassword: string;
    FFileName: string;
    FintegratedSecurity: Boolean;
    FPhysicalFileName: string;
    FBackupPath: string;
  public
    function Connect(Value:EEditFormType): Boolean;
    property Server: string read FServer write FServer;
    property Database: string read FDatabase write FDatabase;
    property UserName: string read FUserName write FUserName;
    property Password: string read FPassword write FPassword;
    property FileName: string read FFileName write FFileName;
    property integratedSecurity: Boolean read FintegratedSecurity write
        FintegratedSecurity;
    property PhysicalFileName: string read FPhysicalFileName write
        FPhysicalFileName;
    property BackupPath: string read FBackupPath write FBackupPath;
  end;

var
  frmConnections: TfrmConnections;

implementation
{$R *.dfm}

function TSetConnection.Connect(Value:EEditFormType): Boolean;
var
  frmConnections: TfrmConnections;
begin

  Result := False;
  frmConnections := TfrmConnections.Create(Application);
  with frmConnections do
    try
    editFormType := Value;
    case Value of
      etSQL : begin
              rzlServer.Text        := FServer;
              rzlDatabase.Text      := FDatabase;
              rzlUsername.Text      := FUsername;
              rzlPassword.Text      := FPassword;
              rzlPhysicalFilename.Text := FPhysicalFileName;
              rzlBackupPath.Text    := FBackupPath;
              chbIntegratedSecurity.Checked := FIntegratedSecurity;
              end;
      etAccess : begin
//              edtAccessFileName.Text  := FFileName;
//              edtAccessUsername.Text  := FUsername;
//              edtAccessPassword.Text  := FPassword;
              end;
      end;
      
    DisplayEditOptions;

    if ShowModal = mrOK then
      begin
      case Value of
        etSQL : begin
              FServer := rzlServer.Text;
              FDatabase := rzlDatabase.Text;
              FUsername := rzlUsername.Text;
              FPassword := rzlPassword.Text;
              FPhysicalFileName := rzlPhysicalFilename.Text;
              FBackupPath := rzlBackupPath.Text;
              FIntegratedSecurity := chbIntegratedSecurity.Checked;
              end;
        etAccess : begin
//              FFileName := edtAccessFileName.Text;
//              FUsername := edtAccessUsername.Text;
//              FPassword := edtAccessPassword.Text;
              end;
        end;
      Result := True;
      end;
    finally
    Free;
    end;

end;

procedure TfrmConnections.DisplayEditOptions;
begin

  rzlUsername.Enabled := not chbIntegratedSecurity.Checked;
  rzlPassword.Enabled := not chbIntegratedSecurity.Checked;

end;


procedure TfrmConnections.chbIntegratedSecurityKeyPress(Sender: TObject;
  var Key: Char);
begin
  DisplayEditOptions;
end;

procedure TfrmConnections.chbIntegratedSecurityClick(Sender: TObject);
begin
  DisplayEditOptions;
end;

procedure TfrmConnections.SeteditFormType(Value: EeditFormType);
begin

//  case Value of
//    etSQL     : pgcConnections.ActivePage := tbsConnections_SQL;
//    etAccess  : pgcConnections.ActivePage := tbsConnections_Access;
//    end;

end;

end.

unit frmViewSetupUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, ExtCtrls, inifiles, RzPanel, RzRadGrp,
  RzDBRGrp;

type
  TViewSetupFrm = class(TForm)
    grp_UserView: TRadioGroup;
    btnSave: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    atnSave: TAction;
    atnCancel: TAction;
    procedure atnSaveExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure SaveSettings;
    function SelectedOption: string;
    function GetSettings: string;
  end;

var
  ViewSetupFrm: TViewSetupFrm;

implementation

{$R *.dfm}

//This procedure checks the group box and returns the value string of selected option

function TViewSetupFrm.SelectedOption: string;
var
 option : integer;
begin
 option := grp_UserView.ItemIndex;
 Case option of
  0 : Result := 'Receptionist';
  1 : Result := 'Nurse';
  2 : Result := 'Doctor';
  3 : Result := 'Data Clerk';
 else
  Result := 'Administrator';
 end; 
  
end;

procedure TViewSetupFrm.SaveSettings;
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create('apmr.ini');
  try
    ini.WriteString('apmr','viewType', SelectedOption);
  finally
    ini.Free;
  end;

end;

function TViewSetupFrm.GetSettings: string;
var
  ini : TIniFile;
  FviewType : string;
begin
  Ini := TIniFile.Create('apmr.ini');
  try
   FviewType  := '';
   FviewType  := ini.ReadString('apmr','viewType', '');
   Result     := FviewType;
  finally
    ini.Free;
  end;
end;


procedure TViewSetupFrm.atnSaveExecute(Sender: TObject);
begin

 SaveSettings;
 MessageDlg('The application needs to be restarted for the changes to take effect.', mtInformation, [mbYes, mbNo], 0);
 Close;

end;

end.

unit rxDispensing_Unt_Patient;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, DB, 

  SystemConstants, RxSolutionSecurityClass;

type

  TPatientInterface = class(TObject)
  public
    constructor Create(prmConstr: string);
    destructor Destroy; override;
    procedure Add(prmUser: TSecurity); stdcall;
    procedure Delete(prmPatientID: String; prmUser: TSecurity; prmAskToDelete:
        boolean); export;
    procedure Edit(prmPatientID: String; prmUser: TSecurity); stdcall;
  end;

implementation

uses rxDispensing_Dm_Patient, rxDispensing_Frm_Patient;

constructor TPatientInterface.Create(prmConstr: string);
begin
  inherited Create;
  dmPatient               := TdmPatient.Create(Application);
  dmPatient.Database      := prmConstr;

end;

destructor TPatientInterface.Destroy;
begin

  dmPatient.Free;
  inherited;

end;

procedure TPatientInterface.Add(prmUser: TSecurity);
var
  addedID :String;
begin
  try
  dmPatient.Security      := prmUser;
  addedID                 := dmPatient.Add;
  frmPatientDetail_       := TfrmPatientDetail_.Create(Application);
  with frmPatientDetail_ do
    begin
    rzdButtons.ShowCancelButton := True;

    if ShowModal <> mrOK  then
      begin
      //dmPatient.conPatient.Close;
      dmPatient.Delete(addedID, False);
      dmPatient.conPatient.Close;
      end
    else
      dmPatient.SaveAll;
    end

  finally
  frmPatientDetail_.Free;
  end;
end;

procedure TPatientInterface.Delete(prmPatientID: String; prmUser: TSecurity;
    prmAskToDelete: boolean);
begin
  try
    try
    dmPatient.Security      := prmUser;
    dmPatient.Delete(prmPatientID, prmAskToDelete);

    except
      on E:EDatabaseError do RaiseLastWin32Error;
    end;
  finally
  end;
end;

procedure TPatientInterface.Edit(prmPatientID: String; prmUser: TSecurity);
begin

  try
  dmPatient.Security      := prmUser;
  dmPatient.Patient       := prmPatientID;

  frmPatientDetail_       := TfrmPatientDetail_.Create(Application);
  with frmPatientDetail_ do
    begin  
    // MC - 20/04/2012 - Allow user to cancel the form in case they made a mistake selecting a patient
    rzdButtons.ShowCancelButton := True;
    if ShowModal = mrOK then dmPatient.SaveAll;
    end;

  finally
  frmPatientDetail_.Free;
  end;

end;
end.


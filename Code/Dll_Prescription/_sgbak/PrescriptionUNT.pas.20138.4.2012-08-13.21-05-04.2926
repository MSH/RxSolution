unit PrescriptionUNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus,

  SystemConstants, RxSolutionSecurityClass;

function Post_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt; stdcall;

function Delete_Prescription(appHandle : THandle ; prmConstr, prmRxID : String
    ; prmUser : TSecurity): LongInt; stdcall;

function Add_PrescriptionDefined(appHandle : THandle ; prmConStr, PatientID,
    PrescriberID, DispenserID : String;  prmUser : TSecurity): LongInt; stdcall;

function Edit_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt; stdcall;

implementation

uses PrescriptionDM, PrescriptionFRM;


function Post_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt;

begin

{

  try
  Application.Handle                := appHandle;
  dmPrescription                    := TdmPrescription.Create(Application);
  dmPrescription.DatabaseConString  := prmConStr;

    try
      dmPrescription.Post(prmRxID);

    except
      on E:Exception do
        raise Exception ('Method: Post_Prescription' + #13 + E.Message);
    end;


  finally
  dmPrescription.Free;

  dmPrescription := nil;

  Result := 0;
  end;
 }

end;

function Delete_Prescription(appHandle : THandle ; prmConstr, prmRxID : String
    ; prmUser : TSecurity): LongInt;
begin

  {
  try
  Application.Handle  := appHandle;
  dmPrescription      := TdmPrescription.Create(Application);
  dmPrescription.DatabaseConString := prmConstr;
  dmPrescription.Security := prmUser;

  dmPrescription.Delete(prmRxID);
  finally
  dmPrescription.Free;
  dmPrescription := nil;
  end;
  Result := 1;
  }
end;

function Add_PrescriptionDefined(appHandle : THandle ; prmConStr, PatientID,
    PrescriberID, DispenserID : String;  prmUser : TSecurity): LongInt;
var
  prescriptionID  : String;
begin

{
  try
  Application.Handle                := appHandle;
  dmPrescription                    := TdmPrescription.Create(Application);
  dmPrescription.DatabaseConString  := prmConStr;
  dmPrescription.Edit();

     try
    frmRx := TfrmPrescriptionDetail_.Create(Application);
    frmRx.Security := prmUser;
    frmRx.GenericList := dmPrescription.GenericList;
    frmRx.RouteList := dmPrescription.RouteList;
    frmRx.DirectionCode := dmPrescription.DirectionCode;
  //  frmRx.ICD10Code := dmPrescription.ICD10Code;//SM
    frmRx.IndicationList := dmPrescription.IndicationList;
    frmRx.InstructionsSpecial := dmPrescription.InstructionsSpecial;
    frmRx.IntervalList := dmPrescription.IntervalList;
    frmRx.StrengthUnits := dmPrescription.StrengthUnits;
    frmRx.ICD10Code := dmPrescription.ICD10Code;

    dmPrescription.PrescriptionItem_Add_Prescribed;


    if frmRx.ShowModal <> mrOK then
      begin
      dmPrescription.Prescription_Delete(prescriptionID, False);
      end else
      begin
      if dmPrescription.IsPosted then
        begin
        dmPrescription.UpdateStatus(STATUS_V_COMPLETE);
      end;
    end;
    except
      on E:Exception do
        MessageDlg(E.Message + #13 + 'Method: Add_PrescriptionDefined', mtError, [mbOK], 0);
    end;


  finally
  frmRx.Free;
  dmPrescription.Free;
  Result := 0;
  end;
  }

end;

function Edit_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt;

begin

 {
  try
  // Set the dll handle to the calling application
  Application.Handle                := appHandle;
  dmPrescription                    := TdmPrescription.Create(Application);

    try

    // Load the datamodule.
    dmPrescription.DatabaseConString  := prmConStr;
    dmPrescription.Security           := prmUser;
    dmPrescription.PresciptionId      := prmRxID;

//    ShowMessage('Here');
    // Load the prescription form
    frmRx                             := TfrmPrescriptionDetail_.Create(Application);

    if frmRx.ShowModal = mrOK then
      begin
      dmPrescription.SaveAll;
      end
      else
      begin
      end;


    except
      on E:Exception do
        raise Exception ('Method: Edit_Prescription' + #13 + E.Message);
    end;


  finally
  frmRx.Free;
  dmPrescription.Free;


  frmRx := nil;
  dmPrescription := nil;

  Result := 0;
  end;

 }
end;


end.

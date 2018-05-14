unit rxDispensing_Unt_Dispenser;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, LocOnFly, LocUtils,

  SystemConstants;


procedure SwitchToFile(DLLFileName : PChar; var dllStruct : TDLLInfoStruct); stdcall;


procedure BackToModuleRes(Module : HINST); stdcall;


procedure Edit_Dispenser(appHandle : THandle ; pDatabase:String; pID :SGUID;
    pAccessLevel : integer); stdcall;

procedure Add_Dispenser(appHandle : THandle ; pDatabase :string; pAccessLevel
    :integer); stdcall;

procedure Delete_Dispenser(appHandle : THandle ; pDatabase:string;pID:SGUID;
    pAccessLevel :integer); stdcall;

implementation

uses rxDispensing_Dm_Dispenser, rxDispensing_Frm_Dispenser;



procedure Edit_Dispenser(appHandle : THandle ; pDatabase:String; pID :SGUID;
    pAccessLevel : integer);
begin
  try
  Application.Handle    := appHandle;
  dmPerson              := TdmPerson.Create(Application);
  dmPerson.Database     := pDatabase;
  dmPerson.Person       := pID;
  frmPersonDetail_      := TfrmPersonDetail_.Create(Application);

  //25/01/2013
   if (pAccessLevel = 0) then
  begin
    //disable contact functionalities
    frmPersonDetail_.atnContact_New.Enabled := False;
    frmPersonDetail_.atnContact_Delete.Enabled := False;
    frmPersonDetail_.atnContact_Save.Enabled := False;
    frmPersonDetail_.atnContact_Cancel.Enabled := False;

    //disable Edit functionalities
    frmPersonDetail_.atnEdit_Cut.Enabled := False;
    frmPersonDetail_.atnEdit_paste.Enabled := False;

    //disable positions

    frmPersonDetail_.atnPosition_new.Enabled := False;
    frmPersonDetail_.atnPosition_Delete.Enabled := False;
    frmPersonDetail_.atnPosition_Save.Enabled := False;
    frmPersonDetail_.atnPosition_Cancel.Enabled := False;
    frmPersonDetail_.atnPosition_refresh.Enabled := False;

    //disable qualification

    frmPersonDetail_.atnQualification_New.Enabled := False;
    frmPersonDetail_.atnQualification_Delete.Enabled := False;
    frmPersonDetail_.atnQualification_Save.Enabled := False;
    frmPersonDetail_.atnQualification_Cancel.Enabled := False;
    frmPersonDetail_.atnQualification_refresh.Enabled := False;

    //disble comments

    frmPersonDetail_.atnComments_New.Enabled := False ;
    frmPersonDetail_.atnComments_Delete.Enabled := False;
    frmPersonDetail_.atnComments_Post.Enabled := False;
    frmPersonDetail_.atnComments_Cancel.Enabled := False;
    frmPersonDetail_.atnComments_Refresh.Enabled := False;
    //
    frmPersonDetail_.RzGroupBox10.Enabled := False;

    frmPersonDetail_.RzGroupBox4.Enabled := False;
    frmPersonDetail_.RzGroupBox5.Enabled := False;
    frmPersonDetail_.RzGroupBox6.Enabled := False;
    frmPersonDetail_.RzGroupBox8.Enabled := False;
    frmPersonDetail_.RzGroupBar1.Enabled := False;
    frmPersonDetail_.grdPrescriberSignature.Enabled := False;
    frmPersonDetail_.grdPrescriberPhoto.Enabled := False;
    frmPersonDetail_.RzDBNavigator6.Enabled := False;
    frmPersonDetail_.RzDBNavigator7.Enabled := False;
  end;
   
  with frmPersonDetail_ do
    begin
    ShowModal;
    end;

  finally
  frmPersonDetail_.Free;
  dmPerson.Free;
  end;

end;

procedure Add_Dispenser(appHandle : THandle ; pDatabase :string; pAccessLevel
    :integer);
var
  addedID :String;

begin
  try
  Application.Handle := appHandle;
  dmPerson := TdmPerson.Create(Application);
  dmPerson.Database := pDatabase;
  addedID := dmPerson.Add;

  frmPersonDetail_ := TfrmPersonDetail_.Create(Application);

   //frmPersonDetail_.RzDialogButtons1.ShowCancelButton := True;

   with frmPersonDetail_ do
   
   if ShowModal <> mrOK then
      dmPerson.Delete(addedID, False);
  finally
  frmPersonDetail_.Free;
  dmPerson.Free;
  end;
end;

procedure Delete_Dispenser(appHandle : THandle ; pDatabase:string;pID:SGUID;
    pAccessLevel :integer);
begin
  try
  Application.Handle := appHandle;
  dmPerson := TdmPerson.Create(Application);
  dmPerson.Database := pDatabase;
  dmPerson.Delete(pID);
  finally
  dmPerson.Free;
  end;
end;

procedure SwitchToFile(DLLFileName : PChar; var dllStruct : TDLLInfoStruct);
begin
  Localizer.DllSwitchToFile(DllFileName, dllStruct);
end;

procedure BackToModuleRes(Module : HINST);
begin
  Localizer.BackToModuleRes(Module);
end;

end.

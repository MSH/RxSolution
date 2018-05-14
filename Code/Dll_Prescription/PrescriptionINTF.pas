unit PrescriptionINTF;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, Prescription_TLB, StdVcl, PrescriptionDM, PrescriptionFRM,
  SysUtils, Classes;

type
  TRX = class(TAutoObject, IRX)
  private
    procedure NotImplementetedYet;
  protected
    procedure Initialize(const _conString: WideString); safecall;
    function Get_ConnectionString: WideString; safecall;
    procedure Set_ConnectionString(const Value: WideString); safecall;
    procedure Edit(const _id: WideString; const _userRights: WordBool;
      const _userNameID: WideString; const _editLabel: WordBool;
      const _userPin: WideString); safecall;

    procedure Delete(const _id: WideString); safecall;
    procedure CopyRx(const _id: WideString; const _userID: WideString; const _userPin: WideString); safecall;
    procedure Post(const _id: WideString); safecall;
    procedure Revert(const _id: WideString); safecall;
    procedure Add(const _patientId: WideString; const _userNameID: WideString; const _userPin: WideString); safecall;
    procedure Protocols(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString); safecall;
    procedure StandardDose(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString); safecall;

    function Get_DispenserID: WideString; safecall;
    procedure Set_DispenserID(const Value: WideString); safecall;

    procedure IRX.StandardDose = IRX_StandardDose; 
    procedure IRX_StandardDose(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString); safecall;
    { Protected declarations }
  end;

implementation

uses ComServ, StdRegimenUNT, StdRegimenDM;

procedure TRX.Initialize(const _conString: WideString);
begin
  dmRX := TdmRX.Create(nil);
  frmRX := TfrmRX.Create(nil);
  if _conString <> '' then Set_ConnectionString(_conString);

end;

function TRX.Get_ConnectionString: WideString;
begin

  if Assigned(dmRX) then
    Result := dmRX.DatabaseConString
  else
    // TODO -oDeane -cExceptions : Get_ConnectionString : Build clearer exception handling for COM+ exposure
    raise Exception.Create('Not Assigned');

end;

procedure TRX.Set_ConnectionString(const Value: WideString);
begin
  if Assigned(dmRX) then
    dmRX.DatabaseConString := Value
  else
    // TODO -oDeane -cExceptions : Set_ConnectionString : Build clearer exception handling for COM+ exposure
    raise Exception.Create('Not Assigned');

end;

procedure TRX.Edit(const _id: WideString; const _userRights: WordBool;
  const _userNameID: WideString; const _editLabel: WordBool;
  const _userPin: WideString);
begin
  try
    try

    dmRX.FUserID := _userNameID;

    dmRX.Edit(_id, _userRights, _userNameID, _userPin);   // This just sets the datamodule up to edit the RX

    frmRX.EnableDispenser := false;

     //MC - 20/08/2012
     frmRx.SetButtonRights(_userRights);
     frmRx.SetScreenAvailablityRights(_userRights, _editLabel);


      frmRX.ShowModal;
       frmRx.tmrRX.Interval := 1000;  // This displays the user interface part.
      dmRX.SaveAll;
         // Commit all data to database.
    except
      // TODO -oDeane -cExceptions : TRX.Edit : Build clearer exception handling for COM+ exposure
      on E:Exception do
        raise Exception.Create('Edit' + #13 + E.Message);
    end;
  finally
    //dmRX.CloseData;
  end;
end;

procedure TRX.Delete(const _id: WideString);
begin

  try
    try

    dmRX.Delete(_id);   //

    except
      // TODO -oDeane -cExceptions : TRX.Edit : Build clearer exception handling for COM+ exposure
      on E:Exception do
        raise Exception.Create('Edit' + #13 + E.Message);
    end;
  finally
    //dmRX.CloseData;
  end;

end;


procedure TRX.CopyRx(const _id: WideString; const _userID: WideString; const _userPin: WideString);
begin

  try
    try

    dmRX.CopyRx(_id, _userID, _userPin);
//    dmRX.Post;
    dmRX.SaveAll;     // Commit all data to database.

    except
      // TODO -oDeane -cExceptions : TRX.Edit : Build clearer exception handling for COM+ exposure
      on E:Exception do
        raise Exception.Create('Copy' + #13 + E.Message);
    end;
  finally
    //dmRX.CloseData;
  end;


end;

procedure TRX.Post(const _id: WideString);
begin  
  try
    try

    dmRX.Edit(_id, True, 'username', '');   // This just sets the datamodule up to edit/load the RX
    dmRX.Post;
    dmRX.SaveAll;     // Commit all data to database.

    except
      // TODO -oDeane -cExceptions : TRX.Edit : Build clearer exception handling for COM+ exposure
      on E:Exception do
        raise Exception.Create('Posting' + #13 + E.Message);
    end;
  finally
    //dmRX.CloseData;
  end;
//  NotImplementetedYet;
end;

procedure TRX.Revert(const _id: WideString);
begin
  // TODO -oDeane -cImplementation : TRX.Revert : Implement Delete interface for IRX
  NotImplementetedYet;
end;

procedure TRX.Add(const _patientId: WideString; const _userNameID: WideString; const _userPin: WideString);
begin
  try
    try

    dmRX.Add(_patientId, _userNameID, _userPin);   // This just sets the datamodule up to edit the RX
    frmRX.ShowModal;  // This displays the user interface part.
    dmRX.SaveAll;     // Commit all data to database.

    except
      // TODO -oDeane -cExceptions : TRX.Edit : Build clearer exception handling for COM+ exposure
      on E:Exception do
        raise Exception.Create('Edit' + #13 + E.Message);
    end;
  finally
    //dmRX.CloseData;
  end;  

end;

procedure TRX.NotImplementetedYet;
begin
  raise Exception.Create('Not yet implemented in this version.');
end;

procedure TRX.Protocols(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString);
var
  stdReg : TStdRegimen;
begin
  stdReg := TStdRegimen.Create(dmRX.conRX.ConnectionString);
  //MC - 11/04/2012
  stdReg.Protocols(_userRights, _userNameID, _userPin);
  stdReg.Free;
  stdReg := nil;
end;

procedure TRX.StandardDose(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString);
var
  stdReg : TStdRegimen;
begin
  stdReg := TStdRegimen.Create(dmRX.conRX.ConnectionString);
   //MC - 11/04/2012
  stdReg.StandardDose(_userRights, _userNameID, _userPin);
  stdReg.Free;
  stdReg := nil;
end;

function TRX.Get_DispenserID: WideString;
begin
  Result := dmRX.DefaultDispenserID;
end;

procedure TRX.Set_DispenserID(const Value: WideString);
begin
  dmRX.DefaultDispenserID := Value;
end;

procedure TRX.IRX_StandardDose(const _userRights: WordBool; const _userNameID: WideString; const _userPin: WideString);
var
  stdReg : TStdRegimen;
begin
  stdReg := TStdRegimen.Create(dmRX.conRX.ConnectionString);
   //MC - 11/04/2012
  stdReg.StandardDose(_userRights, _userNameID, _userPin);
  stdReg.Free;
  stdReg := nil; 
end;

initialization
  TAutoObjectFactory.Create(ComServer, TRX, Class_RX,
    ciMultiInstance, tmApartment);
end.

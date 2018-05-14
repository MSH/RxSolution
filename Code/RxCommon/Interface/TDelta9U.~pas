unit TDelta9U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComObj, ActiveX, AxCtrls,

  TPatientU, TResponseU, TMessageResultU;

type
  /// Main API to link with Visual Studio COM object.
  TDelta9 = class(TObject)
  private
    FConnectionString: string;
  public
    constructor Create; overload;
    constructor Create(connectionString: string); overload;
    function UpdateD9PatientFromRxByFolderNumber(folderNumber: string):
        TMessageResult;
    function UpdateRxPatientFromD9ByFolderNumber(folderNumber: string):
        TMessageResult;
    property ConnectionString: string read FConnectionString write
        FConnectionString;
  published
    function GetPatientFromD9ByFolderNumber(prmFolderNumber : string):
        TMessageResult;
  end;

implementation

constructor TDelta9.Create;
begin
  inherited Create;
end;

constructor TDelta9.Create(connectionString: string);
begin
  inherited Create;
  FConnectionString := connectionString;
end;

function TDelta9.GetPatientFromD9ByFolderNumber(prmFolderNumber : string):
    TMessageResult;
var
    _delta9     : OleVariant;
    _patient    : OleVariant;
    _response   : TResponse;
begin

  Result := TMessageResult.Create;
  try
    _delta9           := CreateOleObject('Pbg.Rx.Delta9.Administration');
    _patient          := _delta9.GetPatientFromD9ByFolderNumber(prmFolderNumber);

    _response         := TResponse.Create;
    Result.Patient    := TPatientDC.Create(_patient, _response);
    Result.Response   := _response;

    _patient  := Unassigned;
    _delta9   := Unassigned;

  except on e: Exception do
    Result.Response.Errors.Add(e.Message);
  end;

end;

function TDelta9.UpdateD9PatientFromRxByFolderNumber(folderNumber: string):
    TMessageResult;
var
    _delta9     : OleVariant;
    _response   : OleVariant;
begin

  Result := TMessageResult.Create;
  try

    _delta9     := CreateOleObject('Pbg.Rx.Delta9.Administration');
    _response  := _delta9.UpdateD9PatientFromRxByFolderNumber(FConnectionString, folderNumber);
    Result.Response.Success := _response.Success;

    _response  := Unassigned;
    _delta9     := Unassigned;

  except on e: Exception do
    Result.Response.Errors.Add(e.Message);
  end;

end;

function TDelta9.UpdateRxPatientFromD9ByFolderNumber(folderNumber: string):
    TMessageResult;
var
    _delta9     : OleVariant;
    _response   : OleVariant;
begin

  Result := TMessageResult.Create;
  try

    _delta9     := CreateOleObject('Pbg.Rx.Delta9.Administration');
    _response  := _delta9.UpdateRxPatientFromD9ByFolderNumber(FConnectionString, folderNumber);
    Result.Response.Success := _response.Success;

    _response  := Unassigned;
    _delta9     := Unassigned;

  except on e: Exception do
    Result.Response.Errors.Add(e.Message);
  end;

end;

end.

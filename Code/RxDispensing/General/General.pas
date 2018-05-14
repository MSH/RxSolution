unit General;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, ADODB, ComObj;

type

  TRxDispensing = class;

  TRxDispensing = class(TObject)
  public
    class procedure DisplayPhase(prmPhaseNumber : integer = 0);
    class procedure DisplayActiveShortly(prmPhaseNumber : integer = 0);
  end;


implementation

class procedure TRxDispensing.DisplayPhase(prmPhaseNumber : integer = 0);
var
  prvMsg : string;
begin

  if prmPhaseNumber = 0 then
    prvMsg := 'Feature still to be developed in a future phase.' +
              #13 +
              'No date has been finalised as yet.'
    else
    prvMsg := Format('Feature to be developed in phase %d.', [prmPhaseNumber]);
  MessageDlg(prvMsg, mtInformation, [mbOK], 0);

end;

class procedure TRxDispensing.DisplayActiveShortly(prmPhaseNumber : integer =
    0);
var
  prvMsg : string;
begin

  if prmPhaseNumber = 0 then
    prvMsg := 'This feature is currently being modified and will be available here soon.' +
              #13 +
              #13 +
              'If this feature was previously available else where, please check there to use it.' +
              #13 +
              #13 +
              'Work is in progress!!!.'
    else
    prvMsg := Format('Feature to be developed in phase %d.', [prmPhaseNumber]);
  MessageDlg(prvMsg, mtInformation, [mbOK], 0);

end;

end.

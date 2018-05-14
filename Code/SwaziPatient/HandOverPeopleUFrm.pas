unit HandOverPeopleUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ActnList, StdCtrls,
  DBCtrls, RzDBEdit;

type
  THandOverPeopleFrm = class(TForm)
    dxGridHandoverPeople: TdxDBGrid;
    dxGridHandoverPeopleusername_str: TdxDBGridColumn;
    dxGridHandoverPeopleFirstname_str: TdxDBGridColumn;
    dxGridHandoverPeopleLastname_str: TdxDBGridColumn;
    dxGridHandoverPeoplePosition_str: TdxDBGridColumn;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    atnSaveHandOver: TAction;
    atnCancel: TAction;
    procedure atnSaveHandOverExecute(Sender: TObject);
    procedure atnCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HandOverPeopleFrm: THandOverPeopleFrm;

implementation

uses PatientUDm;

{$R *.dfm}

procedure THandOverPeopleFrm.atnSaveHandOverExecute(Sender: TObject);
begin

 with PatientDm.qryHandOverPeople do
  begin
  if RecordCount > 0 then
   PatientDm.AddPatientHandOver(fieldByName('Position_str').Asstring, fieldByName('lastname_str').AsString+', '+fieldByName('firstname_str').AsString, fieldByName('UserID').AsString);
  end;

end;

procedure THandOverPeopleFrm.atnCancelExecute(Sender: TObject);
begin
close;
end;

end.

unit handOverNotesUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, RzDBEdit, Buttons;

type
  ThandOverNotesFrm = class(TForm)
    RzDBMemo1: TRzDBMemo;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  handOverNotesFrm: ThandOverNotesFrm;

implementation

uses PatientUDm, HandOverPeopleUFrm;

{$R *.dfm}

procedure ThandOverNotesFrm.FormShow(Sender: TObject);
begin
 handOverNotesFrm.Caption := 'Patient handover to '+PatientDm.qryPatientHandOvers.fieldByName('handOverToType_str').AsString+' notes';
end;

end.

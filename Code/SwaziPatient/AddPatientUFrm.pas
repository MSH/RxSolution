unit AddPatientUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, wwdbdatetimepicker, ExtCtrls, Mask;

type
  TAddPatientFrm = class(TForm)
    grpPatientIdentifiers: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label25: TLabel;
    Label70: TLabel;
    Label79: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit9: TDBEdit;
    dbeIDNo: TDBEdit;
    dtpDOB: TwwDBDateTimePicker;
    DBEdit17: TDBEdit;
    dbSerialNo: TDBEdit;
    dbArtNo: TDBEdit;
    dbClinicLkUp: TDBLookupComboBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    edtEntryPoint: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    grpStatus: TGroupBox;
    Label36: TLabel;
    Label42: TLabel;
    Label64: TLabel;
    Label47: TLabel;
    Label69: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    dteEnrolled: TwwDBDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    dteDiagnosis: TwwDBDateTimePicker;
    dteARTStartDate: TwwDBDateTimePicker;
    DBComboBox5: TDBComboBox;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label74: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label75: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    dbnvgClient: TDBNavigator;
    procedure dbnvgClientClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddPatientFrm: TAddPatientFrm;

implementation

uses PatientUDm;

{$R *.dfm}

procedure TAddPatientFrm.dbnvgClientClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button in [nbPost, nbCancel]) then
    Close;
end;

end.

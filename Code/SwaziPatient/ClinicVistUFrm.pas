unit ClinicVistUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TVisitFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit17: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label29: TLabel;
    DBEdit10: TDBEdit;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    DBCheckBox1: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VisitFrm: TVisitFrm;

implementation

uses PatientUDm;

{$R *.dfm}

end.

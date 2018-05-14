unit WeightPatientUfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, RzDBNav, Mask, RzEdit, RzDBEdit,
  RzButton, Buttons;

type
  TWeightPatientFrm = class(TForm)
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBNavigator1: TRzDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WeightPatientFrm: TWeightPatientFrm;

implementation

uses MainUDm, PatientUDm;

{$R *.dfm}

end.

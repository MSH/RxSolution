unit PrescriptionFRM_InterventionCapture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RzDlgBtn, StdCtrls, RzLabel, RzDBLbl, ExtCtrls, DBCtrls,
  RzDBCmbo;

type
  TfrmRXIntervention = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    RzDialogButtons1: TRzDialogButtons;
    FRM_RXItem: TDataSource;
    FRM_DRPProblem: TDataSource;
    FRM_DRPOutcome: TDataSource;
    lblDRPProblem: TLabel;
    regDRPProblem: TRzDBLookupComboBox;
    regDRPOutcome: TRzDBLookupComboBox;
    lblDRPOutcome: TLabel;
    regRegimin: TRzDBLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TIntervention = class(TObject)
  public
    class procedure Edit;
  end;

var
  frmRXIntervention: TfrmRXIntervention;

implementation

uses PrescriptionFRM;

{$R *.dfm}

class procedure TIntervention.Edit;
var
  frmRXInt: TfrmRXIntervention;
begin

  frmRXInt := TfrmRXIntervention.Create(nil);
  frmRXInt.ShowModal;
  frmRXInt.Free;
  frmRXInt:= nil;

end;

end.

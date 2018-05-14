unit PrescriptionFRM_DirectionCapture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzDlgBtn, StdCtrls, Mask, RzEdit, RzDBEdit, RzLabel, RzDBLbl,
  ExtCtrls, DB, RzButton, RzRadChk, RzDBChk;

type
  TfrmRXItemDirectionsCapture = class(TForm)
    FRM_RXItem: TDataSource;
    Panel1: TPanel;
    lblDirectionsFull: TLabel;
    lblWarning: TLabel;
    regRegimin: TRzDBLabel;
    lblDirectionsAuto: TRzDBLabel;
    regDispensingDirection: TRzDBEdit;
    regProductWarning: TRzDBEdit;
    RzDialogButtons1: TRzDialogButtons;
    Edit1: TEdit;
    Label1: TLabel;
    chkPregnant: TRzDBCheckBox;
    Label6: TLabel;
    regProductBatch: TRzDBEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TDirections = class(TObject)
  public
    class procedure Edit;
  end;

var
  frmRXItemDirectionsCapture: TfrmRXItemDirectionsCapture;

implementation

uses PrescriptionFRM;

{$R *.dfm}

procedure TfrmRXItemDirectionsCapture.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Edit1.SetFocus;

end;

class procedure TDirections.Edit;
var
  frmRXItemDir: TfrmRXItemDirectionsCapture;

begin

  frmRXItemDir := TfrmRXItemDirectionsCapture.Create(nil);
  frmRXItemDir.ShowModal;
  frmRXItemDir.Free;
  frmRXItemDir:= nil;

end;

end.

unit AddEditDrugInteractionUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzDlgBtn, StdCtrls, RzBckgnd, DB, ADODB, jpeg;

type

  TAddEditDrugInteraction = class(TObject)
  public
    class function Manage(const prmConnectionString : string ; const prmGeneric
        :string ; var prmIntGeneric : string ; var prmDescription : string ; var
        prmEvidence : string): Boolean;
  end;

  TfrmAddEditDrugInteraction = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    conClinicalDrugInformation: TADOConnection;
    qryGenericListSelection: TADOQuery;
    dsqryGenericListSelection: TDataSource;
    pnl_Image_Header: TImage;
    pnlToolbar_Header_ShapeBorder: TShape;
    Label4: TLabel;
    Memo2: TMemo;
  private
    { Private declarations }
  public
    procedure Open(const prmConnectionString : string ; const prmGenericName,
        prmGenericInt : string);
    { Public declarations }
  end;



implementation

{$R *.dfm}

class function TAddEditDrugInteraction.Manage(const prmConnectionString :
    string ; const prmGeneric :string ; var prmIntGeneric : string ; var
    prmDescription : string ; var prmEvidence : string): Boolean;
var
  frmAddEditDrugInteraction: TfrmAddEditDrugInteraction;

begin

  Result := False;
  frmAddEditDrugInteraction := TfrmAddEditDrugInteraction.Create(nil);
  with frmAddEditDrugInteraction do
    try
      try
      Open(prmConnectionString, prmGeneric, prmIntGeneric);
      Memo1.Text := prmDescription;
      Memo2.Text := prmEvidence;
      if ShowModal = mrOK then
        begin
        Result := True;
        prmIntGeneric := ComboBox1.Text;
        prmDescription := Memo1.Text;
        prmEvidence   := Memo2.Text;
        end;
      except
      end;

    finally
      Free;
    end;


end;


procedure TfrmAddEditDrugInteraction.Open(const prmConnectionString : string ;
    const prmGenericName, prmGenericInt : string);
var
  curPos: Integer;
  prvGen: string;
begin

  try

  conClinicalDrugInformation.Close;
  conClinicalDrugInformation.ConnectionString := prmConnectionString;
  qryGenericListSelection.Open;

  label2.Caption := prmGenericName;

  with qryGenericListSelection do
    while not EOF do
      begin
      prvGen := FieldByName('genericName_str').AsString;
      if prvGen <> prmGenericName then
        ComboBox1.Items.Add(FieldByName('genericName_str').AsString);
      Next;
      end;
  conClinicalDrugInformation.Close;

  curPos := ComboBox1.Items.IndexOf(prmGenericInt);

  if curPos <> -1 then ComboBox1.ItemIndex := curPos else ComboBox1.ItemIndex := 0;

  except
  end;


end;


end.

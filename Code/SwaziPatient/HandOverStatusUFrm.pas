unit HandOverStatusUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, RzButton, RzRadChk, RzDBChk,
  ActnList;

type
  THandOverStatusFrm = class(TForm)
    qryToNurse: TADOQuery;
    qryToLab: TADOQuery;
    qryToPharmacy: TADOQuery;
    qryToDoc: TADOQuery;
    dsNurse: TDataSource;
    dsLab: TDataSource;
    dsDoc: TDataSource;
    dsPharm: TDataSource;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBCheckBox4: TRzDBCheckBox;
    btnOffSite: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    atnBringOffSite: TAction;
    atnCancelClose: TAction;
    Label1: TLabel;
    RzDBCheckBox5: TRzDBCheckBox;
    qryToDataClerk: TADOQuery;
    dsClerk: TDataSource;
    procedure CheckHandovers;
    procedure FormShow(Sender: TObject);
    procedure atnBringOffSiteExecute(Sender: TObject);
    procedure atnCancelCloseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  HandOverStatusFrm: THandOverStatusFrm;
  HasBeenHandedOVer : Boolean;

implementation

uses MainUDm, PatientUDm, MainUFrm;

{$R *.dfm}

procedure THandOverStatusFrm.CheckHandovers;
var
 AdoQueries : array[0..4] of TADOQuery;
 i: integer;

begin
//Initialise patient as being handed by default
 HasBeenHandedOVer := False;
//
 AdoQueries[0] := qryToNurse;
 AdoQueries[1] := qryToLab;
 AdoQueries[2] := qryToPharmacy;
 AdoQueries[3] := qryToDoc;
 AdoQueries[4] := qryToDataClerk;

 dsNurse.DataSet        :=  AdoQueries[0];
 dsLab.DataSet          :=  AdoQueries[1];
 dsPharm.DataSet        :=  AdoQueries[2];
 dsDoc.DataSet          :=  AdoQueries[3];
 dsClerk.DataSet        :=  AdoQueries[4];

 for i:=0 to 4 do
  begin
  with AdoQueries[i] do
   begin
   Close;
   Parameters.ParamByName('person_id').Value := PatientDm.TblPatient.fieldByName('person_id').Value;
   Open;
   if FieldByName('Result').AsInteger = 1 then
    HasBeenHandedOVer := True;
   end;
  end;

end;

procedure THandOverStatusFrm.FormShow(Sender: TObject);
begin
//Load Data here; when the Form shows
 CheckHandovers;
//
 btnOffSite.Enabled := (HasBeenHandedOVer) or ((MainFrm.FViewType = 'Administrator')) ;

end;

procedure THandOverStatusFrm.atnBringOffSiteExecute(Sender: TObject);
begin

 PatientDm.SetPatientOffsite;
 HandOverStatusFrm.Close;
 MainFrm.atnViewAllActive.Execute;

end;

procedure THandOverStatusFrm.atnCancelCloseExecute(Sender: TObject);
begin

 HandOverStatusFrm.Close;

end;

end.

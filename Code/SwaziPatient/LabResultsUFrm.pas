unit LabResultsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzDlgBtn, ExtCtrls, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxCntner, ComCtrls, StdCtrls, ActnList, DBCtrls;

type
  TLabResultsFrm = class(TForm)
    dxDBGridLabs: TdxDBGrid;
    dxDBGridLabstestDate_dat: TdxDBGridDateColumn;
    dxDBGridLabstestCode_str: TdxDBGridPickColumn;
    dxDBGridLabstestName_str: TdxDBGridColumn;
    dxDBGridLabstestPostive_bol: TdxDBGridCheckColumn;
    dxDBGridLabstestResult_dbl: TdxDBGridMaskColumn;
    dxDBGridLabstestBarCode_str: TdxDBGridColumn;
    dxDBGridLabstestPlace_str: TdxDBGridColumn;
    Panel1: TPanel;
    RzDialogButtons1: TRzDialogButtons;
    Label7: TLabel;
    dteLabTest: TDateTimePicker;
    ActionList1: TActionList;
    Button1: TButton;
    atnAddLab: TAction;
    atnDeleteLab: TAction;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure atnAddLabExecute(Sender: TObject);
    procedure dteLabTestChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vLabDate: TDateTime;

  end;

var
  LabResultsFrm: TLabResultsFrm;

implementation

uses MainUDm, MainUFrm, PatientUDm, DB;

{$R *.dfm}

procedure TLabResultsFrm.FormShow(Sender: TObject);
begin
 vLabDate := Date();
 dteLabTest.Date := Date();

 with PatientDm.TblLaboratoryResults do
  begin
  if state in [dsInsert] then
   Cancel;
  end;
 //Load all system Lab Tests
 dxDBGridLabstestCode_str.Items.Clear;    //Clear and load test codes and names into grid drop down
 PatientDm.tblLabTests.First;
  while not PatientDm.tblLabTests.Eof do
   begin
   dxDBGridLabstestCode_str.Items.Add(PatientDm.tblLabTests.FieldByName('TestCode_str').AsString);
   PatientDm.tblLabTests.Next;
   end;

end;

procedure TLabResultsFrm.atnAddLabExecute(Sender: TObject);
begin
 with PatientDm.TblLaboratoryResults do
  begin
  //
  Append;
  FieldByName('testDate_dat').AsDateTime := vLabDate;
  end;

end;

procedure TLabResultsFrm.dteLabTestChange(Sender: TObject);
begin
 vLabDate := dteLabTest.DateTime;
end;

end.

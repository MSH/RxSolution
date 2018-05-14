unit PatientRxUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzDlgBtn, DB, ADODB, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner;

type
  TPatientRxFrm = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    qryPrescriptionActive: TADOQuery;
    dsqryPrescriptionActive: TDataSource;
    qryPrescriptionItemActive: TADOQuery;
    dsqryPrescriptionItemActive: TDataSource;
    grdPrescriptionActive: TdxDBGrid;
    grdPrescriptionActiveRxDate_dat: TdxDBGridDateColumn;
    grdPrescriptionActiveprescriptionNumber_Str: TdxDBGridColumn;
    grdPrescriptionActivefolderNumber_Str: TdxDBGridColumn;
    grdPrescriptionActivepatientName_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriberName_Str: TdxDBGridColumn;
    grdPrescriptionActiveprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    grdPrescriptionActiveprescriptionStatus_Str: TdxDBGridColumn;
    grdPrescriptionActiveRepeatStatus_Str: TdxDBGridColumn;
    grdPrescriptionActivePosted_bol: TdxDBGridCheckColumn;
    grdPrescriptionActivevstVisitDate_dat: TdxDBGridColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1DspProduct_Str: TdxDBGridColumn;
    dxDBGrid1DspDirections_str: TdxDBGridColumn;
    qryPrescriptionActiveRxDate_dat: TDateTimeField;
    qryPrescriptionActiveRxDateRepeat_Dat: TDateTimeField;
    qryPrescriptionActiveprescriptionNumber_Str: TWideStringField;
    qryPrescriptionActiverepeats_Int: TIntegerField;
    qryPrescriptionActiveprescriptionCost_Mon: TBCDField;
    qryPrescriptionActivepatient_ID: TGuidField;
    qryPrescriptionActiveprescription_ID: TGuidField;
    qryPrescriptionActivepatientName_Str: TWideStringField;
    qryPrescriptionActiveprescriber_ID: TGuidField;
    qryPrescriptionActiveprescriberName_Str: TWideStringField;
    qryPrescriptionActiveprescriberRXLevel_Str: TWideStringField;
    qryPrescriptionActiveprescriptionStatus_Str: TWideStringField;
    qryPrescriptionActiveprescriptionActive_bol: TBooleanField;
    qryPrescriptionActivedispensingPosted_bol: TBooleanField;
    qryPrescriptionActivefolderNumber_Str: TWideStringField;
    qryPrescriptionActivedispenserName_Str: TWideStringField;
    qryPrescriptionActivedispenserRxLevel_Str: TWideStringField;
    qryPrescriptionActiveRepeatStatus_Str: TWideStringField;
    qryPrescriptionActivepersonpregnant_bol: TBooleanField;
    qryPrescriptionActivevstTreamentPrescribed_bol: TBooleanField;
    qryPrescriptionActivevstVisitDate_dat: TDateTimeField;
    function PatientRxSelect: String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PatientRxFrm: TPatientRxFrm;

implementation

uses rxDispensing_Dm_Patient;

{$R *.dfm}

function TPatientRxFrm.PatientRxSelect: String;
begin
 qryPrescriptionActive.Open;
 qryPrescriptionItemActive.Open;

 if PatientRxFrm.ShowModal = mrOK then
  Result := qryPrescriptionActive.fieldByname('Prescription_ID').AsString;

 qryPrescriptionActive.Close;

end;

end.

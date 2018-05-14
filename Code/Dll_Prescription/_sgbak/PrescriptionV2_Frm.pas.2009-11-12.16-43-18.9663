unit PrescriptionV2_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComObj, ComCtrls,
  ExtCtrls, Grids, DBGrids, ActnList, Menus, StdActns, dxExEdtr, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, RzCommon;

type
  TForm1 = class(TForm)
    conRX: TADOConnection;
    dsqryRX: TDataSource;
    qryRX: TADOQuery;
    stbMain: TStatusBar;
    ActionList1: TActionList;
    actRX_Add: TAction;
    actRX_Edit: TAction;
    actRX_Delete: TAction;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    actApp_Exit: TFileExit;
    qryPatient: TADOQuery;
    dsqryPatient: TDataSource;
    dxgPatients: TdxDBGrid;
    dxgPatientspersonDescription_str: TdxDBGridColumn;
    dxgPatientspersonRefNoCurrent_str: TdxDBGridColumn;
    dxgPatientspersonInstitution_str: TdxDBGridColumn;
    dxgRX: TdxDBGrid;
    dxgRXprescriptionNumber_Str: TdxDBGridColumn;
    dxgRXdate_Dat: TdxDBGridDateColumn;
    dxgRXprescriberName_Str: TdxDBGridColumn;
    dxgRXrepeats_Int: TdxDBGridMaskColumn;
    dxgRXrepeatNo_Int: TdxDBGridMaskColumn;
    dxgRXprescriptionCost_Mon: TdxDBGridCurrencyColumn;
    dxgRXprescriptionItemsCount_Int: TdxDBGridMaskColumn;
    dxgRXprescriptionStatus_Str: TdxDBGridColumn;
    dxgRXDemanderName_Str: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    Add2: TMenuItem;
    Edit2: TMenuItem;
    Delete2: TMenuItem;
    qryPatientperson_ID: TGuidField;
    qryPatientpersonIDNumber_Str: TWideStringField;
    qryPatientpersonLastName_Str: TWideStringField;
    qryPatientpersonFirstName_Str: TWideStringField;
    qryPatientpersonKnownName_Str: TWideStringField;
    qryPatientpersonInitials_Str: TWideStringField;
    qryPatientpersonDOB_Dat: TDateTimeField;
    qryPatientpersonGender_Str: TWideStringField;
    qryPatientpersonReviewed_Dat: TDateTimeField;
    qryPatientpersonActive_Bol: TBooleanField;
    qryPatientpersonRace_Str: TWideStringField;
    qryPatientpersonLanguageNarrative_Str: TWideStringField;
    qryPatientpersonLanguageWritten_Str: TWideStringField;
    qryPatientpersonAgeYears_int: TIntegerField;
    qryPatientpersonAgeMonths_int: TIntegerField;
    qryPatientpersonDescription_str: TWideStringField;
    qryPatientpersonRefNoCurrent_str: TWideStringField;
    qryPatientpersonTelNoCurrent_str: TWideStringField;
    qryPatientpersonCelNoCurrent_str: TWideStringField;
    qryPatientpersonAddressCurrent_str: TWideStringField;
    qryPatientpersonRegistrationNo_str: TWideStringField;
    qryPatientpersonInstitution_str: TWideStringField;
    qryPatientpersonPatient_bol: TBooleanField;
    qryPatientpersonPrescriber_bol: TBooleanField;
    qryPatientpersonDispenser_bol: TBooleanField;
    qryPatientpersonOther_bol: TBooleanField;
    qryPatientsysLastEdited_dat: TDateTimeField;
    qryPatientsysLastEditedBy_ID: TGuidField;
    qryPatientsysLastEditedBy_str: TWideStringField;
    qryPatientsysDeleted_bol: TBooleanField;
    qryPatientpersonDateDeceased_dat: TDateTimeField;
    qryPatientpersonStatus_Str: TWideStringField;
    qryPatientpersonStatusChangeDate_dat: TDateTimeField;
    qryPatientpersonPead_bol: TBooleanField;
    qryPatientpersonDateJoined_dat: TDateTimeField;
    qryPatientpersonStatusDesc_str: TWideStringField;
    qryPatientpersonPAS_str: TWideStringField;
    qryPatientpersonInstitution_ID: TGuidField;
    qryPatientpersonNaive_Bol: TBooleanField;
    qryPatientpersonNaiveDate_Dat: TDateTimeField;
    qryPatientpersonTransferredOutTo_str: TWideStringField;
    qryPatientpersonTransferredOut_bol: TBooleanField;
    qryPatientpersonClintech_ID: TIntegerField;
    qryPatientpersonTransferredInDate_dat: TDateTimeField;
    qryPatientpersonDefaulted_dat: TDateTimeField;
    qryPatientpersonMaritalStatus_str: TWideStringField;
    qryPatientpersonDeceased_bol: TBooleanField;
    qryPatientpersonTransferredOutDate_dat: TDateTimeField;
    qryPatientpersonTransferredInFrom_str: TWideStringField;
    qryPatientpersonRegisteredInSys_bol: TBooleanField;
    qryPatientpersonTransferredIn_bol: TBooleanField;
    qryPatientpersonPAAB_ID: TWideStringField;
    qryPatientpersonRegisteredInSys_dat: TDateTimeField;
    qryPatientpersonDefaulted_bol: TBooleanField;
    qryRXprescription_ID_Original: TGuidField;
    qryRXrepeatDate_dat: TDateTimeField;
    qryRXcompleted_bol: TBooleanField;
    qryRXdownRefferal_Str: TWideStringField;
    qryRXissuedOrCollected_Bol: TBooleanField;
    qryRXdispensed_Bol: TBooleanField;
    qryRXisReferred_bol: TBooleanField;
    qryRXactive_bol: TBooleanField;
    qryRXclinic_ID: TGuidField;
    qryRXprescription_ID: TGuidField;
    qryRXprescriptionLastEdited_dat: TDateTimeField;
    qryRXprescriptionLastEdited_ID: TGuidField;
    qryRXprescriptionLastEdited_Str: TWideStringField;
    qryRXprescriptionNumber_Str: TWideStringField;
    qryRXdate_Dat: TDateTimeField;
    qryRXpatient_ID: TGuidField;
    qryRXpatientName_Str: TWideStringField;
    qryRXfolderNumber_Str: TWideStringField;
    qryRXadmissionNo_Str: TWideStringField;
    qryRXprescriber_ID: TGuidField;
    qryRXprescriberName_Str: TWideStringField;
    qryRXprescriberRXLevel_Str: TWideStringField;
    qryRXprescriberAlert_mem: TMemoField;
    qryRXprescribedAuthorisedBy_Str: TWideStringField;
    qryRXdispenser_ID: TGuidField;
    qryRXdispenserName_Str: TWideStringField;
    qryRXdispenserRxLevel_Str: TWideStringField;
    qryRXdispensedAuthorisedBy_Str: TWideStringField;
    qryRXrepeats_Int: TIntegerField;
    qryRXrepeatNo_Int: TIntegerField;
    qryRXprescriptionCost_Mon: TBCDField;
    qryRXprescriptionItemsCount_Int: TIntegerField;
    qryRXclinic_str: TWideStringField;
    qryRXprescriptionActive_bol: TBooleanField;
    qryRXprescriptionStatus_Str: TWideStringField;
    qryRXprescriptionStatus_ID: TGuidField;
    qryRXdownRefRouteSchedule_ID: TGuidField;
    qryRXbatchIsBatched_bol: TBooleanField;
    qryRXprescriptionAuthorised_bol: TBooleanField;
    qryRXdispensingAuthorised_bol: TBooleanField;
    qryRXdispensingCollected_bol: TBooleanField;
    qryRXdispensingPicked_bol: TBooleanField;
    qryRXbatchIsCollated_bol: TBooleanField;
    qryRXbatchIsShipped_bol: TBooleanField;
    qryRXprotocolID: TGuidField;
    qryRXdispensingPosted_bol: TBooleanField;
    qryRXnaive_bol: TBooleanField;
    qryRXDemanderUnique_ID: TGuidField;
    qryRXDemanderName_Str: TWideStringField;
    iniDatabase: TRzRegIniFile;
    dxgRXColumn10: TdxDBGridCheckColumn;
    actRX_Copy: TAction;
    CopySelected1: TMenuItem;
    CopySelected2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actRX_AddExecute(Sender: TObject);
    procedure actRX_CopyExecute(Sender: TObject);
    procedure actRX_EditExecute(Sender: TObject);
    procedure actRX_DeleteExecute(Sender: TObject);
  private
  public
    procedure Delete;
    procedure Edit;
    procedure Add;
    procedure CopyRX;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses PrescriptionDM, PrescriptionFRM, StdRegimenUNT;


{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  conRX.ConnectionString := 'FILE NAME=Test.udl';
  qryPatient.Open;
  qryRX.Open;

  dmRX := TdmRX.Create(nil);
  frmRx := TfrmRX.Create(nil);
  dmRX.DatabaseConString := conRX.ConnectionString;

//  iniDatabase.WriteString('Database','Server','lion\sqlexpress');

end;

procedure TForm1.Edit;
var
 _id : string;
begin

  try

  if not qryRX.Active then raise Exception.Create('qryRX not active.');
  if qryRX.RecordCount < 1 then raise Exception.Create('qryRX has no records to edit.');

  stbMain.SimpleText := 'Editing...';
  _id := qryRX.FieldByName('prescription_id').AsString;

  dmRX.SaveAll;
  dmRX.Edit(_id);
  frmRx.ShowModal;
  dmRX.SaveAll;

  stbMain.SimpleText := 'Finished editing.';

  except
    on E:Exception do ShowMessage(E.Message);
  end;

end;

procedure TForm1.Delete;
var
 _id : string;
begin

  try

  if not qryRX.Active then raise Exception.Create('qryRX not active.');
  if qryRX.RecordCount < 1 then raise Exception.Create('qryRX has no records to delete.');

  stbMain.SimpleText := 'Deleting...';
  _id := qryRX.FieldByName('prescription_id').AsString;
  dmRX.Delete(_id);
  qryRX.Close;
  qryRX.Open;

  stbMain.SimpleText := 'Finished deleting.';

  except
    on E:Exception do ShowMessage(E.Message);
  end;

end;

procedure TForm1.Add;
var
 _id : string;
begin

  try

  if not qryPatient.Active then raise Exception.Create('qryPatient not active.');
  if qryPatient.RecordCount < 1 then raise Exception.Create('qryPatient has no records to edit.');

  stbMain.SimpleText := 'Adding...';
  _id := qryPatient.FieldByName('person_id').AsString;
  dmRX.Add(_id);
  frmRx.ShowModal;
  dmRX.SaveAll;
  stbMain.SimpleText := 'Finished adding.';

  except
    on E:Exception do ShowMessage(E.Message);
  end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  dmRX.Free;
  frmRx.Free;
end;

procedure TForm1.actRX_AddExecute(Sender: TObject);
begin
  Add;
end;

procedure TForm1.actRX_CopyExecute(Sender: TObject);
begin
  CopyRX;
end;

procedure TForm1.actRX_EditExecute(Sender: TObject);
begin
  Edit;
end;

procedure TForm1.actRX_DeleteExecute(Sender: TObject);
begin
  Delete;
end;

procedure TForm1.CopyRX;
var
 _id : string;
begin

  try

  if not qryRX.Active then raise Exception.Create('qryRX not active.');
  if qryRX.RecordCount < 1 then raise Exception.Create('qryRX has no records to edit.');

  stbMain.SimpleText := 'Copying...';
  _id := qryRX.FieldByName('prescription_id').AsString;

  dmRX.SaveAll;
  dmRX.CopyRx(_id);
  dmRX.SaveAll;

  stbMain.SimpleText := 'Finished copying.';

  except
    on E:Exception do ShowMessage(E.Message);
  end;
end;

end.

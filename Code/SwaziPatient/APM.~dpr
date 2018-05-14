program APM;

uses
  ExceptionLog,
  Forms,
  MainUFrm in 'MainUFrm.pas' {MainFrm},
  PatientUDm in 'PatientUDm.pas' {PatientDm: TDataModule},
  MainUDm in 'MainUDm.pas' {MainDm: TDataModule},
  ClinicVisitUFrm in 'ClinicVisitUFrm.pas' {ClinicVisitFrm},
  UserLogonfrm in 'utilities\UserLogonfrm.pas' {frmLogon},
  RxSolutionSecurityEncryption in 'utilities\RxSolutionSecurityEncryption.pas',
  TabEnter in 'utilities\TabEnter.pas',
  frmSettingsUfrm in 'frmSettingsUfrm.pas' {SettingsFrm},
  DialogGridColumnSelectorUFrm in 'utilities\DialogGridColumnSelectorUFrm.pas' {Dialog_GridColumnSelection},
  WeightPatientUfrm in 'WeightPatientUfrm.pas' {WeightPatientFrm},
  HandOverStatusUFrm in 'HandOverStatusUFrm.pas' {HandOverStatusFrm},
  OnsiteListUFrm in 'OnsiteListUFrm.pas' {OnSiteFrm},
  handOverNotesUFrm in 'handOverNotesUFrm.pas' {handOverNotesFrm},
  HandOverPeopleUFrm in 'HandOverPeopleUFrm.pas' {HandOverPeopleFrm},
  AddPatientUFrm in 'AddPatientUFrm.pas' {AddPatientFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainDm, MainDm);
  Application.CreateForm(TPatientDm, PatientDm);
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TClinicVisitFrm, ClinicVisitFrm);
  Application.CreateForm(TfrmLogon, frmLogon);
  Application.CreateForm(TSettingsFrm, SettingsFrm);
  Application.CreateForm(TWeightPatientFrm, WeightPatientFrm);
  Application.CreateForm(THandOverStatusFrm, HandOverStatusFrm);
  Application.CreateForm(TOnSiteFrm, OnSiteFrm);
  Application.CreateForm(ThandOverNotesFrm, handOverNotesFrm);
  Application.CreateForm(THandOverPeopleFrm, HandOverPeopleFrm);
  Application.CreateForm(TAddPatientFrm, AddPatientFrm);
  Application.Run;
end.

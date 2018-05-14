program APM;

uses
  ExceptionLog,
  Forms,
  MainUFrm in 'Code\SwaziPatient\MainUFrm.pas' {MainFrm},
  PatientUDm in 'Code\SwaziPatient\PatientUDm.pas' {PatientDm: TDataModule},
  MainUDm in 'Code\SwaziPatient\MainUDm.pas' {MainDm: TDataModule},
  ClinicVisitUFrm in 'Code\SwaziPatient\ClinicVisitUFrm.pas' {ClinicVisitFrm},
  UserLogonfrm in 'Code\SwaziPatient\utilities\UserLogonfrm.pas' {frmLogon},
  TabEnter in 'Code\SwaziPatient\utilities\TabEnter.pas',
  frmSettingsUfrm in 'Code\SwaziPatient\frmSettingsUfrm.pas' {SettingsFrm},
  DialogGridColumnSelectorUFrm in 'Code\SwaziPatient\utilities\DialogGridColumnSelectorUFrm.pas' {Dialog_GridColumnSelection},
  WeightPatientUfrm in 'Code\SwaziPatient\WeightPatientUfrm.pas' {WeightPatientFrm},
  HandOverStatusUFrm in 'Code\SwaziPatient\HandOverStatusUFrm.pas' {HandOverStatusFrm},
  OnsiteListUFrm in 'Code\SwaziPatient\OnsiteListUFrm.pas' {OnSiteFrm},
  handOverNotesUFrm in 'Code\SwaziPatient\handOverNotesUFrm.pas' {handOverNotesFrm},
  HandOverPeopleUFrm in 'Code\SwaziPatient\HandOverPeopleUFrm.pas' {HandOverPeopleFrm},
  AddPatientUFrm in 'Code\SwaziPatient\AddPatientUFrm.pas' {AddPatientFrm},
  DLLInterface in 'Code\RxCommon\Interface\DLLInterface.pas',
  SystemConstants in 'Code\RxDispensing\General\SystemConstants.pas',
  Class_Database_Connections in 'Code\RxCommon\Classes\Class_Database_Connections.pas',
  Class_Database_Connections_FrmConnect in 'Code\RxCommon\Classes\Class_Database_Connections_FrmConnect.pas' {frmConnections},
  Class_Registry_ReadWrite in 'Code\RxCommon\Classes\Class_Registry_ReadWrite.pas',
  Class_Security_HashCodes in 'Code\RxCommon\Classes\Class_Security_HashCodes.pas',
  Class_System_General in 'Code\RxCommon\Classes\Class_System_General.pas',
  MyApplicationUtilities in 'Code\RxStore\General\MyApplicationUtilities.pas',
  dmpDataObjectBaseModule in 'Code\RxCommon\Classes\dmpDataObjectBaseModule.pas',
  Prescription_TLB in 'Code\Imports\Prescription_TLB.pas',
  LabResultsUFrm in 'Code\SwaziPatient\LabResultsUFrm.pas' {LabResultsFrm},
  CopyUserRightsUFrm in 'Code\RxCommon\Security\CopyUserRightsUFrm.pas' {CopyUserOtherRightsFrm},
  RxSolutionSecurityClass in 'Code\RxCommon\Security\RxSolutionSecurityClass.pas',
  RxSolutionSecurityEncryption in 'Code\SwaziPatient\utilities\RxSolutionSecurityEncryption.pas',
  RxSolutionSecurityAdministratorUFrm in 'Code\RxCommon\Security\RxSolutionSecurityAdministratorUFrm.pas' {Security_AdministratorFrm},
  RxSolutionSecurityChangePasswordUFrm in 'Code\RxCommon\Security\RxSolutionSecurityChangePasswordUFrm.pas' {Security_ChangePasswordFrm},
  RxSolutionSecurityLogOnUFrm in 'Code\RxCommon\Security\RxSolutionSecurityLogOnUFrm.pas' {Security_LogOnFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'APM';
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
  Application.CreateForm(TLabResultsFrm, LabResultsFrm);
  Application.CreateForm(TCopyUserOtherRightsFrm, CopyUserOtherRightsFrm);
  Application.Run;
end.

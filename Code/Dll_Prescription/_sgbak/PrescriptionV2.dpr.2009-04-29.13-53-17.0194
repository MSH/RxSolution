program PrescriptionV2;

uses
  ExceptionLog,
  Forms,
  PrescriptionV2_Frm in 'PrescriptionV2_Frm.pas' {Form1},
  PrescriptionClasses in 'PrescriptionClasses.pas',
  PrescriptionDM in 'PrescriptionDM.pas' {dmRX: TDataModule},
  PrescriptionFRM in 'PrescriptionFRM.pas' {frmRX},
  PrescriptionFRM_DirectionCapture in 'PrescriptionFRM_DirectionCapture.pas' {frmRXItemDirectionsCapture},
  PrescriptionFRM_InterventionCapture in 'PrescriptionFRM_InterventionCapture.pas' {frmRXIntervention},
  PrescriptionUtilities in 'PrescriptionUtilities.pas',
  StdRegimen_ProtocolFRM in '..\Dll_StandardRegimen\StdRegimen_ProtocolFRM.pas' {frmProtocol},
  StdRegimen_StdDoseFRM in '..\Dll_StandardRegimen\StdRegimen_StdDoseFRM.pas' {frmStdDose},
  StdRegimenDM in '..\Dll_StandardRegimen\StdRegimenDM.pas' {dmStdReg: TDataModule},
  StdRegimenUNT in '..\Dll_StandardRegimen\StdRegimenUNT.pas',
  StdRegimen_ProtocolDetailFRM in '..\Dll_StandardRegimen\StdRegimen_ProtocolDetailFRM.pas' {frmProtocolDetail},
  StdRegimen_StdDoseDetailFRM in '..\Dll_StandardRegimen\StdRegimen_StdDoseDetailFRM.pas' {frmStdDoseDetail},
  PrescriptionFRM_Posting in 'PrescriptionFRM_Posting.pas' {frmRXPosting},
  rxDispensing_Dm_Patient in '..\RxDispensing\Patient\rxDispensing_Dm_Patient.pas' {dmPatient: TDataModule},
  rxDispensing_Frm_Patient in '..\RxDispensing\Patient\rxDispensing_Frm_Patient.pas' {frmPatientDetail_},
  Person_ in '..\RxCommon\General\Person_.pas',
  SystemConstants in '..\RxDispensing\General\SystemConstants.pas',
  RxSolutionSecurityLogOnUFrm in '..\RxCommon\Security\RxSolutionSecurityLogOnUFrm.pas' {Security_LogOnFrm},
  RxSolutionSecurityAdministratorUFrm in '..\RxCommon\Security\RxSolutionSecurityAdministratorUFrm.pas' {Security_AdministratorFrm},
  RxSolutionSecurityChangePasswordUFrm in '..\RxCommon\Security\RxSolutionSecurityChangePasswordUFrm.pas' {Security_ChangePasswordFrm},
  RxSolutionSecurityClass in '..\RxCommon\Security\RxSolutionSecurityClass.pas',
  RxSolutionSecurityEncryption in '..\RxCommon\Security\RxSolutionSecurityEncryption.pas',
  dmpDataObjectBaseModule in '..\RxCommon\Classes\dmpDataObjectBaseModule.pas',
  SystemGeneralMethods in '..\RxDispensing\General\SystemGeneralMethods.pas',
  RxSolutionSecurityCopyUserRights in '..\RxCommon\Security\RxSolutionSecurityCopyUserRights.pas' {CopyUserRightsfrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

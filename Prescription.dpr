library Prescription;

uses
  ExceptionLog,
  ComServ,
  SysUtils,
  Forms,
  Prescription_TLB in 'Prescription_TLB.pas',
  PrescriptionINTF in 'Code\Dll_Prescription\PrescriptionINTF.pas' {RX: CoClass},
  PrescriptionDM in 'Code\Dll_Prescription\PrescriptionDM.pas' {dmRX: TDataModule},
  PrescriptionFRM in 'Code\Dll_Prescription\PrescriptionFRM.pas' {frmRX},
  PrescriptionUtilities in 'Code\Dll_Prescription\PrescriptionUtilities.pas',
  PrescriptionFRM_DirectionCapture in 'Code\Dll_Prescription\PrescriptionFRM_DirectionCapture.pas' {frmRXItemDirectionsCapture},
  PrescriptionFRM_InterventionCapture in 'Code\Dll_Prescription\PrescriptionFRM_InterventionCapture.pas' {frmRXIntervention},
  PrescriptionClasses in 'Code\Dll_Prescription\PrescriptionClasses.pas',
  StdRegimenUNT in 'Code\Dll_StandardRegimen\StdRegimenUNT.pas',
  StdRegimen_ProtocolDetailFRM in 'Code\Dll_StandardRegimen\StdRegimen_ProtocolDetailFRM.pas' {frmProtocolDetail},
  StdRegimen_ProtocolFRM in 'Code\Dll_StandardRegimen\StdRegimen_ProtocolFRM.pas' {frmProtocol},
  StdRegimen_StdDoseDetailFRM in 'Code\Dll_StandardRegimen\StdRegimen_StdDoseDetailFRM.pas' {frmStdDoseDetail},
  StdRegimen_StdDoseFRM in 'Code\Dll_StandardRegimen\StdRegimen_StdDoseFRM.pas' {frmStdDose},
  StdRegimenDM in 'Code\Dll_StandardRegimen\StdRegimenDM.pas' {dmStdReg: TDataModule},
  PrescriptionFRM_Posting in 'Code\Dll_Prescription\PrescriptionFRM_Posting.pas' {frmRXPosting},
  Person_ in 'Code\RxCommon\General\Person_.pas',
  SystemConstants in 'Code\RxDispensing\General\SystemConstants.pas',
  SystemGeneralMethods in 'Code\RxDispensing\General\SystemGeneralMethods.pas',
  DialogGridColumnSelectorUFrm in 'Code\Dll_Prescription\Common\DialogGridColumnSelectorUFrm.pas' {Dialog_GridColumnSelection},
  PrescriptionFrm_Reason in 'Code\Dll_Prescription\PrescriptionFrm_Reason.pas' {frmRxReason},
  PrescriptionAllergiesUFrm in 'Code\Dll_Prescription\PrescriptionAllergiesUFrm.pas' {PatientAllergiesFrm},
  TabEnter in 'Code\Dll_Prescription\Common\TabEnter.pas',
  PrescriptionFRM_PasswordPin in 'Code\Dll_Prescription\PrescriptionFRM_PasswordPin.pas' {frmRXPasswordPin},
  StdProtocol_EditHistoryFRM in 'Code\Dll_StandardRegimen\StdProtocol_EditHistoryFRM.pas' {RX_ProtocolEditHistoryFrm},
  frmPatientActiveReasonUFrm in 'Code\Dll_Prescription\frmPatientActiveReasonUFrm.pas' {frmPatientActiveReasonFrm};

{$R Prescription.KLR}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
  {LocalizerOnFly.DLLDir:= ExtractFilePath(Application.ExeName) +'DLL';
  LocalizerOnFly.InitReg('Software\Korzh\PrescriptionDLL', '');  }
end.

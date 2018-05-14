library Security;

uses
  ComServ,
  SecurityINTF in 'SecurityINTF.pas' {User: CoClass},
  RxSolutionSecurityAdministratorUFrm in '..\RxCommon\Security\RxSolutionSecurityAdministratorUFrm.pas' {Security_AdministratorFrm},
  RxSolutionSecurityChangePasswordUFrm in '..\RxCommon\Security\RxSolutionSecurityChangePasswordUFrm.pas' {Security_ChangePasswordFrm},
  RxSolutionSecurityClass in '..\RxCommon\Security\RxSolutionSecurityClass.pas',
  RxSolutionSecurityEncryption in '..\RxCommon\Security\RxSolutionSecurityEncryption.pas',
  RxSolutionSecurityLogOnUFrm in '..\RxCommon\Security\RxSolutionSecurityLogOnUFrm.pas' {Security_LogOnFrm},
  dmpDataObjectBaseModule in '..\RxCommon\Classes\dmpDataObjectBaseModule.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.

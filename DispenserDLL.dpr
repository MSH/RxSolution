library DispenserDLL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  ShareMem, LocOnFly, LocUtils,
  ExceptionLog,
  SysUtils, Forms,
  Classes,
  SystemConstants in 'Code\RxDispensing\General\SystemConstants.pas',
  SystemGeneralMethods in 'Code\RxDispensing\General\SystemGeneralMethods.pas',
  rxDispensing_Unt_Dispenser in 'Code\Dll_Dispenser\rxDispensing_Unt_Dispenser.pas',
  rxDispensing_Dm_Dispenser in 'Code\Dll_Dispenser\rxDispensing_Dm_Dispenser.pas' {dmPerson: TDataModule},
  rxDispensing_Frm_Dispenser in 'Code\Dll_Dispenser\rxDispensing_Frm_Dispenser.pas' {frmPersonDetail_},
  Person_ in 'Code\RxCommon\General\Person_.pas';

{$R DispenserDLL.KLR}

{$R *.res}

exports
  Edit_Dispenser,
  Add_Dispenser,
  Delete_Dispenser,
  SwitchToFile,
  BackToModuleRes;
begin
 try
 
 LocalizerOnFly.DLLDir:= ExtractFilePath(Application.ExeName) +'DLL';
 LocalizerOnFly.InitReg('Software\Korzh\Dispenser', '');

 except
 end;

end.

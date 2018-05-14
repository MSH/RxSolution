library PrescriberDLL;

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
  rxDispensing_Unt_Prescriber in 'Code\Dll_Prescriber\rxDispensing_Unt_Prescriber.pas',
  rxDispensing_Frm_Prescriber in 'Code\Dll_Prescriber\rxDispensing_Frm_Prescriber.pas' {frmPersonDetail_},
  Person_ in 'Code\RxCommon\General\Person_.pas',
  rxDispensing_Dm_Prescriber in 'Code\Dll_Prescriber\rxDispensing_Dm_Prescriber.pas' {dmPerson: TDataModule};

{$R PrescriberDLL.KLR}

exports
  Edit_Prescriber,
  Add_Prescriber,
  Delete_Prescriber,
  SwitchToFile,
  BackToModuleRes{};
  
{$R *.res}

begin

 LocalizerOnFly.DLLDir:= ExtractFilePath(Application.ExeName) +'DLL';
 LocalizerOnFly.InitReg('Software\Korzh\Prescriber', '');
  
end.

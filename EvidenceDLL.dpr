library EvidenceDLL;

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
  Sharemem,
  ExceptionLog,
  SysUtils,
  Classes,
  rxDispensing_Unt_Evidence in 'Code\Dll_Evidence\rxDispensing_Unt_Evidence.pas',
  rxDispensing_Frm_Evidence in 'Code\Dll_Evidence\rxDispensing_Frm_Evidence.pas' {frmEvidence},
  rxDispensing_Frm_Reference in 'Code\Dll_Evidence\rxDispensing_Frm_Reference.pas' {frmReference};

{$R *.res}

begin
end.
 
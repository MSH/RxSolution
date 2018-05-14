library PrintDLL;

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
  ShareMem, LocOnFly,
  ExceptionLog,
  SysUtils,
  Classes,
  rxDispensing_Dm_Print in 'Code\Dll_Print\rxDispensing_Dm_Print.pas' {dmPrint: TDataModule},
  rxDispensing_Unt_Print in 'Code\Dll_Print\rxDispensing_Unt_Print.pas';

{$R PrintDLL.KLR}

exports
  Print_Dosing_StandardListOf,
  Print_Rx_Prescription,
  Print_Patient_ListOf,
  Print_Batch_01,
  Print_Batch_02,
  Print_Batch_03,
  Print_Batch_05,
  Print_Batch_06,
  Print_Batch_07,
  Print_Batch_08,
  Print_Batch_09,
  Print_Batch_10,
  //mc - 20/08/2012
  Print_Batch_11,
  Print_Batch_12,
  Print_Batch_13,
  Print_Batch_14,
  EditBatchLabels;

{$R *.res}

begin
end.

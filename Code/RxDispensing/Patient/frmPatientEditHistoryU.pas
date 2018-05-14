unit frmPatientEditHistoryU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBmpBtn, StdCtrls, ElPopBtn, ExtCtrls, RzPanel, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, RzDlgBtn;

type
  TfrmPatientEditHistory = class(TForm)
    dxDBEditHistory: TdxDBGrid;
    dxDBEditHistoryDescription_str: TdxDBGridColumn;
    dxDBEditHistoryclinic_str: TdxDBGridColumn;
    dxDBEditHistoryOldPtno_str: TdxDBGridColumn;
    dxDBEditHistoryclass_str: TdxDBGridColumn;
    dxDBEditHistoryactive_bol: TdxDBGridCheckColumn;
    dxDBEditHistorytemporary_bol: TdxDBGridCheckColumn;
    dxDBEditHistoryusername_str: TdxDBGridColumn;
    dxDBEditHistorychangeDate_dat: TdxDBGridDateColumn;
    dxDBEditHistorytype_str: TdxDBGridColumn;
    dxDBEditHistoryReason_str: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmPatientEditHistory: TfrmPatientEditHistory;

implementation

uses rxDispensing_Dm_Patient;

{$R *.dfm}


end.

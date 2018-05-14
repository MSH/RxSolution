unit BinLocationUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzDlgBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  dxExEdtr;

type
  TBinLocationSelectFrm = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dxgBinLocations: TdxDBGrid;
    dxgBinLocationsCode_str: TdxDBGridColumn;
    dxgBinLocationsDescription_str: TdxDBGridColumn;
    function BinLocationSelect: String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BinLocationSelectFrm: TBinLocationSelectFrm;

implementation

uses StockTakeUDM;

{$R *.dfm}

function TBinLocationSelectFrm.BinLocationSelect: string;
begin

 if BinLocationSelectFrm.ShowModal = mrOk then
  Result := StockTakeDM.tblBinLocations.fieldByName('Code_str').AsString
 else Result := '-----';
 

end;

end.

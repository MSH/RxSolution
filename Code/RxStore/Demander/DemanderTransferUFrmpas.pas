unit DemanderTransferUFrmpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel,
  LMDSimpleLabel, ExtCtrls, dxExEdtr, dxDBCtrl, dxDBGrid, dxTL, dxCntner;

type
  TDemanderTransferFrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    dxDBAuthorisedItems: TdxDBGrid;
    dxDBAuthorisedItemsProductCode_str: TdxDBGridColumn;
    dxDBAuthorisedItemsDescription: TdxDBGridColumn;
    dxDBAuthorisedItemsProcurementPeriod_int: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsLeadTime_int: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsMaxStockSet_int: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsAvgConsumption_dbl: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsQtyOnHand_int: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsQtyOnHandUnits_dbl: TdxDBGridMaskColumn;
    dxDBAuthorisedItemsColumn9: TdxDBGridColumn;
    dxDBAuthorisedItemsColumn10: TdxDBGridColumn;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemanderTransferFrm: TDemanderTransferFrm;

implementation

{$R *.dfm}

end.

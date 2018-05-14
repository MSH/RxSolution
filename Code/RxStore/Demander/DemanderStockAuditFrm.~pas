unit DemanderStockAuditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ExtCtrls, RzDlgBtn, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, dxCntner, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, StdCtrls, RzLabel,
  RzDBLbl, ppVar, ComCtrls, ppParameter, DB, ADODB;

type
  TDemanderStockAuditForm = class(TForm)
    dxgStockAudit: TdxDBGrid;
    dxgStockAuditDate_dat: TdxDBGridDateColumn;
    dxgStockAuditReference_str: TdxDBGridColumn;
    dxgStockAuditQuantity_int: TdxDBGridMaskColumn;
    dxgStockAuditValue_mon: TdxDBGridCurrencyColumn;
    dxgStockAuditQuantityOnHand_int: TdxDBGridMaskColumn;
    dxgStockAuditUnitsOnHand_dbl: TdxDBGridMaskColumn;
    dxgStockAuditPackSize_dbl: TdxDBGridMaskColumn;
    dxgStockAuditQtyUnit_dbl: TdxDBGridMaskColumn;
    dxgStockAuditType_str: TdxDBGridMaskColumn;
    RzDialogButtons1: TRzDialogButtons;
    GroupBox1: TGroupBox;
    Print: TButton;
    ppDBStockAudit: TppDBPipeline;
    ppStockAudit: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    RzDBLabel1: TRzDBLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    Label2: TLabel;
    dteStart: TDateTimePicker;
    Label24: TLabel;
    dteEnd: TDateTimePicker;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    adoStockAudit: TADOQuery;
    dsadoStockAudit: TDataSource;
    procedure PrintClick(Sender: TObject);
    procedure dteStartCloseUp(Sender: TObject);
    procedure dteEndCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    vDemanderID : integer;
    vProductCodeID : integer;

  public
    { Public declarations }
  end;

  TAudit = class(TObject)
  public
    class procedure ShowAuditTrail(DemanderID: integer; ProductCode_ID: integer);
  end;


implementation

uses DemanderListForSelectionUFrm, DemanderUDM;

{$R *.dfm}

class procedure TAudit.ShowAuditTrail(DemanderID: integer; ProductCode_ID: integer);
var
  DemanderStockAuditForm: TDemanderStockAuditForm;
begin
  DemanderStockAuditForm := TDemanderStockAuditForm.Create(Application);
  with DemanderStockAuditForm do
    begin
    adoStockAudit.Close;
    adoStockAudit.Parameters.ParamByName('Demander_ID').Value           := DemanderID;
    adoStockAudit.Parameters.ParamByName('ProductCode_ID').Value        := ProductCode_ID;
    adoStockAudit.Parameters.ParamByName('startDate').Value             := dteStart.Date;
    adoStockAudit.Parameters.ParamByName('endDate').Value               := dteEnd.Date;
    adoStockAudit.Open;

    vDemanderID := DemanderID;
    vProductCodeID := ProductCode_ID;
    ShowModal;
    Free;
    end;

end;

procedure TDemanderStockAuditForm.PrintClick(Sender: TObject);
begin
 ppStockAudit.Print;
end;


procedure TDemanderStockAuditForm.dteStartCloseUp(Sender: TObject);
begin  
 with adoStockAudit do
  begin
  Close;
  Parameters.ParamByName('Demander_ID').Value           := vDemanderID;
  Parameters.ParamByName('ProductCode_ID').Value        := vProductCodeID;
  Parameters.ParamByName('startDate').Value             := dteStart.Date;
  Parameters.ParamByName('endDate').Value               := dteEnd.Date;
  Open;
  end;

end;

procedure TDemanderStockAuditForm.dteEndCloseUp(Sender: TObject);
begin
  with adoStockAudit do
  begin
  Close;
  Parameters.ParamByName('Demander_ID').Value           := vDemanderID;
  Parameters.ParamByName('ProductCode_ID').Value        := vProductCodeID;
  Parameters.ParamByName('startDate').Value             := dteStart.Date;
  Parameters.ParamByName('endDate').Value               := dteEnd.Date;
  Open;
  end;
end;

procedure TDemanderStockAuditForm.FormShow(Sender: TObject);
begin
 dteStart.Date := Date - 120;
 dteEnd.Date   := Date;

 with adoStockAudit do
  begin
  Close;
  Parameters.ParamByName('Demander_ID').Value           := vDemanderID;
  Parameters.ParamByName('ProductCode_ID').Value        := vProductCodeID;
  Parameters.ParamByName('startDate').Value             := dteStart.Date;
  Parameters.ParamByName('endDate').Value               := dteEnd.Date;
  Open;
  end;

end;

end.

unit DemanderStockVarianceFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, ExtCtrls, RzDlgBtn, DBCtrls, RzDBCmbo,
  RzEdit, StdCtrls, RzLabel, RzDBLbl, Mask, RzCommon, ppBands, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  daDataView, daQueryDataView, daADO, ppModule, daDataModule, DB, ADODB,
  ppParameter;

type
  TDemanderStockVarianceForm = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    rzgType: TRzRadioGroup;
    rzlDemanders: TRzDBLookupComboBox;
    rzeReason: TRzEdit;
    RzDBProduct_str: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    rznSKU: TRzNumericEdit;
    RzLabel3: TRzLabel;
    RzDBLabel2: TRzDBLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzFrameController1: TRzFrameController;
    RzDBLabel4: TRzDBLabel;
    RzLabel7: TRzLabel;
    chkPrint: TCheckBox;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplblDemander: TppLabel;
    pplblICN: TppLabel;
    pplblType: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    pplblECN: TppLabel;
    pplblProductDescrip: TppLabel;
    ppQtyMoved: TppLabel;
    pplblReason: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    RzDBLabel1: TRzDBLabel;
    ppSystemVariable2: TppSystemVariable;
    RzDBProductID: TRzDBLabel;
    qryProductDetails: TADOQuery;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pplblUntCost: TppLabel;
    pplblTotalCost: TppLabel;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    pplblProductUnit: TppLabel;
    rzlblPackQty: TRzLabel;
    rznPackQty: TRzNumericEdit;
    Label1: TLabel;
    RzDBLabel3: TRzDBLabel;
    RzLabel6: TRzLabel;
    lblToDemnder: TLabel;
    qryGeneric_1: TADOQuery;
    procedure rzgTypeClick(Sender: TObject);
    procedure rzlDemandersCloseUp(Sender: TObject);
    procedure PrintReport;
    procedure rznSKUEnter(Sender: TObject);
    function PackSizeofItem(Product: integer): integer;
    procedure rznPackQtyExit(Sender: TObject);
    procedure rznSKUExit(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TVariance = class(TObject)
  public
    class function AddVariance(var prmDemander: String; var prmSKU: Double; var
        prmReason: string;  var prmPackQty : Double; ToDemander: string): Integer;
  end;


implementation

uses DemanderUDM;

{$R *.dfm}

class function TVariance.AddVariance(var prmDemander: String; var prmSKU:
    Double; var prmReason: string; var prmPackQty : double; toDemander: string): Integer;
var
  DemanderStockVarianceForm: TDemanderStockVarianceForm;
begin

  Result := -1;
  DemanderStockVarianceForm := TDemanderStockVarianceForm.Create(Application);
  with DemanderStockVarianceForm do
    begin
    if ShowModal = mrOK then
      begin
      Result        := 0; //rzgType.ItemIndex;
      prmDemander   := VarToStrDef(rzlDemanders.KeyValue, '');
      prmReason     := rzeReason.Text;
      prmSKU        := rznSKU.Value;
      prmPackQty    := rznPackQty.Value;
      //frmDemander   :=
      lblToDemnder.Caption := toDemander;
      PrintReport; //call to print report. SM 15 Jan 08
      end;
    Free;
    end;

end;



procedure TDemanderStockVarianceForm.PrintReport;
var
 item_id: integer;
 cost, total_cost, qtymoved : double;
 prod_unit : string;
begin

if chkPrint.Checked then
 begin
 item_id := RzDBProductID.Field.AsInteger;

 qryProductDetails.Parameters.ParamByName('item_id').Value := item_id;
 qryProductDetails.Active := True;
 cost := qryProductDetails.FieldByName('Cost').AsFloat;

 if rznPackQty.Value <> 0 then
  total_cost := cost * rznPackQty.Value * qryProductDetails.FieldByName('PackSizeValue_dbl').AsInteger
 else
  total_cost := cost * rznSKU.Value;

 prod_unit := qryProductDetails.FieldByName('PackSizeUnit_str').AsString;

 pplblDemander.Text := 'Transfered from ' +lblToDemnder.Caption + ' to '+ rzlDemanders.Text;
 pplblType.Text := rzgType.Items.Strings[rzgType.itemIndex];

 qtymoved := rznPackQty.Value * qryProductDetails.FieldByName('PackSizeValue_dbl').AsInteger;

 if rznPackQty.Value <> 0 then
  ppQtyMoved.Text :=  FloatToStr(qtymoved)
 else
  ppQtyMoved.Text := rznSKU.Text;

 pplblProductDescrip.Text := RzDBProduct_str.Field.AsString;
 pplblICN.Text :=  qryProductDetails.FieldByName('ICN_str').AsString;
 pplblECN.Text :=  qryProductDetails.FieldByName('ECN_str').AsString;
 pplblReason.Text := rzeReason.Text;
 pplblProductUnit.Text := qryProductDetails.FieldByName('PackSizeUnit_str').AsString;
 pplblUntCost.Text := FloatToStrF(cost, ffCurrency, 9, 2 );
 pplblTotalCost.Text := FloatToStrF(total_cost, ffCurrency, 9, 2 );
 
 ppReport1.Print;
 qryProductDetails.Active := False;
 end;

end;      

procedure TDemanderStockVarianceForm.rzgTypeClick(Sender: TObject);
begin
  rzlDemanders.Visible := rzgType.ItemIndex = 0;
end;

procedure TDemanderStockVarianceForm.rzlDemandersCloseUp(Sender: TObject);
begin
 RzDialogButtons1.EnableOk := not (rzlDemanders.Text = ''); //Need to check if it is triggered//08July2008
end;

procedure TDemanderStockVarianceForm.rznSKUEnter(Sender: TObject);
begin
end;

//THIS FUNCTION RETURNS THE INTEGER VALUE OF ANY PRODUCT ITEM
function  TDemanderStockVarianceForm.PackSizeofItem(Product: integer): integer;
var
 vPacksize: integer;
begin

 vPacksize := 1;
 with qryGeneric_1 do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := Product;
  Open;
  if recordCount > 0 then
   vPacksize := FieldByName('PackSizeValue_dbl').AsInteger;
  Close;
  end;

 Result  := vPacksize;
end;

procedure TDemanderStockVarianceForm.rznPackQtyExit(Sender: TObject);
var
 item_id : integer;
begin
 item_id := RzDBProductID.Field.AsInteger;
// if Sender = Self then
  rznSKU.Value := PackSizeofItem(item_id) * (rznPackQty.Value);

end;

procedure TDemanderStockVarianceForm.rznSKUExit(Sender: TObject);
var
 item_id : integer;
begin
 item_id := RzDBProductID.Field.AsInteger;
// if Sender = Self then
  rznPackQty.Value := Int((rznSKU.Value)/PackSizeofItem(item_id));

end;

end.

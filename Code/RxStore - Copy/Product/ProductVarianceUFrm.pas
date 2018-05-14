unit ProductVarianceUFrm;
{------------------------------------------------------------------------------}
{NOTE : THIS IS A SHARED UNIT.  IT IS USED TO BUILD BOTH RXSOLUTION & RXSTORE  }
{------------------------------------------------------------------------------}
{   It is optimised for compiling in RxSolution so any specific RxStore        }
{   directives need To be enclose in a compiler directive called -             }
{                                                                              }
{   ($IFDEF RXSTOREBUILD )                                                     }
{     RxStore specific code here.                                              }
{     This can be something like a form or a unit.                             }
{   ($ELSE)                                                                    }
{     RxStolution specific code here.                                          }
{                                                                              }
{   ($ENDIF)                                                                   }
{                                                                              }
{   This example used normal bracket, but for compiler directive use curly     }
{   brackets.                                                                  }
{                                                                              }
{ ---------------------------------------------------------------------------- }
{ EDIT/CHANGE NOTE                                                             }
{ Date Recorded : 2006-03-09                                                   }
{ Recorded By   : Deane Putzier                                                }
{ Reason        : Merging of the code files for compilation in both apps       }
{------------------------------------------------------------------------------}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  Buttons, LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls, lmdstdcA, ComCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit,
  LMDCustomEdit, LMDCustomMaskEdit, LMDMaskEdit, dxExEdtr, dxDBGrid,
  dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, dxCntner, ActnList, Menus, ElPopBtn, DateUtils, DB,
  RzEdit, RzDBEdit, PrjConst;

type
  TProductVarianceFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlProductDetailColorBackground: TPanel;
    lblReason: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label24: TLabel;
    dbtProductCode: TDBText;
    dbtDescription: TDBText;
    lblNewQty: TLabel;
    edtReason: TEdit;
    cmbAdjustmentType: TComboBox;
    dtpAdjustmentDate: TDateTimePicker;
    Label4: TLabel;
    dbtNSNCode: TDBText;
    Label5: TLabel;
    speAdjustedQty: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1ProductCode_ID: TdxDBGridMaskColumn;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    ViewAll1: TMenuItem;
    dxDBGrid1QtyOnHand_int: TdxDBGridColumn;
    dbtQtyOnHand_int: TLabel;
    atnNewBatchProduct: TAction;
    ElSpeedButton1: TElSpeedButton;
    dxDBGrid1ShippingPack_int: TdxDBGridColumn;
    gpbBatchGroup: TGroupBox;
    lblExpiryDate1: TLabel;
    Label2: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBEdit1: TRzDBEdit;
    lblExpiryDate: TLabel;
    dtpExpiryDate: TDateTimePicker;
    procedure speAdjustedQtyChange(Sender: TObject);
    procedure cmbAdjustmentTypeChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure atnViewAllRecordsExecute(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atnNewBatchProductExecute(Sender: TObject);
    procedure dxDBGrid1Expiry_datChange(Sender: TObject);
  private
    { Private declarations }

    procedure CalculateNewStockLevel;
    procedure DisplayExpiryDate;
    procedure AddReasonText;
    procedure SetFormDefaults;
    procedure UpdateOldQty;
  public
    { Public declarations }
  end;

var
  ProductVarianceFrm: TProductVarianceFrm;

implementation

uses ProductUDm;

{$R *.dfm}

function UpdateLastDayMon(MyDate : TDate): TDate;
begin
 result := EncodeDate(YearOf(Mydate),MonthOf(MyDate), DaysInMonth(MyDate));
end;

procedure TProductVarianceFrm.SetFormDefaults;
begin

  if ProductDm.FUsesBatchManagement then
   begin
   ProductVarianceFrm.Width := 1116;
   gpbBatchGroup.Visible := True;
   end
  else
   begin
   ProductVarianceFrm.Width := 663;
   gpbBatchGroup.Visible := False;
   end;

  cmbAdjustmentType.ItemIndex := 0;
  dtpAdjustmentDate.DateTime  := Date;
  //must remove expiry date
  dtpExpiryDate.DateTime      := Date;
  DisplayExpiryDate;
  UpdateOldQty;
//CalculateNewStockLevel;
  AddReasonText;
//Only show if system batch management  = true
  dxDBGrid1.Visible             := ProductDm.FUsesBatchManagement;
  atnNewBatchProduct.Visible    := ProductDm.FUsesBatchManagement;

end;


procedure TProductVarianceFrm.speAdjustedQtyChange(Sender: TObject);
begin

  CalculateNewStockLevel;
  with (Sender as TLMDSpinEdit) do
    if Value < 0 then
      Font.Color := clRed else Font.Color := clBlue;

end;

procedure TProductVarianceFrm.cmbAdjustmentTypeChange(Sender: TObject);
begin
  DisplayExpiryDate;
  AddReasonText;
end;

procedure TProductVarianceFrm.CalculateNewStockLevel;
var
  vQoH, vAoH  :integer;

begin
  vQoH  := StrToInt(dbtQtyOnHand_int.Caption);

  if speAdjustedQty.Text = '' then
   vAoH  := 0
  else
   vAoH := StrToInt(speAdjustedQty.Text);
  if not (vQoH + vAoH) < 0 then
   lblNewQty.Caption := IntToStr(vQoH + vAoH)
  else
   begin
   ShowMessage('You cannot have negative stock balance');
   speAdjustedQty.SetFocus;
   end;

end;

procedure TProductVarianceFrm.DisplayExpiryDate;
begin
  if not ProductDm.FUsesBatchManagement then
   begin
   dtpExpiryDate.Visible   := cmbAdjustmentType.ItemIndex = 1;
   lblExpiryDate.Visible   := dtpExpiryDate.Visible;
   end
  else
   begin
   dtpExpiryDate.Visible   := False;
   lblExpiryDate.Visible   := False;
   end;
end;



procedure TProductVarianceFrm.AddReasonText;
begin

 //******** Commented out because of Bug Issue 2906
  {
  case cmbAdjustmentType.ItemIndex of
    0: edtReason.Text := 'Stock has been Adjusted';
    1: edtReason.Text := 'Stock has Expired';
    2: edtReason.Text := 'Stock has been Transfered';
    3: edtReason.Text := 'Stock has been Broken';
    4: edtReason.Text := 'Stock has been Spoilt';
    5: edtReason.Text := 'Stock has been Declared';
    6: edtReason.Text := 'Stock has been Returned';
    end;
   }

    //******** Bug Issue 2906: StockAdjusted option has been removed
   case cmbAdjustmentType.ItemIndex of
    0: edtReason.Text := 'Stock has Expired';
    1: edtReason.Text := 'Stock has been Transfered';
    2: edtReason.Text := 'Stock has been Broken';
    3: edtReason.Text := 'Stock has been Spoilt';
    4: edtReason.Text := 'Stock has been Declared';
    5: edtReason.Text := 'Stock has been Returned';
    end;

end;

procedure TProductVarianceFrm.Edit1Change(Sender: TObject);
begin
CalculateNewStockLevel;
end;

procedure TProductVarianceFrm.atnViewAllRecordsExecute(Sender: TObject);
var
 sql_str : string;
 item_id : integer;
begin
 //change quey to show all batch items, even if they have zero stock balances
 item_id := ProductDm.qryProductBatch.FieldByName('ProductCode_ID').AsInteger;

end;

procedure TProductVarianceFrm.UpdateOldQty;
begin

 if ProductDm.qryProductBatch.RecordCount > 0 then
   dbtQtyOnHand_int.Caption := ProductDm.qryProductBatch.FieldByName('QtyOnHand_int').AsString
 else
   dbtQtyOnHand_int.Caption := '0';
 if ProductDm.qryProductBatch.State in [dsInsert] then
 dbtQtyOnHand_int.Caption := '0';
   
end;

procedure TProductVarianceFrm.dxDBGrid1Click(Sender: TObject);
begin
 UpdateOldQty;
 CalculateNewStockLevel;
end;

procedure TProductVarianceFrm.FormShow(Sender: TObject);
begin
 SetFormDefaults;
end;

procedure TProductVarianceFrm.atnNewBatchProductExecute(Sender: TObject);
begin

//if ProductDm.qryProductBatch.State not in [dsEdit, dsInsert] then
 if ProductDm.FUsesBatchManagement then
  begin
  ProductDm.qryProductBatch.Insert;
//make dbtQtyOnHand_int 0
  dbtQtyOnHand_int.Caption := '0';
  end;

 UpdateOldQty;
 
end;

procedure TProductVarianceFrm.dxDBGrid1Expiry_datChange(Sender: TObject);
begin
//Check the day of month and update to last day of month if in the middle of the month
 if DayOfTheMonth(dxDBGrid1Expiry_dat.Field.AsDateTime) <> DaysInMonth(dxDBGrid1Expiry_dat.Field.AsDateTime) then
  dxDBGrid1Expiry_dat.Field.AsDateTime := UpdateLastDayMon(dxDBGrid1Expiry_dat.Field.AsDateTime);
end;

end.

unit ReturnsSelectInvoiceUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls, DBActns, ActnList, Menus,
  Buttons, ElPopBtn, MyApplicationUtilities, ComCtrls;

type
  TReturnsSelectInvoiceFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlToolBar: TPanel;
    btnLast: TElSpeedButton;
    btnPageDown: TElSpeedButton;
    btnPageUp: TElSpeedButton;
    btnFirst: TElSpeedButton;
    pnlToolBar_Line1: TShape;
    btnPrior: TElSpeedButton;
    btnNext: TElSpeedButton;
    pnlToolBar_N1: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    atnInvoiceActions: TActionList;
    atnInvoicePageUp: TAction;
    atnInvoicePageDown: TAction;
    atnInvoiceFirst: TDataSetFirst;
    atnInvoicePrior: TDataSetPrior;
    atnInvoiceNext: TDataSetNext;
    atnInvoiceLast: TDataSetLast;
    dbgReceipts: TdxDBGrid;
    dbgReceiptsInvoiceNo_str: TdxDBGridColumn;
    dbgReceiptsReceived_dat: TdxDBGridColumn;
    dbgReceiptsOrderRef_Str: TdxDBGridColumn;
    dbgReceiptsReceiptNo_str: TdxDBGridColumn;
    Label1: TLabel;
    Label2: TLabel;
    dteStart: TDateTimePicker;
    dteEndDate: TDateTimePicker;
    procedure btnCancelClick(Sender: TObject);
    procedure atnInvoicePageUpExecute(Sender: TObject);
    procedure atnInvoicePageDownExecute(Sender: TObject);
    procedure atnInvoicePageUpUpdate(Sender: TObject);
    procedure atnInvoicePageDownUpdate(Sender: TObject);
    procedure dbgReceiptsDblClick(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SelectInvoice(var ReceiptID: Integer): Boolean;
    procedure ReLoadReceipts();
  end;

var
  ReturnsSelectInvoiceFrm: TReturnsSelectInvoiceFrm;

implementation

uses ReturnsUDm;
{$R *.dfm}

procedure TReturnsSelectInvoiceFrm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

function TReturnsSelectInvoiceFrm.SelectInvoice(var ReceiptID: Integer): Boolean;
begin
  Result := False;
  if Assigned(ReturnsDM) then
  begin
    with ReturnsDM do
    begin
      try
        ReturnsSelectInvoiceFrm := TReturnsSelectInvoiceFrm.Create(Application);
        with ReturnsSelectInvoiceFrm do
        begin
          if ShowModal = mrOK then
          begin
            Result := True;
            if dbgReceipts.SelectedCount > 0 then
            begin
              with dbgReceipts.Datasource.Dataset do
                ReceiptID := FieldByName('ReceiptNo_ID').AsInteger;
            end; //if dbgReceipts.SelectedCount > 0
          end; //if ShowModal = mrOK
        end; // with ReturnsSelectInvoiceFrm
      finally
        ReturnsSelectInvoiceFrm.Free;
      end;
    end;
  end;
end;

procedure TReturnsSelectInvoiceFrm.atnInvoicePageUpExecute(
  Sender: TObject);
begin
  DBPageUp(dbgReceipts.DataSource.DataSet, 23);
end;

procedure TReturnsSelectInvoiceFrm.atnInvoicePageDownExecute(
  Sender: TObject);
begin
  DBPageDown(dbgReceipts.DataSource.DataSet, 23);
end;

procedure TReturnsSelectInvoiceFrm.atnInvoicePageUpUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnInvoiceFirst.Enabled;
end;

procedure TReturnsSelectInvoiceFrm.atnInvoicePageDownUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled := atnInvoiceLast.Enabled;
end;

procedure TReturnsSelectInvoiceFrm.dbgReceiptsDblClick(Sender: TObject);
begin
  btnSelect.Click
end;

procedure TReturnsSelectInvoiceFrm.dteStartChange(Sender: TObject);
begin
 ReLoadReceipts;
end;

procedure TReturnsSelectInvoiceFrm.dteEndDateChange(Sender: TObject);
begin             
 ReLoadReceipts;
end;

procedure TReturnsSelectInvoiceFrm.ReLoadReceipts();
begin
  //Refreshes the load receipts
 with ReturnsDm do
  begin
  LoadReceipts(dteStart.DateTime, dteEndDate.DateTime);
  end;
end;

procedure TReturnsSelectInvoiceFrm.FormShow(Sender: TObject);
begin
 //
 dteStart.DateTime      := Date - 90;
 dteEndDate.DateTime    := Date;
 
end;

end.


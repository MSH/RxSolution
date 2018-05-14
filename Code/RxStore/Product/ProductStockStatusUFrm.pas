unit ProductStockStatusUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBmpBtn, ComCtrls, StdCtrls, ActnList, ExtCtrls, RzDlgBtn;

type
  TProductStockStatusFilterFrm = class(TForm)
    Label17: TLabel;
    DateSt: TDateTimePicker;
    DateEnd: TDateTimePicker;
    Label47: TLabel;
    RzBmpButton2: TRzBmpButton;
    ActionList1: TActionList;
    atnPrintStockStatusReport: TAction;
    chkEDL: TCheckBox;
    RzDialogButtons1: TRzDialogButtons;
    procedure atnPrintStockStatusReportExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ProductStockStatusFilterFrm: TProductStockStatusFilterFrm;

implementation

uses ProductUDm;

{$R *.dfm}

procedure TProductStockStatusFilterFrm.atnPrintStockStatusReportExecute(
  Sender: TObject);
begin

 //**************
 with ProductDm do
  begin
  PrintStockStatusForRange(DateSt.Date, DateEnd.Date, chkEDL.Checked);
  end;

end;

procedure TProductStockStatusFilterFrm.FormShow(Sender: TObject);
begin
 //************* Set Date Time Pickers To Start = Today - 30 days
 //************* End Date = Today
 DateSt.Date    := Now() - 31;
 DateEnd.Date   := Now();
 
end;

end.


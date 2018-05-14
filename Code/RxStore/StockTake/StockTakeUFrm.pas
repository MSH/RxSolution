unit StockTakeUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  ActnList, StdCtrls, Menus, ExtCtrls, RzBmpBtn, ComCtrls, ElPopBtn,
  DBActns, RzLabel;

type
  TStockTakeFrm = class(TForm)
    ActionList1: TActionList;
    atnEditCurrentRecord: TAction;
    atnAddNewStockTake: TAction;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnViewStockTake: TAction;
    PopPrintMenu: TPopupMenu;
    PrintStocktake1: TMenuItem;
    PrintSurplusReport1: TMenuItem;
    PrintDeficitReport1: TMenuItem;
    N1: TMenuItem;
    PrintStocktakeCtrlP1: TMenuItem;
    PrintSurplusReportCtrlAltS1: TMenuItem;
    PrintDeficitReportCtrlAltS1: TMenuItem;
    N2: TMenuItem;
    atnColumnSelector: TAction;
    PrintAnomaliesReport1: TMenuItem;
    PrintSecondCountReport1: TMenuItem;
    atnUnLockStocktake: TAction;
    UnLockStocktake1: TMenuItem;
    Panel7: TPanel;
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    RzBmpButton1: TRzBmpButton;
    pnlToolBar: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    dteStart: TDateTimePicker;
    Panel6: TPanel;
    dteEnd: TDateTimePicker;
    dbgStockTake: TdxDBGrid;
    dbgStockTakeStockTake_dat: TdxDBGridDateColumn;
    dbgStockTakeStockTake_str: TdxDBGridMaskColumn;
    dbgStockTakeItemsNo_int: TdxDBGridMaskColumn;
    dbgStockTakeCompleted_bol: TdxDBGridCheckColumn;
    dbgStockTakeActivated_dat: TdxDBGridColumn;
    dbgStockTakeTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgStockTakeVerifiedBy_str: TdxDBGridColumn;
    dbgStockTakeStockCapturedBy_str: TdxDBGridColumn;
    dbgStockTakeReason_str: TdxDBGridColumn;
    procedure atnEditCurrentRecordExecute(Sender: TObject);
    procedure atnAddNewStockTakeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atnViewStockTakeExecute(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnUnLockStocktakeExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FRecordUnlocking : Boolean;
  public
    { Public declarations }
  end;

var
  StockTakeFrm: TStockTakeFrm;

implementation

uses StockTakeUDM, StockTakeDetailUFrm, RxSolutionUFrm, RxSolutionSecurityClass,
DialogGridColumnSelectorUFrm;

{$R *.dfm}


procedure TStockTakeFrm.atnEditCurrentRecordExecute(Sender: TObject);
begin
// Put lock on document... don't make it visible if someone else is using.
// 13 September...
 if not StockTakeDM.IsRecordLocked then
  begin
   if (StockTakeDM.qryStockTakeCatalog.RecordCount > 0) then
    begin
    StockTakeDM.EditStockTake;
    StockTakeDetailFrm.Show;
    end;
  end                                                                
 else
  ShowMessage('Record is being used by another user!');
   
end;

procedure TStockTakeFrm.atnAddNewStockTakeExecute(Sender: TObject);
begin
//Put in a lock when creating a new one.
 StockTakeDM.checkUnPosted_Req.Open;
 StockTakeDM.checkUnPosted_Rec.Open;
 //BUG Issue 177  Sifiso Mahlaba
 StocktakeDm.checkUnPosted_Ret.Open;  
 //mc mankga - 27/01/2013
 StocktakeDm.checkUnPosted_RetDemander.Open;


 if ( (StockTakeDM.checkUnPosted_Req.RecordCount > 0) or (StockTakeDM.checkUnPosted_Rec.RecordCount > 0) or (StocktakeDm.checkUnPosted_Ret.RecordCount > 0) or (StocktakeDm.checkUnPosted_RetDemander.RecordCount > 0) ) then
  MessageDlg('Ensure that all receipts, requisitions, returns to supplier and returns from demander are posted.' , mtWarning, [mbOK], 0);

 StockTakeDM.AddStockTake;
 StockTakeDetailFrm.Show;

 StockTakeDM.checkUnPosted_Req.Close;
 StockTakeDM.checkUnPosted_Rec.Close;
 //BUG Issue 177 Sifiso Mahlaba
 StockTakeDM.checkUnPosted_Ret.Close;
 StocktakeDm.checkUnPosted_RetDemander.Close;
end;

procedure TStockTakeFrm.FormShow(Sender: TObject);
 var
 atnEnabled: Boolean;
begin
 dbgStockTake.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
 
dteStart.Date   := Date - 60;
dteEnd.Date     := Date;
//send the filter here
StockTakeDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);

with RxSolutionFrm.Security do
 atnEnabled := GetUserAccessLevel(MODULE_STOCKTAKING) > USER_BROWSER;

with RxSolutionFrm.Security do
 FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;
atnUnLockStocktake.Visible := FRecordUnlocking;

atnAddNewStockTake.Enabled := atnEnabled;
StockTakeDM.atnStockTakeDelete.Enabled := atnEnabled;
end;

procedure TStockTakeFrm.atnViewStockTakeExecute(Sender: TObject);
begin
 StockTakeDetailFrm.Show;
end;

procedure TStockTakeFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgStockTake;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TStockTakeFrm.dteStartChange(Sender: TObject);
begin
if StockTakeDM.qryStockTakeCatalog.Active then
 StockTakeDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);
end;

procedure TStockTakeFrm.dteEndChange(Sender: TObject);
begin

if StockTakeDM.qryStockTakeCatalog.Active then
 StockTakeDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);
end;

procedure TStockTakeFrm.atnUnLockStocktakeExecute(Sender: TObject);
begin
//Unlock Record
 StockTakeDM.UnLockStocktakeMain;
end;

procedure TStockTakeFrm.FormResize(Sender: TObject);
begin
  dbgStockTake.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
end;

end.

unit PrepackingUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxExEdtr, Menus, DBActns, ActnList, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RzBmpBtn, ComCtrls, ElPopBtn, RzLabel, ExtCtrls,
  dxDBTLCl, dxGrClms;

type
  TPrepackingFrm = class(TForm)
    Panel7: TPanel;
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
    dbgPrepacking: TdxDBGrid;
    dbgPrepackingCreated_dat: TdxDBGridDateColumn;
    dbgPrepackingResultantItem_str: TdxDBGridColumn;
    dbgPrepackingPrepackingRefNo_str: TdxDBGridColumn;
    dbgPrepackingCheckedBy_str: TdxDBGridColumn;
    dbgPrepackingChecked_dat: TdxDBGridDateColumn;
    dbgPrepackingPackedBy_str: TdxDBGridColumn;
    dbgPrepackingPacked_dat: TdxDBGridDateColumn;
    dbgPrepackingRemainderDemander_str: TdxDBGridColumn;
    dbgPrepackingResultantCost_mon: TdxDBGridCurrencyColumn;
    dbgPrepackingResultExpiry_dat: TdxDBGridDateColumn;
    dbgPrepackingResultBatchNumber_str: TdxDBGridColumn;
    dbgPrepackingAdditionalCost_mon: TdxDBGridCurrencyColumn;
    dbgPrepackingFinalYield_int: TdxDBGridMaskColumn;
    dbgPrepackingExpectedYield_int: TdxDBGridMaskColumn;
    dbgPrepackingRemainder_int: TdxDBGridMaskColumn;
    dbgPrepackingHumidity_dbl: TdxDBGridMaskColumn;
    dbgPrepackingTemperature_dbl: TdxDBGridMaskColumn;
    dbgPrepackingPosted_dat: TdxDBGridColumn;
    dbgPrepackingPosted_bol: TdxDBGridCheckColumn;
    dbgPrepackingPreposted_bol: TdxDBGridCheckColumn;
    dbgPrepackingPreposted_dat: TdxDBGridColumn;
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    RzBmpButton1: TRzBmpButton;
    ActionList1: TActionList;
    atnAddNewRecord: TAction;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnViewPrepacking: TAction;
    atnColumnSelector: TAction;
    atnRefreshPrepackingList: TAction;
    atnUnLockRecord: TAction;
    PopupMenu1: TPopupMenu;
    AddPrepacking1: TMenuItem;
    EditPrepacking1: TMenuItem;
    N1: TMenuItem;
    Print2: TMenuItem;
    N2: TMenuItem;
    UnLockRecord1: TMenuItem;
    PopPrintMenu: TPopupMenu;
    Print1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnRefreshPrepackingListExecute(Sender: TObject);
    procedure atnAddNewRecordExecute(Sender: TObject);
    procedure atnViewPrepackingExecute(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure atnUnLockRecordExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FRecordUnlocking : Boolean;
    atnEnabled : Boolean;
  public
    { Public declarations }
  end;

var
  PrepackingFrm: TPrepackingFrm;

implementation

uses PrepackingUDM, PrepackingItemsUFrm, DialogGridColumnSelectorUFrm,
  RxSolutionUFrm, RxSolutionSecurityClass;

{$R *.dfm}

procedure TPrepackingFrm.FormShow(Sender: TObject);
const
  cbuf = 1;
var
 vDetFormSize  :TRect;
begin

  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

  dbgPrepacking.Height := Panel7.Height - (pnlToolBar.Height + Panel1.Height);
  RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);

  dteStart.Date := Date()- 60;
  dteEnd.Date := Date();

  PrepackingDM.DataConnect(dteStart.Date, dteEnd.Date);

  with RxSolutionFrm.Security do
   atnEnabled := GetUserAccessLevel(MODULE_PREPACKING) > USER_BROWSER;

  with RxSolutionFrm.Security do
   FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

  atnUnLockRecord.Visible := FRecordUnlocking;

  atnAddNewRecord.Enabled := atnEnabled;
 // atnViewPrepacking.Enabled := (PrepackingDM.qryPrepacking.RecordCount > 0);

 // MC Mankga - 25/01/2013
 atnViewPrepacking.Enabled := atnEnabled;

end;

procedure TPrepackingFrm.dteStartChange(Sender: TObject);
begin
 PrepackingDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TPrepackingFrm.dteEndChange(Sender: TObject);
begin
 PrepackingDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TPrepackingFrm.atnRefreshPrepackingListExecute(Sender: TObject);
begin
 PrepackingDM.RefreshPrepackingList;
end;

procedure TPrepackingFrm.atnAddNewRecordExecute(Sender: TObject);
begin
 PrepackingDM.AddPrepacking;
 PrepackingItemsFrm.ShowModal;
 atnViewPrepacking.Enabled := (PrepackingDM.qryPrepacking.RecordCount > 0);
end;

procedure TPrepackingFrm.atnViewPrepackingExecute(Sender: TObject);
begin
 if not (PrepackingDM.IsRecordLocked) then
  begin
  PrepackingDM.EditPrepacking;
  PrepackingItemsFrm.ShowModal;
  end
 else
  ShowMessage('Record is being used by another user!');
end;

procedure TPrepackingFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgPrepacking;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TPrepackingFrm.atnUnLockRecordExecute(Sender: TObject);
begin

 with PrepackingDM do
  begin
  UnLockRecordMain;
  end;

end;

procedure TPrepackingFrm.FormResize(Sender: TObject);
begin
//
  dbgPrepacking.Height := Panel7.Height - (pnlToolBar.Height + Panel1.Height);
  RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);

end;

end.

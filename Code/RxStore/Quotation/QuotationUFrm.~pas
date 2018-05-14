unit QuotationUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxExEdtr, Menus, DBActns, ActnList, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RzBmpBtn, ComCtrls, ElPopBtn, RzLabel, ExtCtrls,
  dxDBTLCl, dxGrClms;

type
  TQuotationFrm = class(TForm)
    pnlCreditPanel: TPanel;
    shpRequisitionList: TShape;
    RzLabel1: TRzLabel;
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
    RzBmpButton1: TRzBmpButton;
    dbgQuotation: TdxDBGrid;
    ActionList1: TActionList;
    atnAddNewRecord: TAction;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnColumnSelector: TAction;
    PopupMenu1: TPopupMenu;
    PopPrintMenu: TPopupMenu;
    dbgQuotationCreated_dat: TdxDBGridDateColumn;
    dbgQuotationQuotationRefNo_str: TdxDBGridColumn;
    dbgQuotationDemander_str: TdxDBGridColumn;
    dbgQuotationRequestedBy_str: TdxDBGridColumn;
    dbgQuotationRequested_dat: TdxDBGridDateColumn;
    dbgQuotationTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgQuotationPreparedBy_str: TdxDBGridColumn;
    dbgQuotationPrepared_dat: TdxDBGridDateColumn;
    dbgQuotationPosted_dat: TdxDBGridDateColumn;
    dbgQuotationPosted_bol: TdxDBGridCheckColumn;
    atnEditQuotation: TAction;
    atnRefreshList: TAction;
    dbgQuotationItemsNo_int: TdxDBGridColumn;
    PrintQuotation1: TMenuItem;
    atnUnLockRecord: TAction;
    atnEditQuotation1: TMenuItem;
    AddReturnsOut1: TMenuItem;
    N1: TMenuItem;
    UnLockRecord1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure atnAddNewRecordExecute(Sender: TObject);
    procedure atnEditQuotationExecute(Sender: TObject);
    procedure atnRefreshListExecute(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnUnLockRecordExecute(Sender: TObject);
  private
    { Private declarations }
    FRecordUnlocking : Boolean;
  public
    { Public declarations }
  end;

var
  QuotationFrm: TQuotationFrm;

implementation

uses QuotationUDM, DialogGridColumnSelectorUFrm, QuotationDetailUFrm, RxSolutionSecurityClass,
  RxSolutionUFrm;

{$R *.dfm}

procedure TQuotationFrm.FormShow(Sender: TObject);
var
 atnBrowse: Boolean;
begin

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_QUOTATION) > USER_BROWSER);

 //SM
 with RxSolutionFrm.Security do
  FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

 dteStart.Date := Date()-60;
 dteEnd.Date := Date();
 QuotationDM.DataConnect(dteStart.Date, dteEnd.Date);

 // atnAddNewRecord.Enabled := not atnBrowse;
 atnAddNewRecord.Enabled := atnBrowse;
 atnUnLockRecord.Visible := (FRecordUnlocking);
 // atnUnLockRecord.Enabled := (not atnBrowse);
 atnUnLockRecord.Enabled := atnBrowse;
end;

procedure TQuotationFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgQuotation;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TQuotationFrm.atnAddNewRecordExecute(Sender: TObject);
begin

 QuotationDM.AddQuotation;
 QuotationDetailFrm.ShowModal;

end;

procedure TQuotationFrm.atnEditQuotationExecute(Sender: TObject);
begin
 if not (QuotationDM.IsRecordLocked) then
  begin
  QuotationDM.EditQuotation;
  QuotationDetailFrm.ShowModal;
  end
 else
  ShowMessage('Record is being used by another user!');
end;

procedure TQuotationFrm.atnRefreshListExecute(Sender: TObject);
begin
 QuotationDM.RefreshQuotationList;
end;

procedure TQuotationFrm.dteStartChange(Sender: TObject);
begin
  QuotationDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TQuotationFrm.dteEndChange(Sender: TObject);
begin
  QuotationDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TQuotationFrm.atnUnLockRecordExecute(Sender: TObject);
begin

 with QuotationDM do
  begin
  UnLockRecordMain;
  end;
  
end;

end.



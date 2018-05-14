unit DemanderTranfersUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, Menus, DBActns, ActnList, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, RzBmpBtn, ComCtrls, ElPopBtn, StdCtrls, RzLabel, ExtCtrls,
  dxDBTLCl, dxGrClms;

type
  TDemanderTranfersFrm = class(TForm)
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
    dbgDemanderTransfer: TdxDBGrid;
    dbgDemanderTransferCreated_dat: TdxDBGridDateColumn;
    dbgDemanderTransferDemanderTransferRefNo_str: TdxDBGridColumn;
    dbgDemanderTransferAccountName_str: TdxDBGridColumn;
    dbgDemanderTransferReference_str: TdxDBGridColumn;
    dbgDemanderTransferRequestedDate_dat: TdxDBGridDateColumn;
    dbgDemanderTransferPostedDate_dat: TdxDBGridDateColumn;
    dbgDemanderTransferPosted_bol: TdxDBGridCheckColumn;
    dbgDemanderTransferRequestedBy_str: TdxDBGridColumn;
    dbgDemanderTransferIssuedBy_str: TdxDBGridColumn;
    dbgDemanderTransferIssuedDate_dat: TdxDBGridDateColumn;
    dbgDemanderTransferDemanderFrom_str: TdxDBGridColumn;
    dbgDemanderTransferDemanderTo_str: TdxDBGridColumn;
    dbgDemanderTransferUseSKUOnly_bol: TdxDBGridCheckColumn;
    dbgDemanderTransferItemsNo_int: TdxDBGridColumn;
    dbgDemanderTransferTotalCost_mon: TdxDBGridCurrencyColumn;
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    RzBmpButton1: TRzBmpButton;
    ActionList1: TActionList;
    atnAddNewRecord: TAction;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnColumnSelector: TAction;
    atnEditTransfer: TAction;
    atnRefreshList: TAction;
    PopupMenu1: TPopupMenu;
    AddReturnsOut1: TMenuItem;
    atnEditTransfer1: TMenuItem;
    N1: TMenuItem;
    UnLockDemanderTransfer1: TMenuItem;
    PopPrintMenu: TPopupMenu;
    PrintDemanderTransfers1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure atnAddNewRecordExecute(Sender: TObject);
    procedure atnEditTransferExecute(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure UnLockDemanderTransfer1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
    FRecordUnlocking : Boolean;
  public
    { Public declarations }
  end;

var
  DemanderTranfersFrm: TDemanderTranfersFrm;

implementation

uses DemanderTransferUDM, DialogGridColumnSelectorUFrm, DemanderTransferDetailUFrm,  RxSolutionSecurityClass,
  RxSolutionUFrm;

{$R *.dfm}


procedure TDemanderTranfersFrm.FormShow(Sender: TObject);
var
 atnBrowse: Boolean; 
begin

 dbgDemanderTransfer.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
 RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_DEMANDER_TRANSFERS) = USER_BROWSER);

 with RxSolutionFrm.Security do
  FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

 dteStart.Date := Date()-60;
 dteEnd.Date := Date();
 DemanderTransferDM.DataConnect(dteStart.Date, dteEnd.Date);

 atnAddNewRecord.Enabled := not atnBrowse;

 DemanderTransferDM.atnUnLockTranfersMain.Visible := FRecordUnlocking;

end;

procedure TDemanderTranfersFrm.atnAddNewRecordExecute(Sender: TObject);
begin

 DemanderTransferDM.AddTransfer;
 DemanderTransferDetailFrm.ShowModal;

end;

procedure TDemanderTranfersFrm.atnEditTransferExecute(Sender: TObject);
begin

 with DemanderTransferDM do
  begin
  if tblTransfers.RecordCount > 0 then     //****** Do not open Detail Edit Form if no records open
   begin
   if not (IsRecordLocked) then
    begin
    DemanderTransferDM.EditTransfer;
    DemanderTransferDetailFrm.ShowModal;
    end
   else
    ShowMessage('Record is being used by another user!');
   end;
  end;

end;

procedure TDemanderTranfersFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgDemanderTransfer;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TDemanderTranfersFrm.dteStartChange(Sender: TObject);
begin
 DemanderTransferDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderTranfersFrm.dteEndChange(Sender: TObject);
begin
  DemanderTransferDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderTranfersFrm.UnLockDemanderTransfer1Click(
  Sender: TObject);
begin
 DemanderTransferDM.UnLockDemanderTransfer;
end;



procedure TDemanderTranfersFrm.FormResize(Sender: TObject);
begin
 dbgDemanderTransfer.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
 RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);
end;

end.

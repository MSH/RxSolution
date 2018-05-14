unit DemanderStocktakingUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, Menus, DBActns, ActnList, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, RzBmpBtn, ComCtrls, ElPopBtn, StdCtrls, RzLabel, ExtCtrls,
  dxDBTLCl, dxGrClms;

type
  TDemanderStocktakingFrm = class(TForm)
    Panel2: TPanel;
    pnlToolBar: TPanel;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    dteStart: TDateTimePicker;
    Panel6: TPanel;
    dteEnd: TDateTimePicker;
    dbgDemanderStocktaking: TdxDBGrid;
    dbgDemanderStocktakingCreated_dat: TdxDBGridDateColumn;
    dbgDemanderStocktakingReferenceNo_str: TdxDBGridColumn;
    dbgDemanderStocktakingDemanderName_str: TdxDBGridColumn;
    dbgDemanderStocktakingItemsNo_int: TdxDBGridMaskColumn;
    dbgDemanderStocktakingTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgDemanderStocktakingPosted_bol: TdxDBGridCheckColumn;
    dbgDemanderStocktakingPosted_dat: TdxDBGridDateColumn;
    dbgDemanderStocktakingReason_str: TdxDBGridColumn;
    Panel1: TPanel;
    lblHeaderLabel: TRzLabel;
    RzBmpButton1: TRzBmpButton;
    ActionList1: TActionList;
    atnAddNewRecord: TAction;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnColumnSelector: TAction;
    atnEditStocktaking: TAction;
    atnRefreshList: TAction;
    atnUnLockRecord: TAction;
    PopupMenu1: TPopupMenu;
    AddStocktaking1: TMenuItem;
    EditStocktaking1: TMenuItem;
    N1: TMenuItem;
    UnLockRecord1: TMenuItem;
    PopPrintMenu: TPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure atnRefreshListExecute(Sender: TObject);
    procedure atnEditStocktakingExecute(Sender: TObject);
    procedure atnAddNewRecordExecute(Sender: TObject);
    procedure atnUnLockRecordExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }    
        FRecordUnlocking : Boolean;
  public
    { Public declarations }
  end;

var
  DemanderStocktakingFrm: TDemanderStocktakingFrm;

implementation

uses DemanderStocktakingUDM, RxSolutionSecurityClass, RxSolutionUFrm, DialogGridColumnSelectorUFrm,
  DemanderStocktakingDetailUFrm, ADODB;

{$R *.dfm}

procedure TDemanderStocktakingFrm.FormShow(Sender: TObject);
var
 atnBrowse: Boolean;
begin
 dbgDemanderStocktaking.Height := Panel2.Height - (Panel1.Height + pnlToolBar.Height);
 lblHeaderLabel.Width := Panel1.Width - (RzBmpButton1.Width);

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_DEMANDERSTOCKTAKING) = USER_BROWSER);

 with RxSolutionFrm.Security do
  FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

 dteStart.Date := Date()-60;
 dteEnd.Date := Date();
 DemanderStocktakingDM.DataConnect(dteStart.Date, dteEnd.Date);

 atnAddNewRecord.Enabled := not atnBrowse;

 if atnBrowse then
  lblHeaderLabel.Caption := 'Demander Stocktaking - [Browse Only]'
 else
  lblHeaderLabel.Caption := 'Demander Stocktaking';

 atnUnLockRecord.Visible := FRecordUnlocking;

end;

procedure TDemanderStocktakingFrm.dteStartChange(Sender: TObject);
begin
 //************ Update Date filter
 DemanderStocktakingDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderStocktakingFrm.dteEndChange(Sender: TObject);
begin
 //************ Update date filter
 DemanderStocktakingDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderStocktakingFrm.atnColumnSelectorExecute(
  Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgDemanderStocktaking;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TDemanderStocktakingFrm.atnRefreshListExecute(Sender: TObject);
begin
 //************ Update date filter
 DemanderStocktakingDM.DataConnect(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderStocktakingFrm.atnEditStocktakingExecute(
  Sender: TObject);
begin
//************* Open/View/Edit Current record if one exists
//************* Check if Record is not locked first
 with DemanderStocktakingDM do
  begin
  if not IsRecordLocked then
   begin
   if tblDemanderStocktake.RecordCount > 0 then
    begin
    EditStocktake;
    DemanderStocktakingDetailFrm.Show;
    end;
   end
  else
   ShowMessage('Record is being used by another user!');
  end;  
end;

procedure TDemanderStocktakingFrm.atnAddNewRecordExecute(Sender: TObject);
begin
  //************ Add new record and show stocktaking detail form
 DemanderStocktakingDM.AddStocktake;
 DemanderStocktakingDetailFrm.Show;
end;

procedure TDemanderStocktakingFrm.atnUnLockRecordExecute(Sender: TObject);
begin
 DemanderStocktakingDM.UnLockDemanderStocktakingMain;
 MessageDlg('Record unlocked', mtInformation, [mbOk], 1);
end;

procedure TDemanderStocktakingFrm.FormResize(Sender: TObject);
begin
 dbgDemanderStocktaking.Height := Panel2.Height - (Panel1.Height + pnlToolBar.Height);
 lblHeaderLabel.Width := Panel1.Width - (RzBmpButton1.Width);
end;

end.

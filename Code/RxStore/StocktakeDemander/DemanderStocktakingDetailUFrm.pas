unit DemanderStocktakingDetailUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, Menus, ActnList, StdCtrls, DBCtrls, RzDBEdit,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, RzTabs, ElPopBtn, RzDBCmbo, RzBmpBtn,
  ExtCtrls, RzCmboBx, wwdbdatetimepicker, wwdblook, dxDBTLCl, dxGrClms;

type
  TDemanderStocktakingDetailFrm = class(TForm)
    Label6: TLabel;
    Panel4: TPanel;
    btnClose: TButton;
    Panel1: TPanel;
    btnPrint: TRzBmpButton;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Panel2: TPanel;
    lblRefNo: TDBText;
    lblPosted: TLabel;
    lblLocked: TLabel;
    lblBrowseOnly: TLabel;
    RzBmpButton1: TRzBmpButton;
    btnPostClose: TButton;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    Panel3: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    PageTakeItems: TRzPageControl;
    tbsItems: TRzTabSheet;
    dxStocktakeDemanderItems: TdxDBGrid;
    tbs_Remarks: TRzTabSheet;
    RzDBNotesField: TRzDBMemo;
    tbsHistory: TRzTabSheet;
    dxStocktakeDemanderHistory: TdxDBGrid;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PopMenuPrint: TPopupMenu;
    Label79: TLabel;
    Label11: TLabel;
    cmbStockCapturedBy_str: TwwDBLookupCombo;
    cmbVerifiedBy_str: TwwDBLookupCombo;
    cmbStockCaptured_dat: TwwDBDateTimePicker;
    cmbVerifiedDate_Dat: TwwDBDateTimePicker;
    cmbReason_str: TRzDBComboBox;
    Label2: TLabel;
    atnSaveAndClose: TAction;
    dxStocktakeDemanderItemsFullPackQty_int: TdxDBGridMaskColumn;
    dxStocktakeDemanderItemsBrokenPackQty_dbl: TdxDBGridMaskColumn;
    dxStocktakeDemanderItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dxStocktakeDemanderItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    dxStocktakeDemanderItemsICN_str: TdxDBGridColumn;
    dxStocktakeDemanderItemsNSN_str: TdxDBGridColumn;
    dxStocktakeDemanderItemsECN_str: TdxDBGridColumn;
    dxStocktakeDemanderItemsDescription_str: TdxDBGridMaskColumn;
    dxStocktakeDemanderHistoryDescription_str: TdxDBGridMaskColumn;
    dxStocktakeDemanderHistoryDate_dat: TdxDBGridDateColumn;
    dxStocktakeDemanderHistoryType_str: TdxDBGridMaskColumn;
    dxStocktakeDemanderHistoryUserName_str: TdxDBGridMaskColumn;
    AddDemanderItems1: TMenuItem;
    atnAddSingleItem1: TMenuItem;
    N1: TMenuItem;
    RemoveAllItems1: TMenuItem;
    PrintMainReport1: TMenuItem;
    PrintAnomalies1: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atnColSelectExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
var
  DemanderStocktakingDetailFrm: TDemanderStocktakingDetailFrm;

implementation

uses DemanderStocktakingUDM, RxSolutionUFrm,  RxSolutionSecurityClass, DialogGridColumnSelectorUFrm;

{$R *.dfm}

procedure TDemanderStocktakingDetailFrm.FormCreate(Sender: TObject);
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

  PageTakeItems.Height := Height - (Panel1.Height + Panel3.Height + Panel4.Height + Panel2.Height + 10);

end;

procedure TDemanderStocktakingDetailFrm.FormShow(Sender: TObject);
var
 atnBrowse, vDisable, prvIsRepPosted, prvIsRepLocked : boolean;
 i: integer;
begin
 //********** Set display setting

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_DEMANDERSTOCKTAKING) = USER_BROWSER);
 //********** Check if current record has been posted and checked out
 with DemanderStocktakingDM.qryStocktakeWorker do
  begin
  prvIsRepPosted := FieldByName('Posted_bol').AsBoolean;
  prvIsRepLocked := (FieldByName('CheckedOut_bol').Asboolean and not True {DemanderTransferDM.IsLockedBySameUser});
  end;

 vDisable := not (prvIsRepPosted or prvIsRepLocked or atnBrowse);

 //********** Updated display labels
 lblBrowseOnly.Visible := atnBrowse;
 lblPosted.Visible := prvIsRepPosted;

 //********** Disable header drop down is necessary
 pnlHeaderBackground.Enabled := vDisable;

 //********** Disable grid column if posted or checked out
 with dxStocktakeDemanderItems do
  for i:= 0 to ColumnCount -1 do
   if (Columns[i].FieldName = 'FullPackQty_int') or
      (Columns[i].FieldName = 'BrokenPackQty_dbl') then
      Columns[i].DisableEditor := (not vDisable);

 //********** Disable Editing Actions if necessary
 DemanderStocktakingDM.atnDeleteAllItems.Enabled := vDisable;
 DemanderStocktakingDM.AtnAddDemanderItems.Enabled := vDisable;
 DemanderStocktakingDM.atnDeleteItem.Enabled := vDisable;
 DemanderStocktakingDM.atnAddSingleItem.Enabled := vDisable;
 DemanderStocktakingDM.atnPostAndClose.Enabled := vDisable;

end;

procedure TDemanderStocktakingDetailFrm.atnColSelectExecute(
  Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dxStocktakeDemanderItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;            


end.

unit CreditUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  ActnList, StdCtrls, Menus, ExtCtrls, RzBmpBtn, ComCtrls, ElPopBtn,
  DBActns, RzLabel;

type
  TCreditFrm = class(TForm)
    Panel7: TPanel;
    dbgCredits: TdxDBGrid;
    dbgCreditsCredit_dat: TdxDBGridColumn;
    dbgCreditsCredit_str: TdxDBGridColumn;
    dbgCreditsPosted_bol: TdxDBGridCheckColumn;
    dbgCreditsPosted_dat: TdxDBGridColumn;
    dbgCreditsDemander_Str: TdxDBGridColumn;
    dbgCreditsItemsNo_int: TdxDBGridColumn;
    dbgCreditsTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgCreditsVoucherNo_str: TdxDBGridColumn;
    dbgCreditsReturnedBy_str: TdxDBGridColumn;
    dbgCreditsReceivedBy_str: TdxDBGridColumn;
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
    ActionList1: TActionList;
    atnAddNewCredit: TAction;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    atnViewCredit: TAction;
    atnColumnSelector: TAction;
    atnUnLockCredit: TAction;
    PopupMenu1: TPopupMenu;
    AddReturnsOut1: TMenuItem;
    EditReturnsOut1: TMenuItem;
    N2: TMenuItem;
    PrintNote1: TMenuItem;
    N1: TMenuItem;
    UnLockRecord1: TMenuItem;
    PopPrintMenu: TPopupMenu;
    PrintReturnOut1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnViewCreditExecute(Sender: TObject);
    procedure atnAddNewCreditExecute(Sender: TObject);
    procedure atnUnLockCreditExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FRecordUnlocking : Boolean;
  public
    { Public declarations }
  end;

var
  CreditFrm: TCreditFrm;

implementation

uses RxSolutionUFrm, RxSolutionSecurityClass,
DialogGridColumnSelectorUFrm, CreditsUDm, CreditsDetailUFrm;

{$R *.dfm}


procedure TCreditFrm.FormShow(Sender: TObject);
 const
  cbuf = 1;
var
 atnEnabled: Boolean;
 vDetFormSize  :TRect;
begin

 vDetFormSize := Screen.WorkAreaRect;
 Left    := vDetFormSize.Left + cbuf;
 Top     := vDetFormSize.Top + cBuf;
 Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
 Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

 dbgCredits.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
 RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);

 dteStart.Date   := Now - 60;
 dteEnd.Date     := Now;
 //send the filter here
 CreditsDM.DataConnect(dteStart.Date, dteEnd.Date);

 with RxSolutionFrm.Security do
  atnEnabled := GetUserAccessLevel(MODULE_CREDITS) > USER_BROWSER;
 //SM
 with RxSolutionFrm.Security do
  FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

 atnAddNewCredit.Enabled := atnEnabled;
 CreditsDm.atnUnLockReturnsMain.Visible := FRecordUnlocking;
 
end;

procedure TCreditFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgCredits;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TCreditFrm.dteStartChange(Sender: TObject);
begin

if CreditsDM.qryCreditCatalog.Active then
 CreditsDM.DataConnect(dteStart.Date, dteEnd.Date);

end;

procedure TCreditFrm.dteEndChange(Sender: TObject);
begin

if CreditsDM.qryCreditCatalog.Active then
 CreditsDM.DataConnect(dteStart.Date, dteEnd.Date);

end;

procedure TCreditFrm.atnViewCreditExecute(Sender: TObject);
begin

 if not (CreditsDm.IsRecordLocked) then
  begin
   if (CreditsDM.qryCreditCatalog.RecordCount > 0) then
    begin
    CreditsDM.EditCredit;
    CreditsDetailFrm.ShowModal;
    end;
  end
 else
  ShowMessage('Record is being used by another user!');
   
end;

procedure TCreditFrm.atnAddNewCreditExecute(Sender: TObject);
begin

  CreditsDM.AddCredit;
  CreditsDetailFrm.ShowModal;
  
end;

procedure TCreditFrm.atnUnLockCreditExecute(Sender: TObject);
begin
 with CreditsDm do
  begin
  UnLockReturns;
  end;
end;

procedure TCreditFrm.FormResize(Sender: TObject);
begin
 dbgCredits.Height := Panel7.Height - (Panel1.Height + pnlToolBar.Height);
 RzLabel1.Width := Panel1.Width - (RzBmpButton1.Width);
end;

end.

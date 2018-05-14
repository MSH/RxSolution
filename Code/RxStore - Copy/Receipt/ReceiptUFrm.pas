unit ReceiptUFrm;
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
  Windows, Messages, ComCtrls, StdCtrls, ImgList, Controls, DBActns, Classes,
  ActnList, Menus, Graphics, ExtCtrls, SysUtils, Forms, Dialogs, Buttons, DBCtrls,


  RzBmpBtn, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, ElPopBtn, RzLabel;



const
 EDGEMARGIN   = 10;
 DBGROWHEIGHT = 18;

type

  TReceiptFrm = class(TForm)
    PopupMenu1: TPopupMenu;
    PrintOutstandingItems1: TMenuItem;
    PrintReceivingReport1: TMenuItem;
    ActionList1: TActionList;
    atnPrintReceipt: TAction;
    atnPrintReceiptOutstanding: TAction;
    ImageList1: TImageList;
    pnlReceiptBackground: TPanel;
    shpReceiptList: TShape;
    pnlToolBar: TPanel;
    elsbtn_Last: TElSpeedButton;
    elsbtn_PageDown: TElSpeedButton;
    elsbtn_PageUp: TElSpeedButton;
    elsbtn_First: TElSpeedButton;
    elsbtn_Edit: TElSpeedButton;
    elsbtn_Add: TElSpeedButton;
    Shape4: TShape;
    Panel4: TPanel;
    Panel7: TPanel;
    atnFilterApply: TAction;
    atnReceiptListFirst: TDataSetFirst;
    atnReceiptListPrior: TDataSetPrior;
    atnReceiptListNext: TDataSetNext;
    atnReceiptListLast: TDataSetLast;
    atnReceiptListPageUp: TAction;
    atnReceiptListPageDown: TAction;
    elsbtn_Next: TElSpeedButton;
    elsbtn_Prior: TElSpeedButton;
    atnReceiptListEditRecord: TAction;
    atnReceiptListAddRecord: TAction;
    atnReceiptListDelete: TAction;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    PrintselectedReceivingReport1: TMenuItem;
    PrintselectedreceivingreportOutstandingItems1: TMenuItem;
    Panel3: TPanel;
    dteStart: TDateTimePicker;
    Panel5: TPanel;
    dteEnd: TDateTimePicker;
    dbgReceipts: TdxDBGrid;
    dbgReceiptsReceiptNo_str: TdxDBGridColumn;
    dbgReceiptsReceiptDate_dat: TdxDBGridDateColumn;
    dbgReceiptsSupplier_str: TdxDBGridColumn;
    dbgReceiptsSystemStore_str: TdxDBGridColumn;
    dbgReceiptsItemsNo_int: TdxDBGridMaskColumn;
    dbgReceiptsTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgReceiptsActivated_bol: TdxDBGridCheckColumn;
    dbgReceiptsActivated_dat: TdxDBGridDateColumn;
    dbgReceiptsOrderRef_Str: TdxDBGridColumn;
    Panel1: TPanel;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    atnReceiptList_MarkAllItemsComplete: TAction;
    Markallascomplete1: TMenuItem;
    N3: TMenuItem;
    atnDisplayCols: TAction;
    ElSpeedButton19: TElSpeedButton;
    RzBmpButton1: TRzBmpButton;
    dbgReceiptsInvoiceNo_str: TdxDBGridColumn;
    lblReceipts: TRzLabel;
    antUnLockReceipt: TAction;
    UnLockReceipt1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure atnPrintReceiptExecute(Sender: TObject);
    procedure atnPrintReceiptOutstandingExecute(Sender: TObject);
    procedure atnFilterApplyExecute(Sender: TObject);
    procedure pnlReceiptBackgroundResize(Sender: TObject);
    procedure atnReceiptListPageUpExecute(Sender: TObject);
    procedure atnReceiptListPageDownExecute(Sender: TObject);
    procedure atnReceiptListEditRecordExecute(Sender: TObject);
    procedure atnReceiptListAddRecordExecute(Sender: TObject);
    procedure atnReceiptListDeleteExecute(Sender: TObject);
    procedure dteStartCloseUp(Sender: TObject);
    procedure dteEndCloseUp(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dbgReceiptsColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure atnReceiptList_MarkAllItemsCompleteExecute(Sender: TObject);
    procedure atnDisplayColsExecute(Sender: TObject);
    procedure antUnLockReceiptExecute(Sender: TObject);
  private
    FDataPage : integer;
    FResizing : boolean;
    FColumnsSorted :Boolean;
    FRecordUnlocking : Boolean;
    procedure ResizeListComponents;
    
  protected
    {$IFDEF RXSTOREBUILD}
    procedure CreateParams(var Params: TCreateParams);override;                 // Removes border from the form
    {$ENDIF}
  public
    { Public declarations }
  end;

var
  ReceiptFrm: TReceiptFrm;

implementation

uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,

  {$ENDIF}

  MyApplicationUtilities,
  MainUDM,
  ReceiptUDm;


{$R *.DFM}


{$IFDEF RXSTOREBUILD}
procedure TReceiptFrm.CreateParams(var Params: TCreateParams); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:CreateParams---------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  inherited CreateParams(Params);                                               // Call general params
  Params.Style := WS_EX_CLIENTEDGE;                                             // Removes the border from the form edge.
end; (*................................................................*)(*end*)(*...........................................*)
{$ENDIF}


procedure TReceiptFrm.FormCreate(Sender: TObject);
var
  btnEnabled: Boolean;
begin
  Inherited;
  ReceiptDm := TReceiptDm.Create(Self);
  dteStart.DateTime := Date - 30;                                                         // Default variables for filtering
  dteEnd.DateTime   := Date;                                                              // "

  FDataPage := 1;



  if Assigned(ReceiptDm) then
    with ReceiptDm do
      FilterSuppliers(dteStart.DateTime, dteEnd.DateTime);

  FColumnsSorted := True;

  {$IFDEF RXSTOREBUILD}
  btnEnabled := SystemSecurityDM.GetUserRights(SYSTEM_RECEIPTS) > USER_BROWSER;
  {$ELSE}
  with RxSolutionFrm.Security do
    btnEnabled := GetUserAccessLevel(MODULE_STORE_RECEIPTS) > USER_BROWSER;
  {$ENDIF}

  with RxSolutionFrm.Security do
   FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

  atnReceiptListAddRecord.Enabled := btnEnabled;
  atnReceiptListDelete.Enabled := btnEnabled;
  atnReceiptList_MarkAllItemsComplete.Enabled  := btnEnabled;
  atnReceiptListEditRecord.Enabled  := btnEnabled;
  antUnLockReceipt.Visible := FRecordUnlocking;
  
end;


procedure TReceiptFrm.FormDestroy(Sender: TObject);
begin
  ReceiptDm.Free;
  Inherited;
end;

procedure TReceiptFrm.atnPrintReceiptExecute(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      begin
      PrintReceiptReport;
      end;
end;


procedure TReceiptFrm.atnPrintReceiptOutstandingExecute(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      PrintReceiptReportOutStanding;

end;


procedure TReceiptFrm.atnFilterApplyExecute(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      FilterSuppliers(dteStart.DateTime, dteEnd.DateTime);

end;


procedure TReceiptFrm.ResizeListComponents;

var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)
  LockWindowUpdate(Handle);                                                     // Do everything we can to prevent screen
                                                                                // flicker.  Handle belongs to the form (Form.Handle)
  FResizing := True;
  with pnlReceiptBackground do                                          // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    end; (*with pnlSuppliersListBackground do*)

  with shpReceiptList do                                                    // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN div 2;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpSuppliersList do*)

  with pnlToolBar do
    begin
    Top     := 60;
    Left    := EDGEMARGIN;
    Width   := NewWidth - (EDGEMARGIN + (EDGEMARGIN div 2));
    Height  := 26;
    end; (*with shpSuppliersList do*)


  with lblReceipts do
    begin
    Left    := EDGEMARGIN + 43;
    Top     := EDGEMARGIN;
    Width   := NewWidth - (EDGEMARGIN * 2);
    end;


  with dbgReceipts do
    begin
    Left    := EDGEMARGIN;
    Top     := 90;
    Width   := NewWidth - (EDGEMARGIN + (EDGEMARGIN div 2));
    Height  := NewHeight - (Top + EDGEMARGIN);
    end;

  LockWindowUpdate(0);                                                          // Unlock the screen updater
  FResizing := False;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TReceiptFrm.pnlReceiptBackgroundResize(Sender: TObject);
begin
  ResizeListComponents;
end;

procedure TReceiptFrm.atnReceiptListPageUpExecute(Sender: TObject);
begin

  with dbgReceipts.DataSource.DataSet do
    if Active then
      if not BOF then
        begin
        FDataPage := (dbgReceipts.Height div DBGROWHEIGHT) -2;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(-FDataPage);
        end;
end;


procedure TReceiptFrm.atnReceiptListPageDownExecute(Sender: TObject);
begin

  with dbgReceipts.DataSource.DataSet do
    if Active then
      if not EOF then
        begin
        FDataPage := (dbgReceipts.Height div DBGROWHEIGHT) -2;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(FDataPage);
        end;
end;

procedure TReceiptFrm.atnReceiptListEditRecordExecute(Sender: TObject);
begin
   if atnReceiptListEditRecord.Enabled then
    if dbgReceipts.DataSource.DataSet.RecordCount > 0 then
      if Assigned(ReceiptDm) then
        with ReceiptDm do
         begin
         if not (ReceiptDm.IsReceiptLocked) then
          EditReceipt
         else
          ShowMessage('Record is being used by another user!'); 
         end;

end;

procedure TReceiptFrm.atnReceiptListAddRecordExecute(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      AddReceipt;
end;

procedure TReceiptFrm.atnReceiptListDeleteExecute(Sender: TObject);
begin
  if Assigned(ReceiptDm) then
    with ReceiptDm do
      DeleteReceipt;
end;

procedure TReceiptFrm.dteStartCloseUp(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      FilterSuppliers(dteStart.DateTime, dteEnd.DateTime);

end;

procedure TReceiptFrm.dteEndCloseUp(Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      FilterSuppliers(dteStart.DateTime, dteEnd.DateTime);

end;

procedure TReceiptFrm.Timer1Timer(Sender: TObject);
begin

  if FColumnsSorted then
    begin
    DBdxSortDataSet(dbgReceipts);
    FColumnsSorted := False;
    end;

end;

procedure TReceiptFrm.dbgReceiptsColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  FColumnsSorted := True;
end;

procedure TReceiptFrm.atnReceiptList_MarkAllItemsCompleteExecute(
  Sender: TObject);
begin

  if Assigned(ReceiptDm) then
    with ReceiptDm do
      MarkAllItemsAsComplete(0);

end;

procedure TReceiptFrm.atnDisplayColsExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;

begin

  SelectColumns := TColumnSelector.Create;
  try
  GridCols := dbgReceipts;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TReceiptFrm.antUnLockReceiptExecute(Sender: TObject);
begin

 ReceiptDm.UnLockRecordMain;

end;

end.

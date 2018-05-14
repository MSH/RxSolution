unit RepackBatchSelectUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, dxExEdtr, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxCntner, ElPopBtn, ExtCtrls, ActnList, Menus,
  DBActns, DB, ADODB;

type
  TRepackBatchSelectFrm = class(TForm)
    Cancel: TButton;
    Panel1: TPanel;
    ActionList1: TActionList;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1ProductBatch_ID: TdxDBGridMaskColumn;
    dxDBGrid1PackCost: TdxDBGridCurrencyColumn;
    PopupMenu1: TPopupMenu;
    atnRequeryShowAll1: TMenuItem;
    Button1: TButton;
    atnSaveClose: TAction;
    dxDBGrid1ProductCode_ID: TdxDBGridColumn;
    edtIssued: TEdit;
    dxDBGrid1QtyUsed_dbl: TdxDBGridColumn;
    Label2: TLabel;
    lblECN: TLabel;
    lblICN: TLabel;
    atnCancelClose: TAction;
    lblDescrip: TLabel;
    dxDBGrid1BatchQty: TdxDBGridColumn;
    Panel3: TPanel;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    atnDataSetPost: TDataSetPost;
    atnDataSetCancel: TDataSetCancel;
    Timer1: TTimer;
    stpRemveItems: TADOQuery;
    qryTotalIssued: TADOQuery;
    lblAvailable: TLabel;
    Label3: TLabel;
    dxDBGrid1SourcePortion_dbl: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure atnSaveCloseExecute(Sender: TObject);
    procedure atnCancelCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure dxDBGrid1QtyUsed_dblChange(Sender: TObject);
    procedure atnPostRecordExecute(Sender: TObject);
    procedure atnCancelReceordExecute(Sender: TObject);
  private
    { Private declarations }
    procedure restartTimer;
    procedure CancelAll;
    procedure SaveOnlyIssued;
    procedure DeleteItemFromReq(vReqID: integer; vBatchID : integer);

  public
    descrip, ecn, icn, bin : string;
    ProductID, PrepackingID, requestedQty, totalIssued, BatchOnHold, BatchIssued, BatchQty, Available : integer;
    function BatchIDIssued : integer;
    procedure UpdateTotals;
   

  end;

var
  RepackBatchSelectFrm: TRepackBatchSelectFrm;

implementation

uses MainUDM, PrepackingUDM;

{$R *.dfm}

procedure TRepackBatchSelectFrm.restartTimer;
begin
        {
 with Timer1 do
  begin
  Enabled       := False;
  Interval      := 600000;
  Enabled       := True;
  end;
          }
end;

procedure TRepackBatchSelectFrm.FormShow(Sender: TObject);
var
 i : integer;
begin
 Timer1.Enabled := True;
 
 totalIssued    := 0;
 BatchIssued    := 0;
 Available      := 0;
 requestedQty   := 0;

 descrip := PrepackingDM.qryPrepackingItems.FieldByName('Description_str').AsString;
 ecn    := PrepackingDM.qryPrepackingItems.FieldByName('ECN_str').AsString;
 icn    := PrepackingDM.qryPrepackingItems.FieldByName('ICN_str').AsString;


 ProductID := PrepackingDM.qryPrepackingItems.FieldByName('ProductCode_ID').AsInteger;
 PrepackingID := PrepackingDM.qryPrepackingItems.FieldByName('Prepacking_ID').AsInteger;

 //requestedQty := PrepackingDM.tmpItems.fieldByName('QtyOrdered_int').AsInteger;
 
 //BatchQty := PrepackingDM.tmpItems.fieldByName('BatchQty').AsInteger;

 BatchOnHold := PrepackingDM.TotalOnHoldBatch;

 RepackBatchSelectFrm.Caption := 'Available Product Batches for '+ descrip;

 lblECN.Caption := ecn;
 lblICN.Caption := icn;
 lblDescrip.Caption := descrip;

 //edtRequested.Text := IntToStr(requestedQty);

 UpdateTotals;

 dxDBGrid1.SetFocus;
 i := 0;
 dxDBGrid1.FocusedColumn := 3;       


end;

procedure TRepackBatchSelectFrm.atnSaveCloseExecute(Sender: TObject);
begin
with PrepackingDM.tmpItems do
 begin
 if not (state in [dsEdit, dsInsert]) then
  Edit;
 Post;
 end;

 SaveOnlyIssued;
 Close;

end;

procedure TRepackBatchSelectFrm.atnCancelCloseExecute(Sender: TObject);
begin
  CancelAll;
  Close;
end;

procedure TRepackBatchSelectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Timer1.Enabled := False;
end;

procedure TRepackBatchSelectFrm.Timer1Timer(Sender: TObject);
begin
 //Cancel all tranasctions
 Close;
 
end;

procedure TRepackBatchSelectFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 restartTimer;
end;

procedure TRepackBatchSelectFrm.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 restartTimer;
end;

procedure TRepackBatchSelectFrm.CancelAll;
var
 vCount : integer;
begin
 vCount := 0;

 with PrepackingDM.tmpItems do
  begin
  First;
  vCount := RecordCount;
  while not Eof do
   begin
   if vCount = 1 then
    begin
    Edit;
    FieldByName('ProductBatch_ID').Value := Null;
    FieldByName('BatchNumber_str').Value := Null;
    FieldByName('Expiry_dat').Value      := Null;
    FieldByName('QtyUsed_dbl').Value   := 0;
    Post;
    end
   else
    DeleteItemFromReq(FieldByName('Prepacking_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);
   vCount := vCount - 1;
   Next;
   end;

  end;
end;

procedure TRepackBatchSelectFrm.SaveOnlyIssued;
var
 vCount : integer;
begin
 vCount := 0;
 with PrepackingDM.tmpItems do
  begin
  First;

  while not Eof do
   begin
   if ((vCount = 0) and (totalIssued =0)) then
    begin
    Edit;
    FieldByName('ProductBatch_ID').Value := Null;
    FieldByName('BatchNumber_str').Value := Null;
    FieldByName('Expiry_dat').Value      := Null;
    FieldByName('QtyUsed_dbl').Value   := 0;
    Post;
    end;

   if ((vCount = 0) AND (totalIssued > 0) AND (FieldByName('QtyUsed_dbl').AsInteger = 0)) then
    DeleteItemFromReq(FieldByName('Prepacking_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);

   if ((vCount > 0) AND (FieldByName('QtyUsed_dbl').AsInteger = 0))  then
    DeleteItemFromReq(FieldByName('Prepacking_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);

   vCount := vCount + 1;
   UpdateTotals;
   Next;
   end;
  end; 
end;

procedure TRepackBatchSelectFrm.DeleteItemFromReq(vReqID: integer; vBatchID : integer);
begin

  with stpRemveItems do
   begin
   Parameters.ParamByName('PrepackingID').Value         := vReqID;
   Parameters.ParamByName('ProductBatchID').Value       := vBatchID;
   ExecSQL;
   end;

end;

procedure TRepackBatchSelectFrm.UpdateTotals;
begin
 
 with qryTotalIssued do
  begin
  Close;
  Parameters.ParamByName('PrepackingID').Value  := PrepackingID;
  Parameters.ParamByName('ProductCodeID').Value := ProductID;
  Open;

  if recordCount > 0 then
   totalIssued := fieldByName('TotQtyIssued').AsInteger;
  end;

  edtIssued.Text := IntToStr(totalIssued);
  BatchQty := PrepackingDM.tmpItems.fieldByName('BatchQty').AsInteger;

  BatchOnHold := PrepackingDM.TotalOnHoldBatch;
 // BatchOnHold := 0;
 // BatchIssued := BatchIDIssued;
  BatchIssued := 0;
  Available := BatchQty - BatchOnHold + BatchIssued;
  if Available < 0 then
   Available := 0;
  //showmessage('issued: '+IntToStr(BatchIDIssued) + ' on hold: ' +IntToStr(BatchOnHold)+' qty: '+IntToStr(BatchQty));
  lblAvailable.Caption := IntToStr(Available);

end;

function TRepackBatchSelectFrm.BatchIDIssued: integer;
begin

 if PrepackingDM.tmpItems.Active then
  Result := PrepackingDM.tmpItems.FieldByName('QtyUsed_dbl').AsInteger
 else
  Result := 0;

end;

procedure TRepackBatchSelectFrm.dxDBGrid1Click(Sender: TObject);
begin
 UpdateTotals;
end;

procedure TRepackBatchSelectFrm.dxDBGrid1QtyUsed_dblChange(
  Sender: TObject);
begin
 UpdateTotals;
end;

procedure TRepackBatchSelectFrm.atnPostRecordExecute(Sender: TObject);
begin
 with PrepackingDM.tmpItems do
  begin
  if state in [dsEdit, dsInsert] then
   Post;
  end;
end;

procedure TRepackBatchSelectFrm.atnCancelReceordExecute(Sender: TObject);
begin
 with PrepackingDM.tmpItems do
  begin
  if state in [dsEdit, dsInsert] then
   Cancel;
  end;
end;

end.

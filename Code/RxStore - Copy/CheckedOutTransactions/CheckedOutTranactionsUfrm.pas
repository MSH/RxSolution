unit CheckedOutTranactionsUfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid,
  dxTL, dxCntner, ActnList, dxExEdtr;

type
  TCheckedOutTransactionsfrm = class(TForm)
    qryCheckedOutRequisitions: TADOQuery;
    dsRequisitions: TDataSource;
    Requisitions: TGroupBox;
    dbgRequisitions: TdxDBGrid;
    dbgRequisitionsRequisition_str: TdxDBGridColumn;
    dbgRequisitionsRequisition_dat: TdxDBGridDateColumn;
    dbgRequisitionsDemander_Str: TdxDBGridColumn;
    dbgRequisitionsSystemStore_str: TdxDBGridColumn;
    dbgRequisitionsItemsNo_int: TdxDBGridMaskColumn;
    dbgRequisitionsActivated_bol: TdxDBGridCheckColumn;
    dbgRequisitionsActivated_dat: TdxDBGridDateColumn;
    dbgRequisitionsItemsComplete_bol: TdxDBGridCheckColumn;
    dbgRequisitionsPOReference_str: TdxDBGridColumn;
    dbgRequisitionsCheckedOut_bol: TdxDBGridColumn;
    dbgRequisitionsCheckedOut_dat: TdxDBGridColumn;
    qryCheckedOutOrders: TADOQuery;
    dsOrders: TDataSource;
    stp_updateRequistions: TADOQuery;
    ADOConnection1: TADOConnection;
    GroupBox2: TGroupBox;
    ActionList1: TActionList;
    stp_updateOrders: TADOQuery;
    dbgOrders: TdxDBGrid;
    dbgOrdersOrderNo_str: TdxDBGridColumn;
    dbgOrdersOrder_dat: TdxDBGridDateColumn;
    dbgOrdersSupplier_Str: TdxDBGridColumn;
    dbgOrdersSystemStore_str: TdxDBGridColumn;
    dbgOrdersItemsNo_int: TdxDBGridMaskColumn;
    dbgOrdersActivated_dat: TdxDBGridDateColumn;
    dbgOrdersActivated_bol: TdxDBGridCheckColumn;
    dbgOrdersVoucherNo_str: TdxDBGridColumn;
    dbgOrdersCheckedOut_dat: TdxDBGridColumn;
    dbgOrdersCheckedOut_bol: TdxDBGridColumn;
    Button1: TButton;
    atnUpdateRequisitions: TAction;
    atnUpdateAllOrders: TAction;
    Button2: TButton;
    atnSaveRequisitions: TAction;
    Button3: TButton;
    Button4: TButton;
    atnSaveOrders: TAction;
    procedure atnSaveRequisitionsExecute(Sender: TObject);
    procedure atnUpdateRequisitionsExecute(Sender: TObject);
    procedure atnUpdateAllOrdersExecute(Sender: TObject);
    procedure atnSaveOrdersExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CheckTransactions;
    procedure OpenRequisitions;
    procedure SaveRequisitions;
    procedure OpenOrders;
    procedure SaveOrders;
    procedure UnCheckAllRequisitions;
    procedure UnCheckAllOrders;
    procedure CloseAllTables;

  end;

var
  CheckedOutTransactionsfrm: TCheckedOutTransactionsfrm;

implementation

uses MainUDM;

{$R *.dfm}

procedure TCheckedOutTransactionsfrm.CheckTransactions;
var
  CheckedOutTransactionsfrm : TCheckedOutTransactionsfrm;
begin

 CheckedOutTransactionsfrm := TCheckedOutTransactionsfrm.Create(Application);
 ADOConnection1.Connected := False;
 ADOConnection1.ConnectionString :=  MainDM.ADOMainDBConnection.ConnectionString;
 OpenRequisitions;
 OpenOrders;
 if (qryCheckedOutRequisitions.RecordCount > 0) or (qryCheckedOutOrders.RecordCount > 0) then
  CheckedOutTransactionsfrm.ShowModal;

 CheckedOutTransactionsfrm.Free;
 
end;

procedure TCheckedOutTransactionsfrm.OpenRequisitions;
begin
 with qryCheckedOutRequisitions do
  begin
  if not Active then
   Active := True;
  end;
end;

procedure TCheckedOutTransactionsfrm.SaveRequisitions;
begin
 with qryCheckedOutRequisitions do
  begin
  if State in [dsEdit] then
   Post;
  end;
end;

procedure TCheckedOutTransactionsfrm.SaveOrders;
begin
 with qryCheckedOutOrders do
  begin
  if State in [dsEdit] then
   Post;
  end;
end;

procedure TCheckedOutTransactionsfrm.OpenOrders;
begin
 with qryCheckedOutOrders do
  begin
  if not Active then
   Active := True;
  end;
end;

procedure TCheckedOutTransactionsfrm.CloseAllTables;
begin

 with qryCheckedOutRequisitions do
  begin
  if Active then
   begin
   if State in [dsEdit] then
    Post;
   Close;
   end;
  end;

 with qryCheckedOutOrders do
  begin
  if Active then
   begin
   if State in [dsEdit] then
    Post;
   Close;
   end;
  end;

end;


procedure TCheckedOutTransactionsfrm.UnCheckAllRequisitions;
begin
 with stp_updateRequistions do
  begin
  ExecSQL;
  end;
end;

procedure TCheckedOutTransactionsfrm.UnCheckAllOrders;
begin
 with stp_updateOrders do
  begin
  ExecSQL;
  end;
end;

procedure TCheckedOutTransactionsfrm.atnSaveRequisitionsExecute(
  Sender: TObject);
begin
 SaveRequisitions;
end;

procedure TCheckedOutTransactionsfrm.atnUpdateRequisitionsExecute(
  Sender: TObject);
begin
 UnCheckAllRequisitions;
end;

procedure TCheckedOutTransactionsfrm.atnUpdateAllOrdersExecute(
  Sender: TObject);
begin
 UnCheckAllOrders;
end;

procedure TCheckedOutTransactionsfrm.atnSaveOrdersExecute(Sender: TObject);
begin
 SaveOrders;
end;

procedure TCheckedOutTransactionsfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 CloseAllTables;
end;

end.

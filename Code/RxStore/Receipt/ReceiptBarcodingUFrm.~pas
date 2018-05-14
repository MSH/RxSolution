unit ReceiptBarcodingUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB, RzLabel, RzDBLbl, RzEdit,
  ActnList, ElPopBtn;

type
  TReceiptBarcodingFrm = class(TForm)
    dxDBReceipt_Itemss: TdxDBGrid;
    dxDBReceipt_ItemssICN_str: TdxDBGridColumn;
    dxDBReceipt_ItemssECN_str: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssQtyReceived_int: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssNSN_str: TdxDBGridMaskColumn;
    dxDBReceipt_ItemssExpiry_dat: TdxDBGridDateColumn;
    dxDBReceipt_ItemssBatchNumber_str: TdxDBGridColumn;
    editPanel: TPanel;
    stp_AddProduct: TADOStoredProc;
    pnlReceiptHeaderBackground: TPanel;
    Label27: TLabel;
    Label35: TLabel;
    dbtOrderRef: TDBText;
    dbtSystemStore: TDBText;
    dbtSupplier: TDBText;
    Label5: TLabel;
    dxDBReceipt_ItemssDescription_str: TdxDBGridColumn;
    Label4: TLabel;
    qryIsProductOnOrder: TADOQuery;
    ActionList1: TActionList;
    atnClose: TAction;
    Label2: TLabel;
    Label3: TLabel;
    atnUpdateProductBarcode: TAction;
    ElSpeedButton19: TElSpeedButton;
    atnDisplayCols: TAction;
    Panel1: TPanel;
    lblBatch: TLabel;
    edtBatchNumber: TRzEdit;
    edtExpiryDate: TRzDateTimeEdit;
    lblExpiry: TLabel;
    edtCost: TRzNumericEdit;
    edtQTY: TRzNumericEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtBarcode: TEdit;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    Panel3: TPanel;
    Shape4: TShape;
    ElSpeedButton1: TElSpeedButton;
    Button1: TButton;
    dxDBReceipt_ItemssPackCost_mon: TdxDBGridCurrencyColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtBarcodeExit(Sender: TObject);
    procedure edtQTYExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtExpiryDateExit(Sender: TObject);
    procedure atnCloseExecute(Sender: TObject);
    procedure atnDisplayColsExecute(Sender: TObject);
    procedure atnUpdateProductBarcodeExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    function AddProductDetail(productCodeID: integer) : Boolean;
    function GetProductDetail(barCode: string): Boolean;
    function CheckBatchExpiry: Boolean;
    procedure SearchProduct;
    procedure SetDisplay;
    function WasProductOrdered(productCodeID: integer) : Boolean;
    procedure UpdateUnknownBarcode;


  public
    { Public declarations }
  end;

var
  ReceiptBarcodingFrm: TReceiptBarcodingFrm;

implementation

uses ReceiptUDm, TabEnter, MainUDM, ProductUpdateBarcodeUFrm,
  DialogGridColumnSelectorUFrm;

{$R *.dfm}


procedure TReceiptBarcodingFrm.SetDisplay;
var
 Posted: Boolean;
begin

 //******** Close Barcode table if open
 with MainDm.stpProductIDByBarcode do
  begin
  if Active then
   Close;
  end;

 //******** Clear Fields
 edtBarcode.Clear;
 edtBatchNumber.Clear;
 edtExpiryDate.Clear;
 edtQTY.Value                   := 1;
 edtCost.Value                  := 0.00;

 //******** Check if Receipt is posted
 with ReceiptDm.stpStockControlReceipt do
  begin
  Posted := FieldByName('activated_bol').AsBoolean;
  end;

 //******** Check if in Batch Management Mode or not
 if ReceiptDm.FUsesBatchManagement then
  begin
  //Grid Columns
  dxDBReceipt_ItemssExpiry_dat.Visible          := True;
  dxDBReceipt_ItemssBatchNumber_str.Visible     := True;
  //Edit Fields
  edtBatchNumber.Visible        := True;
  edtExpiryDate.Visible         := True;
  //Tab Stop / Order Settings
  edtBatchNumber.TabStop        := True;
  edtExpiryDate.TabStop         := True;
  edtBatchNumber.TabOrder       := 1;
  edtExpiryDate.TabOrder        := 2;
  edtCost.TabOrder              := 3;
  edtQTY.TabOrder               := 4;
  //Labels
  lblBatch.Visible              := True;
  lblExpiry.Visible             := True;
  end
 else
  begin
  //Grid Columns
  dxDBReceipt_ItemssExpiry_dat.Visible          := False;
  dxDBReceipt_ItemssBatchNumber_str.Visible     := False;
  //Edit Fields
  edtBatchNumber.Visible        := False;
  edtExpiryDate.Visible         := False;
  //Tab Stop / Order Settings
  edtBatchNumber.TabStop        := False;
  edtExpiryDate.TabStop         := False;
  edtCost.TabOrder              := 1;
  edtQTY.TabOrder               := 2;
  //Labels
  lblBatch.Visible              := False;
  lblExpiry.Visible             := False;
  end;

 //******** Enable and Disable Edit Fields
 if Posted then
  begin
  editPanel.Enabled := False;
  end;

 edtBarcode.SetFocus;

end;

function TReceiptBarcodingFrm.CheckBatchExpiry: Boolean;
begin

  if (edtBatchNumber.Text <> '') AND (edtExpiryDate.Date <> NULL) then
   Result := True
  else
   Result := False;

end;

function TReceiptBarcodingFrm.AddProductDetail(productCodeID: integer) : Boolean;
var
 OrderNOId, ReceiptNoId : integer;
 qty: integer;
 batchNo: string;
 expiry : TDateTime;
 packCost: Currency;
begin

  qty := StrToInt(edtQTY.Text);
  packCost := StrToCurr(edtCost.Text);
  
  //******* Batch Management Details
  if ReceiptDm.FUsesBatchManagement then
   begin
   batchNo := edtBatchNumber.Text;
   expiry  := edtExpiryDate.Date;
   end
  else
   begin
   batchNo := '';
//   expiry  := NULL;
   end;

  if (qty > 0) then
   begin
   //******* Add Product to Receipt Items
   with ReceiptDm.stpStockControlReceipt do
    begin
    OrderNOId   := FieldByName('OrderNo_ID').AsInteger;
    ReceiptNoId := FieldByName('ReceiptNo_ID').AsInteger;
    end;


   //***** if batch exists then add to qty received
   with ReceiptDm.stpStockControlReceiptItems do
    begin
    if Locate('BatchNumber_str', batchNo, []) then
     begin
     Edit;
     FieldByName('QtyReceived_int').AsInteger := FieldByName('QtyReceived_int').AsInteger + qty;
     Post;
     end
    else
     with stp_AddProduct do
      begin
      Parameters.ParamByName('@OrderID').Value            := OrderNoId;
      Parameters.ParamByName('@ReceiptID').Value          := ReceiptNoId;
      Parameters.ParamByName('@ProductCodeID').Value      := productCodeID;
      Parameters.ParamByName('@QTY').Value                := qty;
      Parameters.ParamByName('@BatchNumber').Value        := batchNo;

      //******** SM - Check if system in batch management mode; 
      if ReceiptDm.FUsesBatchManagement then
       Parameters.ParamByName('@ExpiryDate').Value         := expiry
      else
       Parameters.ParamByName('@ExpiryDate').Value         := NULL;

      Parameters.ParamByName('@Price').Value              := packCost;
      ExecProc;
      end;

    end;

   end;

 //****** Refresh Transaction Totals
 //****** SM 13 Oct 2013
  with ReceiptDm do
    begin
    UpDateReceiptTotals;
    end;

  Result := True;

end;

function TReceiptBarcodingFrm.WasProductOrdered(productCodeID: integer) : Boolean;
var
 OrderNOId: integer;
begin

 //********* Function Returns True if Item was Ordered on current Order
 with ReceiptDm.stpStockControlReceipt do
  OrderNOId   := FieldByName('OrderNo_ID').AsInteger;

 with qryIsProductOnOrder do
  begin
  Close;
  Parameters.ParamByName('ProductCode_ID').Value      := productCodeID;
  Parameters.ParamByName('OrderNo_ID').Value          := OrderNOId;
  Open;

  if recordCount > 0 then
     Result := True
  else
     Result := False;
  Close;
  end;  

end;

function TReceiptBarcodingFrm.GetProductDetail(barCode: string): Boolean;
begin

  Result := MainDm.GetProductDetail(barCode);

end;

procedure TReceiptBarcodingFrm.SearchProduct;
var
 _barCode: string;
begin

 //******* Execute Search Function
 edtQTY.Value := 0;

 _barCode := edtBarcode.Text;
 if GetProductDetail(_barCode) then
    begin
    //Set Cost Price
    edtCost.Text := MainDM.stpProductIDByBarcodeCost_mon.AsString;
    edtQTY.Value := 1;
    end
 else
    begin
    //*********** Add new barcode if not found.
    if edtBarcode.Text <> '' then
     if MessageDlg('Do you want to add this barcode?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then ReceiptDm.UpdateBarcode;

    edtBarcode.SetFocus;
    end;

end;

procedure TReceiptBarcodingFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := NextControl(ReceiptBarcodingFrm, Key);
end;

procedure TReceiptBarcodingFrm.edtBarcodeExit(Sender: TObject);
begin

 if (not Button1.Focused) then
 SearchProduct;

end;

procedure TReceiptBarcodingFrm.edtQTYExit(Sender: TObject);
begin

 //******** Check Batch Number Expiry
 if (not CheckBatchExpiry) and (ReceiptDm.FUsesBatchManagement) then
        begin
        MessageDlg('Please enter batch number and expiry date', mtError, [mbOk], 1);
        Abort;
        end;

 //******** Add product and QTY 
 if WasProductOrdered(MainDm.stpProductIDByBarcodeProductCode_ID.Value) then
        begin
        AddProductDetail(MainDm.stpProductIDByBarcodeProductCode_ID.Value);
         //******** Add Edit History
        ReceiptDm.AddEditHistory('ADDED', 'Adding product to receipt', 0);

        with ReceiptDm.stpStockControlReceiptItems do
        begin
        Close;
        Open;
        end;
        end
 else
        begin
        ReceiptDm.AddEditHistory('ADDED', 'Error: Scanned product was not ordered.', 0);
        MessageDlg('Product was not ordered!', mtError, [mbOk], 1);
        end;


 //Clear Previous Barcode
 SetDisplay;
// edtBarcode.SetFocus;
end;

procedure TReceiptBarcodingFrm.FormShow(Sender: TObject);
const
  cbuf = 0;
var
  vDetFormSize  :TRect;
begin
  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

 dxDBReceipt_Itemss.Height := Height - (pnlReceiptHeaderBackground.Height + Panel1.Height * 2);

  Panel1.Width := editPanel.Width - 10;

 SetDisplay;

end;

procedure TReceiptBarcodingFrm.edtExpiryDateExit(Sender: TObject);
var
 errDateMsg: string;
begin

 errDateMsg := 'Invalid date';

 //********* Check if system uses Last day of month or not
 with ReceiptDm  do
  begin

  if FUsesBatchManagement then
   begin
   //Check if date is in the future.
   //Check if date is valid
   if edtExpiryDate.Date < Now then
    begin
    MessageDlg(errDateMsg, mtWarning, [mbOk], 0);
    edtExpiryDate.SetFocus;
    Abort;
    end;
   end;

  if (not FUseExactDayForExpiryDate) then
   edtExpiryDate.Date := UpdateLastDayMon(edtExpiryDate.Date);
  end;

end;

procedure TReceiptBarcodingFrm.atnCloseExecute(Sender: TObject);
begin
            
 Close;
 
end;

procedure TReceiptBarcodingFrm.UpdateUnknownBarcode;
begin

 //******* 18 Feb 2014
 ProductUpdateBarcodesFrm.LoadProductsDetail(1, 1);
 
end;


procedure TReceiptBarcodingFrm.atnDisplayColsExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin

  SelectColumns := TColumnSelector.Create;
  try
  GridCols := dxDBReceipt_Itemss;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TReceiptBarcodingFrm.atnUpdateProductBarcodeExecute(
  Sender: TObject);
begin
 //Update Price
 
end;

procedure TReceiptBarcodingFrm.FormResize(Sender: TObject);
const
  cbuf = 0;
var
  vDetFormSize  :TRect;
begin
  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

 dxDBReceipt_Itemss.Height := Height - (pnlReceiptHeaderBackground.Height + Panel1.Height * 2);

 Panel1.Width := editPanel.Width - 10;

end;

end.

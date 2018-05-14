unit framePharmacies;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComObj,
  dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, RzTabs, DBCtrls,
  RzDBCmbo, StdCtrls, Mask, RzEdit, RzDBEdit, RzDBNav, dxTL, dxCntner,
  RzPanel, RzCommon, RzLabel, ExtCtrls, DB, ADODB, RzLstBox, RzDBList,
  dxPageControl, RzButton, RzRadChk, RzDBChk;

type
  TfrmePharmacies = class(TFrame)
    conRxStore: TADOConnection;
    qryRxStore_Demanders: TADOQuery;
    dsqryRxStore_Demanders: TDataSource;
    qryRxStore_DemandersItems: TADOQuery;
    dsqryRxStore_DemandersItems: TDataSource;
    qryRxStore_Requisitions: TADOQuery;
    dsqryRxStore_Requisitions: TDataSource;
    dsqryRxStore_RequisitionItems: TDataSource;
    qryRxStore_RequisitionItems: TADOQuery;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    conPharmacy: TADOConnection;
    qryComplex: TADOQuery;
    dsqryComplex: TDataSource;
    qryComplexPharmacy: TADOQuery;
    dsqryComplexPharmacy: TDataSource;
    dsqryComplexPharmacyLookup: TDataSource;
    rzcMain: TRzFrameController;
    Panel4: TPanel;
    rzLblPharmacies: TRzLabel;
    qryComplexPharmacycomplexPharmacy_ID: TGuidField;
    qryComplexPharmacycomplexPharmacyName_str: TWideStringField;
    qryComplexPharmacyrxStoreDemander_ID: TIntegerField;
    qryComplexPharmacyrxStoreServer_str: TWideStringField;
    qryComplexPharmacyrxStoreDB_str: TWideStringField;
    qryComplexPharmacyrxStoreUseDB_bol: TBooleanField;
    pnlHolder_Pharmacy_Site: TPanel;
    RzLabel9: TRzLabel;
    rzlRxStoreProductDetail: TRzLabel;
    rzgPharmacyList: TRzGroupBox;
    grdPharmacy: TdxDBGrid;
    grdPharmacycomplexPharmacyName_str: TdxDBGridColumn;
    rznPharmcyList: TRzDBNavigator;
    rzgPharmacyDetail: TRzGroupBox;
    Label12: TLabel;
    RzDBEdit20: TRzDBEdit;
    rzgRxStoreSetup: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    rzlblPharmacyDetail: TRzLabel;
    rzLblRxStoreSetup: TRzLabel;
    pgeRxStore: TdxPageControl;
    tbsProductsToOrder: TdxTabSheet;
    tbsProductsOrdered: TdxTabSheet;
    rzlProductToOrder: TRzLabel;
    rzgProductsToOrder: TRzGroupBox;
    dxDBGrid2: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    rzLblRequisitions: TRzLabel;
    rzgRequisitionsList: TRzGroupBox;
    grdRequisitions: TdxDBGrid;
    grdRequisitionsRequisition_str: TdxDBGridMaskColumn;
    grdRequisitionsReceivedBy_str: TdxDBGridMaskColumn;
    grdRequisitionsReceived_dat: TdxDBGridDateColumn;
    rzlRequisitionsList: TRzLabel;
    rzlRequisitionsItemsList: TRzLabel;
    rzgRequisitionsItemsList: TRzGroupBox;
    grdRequisitionItems: TdxDBGrid;
    grdRequisitionItemsDescription_str: TdxDBGridMaskColumn;
    grdRequisitionItemsQtyDemanderOnHand_int: TdxDBGridMaskColumn;
    grdRequisitionItemsQtyOrdered_int: TdxDBGridMaskColumn;
    grdRequisitionItemsQtyIssued_int: TdxDBGridMaskColumn;
    grdRequisitionItemsQtyOnHand_int: TdxDBGridMaskColumn;
    Label1: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    tbsRxProcessed: TdxTabSheet;
    rzlRxProcessed: TRzLabel;
    rzgRxProcessed: TRzGroupBox;
    grdRxProcessed: TdxDBGrid;
    qryRxProcessed: TADOQuery;
    RzLabel1: TRzLabel;
    qryComplexPharmacycomplex_ID: TGuidField;
    procedure qryComplexPharmacyAfterScroll(DataSet: TDataSet);
    procedure qryComplexPharmacyNewRecord(DataSet: TDataSet);
    procedure FrameResize(Sender: TObject);
    procedure pgeRxStoreResize(Sender: TObject);
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    procedure ConnectRxStoreForPharmacyDemander(const Server, DB : string;
        UseRxStore : Boolean);
    procedure Screen_Resize;
    procedure Screen_Resize_2;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open;
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmePharmacies.Close;
begin

  qryComplexPharmacy.Close;
  qryComplex.Close;

end;

procedure TfrmePharmacies.ConnectRxStoreForPharmacyDemander(const Server, DB :
    string; UseRxStore : Boolean);

const
  CONSTR = 'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=%s;Data Source=%s';
begin

  try
  conRxStore.Close;
  if not FLoading then
    if UseRxStore then
      if (Server <> '') or (DB <> '') then
        begin
        conRxStore.ConnectionString := Format(CONSTR, [DB, Server]);
        qryRxStore_Demanders.Open;
        qryRxStore_DemandersItems.Open;
        qryRxStore_Requisitions.Open;
        qryRxStore_RequisitionItems.Open;
        end;
  except
    MessageDlg('Server ' + Server + ' not available at this time', mtWarning, [mbOK], 0);
  end;
  
end;

procedure TfrmePharmacies.Open;
var
  Server, DB :String;
  useRxStore  :boolean;

begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  qryComplex.Open;
  qryComplexPharmacy.Open;
  Floading := False;
  with qryComplexPharmacy do
    begin
    Server := FieldByName('rxStoreServer_str').AsString;
    DB := FieldByName('rxStoreDB_str').AsString;
    useRxStore:= FieldByName('rxStoreUseDB_bol').AsBoolean;
    end;
  ConnectRxStoreForPharmacyDemander(Server, DB, useRxStore);

end;

procedure TfrmePharmacies.Screen_Resize;
var
  curWid, curHgt  :integer;
  halfWid, halfHgt : integer;
const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnlToolbar_Header.Width;
  curHgt  := HGHT;

  pnlToolbar_Header.Height := curHgt;

  pnlToolbar_Header_ShapeBorder.Left   := STEP;
  pnlToolbar_Header_ShapeBorder.Top    := STEP;
  pnlToolbar_Header_ShapeBorder.Width  := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height := curHgt - (STEP * 2);

  pnlToolbar_Header_Display.Left   := (STEP * 2);
  pnlToolbar_Header_Display.Top    := (STEP * 2);
  pnlToolbar_Header_Display.Width  := curWid - (STEP * 4);
  pnlToolbar_Header_Display.Height := curHgt - (STEP * 4);

  rzLblPharmacies.Width := curWid - (STEP * 2);
  //
  curHgt  := pnlHolder_Pharmacy_Site.Height;

  rzgRxStoreSetup.Top   := curHgt - (rzgRxStoreSetup.Height + STEP);
  rzLblRxStoreSetup.Top := rzgRxStoreSetup.Top - (rzLblRxStoreSetup.Height + STEP);
  rzgPharmacyDetail.Top := rzLblRxStoreSetup.Top - (rzgPharmacyDetail.Height + STEP);
  rzlblPharmacyDetail.Top := rzgPharmacyDetail.Top - (rzlblPharmacyDetail.Height + STEP);

  rzgPharmacyList.Height := rzlblPharmacyDetail.Top - rzgPharmacyList.Top - STEP;
  rznPharmcyList.Top := rzgPharmacyList.Height - (rznPharmcyList.Height + STEP);
  grdPharmacy.Height := rznPharmcyList.Top - grdPharmacy.Top - STEP;


  //
  rzlRxStoreProductDetail.Width := curWid - (rzlRxStoreProductDetail.Left + STEP);
  pgeRxStore.Width  := rzlRxStoreProductDetail.Width;
  pgeRxStore.Height := curHgt - (pgeRxStore.Top + STEP);



//  rzgProductsToOrder.Height := tbsProductsToOrder.Height - (rzgProductsToOrder.Top + (STEP * 2));

end;

procedure TfrmePharmacies.SetDbConnectionString(const Value: string);
begin
  conPharmacy.Close;
  conPharmacy.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TfrmePharmacies.qryComplexPharmacyAfterScroll(DataSet: TDataSet);
var
  Server, DB  :String;
  useRxStore  :boolean;

begin

  with Dataset do
    begin
    Server    := FieldByName('rxStoreServer_str').AsString;
    DB        := FieldByName('rxStoreDB_str').AsString;
    useRxStore:= FieldByName('rxStoreUseDB_bol').AsBoolean;
    end;
  ConnectRxStoreForPharmacyDemander(Server, DB, useRxStore);

end;

procedure TfrmePharmacies.qryComplexPharmacyNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complexPharmacy_ID').AsString := CreateClassID;
    FieldByName('complex_ID').AsString := qryComplex.FieldByName('complex_ID').AsString;
    FieldByName('complexPharmacyName_str').AsString := 'Pending...';
    FieldByName('rxStoreDemander_ID').AsInteger := 0;
    FieldByName('rxStoreServer_str').AsString := '';
    FieldByName('rxStoreDB_str').AsString := 'RxStore';
    FieldByName('rxStoreUseDB_bol').AsBoolean := True;
    end;
end;

procedure TfrmePharmacies.FrameResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TfrmePharmacies.Screen_Resize_2;
var
  curWid, curHgt  :integer;
const
  STEP = 5;

begin

  curWid  := tbsProductsToOrder.Width;
  curHgt := tbsProductsToOrder.Height;


  rzlProductToOrder.Left  := STEP;
  rzlProductToOrder.Top   := STEP;
  rzlProductToOrder.Width := curWid - (STEP * 2);

  rzgProductsToOrder.Width  := rzlProductToOrder.Width;
  rzgProductsToOrder.Height := curHgt - rzgProductsToOrder.Top - STEP;


  rzgProductsToOrder.Height   := curHgt - rzgProductsToOrder.Top - STEP;
  rzgRequisitionsList.Height      := rzgProductsToOrder.Height;
  grdRequisitions.Height      := rzgRequisitionsList.Height - grdRequisitions.Top - STEP;
  grdRequisitionItems.Height  := grdRequisitions.Height;



  rzgRequisitionsList.Height := curHgt - rzgRequisitionsList.Top -STEP;
  rzgRequisitionsItemsList.Height := rzgRequisitionsList.Height;

  rzlRequisitionsItemsList.Width := curWid - rzlRequisitionsItemsList.Left - STEP;
  rzgRequisitionsItemsList.Width := rzlRequisitionsItemsList.Width;

  rzlRxProcessed.Width  := curWid - rzlRxProcessed.Left - STEP;
  rzgRxProcessed.Width  := rzlRxProcessed.Width;
  rzgRxProcessed.Height := curHgt - rzgRxProcessed.Top - STEP;


end;

procedure TfrmePharmacies.pgeRxStoreResize(Sender: TObject);
begin
  Screen_Resize_2;
end;

end.

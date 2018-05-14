unit QuotationUDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
    MyApplicationUtilities, ActnList, DBActns, ppParameter,
  ppModule, raCodMod, ppVar, DateUtils, myChkBox, Math, TXComp, TXRB;

const
  HST_ADD     = 'ADDED';
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_CHG     = 'CHANGED PRODUCT';

  ADD_ITEM    = 0;
  ADD_RET     = 1;


type
  TQuotationDM = class(TDataModule)
    AdoQuotation: TADOConnection;
    tblQuotations: TADOQuery;
    dsQuotations: TDataSource;
    qryQuotationWorker: TADOQuery;
    dsQuotationWorker: TDataSource;
    qryQuotationItems: TADOQuery;
    dsQuotationItems: TDataSource;
    dsDemanders: TDataSource;
    tblSystemUsers: TADOQuery;
    tblDemanders: TADOQuery;
    tblDemandersDemander_ID: TAutoIncField;
    tblDemandersCode_str: TWideStringField;
    tblDemandersName_str: TWideStringField;
    tblDemandersDemanderUnique_ID: TGuidField;
    dsUsers: TDataSource;
    qryItemsEditHistory: TADOQuery;
    dsEdithistory: TDataSource;
    qryQuotationItemsQuotationItem_Id: TAutoIncField;
    qryQuotationItemsQuotation_ID: TIntegerField;
    qryQuotationItemsProductCode_ID: TIntegerField;
    qryQuotationItemsNSN_str: TWideStringField;
    qryQuotationItemsECN_str: TWideStringField;
    qryQuotationItemsICN_str: TWideStringField;
    qryQuotationItemsDescription_str: TWideStringField;
    qryQuotationItemsPackCost_mon: TBCDField;
    qryQuotationItemsMarkUp_dbl: TFloatField;
    qryQuotationItemsVAT_dbl: TFloatField;
    qryQuotationItemsSellingPrice_mon: TBCDField;
    qryQuotationItemsQty_int: TIntegerField;
    qryQuotationItemsExtendedCost_mon: TBCDField;
    qryQuotationItemsLastUpdated_dat: TDateTimeField;
    qryQuotationItemsLastUpdatedBy_str: TWideStringField;
    qryQuotationItemsQtyOnHand_int: TIntegerField;
    qryQuotationWorkerQuotation_ID: TAutoIncField;
    qryQuotationWorkerCreated_dat: TDateTimeField;
    qryQuotationWorkerQuotationRefNo_str: TWideStringField;
    qryQuotationWorkerDemander_ID: TIntegerField;
    qryQuotationWorkerDemander_str: TWideStringField;
    qryQuotationWorkerRequestedBy_str: TWideStringField;
    qryQuotationWorkerRequested_dat: TDateTimeField;
    qryQuotationWorkerTotalCost_mon: TBCDField;
    qryQuotationWorkerPreparedBy_str: TWideStringField;
    qryQuotationWorkerPrepared_dat: TDateTimeField;
    qryQuotationWorkerPosted_dat: TDateTimeField;
    qryQuotationWorkerPosted_bol: TBooleanField;
    qryQuotationWorkerLastUpdatedBy_str: TWideStringField;
    qryQuotationWorkerLastUpdated_dat: TDateTimeField;
    qryQuotationWorkerItemsNo_int: TIntegerField;
    qryQuotationWorkerRemarks_mem: TMemoField;
    ActionList1: TActionList;
    atnSaveandClose: TAction;
    qryQuotationWorkerCheckedOut_bol: TBooleanField;
    qryQuotationWorkerCheckedOut_dat: TDateTimeField;
    qryQuotationWorkerCheckedOutName_str: TWideStringField;
    qryQuotationWorkerCheckedOutBy_ID: TIntegerField;
    qryQuotationWorkerSystemStore_ID: TIntegerField;
    qryQuotationWorkerLastEditedBy_ID: TIntegerField;
    qryDemanderUsers: TADOStoredProc;
    dsDemanderUsers: TDataSource;
    AdoAddSingleItem: TADOCommand;
    atnAddSingleItem: TAction;
    stp_addEDLProducts: TADOStoredProc;
    atnAddEDLProducts: TAction;
    stp_QuotationTotals: TADOStoredProc;
    qryReportMain: TADOStoredProc;
    ExtraOptions1: TExtraOptions;
    ppReportMain: TppReport;
    dsReportMain: TDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel43: TppLabel;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    ppLabel67: TppLabel;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText65: TppDBText;
    ppDBText60: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText3: TppDBText;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    qryReportMainQuotation_ID: TAutoIncField;
    qryReportMainCreated_dat: TDateTimeField;
    qryReportMainSystemStore_ID: TIntegerField;
    qryReportMainQuotationRefNo_str: TWideStringField;
    qryReportMainDemander_ID: TIntegerField;
    qryReportMainDemander_str: TWideStringField;
    qryReportMainAccount_ID: TIntegerField;
    qryReportMainAccount_str: TWideStringField;
    qryReportMainRequestedBy_str: TWideStringField;
    qryReportMainRequested_dat: TDateTimeField;
    qryReportMainTotalCost_mon: TBCDField;
    qryReportMainItemsNo_int: TIntegerField;
    qryReportMainPreparedBy_str: TWideStringField;
    qryReportMainPrepared_dat: TDateTimeField;
    qryReportMainPosted_dat: TDateTimeField;
    qryReportMainPosted_bol: TBooleanField;
    qryReportMainRemarks_mem: TMemoField;
    qryReportMainLastUpdatedBy_str: TWideStringField;
    qryReportMainLastEditedBy_ID: TIntegerField;
    qryReportMainLastUpdated_dat: TDateTimeField;
    qryReportMainCheckedOut_bol: TBooleanField;
    qryReportMainCheckedOut_dat: TDateTimeField;
    qryReportMainCheckedOutName_str: TWideStringField;
    qryReportMainCheckedOutBy_ID: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    qryReportMainDemanderName_str: TWideStringField;
    qryReportMainDemanderCode_str: TWideStringField;
    qryReportMainAddress1_str: TWideStringField;
    qryReportMainAddress2_str: TWideStringField;
    qryReportMainAddress3_str: TWideStringField;
    qryReportMainCity_str: TWideStringField;
    qryReportMainProductCode_ID: TIntegerField;
    qryReportMainNSN_str: TWideStringField;
    qryReportMainECN_str: TWideStringField;
    qryReportMainICN_str: TWideStringField;
    qryReportMainDescription_str: TWideStringField;
    qryReportMainPackCost_mon: TBCDField;
    qryReportMainMarkUp_dbl: TFloatField;
    qryReportMainVAT_dbl: TFloatField;
    qryReportMainSellingPrice_mon: TBCDField;
    qryReportMainQty_int: TIntegerField;
    qryReportMainExtendedCost_mon: TBCDField;
    atnPrintMainReport: TAction;
    atnPost: TAction;
    atnMakeRequisition: TAction;
    stp_MarkQuotationComplete: TADOStoredProc;
    atnDeleteItem: TAction;
    atnDeleteallItems: TAction;
    stp_RemoveallItems: TADOQuery;
    stp_MakeRequisition: TADOStoredProc;
    tblRequisition: TADOQuery;
    tblRequisitionRequisition_ID: TAutoIncField;
    tblRequisitionDemander_ID: TIntegerField;
    tblRequisitionDemander_Str: TStringField;
    tblRequisitionSystemStore_ID: TIntegerField;
    tblRequisitionSystemStore_str: TStringField;
    tblRequisitionRequisition_str: TStringField;
    tblRequisitionRequisition_dat: TDateTimeField;
    tblRequisitionVoucherNo_str: TStringField;
    tblRequisitionOrdered_dat: TDateTimeField;
    tblRequisitionOrderedBy_str: TStringField;
    tblRequisitionAuthorizedBy_str: TStringField;
    tblRequisitionAuthorized_Dat: TDateTimeField;
    tblRequisitionCharges_mon: TBCDField;
    tblRequisitionTotalCost_mon: TBCDField;
    tblRequisitionItemsNo_int: TIntegerField;
    tblRequisitionRemarks_mem: TMemoField;
    tblRequisitionActivatedBy_str: TStringField;
    tblRequisitionActivated_bol: TBooleanField;
    tblRequisitionActivated_dat: TDateTimeField;
    tblRequisitionIssuedBy_str: TStringField;
    tblRequisitionIssued_Dat: TDateTimeField;
    tblRequisitionReceived_dat: TDateTimeField;
    tblRequisitionReceivedBy_str: TStringField;
    tblRequisitionLastUpdate_dat: TDateTimeField;
    tblRequisitionCode_str: TStringField;
    tblRequisitionLastUpdateBy_str: TStringField;
    tblRequisitionLastUpdateBy_dbl: TIntegerField;
    tblRequisitionCompleted_bol: TBooleanField;
    tblRequisitionItemsComplete_bol: TBooleanField;
    tblRequisitionPOReference_str: TWideStringField;
    tblRequisitionCheckedOutBy_ID: TIntegerField;
    tblRequisitionCheckedOutName_str: TWideStringField;
    tblRequisitionCheckedOut_bol: TBooleanField;
    tblRequisitionCheckedOut_dat: TDateTimeField;
    qryQuotationWorkerAccount_ID: TIntegerField;
    qryQuotationWorkerAccount_str: TWideStringField;
    qryQuotationWorkerStatus_str: TWideStringField;
    qryQuotationWorkerActive_bol: TBooleanField;
    dsqryADOSystemWharehouse: TDataSource;
    stpSystemWharehouse: TADOTable;
    stpSystemWharehouseSystemStore_ID: TAutoIncField;
    stpSystemWharehouseSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseDemanderName_str: TWideStringField;
    stpSystemWharehouseDemanderCode_str: TWideStringField;
    stpSystemWharehouseAccountName_str: TStringField;
    stpSystemWharehouseAccount_str: TStringField;
    stpSystemWharehouseDescription: TWideStringField;
    stp_UpdateItemVat: TADOStoredProc;
    stp_UpdateSellingPrices: TADOStoredProc;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    atnCancelQuote: TAction;
    stp_AddDemanderItems: TADOStoredProc;
    atnAddDemanderAuthorisedItems: TAction;
    qryQuotationWorkerValidUntil_dat: TDateTimeField;
    qryQuotationItemsAccepted_bol: TBooleanField;
    qryReportMainVATAmount_dbl: TFloatField;
    qryReportMainAccepted_bol: TBooleanField;
    ppDBCalc2: TppDBCalc;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    qryIsRecordLocked: TADOQuery;
    procedure qryQuotationWorkerAfterScroll(DataSet: TDataSet);
    procedure atnSaveandCloseExecute(Sender: TObject);
    procedure qryQuotationWorkerDemander_IDChange(Sender: TField);
    procedure atnAddSingleItemExecute(Sender: TObject);
    procedure tblQuotationsAfterScroll(DataSet: TDataSet);
    procedure atnAddEDLProductsExecute(Sender: TObject);
    procedure qryQuotationItemsBeforePost(DataSet: TDataSet);
    procedure atnPrintMainReportExecute(Sender: TObject);
    procedure atnPostExecute(Sender: TObject);
    procedure atnDeleteItemExecute(Sender: TObject);
    procedure atnDeleteallItemsExecute(Sender: TObject);
    procedure atnMakeRequisitionExecute(Sender: TObject);
    procedure qryQuotationWorkerAccount_IDChange(Sender: TField);
    procedure atnCancelQuoteExecute(Sender: TObject);
    procedure atnAddDemanderAuthorisedItemsExecute(Sender: TObject);
    function IsRecordLocked: Boolean;
  private
    { Private declarations }
    procedure AddQuotationItem(pReqID, pProductID: double);
    procedure AddAllEDLProducts;
    procedure UpdateSellingPrices;
    procedure AddEditHistory(const pType, pStr :string; pAddType: integer );
  public
    { Public declarations }


    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    CheckComplete, atnEnabled, lockedByUser, AddNewRecord: Boolean;
    vCurrentRecord : integer;
    vVat, vAccount : double;

    function IsLockedBySameUser: Boolean;
    procedure DataConnect(startDate : TDateTime; endDate :TDateTime);
    procedure LoadItems;
    procedure LoadHistory;
    procedure LoadDemanders;
    procedure LoadUsers;
    procedure LoadDemanderUsers;
    procedure LoadAccounts;
    procedure LoadQuotationTotals;
    procedure UpdateQuotationSubTotals;
    procedure CloseAllTables;
    procedure AddQuotation;
    procedure EditQuotation;
    procedure DeleteSingleItem;
    procedure DeleteallItems;
    procedure RefreshQuotationList;
    procedure PrintMainReport;
    function ValidatePosting: Boolean;
    function PostRecord: Boolean;
    procedure MakeRequisition;
    procedure CancelQuote;
    procedure ApproveQuote;
    procedure AddDemanderItems(Demander: integer; QuoteID: integer);
    procedure UnLockRecord;
    procedure UnLockRecordMain;

  end;

var
  QuotationDM: TQuotationDM;

implementation

uses MainUDM, RxSolutionUFrm, RxSolutionSecurityClass, QuotationDetailUFrm,
  ProductGeneralUFrm;

{$R *.dfm}

procedure TQuotationDM.DataConnect(startDate : TDateTime; endDate :TDateTime);
var
 FDataBasePath       : string;
begin

if Assigned(MainDM) then
 begin
 AdoQuotation.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 with tblQuotations do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('StartDate').Value     := startDate;
  Parameters.ParamByName('EndDate').Value       := endDate+1;
  Prepared := True;
  Open;
  end;

 vCurrentRecord := tblQuotations.FieldByName('Quotation_ID').AsInteger;

 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
 FUsesBatchManagement := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean;
 end;

end;

procedure TQuotationDM.AddQuotation;
var
 vFetchSuccess : boolean;
begin
 //
 tblQuotations.Append;
 tblQuotations.FieldByName('QuotationRefNo_str').AsString   := MainDm.GetNextVoucherNumber(vFetchSuccess, 1, MODULE_QUOTATION);
 tblQuotations.FieldByName('Created_dat').AsDateTime         := Now();
 tblQuotations.FieldByName('CheckedOut_bol').AsBoolean       := True;
 tblQuotations.FieldByName('CheckedOutName_str').AsString    := FUserName;
 tblQuotations.FieldByName('CheckedOut_dat').AsDateTime      := Now;
 tblQuotations.FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
 tblQuotations.FieldByName('SystemStore_ID').Value           := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;
 tblQuotations.FieldByName('Active_bol').AsBoolean           := True;
 tblQuotations.Post;

 vCurrentRecord := tblQuotations.FieldByName('Quotation_ID').AsInteger;

 EditQuotation;

end;

procedure TQuotationDM.EditQuotation;
begin
 //
 with qryQuotationWorker do
  begin
  Close;
  Parameters.ParamByName('QuotationID').Value := vCurrentRecord;
  Open;
 if (not FieldByName('CheckedOut_bol').AsBoolean) and (not FieldByName('Posted_bol').AsBoolean) then
   begin
   Edit;
   FieldByName('CheckedOut_bol').AsBoolean       := True;
   FieldByName('CheckedOutName_str').AsString    := FUserName;
   FieldByName('CheckedOut_dat').AsDateTime      := Now;
   FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
   FieldByName('SystemStore_ID').Value           := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;
   Post;
   end;
  end;

 LoadItems;
 LoadHistory;
 LoadDemanders;
 LoadDemanderUsers;
 LoadUsers;
 LoadAccounts;
 
end;

procedure TQuotationDM.LoadItems;
begin

 with qryQuotationItems do
  begin
  Close;
  Parameters.ParamByName('QuotationID').Value := vCurrentRecord;
  Open;
  end;

end;

procedure TQuotationDM.LoadHistory;
begin

 with qryItemsEditHistory do
  begin
  Close;
  Parameters.ParamByName('QuotationID').Value := vCurrentRecord;
  Open;
  end;

end;

procedure TQuotationDM.LoadDemanders;
begin

 with tblDemanders do
  begin
  Close;
  Open;
  end;

end;

procedure TQuotationDM.LoadUsers;
begin

  with tblSystemUsers do
   begin
   Close;
   Open;
   end;

end;

procedure TQuotationDM.LoadAccounts;
begin

 with stpSystemWharehouse do
  begin
  Close;
  Open;
  end;

end;

procedure TQuotationDM.LoadQuotationTotals;
begin
 //
 with stp_QuotationTotals do
  begin
  Close;
  Parameters.ParamByName('@QuotationID').Value := vCurrentRecord;
  Open;
  end;

end;

procedure TQuotationDM.UpdateQuotationSubTotals;
begin
 with qryQuotationWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('ItemsNo_int').AsInteger           := stp_QuotationTotals.FieldByName('CountOfItem_ID').AsInteger;
  FieldByName('TotalCost_mon').AsCurrency        := stp_QuotationTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency;
  //Post;
  end;
end;

procedure TQuotationDM.CloseAllTables;
begin

 qryQuotationWorker.Close;
 qryQuotationItems.Close;
 qryItemsEditHistory.Close;
 tblDemanders.Close;
 tblSystemUsers.Close;
 stpSystemWharehouse.Close;
 
end;


procedure TQuotationDM.qryQuotationWorkerAfterScroll(DataSet: TDataSet);
begin

  vCurrentRecord := qryQuotationWorker.FieldByName('Quotation_ID').AsInteger;

end;

procedure TQuotationDM.atnSaveandCloseExecute(Sender: TObject);
begin
//if not lockedByUser then
 if (not qryQuotationWorker.FieldByName('Posted_bol').AsBoolean) and (IsLockedBySameUser) then
 begin
 LoadQuotationTotals;
 UpdateQuotationSubTotals;
 with qryQuotationWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdatedBy_str').AsString     := FUserName;
  FieldByName('LastEditedBy_ID').AsInteger      := FUserID;
  FieldByName('LastUpdated_dat').AsDateTime     := Now;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;
  end;
 end;

 CloseAllTables;
 RefreshQuotationList;
 QuotationDetailFrm.Close;
end;

procedure TQuotationDM.LoadDemanderUsers;
begin

 with qryDemanderUsers do
  begin
  Close;
  Prepared:= False;
  Parameters.ParamByName('@DemanderID').Value := qryQuotationWorker.FieldByName('Demander_ID').Value;
  Prepared:= True;
  Open;
  end;
end;

procedure TQuotationDM.qryQuotationWorkerDemander_IDChange(Sender: TField);
begin

 qryQuotationWorker.FieldByName('Demander_str').AsString := tblDemanders.FieldByName('Name_str').AsString;
 LoadDemanderUsers;

end;

procedure TQuotationDM.AddQuotationItem(pReqID, pProductID: double);
begin
//Send data to stored procedure to add new item to current item list
 with AdoAddSingleItem do
  begin
 // Prepared := False;
  Parameters.ParamByName('@QuotationID').Value := pReqID;
  Parameters.ParamByName('@ProductCodeID').Value:= pProductID;
  Execute;
  end;
end;

procedure TQuotationDM.atnAddSingleItemExecute(Sender: TObject);
var
  vProductSelector  : TProductSelector;
  vRetID            : integer;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;
begin
// Use same table as curently being edited
// Get current ID's for Req items
with qryQuotationWorker do
 vRetID := FieldByName('Quotation_ID').AsInteger;

 vProductSelector := TProductSelector.Create;
 with qryQuotationItems, vProductSelector do
  if Active then
   try
   if Product_SelectItems( vProductCost, vProductID) then
    for i := low(vProductID) to high(vProductID) do
     try
     if not Locate('ProductCode_ID;Quotation_ID', VarArrayOf([vProductID[i], vRetID]), []) then
      begin
      AddQuotationItem(vCurrentRecord, vProductID[i]);
      end;

    with qryQuotationItems do
     begin
     Close;
     Open;
     end;

     LoadQuotationTotals;              //Refresh totals
     UpdateQuotationSubTotals;         //Update header totals
     AddEditHistory(HST_ADD, 'Adding product(s)', ADD_RET);
     //Added by SM; move cursor to last added item
     Locate('ProductCode_ID;Quotation_ID', VarArrayOf([vProductID[i], vRetID]), []);
     except
     end;
   finally
    Free;
    end;
end;
procedure TQuotationDM.tblQuotationsAfterScroll(DataSet: TDataSet);
begin
  vCurrentRecord := tblQuotations.FieldByName('Quotation_ID').AsInteger;
end;

procedure TQuotationDM.RefreshQuotationList;
begin
//
 with tblQuotations do
  begin
  Close;
  Open;
  Locate('Quotation_ID', vCurrentRecord, []);
  end;

end;

procedure TQuotationDM.AddAllEDLProducts;
begin

 with stp_addEDLProducts do
  begin
  Parameters.ParamByName('@QuotationID').Value := vCurrentRecord;
  ExecProc;
  end;


end;

procedure TQuotationDM.atnAddEDLProductsExecute(Sender: TObject);
begin

 AddAllEDLProducts;
 AddEditHistory(HST_ADD, 'EDL Products added', ADD_RET);
 LoadItems;
end;

procedure TQuotationDM.qryQuotationItemsBeforePost(DataSet: TDataSet);
var
 vPackCostIncl: double;

begin

 vVat:= 0;
 vAccount := qryQuotationWorker.FieldByName('Account_ID').AsFloat;
 vVat := MainDm.GetVAT(vAccount);
 if VarIsNull(vVat) then vVat := 0;

 with qryQuotationItems do
  begin
  vPackCostIncl := FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100);
  vPackCostIncl := RoundTo(vPackCostIncl, -2);
  FieldByName('SellingPrice_mon').AsFloat := vPackCostIncl;

  FieldByName('ExtendedCost_mon').AsFloat := FieldByName('Qty_int').AsInteger * FieldByName('SellingPrice_mon').AsFloat;
  end;
 LoadQuotationTotals;
 UpdateQuotationSubTotals;

end;

function TQuotationDM.IsLockedBySameUser;
begin

 if FUserID = qryQuotationWorker.FieldByName('CheckedOutBy_ID').AsVariant then
  Result := True
 else
  Result := False;
end;

procedure TQuotationDM.PrintMainReport;
begin
 //Allow for cutom report to print
 with qryReportMain do
  begin
  Close;
  Parameters.ParamByName('@QuotationID').Value := vCurrentRecord;
  Open;
  end;

 with ppReportMain do
  begin
  Print;
  end;

 AddEditHistory(HST_PRN, 'Report printed.', ADD_RET);
 
end;

procedure TQuotationDM.atnPrintMainReportExecute(Sender: TObject);
begin
 PrintMainReport;
end;

procedure TQuotationDM.atnPostExecute(Sender: TObject);
var
 WMS : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
//Current document

//Make sure all items are saved
 if qryQuotationItems.State in [dsEdit, dsInsert] then
  qryQuotationItems.Post;

 if not (qryQuotationWorker.State in [dsEdit, dsInsert]) then
  qryQuotationWorker.Edit;
  qryQuotationWorker.FieldByName('CheckedOut_bol').AsBoolean            := False;
  qryQuotationWorker.FieldByName('CheckedoutName_str').AsString         := '';
  qryQuotationWorker.FieldByName('CheckedOutBy_ID').Asinteger           := 0;
  qryQuotationWorker.FieldByName('Posted_bol').AsBoolean                := True;
  qryQuotationWorker.FieldByName('Posted_dat').AsDateTime               := Now();
  qryQuotationWorker.Post;


if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0) = mrYes then
 if ValidatePosting then
  if PostRecord then
   begin
   MessageDlg('Quotation has been posted!', mtInformation, [mbYes], 0);
   // Refresh data
   RefreshQuotationList;
   QuotationDetailFrm.Close;
   end;  

end;

function TQuotationDM.ValidatePosting: Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Demander' +
          #13 + 'Requested By && Date' +
          #13 + 'Prepared By && Date';    
begin
  Result := True;

  if qryQuotationWorker.Active then
   begin
   with qryQuotationWorker do
    begin
    if FieldByName('Demander_ID').IsNull then Result := False;
    if FieldByName('RequestedBy_str').IsNull then Result := False;
    if FieldByName('Requested_dat').IsNull then Result := False;
    if FieldByName('PreparedBy_str').IsNull then Result := False;
    if FieldByName('Prepared_dat').IsNull then Result := False;
    end;
   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
   end
  else
   Result := False;
end;

procedure TQuotationDM.DeleteSingleItem;
var
 vProductCode: integer;
 vDescription: string;
begin
 with qryQuotationItems do
  begin
  if Active then
   if recordCount > 0 then
    begin
    vProductCode := FieldByName('ProductCode_ID').AsInteger;
    vDescription := FieldByName('Description_str').AsString;
    if MessageDlg('Are you sure you want to remove the selected item from the list?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
     begin AddEditHistory(HST_DEL, vDescription +' '+ ' DELETED', ADD_RET); Delete; end;
    end;
  end;
end;

procedure TQuotationDM.DeleteallItems;
begin
 //
if MessageDlg('Are you sure you want to remove this item from the list?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
 begin
 with stp_RemoveallItems do
  begin
  Parameters.ParamByName('@QuotationID').Value := vCurrentRecord;
  ExecSQL;
  end;
 //Edit history to go here
 AddEditHistory(HST_DEL, 'All products deleted', ADD_RET);

 LoadItems;
 end;
end;

procedure TQuotationDM.MakeRequisition;
var
 vRequistionID: integer;
 vFetchSuccess : Boolean;
 vReqNumber: string;
begin
 //
 with tblRequisition do
  begin
  Open;
  Append;
  FieldByName('Requisition_str').Asstring := MainDm.GetNextVoucherNumber( vFetchSuccess, 1, FRM_REQUISITION);
  FieldByName('VoucherNo_str').Asstring   := qryQuotationWorker.FieldByName('QuotationRefNo_str').AsString;
  FieldByName('Demander_ID').AsInteger    := qryQuotationWorker.FieldByName('Demander_ID').AsInteger;
  FieldByName('Demander_Str').AsString    := qryQuotationWorker.FieldByName('Demander_str').AsString;
  FieldByName('SystemStore_ID').AsInteger := qryQuotationWorker.FieldByName('Account_ID').AsInteger;
  FieldByName('SystemStore_str').AsString := qryQuotationWorker.FieldByName('Account_str').AsString;
  FieldByName('Activated_bol').AsBoolean  := False;
  FieldByName('Charges_mon').AsCurrency   := 0;
  FieldByName('Requisition_dat').AsDateTime := DateOf(Now());
  Post;
  vRequistionID := FieldByName('Requisition_ID').AsInteger;
  vReqNumber    := FieldByName('Requisition_str').Asstring;
  Close;
  end;

 with stp_MakeRequisition do
  begin
  Parameters.ParamByName('@Quotation_ID').Value := vCurrentRecord;
  Parameters.ParamByName('@Requisition_ID').Value := vRequistionID;
  ExecProc;
  end;

 ApproveQuote;
 AddEditHistory(HST_EDT, 'Quotation converted into a requisition. Reference ['+vReqNumber+']', ADD_RET);

 MessageDlg('Requisition '+ vReqNumber+' has been created.', mtInformation, [mbOk], 0);

end;

function TQuotationDM.PostRecord: Boolean;
begin
 Result:= True;
end;

procedure TQuotationDM.atnDeleteItemExecute(Sender: TObject);
begin
 DeleteSingleItem;
end;

procedure TQuotationDM.atnDeleteallItemsExecute(Sender: TObject);
begin
 DeleteallItems;
end;

procedure TQuotationDM.atnMakeRequisitionExecute(Sender: TObject);
begin
 MakeRequisition;
end;

procedure TQuotationDM.qryQuotationWorkerAccount_IDChange(Sender: TField);
begin

 with qryQuotationWorker do
  begin
  FieldByName('Account_str').AsString := stpSystemWharehouseAccountName_str.AsString;
  end;
 
 vVat:= 0;
 vAccount := qryQuotationWorker.FieldByName('Account_ID').AsFloat;
 vVat := MainDm.GetVAT(vAccount);
 if VarIsNull(vVat) then vVat := 0;

 //Update Items VAT
 if qryQuotationItems.RecordCount > 0 then
  begin
  with stp_UpdateItemVat do
   begin
   Parameters.ParamByName('@Quotation_ID').Value := vCurrentRecord;
   Parameters.ParamByName('@VAT').Value := vVat;
   ExecProc;
   end;

  UpdateSellingPrices; 
  LoadItems;
  end;
  
end;

procedure TQuotationDM.UpdateSellingPrices;
begin

 with stp_UpdateSellingPrices do
  begin
  Parameters.ParamByName('@Quotation_ID').Value := vCurrentRecord;
  ExecProc;
  end;

end;

procedure TQuotationDM.CancelQuote;
begin

 with qryQuotationWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
   Edit;
  FieldByName('Status_str').asstring  := 'CANCELLED';
  FieldByName('Active_bol').AsBoolean := False;

  Post;
  end;

end;

procedure TQuotationDM.ApproveQuote;
begin
  with qryQuotationWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
   Edit;
  FieldByName('Status_str').asstring  := 'APPROVED';
  FieldByName('Active_bol').AsBoolean := True;
  Post;
  end;
end;

procedure TQuotationDM.atnCancelQuoteExecute(Sender: TObject);
begin
 CancelQuote;
 atnPost.Execute;
 AddEditHistory(HST_EDT, 'Quotation has been CANCELLED', ADD_RET);
end;


//Add any changes to the history table
procedure TQuotationDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer );
var
  vRetID, vRetItemID  :double;
begin
 
  vRetID      := 0;
  vRetItemID  := 0;
 // Get current ID's for Return items

 vRetID := vCurrentRecord;

  with qryQuotationItems do
    if Active then
      if RecordCount > 0 then
        vRetItemID := FieldByName('QuotationItem_Id').AsFloat;

  //Open the correct history records
  with qryItemsEditHistory do
   begin
   if not Active then
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('QuotationID').Value := vRetID;
    Prepared := True;
    Open;
    end;
  //Add new edit history entry
  Append;
  FieldByname('Quotation_ID').AsFloat     := vRetID;
  FieldByName('Description_str').AsString := pStr;
  FieldByName('UserName_str').AsString    := FUserName;
  FieldByName('User_ID').AsFloat          := FUserID;
  FieldByName('Date_dat').AsDateTime      := Now;
  FieldByName('Type_str').AsString        := pType;
  FieldByName('QuotationItem_ID').AsFloat          := vRetItemID;
  case pAddType of
   ADD_ITEM :
    begin
    FieldByName('ProductCode_ID').AsFloat   := qryQuotationItems.FieldByName('Productcode_ID').AsFloat;
    end;
   ADD_RET :
    begin
    FieldByName('ProductCode_ID').AsFloat   := 0;
    end;
   end;

  Post;
  Close;
  Open;
  end;

end;

procedure TQuotationDM.AddDemanderItems(Demander: integer; QuoteID: integer);
begin
 //
 with stp_AddDemanderItems do
  begin
  Parameters.ParamByName('@QuotationID').Value := QuoteID;
  Parameters.ParamByName('@DemanderID').Value  := Demander;
  ExecProc;
  end;
  
end;

procedure TQuotationDM.atnAddDemanderAuthorisedItemsExecute(
  Sender: TObject);
var
 DemanderID, QuotationID: integer;
 DemanderStr: string;
begin

 if MessageDlg('All the current items will be removed from the list. Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  DeleteallItems;
  DemanderID := qryQuotationWorker.FieldByName('Demander_ID').AsInteger;
  DemanderStr:= qryQuotationWorker.FieldByName('Demander_str').AsString;
  QuotationID := vCurrentRecord;
  AddDemanderItems(DemanderID, QuotationID);
  AddEditHistory(HST_ADD, 'Adding authorised Demander items ['+DemanderStr+']', ADD_ITEM);
  LoadItems;
  end;
  
end;

function TQuotationDM.IsRecordLocked: Boolean;
begin

 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('Quotation_ID').Value := vCurrentRecord;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;
end;

procedure TQuotationDM.UnLockRecord;
begin
 with qryQuotationWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
  Post;
  end;
end;

procedure TQuotationDM.UnLockRecordMain;
begin
 with tblQuotations do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
  Post;
  Refresh;
  end;
end;


end.

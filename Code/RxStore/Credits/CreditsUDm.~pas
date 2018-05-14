unit CreditsUDm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
    MyApplicationUtilities, ActnList, DBActns, ppParameter,
  ppModule, raCodMod, ppVar, DateUtils, myChkBox, Math;

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
  TCreditsDm = class(TDataModule)
    qryCreditItems: TADOQuery;
    qryCreditCatalog: TADOQuery;
    dsCreditsCatalog: TDataSource;
    dsCreditItems: TDataSource;
    AdoCreditConn: TADOConnection;
    qryProductBatch: TADOQuery;
    dsqryProductBatch: TDataSource;
    stpCreditEditHistory: TADOQuery;
    stp_CreditItemsTotals: TADOStoredProc;
    ActionList1: TActionList;
    atnAddSingleItem: TAction;
    AdoAddSingleItem: TADOCommand;
    atnDeleteAllItems: TAction;
    atnPostItem: TDataSetPost;
    atnCancelItem: TDataSetCancel;
    atnSaveandClose: TAction;
    dsHistory: TDataSource;
    tblDemanders: TADOQuery;
    dsDemanders: TDataSource;
    atnPostandClose: TAction;
    atnFirstItem: TDataSetFirst;
    atnNextItem: TDataSetNext;
    atnPriorItem: TDataSetPrior;
    atnLastItem: TDataSetLast;
    atnDeleteCredit: TAction;
    tblSystemUsers: TADOQuery;
    dsUsers: TDataSource;
    atnSelectBatch: TAction;
    atnDeleteSingleItem: TAction;
    stp_CreditMarkComplete: TADOStoredProc;
    atnAddAnotherBatchItem: TAction;
    stpAddAnotherBatchItem: TADOStoredProc;
    ppreport_CreditNote: TppReport;
    qryCreditReport: TADOStoredProc;
    dsCreditReport: TDataSource;
    ppParameterList1: TppParameterList;
    ppTitleBand2: TppTitleBand;
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
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel58: TppLabel;
    ppDBText63: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel84: TppLabel;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText60: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText31: TppDBText;
    ppDBText3: TppDBText;
    ppDBText70: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppLine12: TppLine;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    atnPrintCreditNoteReport: TAction;
    atnRefreshAll: TAction;
    stp_DeleteAllItems: TADOStoredProc;
    dsDemanderUsers: TDataSource;
    qryDemanderRequisitions: TADOQuery;
    dsDemanderRequisitions: TDataSource;
    qryRequisitionItems: TADOQuery;
    dsRequisitionItems: TDataSource;
    atnShowDemanderItems: TAction;
    qryCreditItemsCreditItems_ID: TAutoIncField;
    qryCreditItemsCredit_ID: TIntegerField;
    qryCreditItemsProductCode_ID: TIntegerField;
    qryCreditItemsBatchNumber_str: TWideStringField;
    qryCreditItemsExpiry_dat: TDateTimeField;
    qryCreditItemsProductBatch_ID: TIntegerField;
    qryCreditItemsNSN_str: TStringField;
    qryCreditItemsICN_str: TStringField;
    qryCreditItemsECN_str: TStringField;
    qryCreditItemsQtyCredit_int: TIntegerField;
    qryCreditItemsPackCost_mon: TBCDField;
    qryCreditItemsExtendedCost_mon: TBCDField;
    qryCreditItemsLastUpdate_dat: TDateTimeField;
    qryCreditItemsUser_ID: TIntegerField;
    qryCreditItemsUserName_str: TStringField;
    qryCreditItemsProductCode_str: TStringField;
    qryCreditItemsDescription_str: TWideStringField;
    qryCreditItemsBin_str: TStringField;
    qryCreditReportBin_str: TStringField;
    qryCreditReportDescription_str: TWideStringField;
    qryCreditReportQtyCredit_int: TIntegerField;
    qryCreditReportPackCost_mon: TBCDField;
    qryCreditReportExtendedCost_mon: TBCDField;
    qryCreditReportNSN_str: TStringField;
    qryCreditReportECN_str: TStringField;
    qryCreditReportICN_str: TStringField;
    qryCreditReportProductCode_str: TStringField;
    qryCreditReportCredit_ID: TAutoIncField;
    qryCreditReportDemander_ID: TIntegerField;
    qryCreditReportDemander_Str: TStringField;
    qryCreditReportSystemStore_ID: TIntegerField;
    qryCreditReportSystemStore_str: TStringField;
    qryCreditReportCredit_str: TStringField;
    qryCreditReportCredit_dat: TDateTimeField;
    qryCreditReportVoucherNo_str: TStringField;
    qryCreditReportAuthorizedBy_str: TStringField;
    qryCreditReportAuthorized_Dat: TDateTimeField;
    qryCreditReportTotalCost_mon: TBCDField;
    qryCreditReportItemsNo_int: TIntegerField;
    qryCreditReportRemarks_mem: TMemoField;
    qryCreditReportPostedBy_str: TStringField;
    qryCreditReportPosted_dat: TDateTimeField;
    qryCreditReportReceived_dat: TDateTimeField;
    qryCreditReportReceivedBy_str: TStringField;
    qryCreditReportLastUpdate_dat: TDateTimeField;
    qryCreditReportUserName_str: TStringField;
    qryCreditReportUser_ID: TIntegerField;
    qryCreditReportPOReference_str: TWideStringField;
    qryCreditReportCheckedOutBy_ID: TIntegerField;
    qryCreditReportCheckedOutName_str: TWideStringField;
    qryCreditReportCheckedOut_bol: TBooleanField;
    qryCreditReportCheckedOut_dat: TDateTimeField;
    qryCreditReportPosted_bol: TBooleanField;
    qryCreditReportReturnedBy_str: TWideStringField;
    qryCreditReportReturnedBy_id: TIntegerField;
    qryCreditReportReason_str: TWideStringField;
    qryCreditReportRequisitionRef_id: TIntegerField;
    qryCreditReportRequisitionRef_str: TWideStringField;
    qryCreditReportReturned_dat: TDateTimeField;
    qryCreditReportGroup1_str: TWideStringField;
    qryCreditReportGroup2_str: TWideStringField;
    qryCreditReportSystemCode_str: TWideStringField;
    qryCreditReportSystemName_str: TWideStringField;
    qryCreditReportSystemAddress1_str: TWideStringField;
    qryCreditReportSystemAddress3_str: TWideStringField;
    qryCreditReportSystemCity_str: TWideStringField;
    qryCreditReportDemAddress1_Str: TWideStringField;
    qryCreditReportDemAddress2_Str: TWideStringField;
    qryCreditReportDemAddress3_Str: TWideStringField;
    ppDBPipeline1: TppDBPipeline;
    ppDBText10: TppDBText;
    qryCreditReportBatchNumber_str: TWideStringField;
    qryCreditReportExpiry_dat: TDateTimeField;
    qryCreditReportDemCode_str: TWideStringField;
    qryCreditReportDemName_str: TWideStringField;
    stpStockDemanderReturn: TADOStoredProc;
    qryCreditItemsShippingPack_int: TIntegerField;
    tblBinLocations: TADOQuery;
    qryProductPack: TADOQuery;
    qryDemanders: TADOQuery;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel12: TppLabel;
    qryCreditItemsVAT_dbl: TFloatField;
    qryCreditItemsMarkUp_dbl: TFloatField;
    dsqryADOSystemWharehouse: TDataSource;
    stpSystemWharehouse: TADOTable;
    stpSystemWharehouseSystemStore_ID: TAutoIncField;
    stpSystemWharehouseSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseDemanderName_str: TWideStringField;
    stpSystemWharehouseDemanderCode_str: TWideStringField;
    stpSystemWharehouseAccountName_str: TStringField;
    stpSystemWharehouseAccount_str: TStringField;
    stpSystemWharehouseDescription: TWideStringField;
    stp_AddRequisitionItems: TADOStoredProc;
    atnAddRequisitionItems: TAction;
    stp_UpdateItemsVat: TADOStoredProc;
    stp_CustomReport: TADOQuery;
    dsstp_CustomReport: TDataSource;
    qrySqlStatements: TADOTable;
    qryCreditReportMarkUp_dbl: TFloatField;
    qryCreditReportVAT_dbl: TFloatField;
    qryCreditReportAccount_ID: TIntegerField;
    qryCreditReportAccountName_str: TWideStringField;
    qryCreditWorker: TADOQuery;
    dsqryCreditWorker: TDataSource;
    qryCreditWorkerCredit_ID: TAutoIncField;
    qryCreditWorkerDemander_ID: TIntegerField;
    qryCreditWorkerDemander_Str: TStringField;
    qryCreditWorkerSystemStore_ID: TIntegerField;
    qryCreditWorkerSystemStore_str: TStringField;
    qryCreditWorkerCredit_str: TStringField;
    qryCreditWorkerCredit_dat: TDateTimeField;
    qryCreditWorkerVoucherNo_str: TStringField;
    qryCreditWorkerAuthorizedBy_str: TStringField;
    qryCreditWorkerAuthorized_Dat: TDateTimeField;
    qryCreditWorkerTotalCost_mon: TBCDField;
    qryCreditWorkerItemsNo_int: TIntegerField;
    qryCreditWorkerRemarks_mem: TMemoField;
    qryCreditWorkerPostedBy_str: TStringField;
    qryCreditWorkerPosted_dat: TDateTimeField;
    qryCreditWorkerReceived_dat: TDateTimeField;
    qryCreditWorkerReceivedBy_str: TStringField;
    qryCreditWorkerLastUpdate_dat: TDateTimeField;
    qryCreditWorkerUserName_str: TStringField;
    qryCreditWorkerUser_ID: TIntegerField;
    qryCreditWorkerPOReference_str: TWideStringField;
    qryCreditWorkerCheckedOutBy_ID: TIntegerField;
    qryCreditWorkerCheckedOutName_str: TWideStringField;
    qryCreditWorkerCheckedOut_bol: TBooleanField;
    qryCreditWorkerCheckedOut_dat: TDateTimeField;
    qryCreditWorkerPosted_bol: TBooleanField;
    qryCreditWorkerReturnedBy_str: TWideStringField;
    qryCreditWorkerReturnedBy_id: TIntegerField;
    qryCreditWorkerReason_str: TWideStringField;
    qryCreditWorkerRequisitionRef_id: TIntegerField;
    qryCreditWorkerRequisitionRef_str: TWideStringField;
    qryCreditWorkerReturned_dat: TDateTimeField;
    qryCreditWorkerAccount_ID: TIntegerField;
    qryCreditWorkerAccountName_str: TWideStringField;
    StpUnLockReturns: TADOQuery;
    atnUnlockReturns: TAction;
    qryIsRecordLocked: TADOQuery;
    atnUnLockReturnsMain: TAction;
    tblSystemUsersUserID: TGuidField;
    tblSystemUsersDescription: TWideStringField;
    ppDBCalc2: TppDBCalc;
    qryCreditItemsSellingPrice_mon: TBCDField;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    qryCreditReportSellingPrice_mon: TBCDField;
    qryDemanderUsers: TADOQuery;
    qryDemanderUsersDemanderUser_ID: TAutoIncField;
    qryDemanderUsersDemander_ID: TIntegerField;
    qryDemanderUsersTitle_str: TStringField;
    qryDemanderUsersFirstName_str: TStringField;
    qryDemanderUsersLastName_str: TStringField;
    qryDemanderUsersInitials_str: TStringField;
    qryDemanderUsersPosition_str: TStringField;
    qryDemanderUsersUserLevel_str: TStringField;
    qryDemanderUsersLastUpdated_dat: TDateTimeField;
    qryDemanderUsersPhone_str: TStringField;
    qryDemanderUsersCellPhone_str: TStringField;
    qryDemanderUsersFax_str: TStringField;
    qryDemanderUsersEMail_str: TStringField;
    qryDemanderUsersDescription_str: TStringField;
    qryDemanderUserspersonDescription_str: TStringField;
    ppLabel14: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;

    function ValidatePosting: Boolean;
    function PostRecord: Boolean;
    procedure SetStatusOfActions;
    procedure DataConnect(startDate : TDateTime; endDate :TDateTime);
    procedure qryCreditItemsAfterScroll(DataSet: TDataSet);
    Procedure LoadBatchItems;
    procedure EditCredit;
    procedure AddCredit;
    procedure UpdateCreditSubTotals;
    procedure UpdateCreditItemsTotals;
    procedure qryCreditCatalogBeforePost(DataSet: TDataSet);
    procedure atnAddSingleItemExecute(Sender: TObject);
    procedure AddCreditItem(pReqID, pProductID: double);
    procedure AddEditHistory(const pType, pStr :string; pAddType: integer );
    procedure atnSaveandCloseExecute(Sender: TObject);
    procedure RefreshCreditList;
    procedure LoadUsers;
    procedure LoadEditHistory;
    procedure LoadCreditItems;
    procedure LoadDemanders;
    procedure LoadDemanderUsers;
    procedure LoadAccounts;
    procedure LoadDemanderRequisitions;
    procedure LoadDemanderReqItems;
    procedure atnDeleteCreditExecute(Sender: TObject);
    procedure atnSelectBatchExecute(Sender: TObject);
    procedure atnPostandCloseExecute(Sender: TObject);
    procedure atnDeleteSingleItemExecute(Sender: TObject);
    procedure AddAnotherBatchItem(CreditID: integer; ProductCodeID: integer);
    procedure atnAddAnotherBatchItemExecute(Sender: TObject);
    procedure PrintCreditNote;
    procedure atnPrintCreditNoteReportExecute(Sender: TObject);
    procedure DeleteAllItems;
    procedure atnDeleteAllItemsExecute(Sender: TObject);
    procedure tblDemandersAfterScroll(DataSet: TDataSet);
    procedure atnShowDemanderItemsExecute(Sender: TObject);
    procedure qryCreditItemsQtyCredit_intChange(Sender: TField);
    procedure qryProductBatchBeforePost(DataSet: TDataSet);
    procedure UpdateProductBatch(item_id: double; bin_str: string; batchnumber_str: string;
  expiry: TDateTime; qtyrec: integer; price_mon: Double; shippingPack: integer);
  procedure UpdateProduct(item_id: double; bin_str: string; qtyrec: integer; price_mon: Double; shippingPack: integer);
    procedure qryCreditItemsBeforePost(DataSet: TDataSet);
    procedure CloseAllTables;
    procedure AddRequisitionItems(Requisition_ID: integer);
    procedure atnAddRequisitionItemsExecute(Sender: TObject);
    function LoadSqlStatement(pType : integer): boolean;
    procedure qryCreditCatalogAfterScroll(DataSet: TDataSet);
    procedure qryCreditWorkerAccount_IDChange(Sender: TField);
    procedure qryCreditWorkerReturnedBy_idChange(Sender: TField);
    procedure qryCreditWorkerDemander_IDChange(Sender: TField);
    procedure qryCreditWorkerBeforePost(DataSet: TDataSet);
    procedure atnUnlockReturnsExecute(Sender: TObject);
    function IsRecordLocked: Boolean;
    procedure atnUnLockReturnsMainExecute(Sender: TObject);

  private
    { Private declarations }
    procedure UpdateVATonItems;


  public
    { Public declarations }
    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    CheckComplete, atnEnabled, lockedByUser, AddNewRecord: Boolean;
    vVat, vAccount : double;
    vCurrentCredit : integer;
    FDaysExpiryWarning : integer;
    FuseExactDayForExpiryDate: Boolean;
    function IsLockedBySameUser: Boolean;
    procedure UnLockReturns;
    procedure UnLockReturnsMain;

  end;

var
  CreditsDm: TCreditsDm;

implementation

uses RxSolutionUFrm, MainUDM, ProductGeneralUFrm, DialogGridColumnSelectorUFrm,
  RxSolutionSecurityClass, CreditsDetailUFrm, CreditRequisitionsUFrm;

{$R *.dfm}

function UpdateLastDayMon(MyDate : TDate): TDate;
begin

  if (not CreditsDm.FuseExactDayForExpiryDate) then
   Result := EncodeDate(YearOf(Mydate),MonthOf(MyDate), DaysInMonth(MyDate))
  else
   Result := MyDate;

end;

procedure TCreditsDm.SetStatusOfActions;
begin

 with RxSolutionFrm.Security do
  atnEnabled             := GetUserAccessLevel(MODULE_CREDITS) > USER_BROWSER;
 CheckComplete                  := qryCreditCatalog.FieldByName('Posted_bol').AsBoolean;
// lockedByUser                   := qryCreditCatalog.FieldByName('CheckedOut_bol').AsBoolean;         
//check each status
 atnAddSingleItem.Enabled       := (atnEnabled and (not (CheckComplete)));
 atnDeleteSingleItem.Enabled    := (atnEnabled and (not (CheckComplete)));
 atnDeleteAllItems.Enabled      := (atnEnabled and (not (CheckComplete)));
 atnPostandClose.Enabled        := (atnEnabled and (not (CheckComplete)));
// atnDeleteCredit.Enabled        := (atnEnabled and (not (CheckComplete)));
 atnSelectBatch.Enabled         := (atnEnabled and (not (CheckComplete)));
 atnAddAnotherBatchItem.Enabled := (atnEnabled and (not (CheckComplete)));
 atnDeleteAllItems.Enabled      := (atnEnabled and (not (CheckComplete)));

 atnAddAnotherBatchItem.Enabled := FUsesBatchManagement;
 atnSelectBatch.Enabled         := FUsesBatchManagement;

end;

procedure TCreditsDm.DataConnect(startDate : TDateTime; endDate :TDateTime);
var
 FDataBasePath       : string;
begin

if Assigned(MainDM) then
 begin
 AdoCreditConn.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 with qryCreditCatalog do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('StartDate').Value     := startDate;
  Parameters.ParamByName('EndDate').Value       := endDate+1;
  Prepared := True;
  Open;
  end;

 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
 FUsesBatchManagement := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean;
 FuseExactDayForExpiryDate := MainDm.tblMainSystem.FieldByName('useExactDayForExpiryDate_bol').AsBoolean;

 //Load look up tables
// LoadUsers;
// LoadDemanders;
 end;
 
end;


Procedure TCreditsDm.LoadBatchItems;    //Load batch items
var
 item_id : integer;
begin
 item_id := qryCreditItems.FieldByName('ProductCode_ID').AsInteger;
 with qryProductBatch do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := item_id;
  Open;
  end;
end;

procedure TCreditsDm.LoadCreditItems;
begin
 with qryCreditItems do
  begin
  Close;
//  Prepared := False;
  Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
//  Prepared := True;
  Open;
  end;
end;

procedure TCreditsDm.qryCreditItemsAfterScroll(DataSet: TDataSet);
begin
 LoadBatchItems;
end;

procedure TCreditsDm.EditCredit;
begin

 vVat := 0;

 with qryCreditWorker do
  begin
  Close;
  Parameters.ParamByName('CreditID').Value := vCurrentCredit;
  Open;

  if (not FieldByName('CheckedOut_bol').AsBoolean) and (not FieldByName('Posted_bol').AsBoolean) then
   begin
   Edit;
   FieldByName('CheckedOutName_str').AsString     := FUserName;
   FieldByName('CheckedOut_bol').AsBoolean        := True;
   FieldByName('CheckedOutBy_ID').AsString        := FUserID;
   FieldByName('CheckedOut_dat').AsDateTime       := Now;
   Post;
   end;
  end;

 with stp_CreditITemsTotals do
    begin
    if Active then
    Close;
    Prepared := False;
    Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
    Prepared := True;
    Open;
    end;

 LoadCreditItems;
 LoadEditHistory;
 LoadUsers;
 LoadDemanders;
 LoadDemanderUsers;
 LoadAccounts;
 SetStatusOfActions;

 FDaysExpiryWarning   := 0;
 if not MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').IsNull then
   FDaysExpiryWarning   := MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').AsInteger; //SM

end;


procedure TCreditsDm.AddCredit;
var
  vFetchSuccess :boolean;
begin

 AddNewRecord := True;
//Check for unposted documents like req and receipts
 qryCreditCatalog.Append;
 qryCreditCatalog.FieldByName('Credit_str').AsString            := MainDm.GetNextVoucherNumber(vFetchSuccess, 1, MODULE_CREDITS);
 qryCreditCatalog.FieldByName('Posted_bol').AsBoolean           := False;
 qryCreditCatalog.FieldByName('CheckedOut_bol').AsBoolean       := True;
 qryCreditCatalog.FieldByName('CheckedOutName_str').AsString    := FUserName;
 qryCreditCatalog.FieldByName('CheckedOut_dat').AsDateTime      := Now;
 qryCreditCatalog.FieldByName('CheckedOutBy_ID').AsString       := FUserID;
 qryCreditCatalog.FieldByName('Credit_dat').AsDateTime          := Date;
 qryCreditCatalog.FieldByName('SystemStore_ID').Value           := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;
 qryCreditCatalog.FieldByName('Reason_str').AsString            := 'Stock has been returned because ';
 qryCreditCatalog.Post;

 vCurrentCredit := qryCreditCatalog.FieldByName('Credit_ID').AsInteger;
 EditCredit;

 CheckComplete := False;

 FDaysExpiryWarning   := 0;
 if not MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').IsNull then
   FDaysExpiryWarning   := MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').AsInteger; //SM

end;

procedure TCreditsDm.UpdateCreditSubTotals;
begin
 with qryCreditWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('ItemsNo_int').AsInteger           := stp_CreditITemsTotals.FieldByName('CountOfCreditItem_ID').AsInteger;
  FieldByName('TotalCost_mon').AsCurrency        := stp_CreditITemsTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency;
  Post;
  end;
end;

//Update Record totals
procedure TCreditsDm.UpdateCreditItemsTotals;
begin
 with stp_CreditItemsTotals do
  begin
  if Active then
   Close;
  Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
  Open;
  UpdateCreditSubTotals;
  end;
end;

procedure TCreditsDm.qryCreditCatalogBeforePost(DataSet: TDataSet);
begin

end;

//Add a single item to current record
procedure TCreditsDm.AddCreditItem(pReqID, pProductID: double);
begin
//Send data to stored procedure to add new item to current item list
 with AdoAddSingleItem do
  begin
  Prepared := False;
  Parameters.ParamByName('@CreditID').Value             := pReqID;
  Parameters.ParamByName('@ProductCodeID').Value        := pProductID;
  Execute;
  end;
end;

//Add products from product select screen
procedure TCreditsDm.atnAddSingleItemExecute(Sender: TObject);
var
  vProductSelector  : TProductSelector;
  vRetID            : integer;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;
begin
// Use same table as curently being edited

if (qryCreditWorker.FieldByName('Demander_ID').IsNull) then
 begin
 MessageDlg('Please select the Demander before adding items', mtWarning, [mbOk], 0);
 Abort
 end;

if (qryCreditWorker.FieldByName('Account_ID').IsNull) then
 begin
 MessageDlg('Please select the Account before adding items', mtWarning, [mbOk], 0);
 Abort
 end;

// Get current ID's for Req items
with qryCreditWorker do
 vRetID := FieldByName('Credit_ID').AsInteger;
 vProductSelector := TProductSelector.Create;
 with qryCreditItems, vProductSelector do
  if Active then
   try
   if Product_SelectItems( vProductCost, vProductID) then
    for i := low(vProductID) to high(vProductID) do
     try
     if not Locate('ProductCode_ID;Credit_ID', VarArrayOf([vProductID[i], vRetID]), []) then
      begin
      AddCreditItem(vRetID, vProductID[i]);
      end;

    with qryCreditItems do
     begin
     Close;
     Parameters.ParamByName('@CreditID').Value := vRetID;
     Open;
     end;

     UpdateCreditSubTotals;
     UpdateCreditItemsTotals;
     AddEditHistory(HST_ADD, 'Adding product(s)', ADD_RET);
     //Added by SM; move cursor to last added item
     Locate('ProductCode_ID;Credit_ID', VarArrayOf([vProductID[i], vRetID]), []);
     except
     end;
   finally
    Free;
    end;

end;

//Add any changes to the history table
procedure TCreditsDm.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer );
var
  vRetID, vRetItemID  :double;
begin
  vRetID      := 0;
  vRetItemID  := 0;
 // Get current ID's for Return items
  {with qryCreditWorker do
    if Active then
      if RecordCount > 0 then  }
        vRetID := vCurrentCredit;

  with qryCreditItems do
    if Active then
      if RecordCount > 0 then
        vRetItemID := FieldByName('CreditItems_ID').AsFloat;

  //Open the correct history records
  with stpCreditEditHistory do
   begin
   if not Active then
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('@CreditID').Value := vRetID;
    Prepared := True;
    Open;
    end;
  //Add new edit history entry
  Append;
  FieldByname('Credit_ID').AsFloat   := vRetID;
  FieldByName('Description_str').AsString := pStr;
  FieldByName('UserName_str').AsString    := FUserName;
  FieldByName('User_ID').AsFloat          := FUserID;
  FieldByName('Date_dat').AsDateTime      := Now;
  FieldByName('Type_str').AsString        := pType;
  FieldByName('CreditItem_ID').AsFloat          := vRetItemID;
  case pAddType of
   ADD_ITEM :
    begin
    FieldByName('ProductCode_ID').AsFloat   := qryCreditItems.FieldByName('Productcode_ID').AsFloat;
//    FieldByName('Item_ID').AsFloat          := vRetItemID;
    end;
   ADD_RET :
    begin
    FieldByName('ProductCode_ID').AsFloat   := 0;
//    FieldByName('Item_ID').AsFloat          := 0;
    end;
   end;

  Post;
  Close;
  Open;
  end;
end;

procedure TCreditsDm.atnSaveandCloseExecute(Sender: TObject);
begin

 if (not qryCreditWorker.FieldByName('Posted_bol').AsBoolean) then
  begin
  with qryCreditWorker do
   begin
   if not (State in [dsEdit, dsInsert]) then
     Edit;
   FieldByName('UserName_str').AsString          := FUserName;
   FieldByName('User_ID').AsInteger              := FUserID;
   FieldByName('LastUpdate_dat').AsDateTime      := Now;
   FieldByName('CheckedOut_bol').AsBoolean       := False;
   FieldByName('CheckedOutName_str').AsString    := '';
   FieldByName('CheckedOutBy_ID').AsString       := '';
   Post;
   end;
  UpdateCreditItemsTotals;
  CloseAllTables;
  end;

 CreditsDetailFrm.Close;
 RefreshCreditList;
end;

procedure TCreditsDm.RefreshCreditList;
begin

 with qryCreditCatalog do
  begin
  Close;
  Open;
  end;

 //LoadCreditItems;
end;


procedure TCreditsDm.LoadUsers;
begin
 with tblSystemUsers do
  begin
  Close;
  Open;
  end;
end;

procedure TCreditsDm.LoadEditHistory;
begin
 with stpCreditEditHistory do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
  Prepared := True;
  Open;
  end;
end;

procedure TCreditsDm.atnDeleteCreditExecute(Sender: TObject);
var
 refnumber: string;
begin

 refnumber := qryCreditWorker.FieldByName('CreditNo_str').AsString;
// if not lockedByUser then
  if not qryCreditWorker.FieldByName('Posted_bol').AsBoolean then
   begin
   with qryCreditCatalog do
     if MessageDlg('Are you sure you want to delete the tranactions on ['+ refnumber +']?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      Delete;
   end
  else
   MessageDlg('Transactions cannot be deleted once they have been posted', mtError, [mbOk], 0);

end;

procedure TCreditsDm.atnSelectBatchExecute(Sender: TObject);
begin
{ if qryProductBatch.RecordCount > 0 then
  CreditSelectBatchFrm.ShowModal
 else
  MessageDlg('This item has no other batches available.', mtInformation, [mbOK], 0);             }
end;

procedure TCreditsDm.atnPostandCloseExecute(Sender: TObject);
var
 vCreditID, Level : integer;
 WMS : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
//Current document
 Level := AdoCreditConn.BeginTrans;
 try
 vCreditID := qryCreditWorker.fieldByName('Credit_ID').Value;
 if qryCreditWorker.State in [dsEdit, dsInsert] then
  begin
  qryCreditWorker.FieldByName('CheckedOut_bol').AsBoolean := False;
  qryCreditWorker.FieldByName('CheckedoutName_str').AsString := '';
  qryCreditWorker.FieldByName('CheckedOutBy_ID').AsString := '';
  qryCreditWorker.Post;
  end;

  if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0) = mrYes then
   if ValidatePosting then
    if PostRecord then
    begin
    MessageDlg('Return has been posted!', mtInformation, [mbYes], 0);
    with stp_CreditMarkComplete do
     begin
     Prepared := False;
     Parameters.ParamByName('@CreditID').Value := vCreditID;
     Prepared := True;
     ExecProc;
     end;

   RefreshCreditList;
   // Close detail form
   CreditsDetailFrm.Close;
   end;//
   AdoCreditConn.CommitTrans;
  except
    on E:Exception do begin
    MEssageDlg('An error has occured and the transaction will rollback. Please close the application and try again.', mtError, [mbOK], 0);
    AdoCreditConn.RollbackTrans;
    AddEditHistory(HST_ERR,'DB Transaction Rollback', ADD_RET);
    CreditsDetailFrm.Close;
    end;
  end;
end;

function TCreditsDm.ValidatePosting: Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Account' +
          #13 + 'Demander' +
          #13 + 'Returned By && Date' +
          #13 + 'Received By && Date' +
          #13 + 'Reason';
begin
  Result := True;

  if qryCreditWorker.Active then
   begin
   with qryCreditWorker do
    begin
    if FieldByName('Demander_ID').IsNull then Result := False;
    if FieldByName('Account_ID').IsNull then Result := False;
    if FieldByName('ReturnedBy_str').IsNull then Result := False;
    if FieldByName('Returned_dat').IsNull then Result := False;
    if FieldByName('ReceivedBy_str').IsNull then Result := False;
    if FieldByName('Received_dat').IsNull then Result := False;
    if FieldByName('Reason_str').IsNull then Result := False;
    end;

   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
   end
  else
   Result := False;
end;

procedure TCreditsDm.atnDeleteSingleItemExecute(Sender: TObject);
var
 itemDescrip : string;
begin
 with qryCreditItems do
  begin
  if recordCount > 0 then
   if MessageDlg('Are you sure you want to remove the item from the list?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    itemDescrip := FieldByName('Description_str').AsString;
    AddEditHistory(HST_DEL, 'Item '+ itemDescrip + ' removed from Credit', ADD_ITEM);
    Delete;
    end;
  end;
end;

function TCreditsDm.PostRecord: Boolean;
var
  vProductID  :double;
  vProdDet    :RProductDetails;
  vType       :String;
  vNewQty     :integer;
  vOldQty     :integer;
  vTotalinStock : integer;
  vCost       :Currency;
  vExpiryDate :TDateTime;
  vDate       :TDateTime;
  vReason     :String;
  vAdjQty     :integer;
  vBatchQty   :integer;
  vBatchNumber : string;
  vShippingPack : integer;
  vPackCost  : double;
  prvPack    : integer;
  vBin          : string;
  vItemID       : integer;

  Attempts        :Integer;
  SubmitVariance  :Boolean;
  vAuditData      :RProductAuditDetails;
  S :string;
  Save_Cursor:TCursor;
begin
// Save_Cursor := Screen.Cursor;
// Screen.Cursor := crHourGlass;
 try
 with qryCreditItems do
  begin
  First;
  While (not eof)  do
   begin
   if (FieldByName('QtyCredit_int').AsInteger > 0)  then
   begin
    vProductID  := FieldByName('ProductCode_ID').AsInteger;
    vAdjQty     := FieldByName('QtyCredit_int').AsInteger;
    vPackCost   := FieldByName('PackCost_mon').AsFloat;
    vCost       := FieldByName('ExtendedCost_mon').AsFloat; //FieldByName('PackCost_mon').AsCurrency * FieldByName('QtyCredit_int').AsInteger;
    vExpiryDate := FieldByName('Expiry_dat').AsDateTime;
    vBatchNumber:= FieldByName('BatchNumber_str').AsString;
    vBin        := FieldByName('Bin_str').AsString;
    vDate       := qryCreditWorker.FieldByName('Credit_dat').AsDateTime;
    vReason     := qryCreditWorker.FieldByName('Reason_str').AsString;
    vShippingPack := FieldByName('ShippingPack_int').AsInteger;
    vItemID     := FieldByName('CreditItems_ID').AsInteger;

    vNewQty     := 0;
    vOldQty     := 0;

   //Update tblProductBatch
    if FUsesBatchManagement then
     UpdateProductBatch(vProductID,vBin, vBatchNumber, vExpiryDate, vAdjQty, vPackCost, vShippingPack)
    else
     UpdateProduct(vProductID, vBin, vAdjQty, vPackCost, vShippingPack);

    //Get pack size of item product 
    with qryProductPack do
     begin
     Close;
     Parameters.ParamByName('ProductCodeID').Value := vProductID;
     Open;
     prvPack := FieldByName('PackSizeValue_dbl').AsInteger;
     end;
    //Get the unique ID for choosen demander
    with qryDemanders do
     begin
     Close;
     Parameters.ParamByName('DemanderID').Value := qryCreditWorker.FieldByName('Demander_ID').AsInteger;
     Open;
     end;


    with stpStockDemanderReturn do
    begin
    Parameters.ParamByName('@ProductID').Value := qryProductPack.FieldByName('productPackSize_ID').AsVariant;
    Parameters.ParamByName('@DemanderFromUniqueID').Value := qryDemanders.FieldByName('DemanderUnique_ID').AsVariant;
    Parameters.ParamByName('@Quantity').Value := vAdjQty;
    Parameters.ParamByName('@QtyUnits').Value := vAdjQty * prvPack;
    Parameters.ParamByName('@Reference').Value := Trim(qryCreditWorker.FieldByName('Credit_str').AsString);
    Parameters.ParamByName('@User').Value := Trim(FUserName);
    Parameters.ParamByName('@UserID').Value := FUserID;
    Parameters.ParamByName('@VoucherNo').Value := Trim(qryCreditWorker.FieldByName('VoucherNo_str').AsString);
    Parameters.ParamByName('@expiry').Value := vExpiryDate;
    Parameters.ParamByName('@batchnumber').Value := vBatchNumber;
    Parameters.ParamByName('@itemID').Value := vItemID;
    Parameters.ParamByName('@ValueCost').Value   := vCost; //********** Value Cost for transaction
    ExecProc;
    end;

    end;
     //end of if Returned Qty > 0
     qryCreditItems.Next;
     end;
    end;
  except
   Result := False;
  end;

 //Screen.Cursor := Save_Cursor;
 UpdateCreditItemsTotals;
 Result := True;
end;

//new tblProductBatch update procedure 18/08/2008 when not in batch management mode
procedure TCreditsDm.UpdateProduct(item_id: double; bin_str: string; qtyrec: integer; price_mon: Double; shippingPack: integer);
begin
with qryProductBatch do
 begin
 Close;
 Parameters.ParamByName('ProductCodeID').Value := item_id;
 Open;
//Open table with all items. Move to First item
 Open;
 First;
//Locate the right one
 if Locate('ProductCode_ID',item_id, []) then
  begin
  Edit;
  FieldByName('QtyOnHand_int').AsInteger := FieldByName('QtyOnHand_int').AsInteger + qtyrec;
  end
//If not locate then Add to List;
 else
  begin
  Append;
  FieldByName('QtyOnHand_int').AsInteger := qtyrec;
  end;
//Assign values
 FieldByName('Bin_str').ASString                := bin_str;
 FieldByName('ProductCode_ID').AsFloat          := item_id;
 FieldByName('Price_mon').AsFloat               := price_mon;
 FieldByName('ShippingPack_int').AsInteger      := shippingPack;
 FieldByName('LastUpdate_dat').AsDateTime       := Now;
//Post
 Post;
//Close table
 Close;
 end;//end of with

end;

procedure TCreditsDm.UpdateProductBatch(item_id: double; bin_str: string; batchnumber_str: string;
  expiry: TDateTime; qtyrec: integer; price_mon: Double; shippingPack: integer);
begin

with qryProductBatch do
 begin
//Open table with all items. Move to first item
 Close;
 Parameters.ParamByName('ProductCodeID').Value := item_id;
 Open;
 First;
//Locate the right one
 if Locate('ProductCode_ID;BatchNumber_Str;bin_str',VarArrayOf([item_id, batchnumber_str, bin_str]), []) then
  begin
  Edit;
  FieldByName('QtyOnHand_int').AsInteger := FieldByName('QtyOnHand_int').AsInteger + qtyrec;
  end
//If not locate then Add to List;
 else
  begin
  Append;
  FieldByName('QtyOnHand_int').AsInteger := qtyrec;
  end;
//Assign values
 FieldByName('Bin_str').ASString                := bin_str;
 FieldByName('BatchNumber_str').AsString        := batchnumber_str;
 FieldByName('Expiry_dat').AsDateTime           := expiry;

 FieldByName('ProductCode_ID').AsFloat          := item_id;
 FieldByName('Price_mon').AsFloat               := price_mon;
 FieldByName('ShippingPack_int').AsInteger      := shippingPack;
 FieldByName('LastUpdate_dat').AsDateTime       := Now;
//Post
 Post;
//Close table
 Close;
 end;//end of with

end;

//********** Add another batch item, by duplicating the item currently selected.
procedure TCreditsDm.AddAnotherBatchItem(CreditID: integer; ProductCodeID : integer);
begin
//
 with stpAddAnotherBatchItem do
  begin
  Parameters.ParamByName('@CreditID').Value             := CreditID;
  Parameters.ParamByName('@ProductCodeID').Value        := ProductCodeID;
  ExecProc;
  end;

end;

procedure TCreditsDm.atnAddAnotherBatchItemExecute(Sender: TObject);
var
 vRet, vProduct: integer;
 vDescrip : string;
begin

 vRet := qryCreditItems.FieldByName('Credit_ID').AsInteger;
 vProduct := qryCreditItems.FieldByName('ProductCode_ID').AsInteger;
 vDescrip := qryCreditItems.FieldByName('Description_str').AsString;

 AddAnotherBatchItem(vRet, vProduct);
 AddEditHistory(HST_ADD, 'Adding another batch product for : '+ vDescrip, ADD_RET);

 LoadCreditItems;

 UpdateCreditItemsTotals;
 
end;

procedure TCreditsDm.PrintCreditNote;
begin

 with qryCreditWorker do
  begin
  if Active then
   if State in [dsEdit, dsInsert] then
    Post;
  end;

 with qryCreditReport do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
  Prepared := True;
  Open;
  end;

 //ppreport_CreditNote.Print;

 with ppreport_CreditNote do
 begin
        if LoadSqlStatement(0) then
         begin
         //Change the datasource of the DB pipe line to point to user defined report query
         ppDBPipeline1.DataSource := dsstp_CustomReport;
         //Load from file
         Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Credit.rtm';
         Template.LoadFromFile;
         end;
   // PrinterSetup.DocumentName := SetDocumentPrintName(0);
    Print;
    
 end;

    AddEditHistory(HST_PRN, 'Printing credit return note', ADD_RET);
end;

procedure TCreditsDm.atnPrintCreditNoteReportExecute(Sender: TObject);
begin
 PrintCreditNote;
end;

procedure TCreditsDm.DeleteAllItems;
begin

if not CheckComplete then
 if MessageDlg('You are about to remove all the items from the transaction. Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  with stp_DeleteAllItems do
   begin
   Prepared := False;
   Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
   Prepared := True;
   ExecProc;
   end;

  AddEditHistory(HST_DEL, 'All products items removed from the credit returns list', ADD_RET);

  LoadCreditItems;
  UpdateCreditItemsTotals;
  end;

end;

procedure TCreditsDm.atnDeleteAllItemsExecute(Sender: TObject);
begin
 DeleteAllItems;
end;

procedure TCreditsDm.LoadDemanders;
begin
 with tblDemanders do
  begin
  Close;
  Open;
  end;

end;

procedure TCreditsDm.LoadDemanderUsers;
begin

 with qryDemanderUsers do
  begin
  Close;
  Prepared:= False;
  Parameters.ParamByName('@DemanderID').Value := qryCreditWorker.FieldByName('Demander_ID').AsInteger;
  Prepared:= True;
  Open;
  end;
end;

procedure TCreditsDm.LoadAccounts;
begin
 with stpSystemWharehouse do
  begin
  Close;
  Open;
  end;
end;


procedure TCreditsDm.LoadDemanderRequisitions;
begin

 with qryDemanderRequisitions do
  begin
  Close;
  Prepared:= False;
  Parameters.ParamByName('Demander_ID').Value := qryCreditWorker.FieldByName('Demander_ID').AsInteger;
  Prepared:= True;
  Open;
  end;            

end;

procedure TCreditsDm.LoadDemanderReqItems;     //Add another date filter 
begin
 with qryRequisitionItems do
  begin
  Close;
  Prepared:= False;
  Parameters.ParamByName('@DemanderID').Value := qryCreditWorker.FieldByName('Demander_ID').AsInteger;
  Prepared:= True;
  Open;
  end;
  
end;


procedure TCreditsDm.tblDemandersAfterScroll(DataSet: TDataSet);
begin
 LoadDemanderUsers;
end;

procedure TCreditsDm.atnShowDemanderItemsExecute(Sender: TObject);
begin

 if VarIsNull(qryCreditWorker.FieldByName('Demander_ID').AsInteger) then
  ShowMessage('Demander has not been selected yet. Please select a demander first before adding items')
 else
  LoadDemanderReqItems;

end;

procedure TCreditsDm.qryCreditItemsQtyCredit_intChange(Sender: TField);
begin
 with qryCreditItems do
  begin
  FieldByName('ExtendedCost_mon').AsFloat := FieldByName('QtyCredit_int').AsInteger * FieldByName('PackCost_mon').AsFloat;
  end;
  
end;

procedure TCreditsDm.qryProductBatchBeforePost(DataSet: TDataSet);
begin

 with qryProductBatch do
  begin
  FieldByName('ProductCode_ID').AsInteger        := qryCreditItemsProductCode_ID.AsInteger;
  FieldByName('Bin_str').AsString                := qryCreditItemsBin_str.AsString;
  FieldByName('ShippingPack_int').AsInteger      := qryCreditItemsShippingPack_int.AsInteger;
  FieldByName('Price_mon').AsCurrency            := qryCreditItemsPackCost_mon.AsCurrency;
  if FUsesBatchManagement then
   begin
   FieldByName('Batchnumber_str').AsString        := qryCreditItemsBatchNumber_str.AsString;
   FieldByName('Expiry_dat').AsDateTime           := qryCreditItemsExpiry_dat.AsDateTime;
   end;
  end;

end;

procedure TCreditsDm.qryCreditItemsBeforePost(DataSet: TDataSet);
var
 vPackCostIncl: double;
 FDaysExpiryWarning: integer;
begin

 vAccount := qryCreditWorker.FieldByName('Account_ID').AsFloat;
 vVat := MainDm.GetVAT(vAccount);
 if VarIsNull(vVat) then vVat := 0;

 with qryCreditItems do
  begin
  if FieldByName('QtyCredit_int').AsInteger < 0 then
   begin
   FieldByName('QtyCredit_int').AsInteger := FieldByName('QtyCredit_int').AsInteger * (-1);
   end;

  vPackCostIncl := FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100);
  
  vPackCostIncl := RoundTo(vPackCostIncl, -4);
  //BUG Issue 206 
  FieldByName('SellingPrice_mon').AsCurrency := vPackCostIncl;

  if ((FieldByName('QtyCredit_int').AsInteger <> 0) AND ((FieldByName('BatchNumber_str').IsNull)) AND (FUsesBatchManagement)) then
   begin MessageDlg('Please enter a batch number', mtWarning, [mbOk], 0); Abort; end;

  if ((FieldByName('QtyCredit_int').AsInteger <> 0) AND ((FieldByName('Expiry_dat').IsNull)) AND (FUsesBatchManagement)) then
   begin MessageDlg('Please enter an expiry date for the product', mtWarning, [mbOk], 0); Abort; end;
  {
  if ((FieldByName('QtyCredit_int').AsInteger <> 0) AND ((FieldByName('Expiry_dat').AsDateTime - Date()) < FDaysExpiryWarning)
   AND (FUsesBatchManagement) AND
  (not FieldByName('Expiry_dat').IsNull)) then
   begin MessageDlg('The item is short-dated. Check the expiry date.', mtWarning, [mbOk], 0); end;
  }

  if DayOftheMonth(FieldByName('Expiry_dat').AsDateTime) <> DaysInMonth(FieldByName('Expiry_dat').AsDateTime) then
   FieldByName('Expiry_dat').AsDateTime := UpdateLastDayMon(FieldByName('Expiry_dat').AsDateTime);

  if ((FieldByName('Expiry_dat').AsDateTime < Date()-1) and (FUsesBatchManagement)) then
   if MessageDlg('The stock has expired. Do you want to save and continue?', mtWarning, [mbYes, mbNo], 0)=mrNo then
    Abort;

  FieldByName('ExtendedCost_mon').AsFloat := FieldByName('QtyCredit_int').AsInteger * vPackCostIncl;
  FieldByName('LastUpdate_dat').AsDateTime := Now();
  FieldByName('UserName_str').AsString  :=  FUserName;
  FieldByName('User_ID').Value           := FUserID;
  end;
end;

procedure TCreditsDm.CloseAllTables;
begin

 if qryCreditItems.Active then
  qryCreditItems.Close;
 if tblDemanders.Active then
  tblDemanders.Close;
 if stpCreditEditHistory.Active then
  stpCreditEditHistory.Close;

end;



procedure TCreditsDm.AddRequisitionItems(Requisition_ID: integer);
begin
 with stp_AddRequisitionItems do
  begin
  Parameters.ParamByName('@Credit_ID').Value             := vCurrentCredit;
  Parameters.ParamByName('@Requisition_ID').Value        := Requisition_ID;
  ExecProc;
  end;
end;

procedure TCreditsDm.UpdateVATonItems;
begin

 with stp_UpdateItemsVat do
  begin
  Parameters.ParamByName('@Credit_ID').Value    := vCurrentCredit;
  Parameters.ParamByName('@VAT').Value          := vVat;
  end;

end;


procedure TCreditsDm.atnAddRequisitionItemsExecute(Sender: TObject);
var
 vRequisitionRef_str: string;
 
begin
// Something up here...
 LoadDemanderRequisitions;

 if CreditRequisitionsFrm.ShowModal =  mrOK then
  begin
  DeleteAllItems();
  AddRequisitionItems(qryDemanderRequisitions.FieldByName('Requisition_ID').AsInteger);
  vRequisitionRef_str := qryDemanderRequisitions.FieldByName('Requisition_Str').AsString;
  LoadCreditItems;
  UpdateCreditSubTotals;
  UpdateCreditItemsTotals;
  AddEditHistory(HST_ADD, 'Items added from Requisition list: '+vRequisitionRef_str, ADD_RET);
  end;
  
end;


function TCreditsDm.LoadSqlStatement(pType : integer): boolean;
var
 sql_str : string;
 //vReceiptID : integer;
begin

 with qrySqlStatements do
  begin
  Close;
  Open;
  if recordCount > 0 then
   sql_str := qrySqlStatements.FieldByName('Credit_01').AsString;
  end;

 with stp_CustomReport do
  begin
  if (qrySqlStatements.RecordCount > 0) then
   if (not VarISNull(sql_str)) and (FileExists(ExtractFilePath(Application.ExeName) + 'tmp\Credit.rtm')) then
    begin
    Active := False;
    SQL.Clear;
    SQL.Add(sql_str);
    ParamCheck := True;
    Parameters.ParamByName('@CreditID').Value := vCurrentCredit;
    Active := True;

    Result := True;
    end
  else
   Result := False;
  end;   
end;

procedure TCreditsDm.qryCreditCatalogAfterScroll(DataSet: TDataSet);
begin

 vCurrentCredit := qryCreditCatalog.FieldByName('Credit_ID').AsInteger;

end;

procedure TCreditsDm.qryCreditWorkerAccount_IDChange(Sender: TField);
begin
 with qryCreditWorker do
  begin
  vVat := 0;
  vAccount := FieldByName('Account_ID').AsFloat;
  vVat := MainDm.GetVAT(vAccount);
  if VarIsNull(vVat) then vVat := 0;
  FieldByName('AccountName_str').AsString := stpSystemWharehouse.fieldByName('Description').AsString;
  UpdateVATonItems;
  end;
end;

procedure TCreditsDm.qryCreditWorkerReturnedBy_idChange(Sender: TField);
begin
 with qryCreditWorker do
  begin
  FieldByName('ReturnedBy_str').AsString := qryDemanderUsers.FieldByName('personDescription_str').AsString;
  end;
end;

procedure TCreditsDm.qryCreditWorkerDemander_IDChange(Sender: TField);
begin
  //Update the demander name
  with qryCreditWorker do
   begin
   FieldByName('Demander_str').AsString := tblDemanders.FieldByName('Name_str').AsString;
   end;

  LoadDemanderUsers;
  
end;

procedure TCreditsDm.qryCreditWorkerBeforePost(DataSet: TDataSet);
begin
 with qryCreditWorker do
  begin
  FieldByName('LastUpdate_dat').Value           := Now;
  FieldByName('UserName_str').Value             := FUserName;
  FieldByName('User_ID').Value                  := FUserID;
  end;
  
end;

function TCreditsDm.IsLockedBySameUser;
begin

 if FUserID = qryCreditWorker.FieldByName('CheckedOutBy_ID').AsVariant then
  Result := True
 else
  Result := False;          
end;

procedure TCreditsDm.UnLockReturns;
begin

 with qryCreditWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  end;

 if CreditsDetailFrm.Active then
  CreditsDetailFrm.Close;

end;

procedure TCreditsDm.UnLockReturnsMain;
begin

 with qryCreditCatalog do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  Refresh;
  end;
  
end;

procedure TCreditsDm.atnUnlockReturnsExecute(Sender: TObject);
begin

 UnLockReturns;

end;

function TCreditsDm.IsRecordLocked: Boolean;
begin

 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('Credit_ID').Value := vCurrentCredit;
  Open;
  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;

end;

procedure TCreditsDm.atnUnLockReturnsMainExecute(Sender: TObject);
begin
 UnLockReturnsMain;
end;

end.

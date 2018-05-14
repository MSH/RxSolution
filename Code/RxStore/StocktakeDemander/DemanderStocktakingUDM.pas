unit DemanderStocktakingUDM;

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
  HST_PST     = 'POSTED';

  ADD_ITEM    = 0;
  ADD_RET     = 1;

type
  TDemanderStocktakingDM = class(TDataModule)
    ADODStocktake: TADOConnection;
    tblDemanderStocktake: TADOQuery;
    dsDemanderStocktake: TDataSource;
    qryIsDemanderValid: TADOQuery;
    tblDemanderStocktakeStockTakeDemander_ID: TAutoIncField;
    tblDemanderStocktakeSystemStore_ID: TIntegerField;
    tblDemanderStocktakeSystemStore_str: TWideStringField;
    tblDemanderStocktakeCreated_dat: TDateTimeField;
    tblDemanderStocktakeDemander_ID: TIntegerField;
    tblDemanderStocktakeDemanderName_str: TWideStringField;
    tblDemanderStocktakeVerifiedBy_str: TStringField;
    tblDemanderStocktakeVerifiedDate_Dat: TDateTimeField;
    tblDemanderStocktakeReason_str: TWideStringField;
    tblDemanderStocktakeRemarks_mem: TMemoField;
    tblDemanderStocktakeStockCapturedBy_str: TStringField;
    tblDemanderStocktakeStockCaptured_dat: TDateTimeField;
    tblDemanderStocktakeTotalCost_mon: TBCDField;
    tblDemanderStocktakeItemsNo_int: TIntegerField;
    tblDemanderStocktakeLastUpdate_dat: TDateTimeField;
    tblDemanderStocktakeLastUpdateBy_str: TStringField;
    tblDemanderStocktakeLastUpdateBy_dbl: TIntegerField;
    tblDemanderStocktakePosted_bol: TBooleanField;
    tblDemanderStocktakePosted_dat: TDateTimeField;
    tblDemanderStocktakePostedBy_str: TWideStringField;
    tblDemanderStocktakeCheckedOutBy_ID: TIntegerField;
    tblDemanderStocktakeCheckedOutName_str: TWideStringField;
    tblDemanderStocktakeCheckedOut_bol: TBooleanField;
    tblDemanderStocktakeCheckedOut_dat: TDateTimeField;
    dsqryADOSystemWharehouse: TDataSource;
    stpSystemWharehouse: TADOTable;
    stpSystemWharehouseSystemStore_ID: TAutoIncField;
    stpSystemWharehouseSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseDemanderName_str: TWideStringField;
    stpSystemWharehouseDemanderCode_str: TWideStringField;
    stpSystemWharehouseAccountName_str: TStringField;
    stpSystemWharehouseAccount_str: TStringField;
    stpSystemWharehouseDescription: TWideStringField;
    tblSystemUsers: TADOQuery;
    dsUsers: TDataSource;
    tblDemanders: TADOQuery;
    tblDemandersDemander_ID: TAutoIncField;
    tblDemandersCode_str: TWideStringField;
    tblDemandersName_str: TWideStringField;
    tblDemandersDemanderUnique_ID: TGuidField;
    dsDemandersFrom: TDataSource;
    qryDemanderUsers: TADOStoredProc;
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
    dsDemanderUsers: TDataSource;
    AdoAddSingleItem: TADOCommand;
    stpDeleteAllItems: TADOQuery;
    AutoIncField2: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField3: TIntegerField;
    stp_AddDemanderItems: TADOStoredProc;
    qryStocktakeWorker: TADOQuery;
    dsStocktakeWorker: TDataSource;
    qryStocktakeItems: TADOQuery;
    dsStocktakeItems: TDataSource;
    qryEditHistory: TADOQuery;
    dsEditHistory: TDataSource;
    qryStocktakeItemsStockTakeDemanderItem_ID: TAutoIncField;
    qryStocktakeItemsStockTakeDemander_ID: TIntegerField;
    qryStocktakeItemsFullPackQty_int: TIntegerField;
    qryStocktakeItemsBrokenPackQty_dbl: TFloatField;
    qryStocktakeItemsOldFullPackQty_int: TIntegerField;
    qryStocktakeItemsOldBrokenPackQty_dbl: TFloatField;
    qryStocktakeItemsPackCost_mon: TBCDField;
    qryStocktakeItemsExtendedCost_mon: TBCDField;
    qryStocktakeItemsProductCode_ID: TIntegerField;
    qryStocktakeItemsICN_str: TWideStringField;
    qryStocktakeItemsNSN_str: TWideStringField;
    qryStocktakeItemsECN_str: TWideStringField;
    qryStocktakeItemsDescription_str: TStringField;
    qryStocktakeItemsLastUpdate_dat: TDateTimeField;
    qryStocktakeItemsLastUpdateBy_dbl: TIntegerField;
    qryStocktakeItemsLastUpdateBy_str: TWideStringField;
    qryEditHistoryStockTakeDemanderHistory_ID: TAutoIncField;
    qryEditHistoryStockTakeDemander_ID: TIntegerField;
    qryEditHistoryDescription_str: TStringField;
    qryEditHistoryUser_ID: TIntegerField;
    qryEditHistoryDate_dat: TDateTimeField;
    qryEditHistoryProductCode_ID: TIntegerField;
    qryEditHistoryStockTakeDemanderItem_ID: TIntegerField;
    qryEditHistoryType_str: TStringField;
    qryEditHistoryUserName_str: TStringField;
    qryEditHistoryItem_ID: TIntegerField;
    qryStocktakeWorkerStockTakeDemander_ID: TAutoIncField;
    qryStocktakeWorkerSystemStore_ID: TIntegerField;
    qryStocktakeWorkerSystemStore_str: TWideStringField;
    qryStocktakeWorkerCreated_dat: TDateTimeField;
    qryStocktakeWorkerDemander_ID: TIntegerField;
    qryStocktakeWorkerDemanderName_str: TWideStringField;
    qryStocktakeWorkerVerifiedBy_str: TStringField;
    qryStocktakeWorkerVerifiedDate_Dat: TDateTimeField;
    qryStocktakeWorkerReason_str: TWideStringField;
    qryStocktakeWorkerRemarks_mem: TMemoField;
    qryStocktakeWorkerStockCapturedBy_str: TStringField;
    qryStocktakeWorkerStockCaptured_dat: TDateTimeField;
    qryStocktakeWorkerTotalCost_mon: TBCDField;
    qryStocktakeWorkerItemsNo_int: TIntegerField;
    qryStocktakeWorkerLastUpdate_dat: TDateTimeField;
    qryStocktakeWorkerLastUpdateBy_str: TStringField;
    qryStocktakeWorkerLastUpdateBy_dbl: TIntegerField;
    qryStocktakeWorkerPosted_bol: TBooleanField;
    qryStocktakeWorkerPosted_dat: TDateTimeField;
    qryStocktakeWorkerPostedBy_str: TWideStringField;
    qryStocktakeWorkerCheckedOutBy_ID: TIntegerField;
    qryStocktakeWorkerCheckedOutName_str: TWideStringField;
    qryStocktakeWorkerCheckedOut_bol: TBooleanField;
    qryStocktakeWorkerCheckedOut_dat: TDateTimeField;
    ActionList1: TActionList;
    atnSaveAndClose: TAction;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    atnPostAndClose: TAction;
    atnDeleteAllItems: TAction;
    qryIsRecordLocked: TADOQuery;
    qryIsRecordLockedCheckedOut_bol: TBooleanField;
    tblDemanderStocktakeReferenceNo_str: TWideStringField;
    qryStocktakeWorkerReferenceNo_str: TWideStringField;
    atnAddSingleItem: TAction;
    AtnAddDemanderItems: TAction;
    stp_Totals: TADOStoredProc;
    stp_TotalsCountOfItem_ID: TIntegerField;
    stp_TotalsSumOfExtendedCost_mon: TBCDField;
    atnDeleteItem: TAction;
    qryReportDataMain: TADOStoredProc;
    dsReportDataMain: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText26: TppDBText;
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
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText65: TppDBText;
    ppDBText60: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppLine12: TppLine;
    ppDBCalc2: TppDBCalc;
    ppParameterList1: TppParameterList;
    ExtraOptions1: TExtraOptions;
    qryReportDataMainStockTakeDemander_ID: TAutoIncField;
    qryReportDataMainSystemStore_ID: TIntegerField;
    qryReportDataMainSystemStore_str: TWideStringField;
    qryReportDataMainReferenceNo_str: TWideStringField;
    qryReportDataMainCreated_dat: TDateTimeField;
    qryReportDataMainDemander_ID: TIntegerField;
    qryReportDataMainDemanderName_str: TWideStringField;
    qryReportDataMainVerifiedBy_str: TStringField;
    qryReportDataMainVerifiedDate_Dat: TDateTimeField;
    qryReportDataMainReason_str: TWideStringField;
    qryReportDataMainRemarks_mem: TMemoField;
    qryReportDataMainStockCapturedBy_str: TStringField;
    qryReportDataMainStockCaptured_dat: TDateTimeField;
    qryReportDataMainTotalCost_mon: TBCDField;
    qryReportDataMainItemsNo_int: TIntegerField;
    qryReportDataMainLastUpdate_dat: TDateTimeField;
    qryReportDataMainLastUpdateBy_str: TStringField;
    qryReportDataMainLastUpdateBy_dbl: TIntegerField;
    qryReportDataMainPosted_bol: TBooleanField;
    qryReportDataMainPosted_dat: TDateTimeField;
    qryReportDataMainPostedBy_str: TWideStringField;
    qryReportDataMainCheckedOutBy_ID: TIntegerField;
    qryReportDataMainCheckedOutName_str: TWideStringField;
    qryReportDataMainCheckedOut_bol: TBooleanField;
    qryReportDataMainCheckedOut_dat: TDateTimeField;
    qryReportDataMainICN_str: TWideStringField;
    qryReportDataMainECN_str: TWideStringField;
    qryReportDataMainNSN_str: TWideStringField;
    qryReportDataMainDescription_str: TStringField;
    qryReportDataMainSKUUnit_str: TWideStringField;
    qryReportDataMainPackCost_mon: TBCDField;
    qryReportDataMainFullPackQty_int: TIntegerField;
    qryReportDataMainBrokenPackQty_dbl: TFloatField;
    qryReportDataMainOldFullPackQty_int: TIntegerField;
    qryReportDataMainOldBrokenPackQty_dbl: TFloatField;
    qryReportDataMainExtendedCost_mon: TBCDField;
    qryReportDataMainFullPackQtyDiff_int: TIntegerField;
    qryReportDataMainBrokenPackQtyDiff_int: TFloatField;
    ppDBPipeline1: TppDBPipeline;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    atnPrintMainReport: TAction;
    ppLabel1: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    stp_DSMarkComplete: TADOStoredProc;
    qryProductPack: TADOQuery;
    ppLine4: TppLine;
    stpStockDemanderAudit: TADOStoredProc;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    qryReportDataMainSKUCost_mon: TBCDField;
    qryReportDataMainPackSizeValue_dbl: TFloatField;
    qryReportDataMainFullCostDiff_mon: TBCDField;
    qryReportDataMainBrokenPackCostDiff_mon: TFloatField;
    qryStocktakeItemsPackSizeValue_dbl: TFloatField;
    qryStocktakeItemsSKUCost_mon: TBCDField;
    qryStocktakeItemsSKUUnit_str: TWideStringField;
    ppReportAnomalies: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel21: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine9: TppLine;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel38: TppLabel;
    ppDBText23: TppDBText;
    ppLine10: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel41: TppLabel;
    ppDBText32: TppDBText;
    ppLine14: TppLine;
    ppDBCalc4: TppDBCalc;
    ppParameterList2: TppParameterList;
    atnPrintDifferences: TAction;
    ppDBText27: TppDBText;
    ppLabel24: TppLabel;
    ppLabel42: TppLabel;
    ppDBText33: TppDBText;
    qryLastItemPrice: TADOQuery;
    UpdatePriceToLastIssue: TADOQuery;
    stp_LastItemPrice: TADOStoredProc;
    stp_LastItemPriceLastPrice: TBCDField;
    checkUnPosted_Req: TADOQuery;
    qryDemanderItems: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField5: TFloatField;
    IntegerField6: TIntegerField;
    FloatField6: TFloatField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    IntegerField7: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField7: TWideStringField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField8: TIntegerField;
    WideStringField8: TWideStringField;
    FloatField7: TFloatField;
    BCDField3: TBCDField;
    WideStringField9: TWideStringField;
    checkUnPostedTransfers: TADOQuery;
    checkUnpostedCredits: TADOQuery;
    qryReportAnomalies: TADOStoredProc;
    dsReportAnomalies: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    qryReportAnomaliesStockTakeDemander_ID: TAutoIncField;
    qryReportAnomaliesSystemStore_ID: TIntegerField;
    qryReportAnomaliesSystemStore_str: TWideStringField;
    qryReportAnomaliesReferenceNo_str: TWideStringField;
    qryReportAnomaliesCreated_dat: TDateTimeField;
    qryReportAnomaliesDemander_ID: TIntegerField;
    qryReportAnomaliesDemanderName_str: TWideStringField;
    qryReportAnomaliesVerifiedBy_str: TStringField;
    qryReportAnomaliesVerifiedDate_Dat: TDateTimeField;
    qryReportAnomaliesReason_str: TWideStringField;
    qryReportAnomaliesRemarks_mem: TMemoField;
    qryReportAnomaliesStockCapturedBy_str: TStringField;
    qryReportAnomaliesStockCaptured_dat: TDateTimeField;
    qryReportAnomaliesTotalCost_mon: TBCDField;
    qryReportAnomaliesItemsNo_int: TIntegerField;
    qryReportAnomaliesLastUpdate_dat: TDateTimeField;
    qryReportAnomaliesLastUpdateBy_str: TStringField;
    qryReportAnomaliesLastUpdateBy_dbl: TIntegerField;
    qryReportAnomaliesPosted_bol: TBooleanField;
    qryReportAnomaliesPosted_dat: TDateTimeField;
    qryReportAnomaliesPostedBy_str: TWideStringField;
    qryReportAnomaliesCheckedOutBy_ID: TIntegerField;
    qryReportAnomaliesCheckedOutName_str: TWideStringField;
    qryReportAnomaliesCheckedOut_bol: TBooleanField;
    qryReportAnomaliesCheckedOut_dat: TDateTimeField;
    qryReportAnomaliesICN_str: TWideStringField;
    qryReportAnomaliesECN_str: TWideStringField;
    qryReportAnomaliesNSN_str: TWideStringField;
    qryReportAnomaliesDescription_str: TStringField;
    qryReportAnomaliesSKUUnit_str: TWideStringField;
    qryReportAnomaliesPackCost_mon: TBCDField;
    qryReportAnomaliesSKUCost_mon: TBCDField;
    qryReportAnomaliesPackSizeValue_dbl: TFloatField;
    qryReportAnomaliesFullPackQty_int: TIntegerField;
    qryReportAnomaliesBrokenPackQty_dbl: TFloatField;
    qryReportAnomaliesOldFullPackQty_int: TIntegerField;
    qryReportAnomaliesOldBrokenPackQty_dbl: TFloatField;
    qryReportAnomaliesExtendedCost_mon: TBCDField;
    qryReportAnomaliesFullPackQtyDiff_int: TIntegerField;
    qryReportAnomaliesBrokenPackQtyDiff_int: TFloatField;
    qryReportAnomaliesFullCostDiff_mon: TBCDField;
    qryReportAnomaliesBrokenPackCostDiff_mon: TFloatField;
    ppDBCalc5: TppDBCalc;
    checkUnPosted_ReqActivated_bol: TBooleanField;
    checkUnPosted_ReqDemander_ID: TIntegerField;
    checkUnpostedCreditsPosted_bol: TBooleanField;
    checkUnpostedCreditsDemander_ID: TIntegerField;
    checkUnPosted_ReqRequisition_ID: TAutoIncField;
    checkUnPosted_ReqDemander_Str: TStringField;
    checkUnPosted_ReqSystemStore_ID: TIntegerField;
    checkUnPosted_ReqSystemStore_str: TStringField;
    checkUnPosted_ReqRequisition_str: TStringField;
    checkUnPosted_ReqRequisition_dat: TDateTimeField;
    checkUnPosted_ReqVoucherNo_str: TStringField;
    checkUnPosted_ReqOrdered_dat: TDateTimeField;
    checkUnPosted_ReqOrderedBy_str: TStringField;
    checkUnPosted_ReqAuthorizedBy_str: TStringField;
    checkUnPosted_ReqAuthorized_Dat: TDateTimeField;
    checkUnPosted_ReqCharges_mon: TBCDField;
    checkUnPosted_ReqTotalCost_mon: TBCDField;
    checkUnPosted_ReqItemsNo_int: TIntegerField;
    checkUnPosted_ReqRemarks_mem: TMemoField;
    checkUnPosted_ReqActivatedBy_str: TStringField;
    checkUnPosted_ReqActivated_dat: TDateTimeField;
    checkUnPosted_ReqIssuedBy_str: TStringField;
    checkUnPosted_ReqIssued_Dat: TDateTimeField;
    checkUnPosted_ReqReceived_dat: TDateTimeField;
    checkUnPosted_ReqReceivedBy_str: TStringField;
    checkUnPosted_ReqLastUpdate_dat: TDateTimeField;
    checkUnPosted_ReqCode_str: TStringField;
    checkUnPosted_ReqLastUpdateBy_str: TStringField;
    checkUnPosted_ReqLastUpdateBy_dbl: TIntegerField;
    checkUnPosted_ReqCompleted_bol: TBooleanField;
    checkUnPosted_ReqItemsComplete_bol: TBooleanField;
    checkUnPosted_ReqPOReference_str: TWideStringField;
    checkUnPosted_ReqCheckedOutBy_ID: TIntegerField;
    checkUnPosted_ReqCheckedOutName_str: TWideStringField;
    checkUnPosted_ReqCheckedOut_bol: TBooleanField;
    checkUnPosted_ReqCheckedOut_dat: TDateTimeField;
    checkUnPosted_ReqSupplier_ID: TIntegerField;
    checkUnPosted_ReqSupplier_Str: TWideStringField;
    checkUnpostedCreditsCredit_ID: TAutoIncField;
    checkUnpostedCreditsDemander_Str: TStringField;
    checkUnpostedCreditsSystemStore_ID: TIntegerField;
    checkUnpostedCreditsSystemStore_str: TStringField;
    checkUnpostedCreditsCredit_str: TStringField;
    checkUnpostedCreditsCredit_dat: TDateTimeField;
    checkUnpostedCreditsVoucherNo_str: TStringField;
    checkUnpostedCreditsAuthorizedBy_str: TStringField;
    checkUnpostedCreditsAuthorized_Dat: TDateTimeField;
    checkUnpostedCreditsTotalCost_mon: TBCDField;
    checkUnpostedCreditsItemsNo_int: TIntegerField;
    checkUnpostedCreditsRemarks_mem: TMemoField;
    checkUnpostedCreditsPostedBy_str: TStringField;
    checkUnpostedCreditsPosted_dat: TDateTimeField;
    checkUnpostedCreditsReceived_dat: TDateTimeField;
    checkUnpostedCreditsReceivedBy_str: TStringField;
    checkUnpostedCreditsLastUpdate_dat: TDateTimeField;
    checkUnpostedCreditsUserName_str: TStringField;
    checkUnpostedCreditsUser_ID: TIntegerField;
    checkUnpostedCreditsPOReference_str: TWideStringField;
    checkUnpostedCreditsCheckedOutBy_ID: TIntegerField;
    checkUnpostedCreditsCheckedOutName_str: TWideStringField;
    checkUnpostedCreditsCheckedOut_bol: TBooleanField;
    checkUnpostedCreditsCheckedOut_dat: TDateTimeField;
    checkUnpostedCreditsReturnedBy_str: TWideStringField;
    checkUnpostedCreditsReturnedBy_id: TIntegerField;
    checkUnpostedCreditsReason_str: TWideStringField;
    checkUnpostedCreditsRequisitionRef_id: TIntegerField;
    checkUnpostedCreditsRequisitionRef_str: TWideStringField;
    checkUnpostedCreditsReturned_dat: TDateTimeField;
    checkUnpostedCreditsAccount_ID: TIntegerField;
    checkUnpostedCreditsAccountName_str: TWideStringField;
    ppDBPipelineRequisitions: TppDBPipeline;
    ppDBPipelineCredits: TppDBPipeline;
    ppDBPipelineTransfers: TppDBPipeline;
    dsReqs: TDataSource;
    dsCredits: TDataSource;
    dsTransfers: TDataSource;
    ppReportRequisitions: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLine24: TppLine;
    ppLabel126: TppLabel;
    ppSystemVariable18: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel130: TppLabel;
    ppDBText117: TppDBText;
    ppLine22: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText14: TppDBText;
    ppDBText34: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppReportCredits: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel46: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppFooterBand4: TppFooterBand;
    ppLine11: TppLine;
    ppParameterList4: TppParameterList;
    ppReportTransfers: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel50: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLine15: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppFooterBand5: TppFooterBand;
    ppLine16: TppLine;
    ppParameterList5: TppParameterList;
    checkUnPostedTransfersDemanderTransfer_ID: TAutoIncField;
    checkUnPostedTransfersCreated_dat: TDateTimeField;
    checkUnPostedTransfersDemanderTransferRefNo_str: TWideStringField;
    checkUnPostedTransfersDemanderFrom_ID: TIntegerField;
    checkUnPostedTransfersDemanderTo_ID: TIntegerField;
    checkUnPostedTransfersLastUpdated_dat: TDateTimeField;
    checkUnPostedTransfersLastUpdatedBy_str: TWideStringField;
    checkUnPostedTransfersLastEditedBy_ID: TIntegerField;
    checkUnPostedTransfersAccount_ID: TIntegerField;
    checkUnPostedTransfersAccountName_str: TWideStringField;
    checkUnPostedTransfersReference_str: TWideStringField;
    checkUnPostedTransfersRequestedDate_dat: TDateTimeField;
    checkUnPostedTransfersPostedDate_dat: TDateTimeField;
    checkUnPostedTransfersPosted_bol: TBooleanField;
    checkUnPostedTransfersAuthorisedBy_str: TWideStringField;
    checkUnPostedTransfersRequestedBy_str: TWideStringField;
    checkUnPostedTransfersIssuedBy_str: TWideStringField;
    checkUnPostedTransfersIssuedDate_dat: TDateTimeField;
    checkUnPostedTransfersDemanderFrom_str: TWideStringField;
    checkUnPostedTransfersDemanderTo_str: TWideStringField;
    checkUnPostedTransfersAuthorisedDate_dat: TDateTimeField;
    checkUnPostedTransfersCheckedOut_bol: TBooleanField;
    checkUnPostedTransfersCheckedOutName_str: TWideStringField;
    checkUnPostedTransfersCheckedOut_dat: TDateTimeField;
    checkUnPostedTransfersCheckedOutBy_ID: TIntegerField;
    checkUnPostedTransfersSystemStore_ID: TIntegerField;
    checkUnPostedTransfersActive_bol: TBooleanField;
    checkUnPostedTransfersRemarks_mem: TMemoField;
    checkUnPostedTransfersItemsNo_int: TIntegerField;
    checkUnPostedTransfersTotalCost_mon: TBCDField;
    checkUnPostedTransfersUseSKUOnly_bol: TBooleanField;
    tblDemanderNames: TADOQuery;
    AutoIncField3: TAutoIncField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    GuidField1: TGuidField;
    dsDemandersNames: TDataSource;
    ADOQuery1: TADOQuery;
    qryDemanderName: TADOQuery;
    ppLabel56: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel57: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel58: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    procedure atnPostAndCloseExecute(Sender: TObject);
    procedure atnSaveAndCloseExecute(Sender: TObject);
    procedure atnDeleteAllItemsExecute(Sender: TObject);
    procedure atnAddSingleItemExecute(Sender: TObject);
    procedure tblDemanderStocktakeAfterScroll(DataSet: TDataSet);
    procedure AtnAddDemanderItemsExecute(Sender: TObject);
    procedure qryStocktakeItemsBeforePost(DataSet: TDataSet);
    procedure atnDeleteItemExecute(Sender: TObject);
    procedure qryStocktakeWorkerDemander_IDChange(Sender: TField);
    procedure atnPrintMainReportExecute(Sender: TObject);
    procedure atnPrintDifferencesExecute(Sender: TObject);
    procedure qryStocktakeWorkerBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
    procedure AddStocktakingItem(pReqID, pProductID: double; pDemID: integer);
    procedure AddDemanderItems(Demander: integer; ReqID: integer);
    procedure UpdateStocktakeSubTotals;
    procedure LoadTotals;
    procedure LoadItems;
    procedure LoadEditHistory;
    procedure LoadAccounts;
    procedure LoadDemanders;
    procedure CloseAllTables;
    function ValidatePosting: Boolean;
    function PostRecord: Boolean;
    procedure PrintUnpostedRequisitions;
    procedure PrintUnpostedTransfers;
    procedure PrintUnpostedCredits;

  public
    { Public declarations }
    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    CheckComplete, atnEnabled, lockedByUser, AddNewRecord: Boolean;
    vCurrentRecord : integer;
    vVat, vAccount, userDemID : double;
    function IsRecordLocked: Boolean;
    function IsDemanderValid(DemanderID : Double) : boolean;
    procedure DataConnect(startDate : TDateTime; endDate :TDateTime);
    procedure DeleteAllItems;
    procedure LoadDemanderUsers;
    procedure AddEditHistory(const pType, pStr :string; pAddType: integer );
    procedure EditStocktake;
    procedure AddStocktake;
    procedure UnLockDemanderStocktaking;
    procedure UnLockDemanderStocktakingMain;
    procedure LoadReportData;
    procedure RefreshStocktakeList;
    function UpdateLastPriceDemStockItems: Boolean;
    function AnyUnpostedRequisitions: Boolean;
    function AnyUnpostedTransfers: Boolean;
    function AnyUnpostedCredits: Boolean;
    procedure ShowUnpostedRecords;
    function CheckUnpostedTransactions: Boolean;
    function GetDemanderName(DemanderID : integer): string;

  end;

var
  DemanderStocktakingDM: TDemanderStocktakingDM;

implementation

uses MainUDM, RxSolutionUFrm, RxSolutionSecurityClass, ProductGeneralUFrm,
DemanderStocktakingDetailUFrm, DemanderTransferDetailUFrm,
  DialogProgressIndicatorUFrm;

{$R *.dfm}

//Function checks whether record is currently being used
//Returns value of 'True' if it is in a 'Locked' state
function  TDemanderStocktakingDM.IsRecordLocked: Boolean;
begin

 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;

end;

//********* Check if demander ID does exist on the system
function TDemanderStocktakingDM.IsDemanderValid(DemanderID : Double) : boolean;
begin

 Result := False;

 with qryIsDemanderValid do
  begin
  Parameters.ParamByName('@DemanderID').Value := DemanderID;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   Result := True
  else
   Result := False;
  Close;
  end; 

end;

procedure TDemanderStocktakingDM.DataConnect(startDate : TDateTime; endDate :TDateTime);
var
 FDataBasePath       : string;
begin

if Assigned(MainDM) then
 begin
 ADODStocktake.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 userDemID := 0;                                                                                                        
 if IsDemanderValid(RxSolutionFrm.Security.User.UserDemanderID.Value) then
   userDemID := RxSolutionFrm.Security.User.UserDemanderID.Value;

 with tblDemanderStocktake do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('StartDate').Value     := startDate;
  Parameters.ParamByName('EndDate').Value       := endDate;
      
  //********* Only load relevant Demander data if user locked to their specific Demander
  if userDemID > 0 then
   begin
   //Setup filter on user specs
   Filtered := False;
   Filter := 'Demander_ID ='+QuotedStr(FloatToStr(userDemID));
   Filtered := True;
   end;
   
  Prepared := True;
  Open;
  end;

 vCurrentRecord := tblDemanderStocktake.FieldByName('StockTakeDemander_ID').AsInteger;

 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
 end;

end;

procedure TDemanderStocktakingDM.LoadItems;
begin
//************* Open Current Demander Stocktake Items
 with qryStocktakeItems do
  begin
  Close;
  Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
  Open;
  end;

end;

procedure TDemanderStocktakingDM.LoadEditHistory;
begin
 //************ Open current Edit History table
 with qryEditHistory do
  begin
  Close;
  Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
  Open;
  end;
end;

procedure TDemanderStocktakingDM.LoadDemanders;
begin
 //************ Open Demanders on System
 with tblDemanders do
  begin
  Close;
  Open;
  end;

 with tblDemanderNames do
  begin
  Close;
  Open;
  end;

end;

procedure TDemanderStocktakingDM.LoadDemanderUsers;
begin 
 //************* Open Demander users for the selected demander
 with qryDemanderUsers do
  begin
  Close;
  Parameters.ParamByName('@DemanderID').Value := qryStocktakeWorker.FieldByName('Demander_ID').Value;
  open;
  end;
  
end;

procedure TDemanderStocktakingDM.LoadAccounts;
begin

 with stpSystemWharehouse do
  begin
  Close;
  Open;
  end;

end;

procedure TDemanderStocktakingDM.LoadTotals;
begin

// if qryTransfersWorker.Active then
  with stp_Totals do
   begin
   Close;
   Parameters.ParamByName('@StockTakeDemanderID').Value := vCurrentRecord;
   Open;
   end;
   
end;

procedure TDemanderStocktakingDM.LoadReportData;
begin
 //*********** Load Main Report data 
 with qryReportDataMain do
  begin
  Close;
  Parameters.ParamByName('@DemanderStocktakeID').Value := vCurrentRecord;
  Open;
  end;

 //*********** Load Anomalies Report Data
 with qryReportAnomalies do
  begin
  Close;
  Parameters.ParamByName('@DemanderStocktakeID').Value := vCurrentRecord;
  Open;
  end;

end;

procedure TDemanderStocktakingDM.RefreshStocktakeList;
begin
 //*********** Refresh Main stocktake table
 with tblDemanderStocktake do
  begin
  Close;
  Open;
  end;
end;

procedure TDemanderStocktakingDM.CloseAllTables;
begin
 //************ Close all support tables 

end;

procedure TDemanderStocktakingDM.UpdateStocktakeSubTotals;
begin
 with qryStocktakeWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('ItemsNo_int').AsInteger           := stp_Totals.FieldByName('CountOfItem_ID').AsInteger;
  FieldByName('TotalCost_mon').AsCurrency        := stp_Totals.FieldByName('SumOfExtendedCost_mon').AsCurrency;
  //Post;
  end;
end;

procedure TDemanderStocktakingDM.AddStocktake;
var
 vFetchSuccess : boolean;
begin
 userDemID := 0;
 if IsDemanderValid(RxSolutionFrm.Security.User.UserDemanderID.Value) then
   userDemID := RxSolutionFrm.Security.User.UserDemanderID.Value;
 //************* Add new Stocktake record
 tblDemanderStocktake.Append;
 tblDemanderStocktake.FieldByName('ReferenceNo_str').AsString       := MainDm.GetNextVoucherNumber(vFetchSuccess, 1, MODULE_DEMANDERSTOCKTAKING);
 tblDemanderStocktake.FieldByName('Created_dat').AsDateTime         := Date();
 tblDemanderStocktake.FieldByName('CheckedOut_bol').AsBoolean       := True;
 tblDemanderStocktake.FieldByName('CheckedOutName_str').AsString    := FUserName;
 tblDemanderStocktake.FieldByName('CheckedOut_dat').AsDateTime      := Now;
 tblDemanderStocktake.FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
 tblDemanderStocktake.FieldByName('TotalCost_mon').AsInteger        := 0;
 tblDemanderStocktake.FieldByName('ItemsNo_int').AsInteger          := 0;
 tblDemanderStocktake.FieldByName('SystemStore_ID').Value           := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;

 //************* Lock user to specific demander if they are setup so.
 if userDemID > 0 then
  begin
  tblDemanderStocktake.FieldByName('Demander_ID').AsFloat       := userDemID;
  end;

 tblDemanderStocktake.Post;

 vCurrentRecord := tblDemanderStocktake.FieldByName('StockTakeDemander_ID').AsInteger;
 EditStocktake;

end;

procedure TDemanderStocktakingDM.EditStocktake;
begin 
 //************ View/Edit current stocktaking record
 with qryStocktakeWorker do
  begin
  Close;
  Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
  Open;
  if (not FieldByName('Posted_bol').AsBoolean) and (not FieldByName('CheckedOut_bol').AsBoolean) then
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
 LoadEditHistory;
 LoadDemanders;
 LoadDemanderUsers;
 LoadAccounts;

end;

function TDemanderStocktakingDM.PostRecord: Boolean;
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
  prvPack    : double;
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
 with qryStocktakeItems do
  begin
  First;
  While (not eof)  do
   begin
  // if ((FieldByName('FullPackQty_int').AsInteger > 0) or (FieldByName('BrokenPackQty_dbl').AsFloat > 0)) then
   begin
    vProductID  := FieldByName('ProductCode_ID').AsInteger;
    vAdjQty     := FieldByName('FullPackQty_int').AsInteger;
    prvPack     := FieldByName('BrokenPackQty_dbl').AsFloat;
    vPackCost   := FieldByName('PackCost_mon').AsFloat;
    vCost       := FieldByName('PackCost_mon').AsCurrency * FieldByName('FullPackQty_int').AsInteger;
    vDate       := qryStocktakeWorker.FieldByName('Created_dat').AsDateTime;  // OR POST DATE?
    vReason     := qryStocktakeWorker.FieldByName('Reason_str').AsString;
    vShippingPack := 1; //FieldByName('ShippingPack_int').AsInteger;
    vItemID     := FieldByName('StockTakeDemanderItem_ID').AsInteger;

    vNewQty     := 0;
    vOldQty     := 0;

    //Get pack size of item product
    with qryProductPack do
     begin
     Close;
     Parameters.ParamByName('ProductCodeID').Value := vProductID;
     Open;
     //prvPack := FieldByName('PackSizeValue_dbl').AsInteger;
     end;  

    //************* Committ transaction
    //************* Update Demander Stock and Audit Dispensing table
    with stpStockDemanderAudit do
     begin
     Parameters.ParamByName('@ProductID').Value                 := qryProductPack.FieldByName('productPackSize_ID').AsVariant;
     Parameters.ParamByName('@DemanderFromUniqueID').Value      := tblDemanders.FieldByName('DemanderUnique_ID').AsVariant;
     Parameters.ParamByName('@Quantity').Value                  := vAdjQty;
     Parameters.ParamByName('@QtyUnits').Value                  := prvPack;
     Parameters.ParamByName('@Reference').Value                 := Trim(qryStocktakeWorker.FieldByName('ReferenceNo_str').AsString);
     Parameters.ParamByName('@User').Value                      := Trim(FUserName);
     Parameters.ParamByName('@UserID').Value                    := FUserID;
     Parameters.ParamByName('@VoucherNo').Value                 := Trim(qryStocktakeWorker.FieldByName('Reason_str').AsString);
     Parameters.ParamByName('@SystemStoreID').Value             := 1;
     Parameters.ParamByName('@SupplierID').Value                := 1;
     Parameters.ParamByName('@itemID').Value                    := vItemID;
     Parameters.ParamByName('@PackValueCost').Value             := vPackCost;
     ExecProc;
     end;

    end;
     //end of if Returned Qty > 0
     qryStocktakeItems.Next;
     end;
    end;
  except
   Result := False;
  end; 
 //Screen.Cursor := Save_Cursor;
 RefreshStocktakeList;
 Result := True;
end;


procedure TDemanderStocktakingDM.atnPostAndCloseExecute(Sender: TObject);
var
 vDemID, Level : integer;
 WMS : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
//Current document
 Level := ADODStocktake.BeginTrans;
 try
 vDemID := vCurrentRecord;
 //Check and Save any current open record
 if qryStocktakeWorker.State in [dsEdit, dsInsert] then
  begin
  qryStocktakeWorker.FieldByName('CheckedOut_bol').AsBoolean := False;
  qryStocktakeWorker.FieldByName('CheckedoutName_str').AsString := '';
  qryStocktakeWorker.FieldByName('CheckedOutBy_ID').AsString := '';
  qryStocktakeWorker.Post;
  end;

  if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0) = mrYes then
   if ValidatePosting then
    if PostRecord then
    begin
    MessageDlg('Stocktake has been posted!', mtInformation, [mbYes], 0);
    with stp_DSMarkComplete do
     begin
     Prepared := False;
     Parameters.ParamByName('@StocktakeID').Value := vDemID;
     Parameters.ParamByName('@UserName').Value := FUserName;
     Prepared := True;
     ExecProc;
     end;

   AddEditHistory(HST_PST, FUserName+' posted the transaction.', ADD_RET);
   //RefreshCreditList;
   // Close detail form
   DemanderStocktakingDetailFrm.Close;
   RefreshStocktakeList;
   end;//
   ADODStocktake.CommitTrans;
  except
    on E:Exception do begin
    MEssageDlg('An error has occured and the transaction will rollback. Please close the application and try again.', mtError, [mbOK], 0);
    ADODStocktake.RollbackTrans;
    AddEditHistory(HST_ERR,'DB Transaction Rollback', ADD_RET);
    DemanderStocktakingDetailFrm.Close;
    RefreshStocktakeList;
    end;
  end;

end;

function TDemanderStocktakingDM.ValidatePosting: Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Demander' +
          #13 + 'Captured By && Date' +
          #13 + 'Verified By && Date' +
          #13 + 'Reason';
begin
  Result := True;

  if qryStocktakeWorker.Active then
   begin
   with qryStocktakeWorker do
    begin
    if FieldByName('Demander_ID').IsNull then Result := False;
    if FieldByName('StockCapturedBy_str').IsNull then Result := False;
    if FieldByName('StockCaptured_dat').IsNull then Result := False;
    if FieldByName('VerifiedBy_str').IsNull then Result := False;
    if FieldByName('VerifiedDate_Dat').IsNull then Result := False;
    if FieldByName('Reason_str').IsNull then Result := False;
    end;

   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
   end
  else
   Result := False;
end;

procedure TDemanderStocktakingDM.atnSaveAndCloseExecute(Sender: TObject);
begin
 //Save Items before Close Parent table
 if qryStocktakeItems.State in [dsEdit, dsInsert] then
   qryStocktakeItems.Post;

 //if not posted then
 if (not qryStocktakeWorker.FieldByName('Posted_bol').AsBoolean) then
 begin
 with qryStocktakeWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;

  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
  Post;
  end;
 LoadTotals;
 UpdateStocktakeSubTotals;
 end;
  CloseAllTables;
 RefreshStocktakeList;
 DemanderStocktakingDetailFrm.Close;      
end;

procedure TDemanderStocktakingDM.atnDeleteAllItemsExecute(Sender: TObject);
begin
 //************ SM Get user confirmation to delete items or not
 if MessageDlg('Are you sure you want to remove this item from the list?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
  DeleteAllItems;
  end;

 LoadTotals;
 UpdateStocktakeSubTotals;

end;

procedure TDemanderStocktakingDM.DeleteAllItems;
begin

 try
  with stpDeleteAllItems do
   begin
   Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
   ExecSQL;
   end;

   AddEditHistory(HST_DEL, 'All products deleted', ADD_RET);
   LoadItems;
  except  on E: Exception do MessageDlg(E.Message, mtError, [mbOk], 0);
  end;

end;

//Add any changes to the history table
procedure TDemanderStocktakingDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer );
var
  vRetID, vRetItemID  :double;
begin
 
 vRetID      := 0;
 vRetItemID  := 0;
 // Get current ID's for Return items

 vRetID := vCurrentRecord;

 with qryStocktakeItems do
    if Active then
      if RecordCount > 0 then
        vRetItemID := FieldByName('StockTakeDemanderItem_ID').AsFloat;

  //Open the correct history records
  with qryEditHistory do
   begin
   if not Active then
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('StockTakeDemander_ID').Value := vRetID;
    Prepared := True;
    Open;
    end;
  //Add new edit history entry
   Append;
   FieldByname('StockTakeDemander_ID').AsFloat     := vRetID;
   FieldByName('Description_str').AsString := pStr;
   FieldByName('UserName_str').AsString    := FUserName;
   FieldByName('User_ID').AsFloat          := FUserID;
   FieldByName('Date_dat').AsDateTime      := Now;
   FieldByName('Type_str').AsString        := pType;
   FieldByName('StockTakeDemanderItem_ID').AsFloat := vRetItemID;
   case pAddType of
    ADD_ITEM :
     begin
     FieldByName('ProductCode_ID').AsFloat   := qryStocktakeItems.FieldByName('Productcode_ID').AsFloat;
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

procedure TDemanderStocktakingDM.UnLockDemanderStocktaking;
begin
 with qryStocktakeWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  end;

 if DemanderTransferDetailFrm.Active then
  DemanderTransferDetailFrm.Close;
end;

procedure TDemanderStocktakingDM.UnLockDemanderStocktakingMain;
begin
 with tblDemanderStocktake do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  Close; Open;
  end;
end;  

procedure TDemanderStocktakingDM.AddStocktakingItem(pReqID, pProductID: double; pDemID: integer);
begin
//Send data to stored procedure to add new item to current item list
 with AdoAddSingleItem do
  begin
 // Prepared := False;
  Parameters.ParamByName('@DemanderStocktakeID').Value := pReqID;
  Parameters.ParamByName('@ProductCodeID').Value:= pProductID;
  Parameters.ParamByName('@DemanderID').Value := pDemID;
  Execute;
  end;
end;

procedure TDemanderStocktakingDM.atnAddSingleItemExecute(Sender: TObject);
var
  vProductSelector  : TProductSelector;
  vRetID            : integer;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;
begin

 //*********** Check if Demander has been selected. If not then cancel the operation and start again.
 with qryStocktakeWorker do
  begin
  if State in [dsEdit, dsInsert] then Post;
  if (FieldByName('Demander_ID').IsNull) then
   begin MessageDlg('Please select a Demander first before adding products', mtWarning, [mbOK], 0); Abort; end
  else
   vRetID := FieldByName('StockTakeDemander_ID').AsInteger;
  end;

 //************ SM - 04 Feb 2013
 //************ Check any unposted transactions before adding any items
 if CheckUnpostedTransactions then Abort;
 // Use same table as curently being edited
 // Get current ID's for Transfer items


 vProductSelector := TProductSelector.Create;
 with qryStocktakeItems, vProductSelector do
  if Active then
   try
   if Product_SelectItems( vProductCost, vProductID) then
    for i := low(vProductID) to high(vProductID) do
     try
     if not Locate('ProductCode_ID;StockTakeDemander_ID', VarArrayOf([vProductID[i], vRetID]), []) then
      begin
      AddStocktakingItem(vCurrentRecord, vProductID[i], qryStocktakeWorker.FieldByName('Demander_ID').AsInteger);
      end;

    with qryStocktakeItems do
     begin
     Close;
     Open;
     end;

     LoadTotals;              //Refresh totals
     UpdateStocktakeSubTotals;         //Update header totals
     AddEditHistory(HST_ADD, 'Adding product(s)', ADD_RET);
     //Added by SM; move cursor to last added item
     Locate('ProductCode_ID;StockTakeDemander_ID', VarArrayOf([vProductID[i], vRetID]), []);
     except
     end;
   finally
    Free;
 end;
 
 //************** Now update prices
// UpdateLastPriceDemStockItems();

end;

procedure TDemanderStocktakingDM.tblDemanderStocktakeAfterScroll(
  DataSet: TDataSet);
begin
 vCurrentRecord :=  tblDemanderStocktake.FieldByName('StockTakeDemander_ID').AsInteger;
end;

//************ Add Authorised items from the 'Demander From'
procedure TDemanderStocktakingDM.AddDemanderItems(Demander: integer; ReqID: integer);
begin
 //
 try
 with stp_AddDemanderItems do
  begin
  Parameters.ParamByName('@DemanderStocktakeID').Value  := ReqID;
  Parameters.ParamByName('@DemanderID').Value  := Demander;
  ExecProc;
  end;
 except
  begin
  AddEditHistory(HST_ERR, 'Un-able to add Demander Items', ADD_RET);
  end;
 end;

end;

//*********** Add Demander Authorised products
procedure TDemanderStocktakingDM.AtnAddDemanderItemsExecute(
  Sender: TObject);
var
 DemanderID, TransferID: integer;
 DemanderStr: string;
begin

 if (VarIsNULL(qryStocktakeWorker.FieldByName('Demander_ID').Value)) then
  begin
  MessageDlg('Please select a Demander first before adding products', mtWarning, [mbOK], 0);
  Abort;
  end;

 //************ SM - 04 Feb 2013
 //************ Check any unposted transactions before adding any items
 if CheckUnpostedTransactions then Abort;

 //Check if Demander has been selected if not then abort procedure
 //Confirm with user if system should remove all current products
 //Add Demander Authorised products
 if not (VarIsNULL(qryStocktakeWorker.FieldByName('Demander_ID').Value)) then
  begin
  if MessageDlg('All the current items will be removed from the list. Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   DeleteAllITems;
   DemanderID    := qryStocktakeWorker.FieldByName('Demander_ID').AsInteger;
   DemanderStr   := tblDemanders.FieldByName('Name_str').AsString;
   AddDemanderItems(DemanderID, vCurrentRecord);
   AddEditHistory(HST_ADD, 'Adding authorised Demander items ['+DemanderStr+']', ADD_ITEM);
   LoadItems;
   end;
  end;

 LoadTotals;
 UpdateStocktakeSubTotals;
 
 LoadItems;
 //********** Now update prices
 //UpdateLastPriceDemStockItems();
 //LoadItems;

end;

procedure TDemanderStocktakingDM.qryStocktakeItemsBeforePost(
  DataSet: TDataSet);
var
 vDescription, vStatus: string;
begin

 with qryStocktakeItems do
  begin
  //************* Check that for valid input
  if (FieldByName('FullPackQty_int').IsNull) then
   begin
   MessageDlg('Please enter a valid number for Full Pack Quantity', mtError, [mbOk], 0);
   Abort;
   end;

  //************* Check that for valid input
  if (FieldByName('BrokenPackQty_dbl').IsNull) then
   begin
   MessageDlg('Please enter a valid amount for SKU Quantity', mtError, [mbOk], 0);
   Abort;
   end;

  //************* Cannot capture Broken Qty > Pack Size
  if (FieldByName('BrokenPackQty_dbl').AsFloat > FieldByName('PackSizeValue_dbl').AsFloat) or (FieldByName('BrokenPackQty_dbl').AsFloat = FieldByName('PackSizeValue_dbl').AsFloat) then
   begin
   MessageDlg('Broken pack quantity cannot be greater or equal to product pack size value', mtError, [mbOk], 0);
   //FieldByName('BrokenPackQty_dbl').AsFloat := FieldByName('PackSizeValue_dbl').AsFloat;
   //vStatus := ' *System Override* :'+ FloatToStr(FieldByName('BrokenPackQty_dbl').OldValue) + ' to: '+ FloatToStr(FieldByName('BrokenPackQty_dbl').NewValue);
   //AddEditHistory(HST_EDT, vDescription + vStatus, ADD_ITEM);
   Abort;
   end;

  //************* Capture any Edit history changes on Full Pack Qty
  if FieldByName('FullPackQty_int').OldValue <> FieldByName('FullPackQty_int').NewValue then
   begin
   vDescription := FieldByName('Description_str').AsString;
   vStatus := ' [Full Pack Quantity changed from: '+ IntToStr(FieldByName('FullPackQty_int').OldValue) + ' to: '+ IntToStr(FieldByName('FullPackQty_int').NewValue) + ']';
   AddEditHistory(HST_EDT, vDescription + vStatus, ADD_ITEM);
   end;

  //************* Capture any Edit history changes on Broken Pack Qty
  if FieldByName('BrokenPackQty_dbl').OldValue <> FieldByName('BrokenPackQty_dbl').NewValue then
   begin
   vDescription := FieldByName('Description_str').AsString;
   vStatus := ' [Broken Pack Quantity changed from: '+ FloatToStr(FieldByName('BrokenPackQty_dbl').OldValue) + ' to: '+ FloatToStr(FieldByName('BrokenPackQty_dbl').NewValue) + ']';
   AddEditHistory(HST_EDT, vDescription + vStatus, ADD_ITEM);
   end;

  //************* Extended Cost =  (Full Pack Qty X Full Pack Cost) + (Broken Packs Qty X SKU Cost )
  FieldByName('ExtendedCost_mon').Value := FieldByName('PackCost_mon').Value * fieldByName('FullPackQty_int').AsInteger
                        + FieldByName('SKUCost_mon').Value * fieldByName('BrokenPackQty_dbl').AsFloat;

  //************* Update Last person updating record
  FieldByName('LastUpdateBy_str').AsString := FUserName;
  FieldByName('LastUpdateBy_dbl').AsFloat := FUserID;
  FieldByName('LastUpdate_dat').Value := Now();

  //************* Update Totals
  LoadTotals;
  UpdateStocktakeSubTotals;
  end;   

end;

procedure TDemanderStocktakingDM.atnDeleteItemExecute(Sender: TObject);
var
 vDescription: string;
begin

 with qryStocktakeItems do
   begin
   if (RecordCount > 0) then
    begin
    if MessageDlg('Are you sure you want to remove the selected product?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
     vDescription := FieldByName('Description_str').AsString;
     Delete;
     AddEditHistory(HST_DEL, vDescription, ADD_ITEM);
     end;
    end;
   end;
 LoadTotals;
 UpdateStocktakeSubTotals;  
end;

procedure TDemanderStocktakingDM.qryStocktakeWorkerDemander_IDChange(
  Sender: TField);
begin

 with qryStocktakeWorker do
  begin
  FieldByName('DemanderName_str').AsString :=  GetDemanderName(FieldByName('Demander_ID').AsInteger);
  //********** Clear the Demander Users when changind Demander
  FieldByName('VerifiedBy_str').AsString := '';
  FieldByName('StockCapturedBy_str').AsString := '';
  end;

 LoadDemanderUsers;

end;

procedure TDemanderStocktakingDM.atnPrintMainReportExecute(
  Sender: TObject);
begin   

 //**********
 if qryStocktakeWorker.Active then
  begin
  //********* Save any un posted data
  with qryStocktakeItems do
   begin
   if State in [dsEdit, dsInsert] then Post;
   end;
  //********* Save any un posted data
  with qryStocktakeWorker do
   begin
   if State in [dsEdit, dsInsert] then Post;
   end;
  //********* Update Totals
  LoadTotals;
  UpdateStocktakeSubTotals;
  end;

 try
 LoadReportData;
 with ppReport1 do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Main report printed', ADD_RET);
 except
  MessageDlg('Unable to print report.', mtError, [mbOk], 0);
  AddEditHistory(HST_PRN, 'Error Printing report', ADD_RET);
 end;
end;        

procedure TDemanderStocktakingDM.atnPrintDifferencesExecute(
  Sender: TObject);
begin

 if qryStocktakeWorker.Active then
  begin
  //********* Save any un posted data
  with qryStocktakeItems do
   begin
   if State in [dsEdit, dsInsert] then Post;
   end;
  //********* Save any un posted data
  with qryStocktakeWorker do
   begin
   if State in [dsEdit, dsInsert] then Post;
   end;
  //********* Update Totals
  
  LoadTotals;
  UpdateStocktakeSubTotals;
  end;

 try
 LoadReportData;
 with ppReportAnomalies do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Anomalies report printed', ADD_RET);
 except
  MessageDlg('Unable to print report.', mtError, [mbOk], 0);
  AddEditHistory(HST_PRN, 'Error Printing report', ADD_RET);
 end;
 
end;


procedure TDemanderStocktakingDM.qryStocktakeWorkerBeforePost(
  DataSet: TDataSet);
begin

 //********** Save last person to edit record
 with qryStocktakeWorker do
  begin
  if ((FieldByName('DemanderName_str').IsNull) and (not FieldByName('Demander_ID').IsNull)) then
   FieldByName('DemanderName_str').AsString := GetDemanderName(FieldByName('Demander_ID').AsInteger);

  FieldByName('LastUpdateBy_str').AsString := FUserName;
  FieldByName('LastUpdateBy_dbl').AsFloat := FUserID;
  FieldByName('LastUpdate_dat').Value := Now();
  end;

end;

function TDemanderStocktakingDM.UpdateLastPriceDemStockItems: Boolean;
var
   vOverallProgress : TProgressIndicatorFrm;
   vCount : integer;
   StrVal : string;
begin

 vCount := 0;
 vOverallProgress := TProgressIndicatorFrm.Create(Self);
 vOverallProgress.MainCaption := 'Price update.';

 //********* Update all item prices to the latest
 try
 with qryDemanderItems, vOverallProgress do
  begin
  Close;
  Parameters.ParamByName('StockTakeDemander_ID').Value := vCurrentRecord;
  First;
  MaxProgress := RecordCount;
  //******** For each item find the last price issued
  while not Eof do
   begin

   CurrentProgress  := vCount;
   StrVal := FieldByName('ICN_str').AsString + ', ' + FieldByName('Description_str').AsString;
   UpdateCaption    := StrVal;

   stp_LastItemPrice.Close;
   stp_LastItemPrice.Parameters.ParamByName('@ProductID').Value         := FieldByName('ProductCode_ID').AsInteger;
   stp_LastItemPrice.Parameters.ParamByName('@DemanderID').Value        := qryStocktakeWorker.FieldByName('Demander_ID').AsInteger;
   stp_LastItemPrice.Open;

   if (stp_LastItemPrice.RecordCount > 0) then
    begin
    Edit;
    FieldByName('PackCost_mon').Value := stp_LastItemPrice.FieldByname('LastPrice').Value;
    FieldByName('SKUCost_mon').Value  := FieldByName('PackCost_mon').Value/FieldByName('PackSizeValue_dbl').Value;
    Post;
    end;

   Next;
   inc(vCount);
   end;
   Result := True;
   MaxProgress := 0;
   Free;
 end

 except
  Result := False;
 end;
 
 LoadItems;
end;

function TDemanderStocktakingDM.AnyUnpostedRequisitions: Boolean;
var
 DemID: integer;
begin

 DemID := qryStocktakeWorker.FieldByName('Demander_ID').AsInteger;

 //************ Check For un posted transactions
 with checkUnPosted_Req do
  begin
  Close;
  Prepared := False;
  //********* Only load relevant Demander data if user locked to their specific Demander
  if DemID > 0 then
   begin
   //Setup filter on user specs
   Filtered := False;
   Filter := 'Demander_ID ='+QuotedStr(FloatToStr(DemID));
   Filtered := True;
   end;
  Prepared := True;
  Open;

  if RecordCount > 0 then
   Result := True
  else
   Result := False;
  Close;
  end;

end;

function TDemanderStocktakingDM.AnyUnpostedTransfers: Boolean;
var
 DemID: integer;
begin

 DemID := qryStocktakeWorker.FieldByName('Demander_ID').AsInteger;

 with checkUnPostedTransfers do
  begin
  Close;
  Prepared := False;
  //********* Only load relevant Demander data if user locked to their specific Demander
  if DemID > 0 then
   begin
   //Setup filter on user specs
   Filtered := False;
   Filter := 'DemanderFrom_ID ='+QuotedStr(FloatToStr(DemID));
   Filtered := True;
   end;
  Prepared := True;
  Open;
  if RecordCount > 0 then
   Result := True
  else
   Result := False;
  Close;
  end;
  
end;

function TDemanderStocktakingDM.AnyUnpostedCredits: Boolean;
var
 DemID: integer;
begin

 DemID := qryStocktakeWorker.FieldByName('Demander_ID').AsInteger;

 with checkUnpostedCredits do
  begin
  Close;
  Prepared := False;
  //********* Only load relevant Demander data if user locked to their specific Demander
  if DemID > 0 then
   begin
   //Setup filter on user specs
   Filtered := False;
   Filter := 'Demander_ID ='+QuotedStr(FloatToStr(DemID));
   Filtered := True;
   end;
  Prepared := True;
  Open;
  if RecordCount > 0 then
   Result := True
  else
   Result := False;
  Close;
  end;

end;

procedure TDemanderStocktakingDM.PrintUnpostedRequisitions;
begin
 //************** SM - 30 Jan 2013
 //************** If there are unposted Requisition then print out report
 if AnyUnpostedRequisitions then
  begin
  with ppReportRequisitions do
   begin
   Print;
   end;
  AddEditHistory(HST_PRN, 'Unposted Requisitions Report', ADD_RET); 
  end;

end;

procedure TDemanderStocktakingDM.PrintUnpostedTransfers;
begin
 //************** SM - 30 Jan 2013
 //************** If there are unposted Transfers then print out report
 if AnyUnpostedTransfers then
  begin
  with ppReportTransfers do
   begin
   Print;
   end;
  AddEditHistory(HST_PRN, 'Unposted Demander Transfers Report', ADD_RET);
  end;

end;

procedure TDemanderStocktakingDM.PrintUnpostedCredits;
begin
 //************** SM - 30 Jan 2013
 //************** If there are unposted Transfers then print out report
 if AnyUnpostedCredits then
  begin
  with ppReportCredits do
   begin
   Print;
   end;
  AddEditHistory(HST_PRN, 'Unposted Credits Report', ADD_RET);
  end;

end;

procedure TDemanderStocktakingDM.ShowUnpostedRecords;
begin
 //************** Print All unposted records
 PrintUnpostedRequisitions;
 PrintUnpostedCredits;
 PrintUnpostedTransfers;
end;

function TDemanderStocktakingDM.CheckUnpostedTransactions: Boolean;
begin

 //************* SM 04 Feb 2013
 //************* Check and Show Any unposted transactions
 //************* SM - Task/Bug 4995 - 30 Jan 2013
 //************* Do not allow user to ADD stocktake if there are unposted transactions(Demander Transfers, Returns from Demander and Requisitions)
 if ((AnyUnpostedRequisitions) or (AnyUnpostedTransfers) or (AnyUnpostedCredits)) then
  begin
  MessageDlg('There are some unposted transactions. Please ensure all Demander Transfers, Returns from Demander and Requisitions are posted.' , mtWarning, [mbOK], 0);
  //************ Show unposted transactions
  DemanderStocktakingDM.ShowUnpostedRecords;
  Result := True;
  end
 else
  Result := False;

end;

function TDemanderStocktakingDM.GetDemanderName(DemanderID : integer) : string;
begin
 
 Result :='';
 with qryDemanderName do
  begin
  Close;
  Parameters.ParamByName('Demander_ID').Value := DemanderID;
  Open;

  if recordCount > 0 then
   Result := fieldByName('Name_str').AsString
  else
   Result := '';
  end;


end;


end.

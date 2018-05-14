unit StockTakeUDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
     MyApplicationUtilities, ActnList, DBActns, ppParameter,
  ppModule, raCodMod, ppVar, DateUtils, Menus, ppStrtch, ppSubRpt;

const
  ALLDEMANDERS  = 'All';

  HST_ADD     = 'ADDED';                                   
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_CHG     = 'CHANGED PRODUCT';

  ADD_ITEM    = 0;
  ADD_REQ     = 1;

type
  TStockTakeDM = class(TDataModule)
    AdoStockTakeConn: TADOConnection;
    dsStockTakeCatalog: TDataSource;
    qryStockTakeItems: TADOQuery;
    dsStockTakeITems: TDataSource;
    stp_StockTakeItems: TADOStoredProc;
    tblProductPack: TADOQuery;
    qryNumbering: TADOQuery;
    qryStockTakeCatalog1: TADOTable;
    ActionList1: TActionList;
    atnAddSingleItem: TAction;
    AdoAddSingleItem: TADOCommand;
    qryStockTakeItemsStockTakeItem_ID: TAutoIncField;
    qryStockTakeItemsStockTake_ID: TIntegerField;
    qryStockTakeItemsProductCode_ID: TIntegerField;
    qryStockTakeItemsType_str: TWideStringField;
    qryStockTakeItemsOldQty_int: TIntegerField;
    qryStockTakeItemsNewQty_int: TIntegerField;
    qryStockTakeItemsPackCost_mon: TBCDField;
    qryStockTakeItemsExpiryDate_dat: TDateTimeField;
    qryStockTakeItemsUserName_str: TWideStringField;
    qryStockTakeItemsLastUpDated_dat: TDateTimeField;
    qryStockTakeItemsLastUpdatedBy_int: TIntegerField;
    qryStockTakeItemsReason_str: TWideStringField;
    qryStockTakeItemsICN_str: TWideStringField;
    qryStockTakeItemsNSN_str: TWideStringField;
    qryStockTakeItemsECN_str: TWideStringField;
    qryStockTakeCatalog1SystemStore_ID: TIntegerField;
    qryStockTakeCatalog1SystemStore_str: TStringField;
    qryStockTakeCatalog1StockTake_str: TStringField;
    qryStockTakeCatalog1StockTake_dat: TDateTimeField;
    qryStockTakeCatalog1Charges_mon: TBCDField;
    qryStockTakeCatalog1TotalCost_mon: TBCDField;
    qryStockTakeCatalog1ItemsNo_int: TIntegerField;
    qryStockTakeCatalog1Remarks_mem: TMemoField;
    qryStockTakeCatalog1ActivatedBy_str: TStringField;
    qryStockTakeCatalog1Activated_bol: TBooleanField;
    qryStockTakeCatalog1Activated_dat: TDateTimeField;
    qryStockTakeCatalog1LastUpdate_dat: TDateTimeField;
    qryStockTakeCatalog1Code_str: TStringField;
    qryStockTakeCatalog1LastUpdateBy_str: TStringField;
    qryStockTakeCatalog1LastUpdateBy_dbl: TIntegerField;
    qryStockTakeCatalog1Completed_bol: TBooleanField;
    qryStockTakeCatalog1CheckedOutBy_ID: TIntegerField;
    qryStockTakeCatalog1CheckedOutName_str: TWideStringField;
    qryStockTakeCatalog1CheckedOut_bol: TBooleanField;
    qryStockTakeCatalog1CheckedOut_dat: TDateTimeField;
    qryStockTakeCatalog1StockTake_ID: TAutoIncField;
    tblSystemUsers: TADOTable;
    tblSystemUsersUserID: TAutoIncField;
    tblSystemUsersDescription: TWideStringField;
    atnPostStockTake: TAction;
    atnDeleteItem: TAction;
    ppDBStockTake: TppDBPipeline;
    atnItemCancel: TDataSetCancel;
    atnItemFirst: TDataSetFirst;
    atnItemPrior: TDataSetPrior;
    atnItemNext: TDataSetNext;
    atnItemLast: TDataSetLast;
    atnItemPost: TDataSetPost;
    atnStockTakeDelete: TAction;
    atnSaveAndClose: TAction;
    qryStockTakeItemsExtendedCost_mon: TBCDField;
    stp_StockTakeITemsTotals: TADOStoredProc;
    dsstp_StockTakeITemsTotals: TDataSource;
    qryStockTakeItemsDiffQty_int: TIntegerField;
    atnAddAllEDLItems: TAction;
    atnAddGroup1Items: TAction;
    atnAddGroup2Items: TAction;
    atnAddBinLocationProducts: TAction;
    qryStockTakeCatalog1VerifiedBy_str: TStringField;
    qryStockTakeCatalog1StockCapturedBy_str: TStringField;
    qryStockTakeCatalog1StockCaptured_dat: TDateTimeField;
    qryStockTakeCatalog1VerifiedDate_Dat: TDateTimeField;
    atnPrintStockTake: TAction;
    adoAddInstitutionalEDL: TADOStoredProc;
    adoAddGroup1Products: TADOStoredProc;
    adoAddGroup2Products: TADOStoredProc;
    adoAddBinLocationProducts: TADOStoredProc;
    atnDeleteItemsOnStockTake: TAction;
    adoDeleteAllItems: TADOStoredProc;
    adoStockTakeReport: TADOStoredProc;
    dsadoStockTakeReport: TDataSource;
    ppStockTake_Report: TppReport;
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
    ppHeaderBand2: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel84: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable6: TppSystemVariable;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    qryStockTakeItemsBatchNumber_str: TWideStringField;
    qryStockTakeItemsDescription_str: TWideStringField;
    qryStockTakeItemsProductCode_str: TWideStringField;
    tblProductPackCost_mon: TBCDField;
    tblProductPackICN_str: TWideStringField;
    tblProductPackNSN_str: TWideStringField;
    tblProductPackECN_str: TWideStringField;
    tblProductPackProductCode_str: TWideStringField;
    stp_StockTakeMarkComplete: TADOStoredProc;
    ppDBCalc1: TppDBCalc;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    stpStockTakeEditHistory: TADOStoredProc;
    dsStockTakeHistory: TDataSource;
    dstblGroup2: TDataSource;
    tblGroup2: TADOTable;
    tblGroup2Code_str: TWideStringField;
    tblGroup2Description_str: TWideStringField;
    dstblGroup1: TDataSource;
    tblGroup1: TADOTable;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    dstblBinLocations: TDataSource;
    qryProductBatchReceipts: TADOQuery;
    dsBatchProducts: TDataSource;
    qryStockTakeCatalog1Reason_str: TWideStringField;
    ppDBSurpluses: TppDBPipeline;
    adoSurpluses: TADOStoredProc;
    dsadoSurpluses: TDataSource;
    ppDBDeficits: TppDBPipeline;
    ppDeficitsReport: TppReport;
    ppTitleBand3: TppTitleBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel46: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppLine9: TppLine;
    ppLabel61: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText67: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule3: TraCodeModule;
    ppParameterList3: TppParameterList;
    adoDeficits: TADOStoredProc;
    dsadoDeficits: TDataSource;
    atnPrint_Surpluses: TAction;
    atnPrint_Deficits: TAction;
    ppDBText68: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppSurplusesReport: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel34: TppLabel;
    ppLine6: TppLine;
    ppLabel35: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText30: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText36: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBCalc5: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppParameterList1: TppParameterList;
    stpStockTakeEditHistoryStockTakeHistory_ID: TAutoIncField;
    stpStockTakeEditHistoryStockTake_ID: TIntegerField;
    stpStockTakeEditHistoryDescription_str: TStringField;
    stpStockTakeEditHistoryUser_ID: TIntegerField;
    stpStockTakeEditHistoryDate_dat: TDateTimeField;
    stpStockTakeEditHistoryProductCode_ID: TIntegerField;
    stpStockTakeEditHistoryStockTakeItem_ID: TIntegerField;
    stpStockTakeEditHistoryType_str: TStringField;
    stpStockTakeEditHistoryUserName_str: TStringField;
    stpStockTakeEditHistoryItem_ID: TIntegerField;
    qryProductBatchReceiptsReceiptItem_ID: TAutoIncField;
    qryProductBatchReceiptsBatchNumber_str: TStringField;
    qryProductBatchReceiptsExpiry_dat: TDateTimeField;
    qryProductBatchReceiptsQtyReceived_int: TIntegerField;
    qryProductBatchReceiptsBatchQty_int: TIntegerField;
    qryProductBatchReceiptsProductCode_ID: TIntegerField;
    qryProductBatchReceiptsShippingPack_int: TIntegerField;
    ppLine10: TppLine;
    ppLine11: TppLine;
    checkUnPosted_Req: TADOQuery;
    checkUnPosted_Rec: TADOQuery;
    adoAddBatchItem: TADOCommand;
    qryProductBatchReceiptsReceiptNo_ID: TIntegerField;
    addBatchItem: TADOStoredProc;
    atnAddBatchItem: TAction;
    qryStockTakeItemsReceiptItem_ID: TIntegerField;
    atnPrintDifferencesReport: TAction;
    qryStockTakeCatalog: TADOQuery;
    qryStockTakeCatalogStockTake_ID: TAutoIncField;
    qryStockTakeCatalogSystemStore_ID: TIntegerField;
    qryStockTakeCatalogSystemStore_str: TStringField;
    qryStockTakeCatalogStockTake_str: TStringField;
    qryStockTakeCatalogStockTake_dat: TDateTimeField;
    qryStockTakeCatalogVerifiedBy_str: TStringField;
    qryStockTakeCatalogVerifiedDate_Dat: TDateTimeField;
    qryStockTakeCatalogCharges_mon: TBCDField;
    qryStockTakeCatalogTotalCost_mon: TBCDField;
    qryStockTakeCatalogItemsNo_int: TIntegerField;
    qryStockTakeCatalogRemarks_mem: TMemoField;
    qryStockTakeCatalogActivatedBy_str: TStringField;
    qryStockTakeCatalogActivated_bol: TBooleanField;
    qryStockTakeCatalogActivated_dat: TDateTimeField;
    qryStockTakeCatalogStockCapturedBy_str: TStringField;
    qryStockTakeCatalogStockCaptured_dat: TDateTimeField;
    qryStockTakeCatalogLastUpdate_dat: TDateTimeField;
    qryStockTakeCatalogCode_str: TStringField;
    qryStockTakeCatalogLastUpdateBy_str: TStringField;
    qryStockTakeCatalogLastUpdateBy_dbl: TIntegerField;
    qryStockTakeCatalogCompleted_bol: TBooleanField;
    qryStockTakeCatalogCheckedOutBy_ID: TIntegerField;
    qryStockTakeCatalogCheckedOutName_str: TWideStringField;
    qryStockTakeCatalogCheckedOut_bol: TBooleanField;
    qryStockTakeCatalogCheckedOut_dat: TDateTimeField;
    qryStockTakeCatalogReason_str: TWideStringField;
    qryStockTakeItemsBin_str: TWideStringField;
    atnRefreshStocktakeList: TAction;
    ppLabel36: TppLabel;
    ppDBText38: TppDBText;
    ppDBText55: TppDBText;
    ppLabel55: TppLabel;
    ppLabel58: TppLabel;
    ppDBText63: TppDBText;
    ppLabel62: TppLabel;
    ppDBText66: TppDBText;
    ppLabel69: TppLabel;
    ppDBText69: TppDBText;
    ppDBText31: TppDBText;
    ppDBText70: TppDBText;
    ppLabel25: TppLabel;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppAnomaliesReport: TppReport;
    ppTitleBand4: TppTitleBand;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLabel77: TppLabel;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel78: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppDBText83: TppDBText;
    ppHeaderBand4: TppHeaderBand;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine15: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBText91: TppDBText;
    ppDBText93: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable11: TppSystemVariable;
    ppLabel94: TppLabel;
    ppDBText95: TppDBText;
    ppSystemVariable12: TppSystemVariable;
    ppLine16: TppLine;
    ppSummaryBand4: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList4: TppParameterList;
    adoAnomalies: TADOStoredProc;
    dsAnomalies: TDataSource;
    ppDBAnomalies: TppDBPipeline;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    qryProductBatchReceiptsPackCost_mon: TBCDField;
    ppLabel87: TppLabel;
    ppDBText15: TppDBText;
    ppLabel93: TppLabel;
    ppDBText50: TppDBText;
    ppSecondCountReport: TppReport;
    ppTitleBand5: TppTitleBand;
    ppDBText82: TppDBText;
    ppDBText87: TppDBText;
    ppDBText90: TppDBText;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppLabel102: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel103: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText103: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppHeaderBand5: TppHeaderBand;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLine19: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBText109: TppDBText;
    ppShape2: TppShape;
    ppDBText110: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSystemVariable14: TppSystemVariable;
    ppLabel116: TppLabel;
    ppDBText111: TppDBText;
    ppSystemVariable15: TppSystemVariable;
    ppLine20: TppLine;
    ppSummaryBand5: TppSummaryBand;
    raCodeModule5: TraCodeModule;
    ppParameterList5: TppParameterList;
    ppLabel92: TppLabel;
    ppLabel117: TppLabel;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    atnPrint_SecondCountListReport: TAction;
    atnSelectBatch: TAction;
    ADOQuery1: TADOQuery;
    ppShape1: TppShape;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    qryCheckAllItems: TADOQuery;
    ppDBcheckAllItems: TppDBPipeline;
    dsqryCheckAllItems: TDataSource;
    qryCheckAllItemsproductcode_id: TIntegerField;
    qryCheckAllItemsicn_str: TStringField;
    qryCheckAllItemsecn_str: TStringField;
    qryCheckAllItemsform_str: TWideStringField;
    qryCheckAllItemsnsn_str: TStringField;
    qryCheckAllItemspackdescription_str: TWideStringField;
    qryCheckAllItemssupplement_str: TWideStringField;
    qryCheckAllItemsgroup1_str: TWideStringField;
    qryCheckAllItemsgroup2_str: TWideStringField;
    qryCheckAllItemsbin_str: TWideStringField;
    qryCheckAllItemsrequisition_str: TStringField;
    qryStockTakeItemsProductBatch_ID: TIntegerField;
    tblProductBatch: TADOQuery;
    tblProductBatchQtyonHand_int: TIntegerField;
    tblProductBatchPrice_mon: TBCDField;
    tblProductBatchBin_str: TWideStringField;
    tblProductBatchShippingPack_int: TIntegerField;
    tblProductBatchBatchNumber_str: TWideStringField;
    tblProductBatchExpiry_dat: TDateTimeField;
    tblProductBatchProductBatch_ID: TAutoIncField;
    tblProductBatchProductCode_ID: TIntegerField;
    tblBinLocations: TADOQuery;
    tblProductPackBin_str: TWideStringField;
    qryTotalOnHand: TADOQuery;
    ppDBText118: TppDBText;
    ppLabel131: TppLabel;
    ppDBText119: TppDBText;
    ppLabel133: TppLabel;
    ppDBText120: TppDBText;
    ppLabel134: TppLabel;
    ppDBText121: TppDBText;
    ppLabel135: TppLabel;
    qryStockTakeWorker: TADOQuery;
    dsStocktakeWorker: TDataSource;
    qryStockTakeWorkerStockTake_ID: TAutoIncField;
    qryStockTakeWorkerSystemStore_ID: TIntegerField;
    qryStockTakeWorkerSystemStore_str: TStringField;
    qryStockTakeWorkerStockTake_str: TStringField;
    qryStockTakeWorkerStockTake_dat: TDateTimeField;
    qryStockTakeWorkerVerifiedBy_str: TStringField;
    qryStockTakeWorkerCharges_mon: TBCDField;
    qryStockTakeWorkerTotalCost_mon: TBCDField;
    qryStockTakeWorkerItemsNo_int: TIntegerField;
    qryStockTakeWorkerRemarks_mem: TMemoField;
    qryStockTakeWorkerActivatedBy_str: TStringField;
    qryStockTakeWorkerActivated_bol: TBooleanField;
    qryStockTakeWorkerActivated_dat: TDateTimeField;
    qryStockTakeWorkerStockCapturedBy_str: TStringField;
    qryStockTakeWorkerLastUpdate_dat: TDateTimeField;
    qryStockTakeWorkerCode_str: TStringField;
    qryStockTakeWorkerLastUpdateBy_str: TStringField;
    qryStockTakeWorkerLastUpdateBy_dbl: TIntegerField;
    qryStockTakeWorkerCompleted_bol: TBooleanField;
    qryStockTakeWorkerCheckedOutBy_ID: TIntegerField;
    qryStockTakeWorkerCheckedOutName_str: TWideStringField;
    qryStockTakeWorkerCheckedOut_bol: TBooleanField;
    qryStockTakeWorkerCheckedOut_dat: TDateTimeField;
    qryStockTakeWorkerVerifiedDate_Dat: TDateTimeField;
    qryStockTakeWorkerStockCaptured_dat: TDateTimeField;
    qryStockTakeWorkerReason_str: TWideStringField;
    qryIsRecordLocked: TADOQuery;
    stpRemoveZeroBatches: TADOQuery;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    checkUnPosted_Ret: TADOQuery;
    checkUnPosted_RetDemander: TADOQuery;
    MainMenu1: TMainMenu;
    ppStockItemsOnHoldReceipt: TppDBPipeline;
    ppStockItemsOnHoldSupllier: TppDBPipeline;
    ppStockItemsOnHoldDemander: TppDBPipeline;
    dsStockItemsOnHoldReceipt: TDataSource;
    dsStockItemsOnHoldSupllier: TDataSource;
    dsStockItemsOnHoldDemander: TDataSource;
    qryStockItemsOnHoldReceipt: TADOQuery;
    qryStockItemsOnHoldSupllier: TADOQuery;
    qryStockItemsOnHoldDemander: TADOQuery;
    ppqryStockItemsOnHoldStockTake: TppDBPipeline;
    dsqryStockItemsOnHoldStockTake: TDataSource;
    qryStockItemsOnHoldStockTake: TADOQuery;
    ppStockItemsOnHold: TppReport;
    ppTitleBand12: TppTitleBand;
    ppLine26: TppLine;
    ppHeaderBand8: TppHeaderBand;
    ppDetailBand12: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable19: TppSystemVariable;
    ppLine39: TppLine;
    ppParameterList7: TppParameterList;
    ppReceipt: TppSubReport;
    ppChildReport6: TppChildReport;
    ppSupplier: TppSubReport;
    ppChildReport7: TppChildReport;
    ppDemander: TppSubReport;
    ppChildReport8: TppChildReport;
    ppStockTake: TppSubReport;
    ppChildReport9: TppChildReport;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppTitleBand6: TppTitleBand;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    ppTitleBand7: TppTitleBand;
    ppLine22: TppLine;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppTitleBand8: TppTitleBand;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppFooterBand10: TppFooterBand;
    ppTitleBand9: TppTitleBand;
    ppSystemVariable21: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppShape6: TppShape;
    ppLabel154: TppLabel;
    ppShape7: TppShape;
    ppLabel155: TppLabel;
    ppShape3: TppShape;
    ppLabel156: TppLabel;
    ppShape4: TppShape;
    ppLabel157: TppLabel;
    qryStockItemsOnHoldReceiptproductcode_id: TIntegerField;
    qryStockItemsOnHoldReceipticn_str: TStringField;
    qryStockItemsOnHoldReceiptecn_str: TStringField;
    qryStockItemsOnHoldReceiptform_str: TWideStringField;
    qryStockItemsOnHoldReceiptnsn_str: TStringField;
    qryStockItemsOnHoldReceiptpackdescription_str: TWideStringField;
    qryStockItemsOnHoldReceiptsupplement_str: TWideStringField;
    qryStockItemsOnHoldReceiptgroup1_str: TWideStringField;
    qryStockItemsOnHoldReceiptgroup2_str: TWideStringField;
    qryStockItemsOnHoldReceiptbin_str: TWideStringField;
    qryStockItemsOnHoldReceiptReceiptNo_str: TStringField;
    qryStockItemsOnHoldReceiptReceiptDate_dat: TDateTimeField;
    qryStockItemsOnHoldDemanderproductcode_id: TIntegerField;
    qryStockItemsOnHoldDemandericn_str: TStringField;
    qryStockItemsOnHoldDemanderecn_str: TStringField;
    qryStockItemsOnHoldDemanderform_str: TWideStringField;
    qryStockItemsOnHoldDemandernsn_str: TStringField;
    qryStockItemsOnHoldDemanderpackdescription_str: TWideStringField;
    qryStockItemsOnHoldDemandersupplement_str: TWideStringField;
    qryStockItemsOnHoldDemandergroup1_str: TWideStringField;
    qryStockItemsOnHoldDemandergroup2_str: TWideStringField;
    qryStockItemsOnHoldDemanderbin_str: TWideStringField;
    qryStockItemsOnHoldDemanderCredit_str: TStringField;
    qryStockItemsOnHoldDemanderCredit_dat: TDateTimeField;
    qryStockItemsOnHoldSupllierproductcode_id: TIntegerField;
    qryStockItemsOnHoldSuplliericn_str: TWideStringField;
    qryStockItemsOnHoldSupllierecn_str: TWideStringField;
    qryStockItemsOnHoldSupllierform_str: TWideStringField;
    qryStockItemsOnHoldSuplliernsn_str: TWideStringField;
    qryStockItemsOnHoldSupllierpackdescription_str: TWideStringField;
    qryStockItemsOnHoldSuplliersupplement_str: TWideStringField;
    qryStockItemsOnHoldSuplliergroup1_str: TWideStringField;
    qryStockItemsOnHoldSuplliergroup2_str: TWideStringField;
    qryStockItemsOnHoldSupllierbin_str: TWideStringField;
    qryStockItemsOnHoldSupllierReturnsNo_str: TStringField;
    qryStockItemsOnHoldSupllierReturns_dat: TDateTimeField;
    qryStockItemsOnHoldSupllierItemsNo_int: TIntegerField;
    qryStockItemsOnHoldStockTakeproductcode_id: TIntegerField;
    qryStockItemsOnHoldStockTakeicn_str: TWideStringField;
    qryStockItemsOnHoldStockTakeecn_str: TWideStringField;
    qryStockItemsOnHoldStockTakeform_str: TWideStringField;
    qryStockItemsOnHoldStockTakensn_str: TWideStringField;
    qryStockItemsOnHoldStockTakepackdescription_str: TWideStringField;
    qryStockItemsOnHoldStockTakesupplement_str: TWideStringField;
    qryStockItemsOnHoldStockTakegroup1_str: TWideStringField;
    qryStockItemsOnHoldStockTakegroup2_str: TWideStringField;
    qryStockItemsOnHoldStockTakebin_str: TWideStringField;
    qryStockItemsOnHoldStockTakeStockTake_str: TStringField;
    qryStockItemsOnHoldStockTakeStockTake_dat: TDateTimeField;
    qryStockItemsOnHoldStockTakeItemsNo_int: TIntegerField;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText92: TppDBText;
    ppDBText96: TppDBText;
    ppDBText101: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppLabel170: TppLabel;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppLabel171: TppLabel;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppLabel172: TppLabel;
    ppDBText147: TppDBText;
    ppLine33: TppLine;
    ppDBText148: TppDBText;
    ppLine34: TppLine;
    ppDBText149: TppDBText;
    ppLine35: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppRequistions: TppSubReport;
    ppRequisitions: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppHeaderBand11: TppHeaderBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppLabel179: TppLabel;
    ppShape8: TppShape;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppDBText146: TppDBText;
    ppLine32: TppLine;
    ppFooterBand11: TppFooterBand;
    ppShape5: TppShape;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppDBText114: TppDBText;
    ppLine25: TppLine;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel160: TppLabel;
    ppLine37: TppLine;
    ppLabel124: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine21: TppLine;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLine23: TppLine;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText134: TppDBText;
    ppLabel178: TppLabel;
    ppLabel177: TppLabel;
    ppLabel176: TppLabel;
    ppLabel175: TppLabel;
    ppLabel174: TppLabel;
    ppLabel173: TppLabel;
    ppLabel169: TppLabel;
    ppLine36: TppLine;
    atnPrintProblematicItems: TAction;

    procedure DataConnect(startDate : TDateTime; endDate :TDateTime);
    procedure EditStockTake;
    procedure AddStockTake;
    procedure atnAddSingleItemExecute(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure atnDeleteItemExecute(Sender: TObject);
    procedure atnStockTakeDeleteExecute(Sender: TObject);
    procedure atnSaveAndCloseExecute(Sender: TObject);
    procedure UpdateStockTakeSubTotals;
    procedure UpdateStockTakeItemsTotals;
    procedure qryStockTakeItemsPackCost_monChange(Sender: TField);
    procedure qryStockTakeItemsNewQty_intChange(Sender: TField);
    procedure atnAddAllEDLItemsExecute(Sender: TObject);
    procedure atnDeleteItemsOnStockTakeExecute(Sender: TObject);
    procedure atnPrintStockTakeExecute(Sender: TObject);
    function PostRecord: Boolean;
    procedure atnPostStockTakeExecute(Sender: TObject);
    procedure SetStatusOfActions;

    function ValidatePosting: Boolean;
    procedure CheckIndividualItems;
    procedure AddEditHistory(const pType, pStr :string; pAddType: integer );
    procedure atnAddGroup1ItemsExecute(Sender: TObject);
    procedure atnAddGroup2ItemsExecute(Sender: TObject);
    procedure atnAddBinLocationProductsExecute(Sender: TObject);
    procedure atnPrint_SurplusesExecute(Sender: TObject);
    procedure atnPrint_DeficitsExecute(Sender: TObject);
    procedure atnAddBatchItemExecute(Sender: TObject);
    procedure atnRefreshStocktakeListExecute(Sender: TObject);
    procedure atnPrintDifferencesReportExecute(Sender: TObject);
    procedure qryStockTakeItemsNewRecord(DataSet: TDataSet);
    procedure atnPrint_SecondCountListReportExecute(Sender: TObject);
    procedure atnSelectBatchExecute(Sender: TObject);
    procedure tblProductBatchBeforePost(DataSet: TDataSet);
    procedure qryStockTakeItemsBeforePost(DataSet: TDataSet);
    procedure qryStockTakeCatalogAfterScroll(DataSet: TDataSet);
    procedure qryStockTakeWorkerAfterScroll(DataSet: TDataSet);
    function IsRecordLocked: Boolean;
    procedure UnLockStocktake;
    procedure UnLockStocktakeMain;
    procedure qryStockTakeWorkerBeforePost(DataSet: TDataSet);
    procedure atnPrintProblematicItemsExecute(Sender: TObject); 
  private
    { Private declarations }
    procedure AddStockTakeItem(pReqID, pProductID: double);
    procedure CleanZeroBatches;
  public
    { Public declarations }
    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    FuseExactDayForExpiryDate: Boolean;
    vCurrentRecord : integer;
    function IsLockedBySameUser:Boolean;
  end;

var
  StockTakeDM: TStockTakeDM;

implementation

uses StockTakeDetailUFrm, ProductGeneralUFrm, MainUDM, RxSolutionUFrm,
RxSolutionSecurityClass, DialogGridColumnSelectorUFrm, Group1_SelectUFrm,
  Group2_SelectUFrm, BinLocationUFrm, StockTakeBatchSelectUfrm;

{$R *.dfm}

function UpdateLastDayMon(MyDate : TDate): TDate;
begin

  if (not StockTakeDM.FuseExactDayForExpiryDate) then
   Result := EncodeDate(YearOf(Mydate),MonthOf(MyDate), DaysInMonth(MyDate))
  else
   Result := MyDate;

end;

class function GetNextNumber(qryNumbering: TDataset): string;
const
  _MAXATTEMPTS = 5000;
  _NUMWIDTH    = 4;
  _ADJUSTDATE  = True;
  _REC_NUM_STOCKTAKE = 10;
var
  _attempts: Integer;
  _curYear, _curMonth, _curDay : Word;
  _prevYear, _prevMonth, _prevDay : Word;
  _currentTimeStamp, _prevTimeStamp: TDateTime;
  _prevRecNum,i : Integer;
  _number, _prf, _yr, _mn, _typ, _dvd : string;
begin
  Result    := '';
  with qryNumbering do
    begin
    Active := False;
    Active := True;                                                             // do this to prevent can't locate record error

    if active then
     if Locate( 'Record_TypeID;SystemStore_ID', VarArrayOf([_REC_NUM_STOCKTAKE, 1]), []) then
        begin
        _attempts := 0;
        while _attempts <= _MAXATTEMPTS do
          try
          Inc(_attempts);
          // If another user has the table in edit mode, an error occurs here.
          Edit;
          // If we reach the Break statement, we are successful. Break out of loop.
          Break;
          except
            on EDataBaseError do Continue;
          end;

        if State = dsEdit then
          begin
          _currentTimeStamp := Now;
          _prevTimeStamp := FieldByName('Record_DateSet').AsDateTime;
          if _currentTimeStamp > _prevTimeStamp then
            begin
            DecodeDate(_currentTimeStamp, _curYear, _curMonth, _curDay);
            DecodeDate(_prevTimeStamp, _prevYear, _prevMonth, _prevDay);
            
            if _curMonth <> _prevMonth then
             if FieldByName('Record_bol').AsBoolean then
              begin
              FieldByName('Record_Month').AsInteger     := _curMonth;
              FieldByName('Record_Number').AsInteger    := 1;
              end;
            if _curYear <> _prevYear then
              FieldByName('Record_Year').AsInteger      := _curYear;
            end;

          _prevRecNum  := FieldByName('Record_Number').AsInteger;
          FieldByName('Record_Number').AsInteger := _prevRecNum + 1;
          FieldByName('Record_DateSet').AsDateTime  := _currentTimeStamp;

          _yr     := Copy(FieldByName('Record_Year').AsString, 3 , 2);
          _mn    := FieldByName('Record_Month').AsString;
          _prf    := FieldByName('Record_StorePre').AsString;
          _typ     := FieldByName('Record_Type').AsString;
          _dvd    := FieldByName('Record_Divider').AsString;
          Post;  // Close the rec so somone else can access

          _number := IntToStr(_prevRecNum);

          for i:= Length(_number) to _NUMWIDTH-1 do _number := '0' + _number;

          if _ADJUSTDATE then if Length(_mn) = 1 then _mn := '0' + _mn;

          if _typ = '' then
            Result := _prf + '/' + _yr + _dvd + _mn + _dvd + _number
            else
            Result := _prf + _dvd + _typ + '/' + _yr + _dvd + _mn + _dvd + _number;

          end; (* if State = dsEdit then *)
      end;
    end;
end;



procedure TStockTakeDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer );
var
  vStkID, vStkItemID  :double;

begin
  vStkID      := 0;
  vStkItemID  := 0;

  with qryStockTakeCatalog do
    if Active then
      if RecordCount > 0 then                                                   //
        vStkID := qryStockTakeCatalog.FieldByName('StockTake_ID').AsFloat; // Get current ID's for Req items

  with qryStockTakeItems do
    if Active then
      if RecordCount > 0 then
        vStkItemID := FieldByName('StockTakeItem_ID').AsFloat;

    with stpStockTakeEditHistory do
        begin
        if not Active then
        begin
         Close;
        Prepared := False;
        Parameters.ParamByName('@StockTakeID').Value := vStkID;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;        // has to be done this way. cannot close a table and hold the transaction.
        end;

        Append;
        FieldByname('StockTake_ID').AsFloat   := vStkID;
        FieldByName('Description_str').AsString := pStr;

        FieldByName('UserName_str').AsString    := FUserName;
        FieldByName('User_ID').AsFloat          := FUserID;

        FieldByName('Date_dat').AsDateTime      := Now;
        FieldByName('Type_str').AsString        := pType;
        FieldByName('StocktakeItem_ID').AsFloat := vStkItemID;
        case pAddType of
          ADD_ITEM :
            begin
            FieldByName('ProductCode_ID').AsFloat   := qryStockTakeItems.FieldByName('Productcode_ID').AsFloat;
            FieldByName('Item_ID').AsFloat          := vStkItemID;
            end;
          ADD_REQ :
            begin
            FieldByName('ProductCode_ID').AsFloat   := 0;
            FieldByName('Item_ID').AsFloat          := 0;
            end;
          end;

        Post;
        Close;
        Open;
        end;
end;

procedure TStockTakeDM.SetStatusOfActions;
var
 CheckComplete, atnEnabled: Boolean;
begin

 with RxSolutionFrm.Security do
 atnEnabled             := GetUserAccessLevel(MODULE_STOCKTAKING) > USER_BROWSER;
 CheckComplete          := qryStockTakeWorker.FieldByName('completed_bol').AsBoolean;

 atnAddSingleItem.Enabled               := (not CheckComplete AND atnEnabled);
 atnPostStockTake.Enabled               := (not CheckComplete AND atnEnabled);
 atnDeleteItem.Enabled                  := (not CheckComplete AND atnEnabled);
 atnAddAllEDLItems.Enabled              := (not CheckComplete AND atnEnabled);
 atnAddGroup1Items.Enabled              := (not CheckComplete AND atnEnabled);
 atnAddGroup2Items.Enabled              := (not CheckComplete AND atnEnabled);
 atnAddBinLocationProducts.Enabled      := (not CheckComplete AND atnEnabled);
 atnDeleteItemsOnStockTake.Enabled      := (not CheckComplete AND atnEnabled);
 atnItemPost.Enabled                    := (not CheckComplete AND atnEnabled);
 atnItemCancel.Enabled                  := (not CheckComplete AND atnEnabled);
 atnAddBatchItem.Enabled                := (not CheckComplete AND atnEnabled);
 atnAddBatchItem.Visible                := FUsesBatchManagement;
end;                                                        

procedure TStockTakeDM.UpdateStockTakeSubTotals;
begin
with qryStockTakeWorker do
 begin
 if not (State in [dsEdit, dsInsert]) then Edit;
 FieldByName('ItemsNo_int').AsInteger := stp_StockTakeITemsTotals.FieldByName('CountOfStockTakeItem_ID').AsInteger;
 FieldByName('TotalCost_mon').AsCurrency := stp_StockTakeITemsTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency;
 Post;
 end;
end;

procedure TStockTakeDM.UpdateStockTakeItemsTotals;
begin
with stp_StockTakeItemsTotals do
 begin
 Close;
 Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
 Open;
 end;
 UpdateStockTakeSubTotals;
end;     

procedure TStockTakeDM.AddStockTake;
begin
//Check for unposted documents like req and receipts   
 qryStockTakeCatalog.Append;
 qryStockTakeCatalog.FieldByName('StockTake_str').AsString      := GetNextNumber(qryNumbering);
 qryStockTakeCatalog.FieldByName('CheckedOut_bol').AsBoolean    := True;
 qryStockTakeCatalog.FieldByName('CheckedOutName_str').AsString := FUserName;
 qryStockTakeCatalog.FieldByName('CheckedOut_dat').AsDateTime   := Now;
 qryStockTakeCatalog.FieldByName('CheckedOutBy_ID').AsString    := FUserID;      
 qryStockTakeCatalog.FieldByName('StockTake_dat').AsDateTime    := Now;
 qryStockTakeCatalog.FieldByName('ActivatedBy_str').Value       := FUserName;
 qryStockTakeCatalog.FieldByName('SystemStore_ID').Value        := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;
 qryStockTakeCatalog.Post;
 //Post then Open Current

 vCurrentRecord := qryStockTakeCatalog.FieldByName('Stocktake_ID').AsInteger;
 EditStockTake;

// UpdateStockTakeSubTotals;
// SetStatusOfActions;
  //
 checkUnPosted_Req.Close;
 checkUnPosted_Rec.Close;
 checkUnPosted_Ret.Close;
 //mc mankga 27/01/2013 - 
 checkUnPosted_RetDemander.Close;
end;


procedure TStockTakeDM.EditStockTake;
begin

 with qryStockTakeWorker do
  begin
  Close;
  Parameters.ParamByName('Stocktake_ID').Value := vCurrentRecord;
  Open;

 if (not FieldByName('CheckedOut_bol').AsBoolean) and (not FieldByName('Completed_bol').AsBoolean) then
   begin
   Edit;
   FieldByName('CheckedOutName_str').AsString     := FUserName;
   FieldByName('CheckedOut_bol').AsBoolean        := True;
   FieldByName('CheckedOutBy_ID').AsString        := FUserID;
   FieldByName('CheckedOut_dat').AsDateTime       := Now;
   Post;
   end;
  end;     

 with qryStockTakeItems do
  begin
  Close;
  Parameters.ParamByName('Stocktake_ID').Value := vCurrentRecord;
  Open;
  end;    // with

 with stp_StockTakeITemsTotals do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;
  
 with stpStockTakeEditHistory do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;
{
 if not qryStockTakeWorker.FieldByName('Completed_bol').AsBoolean then
  UpdateStockTakeSubTotals;
 }
 SetStatusOfActions;
end;

procedure TStockTakeDM.DataConnect(startDate : TDateTime; endDate :TDateTime);
var
 FDataBasePath       : string;
begin

if Assigned(MainDM) then
 begin
 AdoStockTakeConn.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 with qryStockTakeCatalog do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('StartDate').Value     := startDate;
  Parameters.ParamByName('EndDate').Value       := endDate;
  Prepared := True;
  Open;
  end;

 tblSystemUsers.Active := True;

 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
 FUsesBatchManagement := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean;
 FuseExactDayForExpiryDate := MainDm.tblMainSystem.FieldByName('useExactDayForExpiryDate_bol').AsBoolean;
 end;

end;


procedure TStockTakeDM.atnAddSingleItemExecute(Sender: TObject);
var
  vProductSelector  : TProductSelector;
  vStTakeID         : double;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;
begin

with qryStockTakeWorker do                                            // Use same table as curently being edited
 vStTakeID := vCurrentRecord;                            // Get current ID's for Req items

 vProductSelector := TProductSelector.Create;
 with qryStockTakeItems, vProductSelector do
  if Active then
   try
   if Product_SelectItems( vProductCost, vProductID) then
    for i := low(vProductID) to high(vProductID) do
     try
     if not Locate('ProductCode_ID;StockTake_ID', VarArrayOf([vProductID[i], vStTakeID]), []) then
      begin
      AddStockTakeItem( vStTakeID, vProductID[i]);
      end;
     Close;
     Open;
     UpdateStockTakeSubTotals;
     UpdateStockTakeItemsTotals;
     AddEditHistory(HST_ADD, 'Adding product(s)', ADD_REQ);
     //Added by SM; move cursor to last added item
     Locate('ProductCode_ID;StockTake_ID', VarArrayOf([vProductID[i], vStTakeID]), []);
     except
     end;

   finally
    Free;
    end;
 CheckIndividualItems;
end;

procedure TStockTakeDM.AddStockTakeItem(pReqID, pProductID: double);
begin

with AdoAddSingleItem do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value          := pReqID;
  Parameters.ParamByName('@LastUpdatedat').Value        := Now;
  Parameters.ParamByName('@ProductCodeID').Value        := pProductID;
  Execute;
  end;
end;

procedure TStockTakeDM.DataModuleDestroy(Sender: TObject);
begin
 AdoStockTakeConn.Connected     := False;
 qryStockTakeCatalog.Active     := False;
 tblSystemUsers.Active          := False;
 stpStockTakeEditHistory.Active := False;
 qryProductBatchReceipts.Active := False;
end;

function TStockTakeDM.PostRecord: Boolean;
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
  vTotOnHand  : integer;

  Attempts        :Integer;
  SubmitVariance  :Boolean;
  vAuditData      :RProductAuditDetails;
  ReceiptItem_ID  : integer;
  S :string;
  Save_Cursor:TCursor;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  qryStockTakeItems.First;
  try
  While not qryStockTakeItems.eof do
   begin
   with qryStockTakeItems do
    begin
    vProductID  := FieldByName('ProductCode_ID').AsInteger;
    vType       := 'S';
    vOldQty     := FieldByName('OldQty_int').AsInteger;
    vNewQty     := FieldByName('NewQty_int').AsInteger;
    vCost       := FieldByName('PackCost_mon').AsCurrency * FieldByName('DiffQty_int').AsInteger;
    vExpiryDate := FieldByName('ExpiryDate_dat').AsDateTime;
    vDate       := qryStockTakeWorker.FieldByName('StockCaptured_dat').AsDateTime;
    vReason     := qryStockTakeWorker.FieldByName('Reason_str').AsString;
    vAdjQty     := FieldByName('DiffQty_int').AsInteger;
    vBatchNumber:= FieldByName('BatchNumber_str').AsString;
    end;
    vBatchQty := 0;

    //update bin location and so forth

    //Update Product Price
    with tblProductPack do
     begin
     Close;
     Parameters.ParamByName('@ProductCodeID').Value   := vProductID;
     Open;
     Edit;
     FieldByName('Bin_str').AsString := qryStockTakeItems.FieldByName('Bin_str').AsString;
     Post;
     end;

     with tblProductBatch do
      begin
      Close;
      Parameters.ParamByName('@ProductCodeID').Value   := vProductID;
      Open;
      if (not VarIsnull(FieldByName('ProductBatch_ID').AsInteger)) then
       begin
       if Locate('ProductBatch_ID', qryStockTakeItems.FieldByName('ProductBatch_ID').AsInteger, []) then
        begin
        Edit;
        FieldByName('QtyOnHand_int').AsInteger := vNewQty;
        Post;
        end
       else
        begin
        Append;
        Post;
        end;
       if (vNewQty = 0) and (Locate('ProductBatch_ID', qryStockTakeItems.FieldByName('ProductBatch_ID').AsInteger, [])) then
        Delete;
       end;
      end;

     qryTotalOnHand.Close;
     qryTotalOnHand.Parameters.ParamByName('ProductCode_ID').Value := vProductID;
     qryTotalOnHand.Open;

     if qryTotalOnHand.RecordCount > 0 then
      vTotOnHand := qryTotalOnHand.fieldByName('QtyOnHand_int').AsInteger
     else
      vTotOnHand := 0;

     vAuditData.Quantity_int     := vNewQty - vOldQty;// vProdDet.QtyOnHand;
     vAuditData.ProductCode_ID   := vProductID;
     vAuditData.Item_ID          := 0; // should be id of variance
     vAuditData.Value_mon        := vCost;
     vAuditData.SystemStore_ID   := MainDm.tblMainSystem.FieldByName('SystemStore_ID').AsInteger; //SM  13/08/2007
     vAuditData.Demander_ID      := 0;
     vAuditData.Supplier_ID      := 0;
     vAuditData.Type_str         := 'S';
     vAuditData.Reference_str    := qryStockTakeWorker.FieldByName('StockTake_str').AsString; //FloatToStr(vProductID) + '_' + DateToStr(Date);
     vAuditData.DemanderSupplier_str := 'V';
     vAuditData.ProductCode_str  := tblProductPack.FieldByName('ProductCode_Str').AsString;
     vAuditData.VoucherNo_str    := 'Stocktake (' + vType + ')';
     vAuditData.Date_dat         := Now;
     vAuditData.QuantityOnHand_int := vTotOnHand;//vNewQty;
     vAuditData.User_str         := FUserName;
     vAuditData.NSN_Str          := tblProductPack.FieldByName('NSN_str').AsString;
     vAuditData.ECN_str          := tblProductPack.FieldByName('ECN_str').AsString;
     vAuditData.ICN_str          := tblProductPack.FieldByName('ICN_str').AsString;
     vAuditData.BatchNumber_str  := vBatchNumber;
     vAuditData.ExpiryDate_dat   := vExpiryDate;
     MainDM.WriteAuditData(vAuditData);
     qryStockTakeItems.Next;
     end;
  except
   AdoStockTakeConn.RollbackTrans;
  end;

 Screen.Cursor := Save_Cursor;
 UpdateStockTakeItemsTotals;
 Result := True;
end;

procedure TStockTakeDM.atnDeleteItemExecute(Sender: TObject);
var
 vproduct : string;
 vBatch : string;
begin
vproduct:= qryStockTakeItems.FieldByName('Description_str').AsString;
vBatch  := qryStockTakeItems.FieldByName('BatchNumber_str').AsString +',' + qryStockTakeItems.FieldByName('ExpiryDate_dat').AsString;
if qryStockTakeItems.RecordCount > 0 then
 if MessageDlg('Are you sure you want to remove this item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  AddEditHistory(HST_DEL, 'Deleted item ['+vproduct+ '; '+vBatch+']', ADD_REQ);
  qryStockTakeItems.Delete;
  UpdateStockTakeItemsTotals;
  end;
end;

procedure TStockTakeDM.atnStockTakeDeleteExecute(Sender: TObject);
begin
 if not qryStockTakeWorker.FieldByName('Completed_bol').AsBoolean then
  if MessageDlg('Are you sure you want to remove the following Stocktake?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   if qryStockTakeItems.RecordCount > 0 then
    begin
    qryStockTakeItems.Delete;
    end;
   qryStockTakeCatalog.Delete;
   end
 else if qryStockTakeWorker.FieldByName('Completed_bol').AsBoolean  then
  MessageDlg('You cannot delete posted Stocktake', mtInformation,[mbOk], 0);
end;

procedure TStockTakeDM.atnSaveAndCloseExecute(Sender: TObject);
var
 vStockTakeID : integer;
begin 
if (not qryStockTakeWorker.FieldByName('Completed_bol').AsBoolean) then
 begin
 with qryStockTakeWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdateBy_dbl').AsString      := FUserID;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsString       := '';
  Post;
  end;
 UpdateStockTakeItemsTotals;
 end;

 StockTakeDetailFrm.Close;
 atnRefreshStocktakeList.Execute;
end;


procedure TStockTakeDM.qryStockTakeItemsPackCost_monChange(Sender: TField);
var
 vproduct : string;
 vBatch : string;
begin

 with qryStockTakeItems do
  begin
  vproduct := FieldByName('Description_str').AsString;
  vBatch  := qryStockTakeItems.FieldByName('BatchNumber_str').AsString +',' + qryStockTakeItems.FieldByName('ExpiryDate_dat').AsString;
  FieldByName('ExtendedCost_mon').AsCurrency := fieldByName('NewQty_int').AsInteger*fieldByName('PackCost_mon').AsCurrency;
  end;
 AddEditHistory(HST_EDT, 'Item ['+vproduct+'; '+ vBatch+'] edited pack cost', ADD_REQ);
end;

procedure TStockTakeDM.qryStockTakeItemsNewQty_intChange(Sender: TField);
var
 vproduct : string;
 vBatch : string;
begin
 with qryStockTakeItems do
  begin
  vproduct := FieldByName('Description_str').AsString;
  vBatch  := qryStockTakeItems.FieldByName('BatchNumber_str').AsString +',' + qryStockTakeItems.FieldByName('ExpiryDate_dat').AsString;
  FieldByName('ExtendedCost_mon').AsCurrency := FieldByName('NewQty_int').AsInteger * FieldByName('PackCost_mon').AsCurrency;
  FieldByName('DiffQty_int').AsInteger := FieldByName('NewQty_int').AsInteger - FieldByName('OldQty_int').AsInteger;
  end;
 AddEditHistory(HST_EDT, 'Item ['+vproduct+'; '+ vBatch+'] edited actual quantity', ADD_REQ);
end;

procedure TStockTakeDM.atnAddAllEDLItemsExecute(Sender: TObject);
begin
//Delete all other items first
 if MessageDlg('All items will be cleared. Continue?'
 , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 atnDeleteItemsOnStockTake.Execute;
 with adoAddInstitutionalEDL do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  ExecProc;
  end;
 AddEditHistory(HST_ADD, 'Adding all EDL items', ADD_REQ);
 UpdateStockTakeItemsTotals;
 CheckIndividualItems;
 qryStockTakeItems.Close;
 qryStockTakeItems.Open;
end;

procedure TStockTakeDM.atnDeleteItemsOnStockTakeExecute(Sender: TObject);
begin
 with  adoDeleteAllItems do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value :=  vCurrentRecord;
  Prepared := True;
  ExecProc;
  end;
 AddEditHistory(HST_DEL, 'Deleted all items', ADD_REQ);
 UpdateStockTakeItemsTotals;
 
 qryStockTakeItems.Close;
 qryStockTakeItems.Open;

end;

procedure TStockTakeDM.atnPrintStockTakeExecute(Sender: TObject);
begin

 with adoStockTakeReport do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;

 if qryStockTakeWorker.Active then
  UpdateStockTakeItemsTotals;

 with ppStockTake_Report do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Printing stocktake', ADD_REQ);
end;

function TStockTakeDM.ValidatePosting: Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Captured By && Date' +
          #13 + 'Verified By && Date' +
          #13 + 'Stocktaking reason';         
begin
  Result := True;

  with qryStockTakeWorker do
    begin
    if FieldByName('VerifiedBy_str').AsString = '' then Result := False;
    if FieldByName('VerifiedDate_Dat').IsNull then Result := False;
    if FieldByName('StockCapturedBy_str').AsString = '' then Result := False;
    if FieldByName('StockCaptured_dat').IsNull then Result := False;
    if FieldByName('Reason_str').AsString = '' then Result := False;
    end;
    
   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
end;


procedure TStockTakeDM.atnPostStockTakeExecute(Sender: TObject);
var
 vStockTakeID : integer;
 WMS : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
//Current document
 vStockTakeID := vCurrentRecord;
//Just make sure the items have been posted
if qryStockTakeItems.State in [dsEdit, dsInsert] then
 qryStockTakeItems.Post;

if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0) = mrYes then
 if ValidatePosting then
  if PostRecord then
   begin
   MessageDlg('Stocktaking has been posted!', mtInformation, [mbYes], 0);
   with stp_StockTakeMarkComplete do
    begin
    Prepared := False;
    Parameters.ParamByName('@StockTakeID').Value := vStockTakeID;
    Parameters.ParamByName('@PostedBy').Value := FUserName;
    Prepared := True;
    ExecProc;
    end;
// AddEditHistory(HST_DEL, 'Deleted an item', ADD_REQ);
// Refresh data
   qryStockTakeCatalog.Close;
   qryStockTakeCatalog.Open;
   qryStockTakeCatalog.Locate('StockTake_ID', vStockTakeID, []);

   CleanZeroBatches;
   // Close detail form
   StockTakeDetailFrm.Close;
   end;
end;

procedure TStockTakeDM.atnAddGroup1ItemsExecute(Sender: TObject);
var
 Group1 : string;

begin
if MessageDlg('All items will be cleared. Continue?'
 , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 atnDeleteItemsOnStockTake.Execute;

 with tblGroup1 do
  begin
  Close;
  open;
  end;    // with


 Group1 := Group1_SelectFrm.SelectGroup;

 with adoAddGroup1Products do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Parameters.ParamByName('@Group1Str').Value := Group1;
  Prepared := True;
  ExecProc;
  end;

 UpdateStockTakeItemsTotals;
 AddEditHistory(HST_ADD, 'Adding all '+Group1+' Group1 products', ADD_REQ);
 CheckIndividualItems;
 qryStockTakeItems.Close;
 qryStockTakeItems.Open;
end;

procedure TStockTakeDM.atnAddGroup2ItemsExecute(Sender: TObject);
var
 Group2 : string;

begin

if MessageDlg('All items will be cleared. Continue?'
 , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 atnDeleteItemsOnStockTake.Execute;

 with tblGroup2 do
  begin
  Close;
  Open;
  end;    // with

 Group2 := Group2_SelectFrm.SelectGroup;

 with adoAddGroup2Products do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Parameters.ParamByName('@Group2Str').Value := Group2;
  Prepared := True;
  ExecProc;
  end;

 UpdateStockTakeItemsTotals;
 AddEditHistory(HST_ADD, 'Adding all '+ Group2+' Group2 products', ADD_REQ);
 CheckIndividualItems;
 qryStockTakeItems.Close;
 qryStockTakeItems.Open;
end;

procedure TStockTakeDM.atnAddBinLocationProductsExecute(Sender: TObject);
var
 binCode : string;

begin
if MessageDlg('All items will be cleared. Continue?'
 , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 atnDeleteItemsOnStockTake.Execute;
 with tblBinLocations do
  begin
  Close;
  Open;
  end;


 binCode := BinLocationSelectFrm.BinLocationSelect;

 with adoAddBinLocationProducts do
  begin
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Parameters.ParamByName('@BinStr').Value := binCode;
  Prepared := True;
  ExecProc;
  end;

 UpdateStockTakeItemsTotals;
 AddEditHistory(HST_ADD, 'Adding all '+ bincode+' Bin Location products', ADD_REQ);
// CheckIndividualItems;

 qryStockTakeItems.Close;
 qryStockTakeItems.Open;

end;

procedure TStockTakeDM.atnPrint_SurplusesExecute(Sender: TObject);
begin

 if qryStockTakeWorker.Active then
  UpdateStockTakeItemsTotals;

 with adoSurpluses do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;

 with ppSurplusesReport do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Printing stocktake surplus report', ADD_REQ);
end;

procedure TStockTakeDM.atnPrint_DeficitsExecute(Sender: TObject);
begin

 if qryStockTakeWorker.Active then
  UpdateStockTakeItemsTotals;
  
 with adoDeficits do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;


 with ppDeficitsReport do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Printing stocktake deficit report', ADD_REQ);
end;

procedure TStockTakeDM.atnAddBatchItemExecute(Sender: TObject);
var
 productID : integer;
 vproduct : string;
begin

 if (qryStockTakeItems.State in [dsEdit, dsInsert]) then
  MessageDlg('Please save the current product item before adding a new batch.', mtWarning, [mbOk], 0)
 else
  begin
  productID := qryStockTakeItems.FieldByName('ProductCode_ID').AsInteger;
  vproduct := qryStockTakeItems.FieldByName('Description_str').AsString;
  with addBatchItem do
   begin
   Close;
   Prepared := False;
   Parameters.ParamByName('@StockTakeID').Value   := vCurrentRecord;
   Parameters.ParamByName('@ProductCodeID').Value := productID;
   Prepared := True;
   ExecProc;
   end;
  AddEditHistory(HST_ADD, 'Adding another batch item for: '+vproduct, ADD_REQ);
  qryStockTakeItems.Close;
  qryStockTakeItems.Open;
  qryStockTakeItems.Locate('ProductCode_ID', productID, []);
  UpdateStockTakeSubTotals;
  end;
end;

procedure TStockTakeDM.atnRefreshStocktakeListExecute(Sender: TObject);
begin
 // Refreshing tables...
 qryStockTakeCatalog.Close;
// qryStockTakeItems.Close;
 qryStockTakeCatalog.Open;

end;

procedure TStockTakeDM.atnPrintDifferencesReportExecute(Sender: TObject);
begin
 if qryStockTakeWorker.Active then
  UpdateStockTakeItemsTotals;
 with adoAnomalies do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;

 with ppAnomaliesReport do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Printing stocktake anomalies report', ADD_REQ);
end;

procedure TStockTakeDM.qryStockTakeItemsNewRecord(DataSet: TDataSet);
begin
 with qryStockTakeItems do
  begin
  FieldByName('ExtendedCost_mon').AsCurrency := 0;
  FieldByName('ExpiryDate_dat').AsString := NULL;
  end;
end;

procedure TStockTakeDM.atnPrint_SecondCountListReportExecute(
  Sender: TObject);
begin

 if qryStockTakeWorker.Active then
  UpdateStockTakeItemsTotals;
  
 with adoAnomalies do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@StockTakeID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;

 with ppSecondCountReport do
  begin
  Print;
  end;
 AddEditHistory(HST_PRN, 'Printing Second count list report', ADD_REQ);
end;

procedure TStockTakeDM.atnSelectBatchExecute(Sender: TObject);
begin

 with qryProductBatchReceipts do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('ProductCode_ID').Value := StockTakeDM.qryStockTakeItems.FieldByName('ProductCode_ID').Value;
  ParamCheck := True;
  Open;
  end;

 if qryProductBatchReceipts.RecordCount > 0 then
  StockTakeBatchSelectfrm.ShowModal
 else
  Showmessage('This item has no batches available');

end;

procedure TStockTakeDM.CheckIndividualItems;
begin
//03/04/2008
//this function check all items on the stocktake sheet, then prints out the list of items that are invalid for stocktaking
 with qryCheckAllItems do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('StocktakeID').Value := vCurrentRecord;
  ParamCheck := True;
  Open; 

  with qryStockItemsOnHoldReceipt do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('StocktakeID').Value := vCurrentRecord;
  ParamCheck := True;
  Open;
  end;

  with  qryStockItemsOnHoldDemander do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('StocktakeID').Value := vCurrentRecord;
  ParamCheck := True;
  Open;
  end;

  with qryStockItemsOnHoldSupllier do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('StocktakeID').Value := vCurrentRecord;
  ParamCheck := True;
  Open;
  end;

  with  qryStockItemsOnHoldStockTake do
  begin
  Close;
  ParamCheck := False;
  Parameters.ParamByName('StocktakeID').Value := vCurrentRecord;
  ParamCheck := True;
  Open;
  end;
  
//If there are any items on hold then show them on the print out list.
 if ((qryCheckAllItems.RecordCount > 0) or (qryStockItemsOnHoldReceipt.RecordCount > 0) or (qryStockItemsOnHoldDemander.RecordCount > 0) or (qryStockItemsOnHoldSupllier.RecordCount > 0) or (qryStockItemsOnHoldStockTake.RecordCount > 0)) then
  begin
  //Show message
  MessageDlg('There are items that are placed on hold. Please resolve any unposted requisitions.', mtWarning, [mbOk],0);
   //Print list
  ppStockItemsOnHold.Print;
  //Remove all items on the items
//  atnDeleteItemsOnStockTake.Execute;         //Remove the delete function. The user would have been warned.
  end;
 Close;
  qryCheckAllItems.Close;
  qryStockItemsOnHoldReceipt.Close;
  qryStockItemsOnHoldDemander.Close;
  qryStockItemsOnHoldSupllier.Close;
  qryStockItemsOnHoldStockTake.Close;
 end;
end;

procedure TStockTakeDM.tblProductBatchBeforePost(DataSet: TDataSet);
begin
with tblProductBatch do
 begin
 FieldByName('ProductCode_ID').AsInteger        := qryStockTakeItemsProductCode_ID.AsInteger;
 FieldByName('QtyOnHand_int').AsInteger         := qryStockTakeItemsNewQty_int.AsInteger;
 FieldByName('Bin_str').AsString                := qryStockTakeItemsBin_str.AsString;
 FieldByName('ShippingPack_int').AsInteger      := 1;
 FieldByName('Price_mon').AsCurrency            := qryStockTakeItemsPackCost_mon.AsCurrency;
 if FUsesBatchManagement then
  begin
  FieldByName('Batchnumber_str').AsString        := qryStockTakeItemsBatchNumber_str.AsString;
  FieldByName('Expiry_dat').AsDateTime           := qryStockTakeItemsExpiryDate_dat.AsDateTime;
  end;
 end;
end;


procedure TStockTakeDM.qryStockTakeItemsBeforePost(DataSet: TDataSet);
begin
 with qryStockTakeItems do
  begin
  if (FUsesBatchManagement) and (FieldByName('NewQty_int').AsInteger > 0) then
     begin
     if FieldByName('BatchNumber_str').IsNull then
      begin
      MessageDlg( 'Please enter a batch number.', mtWarning,[mbOK],0);
      Abort;
      end;
      if FieldByName('ExpiryDate_dat').IsNull then
      begin
      MessageDlg( 'Please enter the expiry date for this item.', mtWarning,[mbOK],0);
      Abort;
      end;

      if DayOftheMonth(FieldByName('ExpiryDate_dat').AsDateTime) <> DaysInMonth(FieldByName('ExpiryDate_dat').AsDateTime) then
       FieldByName('ExpiryDate_dat').AsDateTime := UpdateLastDayMon(FieldByName('ExpiryDate_dat').AsDateTime);

     end;
  end; 
end;

function TStockTakeDM.IsLockedBySameUser:Boolean;
begin
 if FUserID = qryStockTakeCatalog.FieldByName('CheckedOutBy_ID').AsVariant then
  Result := True
 else
  Result := False;
end;

procedure TStockTakeDM.qryStockTakeCatalogAfterScroll(DataSet: TDataSet);
begin
 with qryStockTakeCatalog do
  begin
  vCurrentRecord := FieldByName('StockTake_ID').AsInteger;
  end;

end;

procedure TStockTakeDM.qryStockTakeWorkerAfterScroll(DataSet: TDataSet);
begin
 with qryStockTakeWorker do
  begin
  vCurrentRecord := FieldByName('StockTake_ID').AsInteger;
  end;   
end;

function TStockTakeDM.IsRecordLocked: Boolean;
begin

 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('Stocktake_ID').Value := vCurrentRecord;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;

end;

procedure TStockTakeDM.UnLockStocktake;
begin

 with qryStockTakeWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('LastUpdateBy_dbl').AsString      := FUserID;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsString       := '';
  Post;
  end;

end;

procedure TStockTakeDM.UnLockStocktakeMain;
begin

 with qryStockTakeCatalog do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsString       := '';
  Post;
  Refresh;
  end;

end;

//clear any zero qty on hand records in the 
procedure TStockTakeDM.CleanZeroBatches;
begin
 with stpRemoveZeroBatches do
  begin
  ExecSQL;
  end;
end;
       
procedure TStockTakeDM.qryStockTakeWorkerBeforePost(DataSet: TDataSet);
begin

 with qryStockTakeWorker do
  begin
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('LastUpdateBy_dbl').AsString      := FUserID;
  end;

end;

procedure TStockTakeDM.atnPrintProblematicItemsExecute(Sender: TObject);
begin
 //*********
 CheckIndividualItems;
end;

end.

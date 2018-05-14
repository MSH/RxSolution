unit RequisitionUDM;
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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
     MyApplicationUtilities, ppParameter, Math,  DateUtils;


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
  TItemList = record
    ID        :double;
    ProductID :double;
    OldQty    :integer;
    OldIssued :integer;
    ProdExsts :boolean;  // will be set to false if record does not exist;
    end;
  AItemsLists = array of TItemList;


  ECustomException = class(Exception);
  ENotEnoughOnHand = class(ECustomException);

  TRequisitionDM = class(TDataModule)
    ADOCommand1: TADOCommand;
    ADOCommand_General: TADOCommand;
    ADORequisitionConnection: TADOConnection;
    dsqryADOSystemWharehouse: TDataSource;
    dsqryRequisitionsCatalog: TDataSource;
    dsstpRequisitionsReportPicklist: TDataSource;
    dsstpStockControlRequisition: TDataSource;
    dsstpStockControlRequisitionEditHistory: TDataSource;
    dsstpStockControlRequisitionItems: TDataSource;
    dsstpStockControlRequisitionItemsTotals: TDataSource;
    dstblRequisitionsCatalog: TDataSource;
    dstblRequisitionsCatalogUniqueDemanders: TDataSource;
    dstblRequisitionsReport: TDataSource;
    dstblSystemUsers: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppHeaderBand1: TppHeaderBand;
    ppReport1: TppReport;
    qryRequisitionsCatalog: TADOQuery;
    stpGetDemanderYTDE: TADOStoredProc;
    stpRequisitionMarkAsComplete: TADOStoredProc;
    stpRequisitionsAPPEND_Audit: TADOStoredProc;
    stpRequisitionsDemanderAuthorisedItems: TADOStoredProc;
    stpRequisitionsDemanderInstitutionalEDLItemsAdd: TADOStoredProc;
    stpRequisitionsItemsDELETE_NoIssues: TADOStoredProc;
    stpRequisitionUPDATE_DeleteAllProductItems: TADOStoredProc;
    stpRequisition_BackOrderItemsPerDemander: TADOStoredProc;
    stpSetDemanderBudgetBalance: TADOStoredProc;
    stpStockControlRequisition: TADOStoredProc;
    stpStockControlRequisitionActivatedBy_str: TStringField;
    stpStockControlRequisitionActivated_bol: TBooleanField;
    stpStockControlRequisitionActivated_dat: TDateTimeField;
    stpStockControlRequisitionAuthorizedBy_str: TStringField;
    stpStockControlRequisitionAuthorized_Dat: TDateTimeField;
    stpStockControlRequisitionCharges_mon: TBCDField;
    stpStockControlRequisitionCode_str: TStringField;
    stpStockControlRequisitionCompleted_bol: TBooleanField;
    stpStockControlRequisitionDemaderBudget_mon: TCurrencyField;
    stpStockControlRequisitionDemanderBudgetBalance_mon: TCurrencyField;
    stpStockControlRequisitionDemander_ID: TIntegerField;
    stpStockControlRequisitionDemander_Str: TStringField;
    stpStockControlRequisitionEditHistory: TADOStoredProc;
    stpStockControlRequisitionIssuedBy_str: TStringField;
    stpStockControlRequisitionIssued_Dat: TDateTimeField;
    stpStockControlRequisitionItems: TADOStoredProc;
    stpStockControlRequisitionItemsComplete: TADOStoredProc;
    stpStockControlRequisitionItemsComplete_bol: TBooleanField;
    stpStockControlRequisitionItemsNo_int: TSmallintField;
    stpStockControlRequisitionItemsTotals: TADOStoredProc;
    stpStockControlRequisitionLastUpdateBy_dbl: TIntegerField;
    stpStockControlRequisitionLastUpdateBy_str: TStringField;
    stpStockControlRequisitionLastUpdate_dat: TDateTimeField;
    stpStockControlRequisitionOrderedBy_str: TStringField;
    stpStockControlRequisitionPOReference_str: TWideStringField;
    stpStockControlRequisitionReceivedBy_str: TStringField;
    stpStockControlRequisitionReceived_dat: TDateTimeField;
    stpStockControlRequisitionRemarks_mem: TMemoField;
    stpStockControlRequisitionRequisition_dat: TDateTimeField;
    stpStockControlRequisitionRequisition_ID: TAutoIncField;
    stpStockControlRequisitionRequisition_str: TStringField;
    stpStockControlRequisitionSystemStore_ID: TIntegerField;
    stpStockControlRequisitionSystemStore_str: TStringField;
    stpStockControlRequisitionTotalCost_mon: TBCDField;
    stpStockControlRequisitionVoucherNo_str: TStringField;
    tblGeneralProductStockDetails: TADOTable;
    tblRequisitionsCatalogUniqueDemanders: TADOTable;
    qryRequisitionsReport: TADOStoredProc;
    qryRequisitionsReportPicklist: TADOStoredProc;
    Timer1: TTimer;
    AuditTableCounter: TADOQuery;
    ADOQuery1: TADOQuery;
    stpAuditAPPEND: TADOStoredProc;
    stpStockControlRequisitionCheckedOutBy_ID: TIntegerField;
    stpStockControlRequisitionCheckedOutName_str: TWideStringField;
    stpStockControlRequisitionCheckedOut_bol: TBooleanField;
    stpStockControlRequisitionCheckedOut_dat: TDateTimeField;
    tmrRefresher: TTimer;
    qryCurrentOnHold: TADOQuery;
    qryCurrentOnOrder: TADOQuery;
    dsqryProductBatch: TDataSource;
    qryProductBatch: TADOQuery;
    qryUpdateBatchQty: TADOQuery;
    qryCheckBatchOnHand: TADOQuery;
    qryCheckBatchOnHandBatchNumber_str: TStringField;
    qryCheckBatchOnHandExpiry_dat: TDateTimeField;
    qryCheckBatchOnHandBatchQty_int: TIntegerField;
    stpStockControlRequisitionItemsRequisitionItems_ID: TAutoIncField;
    stpStockControlRequisitionItemsRequisition_ID: TIntegerField;
    stpStockControlRequisitionItemsProductCode_ID: TIntegerField;
    stpStockControlRequisitionItemsQtyDemanderOnHand_int: TIntegerField;
    stpStockControlRequisitionItemsQtyOrdered_int: TIntegerField;
    stpStockControlRequisitionItemsQtyIssued_int: TIntegerField;
    stpStockControlRequisitionItemsQtyAuthorized_int: TIntegerField;
    stpStockControlRequisitionItemsPackCost_mon: TBCDField;
    stpStockControlRequisitionItemsExtendedCost_mon: TBCDField;
    stpStockControlRequisitionItemsLastUpdate_dat: TDateTimeField;
    stpStockControlRequisitionItemsLastUpdate_int: TIntegerField;
    stpStockControlRequisitionItemsQtyOnOrder_int: TIntegerField;
    stpStockControlRequisitionItemsRequisition_str: TStringField;
    stpStockControlRequisitionItemsProductCode_str: TStringField;
    stpStockControlRequisitionItemsNSN_str: TStringField;
    stpStockControlRequisitionItemsICN_str: TStringField;
    stpStockControlRequisitionItemsECN_str: TStringField;
    stpStockControlRequisitionItemsDeliveryDate_dat: TDateTimeField;
    stpStockControlRequisitionItemsQtyOnBackOrder_int: TIntegerField;
    stpStockControlRequisitionItemsExtendedCostPot_mon: TBCDField;
    stpStockControlRequisitionItemsLastUpdateBy_dbl: TIntegerField;
    stpStockControlRequisitionItemsLastUpdateBy_str: TStringField;
    stpStockControlRequisitionItemsCompleted_bol: TBooleanField;
    stpStockControlRequisitionItemsQtyCostingRequest_int: TIntegerField;
    stpStockControlRequisitionItemsBatchNumber_str: TWideStringField;
    stpStockControlRequisitionItemsExpiry_dat: TDateTimeField;
    stpStockControlRequisitionItemsReceiptItem_ID: TIntegerField;
    stpStockControlRequisitionItemsDescription_str: TStringField;
    stpStockControlRequisitionItemsDescription: TStringField;
    stpStockControlRequisitionItemsGroup1_str: TWideStringField;                                                         
    stpStockControlRequisitionItemsGroup2_str: TWideStringField;
    stpStockControlRequisitionItemsShippingPack_int: TIntegerField;
    stpRequisitionsDemanderAuthorisedItemsProductCode_ID: TIntegerField;
    stpRequisitionsDemanderAuthorisedItemsCost_mon: TBCDField;
    stpRequisitionsDemanderAuthorisedItemsQtyAuthorized_int: TIntegerField;
    stpRequisitionsDemanderAuthorisedItemsMaxStockSet_int: TIntegerField;
    stpStockControlRequisitionItemsTotalsCountOfRequisitionItems_ID: TIntegerField;
    stpStockControlRequisitionItemsTotalsSumOfExtendedCost_mon: TBCDField;
    stpStockControlRequisitionItemsTotalsSumOfExtendedCostPot_mon: TBCDField;
    stpStockControlRequisitionItemsTotalsCostDiff: TBCDField;
    stpStockControlRequisitionEditHistoryRequisitionHistory_ID: TAutoIncField;
    stpStockControlRequisitionEditHistoryRequisition_ID: TIntegerField;
    stpStockControlRequisitionEditHistoryDescription_str: TStringField;
    stpStockControlRequisitionEditHistoryUser_ID: TIntegerField;
    stpStockControlRequisitionEditHistoryDate_dat: TDateTimeField;
    stpStockControlRequisitionEditHistoryProductCode_ID: TIntegerField;
    stpStockControlRequisitionEditHistoryRequisitionItem_ID: TIntegerField;
    stpStockControlRequisitionEditHistoryType_str: TStringField;
    stpStockControlRequisitionEditHistoryUserName_str: TStringField;
    stpStockControlRequisitionEditHistoryItem_ID: TIntegerField;
    tblGeneralProductStockDetailsProductCode_ID: TIntegerField;
    tblGeneralProductStockDetailsCost_mon: TBCDField;
    tblGeneralProductStockDetailsProductCode_str: TWideStringField;
    tblGeneralProductStockDetailsNSN_str: TWideStringField;
    tblGeneralProductStockDetailsICN_str: TWideStringField;
    tblGeneralProductStockDetailsECN_str: TWideStringField;
    tblGeneralProductStockDetailsStockLevel_int: TIntegerField;
    tblGeneralProductStockDetailsStockLevelPot_int: TIntegerField;
    tblGeneralProductStockDetailsQtyOnRequest_int: TIntegerField;
    tblGeneralProductStockDetailsQtyOnHand_int: TIntegerField;
    tblGeneralProductStockDetailsQtyOnOrder_int: TIntegerField;
    tblGeneralProductStockDetailsQtyOnHold_int: TIntegerField;
    tblGeneralProductStockDetailsMaxStockSet_int: TIntegerField;
    tblGeneralProductStockDetailsDescription: TWideStringField;
    tblGeneralProductStockDetailsPackSize: TWideStringField;
    tblRequisitionsCatalogUniqueDemandersDemander_ID: TAutoIncField;
    tblRequisitionsCatalogUniqueDemandersName_str: TWideStringField;
    tblRequisitionsCatalogUniqueDemandersCode_str: TWideStringField;
    tblRequisitionsCatalogUniqueDemandersActive_bol: TBooleanField;
    tblRequisitionsCatalogUniqueDemandersOpenOrMaxDriven: TBooleanField;
    tblRequisitionsCatalogUniqueDemandersBudget_mon: TBCDField;
    tblRequisitionsCatalogUniqueDemandersBudgetBalance_mon: TBCDField;
    qryRequisitionsCatalogRequisition_dat: TDateTimeField;
    qryRequisitionsCatalogActivated_bol: TBooleanField;
    qryRequisitionsCatalogRequisition_str: TStringField;
    qryRequisitionsCatalogVoucherNo_str: TStringField;
    qryRequisitionsCatalogRequisition_ID: TAutoIncField;
    qryRequisitionsCatalogSystemStore_ID: TIntegerField;
    qryRequisitionsCatalogDemander_ID: TIntegerField;
    qryRequisitionsCatalogOrdered_dat: TDateTimeField;
    qryRequisitionsCatalogOrderedBy_str: TStringField;
    qryRequisitionsCatalogAuthorizedBy_str: TStringField;
    qryRequisitionsCatalogAuthorized_Dat: TDateTimeField;
    qryRequisitionsCatalogCharges_mon: TBCDField;
    qryRequisitionsCatalogTotalCost_mon: TBCDField;
    qryRequisitionsCatalogReqCost: TBCDField;
    qryRequisitionsCatalogItemsNo_int: TIntegerField;
    qryRequisitionsCatalogActivatedBy_str: TStringField;
    qryRequisitionsCatalogActivated_dat: TDateTimeField;
    qryRequisitionsCatalogIssuedBy_str: TStringField;
    qryRequisitionsCatalogIssued_Dat: TDateTimeField;
    qryRequisitionsCatalogReceived_dat: TDateTimeField;
    qryRequisitionsCatalogReceivedBy_str: TStringField;
    qryRequisitionsCatalogLastUpdate_dat: TDateTimeField;
    qryRequisitionsCatalogName_str: TWideStringField;
    qryRequisitionsCatalogCode_str: TWideStringField;
    qryRequisitionsCatalogType_str: TWideStringField;
    qryRequisitionsCatalogDemander_Str: TStringField;
    qryRequisitionsCatalogSystemStore_str: TStringField;
    qryRequisitionsCatalogItemsComplete_bol: TBooleanField;
    qryRequisitionsCatalogPOReference_str: TWideStringField;
    qryRequisitionsCatalogCheckedOutBy_ID: TIntegerField;
    qryRequisitionsCatalogCheckedOutName_str: TWideStringField;
    qryRequisitionsCatalogCheckedOut_bol: TBooleanField;
    qryRequisitionsCatalogCheckedOut_dat: TDateTimeField;
    stpRequisition_BackOrderItemsPerDemanderDemander_ID: TIntegerField;
    stpRequisition_BackOrderItemsPerDemanderProductCode_ID: TAutoIncField;
    stpRequisition_BackOrderItemsPerDemanderSumOfQtyOrdered_int: TIntegerField;
    stpRequisition_BackOrderItemsPerDemanderSumOfQtyIssued_int: TIntegerField;
    stpRequisition_BackOrderItemsPerDemanderMaxOfQtyAuthorized_int: TIntegerField;
    stpRequisition_BackOrderItemsPerDemanderMaxOfMaxStockSet_int: TIntegerField;
    stpRequisition_BackOrderItemsPerDemanderMaxOfCost_mon: TBCDField;
    stpRequisition_BackOrderItemsPerDemanderMaxOfPackCost_mon: TBCDField;
    stpStockControlRequisitionItemsCompleteRequisition_ID: TIntegerField;
    qryRequisitionsReportPicklistICN_str: TWideStringField;
    qryRequisitionsReportPicklistSupplement_str: TWideStringField;
    qryRequisitionsReportPicklistBin_str: TWideStringField;
    qryRequisitionsReportPicklistDescription: TWideStringField;
    qryRequisitionsReportPicklistProductCode_str: TWideStringField;
    qryRequisitionsReportPicklistCode_str: TWideStringField;
    qryRequisitionsReportPicklistRequisition_str: TStringField;
    qryRequisitionsReportPicklistRequisition_ID: TAutoIncField;
    qryRequisitionsReportPicklistOrdered_dat: TDateTimeField;
    qryRequisitionsReportPicklistOrderedBy_str: TStringField;
    qryRequisitionsReportPicklistAuthorizedBy_str: TStringField;
    qryRequisitionsReportPicklistAuthorized_Dat: TDateTimeField;
    qryRequisitionsReportPicklistVoucherNo_str: TStringField;
    qryRequisitionsReportPicklistCharges_mon: TBCDField;
    qryRequisitionsReportPicklistTotalCost_mon: TBCDField;
    qryRequisitionsReportPicklistReceived_dat: TDateTimeField;
    qryRequisitionsReportPicklistItemsNo_int: TIntegerField;
    qryRequisitionsReportPicklistRemarks_mem: TMemoField;
    qryRequisitionsReportPicklistActivated_bol: TBooleanField;
    qryRequisitionsReportPicklistActivated_dat: TDateTimeField;
    qryRequisitionsReportPicklistQtyOrdered_int: TIntegerField;
    qryRequisitionsReportPicklistQtyDemanderOnHand_int: TIntegerField;
    qryRequisitionsReportPicklistprd_QtyOnHand: TIntegerField;
    qryRequisitionsReportPicklistQtyOnHand_int: TIntegerField;
    qryRequisitionsReportPicklistQtyAuthorized_int: TIntegerField;
    qryRequisitionsReportPicklistPackCost_mon: TBCDField;
    qryRequisitionsReportPicklistExtendedCost_mon: TBCDField;
    qryRequisitionsReportPicklistGenericName_str: TWideStringField;
    qryRequisitionsReportPicklistStrength_str: TWideStringField;
    qryRequisitionsReportPicklistForm_str: TWideStringField;
    qryRequisitionsReportPicklistRoute_str: TWideStringField;
    qryRequisitionsReportPicklistCost_mon: TBCDField;
    qryRequisitionsReportPicklistName_str: TWideStringField;
    qryRequisitionsReportPicklistAddress1_str: TWideStringField;
    qryRequisitionsReportPicklistAddress2_str: TWideStringField;
    qryRequisitionsReportPicklistAddress3_str: TWideStringField;
    qryRequisitionsReportPicklistCity_str: TWideStringField;
    qryRequisitionsReportPicklistIssued_Dat: TDateTimeField;
    qryRequisitionsReportPicklistIssuedBy_str: TStringField;
    qryRequisitionsReportPicklistQtyReqExtCost: TBCDField;
    qryRequisitionsReportPicklistDemanderCode_str: TWideStringField;
    qryRequisitionsReportPicklistDemanderName_str: TWideStringField;
    qryRequisitionsReportPicklistSysAddress1_str: TWideStringField;
    qryRequisitionsReportPicklistSysAddress2_str: TWideStringField;
    qryRequisitionsReportPicklistSysAddress3_str: TWideStringField;
    qryRequisitionsReportPicklistSysCity_str: TWideStringField;
    qryRequisitionsReportPicklistGroup1_str: TWideStringField;
    qryRequisitionsReportPicklistGroup2_str: TWideStringField;
    qryRequisitionsReportPicklistSystemCode_str: TStringField;
    qryRequisitionsReportPicklistAccount_str: TStringField;
    qryRequisitionsReportPicklistAccountName_str: TStringField;
    qryRequisitionsReportPicklistECN_str: TWideStringField;
    qryRequisitionsReportPicklistBatchNumber_str: TWideStringField;
    qryRequisitionsReportPicklistExpiry_dat: TDateTimeField;
    ADOQuery2: TADOQuery;
    qryCheckBatchOnHandQtyOnHold_int: TIntegerField;
    stpStockControlRequisitionItemsBin_str: TWideStringField;
    qryRequisitionsReport_byDescrip: TADOStoredProc;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    StringField1: TStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    StringField2: TStringField;
    AutoIncField1: TAutoIncField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    StringField5: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    DateTimeField3: TDateTimeField;
    IntegerField1: TIntegerField;
    MemoField1: TMemoField;
    BooleanField1: TBooleanField;
    DateTimeField4: TDateTimeField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    WideStringField8: TWideStringField;
    DateTimeField5: TDateTimeField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    DateTimeField6: TDateTimeField;
    StringField6: TStringField;
    BCDField5: TBCDField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    dsReportByDescription: TDataSource;
    qryBatchOnHold: TADOQuery;
    stpStockControlRequisitionItemsProductBatch_ID: TIntegerField;
    qryTotalQtyonHand1: TADOQuery;
    stpStockControlRequisitionItemsAvailable: TIntegerField;
    stp_CustomReport: TADOQuery;
    qrySqlStatements: TADOTable;
    dsstp_CustomReport: TDataSource;
    stpStockControlRequisitionItemsMarkUp_dbl: TFloatField;
    stpStockControlRequisitionItemsCal_PackCost: TFloatField;
    stpStockControlRequisitionItemsVATUsed_dbl: TFloatField;
    qryRequisitionsReportPicklistQtyIssdExtCost: TBCDField;
    qryRequisitionsReportPicklistProvincialLogo_img: TBlobField;
    stp_UpdateItemsVat: TADOStoredProc;
    qryTotalQtyonHand: TADOQuery;
    qryUpdateBatchQtyProductBatch_ID: TAutoIncField;
    qryUpdateBatchQtyProductCode_ID: TIntegerField;
    qryUpdateBatchQtySupplier_ID: TIntegerField;
    qryUpdateBatchQtyPrice_mon: TBCDField;
    qryUpdateBatchQtyContractBrandName_str: TWideStringField;
    qryUpdateBatchQtySupplierCode_str: TWideStringField;
    qryUpdateBatchQtyBatchNumber_str: TWideStringField;
    qryUpdateBatchQtyBarCode_str: TWideStringField;
    qryUpdateBatchQtyExpiry_dat: TDateTimeField;
    qryUpdateBatchQtyQtyOnHand_int: TIntegerField;
    qryUpdateBatchQtyQtyReceived_int: TIntegerField;
    qryUpdateBatchQtyQtyOnHold_int: TIntegerField;
    qryUpdateBatchQtyBin_str: TWideStringField;
    qryUpdateBatchQtyReceived_dat: TDateTimeField;
    qryUpdateBatchQtyLastLeadTime_int: TIntegerField;
    qryUpdateBatchQtyRemarks_mem: TMemoField;
    qryUpdateBatchQtyLastUpdate_dat: TDateTimeField;
    qryUpdateBatchQtyShippingPack_int: TIntegerField;
    qryProductBatch1: TADOQuery;
    stp_ADDProductBatches: TADOCommand;
    tmpItems: TADOQuery;
    dstmpItems: TDataSource;
    tmpItemsRequisitionItems_ID: TAutoIncField;
    tmpItemsRequisition_ID: TIntegerField;
    tmpItemsProductCode_ID: TIntegerField;
    tmpItemsQtyDemanderOnHand_int: TIntegerField;
    tmpItemsQtyOrdered_int: TIntegerField;
    tmpItemsQtyIssued_int: TIntegerField;
    tmpItemsQtyAuthorized_int: TIntegerField;
    tmpItemsPackCost_mon: TBCDField;
    tmpItemsExtendedCost_mon: TBCDField;
    tmpItemsLastUpdate_dat: TDateTimeField;
    tmpItemsLastUpdate_int: TIntegerField;
    tmpItemsQtyOnHand_int: TIntegerField;
    tmpItemsQtyOnOrder_int: TIntegerField;
    tmpItemsRequisition_str: TStringField;
    tmpItemsProductCode_str: TStringField;
    tmpItemsNSN_str: TStringField;
    tmpItemsICN_str: TStringField;
    tmpItemsECN_str: TStringField;
    tmpItemsDeliveryDate_dat: TDateTimeField;
    tmpItemsQtyOnBackOrder_int: TIntegerField;
    tmpItemsExtendedCostPot_mon: TBCDField;
    tmpItemsLastUpdateBy_dbl: TIntegerField;
    tmpItemsLastUpdateBy_str: TStringField;
    tmpItemsCompleted_bol: TBooleanField;
    tmpItemsQtyCostingRequest_int: TIntegerField;
    tmpItemsBatchNumber_str: TWideStringField;
    tmpItemsExpiry_dat: TDateTimeField;
    tmpItemsReceiptItem_ID: TIntegerField;
    tmpItemsProductBatch_ID: TIntegerField;
    tmpItemsMarkUp_dbl: TFloatField;
    tmpItemsCal_PackCost: TBCDField;
    tmpItemsVATUsed_dbl: TFloatField;
    tmpItemsBatchQty_int: TIntegerField;
    qryBatchProductOnHold: TADOQuery;
    dsOnHoldBatch: TDataSource;
    qryFindBatch: TADOQuery;
    tmpItemsBatchQty: TIntegerField;
    qryOnHoldOnRequisition: TADOQuery;                                                           
    qryTotalQtyonHandQtyAvailable: TIntegerField;
    qryTotalQtyonHandProductCode_ID: TAutoIncField;
    qryTotalQtyonHandIssued: TIntegerField;
    qryOnHoldBatchOnRequisition: TADOQuery;
    qryRequisitionsReportGroup1_str: TWideStringField;
    qryRequisitionsReportSupplement_str: TWideStringField;
    qryRequisitionsReportDescription_str: TStringField;
    qryRequisitionsReportProductCode_str: TWideStringField;
    qryRequisitionsReportNSN_str: TWideStringField;
    qryRequisitionsReportICN_str: TWideStringField;
    qryRequisitionsReportECN_str: TWideStringField;
    qryRequisitionsReportCode_str: TWideStringField;
    qryRequisitionsReportRequisition_str: TStringField;
    qryRequisitionsReportRequisition_ID: TAutoIncField;
    qryRequisitionsReportOrdered_dat: TDateTimeField;
    qryRequisitionsReportOrderedBy_str: TStringField;
    qryRequisitionsReportAuthorizedBy_str: TStringField;
    qryRequisitionsReportAuthorized_Dat: TDateTimeField;
    qryRequisitionsReportVoucherNo_str: TStringField;
    qryRequisitionsReportCharges_mon: TBCDField;
    qryRequisitionsReportTotalCost_mon: TBCDField;
    qryRequisitionsReportReceived_dat: TDateTimeField;
    qryRequisitionsReportItemsNo_int: TIntegerField;
    qryRequisitionsReportRemarks_mem: TMemoField;
    qryRequisitionsReportActivated_bol: TBooleanField;
    qryRequisitionsReportActivated_dat: TDateTimeField;
    qryRequisitionsReportQtyOrdered_int: TIntegerField;
    qryRequisitionsReportQtyDemanderOnHand_int: TIntegerField;
    qryRequisitionsReportQtyIssued_int: TIntegerField;
    qryRequisitionsReportprd_QtyOnHand: TIntegerField;
    qryRequisitionsReportQtyAuthorized_int: TIntegerField;
    qryRequisitionsReportBatchNumber_str: TWideStringField;
    qryRequisitionsReportExpiry_Dat: TDateTimeField;
    qryRequisitionsReportPackCost_mon: TBCDField;
    qryRequisitionsReportExtendedCost_mon: TBCDField;
    qryRequisitionsReportName_str: TWideStringField;
    qryRequisitionsReportAddress1_str: TWideStringField;
    qryRequisitionsReportAddress2_str: TWideStringField;
    qryRequisitionsReportAddress3_str: TWideStringField;
    qryRequisitionsReportCity_str: TWideStringField;
    qryRequisitionsReportIssued_Dat: TDateTimeField;
    qryRequisitionsReportIssuedBy_str: TStringField;
    qryRequisitionsReportQtyReqExtCost: TBCDField;
    qryRequisitionsReportCal_PackCost: TBCDField;
    qryRequisitionsReportVATUsed_dbl: TFloatField;
    qryRequisitionsReportSellingPricePack: TFloatField;
    qryRequisitionsReportCalQtyPricePack: TBCDField;
    qryRequisitionsReportTotalQtySellingPrice: TFloatField;
    qryRequisitionsReportVatOnEach: TFloatField;
    qryRequisitionsReportTotalVatOnEach: TFloatField;
    qryRequisitionsReportPotCalQtyPricePack: TBCDField;
    qryRequisitionsReportPotTotalQtySellingPrice: TFloatField;
    qryRequisitionsReportPotVatOnEach: TFloatField;
    qryRequisitionsReportPotTotalVatOnEach: TFloatField;
    qryRequisitionsReportDemName_str: TWideStringField;
    qryRequisitionsReportDemCode_Str: TWideStringField;
    qryRequisitionsReportDemDescrip_Str: TWideStringField;
    qryRequisitionsReportDemAccount_str: TWideStringField;
    qryRequisitionsReportDemAddress1_str: TWideStringField;
    qryRequisitionsReportDemAddress2_str: TWideStringField;
    qryRequisitionsReportDemCity_str: TWideStringField;
    qryRequisitionsReportDemAddressCode_str: TWideStringField;
    qryRequisitionsReportDemCountry: TWideStringField;
    qryRequisitionsReportDemanderCode_str: TWideStringField;
    qryRequisitionsReportDemanderName_str: TWideStringField;
    qryRequisitionsReportSysAddress1_str: TWideStringField;
    qryRequisitionsReportSysAddress2_str: TWideStringField;
    qryRequisitionsReportSysAddress3_str: TWideStringField;
    qryRequisitionsReportSysCity_str: TWideStringField;
    qryRequisitionsReportBin_str: TWideStringField;
    qryRequisitionsReportGroup2_str: TWideStringField;
    qryRequisitionsReportSystemCode_str: TStringField;
    qryRequisitionsReportAccount_str: TStringField;
    qryRequisitionsReportAccountName_str: TStringField;
    qryRequisitionsReportReceivedBy_str: TStringField;
    qryRequisitionsReportBudget_mon: TBCDField;
    qryRequisitionsReportBudgetBalance_mon: TBCDField;
    qryRequisitionsReportQtyIssdExtCost: TBCDField;
    qryRequisitionsReportProvincialLogo_img: TBlobField;
    qryBatchOnHoldTotal: TADOQuery;
    qryUserSpecifiDemanders: TADOStoredProc;
    dsqryUserSpecifiDemanders: TDataSource;
    qryIsDemanderValid: TADOQuery;
    qryIsItemDemanderAuthorised: TADOQuery;
    stpStockControlRequisitionItemsQtyApproved_int: TIntegerField;
    SaveDialog1: TSaveDialog;
    qrySupplierName: TADOQuery;
    qryDemanderAccount: TADOQuery;
    qryRDMFile: TADOQuery;
    qrySupplierNameName_str: TWideStringField;
    qrySupplierNameCode_str: TWideStringField;
    tblOrderListUniqueSuppliers: TADOTable;
    dsSuppliers: TDataSource;
    qryRequisitionsReportQtyApproved_int: TIntegerField;
    stpStockControlRequisitionSupplier_ID: TIntegerField;
    stpStockControlRequisitionSupplier_Str: TWideStringField;
    stpStockControlRequisitionOrdered_dat: TDateTimeField;
    qryRequisitionsReportQtyOnHand_int: TIntegerField;
    qryRequisitionsReportQtyOnOrder_int: TIntegerField;
    qryRequisitionsReportApprovedCost: TBCDField;
    qryRequisitionsReportValonHand: TBCDField;
    qryRequisitionsReportValordered: TBCDField;
    qryRequisitionsReportValReceived: TBCDField;
    OriginalProductBatch: TADOQuery;
    tblSystemUsers: TADOQuery;
    qryIsReqLocked: TADOQuery;
    stpSystemWharehouse: TADOQuery;
    stpSystemWharehouseSystemStore_ID: TAutoIncField;
    stpSystemWharehouseSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseDemanderName_str: TWideStringField;
    stpSystemWharehouseDemanderCode_str: TWideStringField;
    stpSystemWharehouseAccountName_str: TStringField;
    stpSystemWharehouseAccount_str: TStringField;
    stpSystemWharehouseDescription: TWideStringField;
    stpRequisitionDemandersUsers: TADOQuery;
    qryBatchOnHoldReturnsTotal: TADOQuery;
    stpStockControlIssuedRequestedTotals: TADOStoredProc;
    dsstpStockControlIssuedRequestedTotals: TDataSource;
    stpStockControlIssuedRequestedTotalsCountOfRequisitionItems_ID: TIntegerField;
    qryRequisitionsReportPicklistISOStdNumber_str: TWideStringField;
    qryRequisitionsReportISOStdNumber_str: TWideStringField;
    OpenDialog1: TOpenDialog;
    qryCheckVoucher: TADOQuery;
    qryGetDemanderID: TADOQuery;
    qryGetProductsWithNSN: TADOQuery;
    SaveDialog2: TSaveDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryRequisitionsCatalogFilterRecord(DataSet: TDataSet; var Accept: 
        Boolean);
    procedure stpStockControlRequisitionBeforePost(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsAfterDelete(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsAfterInsert(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsAfterPost(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsBeforePost(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsNewRecord(DataSet: TDataSet);
    procedure stpStockControlRequisitionItemsQtyAuthorized_intChange(Sender: 
        TField);
    procedure stpStockControlRequisitionItemsQtyDemanderOnHand_intChange(Sender: 
        TField);
    procedure stpStockControlRequisitionItemsQtyIssued_intChange(Sender: TField);
    procedure stpStockControlRequisitionNewRecord(DataSet: TDataSet);
    procedure tblRequisitionsCatalogUniqueDemandersFilterRecord(DataSet: TDataSet;
        var Accept: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure ADORequisitionConnectionWillExecute(
      Connection: TADOConnection; var CommandText: WideString;                                          
      var CursorType: TCursorType; var LockType: TADOLockType;
      var CommandType: TCommandType; var ExecuteOptions: TExecuteOptions;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure tmrRefresherTimer(Sender: TObject);
    procedure RequisitionUnlock;
    procedure stpStockControlRequisitionSystemStore_IDChange(
      Sender: TField);
    procedure stpStockControlRequisitionItemsAfterOpen(DataSet: TDataSet);
    procedure tmpItemsBeforePost(DataSet: TDataSet);
    procedure tmpItemsCalcFields(DataSet: TDataSet);
    procedure tmpItemsAfterPost(DataSet: TDataSet);
    procedure stpStockControlRequisitionDemander_IDChange(Sender: TField);
    procedure stpStockControlRequisitionSupplier_IDChange(Sender: TField);
    procedure stpStockControlRequisitionCharges_monChange(Sender: TField);
    procedure stpStockControlRequisitionAuthorizedBy_strChange(
      Sender: TField);
    procedure stpStockControlRequisitionIssuedBy_strChange(Sender: TField);
    procedure stpStockControlRequisitionReceivedBy_strChange(
      Sender: TField);
    procedure stpStockControlRequisitionOrderedBy_strChange(
      Sender: TField);

  private
    FAddingItem: Boolean;
    FDoingBackOrder: Boolean;
    FIsEditing: Boolean;
    FIsRequisitionAvailable: Boolean;
    FItemList: AItemsLists;
    FMustPostRequisition: Boolean;
    FRequisitionLockedOnEntry: Boolean;
    FUpdateData: Boolean;
    pCounter : integer;
    vVat : double;
    procedure AddRequisitionItem(pReqID, pProductID: double; pAuthItems: integer;
        pBackOrder:integer=0; pQtyOrdered:integer=0; pQtyIssued:integer=0);
    function CanAddRequisition: Boolean;
    procedure DeleteReqItem(pReqItemID: double);
    function DrillRequisition(pReq: double;pIssues:Boolean): Double;
    function GetCurrDemanderID: Double;
    function GetCurrProductID: Double;
    function GetCurrRequisitionID: Double;
    function GetEditDemanderID: Double;
    function GetEditRequisitionID: Double;
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    procedure UpdateDemanderBudget(DemanderID:double);
    procedure UpdateRequisitionTotalDisplay;
    procedure LoadSuppliers;
    procedure LoadSystemUsers;
    procedure LogUnfoundProduct(NSN: string; OrderRef: string);



  public
    FDateEnd: TDateTime;
    FDateSt: TDateTime;
    gWasPosted: Boolean;
    FUsesBatchManagement : Boolean;
    FUseAvgWeighedPrice : Boolean;
    FUseEditableExitPrice : Boolean;
    FUsesBarcoding : Boolean;
    prvUName  : string;
    prvUID    : Variant;
    procedure AddReq(pIssues: Boolean);
    procedure AddRequisitionItemList(pListType: integer);
    procedure AddSingleRequisitionItem;
    procedure AddEditHistory(const pType, pStr: string;pAddType: integer);
    procedure CloseReportData(const pType: integer);
    function ConnectDataSource: Boolean;
    procedure DeleteAllRequisitionItems;
    function DeleteCurrReqItem(vAsk :Boolean): Boolean;
//    function DeleteRequisition: Boolean;
    procedure EditReq(pIssues:Boolean);
    function GetCurrentAccess: Integer;
    procedure MarkAllItemsAsComplete(pFrom: integer);
    function Product_ItemChange(pPostItem :boolean = True): Boolean;
    procedure SetDateParams(DateStart :TDateTime; DateEnd :TDateTime; OpenTable 
        :boolean = True);
    function SetDocumentPrintName(const pType: integer): string;
    procedure SetRequisitionNumber;
    procedure SortPrintdata(vSortType:integer);
    procedure UpdateDemanderUsers;
    procedure UpdateRequisitionSubTotals;
    function ValidatePosting: Boolean;
    function GetAccessLevel(vSecurityItem: double): Integer;
    function IsRequisitionAvailable: Boolean;
    procedure MustPost(prmYesNo: Boolean = True);
    procedure RequisitionLockForEditing;
    procedure RequisitionUnlockForEditing;
    function WriteAuditData(pAuditData: RProductAuditDetails): Boolean;
    property IsEditing: Boolean read FIsEditing write FIsEditing;
    procedure AddBatchItem(Req_ID, Item_ID : Integer);
    procedure SelectBatch;
    procedure LoadBatchItems;
    procedure LoadBatchQty;
    procedure Calc_SellingPrice;
    procedure AddBatchItemsToList(pReqID, pProductID: double; pBatchID: integer; pAuthItems: integer;
        pQtyOrdered: integer; pExpiry : TDateTime; pBatch : string);
    procedure AddBatchItemToList(pReqID, pProductID  :double; pBatchID: integer; pQtyIssued: integer);
    procedure SelectBatchItemToAdd;
    procedure DoTest;
    function BatchExists(ReqID: integer; BatchID: integer): Boolean;
    function LoadSqlStatement(pType : integer): boolean; //Printing function tocheck whether to load report template or not
    procedure UpdateItemsVat;
    procedure AddALLBatchItems(Req_ID, Item_ID : Integer);
    procedure LoadIssuedForThisRequisition;
    procedure LoadIssuedForThisBatchRequisition;
    function TotalOnHoldBatch : integer;
    procedure LoadUSerDemanders;
    function IsDemanderValid(DemanderID : Double) : boolean;
    function IsItemDemanderAuthorised(DemanderID : Double; ProductCodeID: Double) : boolean;

    procedure CreateTextFileOrderReport;
    function CodeMyString(mystring: string; vlength: integer): string;
    function GetSupplierCode(SupplierID: double): string;
    function GetDemanderAccount(DemanderID: Double): string;
    function IsLockedBySameUser: Boolean;
    function IsRequisitionLocked: Boolean;
    procedure RequisitionUnlockMain;
    procedure ImportDDVRequisition;

    function GetProductId(nsn: string): integer;

  end;

var
  RequisitionDM: TRequisitionDM;


implementation

uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  ProgressIndicatorUFrm,
  {$ELSE}

  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,
  dmpDataObjectBaseModule,
  DialogProgressIndicatorUFrm,
  {$ENDIF}



  RequisitionDetailUFrm,
  ProductGeneralUFrm,
  MainUDM, ProductBatchSelctUFrm, ProductUDm, ReturnsSelectBatchUFrm;


{$R *.DFM}

function UpdateLastDayMon(MyDate : TDate): TDate;
begin
 result := EncodeDate(YearOf(Mydate),MonthOf(MyDate), DaysInMonth(MyDate));
end;

procedure TRequisitionDM.AddBatchItem(Req_ID, Item_ID : Integer);
begin
 RequisitionDM.AddRequisitionItem(Req_ID, Item_Id, 0);
end;


(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TRequisitionDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer ); (*:::::::::START:*)(*===========================================*)
                                                                                (*procedure:AddEditHistory-------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vReqID, vReqItemID  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)


  vReqID      := 0;
  vReqItemID  := 0;

  with qryRequisitionsCatalog do
    if Active then
      if RecordCount > 0 then                                                   //
        vReqID := qryRequisitionsCatalog.FieldByName('Requisition_ID').AsFloat; // Get current ID's for Req items

  with stpStockControlRequisition do                                            // Use same table as curently being edited
    if Active then
      vReqID := FieldByName('Requisition_ID').AsFloat;                           // Get current ID's for Req items



  with stpStockControlRequisitionItems do
    if Active then
      if RecordCount > 0 then
        vReqItemID := FieldByName('RequisitionItems_ID').AsFloat;



    with stpStockControlRequisitionEditHistory do
        begin

        if not Active then
          begin
          Close;
          Prepared := False;
          Parameters.ParamByName('RequisitionID').Value := vReqID;                    // All stored procs have same param name
          Prepared := True;                                                         // Need to prepare for the qry to return result set
          Open;        // has to be done this way. cannot close a table and hold the transaction.
          end;

        Append;
        FieldByname('Requisition_ID').AsFloat   := vReqID;
        FieldByName('Description_str').AsString := pStr;
        {$IFDEF RXSTOREBUILD}
        FieldByName('UserName_str').AsString    := SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
        FieldByName('User_ID').AsFloat          := SystemSecurityDM.UserID;
        {$ELSE}
        FieldByName('UserName_str').AsString    :=
                RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
        FieldByName('User_ID').AsFloat          :=
                RxSolutionFrm.Security.User.UserNumID.Value;
        {$ENDIF}

        FieldByName('Date_dat').AsDateTime      := Now;
        FieldByName('Type_str').AsString        := pType;

        case pAddType of
          ADD_ITEM :
            begin
            FieldByName('ProductCode_ID').AsFloat   := GetCurrProductID;
            FieldByName('Item_ID').AsFloat          := vReqItemID;
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

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.AddReq(pIssues:Boolean); (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:EditReq--------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :double;

const
  ErrMsg =  'No Demanders available.'#13'Please add or activate at least one Demander'#13'OR'#13 +
            'Check with the system administrator';

begin (*.............................................................*)(*begin*)(*...........................................*)

  if CanAddRequisition then
    begin
    with qryRequisitionsCatalog do
      try
      DisableControls;
      vCurrRec := DrillRequisition(0, pIssues);                            // pIssues is for posting data to audit table
      Requery;
        try
        Locate('Requisition_ID', vCurrRec, []);
        except
        end;
      finally
      EnableControls;
      end;
    end else
    MessageDlg(ErrMsg,mtError,[mbOK],0);

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.AddRequisitionItem(pReqID, pProductID  :double; (*START:*)(*===========================================*)
                                            pAuthItems          :integer;       (*===========================================*)
                                            pBackOrder          :integer;
                                            pQtyOrdered         :integer;
                                            pQtyIssued          :integer);


begin (*.............................................................*)(*begin*)(*...........................................*)

with ADOCommand1 do
  begin
  Prepared := False;
  Parameters.ParamByName('RequisitionID').Value       := pReqID;
  Parameters.ParamByName('QtyAuthorizedint').Value    := pAuthItems;
  Parameters.ParamByName('LastUpdatedat').Value       := Now;
  Parameters.ParamByName('QtyOrderedint').Value       := pQtyOrdered;
  Parameters.ParamByName('QtyIssuedint').Value        := pQtyIssued;
  Parameters.ParamByName('QtyDemanderOnHandint').Value:= -1;
  Parameters.ParamByName('QtyOnBackOrderint').Value   := pBackOrder;
  Parameters.ParamByName('ProductCodeID').Value       := pProductID;
  Execute;
  end;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.AddRequisitionItemList( pListType :integer ); (*START:*)(*===========================================*)
                                                                                (*procedure:AddRequisitionItemList-----------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vProductID, vReqID, vDemID  : double;
  vItemCost                   : currency;
  vAuthItems                  : integer;
  i,j                         : integer;
  vItemList                   : AItemsLists;
  vDataSets                   : array[0..2] of TADOStoredProc;  // only put different lists in here
  vOverallProgress            : TProgressIndicatorFrm;
  vBackOrder                  : integer;
  vOrdered                    : integer;
  vContinue                   : boolean;


  procedure LoadCurItemList( pItems : TADOStoredProc; var pItemList : AItemsLists);
//  procedure LoadCurItemList( pItems : TADOQuery; var pItemList : AItemsLists);
  var (*...............................................................*)(*var*)(*...........................................*)
    vCurRec         : double;
    vCurrProgress   : TProgressIndicatorFrm;
    i               : integer;

  begin (*...........................................................*)(*begin*)(*...........................................*)

  pItemList := nil;
  i         := 0;

  with pItems do
    if Active then
    try
      vCurRec := FieldByName('RequisitionItems_ID').AsFloat;
      vCurrProgress := TProgressIndicatorFrm.Create(Self);
      vCurrProgress.MaxProgress := RecordCount;
      DisableControls;
      First;
      while not EOF do
      begin
        SetLength(pItemList, Length(pItemList) + 1);
        with pItemList[Length(pItemList) -1] do
        begin
          ID        := FieldByName('RequisitionItems_ID').AsFloat;
          ProductID := FieldByName('ProductCode_ID').AsFloat;
          OldQty    := FieldByName('QtyOrdered_int').AsInteger;
          OldIssued := FieldByName('QtyIssued_int').AsInteger;
          ProdExsts := False;
        end;
        inc(i);
        vCurrProgress.CurrentProgress := i;
        Next;
      end;
      Locate('RequisitionItems_ID', vCurRec, [loPartialKey]);
    finally
      vCurrProgress.MaxProgress := 0;
      vCurrProgress.Free;
      EnableControls;
    end;
  end; (*..............................................................*)(*end*)(*...........................................*)


function IsItemInAlready ( pID : Double ; const pItemList : AItemsLists) :boolean;
  var (*...............................................................*)(*var*)(*...........................................*)
  i :integer;
  begin (*...........................................................*)(*begin*)(*...........................................*)
  Result := False;
  for i:=low(pItemList) to high(pItemList) do
    with pItemList[i] do
      if ProductID = pID then
        begin
        Result    := True;
        Break;
        end
  end; (*..............................................................*)(*end*)(*...........................................*)

begin (*.............................................................*)(*begin*)(*...........................................*)

  vDataSets[0] := stpRequisitionsDemanderAuthorisedItems;
  vDataSets[1] := stpRequisitionsDemanderInstitutionalEDLItemsAdd;
  vDataSets[2] := stpRequisition_BackOrderItemsPerDemander;

  with stpStockControlRequisition do                                            // Use same table as curently being edited
    begin
    if State in [dsEdit, dsInsert] then Post;
    vReqID := FieldByName('Requisition_ID').AsFloat;                            // Get current ID's for Req items
    vDemID := FieldByName('Demander_ID').AsFloat;                               // Needed to filter auth items list
    end;

  LoadCurItemList( stpStockControlRequisitionItems,  vItemList);                // Get a list of current products in the Req.

  with vDataSets[pListType] do
    begin
    FUpdateData := False;
    case pListType of
      0:  begin
          Close;
          Parameters.ParamByName('DemanderID').Value    := vDemID;
          Prepared := True;
          Open;
          try
          DisableControls;
          j := 0;
          vOverallProgress := TProgressIndicatorFrm.Create(Self);
          vOverallProgress.MaxProgress := RecordCount;
          // now loop thru
          while not EOF do
            begin
            vProductID  := FieldByName('ProductCode_ID').AsFloat;
            vItemCost   := FieldByName('Cost_mon').AsCurrency;
            if pListType = 0 then
              vAuthItems  := FieldByName('MaxStockSet_int').AsInteger
           {   else
              vAuthItems  := 0};      //SM Commented out so Max value from Demander
                                      //can be displayed

            if not IsItemInAlready( vProductID, vItemList) then
              begin
              AddRequisitionItem(vReqID, vProductID, vAuthItems);
              end;
            inc(j);
            vOverallProgress.CurrentProgress := j;
            Next;
            end; (* while not EOF do *)

          AddEditHistory(HST_ADD, 'Adding all AUTHORISED products for demander', ADD_REQ);

          finally
          vOverallProgress.MaxProgress := 0;
          vOverallProgress.Free;
          EnableControls;
          FUpdateData := True;
          stpStockControlRequisitionItems.Close;
          stpStockControlRequisitionItems.Open;
          UpdateRequisitionTotalDisplay;
          end; (* Try *)

          end;

      1:  begin

          // before adding the edl, delete any old items
          vContinue := True;
          if stpStockControlRequisitionItems.RecordCount > 0 then
            if MessageDlg('Before adding the EDL, the existing Items/products on this requisition need to be Deleted?',mtWarning,[mbOK, mbNo], 0) = mrOK then
              DeleteAllRequisitionItems
              else
              vContinue := False;

          if vContinue then
            begin
            Parameters.ParamByName('RequisitionID').Value    := vReqID;
            Prepared := True;
            ExecProc;
            stpStockControlRequisitionItems.Close;
            stpStockControlRequisitionItems.Open;
            FUpdateData := True;
            UpdateRequisitionTotalDisplay;
            AddEditHistory(HST_ADD, 'Adding all Institutional EDL products for demander', ADD_REQ);
            end;

          end;
      2:  begin
          Close;
          Parameters.ParamByName('DemanderID').Value    := vDemID;
          Prepared := True;
          Open;
          try
          DisableControls;
          FDoingBackOrder   := True;
          j := 0;
          vOverallProgress := TProgressIndicatorFrm.Create(Self);
          vOverallProgress.MaxProgress := RecordCount;
          // now loop thru
          while not EOF do
            begin
            vProductID  := FieldByName('ProductCode_ID').AsFloat;
            vItemCost   := FieldByName('MaxOfCost_mon').AsCurrency;
            vBackOrder  := FieldByName('SumOfQtyOrdered_int').AsInteger -
                           FieldByName('SumOfQtyIssued_int').AsInteger;
            vOrdered    := vBackOrder;


            if pListType = 0 then
              vAuthItems  := FieldByName('MaxOfMaxStockSet_int').AsInteger
              else
              vAuthItems  := 0;

            if not IsItemInAlready( vProductID, vItemList) then
              AddRequisitionItem(vReqID, vProductID, vAuthItems, vBackOrder, vOrdered);
            inc(j);
            vOverallProgress.CurrentProgress := j;
            Next;
            end; (* while not EOF do *)
          finally
          FDoingBackOrder   := False;
          vOverallProgress.MaxProgress := 0;
          vOverallProgress.Free;
          EnableControls;
          stpStockControlRequisitionItems.Close;
          stpStockControlRequisitionItems.Open;
          FUpdateData := True;
          UpdateRequisitionTotalDisplay;
          AddEditHistory(HST_ADD, 'Adding all Backorder products for demander', ADD_REQ);
          end; (* Try *)

          end;

      end; (* case pListType of *)
    UpdateRequisitionTotalDisplay;
    end; (* with vDataSets[pListType] do *)
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.AddSingleRequisitionItem; (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:AddSingleRequisitionItem---------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vProductSelector  : TProductSelector;
  vReqID            : double;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;

begin (*.............................................................*)(*begin*)(*...........................................*)


  with stpStockControlRequisition do                                            // Use same table as curently being edited
    vReqID := FieldByName('Requisition_ID').AsFloat;                            // Get current ID's for Req items
  if ((stpStockControlRequisition.FieldByName('SystemStore_ID').IsNull) or (stpStockControlRequisition.FieldByName('SystemStore_ID').AsInteger = 0)) then
   MessageDlg('Please select an account first', mtWarning, [mbOk], 0)
  else
   begin

   vProductSelector := TProductSelector.Create;
   with stpStockControlRequisitionItems, vProductSelector do
    if Active then
      try

      if Product_SelectItems( vProductCost, vProductID) then
        for i := low(vProductID) to high(vProductID) do
          try
          if not Locate('ProductCode_ID;Requisition_ID', VarArrayOf([vProductID[i], vReqID]), []) then
            begin
            AddRequisitionItem( vReqID, vProductID[i], 0);
            end;
          Close;
          Open;
          UpdateRequisitionTotalDisplay;
          AddEditHistory(HST_ADD, 'Adding product(s)', ADD_REQ);
          //Added by SM; move cursor to last added item
          if i = high(vProductID)  then
           Locate('ProductCode_ID;Requisition_ID', VarArrayOf([vProductID[i], vReqID]), []);  //Removed because this is slowing down the program
          except
          end;

      finally
      Free;
      end;
   end;
end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.CanAddRequisition : Boolean;
begin

  if tblRequisitionsCatalogUniqueDemanders.RecordCount > 0 then
    Result := True
    else
    Result := False;

end;

procedure TRequisitionDM.CloseReportData(const pType:integer);
var
  vReport   :TADOStoredProc;

begin (*.............................................................*)(*begin*)(*...........................................*)

  case pType of
    0: begin vReport := qryRequisitionsReport; end;
    1: begin vReport := qryRequisitionsReportPicklist; end;
    -1:begin vReport := qryRequisitionsReport_byDescrip; end;
    end;

  with vReport do Close;

end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.ConnectDataSource: Boolean; (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:ConnectDataSource-----------------*)
                                                                                (*===========================================*)
                                                                   (*30.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  aAllDataSetsOpened    := True;                                                // If datasets could not be opened, set this to false
  Connections[0]        := ADORequisitionConnection;

//Provider=SQLOLEDB.1;Password=lvr8;Persist Security Info=True;User ID=sa;Initial Catalog=RxStore;Data Source=SERVER\CALLIOPE;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=AMD-XP2K-DVD;Use Encryption for Data=False;Tag with column collation when possible=False
//Provider=SQLOLEDB;Password=lvr8;Persist Security Info=True;User ID=sa;Initial Catalog=RxStore;Data Source=SERVER\CALLIOPE

  if Assigned(MainDM) then
    with MainDM do
      FDataBasePath     := ADOMainDBConnection.ConnectionString;

  for i:= low(Connections) to high(Connections) do
    with Connections[i] do
      try
      Connected         := False;                                               // Make sure it's not connected
      ConnectionString  := FDatabasePath;


      for j := 0 to DataSetCount - 1 do
        if Datasets[j].Tag < 1 then
          if not DataSets[j].Active then
            DataSets[j].Active := True;                                         // Activate the datastores.
                                                                                // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;
      //04 Feb 2009
      //These procedure checks if the current user logged on is only restricted to one Demander or not.
      LoadUSerDemanders;
      //Load Suppliers
      LoadSuppliers;
      //Load Users
      LoadSystemUsers;


        
  Result := aAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.DataModuleCreate(Sender: TObject); (*::::::::::START:*)(*===========================================*)
                                                                                (*procedure:DataModuleCreate-----------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)


  FDateSt   := Date - 30;
  FDateEnd  := Date;

  SetDateParams(FDateSt, FDateEnd, False);                                      // Set paramaters before opening dataset
  if Assigned(MainDM) then                                                      // If this is not assigned, big trouble
    ConnectDataSource;

  FUpdateData       := True;
  FDoingBackOrder   := False;
  FAddingItem       := False;
  FIsRequisitionAvailable := False;
  FRequisitionLockedOnEntry := False;
  FUsesBatchManagement := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean;
  FUseAvgWeighedPrice   := MainDm.tblMainSystem.FieldByName('AvgWeighedPricing_bol').AsBoolean; //SM
  FUseEditableExitPrice := MainDm.tblMainSystem.FieldByName('EditableExitProductPrice_bol').AsBoolean; //SM
    //****** SM 21 Oct 2013
  FUsesBarcoding := MainDm.tblMainSystem.FieldByName('useBarCoding_bol').AsBoolean;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.DeleteAllRequisitionItems; (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:DeleteAllRequisitionItems--------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vOverallProgress            : TProgressIndicatorFrm;
  j   :integer;
  vReqID          :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with stpStockControlRequisition do                                            // Use same table as curently being edited
    vReqID := FieldByName('Requisition_ID').AsFloat;                            // Get current ID's for Req items

  with stpRequisitionUPDATE_DeleteAllProductItems do
    begin
    Parameters.ParamByName('RequisitionID').Value    := vReqID;
    Prepared := True;
    ExecProc;
    AddEditHistory(HST_DEL, '***Deleted ALL items***', ADD_ITEM);
    stpStockControlRequisitionItems.Close;
    stpStockControlRequisitionItems.Open;
    UpdateRequisitionTotalDisplay;
    end;
end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.DeleteCurrReqItem(vAsk :Boolean): boolean; (*:::START:*)(*===========================================*)
                                                                                (*function:DeleteCurrReqItem-----------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vCurProductName,vCurProductCode : string;
  vDel  :Boolean;
  vsStatus, vsProduct, vsDescription :string;
  s :string;

const                                                                  (*const*)(*...........................................*)
  DELSTR = 'Delete item? ' + #13 + 'Code: %s ' + #13 + 'Product: %s';

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result  := False;
  vDel    := False;//Updated 09 July 2008

  with stpStockControlRequisitionItems do
    if Active then
      if RecordCount > 0 then
        begin
        vCurProductName := FieldByName('Description_str').AsString;
        vCurProductCode := FieldByName('productCode_str').AsString;
        if vAsk then
          if MessageDlg(Format(DELSTR,[vCurProductCode,vCurProductName]),
                        mtWarning,[mbYes,mbNo],0) = mrYes then
                        vDel := True;
        if vDel then
          begin
          vsStatus      := HST_DEL;
          vsProduct     := FieldByName('Description_str').AsString;
          vsDescription := ' deleted from requisition!';
          
          with ADOCommand_General do
            begin
            CommandText := 'DELETE TblRequisitionItems WHERE TblRequisitionItems.RequisitionItems_ID=' + FieldByName('RequisitionItems_ID').AsString + ';';
            Execute;
            end;




          Close;
          Open;
          UpdateRequisitionTotalDisplay;
          AddEditHistory(vsStatus, vsProduct + vsDescription, ADD_ITEM);
          Result := True;
          end;
        end;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.DeleteReqItem(pReqItemID:double);
begin

  with ADOCommand_General do
    begin
    CommandText := 'DELETE TblRequisitionItems WHERE (((TblRequisitionItems.RequisitionItems_ID)=' + FloatToStr(pReqItemID) + '));';
    Execute;
    end;

end;

{
function TRequisitionDM.DeleteRequisition:boolean;
var
  vWasPosted      : Boolean;
  vDemander       : string;
  vReqID          : Double;
  vQtyIssued,i    : integer;
  vQtyRequested   : integer;
  vDescription    : string;
  vStpProcs       : array[1..3] of TADOStoredProc;

begin

  with qryRequisitionsCatalog do
    begin

    vWasPosted    :=  FieldByName('Activated_bol').AsBoolean;
    vDemander     :=  '[' + FieldByName('Requisition_str').AsString + '] ' +
                      FieldByName('Code_str').AsString + ' ' +
                      FieldByName('Name_str').AsString;
    vReqID        :=  FieldByName('Requisition_ID').AsFloat;
    vDescription  :=  'because it has already been posted!';

    if vWasPosted then
      begin
      MessageDlg('Cannot Delete Requisition' + #13 + vDemander + #13 + vDescription ,mtError	, [mbOK],0);
      end else

      begin

      if MessageDlg('DELETE REQUISITION?' + #13 + vDemander, mtWarning, [mbYes, mbNo],0) = mrYes then
        begin

          with ADOCommand_General do
          begin
//          CommandText :=  'DELETE TblRequisitionItems.Requisition_ID, TblRequisitionItems.QtyOrdered_int, TblRequisitionItems.QtyIssued_int ' +
//                          'FROM TblRequisitionItems ' +
//                          'WHERE (((TblRequisitionItems.Requisition_ID)=' + FloatToStr(vReqID) + ') AND ((TblRequisitionItems.QtyOrdered_int)=0) AND ((TblRequisitionItems.QtyIssued_int)=0));';
          CommandText :=  'DELETE TblRequisitionItems ' +
                          'WHERE (((TblRequisitionItems.Requisition_ID)=' + FloatToStr(vReqID) + ') AND ((TblRequisitionItems.QtyOrdered_int)=0) AND ((TblRequisitionItems.QtyIssued_int)=0));';
          Execute;
          end;


        // Update product table
        with stpStockControlRequisitionItems do
          begin
          Close;
//          Prepared := False;
//          Parameters.ParamByName('RequisitionID').Value := vReqID;                    // All stored procs have same param name
//          Prepared := True;                                                         // Need to prepare for the qry to return result set
          Open;

          if RecordCount > 0 then
            begin
            ADOQuery1.Active := True;
            while not eof do
              begin
              vQtyIssued      := FieldByName('QtyOrdered_int').AsInteger;
              vQtyRequested   := FieldByName('QtyIssued_int').AsInteger;
              if (vQtyIssued > 0) or (vQtyRequested > 0) then
                begin
                ADOQuery1.Edit;
                ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger   :=
                  ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger - vQtyRequested;

                ADOQuery1.Post;
                end;

              

               Next;
              end;

            ADOQuery1.Active := False;
          end;
          end;



        with ADOCommand_General do
          for i:=0 to 2 do
            begin
            case i of
//              0: CommandText := 'DELETE TblRequisitionItems.Requisition_ID FROM TblRequisitionItems WHERE (((TblRequisitionItems.Requisition_ID)=' + FloatToStr(vReqID) + '));';
//              1: CommandText := 'DELETE TblRequisitionsEditHistory.Requisition_ID FROM TblRequisitionsEditHistory WHERE (((TblRequisitionsEditHistory.Requisition_ID)=' + FloatToStr(vReqID) + '));';
//              2: CommandText := 'DELETE TblRequisition.Requisition_ID FROM TblRequisition WHERE (((TblRequisition.Requisition_ID)=' + FloatToStr(vReqID) + '));';
              0: CommandText := 'DELETE TblRequisitionItems WHERE (((TblRequisitionItems.Requisition_ID)=' + FloatToStr(vReqID) + '));';
              1: CommandText := 'DELETE TblRequisitionsEditHistory WHERE (((TblRequisitionsEditHistory.Requisition_ID)=' + FloatToStr(vReqID) + '));';
              2: CommandText := 'DELETE TblRequisition WHERE (((TblRequisition.Requisition_ID)=' + FloatToStr(vReqID) + '));';
              end; //case
            Execute;
            end; //  for i:=0 to 3 do
        qryRequisitionsCatalog.Close;
        qryRequisitionsCatalog.Open;
        end; // messagedlg

      end; // vWasPosted


    end;

end;       }

function TRequisitionDM.DrillRequisition( pReq  : double; (*::::::START:*)(*===========================================*)
                                          pIssues     : Boolean): double;      (*function:DrillRequisition------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)

var (*.................................................................*)(*var*)(*...........................................*)
  vReqEdit        : TRequisitionEditor;
  vIsRequisitionManagementOnly,
  vSaveOrDelete,
  vCurrentPosting,
  vWasPosted      : Boolean;
  vStpProcs       : array[0..4] of TADOStoredProc;
  vStpEXEProcs    : array[0..0] of TADOStoredProc;
  i               : integer;


  vProductID      : Double;
  vItemsRequested,
  vItemsIssued,
  vItemsPosted    :integer;
  vAddedRecord    :boolean;
  vTempBugStr     :string;


  procedure LoadItemList( pItems : TADOStoredProc; var pItemList : AItemsLists);
//  procedure LoadItemList( pItems : TADOQuery; var pItemList : AItemsLists);
  var (*...............................................................*)(*var*)(*...........................................*)
  vOverallProgress            : TProgressIndicatorFrm;
  j                           : integer;

  begin (*...........................................................*)(*begin*)(*...........................................*)

  pItemList := nil;
  with pItems do
    if Active then
      try
      First;
      j := 0;
      vOverallProgress := TProgressIndicatorFrm.Create(Self);
      vOverallProgress.MainCaption := 'Getting items list from server';
      vOverallProgress.MaxProgress := RecordCount;
      while not EOF do     
        begin
        SetLength(pItemList, Length(pItemList) + 1);
        with pItemList[Length(pItemList) -1] do
          begin
          ID        := FieldByName('RequisitionItems_ID').AsFloat;
          ProductID := FieldByName('ProductCode_ID').AsFloat;
          OldQty    := FieldByName('QtyOrdered_int').AsInteger;
          OldIssued := FieldByName('QtyIssued_int').AsInteger;
          ProdExsts := False;
          end;

        inc(j);
        vOverallProgress.CurrentProgress := j;
        Next;
        end;
      finally
      vOverallProgress.MaxProgress := 0;
      vOverallProgress.Free;
      First;
      end;
  end; (*..............................................................*)(*end*)(*...........................................*)


  function GetItemID ( pID : Double ; var pItemList : AItemsLists) :integer;
  var (*...............................................................*)(*var*)(*...........................................*)
    i :integer;

  begin (*...........................................................*)(*begin*)(*...........................................*)
  Result := -1;
  for i:=low(pItemList) to high(pItemList) do
    with pItemList[i] do
      if pID = ID then
        begin
        Result    := i;
        ProdExsts := True;
        Break;
        end
  end; (*..............................................................*)(*end*)(*...........................................*)

  procedure UpdateItemDB( pItems : TADOStoredProc;
                          var pItemList : AItemsLists;
                          pMustPostItems:boolean = False);
  var (*...............................................................*)(*var*)(*...........................................*)
  OldItemIndex, i, j            :integer;
  vCurRecords                   :integer;                                       // Index position in the pItemList Array
  vIssue, vRequest, vPost       :integer;
  vCurID, vCurProdID            :Double;
  vCurQtyReq, vCurQtyIss        :integer;
  vOldID, vOldProdID            :Double;
  vOldQtyReq, vOldQtyIss        :integer;
  vCurrCost                     :currency;
  vOverallProgress            : TProgressIndicatorFrm;
  vProductDetails             : RProductDetails;
  vAuditData                  : RProductAuditDetails;
  vPostBy                       : String;


  tmpCounter                  : integer;

  begin (*...........................................................*)(*begin*)(*...........................................*)

   with pItems do
    if Active then
      try
      Active := False;
      Active := True;
      ADOQuery1.Active := True;  // Change this to filter .




      First;
      j := 0;
      vCurRecords := RecordCount;
      vOverallProgress := TProgressIndicatorFrm.Create(Self);

      if vCurRecords > (high(pItemList) + 1) then
        vCurRecords := RecordCount + (high(pItemList) + 1)
        else
        vCurRecords := RecordCount + (high(pItemList) - RecordCount);
      vOverallProgress.MaxProgress := vCurRecords;

      while not EOF do
        begin

        vRequest        := 0;
        vIssue          := 0;
        vPost           := 0;
        vCurrCost       := 0;

        vCurID          := FieldByName('RequisitionItems_ID').AsFloat;
        vCurProdID      := FieldByName('ProductCode_ID').AsFloat;
        vCurQtyReq      := FieldByName('QtyOrdered_int').AsInteger;
        vCurQtyIss      := FieldByName('QtyIssued_int').AsInteger;
        vCurrCost       := FieldByName('PackCost_mon').AsCurrency;

        vOldID          := 0;
        vOldProdID      := 0;
        vOldQtyReq      := 0;
        vOldQtyIss      := 0;

        // Get prior data
        OldItemIndex    := GetItemID( vCurID, pItemList);

        if (FieldByName('ProductBatch_ID').AsFloat <> NULL) then
         begin
         qryUpdateBatchQty.Close;
         qryUpdateBatchQty.Parameters.ParamByName('ProductBatch_ID').Value := FieldByName('ProductBatch_ID').AsInteger;
         qryUpdateBatchQty.Open;
         end;

        if OldItemIndex <> -1 then

          begin

          with pItemList[OldItemIndex] do
            begin
            vOldID      := ID;
            vOldProdID  := ProductID;
            vOldQtyReq  := OldQty;
            vOldQtyIss  := OldIssued;
            end;
          // remove old product stock data (ie user may have changed product, so remove old product data)
          // so add negative values to the db

            if vOldProdID <> vCurProdID then
//            with ADOQuery1 do
              begin

              if not vIsRequisitionManagementOnly then
                begin
                ADOQuery1.Edit;
                ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger   :=
                  ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger + (0 - vOldQtyReq);

                ADOQuery1.Post;


              end;


              vOldID          := 0;// if product has changed, don't subtract old values from new
              vOldProdID      := 0;
              vOldQtyReq      := 0;
              vOldQtyIss      := 0;
              end;

          end;


        vRequest        := vCurQtyReq - vOldQtyReq;
        vIssue          := vCurQtyIss - vOldQtyIss;
        if pMustPostItems then vPost := vCurQtyIss;


        // Check for stock total just before posting
        if not vIsRequisitionManagementOnly then
          if pMustPostItems then
           if (qryUpdateBatchQty.RecordCount > 0) then
            if qryUpdateBatchQty.FieldByName('QtyOnHand_int').AsInteger < vPost then
              begin
              vPost := qryUpdateBatchQty.FieldByName('QtyOnHand_int').AsInteger;
              Edit;
              FieldByName('QtyIssued_int').AsInteger := vPost;
              Post;
              end;

        if (qryUpdateBatchQty.RecordCount = 0) and (pMustPostItems) and  (not vIsRequisitionManagementOnly) then
         begin
         Edit;
         FieldByName('QtyIssued_int').AsInteger := 0;
         vPost := 0;
         Post;
         end;


        // if this is the requisition only module, update price
        if vIsRequisitionManagementOnly then
          if pMustPostItems then
            if ADOQuery1.FieldByName('Cost_mon').AsCurrency <> vCurrCost then
              begin
              ADOQuery1.Edit;
              ADOQuery1.FieldByName('Cost_mon').AsCurrency := vCurrCost;
              ADOQuery1.Post;
              end;

         if not vIsRequisitionManagementOnly then
          begin
          if not pMustPostItems then
            begin
            ADOQuery1.Edit;
            ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger   := ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger + vRequest;
            ADOQuery1.Post;
            end
          else
            begin
            ADOQuery1.Edit;
            ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger   := ADOQuery1.FieldByName('QtyOnRequest_int').AsInteger - vPost;
            ADOQuery1.Post;


            if (FieldByName('ProductBatch_ID').AsFloat <> NULL) then
             begin
             qryUpdateBatchQty.Edit;
             qryUpdateBatchQty.FieldByName('QtyOnHand_int').AsInteger := qryUpdateBatchQty.FieldByName('QtyOnHand_int').AsInteger - vPost;
             qryUpdateBatchQty.Post;
             if qryUpdateBatchQty.FieldByName('QtyOnHand_int').AsInteger = 0 then qryUpdateBatchQty.Delete;
             end;
          end;
          end;

        //Update the AdoQuery1 table...
        //10 November 2008
        ADOQuery1.Close;
        ADOQuery1.Parameters.ParamByName('ProductCode_ID').Value := vCurProdID;
        ADOQuery1.Open;

        if  vPost <> 0  then
          begin
          if pMustPostItems then
            begin

            vPostBy :=  RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;

            vProductDetails.QtyOnHand   := ADOQuery1.FieldByName('QtyOnHand_int').AsInteger;

            vProductDetails.NSN         := ADOQuery1.FieldByName('NSN_Str').AsString;
            vProductDetails.ECN         := ADOQuery1.FieldByName('ECN_Str').AsString;
            vProductDetails.ICN         := ADOQuery1.FieldByName('ICN_Str').AsString;

            vAuditData.SystemStore_ID   := stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat;
            vAuditData.ProductCode_ID   := vCurProdID;
            vAuditData.Demander_ID      := stpStockControlRequisition.FieldByName('Demander_ID').AsFloat;
            vAuditData.Supplier_ID      := 0;
            vAuditData.Item_ID          := FieldByName('RequisitionItems_ID').AsFloat;
            vAuditData.Type_str         := 'I';
            vAuditData.Reference_str    := stpStockControlRequisition.FieldByName('Requisition_str').AsString;
            vAuditData.DemanderSupplier_str := 'D';


            vAuditData.ProductCode_str  := ADOQuery1.FieldByName('ProductCode_Str').AsString;
            vAuditData.VoucherNo_str    := stpStockControlRequisition.FieldByName('VoucherNo_str').AsString;
            vAuditData.Date_dat         := Now;
            vAuditData.Quantity_int     := FieldByName('QtyIssued_int').AsInteger;

            if not vIsRequisitionManagementOnly then
              vAuditData.QuantityOnHand_int := ADOQuery1.FieldByName('QtyOnHand_int').AsInteger//vProductDetails.QtyOnHand - FieldByName('QtyIssued_int').AsInteger
              else
              vAuditData.QuantityOnHand_int := 0;

            vAuditData.User_str         := vPostBy; //stpStockControlRequisition.FieldByName('ActivatedBy_str').AsString;
            vAuditData.Value_mon        := FieldByName('ExtendedCost_mon').AsCurrency;
            vAuditData.NSN_Str          := vProductDetails.NSN;
            vAuditData.ECN_str          := vProductDetails.ECN;
            vAuditData.ICN_str          := vProductDetails.ICN;
            vAuditData.BatchNumber_str  := FieldByName('BatchNumber_str').AsString;
            vAuditData.ExpiryDate_dat   := FieldByName('Expiry_dat').AsDateTime;

            WriteAuditData(vAuditData);
            end;

          end;

        inc(j);
        vOverallProgress.CurrentProgress := j;
        Next;
        end;

      // now update stock for any deleted issues/requests remove any deleted
   { 20060222 - Replaced by UpdateProductDB.

                Had to remove this as is was causeing issues with
                transaction processing


      if not vIsRequisitionManagementOnly then
        for i:=low(pItemList) to high(pItemList) do
          with pItemList[i] do
            begin
            if (not ProdExsts) then
              begin
              if Assigned(MainDM) then
                with MainDM do
                  if (OldQty <> 0) or ( OldIssued <> 0 ) then
                    try
                    UpdateRequisition( ProductID, 0 - OldQty, 0 - OldIssued, 0);
                    except
                    end;
              end;
            inc(j);
            vOverallProgress.CurrentProgress := j;
            end;

      }

      finally
      vOverallProgress.MaxProgress := 0;
      vOverallProgress.Free;
      ADOQuery1.Active := False;

      First;
      end;
  end; (*..............................................................*)(*end*)(*...........................................*)


  procedure PostThisRequisition(pItems : TADOStoredProc);
  begin

  with pItems do
    begin

    {Changed 2006-02-17
    Activate now happens later to accomodate posting/activating of record}
    if FMustPostRequisition then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('Activated_bol').AsBoolean := True;
      end;

    if State in [dsEdit, dsInsert] then Post;
    end;

  end;

  procedure UpdateProductsDB;
  var
    prvProduct, prvbatchnumber : string;
    prvExpiry :TDateTime;
  begin
//  Application.ProcessMessages;
  qryCurrentOnOrder.Open;
  qryCurrentOnOrder.Close;
  end;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  vStpProcs[0] := stpStockControlRequisition;
  vStpProcs[1] := stpStockControlRequisitionItems;
  vStpProcs[2] := stpStockControlRequisitionItemsTotals;
  vStpProcs[3] := stpStockControlRequisitionEditHistory;
  vStpProcs[4] := stpStockControlIssuedRequestedTotals;

  vStpEXEProcs[0] := stpRequisitionsItemsDELETE_NoIssues;


  // Refreshes tables
  tblRequisitionsCatalogUniqueDemanders.Close;
  tblRequisitionsCatalogUniqueDemanders.Open;
  tblGeneralProductStockDetails.Close;
  tblGeneralProductStockDetails.Open;
  stpSystemWharehouse.Close;
  stpSystemWharehouse.Open;

  // used in the sub procedures  can possibly be gotten rid of.
  vIsRequisitionManagementOnly := MainDM.IsRequisitionManagementOnly;


  with ADORequisitionConnection do
    try

    // Records whether to keep this requisition if user cancels when adding
    vAddedRecord := False;

    if pReq = 0 then
      with vStpProcs[0] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('RequisitionID').Value := pReq;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;        // has to be done this way. cannot close a table and hold the transaction.
        Append;
        Post;
        pReq := FieldByName('Requisition_ID').AsFloat;
        vAddedRecord := True;
        Close;
        end;

    for i := Low(vStpProcs) to high(vStpProcs) do
      with vStpProcs[i] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('RequisitionID').Value := pReq;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;
        end;


    // This just opens and closes the demanders table.  Refreshs list for this req
    UpdateDemanderUsers;
    LoadSuppliers;
       // Built in procedure which collects curent list of items
    LoadItemList( vStpProcs[1], FItemList );

    // Return result?
    Result    := pReq;

    vReqEdit  := TRequisitionEditor.Create;

      try
      // if this is a posted requisition.  This is checked for in the stored procedure
      vWasPosted        := vStpProcs[0].FieldByName('Activated_bol').AsBoolean;
      gWasPosted        := vWasPosted;

      // This is new,  locks a requisition for sole use by the requesting user
      // if someone else is using this record, this user can still open the req,
      // but only for viewing purposes.
      RequisitionLockForEditing;


      // Load the requisition on screen.
      vSaveOrDelete     := vReqEdit.RequestStock; // Brings up the drill down edit for requisitions

      Application.ProcessMessages; // Helps update screen

      ADORequisitionConnection.BeginTrans;

      vCurrentPosting   := FMustPostRequisition;
      UpdateDemanderBudget(vStpProcs[0].FieldByName('Demander_ID').AsFloat);

      if vSaveOrDelete then
        begin

        try

        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            try
            if State in [dsEdit, dsInsert] then Post;
            except
              on E:Exception do MessageDlg(E.Message, mtInformation, [mbOK], 0);
            end;
        //
        if not vCurrentPosting then UpdateItemDB( vStpProcs[1], FItemList);
        //
        if not vWasPosted then
          if vCurrentPosting then
            begin
            for i := low(vStpEXEProcs) to high(vStpEXEProcs) do
              with vStpEXEProcs[i] do
                begin
                Parameters.ParamByName('RequisitionID').Value    := pReq;
                Prepared := True;
                  try
                  ExecProc;
                  except
                  end;
                end;
            UpdateItemDB( vStpProcs[1], FItemList, True); 
            end;
        //
        UpdateRequisitionSubTotals;
        PostThisRequisition(vStpProcs[0]);
        ADORequisitionConnection.CommitTrans;


        except
          on E:Exception do
            begin
            ADORequisitionConnection.RollbackTrans;
            MessageDlg(E.Message, mtInformation, [mbOK], 0);
            end;
        end;

        UpdateProductsDB;
        RequisitionUnlockForEditing; // do this outside the transaction.
        end else //NOT vSaveOrDelete

        begin
        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            if State in [dsEdit, dsInsert] then Cancel;
        ADORequisitionConnection.RollbackTrans;
        RequisitionUnlockForEditing; // do this outside the transaction.

        if vAddedRecord then                                                    // because this was outside transaction, delete here
          with vStpProcs[0] do
            if FieldByName('Requisition_ID').AsFloat = pReq then
              Delete;
        end;


      finally
      vReqEdit.Free;
      end;

    finally

//    if InTransaction then RollBackTrans;                                   // Don't leave the database in an unknown state

    for i := low(vStpProcs) to high(vStpProcs) do
      vStpProcs[i].Close;
    end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.EditReq(pIssues:Boolean); (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:EditReq--------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :string;
  vContinue :boolean;

const
  ErrMsg =  'No Demanders available.'#13'Please add or activate at least one Demander'#13'OR'#13 +
            'Check with the system administrator';

begin (*.............................................................*)(*begin*)(*...........................................*)

  vContinue := True;

  LoadSuppliers;

   with qryRequisitionsCatalog do
    try
    DisableControls;
    vCurrRec := FieldByName('Requisition_ID').AsString;

    if not FieldByName('Activated_bol').AsBoolean then
      if not CanAddRequisition then
        vContinue := False;

    if vContinue then
      begin
      DrillRequisition(GetCurrRequisitionID, pIssues);                            // pIssues display.  True shows issues else requests (OLD)
      Requery;
        try
        Locate('Requisition_ID', vCurrRec, []);
        except
        end;
      end else
      MessageDlg(ErrMsg,mtError,[mbOK],0);

    finally
    EnableControls;
    end;

end; (*................................................................*)(*end*)(*...........................................*)


function TRequisitionDM.GetAccessLevel(vSecurityItem: double): integer; (*::::*)(*===========================================*)
                                                                                (*function:GetAccessLevel--------------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)


  {$IFDEF RXSTOREBUILD}
  Result := USER_NONE;
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      Result := GetUserRights(SYSTEM_RECEIPTS, vSecurityItem);
  {$ELSE}
  Result := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_STORE_REQUISITION, vSecurityItem)
  {$ENDIF}

end; (*................................................................*)(*end*)(*...........................................*)


function TRequisitionDM.GetCurrDemanderID: double; (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrDemanderID-----------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with qryRequisitionsCatalog do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('Demander_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)


function TRequisitionDM.GetCurrentAccess:integer;

var (*.................................................................*)(*var*)(*...........................................*)
  vCurDemander  :double;                                                        // Security is based on demander access.

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with stpStockControlRequisition do
    vCurDemander := FieldByName('Demander_ID').AsFloat;                         // Get the demander ID
  Result := GetAccessLevel(vCurDemander);

end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.GetCurrProductID: double; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrProductID------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with stpStockControlRequisitionItems do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('ProductCode_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.GetCurrRequisitionID: double; (*::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrRequisitionID--------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with qryRequisitionsCatalog do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('Requisition_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.GetEditDemanderID: double; (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetEditDemanderID-----------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  Result := 0;
  with stpStockControlRequisition do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('Demander_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.GetEditRequisitionID: double; (*::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrRequisitionID--------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with stpStockControlRequisition do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('Requisition_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.MarkAllItemsAsComplete(pFrom:integer);
var
  pID :double;
  CurRec :TBookMark;


begin

  case pFrom of
    0:
      with stpRequisitionMarkAsComplete do
        begin
        pID := qryRequisitionsCatalog.FieldByName('Requisition_ID').AsFloat;
        Parameters.ParamByName('ReqID').Value := pID;                         // All stored procs have same param name
        Prepared := True;                                                       // Need to prepare for the qry to return result set
        ExecProc;                                                                   // has to be done this way. cannot close a table and hold the transaction.

        if not (qryRequisitionsCatalog.State in [dsEdit, dsInsert]) then qryRequisitionsCatalog.Edit;
        qryRequisitionsCatalog.FieldByName('ItemsComplete_bol').AsBoolean :=  True;
        qryRequisitionsCatalog.Post;
        end;

    1:
      with stpStockControlRequisitionItems do
        try
        DisableControls;
        CurRec := GetBookMark;

        pID := qryRequisitionsCatalog.FieldByName('Requisition_ID').AsFloat;
        stpRequisitionMarkAsComplete.Parameters.ParamByName('ReqID').Value := pID;                         // All stored procs have same param name
        stpRequisitionMarkAsComplete.Prepared := True;                                                       // Need to prepare for the qry to return result set
        stpRequisitionMarkAsComplete.ExecProc;                                                                   // has to be done this way. cannot close a table and hold the transaction.

        Close;
        Open;

        try
          if BookMarkValid(CurRec) then GotoBookMark(CurRec)
        except

        end;
        finally
        FreeBookMark(CurRec);
        EnableControls;
        end;
      end;

end;

function TRequisitionDM.Product_ItemChange( pPostItem :boolean):boolean; (*::::::::START:*)(*===========================================*)
                                                                                (*function:GetProd---------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
                                                                   (*11.1.2003*)(* Edit::Deane Putzier                       *)
                                                                                // (A) Called from detail form to change a single
                                                                                // product from one to another
var (*.................................................................*)(*var*)(*...........................................*)

  vProductSelector : TProductSelector;
  vCurReqItem, vCurReq, vCurProduct, vNewProduct, vCurrRec :Double;
  vCurReqAmnt, vCurIssAmnt :integer;
  vsStatus, vsProduct, vsProductOld, vsDescription :string;
  s :string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := False;
  vProductSelector := TProductSelector.Create;

  with stpStockControlRequisitionItems, vProductSelector do
    if Active then
      if RecordCount > 0 then
        try
        DisableControls;
        vCurProduct   := FieldByName('ProductCode_ID').AsFloat;
        vsProductOld  := FieldByName('Description_str').AsString;
        vCurReqAmnt   := FieldByName('QtyOrdered_int').AsInteger;
        vCurIssAmnt   := FieldByName('QtyIssued_int').AsInteger;
        vCurReqItem   := FieldByName('RequisitionItems_ID').AsFloat;
        vCurReq       := FieldByName('Requisition_ID').AsFloat;
        vNewProduct   := Product_Change(vCurProduct);

        if vCurProduct <> vNewProduct then
          if not Locate('ProductCode_ID;Requisition_ID', VarArrayOf([vNewProduct, vCurReq]), []) then
            try
            // ****** DELeTE
            DeleteReqItem(vCurReqItem);
//            Delete;                                                               // Delete existing item.
            AddRequisitionItem(vCurReq, vNewProduct, 0, 0, vCurReqAmnt, vCurIssAmnt );
            Close;
            Open;
            Result := vNewProduct <> 0;
            Locate('ProductCode_ID', vNewProduct, []);

            vsStatus      := HST_CHG;
            vsProduct     := FieldByName('Description_str').AsString;
            vsDescription := 'Changed product type';
            s             := ': ';
            AddEditHistory(vsStatus, 'From ' + vsProduct + ' to ' + vsProductOld + s + vsDescription, ADD_ITEM);

            except
            end
            else
            MessageDlg('Product already exists in item list.', mtWarning,[mbOk],0)

        finally
        EnableControls;
        Free;
        end;


end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.qryRequisitionsCatalogFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);

var (*.................................................................*)(*var*)(*...........................................*)
  vCurDemander  :double;                                                        // Security is based on demander access.

begin (*.............................................................*)(*begin*)(*...........................................*)
                                                                                // Main grid table security filter.
  with Dataset do
    vCurDemander := FieldByName('Demander_ID').AsFloat;                         // Get the demander ID
  Accept := GetAccessLevel(vCurDemander) > USER_NONE;                           // Only show if the user has access
//  vCurDemander := 0;

end;

procedure TRequisitionDM.SetDateParams(DateStart, DateEnd:
                  TDateTime;OpenTable : boolean);

begin
  with qryRequisitionsCatalog do
    begin
    FDateSt   := DateStart;
    FDateEnd  := DateEnd;
    Close;
    Parameters.ParamByName('Startdate').Value   := DateStart;
    Parameters.ParamByName('Enddate').Value     := DateEnd;
    Prepared := True;
    if OpenTable then Open;
    end;
end;

function TRequisitionDM.SetDocumentPrintName(const pType:integer):String; (*START:*)(*===========================================*)
                                                                                (*function:SetDocumentPrintName--------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i :integer;
  vCodeStr,vNoStr,vDemStr, vDraft :string;
  vReqID    :double;
  vReport   :TADOStoredProc;


const                                                                  (*const*)(*...........................................*)
  NDOCNAME = 'RxSolution - [%s Requisition No:%s from (%s)-%s]';

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  if pType < 2 then
    with qryRequisitionsCatalog do
      if Active then
        begin
        vCodeStr  := FieldByName('Code_Str').AsString;
        vNoStr    := FieldByName('Requisition_str').AsString;
        vDemStr   := FieldByName('Name_str').AsString;
        vReqID    := FieldByName('Requisition_ID').AsFloat;
        case pType of
          0: begin vDraft := ''; vReport := qryRequisitionsReport; end;
          1: begin vDraft := 'DRAFT '; vReport := qryRequisitionsReportPicklist; end;
          -1: begin vDraft := ''; vReport := qryRequisitionsReport_byDescrip; end;
          end;
        Result    := Format(NDOCNAME, [vDraft, vNoStr, vCodeStr, vDemStr]);
        AddEditHistory(HST_PRN, Result, ADD_REQ);
        end;

  if pType > 1 then
    with stpStockControlRequisition do
      if Active then
        begin
        vCodeStr  := FieldByName('Code_Str').AsString;
        vNoStr    := FieldByName('Requisition_str').AsString;
        vDemStr   := FieldByName('Demander_Str').AsString;
        vReqID    := FieldByName('Requisition_ID').AsFloat;
        case pType of
          2: begin vDraft := ''; vReport := qryRequisitionsReport; end;
          3: begin vDraft := ''; vReport := qryRequisitionsReport_byDescrip; end;
          end;
        Result    := Format(NDOCNAME, [vDraft, vNoStr, vCodeStr, vDemStr]);
        AddEditHistory(HST_PRN, Result, ADD_REQ);
        end;



  with vReport do
    begin
    Close;
//    Prepared := False;
    Parameters.ParamByName('@Requisition_ID').Value := vReqID;    //sm put @
//    Prepared := True;
    Open;
    end;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.SetRequisitionNumber; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetRequisitionNumber-------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  if Assigned(MainDM) then
    with stpStockControlRequisition, MainDM do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('Requisition_str').AsString   := GetNextVoucherNumber( vFetchSuccess, 1, FRM_REQUISITION);
      Post;
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.SortPrintdata(vSortType:integer);
begin

end;

procedure TRequisitionDM.stpStockControlRequisitionBeforePost(
  DataSet: TDataSet);

var

  prvDemanderID         : string;
  prvDemanderName       : string;
  prvAccountID         : string;
  prvAccountName       : string;

  vsUserStr :string;
  vdUserID  :double;

  vADOTemp01 :TADOStoredProc;
  vADOTemp02 : TADOTable;
  vADOTemp03 :TADOQuery;
  vAllItemComplete :boolean;


begin

  vADOTemp01  := stpStockControlRequisitionItems;
  vADOTemp02  := tblRequisitionsCatalogUniqueDemanders;
  vADOTemp03  := stpSystemWharehouse;

      {$IFDEF RXSTOREBUILD}
      vsUserStr := SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
      vdUserID  := SystemSecurityDM.UserID;
      {$ELSE}
      with RxSolutionFrm.Security.User do
        begin
        vdUserID    :=  UserNumID.Value;
        vsUserStr   :=  LastName.Value + ', ' + FirstName.Value;
        end;
      {$ENDIF}

  if vADOTemp01.Active then
    DataSet.FieldByName('ItemsNo_int').AsInteger :=
      vADOTemp01.RecordCount;

  with stpStockControlRequisitionItemsComplete do
    begin
    Close;
    Parameters.ParamByName('ReqID').Value := DataSet.FieldByName('Requisition_ID').AsFloat;
    Prepared := True;
    Open;
    vAllItemComplete := not (RecordCount > 0);
    Close;
    end;


  with Dataset do
    begin

    FieldByName('ItemsComplete_bol').AsBoolean :=  vAllItemComplete;

    if FieldByName('Activated_bol').AsBoolean then
      begin
      if FieldByName('ActivatedBy_str').IsNull then
        begin
        FieldByName('ActivatedBy_str').AsString   := vsUserStr;
        FieldByName('Activated_dat').AsDateTime   := Date;
        end;
      end else
      begin
      FieldByName('LastUpdate_dat').AsDateTime  := Now;
      FieldByName('LastUpdateBy_str').AsString  := vsUserStr;
      FieldByName('LastUpdateBy_dbl').AsFloat   := vdUserID;
      end;

    prvDemanderID   := FieldByName('Demander_ID').AsString;
    prvDemanderName := VarToStrDef(vADOTemp02.Lookup('Demander_ID', prvDemanderID, 'Name_str' ), '');
    prvDemanderName := prvDemanderName + ' [' + VarToStrDef(vADOTemp02.Lookup('Demander_ID', prvDemanderID, 'code_str' ), '') + ']';
    FieldByName('Demander_Str').AsString      := Trim(prvDemanderName);

    prvAccountID    := FieldByName('SystemStore_ID').AsString;
    prvAccountName  := Trim(prvAccountName) + VarToStrDef(vADOTemp03.Lookup('SystemAccount_ID', prvAccountID, 'Account_str' ), '') + ' ';
    prvAccountName  := Trim(prvAccountName) + ' ' + VarToStrDef(vADOTemp03.Lookup('SystemAccount_ID', prvAccountID, 'AccountName_str' ), '');


    FieldByName('SystemStore_str').AsString      := Trim(prvAccountName);

    end;

end;

procedure TRequisitionDM.stpStockControlRequisitionItemsAfterDelete( (*:START:*)(*===========================================*)
  DataSet: TDataSet);                                                           (*procedure:stpStockControlRequisitionItemsAfterDelete*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  UpdateRequisitionTotalDisplay;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.stpStockControlRequisitionItemsAfterInsert(
  DataSet: TDataSet);
begin

  UpdateRequisitionTotalDisplay;

end;

procedure TRequisitionDM.stpStockControlRequisitionItemsAfterPost( (*:::START:*)(*===========================================*)
  DataSet: TDataSet);                                                           (*procedure:stpStockControlRequisitionItemsAfterPost*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin

  //LoadBatchItems;
  UpdateRequisitionTotalDisplay;
  
end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.stpStockControlRequisitionItemsBeforePost( (*::START:*)(*===========================================*)
  DataSet: TDataSet);                                                           (*procedure:stpStockControlRequisitionItemsBeforePost*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vIssued, vAuth, vOnHand, vOverride, item_id :integer;
  vsUserStr :string;
  vdUserID  :double;
  vsStatus, vsProduct, vsIss, vsOrd,  vsDescription :string;
  s :string;
  batch_qty: integer;
  batchnumber_str, expiry_dat : string;
  IsBatchItem : boolean;

  vAccount : double;

  oldRec, newRec,  product : integer;
  vPackCostIncl : double;
begin (*.............................................................*)(*begin*)(*...........................................*)



IsBatchItem := False;
vVat := 0;


if not gWasPosted then
  if FUpdateData then
    with DataSet do
      begin

 //Load the corresponding batches for each item on requisition
      LoadBatchItems;
 //Load the corresponding quantities for each batch that has been selected
      LoadBatchQty;
      if not VarIsNull(stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat) then
       begin
       vAccount := stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat;
       vVat := MainDm.GetVAT(vAccount);
       end;

      if not Varisnull(vVat) then
       FieldByName('VATUsed_dbl').AsFloat := vVat
      else
       FieldByName('VATUsed_dbl').AsFloat := 0;

      if FieldByName('QtyIssued_int').IsNull then
        FieldByName('QtyIssued_int').AsInteger := 0;
      if FieldByName('QtyOrdered_int').IsNull then
        FieldByName('QtyOrdered_int').AsInteger := 0;
      if FieldByName('PackCost_mon').IsNull then
        FieldByName('PackCost_mon').AsCurrency := 0;

      item_id := stpStockControlRequisitionItems.FieldByName('ProductCode_ID').AsInteger;

     if not MainDM.IsRequisitionManagementOnly then
      if FUsesBatchManagement then //If system set for batch/expiry management then check if bacth has been selected or not
       if (FieldByName('ProductBatch_ID').Value = NULL) and (FieldByName('QtyIssued_int').AsInteger > 0) then
        begin
        if qryProductBatch.RecordCount > 0 then
         begin
         MessageDlg('Batch has not been selected. Please select one for use.',mtWarning, [mbOK],0);
//         SelectBatch;
          RequisitionDM.AddALLBatchItems(stpStockControlRequisitionItems.FieldByName('Requisition_ID').AsInteger, item_id);
         Abort;
         end;
        end;
     //if not MainDM.IsRequisitionManagementOnly then
      if ((not FUsesBatchManagement) and (FieldByName('ProductBatch_ID').Value = NULL)) then
      begin
      if qryProductBatch.RecordCount > 0 then
       FieldByName('ProductBatch_ID').Value:= qryProductBatch.FieldByName('ProductBatch_ID').Value;
      end;


     vAuth   := FieldByName('QtyAuthorized_int').AsInteger;

{      //vOnHand := FieldByName('prd_QtyOnHand').AsInteger;                 //use the selected batch available
      if ((qryUpdateBatchQty.RecordCount > 0) and (not VarIsNull(FieldByName('ProductBatch_ID').Value))) then
       vOnHand := qryUpdateBatchQty.FieldbyName('QtyOnHand_int').AsInteger - (qryUpdateBatchQty.FieldbyName('QtyOnHold_int').AsInteger)
      else
       vOnHand := 0;
 }
      vIssued := FieldByName('QtyIssued_int').AsInteger;

      vsStatus      := HST_EDT;
      vsProduct     := FieldByName('Description_str').AsString;
      vsIss         := 'Issue ('+ IntToStr(vIssued) + ')';
      vsOrd         := 'Request (' + FieldByName('QtyOrdered_int').AsString + ')';
      vsDescription := '';
      s             := ': ';

{
      if not MainDM.IsRequisitionManagementOnly then
        if vIssued > vOnHand then
          begin
          vsStatus      := HST_ERR;
          vsIss         := vsIss + ' Over By('+ IntToStr(vIssued - vOnHand) + ')';
          vsDescription := 'Attempt to issue more than available stock!';
          if vOnHand <= 0 then
            begin
            if vIssued <= 0 then
              vIssued := vOnHand - vIssued
            else
             begin
             FieldByName('QtyIssued_int').AsInteger := 0;
             vIssued := 0;
             end;
            end
          else
           begin
           FieldByName('QtyIssued_int').AsInteger := vOnHand;
           vIssued := vOnHand;
           end;

          if IsBatchItem then
           MessageDlg('You may not issue more than available batch stock!',mtWarning, [mbOK],0)
          else
           MessageDlg('You may not issue more than available stock!',mtWarning, [mbOK],0);
          end;
 }
      // Check user level here
      if tblRequisitionsCatalogUniqueDemanders.FieldByName('OpenOrMaxDriven').AsBoolean then
        if (vIssued > vAuth) and (vAuth <= vOnHand) then
          begin
          vOverride := vIssued - vAuth;
          if GetAccessLevel(GetEditDemanderID) <= USER_USER then
            begin
            FieldByName('QtyIssued_int').AsInteger := vAuth;
            vsStatus      := HST_ERR;
            vsIss         := vsIss + ' Over By('+ IntToStr(vAuth) + ')';
            vsDescription := 'You may not issue more than you are authorised to!';
            end else
            begin
            vsStatus      := HST_OVR;
            vsIss         := vsIss + ' Over By('+ IntToStr(vOverride) + ')';
            vsDescription := 'Administrator override on authorised stock issue!';
            end;

          end;


      //Check if qty order =< qty issued, if true then make it complete for item
      if (FieldByName('QtyOrdered_int').AsInteger = FieldByName('QtyIssued_int').AsInteger) OR   //SM 08-06-06
           (FieldByName('QtyOrdered_int').AsInteger < FieldByName('QtyIssued_int').AsInteger) then
       FieldByName('Completed_bol').AsBoolean := True;                                            //SM 08-06-06

      vPackCostIncl := FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100);
            vPackCostIncl := RoundTo(vPackCostIncl, -2);
      //      vPackCostIncl :=  StrToFloat(FormatFloat('##,##0.00',RoundTo(vPackCostIncl, -2)));

      {FieldByName('ExtendedCost_mon').AsCurrency :=
        (FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100) ) * FieldByName('QtyIssued_int').AsInteger;

      FieldByName('ExtendedCostPot_mon').AsCurrency :=
        (FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100)) * FieldByName('QtyOrdered_int').AsInteger;
     }
      FieldByName('ExtendedCost_mon').AsCurrency := (vPackCostIncl) * FieldByName('QtyIssued_int').AsInteger;

      FieldByName('ExtendedCostPot_mon').AsCurrency := (vPackCostIncl) * FieldByName('QtyOrdered_int').AsInteger;
//      FieldByName('Expiry_dat').AsDateTime := UpdateLastDayMon(FieldByName('Expiry_dat').AsDateTime);


      {$IFDEF RXSTOREBUILD}
      vsUserStr := SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
      vdUserID  := SystemSecurityDM.UserID;
      {$ELSE}
      with RxSolutionFrm.Security.User do
        begin
        vdUserID    :=  UserNumID.Value;
        vsUserStr   :=  LastName.Value + ', ' + FirstName.Value;
        end;
      {$ENDIF}

      FieldByName('LastUpdate_dat').AsDateTime  := Now;
      FieldByName('LastUpdateBy_str').AsString  := vsUserStr;

      AddEditHistory(vsStatus, vsProduct + s + vsOrd + s + vsIss + s + vsDescription, ADD_ITEM);

      end;


end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.stpStockControlRequisitionItemsNewRecord(
  DataSet: TDataSet);
begin

  if FAddingItem then
    begin
    Dataset.FieldByName('Requisition_ID').AsFloat :=
      stpStockControlRequisition.FieldByName('Requisition_ID').AsFloat;
    end else
    Abort;

end;

procedure TRequisitionDM.stpStockControlRequisitionItemsQtyAuthorized_intChange(
  Sender: TField);
begin
  stpStockControlRequisitionItems.FieldByName('QtyOnOrder_int').AsInteger :=
  stpStockControlRequisitionItems.FieldByName('QtyDemanderOnHand_int').AsInteger -
  stpStockControlRequisitionItems.FieldByName('QtyAuthorized_int').AsInteger;
end;

procedure TRequisitionDM.stpStockControlRequisitionItemsQtyDemanderOnHand_intChange(
  Sender: TField);
  var

  vNewVal :integer;

begin

  if not FDoingBackOrder then
   if tblRequisitionsCatalogUniqueDemanders.FieldByName('OpenOrMaxDriven').AsBoolean then
    with stpStockControlRequisitionItems do
//    if FieldByName('QtyOrdered_int').AsInteger <> 0 then
//      if not Sender.IsNull then
        begin
        vNewVal := FieldByName('QtyAuthorized_int').AsInteger - Sender.AsInteger;
        if vNewVal < 0 then vNewVal := 0;
        FieldByName('QtyOrdered_int').AsInteger := vNewVal;
        end;

end;

procedure TRequisitionDM.stpStockControlRequisitionItemsQtyIssued_intChange(
  Sender: TField);
begin

  with stpStockControlRequisitionItems do
   FieldByName('ExtendedCost_mon').AsCurrency :=
        (FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100) ) * Sender.AsInteger;

end;

procedure TRequisitionDM.stpStockControlRequisitionNewRecord( (*::::::::START:*)(*===========================================*)
  DataSet: TDataSet);                                                           (*procedure:stpStockControlRequisitionNewRecord*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;
  vDemID        :Double;

const
  ErrMsg =  'No Demanders available.'#13'Please add or activate at least one Demander'#13'OR'#13 +
            'Check with the system administrator';

begin (*.............................................................*)(*begin*)(*...........................................*)


  with tblRequisitionsCatalogUniqueDemanders do
    if Active then
      if RecordCount > 0 then
        begin
        First;

       //Bug 169 * remove default Demanders 16/09/2010
       {* if SYSTEMDEM_DEF = 0 then
          vDemID    := FieldByName('Demander_ID').AsFloat
          else
          vDemID    := SYSTEMDEM_DEF;   *}
    
        //Default the user demander here...

        DataSet.FieldByName('Demander_ID').AsFloat        := vDemID;
        if IsDemanderValid(RxSolutionFrm.Security.User.UserDemanderID.Value) then
         DataSet.FieldByName('Demander_ID').AsFloat        := RxSolutionFrm.Security.User.UserDemanderID.Value;

        DataSet.FieldByName('Activated_bol').AsBoolean    := False;
        DataSet.FieldByName('Charges_mon').AsCurrency     := 0;
        DataSet.FieldByName('Requisition_dat').AsDateTime := Date;
        DataSet.FieldByName('SystemStore_ID').AsFloat     := SYSTEMSTORE_DEF;
        DataSet.FieldByName('Requisition_str').AsString   := MainDM.GetNextVoucherNumber(vFetchSuccess, 1, FRM_REQUISITION);

        end else
        begin
        MessageDlg(ErrMsg,mtWarning,[mbOK],0);
        Abort;
        end;


end; (*................................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.tblRequisitionsCatalogUniqueDemandersFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var (*.................................................................*)(*var*)(*...........................................*)
  vCurDemander  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)
                                                                                // Demander display list security filter.
  with Dataset do
    vCurDemander := FieldByName('Demander_ID').AsFloat;
  Accept := GetAccessLevel(vCurDemander) > USER_NONE;

end;

procedure TRequisitionDM.UpdateDemanderBudget(DemanderID:double);
var
  YTDE  :currency;
begin
  with stpGetDemanderYTDE do
    begin
    Close;
    Parameters.ParamByName('@DemanderID').Value := DemanderID;
    Prepared := True;
    Open;
    if RecordCount > 0 then
      YTDE := FieldByName('SumOfExtendedCost_mon').AsCurrency
    else
      YTDE := 0;
    Close;
    end;
  with stpSetDemanderBudgetBalance do
    begin
    Parameters.ParamByName('@DemanderID').Value := DemanderID;
    Parameters.ParamByName('@DemanderYTDE').Value := YTDE;
    Prepared := True;
    ExecProc;
    end;    // with


  // TODO -cMM: TRequisitionDM.UpdateDemanderBudget default body inserted
end;

procedure TRequisitionDM.UpdateDemanderUsers;
begin

  stpRequisitionDemandersUsers.Close;
  stpRequisitionDemandersUsers.Open;
end;

procedure TRequisitionDM.UpdateRequisitionSubTotals;
begin (*...........................................................*)(*begin*)(*...........................................*)

  with stpStockControlRequisition do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;

    FieldByName('TotalCost_mon').AsFloat :=
      stpStockControlRequisitionItemsTotals.FieldByName('SumOfExtendedCost_mon').AsFloat +
      FieldByName('Charges_mon').AsFloat;

    FieldByName('ItemsNo_int').AsInteger :=
//      stpStockControlRequisitionItemsTotals.FieldByName('CountOfRequisitionItems_ID').AsInteger;
      stpStockControlRequisitionItems.RecordCount;

//    Post;
    end;

end; (*..............................................................*)(*end*)(*...........................................*)

procedure TRequisitionDM.UpdateRequisitionTotalDisplay; (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:UpdateRequisitionTotalDisplay----*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FUpdateData then
    with stpStockControlRequisitionItemsTotals do
      if Active then
        begin
        Close;
        Open;
        UpdateRequisitionSubTotals;
        end;

end; (*................................................................*)(*end*)(*...........................................*)

function TRequisitionDM.ValidatePosting:Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Ordered By && Date' +
          #13 + 'Authorised By && Date' +
   //       #13 + 'Received By && Date' +
          #13 + 'Issued By && Date';
  WMSG = 'If you post this record, you may no longer edit it once you have saved && closed';

begin
  Result := True;
  with stpStockControlRequisition do
    if Active then
      if not FieldByName('Activated_bol').AsBoolean then
        begin
        if FieldByName('OrderedBy_str').AsString = '' then Result := False;
        if FieldByName('AuthorizedBy_str').AsString = '' then Result := False;
      //  if FieldByName('ReceivedBy_str').AsString = '' then Result := False;
        if FieldByName('IssuedBy_str').AsString = '' then Result := False;
        if FieldByName('Ordered_dat').IsNull then Result := False;
        if FieldByName('Authorized_dat').IsNull then Result := False;
      //  if FieldByName('Received_dat').IsNull then Result := False;
        if FieldByName('Issued_dat').IsNull then Result := False;

        if not Result then
          begin
          if not (State in [dsEdit, dsInsert]) then Edit;
          FieldByName('Activated_bol').AsBoolean := False;
          Post;
          MessageDlg(EMSG, mtWarning, [mbOK],0);
          end;
        end else
        Result := False;


end;

(*---------------------------------------------------------------------------------------------------------------------------*)


procedure TRequisitionDM.Timer1Timer(Sender: TObject);
begin
  pCounter := pCounter -1;         
end;

function TRequisitionDM.WriteAuditData(pAuditData:RProductAuditDetails):
    Boolean;
begin

  with stpAuditAPPEND do
    begin
    Parameters.ParamByName('SystemStoreID').Value     := pAuditData.SystemStore_ID; //OK
    Parameters.ParamByName('ProductCodeID').Value     := pAuditData.ProductCode_ID; //ok
    Parameters.ParamByName('DemanderID').Value        := pAuditData.Demander_ID;    //ok
    Parameters.ParamByName('SupplierID').Value        := pAuditData.Supplier_ID;    //ok
    Parameters.ParamByName('ItemID').Value            := pAuditData.Item_ID;       //ok
    Parameters.ParamByName('Type').Value              := pAuditData.Type_str;      //ok
    Parameters.ParamByName('Reference').Value         := pAuditData.Reference_str; //ok
    Parameters.ParamByName('DemanderSupplier').Value  := pAuditData.DemanderSupplier_str; //ok
    Parameters.ParamByName('ProductCode').Value       := pAuditData.ProductCode_str; //ok
    Parameters.ParamByName('VoucherNo').Value         := pAuditData.VoucherNo_str; //ok
    Parameters.ParamByName('Date').Value              := pAuditData.Date_dat;       //ok
    Parameters.ParamByName('Quantity').Value          := pAuditData.Quantity_int;   //ok
    Parameters.ParamByName('Value').Value             := pAuditData.Value_mon;//ok
    Parameters.ParamByName('QuantityOnHand').Value    := pAuditData.QuantityOnHand_int; //ok
    Parameters.ParamByName('User').Value              := pAuditData.User_str;
    Parameters.ParamByName('NSN').Value               := pAuditData.NSN_Str;
    Parameters.ParamByName('ICN').Value               := pAuditData.ICN_str;
    Parameters.ParamByName('ECN').Value               := pAuditData.ECN_str;
    Parameters.ParamByName('BatchNumber_str').Value   := pAuditData.BatchNumber_str;
    Parameters.ParamByName('ExpiryDate_dat').Value    := pAuditData.ExpiryDate_dat;
    ExecProc;
    end;

end;

procedure TRequisitionDM.ADORequisitionConnectionWillExecute(
  Connection: TADOConnection; var CommandText: WideString;
  var CursorType: TCursorType; var LockType: TADOLockType;
  var CommandType: TCommandType; var ExecuteOptions: TExecuteOptions;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin

if RecordSet <> nil then
   begin
     Recordset.Properties['Preserve on commit'].Value := True;
     Recordset.Properties['Preserve on abort'].Value := True;
   end;

end;

function TRequisitionDM.IsRequisitionAvailable: Boolean;
begin
  Result := FIsRequisitionAvailable;
end;

procedure TRequisitionDM.MustPost(prmYesNo: Boolean = True);
begin
  FMustPostRequisition := prmYesNo;
end;

procedure TRequisitionDM.Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField :
    String);
var
  curRecord :String;
begin

  try
  with DataSet do
    try
    DisableControls;
    curRecord := FieldByName(PrimaryKeyField).AsString;
    Close;
    Open;
    Last;
    while not BOF do
      begin
      if FieldByName(PrimaryKeyField).AsString = curRecord then Break;
      Prior;
      end;
    finally
    EnableControls;
    end;
  except
  end;

end;

procedure TRequisitionDM.RequisitionLockForEditing;
begin

  {$IFDEF RXSTOREBUILD}
  prvUName    := SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
  prvUID      := SystemSecurityDM.UserID;
  {$ELSE}
  prvUName    := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                 RxSolutionFrm.Security.User.FirstName.ToString;
  prvUID      := RxSolutionFrm.Security.User.UserNumID.Value;
  {$ENDIF}

  FIsEditing  := True;

  with stpStockControlRequisition do
    if not FieldByName('CheckedOut_bol').AsBoolean then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('CheckedOutBy_ID').AsFloat      := prvUID;
      FieldByName('CheckedOutName_str').AsString  := prvUName;
      FieldByName('CheckedOut_bol').AsBoolean     := True;
      FieldByName('CheckedOut_dat').AsDateTime    := Now;
      if State in [dsEdit, dsInsert] then Post;
      FRequisitionLockedOnEntry                   := False;
      FIsRequisitionAvailable                     := True;  // We are locking it
      end
      else
      begin
      FRequisitionLockedOnEntry                   := True;
      FIsRequisitionAvailable                     := False; //Someone else has locked it
      end;

end;

procedure TRequisitionDM.RequisitionUnlockForEditing;
var
  prvUID    : double;

begin

  {$IFDEF RXSTOREBUILD}
  prvUID      := SystemSecurityDM.UserID;
  {$ELSE}
  prvUID      := RxSolutionFrm.Security.User.UserNumID.Value;
  {$ENDIF}

  with stpStockControlRequisition do
    if not FRequisitionLockedOnEntry then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('CheckedOutBy_ID').AsFloat      := 0;
      FieldByName('CheckedOutName_str').AsString  := '';
      FieldByName('CheckedOut_bol').AsBoolean     := False;
      if State in [dsEdit, dsInsert] then Post;
      end;

  FIsEditing  := False;

end;

procedure TRequisitionDM.tmrRefresherTimer(Sender: TObject);
begin
  Refresh_DataSet(qryRequisitionsCatalog, 'Requisition_ID' );
end;

procedure TRequisitionDM.SelectBatchItemToAdd;
var
 item_id, req_id  : Integer;
 batchnumselect : String;
begin
 item_id := stpStockControlRequisitionItems.FieldByName('ProductCode_ID').AsInteger;
 req_id  := stpStockControlRequisitionItems.FieldByName('Requisition_ID').AsInteger;

 if stpStockControlRequisitionItems.State in [dsEdit, dsInsert] then
  stpStockControlRequisitionItems.Post;

 addBatchItem(req_id, item_id);

 stpStockControlRequisitionItems.Close; // just refresh grid
 stpStockControlRequisitionItems.Open;  // just refresh grid
 //Locate new row... but it just looks at the first... not the last
 stpStockControlRequisitionItems.Locate('ProductCode_ID', item_id, []);

end;

procedure TRequisitionDM.SelectBatch;
var
 ProductCodeID : integer;
begin
 ProductCodeID := stpStockControlRequisitionItems.fieldByName('ProductCode_ID').AsInteger;



 
  //Lock the current Product
  MainDm.LockProductforIssuing(ProductCodeID);
  ProductBatchSelectFrm := TProductBatchSelectFrm.Create(Application);
  ProductBatchSelectFrm.ShowModal;
  ProductBatchSelectFrm.Free;
  //UnLock the current Product
  MainDm.UnLockProduct(ProductCodeID);


end;

procedure TRequisitionDM.RequisitionUnlock;    //SM 28 Jan
begin

  with stpStockControlRequisition do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('CheckedOutBy_ID').AsFloat      := 0;
      FieldByName('CheckedOutName_str').AsString  := '';
      FieldByName('CheckedOut_bol').AsBoolean     := False;
      if State in [dsEdit, dsInsert] then Post;
      end;
    
end;

Procedure TRequisitionDM.LoadBatchItems;    //Load batch items and re-calculated the Qty on hold
var
 item_id : integer;
begin
 item_id := stpStockControlRequisitionItems.FieldByName('ProductCode_ID').AsInteger;
 with qryProductBatch do
  begin
  Close;
  Parameters.ParamByName('ProductCode_ID').Value := item_id;
  Open;
  First;
  while not Eof do
   begin
   qryBatchOnHold.Close;
   qryBatchOnHold.Parameters.ParamByName('ProductBatch_ID').Value := FieldByName('ProductBatch_ID').AsInteger;
   qryBatchOnHold.Open;
   Edit;
   if qryBatchOnHold.RecordCount > 0 then
    FieldByName('QtyOnHold_int').AsInteger := qryBatchOnHold.FieldByName('SumQtyOrdered_int').AsInteger
   else
    FieldByName('QtyOnHold_int').AsInteger := 0;

   if FieldByName('QtyOnHold_int').AsInteger < 0 then
    FieldByName('QtyOnHold_int').AsInteger := 0;
   Post;
   Next;
   end;     //end of while loop
  end;
end;

procedure TRequisitionDM.LoadBatchQty;
var
 vBatchID : integer;
begin
 vBatchID := stpStockControlRequisitionItems.FieldByName('ProductBatch_ID').AsInteger;

 if (not VarIsNull(vBatchID)) then
 with qryUpdateBatchQty do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := vBatchID;
  Open;
  end;

end;

function TRequisitionDM.LoadSqlStatement(pType : integer): boolean;
var
 sql_str : string;
 vReqID : integer;
begin

 if pType < 2 then
  with qryRequisitionsCatalog do
   begin
   vReqID := FieldByName('Requisition_ID').AsInteger;
   end;

 if pType > 1 then
  with stpStockControlRequisition do
   begin
   vReqID := FieldByName('Requisition_ID').AsInteger;
   end;

 
 with qrySqlStatements do
  begin
  Close;
  Open;
  if recordCount > 0 then
   sql_str := qrySqlStatements.FieldByName('Requisition_01').AsString;
  end;

 with stp_CustomReport do
  begin
  if (qrySqlStatements.RecordCount > 0) then
   if (not VarISNull(sql_str)) and (FileExists(ExtractFilePath(Application.ExeName) + 'tmp\Requisition.rtm')) then
    begin
    Active := False;
    SQL.Clear;
    SQL.Add(sql_str);
    ParamCheck := True;
    Parameters.ParamByName('@RequisitionID').Value := vReqID;
    Active := True;
    Result := True;
    end
  else
   Result := False;
  end;
end;

procedure TRequisitionDM.Calc_SellingPrice;
begin
 //
end;

procedure TRequisitionDM.UpdateItemsVat;
var
 vVat : double;
 vAccount : double;
 pID : double;
 CurRec :TBookMark;
begin

 vVat := 0;

 if ((stpStockControlRequisition.FieldByName('SystemStore_ID').IsNull) or (stpStockControlRequisition.FieldByName('SystemStore_ID').AsInteger = 0)) then
        begin
        MessageDlg('Please select an account before running this procedure', mtWarning, [mbOK], 0);
        Abort;
        end;

 if not VarIsNull(stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat) then
       begin
       vAccount := stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat;
       vVat := MainDm.GetVAT(vAccount);
       end;

 with stpStockControlRequisitionItems do
  try
  DisableControls;
  CurRec := GetBookMark;

  pID := qryRequisitionsCatalog.FieldByName('Requisition_ID').AsFloat;
  stp_UpdateItemsVat.Parameters.ParamByName('@ReqID').Value := pID;                           // All stored procs have same param name
  stp_UpdateItemsVat.Parameters.ParamByName('@VAT').Value := vVat;
  stp_UpdateItemsVat.Prepared := True;                                                       // Need to prepare for the qry to return result set
  stp_UpdateItemsVat.ExecProc;                                                               // has to be done this way. cannot close a table and hold the transaction.

  Close;
  Open;
  AddEditHistory(HST_LEV, 'VAT Updated on items', ADD_REQ);
  try
  if BookMarkValid(CurRec) then GotoBookMark(CurRec)
  except

  end;
  finally
  FreeBookMark(CurRec);
  EnableControls;
end;
end;

procedure TRequisitionDM.stpStockControlRequisitionSystemStore_IDChange(
  Sender: TField);
begin
// UpdateItemsVat;
end;

procedure TRequisitionDM.stpStockControlRequisitionItemsAfterOpen(
  DataSet: TDataSet);
begin

  with qryTotalQtyonHand do
  begin
  Close;
  Open;
  end;

end;

procedure TRequisitionDM.AddBatchItemsToList(pReqID, pProductID  :double;
                                            pBatchID            :integer;
                                            pAuthItems          :integer;
                                            pQtyOrdered         :integer;
                                            pExpiry             :TDateTime;
                                            pBatch              :string );

begin
//Use a stored Procedure to add all batches related to that Product
//Check that the original is kept
with stp_ADDProductBatches do
  begin
  Prepared := False;
  Parameters.ParamByName('RequisitionID').Value       := pReqID;
  Parameters.ParamByName('QtyAuthorizedint').Value    := pAuthItems;
  Parameters.ParamByName('LastUpdatedat').Value       := Now;
  Parameters.ParamByName('QtyOrderedint').Value       := pQtyOrdered;
  Parameters.ParamByName('QtyIssuedint').Value        := 0;
  Parameters.ParamByName('QtyDemanderOnHandint').Value:= -1;
  Parameters.ParamByName('QtyOnBackOrderint').Value   := 0;
  Parameters.ParamByName('ProductCodeID').Value       := pProductID;
  Parameters.ParamByName('BatchID').Value             := pBatchID;

  Execute;
  end;
end;

procedure TRequisitionDM.AddALLBatchItems(Req_ID, Item_ID : Integer);
begin
 if MainDm.IsProductLocked(Item_ID) then
  MessageDlg('This product has been locked by another user.', mtWarning , [mbOK], 0)
 else
  begin
  DoTest;
 //Refresh the DB
 //Now show the batch items only

  with tmpItems do
  begin
  Close;
  Parameters.ParamByName('RequisitionID').Value := Req_ID;
  Parameters.ParamByName('ProductCodeID').Value := Item_ID;
  Open;
  First;
  end;

 if tmpItems.RecordCount > 0 then
  SelectBatch;
 stpStockControlRequisitionItems.Close;
 stpStockControlRequisitionItems.Open;
 stpStockControlRequisitionItems.Locate('ProductCode_ID', Item_ID, []);

 UpdateRequisitionTotalDisplay;
 end;

end;

procedure TRequisitionDM.DoTest;
var
 vProductBatchID, vItemID, vReqID, vReqItemID : integer;
 vcount         : integer;
 vBatchNumber   : string;
 vExpiry        : TDateTime;
 vPrice         : Currency;
 vQtyOrdered      : integer;
 vBatchExist    : boolean;
begin
 //
 vReqID         := stpStockControlRequisitionItems.FieldByName('Requisition_ID').Value;
 vReqItemID     := stpStockControlRequisitionItems.FieldByName('RequisitionItems_ID').Value;
 vQtyOrdered    := stpStockControlRequisitionItems.FieldByName('QtyOrdered_int').Value;
 vcount         := 0;

 with qryProductBatch1 do
  begin
  //
  Close;
  Parameters.ParamByName('ProductCode_ID').Value := stpStockControlRequisitionItems.FieldByName('ProductCode_ID').Value;
  Open;
  First;
  
  
  While not Eof do
   begin
   
   vProductBatchID      := fieldByName('ProductBatch_ID').Value;
   vItemID              := fieldByName('ProductCode_ID').Value;
   vBatchNumber         := fieldByName('BatchNumber_str').AsString;
   vExpiry              := fieldByName('Expiry_dat').AsDateTime;
   vPrice               := fieldByName('Price_mon').AsCurrency;
   vBatchExist := BatchExists(vReqID, vProductBatchID);
   
   if (vcount = 0) and (not vBatchExist) and (stpStockControlRequisitionItems.FieldByName('ProductBatch_ID').IsNull) then
    begin
    stpStockControlRequisitionItems.Edit;
    stpStockControlRequisitionItems.FieldByName('ProductBatch_ID').AsInteger := vProductBatchID;
    stpStockControlRequisitionItems.FieldByName('PackCost_mon').AsCurrency := vPrice;
    //Refresh Selling price based on batch selected...
    stpStockControlRequisitionItems.FieldByName('Cal_PackCost').AsCurrency := (1+(stpStockControlRequisitionItems.FieldByName('Markup_dbl').AsFloat/100))* vPrice;

    if FUsesBatchManagement then
     begin
     stpStockControlRequisitionItems.FieldByName('Expiry_dat').AsDateTime := vExpiry;
     stpStockControlRequisitionItems.FieldByName('BatchNumber_str').AsString := vBatchNumber;
     end;
    stpStockControlRequisitionItems.Post;
    end

    else if (not vBatchExist) then
     AddBatchItemsToList(vReqID,vItemID, vProductBatchID, 0, vQtyOrdered, vExpiry, vBatchNumber);

   vcount := vcount + 1;
   Next;
   end;
  end;

end;

function TRequisitionDM.BatchExists(ReqID: integer; BatchID: integer): Boolean;
begin
 with qryFindBatch do
  begin
  Close;
  Parameters.ParamByName('RequisitionID').Value := ReqID;
  Parameters.ParamByName('ProductBatchID').Value := BatchID;
  Open;

  if FieldByName('Result').asinteger = 1 then
   Result := True
  else
   Result := False; 
  end;
end;              

procedure TRequisitionDM.tmpItemsBeforePost(DataSet: TDataSet);
var
 vOldValue, vNewValue : integer;
 vVat : double;
 vAccount : double;
 vsUserStr :string;
 vdUserID  :double;
 vsStatus, vsProduct, vsIss, vsOrd,  vsDescription, s :string;
 vIssued : integer;
 vPackCostIncl : Double;
begin
// if not (tmpItems.FieldByName('ProductBatch_ID').IsNull) then
//  LoadIssuedForThisBatchRequisition;
 vVat := 0;
 with tmpItems do
  begin
  if not VarIsNull(stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat) then
       begin
       vAccount := stpStockControlRequisition.FieldByName('SystemStore_ID').AsFloat;
       vVat := MainDm.GetVAT(vAccount);
       end;


  if not Varisnull(vVat) then
   FieldByName('VATUsed_dbl').AsFloat := vVat
  else
   FieldByName('VATUsed_dbl').AsFloat := 0;

  if FieldByName('QtyIssued_int').IsNull then
    FieldByName('QtyIssued_int').AsInteger := 0;
  if FieldByName('QtyOrdered_int').IsNull then
    FieldByName('QtyOrdered_int').AsInteger := 0;
  if FieldByName('PackCost_mon').IsNull then
    FieldByName('PackCost_mon').AsCurrency := 0;

  with RxSolutionFrm.Security.User do
    begin
    vdUserID    :=  UserNumID.Value;
    vsUserStr   :=  LastName.Value + ', ' + FirstName.Value;
    end;
 
  FieldByName('LastUpdate_dat').AsDateTime  := Now;
  FieldByName('LastUpdateBy_str').AsString  := vsUserStr;

  if  FieldByName('QtyIssued_int').AsInteger >=  FieldByName('QtyOrdered_int').AsInteger then
    FieldByName('Completed_bol').AsBoolean  := True;
    
   //check qty if valid to issue...
  if FieldByName('QtyIssued_int').AsInteger > ProductBatchSelectFrm.Available then
   begin
   ShowMessage('Cannot issue more then available stock');
   FieldByName('QtyIssued_int').AsInteger := ProductBatchSelectFrm.Available;
   end;
  {
  FieldByName('ExtendedCost_mon').AsCurrency :=
        (FieldByName('PackCost_mon').AsCurrency * (1+vVat/100)* (1+FieldByName('MarkUp_dbl').AsFloat/100) ) * FieldByName('QtyIssued_int').AsInteger;
  FieldByName('ExtendedCostPot_mon').AsCurrency :=
        (FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100) )* FieldByName('QtyOrdered_int').AsInteger;
   }
  vPackCostIncl := FieldByName('PackCost_mon').AsCurrency * (1+vVat/100) * (1+FieldByName('MarkUp_dbl').AsFloat/100);
              vPackCostIncl := RoundTo(vPackCostIncl, -2);
  //  vPackCostIncl :=  StrToFloat(FormatFloat('#,###.##',RoundTo(vPackCostIncl, -2)));

  FieldByName('ExtendedCost_mon').AsCurrency := (vPackCostIncl) * FieldByName('QtyIssued_int').AsInteger;
  FieldByName('ExtendedCostPot_mon').AsCurrency := (vPackCostIncl) * FieldByName('QtyOrdered_int').AsInteger;

  vIssued := FieldByName('QtyIssued_int').AsInteger;

  vsStatus      := HST_EDT;
  vsProduct     :=  stpStockControlRequisitionItems.FieldByName('Description_str').AsString;
  vsIss         := 'Issue ('+ IntToStr(vIssued) + ')';
  vsOrd         := 'Request (' + FieldByName('QtyOrdered_int').AsString + ')';
  vsDescription := '';
  s             := ': ';

  if FieldByName('QtyIssued_int').OldValue <> FieldByName('QtyIssued_int').NewValue then
   AddEditHistory(vsStatus, vsProduct + s + vsOrd + s + vsIss + s + vsDescription, ADD_ITEM);
  end;
end;

procedure TRequisitionDM.LoadIssuedForThisRequisition;
var
 vItemID, vReqID : integer;
begin
 vReqID         := stpStockControlRequisitionItems.FieldByName('Requisition_ID').Value;
 vItemID        := stpStockControlRequisitionItems.FieldByName('ProductCode_ID').Value;

 with qryOnHoldOnRequisition do
  begin
  Close;
  Parameters.ParamByName('RequisitionID').Value := vReqID;
  Parameters.ParamByName('ProductCodeID').Value := vItemID;
  Open;
  end;

end;

procedure TRequisitionDM.tmpItemsCalcFields(DataSet: TDataSet);
var
 vOldValue, vNewValue, vCurValue : integer;
begin
end;

procedure TRequisitionDM.LoadIssuedForThisBatchRequisition;
var
 vBatch, vReqID : integer;
begin

  
end;

function TRequisitionDM.TotalOnHoldBatch: integer;
var
 OnHoldRequisition, OnHoldReturn: integer;
begin
//
 OnHoldRequisition := 0;
 OnHoldReturn := 0;

 with qryBatchOnHoldTotal do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := tmpItemsProductBatch_ID.Value;
  Open;
  if RecordCount > 0 then
   OnHoldRequisition := FieldByName('SumQtyOrdered_int').AsInteger
  else
   OnHoldRequisition := 0;
  end;

  //BUG ISSUE 177; Sifiso Mahlaba
  with qryBatchOnHoldReturnsTotal do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := tmpItemsProductBatch_ID.Value;
  Open;
  if RecordCount > 0 then
   OnHoldReturn := FieldByName('SumQtyReturned_int').AsInteger
  else
   OnHoldReturn := 0;
  end;
  //Now return the combined total of Batches on Requisitions and Batches on Returns on hold
  Result := OnHoldRequisition + OnHoldReturn; 
end;

procedure TRequisitionDM.tmpItemsAfterPost(DataSet: TDataSet);
begin
 if ProductBatchSelectFrm.Active then
  ProductBatchSelectFrm.UpdateTotals;
end;

function TRequisitionDM.IsDemanderValid(DemanderID : Double) : boolean;
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



procedure TRequisitionDM.LoadUSerDemanders;
var
 userDemID : Double;
begin

 userDemID := 0;
 if IsDemanderValid(RxSolutionFrm.Security.User.UserDemanderID.Value) then
   userDemID := RxSolutionFrm.Security.User.UserDemanderID.Value;

 with qryUserSpecifiDemanders do
  begin
  Close;
  Parameters.ParamByName('@DemanderID').Value := userDemID;
  Open;
  end;

end;

procedure TRequisitionDM.stpStockControlRequisitionDemander_IDChange(
  Sender: TField);
begin
 //************* Clear 'Authorized By', 'Order By' and 'Received By' fields if Demander ID changed
 //************* Task Issue 2902
 with stpStockControlRequisition do
  begin
  if FieldByName('Demander_ID').OldValue <> FieldByName('Demander_ID').NewValue then
   begin
   FieldByName('AuthorizedBy_str').Value := NULL;
   FieldByName('OrderedBy_str').Value := NULL;
   FieldByName('ReceivedBy_str').Value := NULL;
   end;
  end;  
 UpdateDemanderUsers;
end;

function TRequisitionDM.IsItemDemanderAuthorised(DemanderID : Double; ProductCodeID: Double) : boolean;
begin
Result := False;

 with qryIsItemDemanderAuthorised do
  begin
  Parameters.ParamByName('@ProductID').Value := ProductCodeID;
  Parameters.ParamByName('@DemanderID').Value := DemanderID;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   Result := True
  else
   Result := False;
  Close;
  end;

end;     

procedure TRequisitionDM.CreateTextFileOrderReport;
var
 F1, F2  : TextFile;
 DataStr : String;
 Depot_Code,
 Dem_Code,
 Local_Dem_No,
 Objective_Code,
 ICN_str,
 Demand_Qty,
 FMS_Code,
 Recurr_Ind,
 Use_Loc_Dem_No,
 OrderNoStr,
 DefaultSupplierStr,
 DefaultSupplierCodeStr,
 DemaderAccountStr : String;
 FOrderNo, DefaultSupplierID :double;

begin
 FOrderNo := stpStockControlRequisition.FieldByName('Requisition_ID').AsFloat;

 DefaultSupplierID      := stpStockControlRequisition.FieldByName('Supplier_ID').AsFloat;
 DefaultSupplierCodeStr := GetSupplierCode(DefaultSupplierID);

 DemaderAccountStr := GetDemanderAccount(stpStockControlRequisition.FieldByName('Demander_ID').AsFloat);

 with qryRDMFile do //need parameters
  begin
  Close;
  Parameters.ParamByName('Requisition_ID').Value := FOrderNo;
  Open;
  First;
  if SaveDialog1.Execute then begin
   //SaveDialog1.FileName := 'ORDER_'+Trim(FieldByName('OrderNo_str').AsString)+'.txt';
   AssignFile(F2, SaveDialog1.Filename);
   Rewrite(F2);
   while not Eof do
    begin
      if (Trim(FieldByName('ICN_str').AsString) <> '') then
      begin
      //Data string per line should have the following format
      //1234567812345678123456789012345612345678912345678901234YY

        Depot_Code      := CodeMyString(Copy(Trim(DefaultSupplierCodeStr), 1, 8), 8);    //TblSupplier.Code_str
        Dem_Code        := CodeMyString(Copy(Trim(DemaderAccountStr), 1, 8), 8);         //Get Demander Account
        OrderNoStr      := Copy(Trim(FieldByName('Requisition_str').AsString), Length((FieldByName('Requisition_str').AsString))-3, 4);       //TblOrder.OrderNo_str
        Local_Dem_No    := CodeMyString(Trim(OrderNoStr), 10);
        Objective_Code  := CodeMyString(Copy(Trim(FieldByName('Account_str').AsString), 1, 6), 6);       //TblSystemAccounts.Account_str
        ICN_str         := CodeMyString(Copy(Trim(FieldByName('ICN_str').AsString), 1, 9), 9);           //TblProductPackSize.ICN_str
        Demand_Qty      := CodeMyString(FieldByName('QtyApproved_int').AsString, 10);                    //SumQtyOrder_int //must format this one...
        FMS_Code        := '    ';
        Recurr_Ind      := 'Y';
        Use_Loc_Dem_No  := 'Y';

        DataStr := Depot_Code+ Dem_Code + Local_Dem_No + Objective_Code +
          ICN_str + Demand_Qty + FMS_Code +  Recurr_Ind + Use_Loc_Dem_No;

        Writeln(F2, DataStr);
      end;
      Next;
    end;
   CloseFile(F2);
   MessageDlg('RDM file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
  Close;
  end;

  end;  
end;

function TRequisitionDM.CodeMyString(mystring: string; vlength: integer): string;
begin
 while Length(mystring) < vlength do
  begin
  mystring :=  mystring +' ';
  end;
 Result:= mystring;
end;

function TRequisitionDM.GetSupplierCode(SupplierID: double): string;
var
 SupplierCodeStr: string;
begin
 SupplierCodeStr := '';
 with qrySupplierName do
  begin
  Close;
  Parameters.ParamByName('SupplierID').Value := SupplierID;
  Open;
  if recordCount > 0 then
   SupplierCodeStr      := FieldByName('Code_str').AsString;
  end;
 Result:= SupplierCodeStr;
end;

function TRequisitionDM.GetDemanderAccount(DemanderID: Double): string;
var
 DemanderAccStr: string;
begin
 DemanderAccStr := '';
 with qryDemanderAccount do
  begin
  Close;
  Parameters.ParamByName('DemanderID').Value := DemanderID;
  Open;
  if recordCount > 0 then
   begin
   DemanderAccStr      := FieldByName('Account_str').AsString;
   end;
  end;
 Result:= DemanderAccStr;      
end;

procedure TRequisitionDM.LoadSuppliers;
begin

 with tblOrderListUniqueSuppliers do
  begin
  Close;
  Open;
  end;

end;   

procedure TRequisitionDM.stpStockControlRequisitionSupplier_IDChange(
  Sender: TField);
begin

 with stpStockControlRequisition do
  begin
  FieldByName('Supplier_str').AsString:= tblOrderListUniqueSuppliers.FieldByName('Name_str').AsString;
  end;

end;

procedure TRequisitionDM.LoadSystemUsers;
begin    
 with tblSystemUsers do
  begin
  Close;
  Open;
  end;

end;

function TRequisitionDM.IsLockedBySameUser: Boolean;
begin
 if prvUID = stpStockControlRequisition.FieldByName('CheckedOutBy_ID').AsVariant then
  Result := True
 else
  Result := False;
end;

procedure TRequisitionDM.RequisitionUnlockMain;
begin

  with qryRequisitionsCatalog do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('CheckedOutBy_ID').AsFloat      := 0;
      FieldByName('CheckedOutName_str').AsString  := '';
      FieldByName('CheckedOut_bol').AsBoolean     := False;
      if State in [dsEdit, dsInsert] then Post;
      //Refresh;
      end;
    
end;

function TRequisitionDM.IsRequisitionLocked: Boolean;
begin

 with qryIsReqLocked do
  begin
  Close;
  Parameters.ParamByName('Requisition_ID').Value := qryRequisitionsCatalog.FieldByName('Requisition_ID').Value;
  Open;
  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;

end;

procedure TRequisitionDM.stpStockControlRequisitionCharges_monChange(
  Sender: TField);
begin
 UpdateRequisitionTotalDisplay;
end;

procedure TRequisitionDM.AddBatchItemToList(pReqID, pProductID  :double;
                                            pBatchID            :integer;
                                            pQtyIssued: integer);
begin
//Use a stored Procedure to add a batch item to requsition list
//Check that the original is kept
with stp_ADDProductBatches do
  begin
  Prepared := False;
  Parameters.ParamByName('RequisitionID').Value       := pReqID;
  Parameters.ParamByName('QtyAuthorizedint').Value    := 0;
  Parameters.ParamByName('LastUpdatedat').Value       := Now;
  Parameters.ParamByName('QtyOrderedint').Value       := 0;
  Parameters.ParamByName('QtyIssuedint').Value        := pQtyIssued;
  Parameters.ParamByName('QtyDemanderOnHandint').Value:= -1;
  Parameters.ParamByName('QtyOnBackOrderint').Value   := 0;
  Parameters.ParamByName('ProductCodeID').Value       := pProductID;
  Parameters.ParamByName('BatchID').Value             := pBatchID; 
  Execute;
  end;
end;

procedure TRequisitionDM.stpStockControlRequisitionAuthorizedBy_strChange(
  Sender: TField);
begin
  //Auto Update Authorized Date
  with stpStockControlRequisition do
   begin
   if VarISNuLL(FieldByName('AuthorizedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('AuthorizedBy_str').NewValue)) then
         FieldByName('Authorized_Dat').Value := Date();
   end;
end;

procedure TRequisitionDM.stpStockControlRequisitionIssuedBy_strChange(
  Sender: TField);
begin
  //Auto Update Issued Date
  with stpStockControlRequisition do
   begin
   if VarISNuLL(FieldByName('IssuedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('IssuedBy_str').NewValue)) then
         FieldByName('Issued_Dat').Value := Date();
   end;
end;

procedure TRequisitionDM.stpStockControlRequisitionReceivedBy_strChange(
  Sender: TField);
begin
   //Auto Update Received Date
  with stpStockControlRequisition do
   begin
   if VarISNuLL(FieldByName('ReceivedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('ReceivedBy_str').NewValue)) then
         FieldByName('Received_dat').Value := Date();
   end;
end;

procedure TRequisitionDM.stpStockControlRequisitionOrderedBy_strChange(
  Sender: TField);
begin
    //Auto Update Requested Date
  with stpStockControlRequisition do
   begin
   if VarISNuLL(FieldByName('OrderedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('OrderedBy_str').NewValue)) then
         FieldByName('Ordered_dat').Value := Date();
   end;
end;

procedure TRequisitionDM.ImportDDVRequisition;
var
pReqID, pProductID  :double;
pAuthItems          :integer;
pBackOrder          :integer;
pQtyOrdered         :integer;
pQtyIssued          :integer;
QtyApproved  : integer;
F1, F2  : TextFile;
OrderItem, voucher  : string;
pMissingNSNs: string;
begin

 pMissingNSNs := '';

 openDialog1.Filter := 'DDV Requisition File|*.in';

 if OpenDialog1.Execute then
   begin

    AssignFile(F2, OpenDialog1.Filename);
    Reset(F2);
    //if (Trim(stpStockControlRequisition.FieldByName('Demander_ID').AsString) <> '') then
      //	    begin
    ReadLn(F2, OrderItem);
    voucher :=  Trim(Copy(OrderItem, 17, 8));
    qryCheckVoucher.Parameters.ParamByName('voucher').Value := voucher;
    qryCheckVoucher.Close;
    qryCheckVoucher.Open;

    if  qryCheckVoucher.RecordCount > 0 then
      begin
      stpStockControlRequisitionItems.Close;
      stpStockControlRequisitionItems.Open;
      MessageDlg('You cannot use demand number/import file more than once.', mtInformation, [mbOk], 0);
      end
     else
      begin
      Reset(F2);
         while not Eof(F2) do
           begin
           //Data string per line should have the following format
           //1234567812345678123456789012345612345678912345678901234YY
	   ReadLn(F2, OrderItem);
	   pReqID :=  stpStockControlRequisition.FieldByName('Requisition_ID').AsFloat;
     	   pQtyIssued := 0;

	   pProductID := GetProductId(Trim(Copy(OrderItem, 33, 9)));
           //Log items that are not found
           if (pProductID = -1) then
            begin
            pMissingNSNs := pMissingNSNs + Trim(Copy(OrderItem, 33, 9))+ #13;
            LogUnfoundProduct(Trim(Copy(OrderItem, 33, 9)), Trim(Copy(OrderItem, 17, 8)));
            end;

           pQtyOrdered := StrToInt(Trim(Copy(OrderItem, 42, 10)));
           pAuthItems  := 0;
	   pBackOrder  := 0;
           QtyApproved := 0;

           AddRequisitionItem(pReqID, pProductID, pQtyOrdered,0, pQtyOrdered, 0);
           stpStockControlRequisition.Edit;

           qryGetDemanderID.Parameters.ParamByName('code').Value := Trim(Copy(OrderItem, 9, 8));
           qryGetDemanderID.Close;
           qryGetDemanderID.Open;

           stpStockControlRequisition.FieldByName('VoucherNo_str').Value :=  Trim(Copy(OrderItem, 17, 8));
           stpStockControlRequisition.FieldByName('POReference_str').Value :=  Trim(Copy(OrderItem, 17, 8));
           stpStockControlRequisition.FieldByName('Demander_ID').Value := qryGetDemanderID.FieldByName('Demander_ID').AsInteger;
           stpStockControlRequisition.FieldByName('SystemStore_ID').Value := 1;
           stpStockControlRequisition.FieldByName('OrderedBy_str').Value := Trim(Copy(OrderItem, 56, 50));
           stpStockControlRequisition.FieldByName('Ordered_dat').Value := StrToDateTime(FormatDateTime('dd/mm/yyyy', StrToDateTime(Trim(Copy(OrderItem, 108, 10)))));
           stpStockControlRequisition.FieldByName('AuthorizedBy_str').Value := Trim(Copy(OrderItem, 119, 50));
           stpStockControlRequisition.FieldByName('Authorized_Dat').Value := StrToDateTime(FormatDateTime('dd/mm/yyyy', StrToDateTime(Trim(Copy(OrderItem, 169, 10)))));

           stpStockControlRequisition.Post;
           end;//End of While Loop

          CloseFile(F2);
          stpStockControlRequisitionItems.Close;
          stpStockControlRequisitionItems.Open;

          if Length(pMissingNSNs) > 0 then
           begin
           MessageDlg('Error Report'+ #13 +'Items that cannot be imported' + #13 + pMissingNSNs, mtError, [mbOk], 0);
           end;


     end


 // end;
end;
end;

//Get Product Id based on NSN  15/10/2013
function TRequisitionDM.GetProductId(nsn: string): integer;
var
prodId : integer;
begin

 prodId := -1;

 with  qryGetProductsWithNSN do
   begin
   Close;
   Parameters.ParamByName('nsn').Value := nsn;
   Open;
   First;
   if (RecordCount > 0) then
    prodId := FieldByName('ProductCode_ID').AsInteger;

   
   Result := prodId;

   end;

end;

procedure TRequisitionDM.LogUnfoundProduct(NSN: string; OrderRef: string);
var
 F2  : TextFile;
 DataStr: string;
begin

  //if SaveDialog1.Execute then begin

            {
  SaveDialog2.FileName := 'Error_'+OrderRef+'.ini';
  AssignFile(F2, SaveDialog2.Filename);
  //Rewrite(F2);
  Writeln(F2, DataStr);
  CloseFile(F2);
  //MessageDlg('RDM file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
             }

end;

end.




unit OrderUDM;
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
  Db, DBTables, ADODB, Variants, ppComm, ppRelatv, ppProd, ppClass,
  ppReport;

const
  ALLSUPPLIERS = 'All Suppliers';

  HST_ADD     = 'ADDED';
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_CHG     = 'CHANGED PRODUCT';
  HST_FIL     = 'ELECTRONIC ORDER FILE';
  HST_AUT     = 'ORDER AUTHORISED';

  ADD_ITEM    = 0;
  ADD_ORD     = 1;


type
  TOrderDM = class(TDataModule)
    ADOOrdersConnection: TADOConnection;
    dstblOrderList: TDataSource;
    dstblOrderListReport: TDataSource;
    dstblOrderListReportOutstanding: TDataSource;
    tblGeneralProductStockDetails: TADOTable;
    stpStockControlOrder: TADOStoredProc;
    stpStockControlOrderItems: TADOStoredProc;
    stpStockControlOrderItemsTotals: TADOStoredProc;
    dsstpStockControlOrder: TDataSource;
    dsstpStockControlOrderItems: TDataSource;
    dsstpStockControlOrderItemsTotals: TDataSource;
    stpOrderEditHistory: TADOStoredProc;
    dsstpOrderEditHistory: TDataSource;
    stpOrderItemsDELETE_NoOrders: TADOStoredProc;
    stpOrderItemsAPPEND_Audit: TADOStoredProc;
    stpOrderItemsAPPEND_GeneratePO: TADOStoredProc;
    stpOrderItemsDELETE_AllItems: TADOStoredProc;
    cmdOrderItemsAPPEND_Single: TADOCommand;
    dstblSystemUsers: TDataSource;
    stpOrderListRequisitions: TADOStoredProc;
    dsstpOrderListRequisitions: TDataSource;
    dsstpOrderListRequisitionsItems: TDataSource;
    stpOrderListRequisitionsItems: TADOStoredProc;
    dsstpOrderListRequisitionsAvailable: TDataSource;
    stpOrderListRequisitionDelete: TADOCommand;
    stpOrderListReport: TADOStoredProc;
    stpOrderListReportOutstanding: TADOStoredProc;
    AddOrderListReq: TADOCommand;
    dstblOrderListUniqueSuppliers: TDataSource;
    stpOrderList: TADOStoredProc;
    tblOrderListRequisitionsAvailable: TADOTable;
    dsstpSystemWharehouse: TDataSource;
    stpOrdersMarkAsComplete: TADOStoredProc;
    stpStockControlOrderItemsComplete: TADOStoredProc;
    DBUpdater: TADOCommand;
    ADOCommand_General: TADOCommand;
    stpOrderListReportRxCosting: TADOStoredProc;
    dsstpOrderListReportRxCosting: TDataSource;
    ADOQuery1_stp: TADOStoredProc;
    ADOQuery1: TADOQuery;
    dstblProductGroup2: TDataSource;
    tblProductGroup2: TADOTable;
    tblProductGroup2Code_str: TWideStringField;
    tblProductGroup2Description_str: TWideStringField;
    stpOrderItemsAPPEND_GeneratePOGroup2: TADOStoredProc;
    stpOrderItemsAddInstitutionEDL: TADOStoredProc;
    stpOrderListOrder_dat: TDateTimeField;
    stpOrderListActivated_bol: TBooleanField;
    stpOrderListOrderNo_str: TWideStringField;
    stpOrderListOrdered_dat: TDateTimeField;
    stpOrderListVoucherNo_str: TWideStringField;
    stpOrderListOrderNo_ID: TAutoIncField;
    stpOrderListSupplierCode_str: TWideStringField;
    stpOrderListSupplier_ID: TIntegerField;
    stpOrderListType_str: TWideStringField;
    stpOrderListItemsCost_mon: TBCDField;
    stpOrderListCharges_mon: TBCDField;
    stpOrderListEstimatedCost_mon: TBCDField;
    stpOrderListItemsNo_int: TIntegerField;
    stpOrderListActivatedBy_str: TWideStringField;
    stpOrderListOrderedBy_str: TWideStringField;
    stpOrderListAuthorizedBy_str: TWideStringField;
    stpOrderListAuthorized_dat: TDateTimeField;
    stpOrderListLastUpdate_dat: TDateTimeField;
    stpOrderListChargeCode_Str: TWideStringField;
    stpOrderListActivated_dat: TDateTimeField;
    stpOrderListSystemStore_str: TWideStringField;
    stpOrderListSupplier_Str: TWideStringField;
    stpOrderListItemsComplete_bol: TBooleanField;
    stpStockControlOrderOrderNo_ID: TAutoIncField;
    stpStockControlOrderSystemStore_str: TWideStringField;
    stpStockControlOrderSystemStore_ID: TIntegerField;
    stpStockControlOrderSupplier_Str: TWideStringField;
    stpStockControlOrderSupplier_ID: TIntegerField;
    stpStockControlOrderOrderNo_str: TWideStringField;
    stpStockControlOrderOrder_dat: TDateTimeField;
    stpStockControlOrderVoucherNo_str: TWideStringField;
    stpStockControlOrderType_str: TWideStringField;
    stpStockControlOrderItemsCost_mon: TBCDField;
    stpStockControlOrderCharges_mon: TBCDField;
    stpStockControlOrderEstimatedCost_mon: TBCDField;
    stpStockControlOrderItemsNo_int: TIntegerField;
    stpStockControlOrderActivatedBy_str: TWideStringField;
    stpStockControlOrderActivated_dat: TDateTimeField;
    stpStockControlOrderActivated_bol: TBooleanField;
    stpStockControlOrderOrderedBy_str: TWideStringField;
    stpStockControlOrderOrdered_dat: TDateTimeField;
    stpStockControlOrderAuthorizedBy_str: TWideStringField;
    stpStockControlOrderAuthorized_dat: TDateTimeField;
    stpStockControlOrderRemarks_mem: TMemoField;
    stpStockControlOrderLastUpdate_dat: TDateTimeField;
    stpStockControlOrderSupplierCode_str: TWideStringField;
    stpStockControlOrderChargeCode_Str: TWideStringField;
    stpStockControlOrderLastUpdateBy_str: TWideStringField;
    stpStockControlOrderLastUpdateBy_dbl: TIntegerField;
    stpStockControlOrderItemsComplete_bol: TBooleanField;
    stpStockControlOrderCheckedOutBy_ID: TIntegerField;
    stpStockControlOrderCheckedOut_bol: TBooleanField;
    stpStockControlOrderCheckedOutName_str: TWideStringField;
    stpStockControlOrderCheckedOut_dat: TDateTimeField;
    stpStockControlOrderItemsOrderItemsNo_ID: TAutoIncField;
    stpStockControlOrderItemsOrderNo_ID: TIntegerField;
    stpStockControlOrderItemsProductCode_ID: TIntegerField;
    stpStockControlOrderItemsQtyCalculated_int: TIntegerField;
    stpStockControlOrderItemsQtyOrdered_int: TIntegerField;
    stpStockControlOrderItemsTradeName_str: TStringField;
    stpStockControlOrderItemsPackCost_mon: TBCDField;
    stpStockControlOrderItemsExtendedCost_mon: TBCDField;
    stpStockControlOrderItemsQtyReceivedCum_int: TIntegerField;
    stpStockControlOrderItemsCompleted_bol: TBooleanField;
    stpStockControlOrderItemsBarCode_str: TStringField;
    stpStockControlOrderItemsLastUpdate_dat: TDateTimeField;
    stpStockControlOrderItemsLastUpdatedBy_int: TIntegerField;
    stpStockControlOrderItemsLastUpdatedBy_str: TWideStringField;
    stpStockControlOrderItemsReceiptNo_Str: TWideStringField;
    stpStockControlOrderItemsOrderNo_str: TWideStringField;
    stpStockControlOrderItemsProductCode_str: TWideStringField;
    stpStockControlOrderItemsNSN_str: TWideStringField;
    stpStockControlOrderItemsICN_str: TWideStringField;
    stpStockControlOrderItemsECN_str: TWideStringField;
    stpStockControlOrderItemsChargeCode_str: TWideStringField;
    stpStockControlOrderItemsLastUpdateBy_str: TWideStringField;
    stpStockControlOrderItemsLastUpdateBy_dbl: TIntegerField;
    stpStockControlOrderItemsDescription_str: TStringField;
    stpStockControlOrderItemsShippingPack_int: TIntegerField;
    stpOrderEditHistoryOrderHistory_ID: TAutoIncField;
    stpOrderEditHistoryOrderNo_ID: TIntegerField;
    stpOrderEditHistoryDescription_str: TStringField;
    stpOrderEditHistoryUser_ID: TIntegerField;
    stpOrderEditHistoryDate_dat: TDateTimeField;
    stpOrderEditHistoryProductCode_ID: TIntegerField;
    stpOrderEditHistoryOrderItem_ID: TIntegerField;
    stpOrderEditHistoryType_str: TStringField;
    stpOrderEditHistoryItem_ID: TIntegerField;
    stpOrderEditHistoryUserName_str: TStringField;
    stpOrderListReportOrderNo_ID: TAutoIncField;
    stpOrderListReportSupplier_ID: TAutoIncField;
    stpOrderListReportOrderItemsNo_ID: TAutoIncField;
    stpOrderListReportProductCode_ID: TAutoIncField;
    stpOrderListReportOrderNo_str: TWideStringField;
    stpOrderListReportCode_str: TWideStringField;
    stpOrderListReportType_str: TWideStringField;
    stpOrderListReportItemsCost_mon: TBCDField;
    stpOrderListReportCharges_mon: TBCDField;
    stpOrderListReportEstimatedCost_mon: TBCDField;
    stpOrderListReportItemsNo_int: TIntegerField;
    stpOrderListReportActivated_dat: TDateTimeField;
    stpOrderListReportActivated_bol: TBooleanField;
    stpOrderListReportOrderedBy_str: TWideStringField;
    stpOrderListReportOrdered_dat: TDateTimeField;
    stpOrderListReportAuthorizedBy_str: TWideStringField;
    stpOrderListReportAuthorized_dat: TDateTimeField;
    stpOrderListReportTradeName_str: TStringField;
    stpOrderListReportQtyCalculated_int: TIntegerField;
    stpOrderListReportQtyOrdered_int: TIntegerField;
    stpOrderListReportPackCost_mon: TBCDField;
    stpOrderListReportExtendedCost_mon: TBCDField;
    stpOrderListReportNSN_str: TWideStringField;
    stpOrderListReportICN_str: TWideStringField;
    stpOrderListReportECN_str: TWideStringField;
    stpOrderListReportGenericName_str: TWideStringField;
    stpOrderListReportStrength_str: TWideStringField;
    stpOrderListReportForm_str: TWideStringField;
    stpOrderListReportRoute_str: TWideStringField;
    stpOrderListReportCost_mon: TBCDField;
    stpOrderListReportPackSize_str: TWideStringField;
    stpOrderListReportPackSizeUnit_str: TWideStringField;
    stpOrderListReportName_str: TWideStringField;
    stpOrderListReportAddress1_str: TWideStringField;
    stpOrderListReportAddress2_str: TWideStringField;
    stpOrderListReportAddress3_str: TWideStringField;
    stpOrderListReportAddress4_str: TWideStringField;
    stpOrderListReportPostalCode_str: TWideStringField;
    stpOrderListReportDemanderName_str: TWideStringField;
    stpOrderListReportDemanderCode_str: TWideStringField;
    stpOrderListReportActivatedBy_str: TWideStringField;
    stpOrderListReportQtyReceivedCum_int: TIntegerField;
    stpOrderListReportCompleted_bol: TBooleanField;
    stpOrderListReportQtyOnOrder_int: TIntegerField;
    stpOrderListReportSysAddress1_str: TWideStringField;
    stpOrderListReportSysAddress2_str: TWideStringField;
    stpOrderListReportSysAddress3_str: TWideStringField;
    stpOrderListReportSysCity_str: TWideStringField;
    stpOrderListReportProductCode_str: TWideStringField;
    stpOrderListReportSystemCode_str: TStringField;
    stpOrderListReportAccount_str: TStringField;
    stpOrderListReportAccountName_str: TStringField;
    stpOrderListReportDescription: TWideStringField;
    stpOrderListReportPackSize: TWideStringField;
    stpOrderListReportOutstandingStrength_str: TWideStringField;
    stpOrderListReportOutstandingForm_str: TWideStringField;
    stpOrderListReportOutstandingGenericName_str: TWideStringField;
    stpOrderListReportOutstandingPackSize_str: TWideStringField;
    stpOrderListReportOutstandingPackSizeUnit_str: TWideStringField;
    stpOrderListReportOutstandingCost_mon: TBCDField;
    stpOrderListReportOutstandingProductCode_str: TWideStringField;
    stpOrderListReportOutstandingQtyOnHand_int: TIntegerField;
    stpOrderListReportOutstandingQtyOnOrder_int: TIntegerField;
    stpOrderListReportOutstandingNSN_str: TWideStringField;
    stpOrderListReportOutstandingICN_str: TWideStringField;
    stpOrderListReportOutstandingBarCode_str: TWideStringField;
    stpOrderListReportOutstandingInstitutionEDL_bol: TBooleanField;
    stpOrderListReportOutstandingECN_str: TWideStringField;
    stpOrderListReportOutstandingQtyOrdered_int: TIntegerField;
    stpOrderListReportOutstandingQtyReceivedCum_int: TIntegerField;
    stpOrderListReportOutstandingQtyOutstanding: TIntegerField;
    stpOrderListReportOutstandingTradeName_str: TStringField;
    stpOrderListReportOutstandingOrderNo_ID: TIntegerField;
    stpOrderListReportOutstandingProductCode_ID: TAutoIncField;
    stpOrderListReportOutstandingOrderNo_str: TWideStringField;
    stpOrderListReportOutstandingVoucherNo_str: TWideStringField;
    stpOrderListReportOutstandingOrderedBy_str: TWideStringField;
    stpOrderListReportOutstandingOrdered_dat: TDateTimeField;
    stpOrderListReportOutstandingCode_str: TWideStringField;
    stpOrderListReportOutstandingName_str: TWideStringField;
    stpOrderListReportOutstandingShortName_str: TWideStringField;
    stpOrderListReportOutstandingAddress1_str: TWideStringField;
    stpOrderListReportOutstandingAddress2_str: TWideStringField;
    stpOrderListReportOutstandingAddress3_str: TWideStringField;
    stpOrderListReportOutstandingAddress4_str: TWideStringField;
    stpOrderListReportOutstandingDemanderName_str: TWideStringField;
    stpOrderListReportOutstandingDemanderCode_str: TWideStringField;
    stpOrderListReportOutstandingSysAddress1_str: TWideStringField;
    stpOrderListReportOutstandingSysAddress2_str: TWideStringField;
    stpOrderListReportOutstandingSysAddress3_str: TWideStringField;
    stpOrderListReportOutstandingSysCity_str: TWideStringField;
    stpOrderListReportOutstandingSystemCode_str: TStringField;
    stpOrderListReportOutstandingAccount_str: TStringField;
    stpOrderListReportOutstandingAccountName_str: TStringField;
    stpOrderListReportOutstandingDescription: TWideStringField;
    stpOrderListReportOutstandingPackSize: TWideStringField;
    stpOrderListReportRxCostingOrderNo_ID: TAutoIncField;
    stpOrderListReportRxCostingSystemStore_str: TWideStringField;
    stpOrderListReportRxCostingSystemStore_ID: TIntegerField;
    stpOrderListReportRxCostingSupplier_Str: TWideStringField;
    stpOrderListReportRxCostingSupplier_ID: TIntegerField;
    stpOrderListReportRxCostingOrderNo_str: TWideStringField;
    stpOrderListReportRxCostingOrder_dat: TDateTimeField;
    stpOrderListReportRxCostingVoucherNo_str: TWideStringField;
    stpOrderListReportRxCostingType_str: TWideStringField;
    stpOrderListReportRxCostingItemsCost_mon: TBCDField;
    stpOrderListReportRxCostingCharges_mon: TBCDField;
    stpOrderListReportRxCostingEstimatedCost_mon: TBCDField;
    stpOrderListReportRxCostingItemsNo_int: TIntegerField;
    stpOrderListReportRxCostingActivatedBy_str: TWideStringField;
    stpOrderListReportRxCostingActivated_dat: TDateTimeField;
    stpOrderListReportRxCostingActivated_bol: TBooleanField;
    stpOrderListReportRxCostingOrderedBy_str: TWideStringField;
    stpOrderListReportRxCostingOrdered_dat: TDateTimeField;
    stpOrderListReportRxCostingAuthorizedBy_str: TWideStringField;
    stpOrderListReportRxCostingAuthorized_dat: TDateTimeField;
    stpOrderListReportRxCostingLastUpdate_dat: TDateTimeField;
    stpOrderListReportRxCostingSupplierCode_str: TWideStringField;
    stpOrderListReportRxCostingSumOfQtyDemanderOnHand_int: TIntegerField;
    stpOrderListReportRxCostingSumOfQtyOrdered_int: TIntegerField;
    stpOrderListReportRxCostingSumOfQtyIssued_int: TIntegerField;
    stpOrderListReportRxCostingSumOfQtyAuthorized_int: TIntegerField;
    stpOrderListReportRxCostingMaxOfPackCost_mon: TBCDField;
    stpOrderListReportRxCostingSumOfExtendedCost_mon: TBCDField;
    stpOrderListReportRxCostingProductCode_str: TStringField;
    stpOrderListReportRxCostingNSN_str: TStringField;
    stpOrderListReportRxCostingICN_str: TStringField;
    stpOrderListReportRxCostingECN_str: TStringField;
    stpOrderListReportRxCostingSumOfExtendedCostPot_mon: TBCDField;
    stpOrderListReportRxCostingSumOfQtyCostingRequest_int: TIntegerField;
    stpOrderListReportRxCostingDescription_str: TStringField;
    stpStockControlOrderItemsTotalsCountOfOrderItemsNo_ID: TIntegerField;
    stpStockControlOrderItemsTotalsSumOfExtendedCost_mon: TBCDField;
    stpOrderListRequisitionsItemsProductCode_str: TWideStringField;
    stpOrderListRequisitionsItemsDescription: TWideStringField;
    stpOrderListRequisitionsItemsSumOfQtyOrdered_int: TIntegerField;
    stpOrderListRequisitionsItemsSumOfQtyIssued_int: TIntegerField;
    stpOrderListRequisitionsItemsMaxOfPackCost_mon: TBCDField;
    stpOrderListRequisitionsItemsSumOfExtendedCost_mon: TBCDField;
    stpOrderListRequisitionsItemsProductCode_ID: TAutoIncField;
    stpOrderListRequisitionsCombinedRequisition_ID: TAutoIncField;
    stpOrderListRequisitionsRequisition_ID: TIntegerField;
    stpOrderListRequisitionsOrderNo_ID: TIntegerField;
    stpOrderListRequisitionsDescriptionOne: TWideStringField;
    stpOrderListRequisitionsRequisition_str: TStringField;
    stpOrderListRequisitionsPotCost_mon: TBCDField;
    stpOrderListRequisitionsPOReference_str: TWideStringField;
    tblOrderListRequisitionsAvailableRequisition_ID: TIntegerField;
    tblOrderListRequisitionsAvailableCode_str: TWideStringField;
    tblOrderListRequisitionsAvailableName_str: TWideStringField;
    tblOrderListRequisitionsAvailableRequisition_str: TStringField;
    tblOrderListRequisitionsAvailablePOReference_str: TWideStringField;
    tblOrderListRequisitionsAvailableTotalCost_mon: TBCDField;
    tblOrderListRequisitionsAvailableItemsNo_int: TIntegerField;
    tblOrderListRequisitionsAvailableDescriptionOne: TWideStringField;
    tblOrderListRequisitionsAvailablePotCost_mon: TBCDField;
    stpOrderListRequisitionsItemsICN_str: TWideStringField;
    stpOrderListRequisitionsItemsECN_str: TWideStringField;
    stpUpdateCompleteStatus: TADOStoredProc;
    stpProductCurrentOnOrder: TADOStoredProc;
    tblAuthorisedSystemUsers: TADOQuery;
    dstblAuthorisedSystemUsers: TDataSource;
    tblAuthorisedSystemUsersUserID: TGuidField;
    tblAuthorisedSystemUsersDescription: TWideStringField;
    stpStockControlOrderItemsMinStockSet_int: TIntegerField;
    stpStockControlOrderItemsMaxStockSet_int: TIntegerField;
    stpProductCurrentOnOrderProductCode_ID: TIntegerField;
    stpProductCurrentOnOrderSumOfQtyOrdered_int: TIntegerField;
    stp_CustomReport: TADOQuery;
    qrySqlStatements: TADOTable;
    ADOStoredProc1: TADOStoredProc;
    dsstp_CustomReport: TDataSource;
    stpStockControlOrderExpDelivery_dat: TDateTimeField;
    qryTotalQtyonHand: TADOQuery;
    stpStockControlOrderItemsOnStock: TIntegerField;
    stpOrderListReportProvincialLogo_img: TBlobField;
    stpOrderListReportOutstandingProvincialLogo_img: TBlobField;
    qryOnOrder: TADOQuery;
    stpStockControlOrderItemsOnOrder: TIntegerField;
    stpOrderListReportQtyOnHand_int: TIntegerField;
    stpOrderListReportSumQtyOrder_int: TIntegerField;
    SaveDialog1: TSaveDialog;
    tblSystemUsers: TADOQuery;
    GuidField1: TGuidField;
    WideStringField1: TWideStringField;
    qryIsRecordLocked: TADOQuery;
    qryDemanders: TADOQuery;
    dsDemanders: TDataSource;
    stpStockControlOrderDemander_ID: TIntegerField;
    stpStockControlOrderDemanderName_str: TWideStringField;
    stpStockControlOrderDemanderAccount_str: TWideStringField;
    stpOrderListDemanderName_str: TWideStringField;
    qryDemandersCode_str: TWideStringField;
    qryDemandersName_str: TWideStringField;
    qryDemandersAccount_str: TWideStringField;
    qryDemandersDemander_ID: TAutoIncField;
    stpOrderListReportDemanderAccount_str: TWideStringField;
    stpOrderListReportDemander: TWideStringField;
    stpStockControlOrderItemsDemanderQtyOnHand_int: TIntegerField;
    stpOrderListDemander_ID: TIntegerField;
    stpOrderListCheckedOut_bol: TBooleanField;
    stpOrderListCheckedOutName_str: TWideStringField;
    stpOrderListCheckedOutBy_ID: TIntegerField;
    tblOrderListUniqueSuppliers: TADOQuery;
    stpSystemWharehouse: TADOQuery;
    stpSystemWharehouseSystemStore_ID: TAutoIncField;
    stpSystemWharehouseSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseDemanderName_str: TWideStringField;
    stpSystemWharehouseDemanderCode_str: TWideStringField;
    stpSystemWharehouseAccountName_str: TStringField;
    stpSystemWharehouseAccount_str: TStringField;
    tblOrderListUniqueSuppliersSupplier_ID: TAutoIncField;
    tblOrderListUniqueSuppliersCode_str: TWideStringField;
    tblOrderListUniqueSuppliersName_str: TWideStringField;
    stpOrderItemsAddDemanderAuthorizedProducts: TADOStoredProc;
    dsstpOrderItemsAddDemanderAuthorizedProducts: TDataSource;
    stpSystemWharehouseDescription: TWideStringField;
    qrySupplierDescription: TADOQuery;
    qryAccountDescription: TADOQuery;
    stpSystemWharehouseCode: TADOQuery;
    tblOrderListUniqueSuppliersCode: TADOQuery;
    tblOrderListUniqueSuppliersCodeSupplier_ID: TAutoIncField;
    tblOrderListUniqueSuppliersCodeCode_str: TWideStringField;
    tblOrderListUniqueSuppliersCodeName_str: TWideStringField;
    stpSystemWharehouseCodeSystemStore_ID: TAutoIncField;
    stpSystemWharehouseCodeSystemAccount_ID: TAutoIncField;
    stpSystemWharehouseCodeDemanderName_str: TWideStringField;
    stpSystemWharehouseCodeDemanderCode_str: TWideStringField;
    stpSystemWharehouseCodeAccountName_str: TStringField;
    stpSystemWharehouseCodeAccount_str: TStringField;
    stpSystemWharehouseCodeDescription: TWideStringField;
    dsstpSystemWharehouseCode: TDataSource;
    dstblOrderListUniqueSuppliersCode: TDataSource;
    stpOrderListReportVoucherNo_str: TWideStringField;
    qryBlankNSNICNPresent: TADOQuery;
    stpStockControlOrderItemsVEN_str: TWideStringField;
    procedure tblOrderList1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tblOrderListUniqueSuppliersOldFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure stpStockControlOrderItemsBeforePost(DataSet: TDataSet);
    procedure stpStockControlOrderItemsAfterPost(DataSet: TDataSet);
    procedure stpStockControlOrderItemsAfterDelete(DataSet: TDataSet);
    procedure stpStockControlOrderNewRecord(DataSet: TDataSet);
    procedure stpStockControlOrderItemsPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure stpOrderListRequisitionsNewRecord(DataSet: TDataSet);
    procedure stpOrderListRequisitionsAfterPost(DataSet: TDataSet);
    procedure stpOrderListRequisitionsAfterDelete(DataSet: TDataSet);
    procedure stpStockControlOrderItemsNewRecord(DataSet: TDataSet);
    procedure stpStockControlOrderBeforePost(DataSet: TDataSet);
    procedure stpStockControlOrderItemsAfterOpen(DataSet: TDataSet);
    procedure stpStockControlOrderDemander_IDChange(Sender: TField);
    procedure tblOrderListUniqueSuppliersFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure stpStockControlOrderSystemStore_IDChange(Sender: TField);
    procedure stpStockControlOrderSupplier_IDChange(Sender: TField);

  private
    { Private declarations }
    FUpdateData :boolean;
    FOrderNo    :double;
    FAddingSingleItem :boolean;                                 
    function GetAccessLevel(vSecurityItem: double): integer;
    function ConnectDataSource: Boolean;
    function DrillPurchaseOrder(pOrder: double): double;
    procedure UpdateOrderTotalDataSource;
    function GetCurrProductID: double;
    procedure AddOrderItem(pOrderID, pProductID: double; pQtyOrdered :integer = 0);
    procedure UpdateOrderListRequisitionsItems;
    procedure UpdateOrderListRequisitionsAvailable;
    procedure AddReqItem(pOrderID, pReqID: double);
    procedure UpdateItemsFromCosting;
    procedure SetDateParams(DateStart :TDateTime; DateEnd :TDateTime; OpenTable :boolean = True);
    procedure AddEditHistory(const pType, pStr: string; pAddType: integer);
    procedure DeleteOrdItem(pItemID: double);
    procedure UpdateOnOrderForRxCosting(vProdID: double; pAmount: integer);

    function CodeMyString(mystring: string; vlength: integer): string;
    function GetSupplierDescription(SupplierID : integer): string;
    function GetAccountDescription(AccountID: integer): string;
    function BlankNSNsICNsPresent: Boolean;
    
  public
    { Public declarations }
    GROUP2_str : String;
    FUserName : string;
    FUserNamewithPosition : string;
    FUserID : Variant;
    prvIsBudgetModel : Boolean;
    procedure SetAccessFilter;
//    procedure LoadSupplierList(var pStrLst: TStringlist);
    function FilterSuppliers(const pFrm, pTo: TDateTime): String;
//    procedure SortOrdersGrid(const vField: String);
    function SetDocumentPrintName(const pType: integer): String;


    procedure EditOrder;
    procedure AddOrder;
    procedure SetOrderNumber;
    function GetProd(pPostItem: boolean): boolean;
    procedure AddSingleOrderItem;
    function DeleteOrderItem(vAsk: Boolean): boolean;
    procedure AutoPurchaseOrder;
    procedure AutoPurchaseOrder_Group2;
    procedure AddInstitutionEdl;
    procedure PurchaseOrderItemsDelete;
    procedure UpdateOrderSubTotals;
    procedure AddRequisitionItems;// used for RxCosting
    procedure RemoveRequisition;
    procedure LinkAllRequisitions;
    function ValidatePosting: Boolean;
    function DeleteOrder: boolean;
    procedure MarkAllItemsAsComplete(pFrom:integer);
//    procedure SetSupplierStr;
//    procedure SetSystemStoreStr;
    procedure OpenOnOrder(pID: double);
    function LoadSqlStatement(pType : integer) : boolean;
    procedure PrinterSelector(reportdoc: TppReport; printername : string; showDialog : boolean);
    procedure CreateTextFileOrderReport;
    procedure MakeRecordAvailable;
    function IsRecordLocked : Boolean;
    procedure UnLockRecord;
    procedure AddDemanderAuthorizedItems;
    procedure CreateTextFileOrderPMPUReport;
    procedure CreateTextFileOrderReportGP;
    procedure AuthoriseOrder;


  end;

var
  OrderDM: TOrderDM;

implementation

  uses
  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  ProgressIndicatorUFrm,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogProgressIndicatorUFrm,
  dmpDataObjectBaseModule,
  {$ENDIF}

  ProductAutolevelUDM,
  OrderRequisitionSelectUFrm,
  ProductGeneralUFrm,
  OrderDetailUFrm,
  MainUDM,
  MyApplicationUtilities;


 {$R *.DFM}

procedure TOrderDM.SetAccessFilter;
var
  CurRec  :TBookmark;
begin

//  with tblOrderList do
  with stpOrderList do
    try
    CurRec := GetBookMark;
    DisableControls;
    Close;
    Open;
    if BookMarkValid(CurRec) then GotoBookmark(CurRec);
    finally
    FreeBookMark(CurRec);
    EnableControls;
    end;

  with tblOrderListUniqueSuppliers do
    begin
    Close;
    Open;
    end
end;






function TOrderDM.GetAccessLevel(vSecurityItem: double): integer;
begin

  Result := USER_NONE;
  {$IFDEF RXSTOREBUILD}
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      Result := GetUserRights(SYSTEM_ORDERS, vSecurityItem);
  {$ELSE}
  Result := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_STORE_ORDERS, vSecurityItem )
  {$ENDIF}
end;


procedure TOrderDM.tblOrderList1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  vCurDemander  :double;

begin

  with Dataset do
    begin
    vCurDemander := FieldByName('Supplier_ID').AsFloat;
    Accept := GetAccessLevel(vCurDemander) > USER_NONE;
    end;

end;


procedure TOrderDM.tblOrderListUniqueSuppliersOldFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  vCurDemander  :double;

begin

  with Dataset do
    begin
    vCurDemander := FieldByName('Supplier_ID').AsFloat;
    Accept := GetAccessLevel(vCurDemander) > USER_NONE;
    end;

end;


{
procedure TPurchaseOrderDM.LoadSupplierList(var pStrLst: TStringlist);
begin

 with tblOrderListUniqueSuppliers, pStrLst do
  if Active then
    begin
    First;
    Clear;
    Add(ALLSUPPLIERS);
    while not EOF do
      begin
//      Add(FieldByName('Code_str').ASString + ': ' + FieldByName('Name_str').AsString);
      Add(FieldByName('Name_str').AsString);
      Next;
      end;
   end;

end;
}





function TOrderDM.FilterSuppliers(  const pFrm, pTo :TDateTime):String;

begin
  Result := '';
  SetDateParams(pFrm,pTo);
end;



function TOrderDM.ConnectDataSource: Boolean; (*::::::::::::::::::START:*)(*===========================================*)
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
  Connections[0]        := ADOOrdersConnection;


//Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=L:\RX Store\Data\RxStoreStd Version 1.1e (2002).mdb;Mode=Share Deny None;Extended Properties="";Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
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
            DataSets[j].Active := True;                                           // Activate the datastores.
                                                                                // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;

  Result := aAllDataSetsOpened;
  
  FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
  FUserNamewithPosition := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString + '( '+ RxSolutionFrm.Security.User.Position.ToString + ' )';
  FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;

  prvIsBudgetModel := MainDM.IsRequisitionManagementOnly;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TOrderDM.DataModuleCreate(Sender: TObject);
begin

  SetDateParams(Date - 30, Date, False);
  if Assigned(MainDM) then
    begin
    ConnectDataSource;
    end;

end;


{
procedure TPurchaseOrderDM.SortOrdersGrid(const vField:String);
var
  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort  :String;

begin

  with stpOrderList do
    if Active then
      begin
      vIsCurrentSort  := Pos(vField, Sort) > 0;
      vDescOrder      := Pos('DESC', Sort) > 0;
      vNewSort        := vField;
      if vIsCurrentSort then
        if not vDescOrder then
          vNewSort := vNewSort + ' DESC';
      Sort := vNewSort;
      end;

end;
}


function TOrderDM.SetDocumentPrintName(const pType:integer):String;
const
  NDOCNAME = 'RxSolution - [%sPurchase Order No:%s from (%s)-%s]';

var
  i :integer;
  vCodeStr,vNoStr,vDemStr, vDraft :string;
//  vTable  :TADOTable;
  vOrdID    :double;
  vReport   :TADOStoredProc;
  useCustomReport : Boolean;


begin

 //Bug Issue 721: SM
  with stpStockControlOrderItems do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;

  with stpStockControlOrder do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

  Result := '';
  case pType of
    0:
      begin
      vDraft := '';
      vReport := stpOrderListReport;
      end;
    1:
      begin
      vDraft := 'DRAFT';
      vReport := stpOrderListReport;
      end;
    2:
      begin
      vDraft := 'Outstanding Items ';
      vReport := stpOrderListReportOutstanding;
      end;
    3:
      begin
      vDraft := '';
      vReport := stpOrderListReport;
      end;
    4:
      begin
      vDraft := '';
      vReport := stpOrderListReportRxCosting;
      end;
    -1:
      begin
      vDraft := '';
      vReport := stpOrderListReportRxCosting;
      end;


    end;

  if pType < 3 then
    begin
    with stpOrderList do
      if Active then
        begin
  //      vCodeStr  := FieldByName('SupplierCode_str').AsString;
        vCodeStr  := '';
        vNoStr    := FieldByName('OrderNo_str').AsString;
        vDemStr   := FieldByName('Supplier_Str').AsString;
        vOrdID    := FieldByName('OrderNo_ID').AsFloat;
        end;
    Result    := Format(NDOCNAME, [vDraft, vNoStr, vCodeStr, vDemStr]);
    end else
    begin
    with stpStockControlOrder do
      if Active then
        begin
  //      vCodeStr  := FieldByName('SupplierCode_str').AsString;
        vCodeStr  := '';
        vNoStr    := FieldByName('OrderNo_str').AsString;
        vDemStr   := FieldByName('Supplier_Str').AsString;
        vOrdID    := FieldByName('OrderNo_ID').AsFloat;
        end;
    Result    := Format(NDOCNAME, [vDraft, vNoStr, vCodeStr, vDemStr]);
    end;
  with vReport do
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('OrdID').Value := vOrdID;
    Prepared := True;
    Open;
    end;

end;


function TOrderDM.LoadSqlStatement(pType : integer): boolean;
var
 sql_str : string;
 vOrderID : integer;
begin

 if pType < 3 then
  vOrderID := stpOrderList.FieldByName('OrderNo_ID').AsInteger
 else
  vOrderID := stpStockControlOrder.FieldByName('OrderNo_ID').AsInteger;

 with qrySqlStatements do
  begin
  Close;
  Open;
  if recordCount > 0 then
   sql_str := qrySqlStatements.FieldByName('Order_01').AsString;

  end;

 with stp_CustomReport do
  begin
  if (qrySqlStatements.RecordCount > 0) then
   if (not VarISNull(sql_str)) and (FileExists(ExtractFilePath(Application.ExeName) + 'tmp\Order.rtm')) then
    begin
    Active := False;
    SQL.Clear;
    SQL.Add(sql_str);
    ParamCheck := True;
    Parameters.ParamByName('@OrderID').Value := vOrderID;
    Active := True;

    Result := True;
    end
  else
   Result := False;
  end;

end;


procedure TOrderDM.EditOrder;

var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with stpOrderList do
    try
    DisableControls;
    vCurrRec := FieldByName('OrderNo_ID').AsFloat;
    DrillPurchaseOrder(vCurrRec);                            // pIssues display.  True shows issues else requests (OLD)
    Requery;
      try
      Locate('OrderNo_ID', vCurrRec, []);
      except
      end;
    finally
    EnableControls;
    end;  
end;

procedure TOrderDM.AddOrder;

var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :double;
  vNewRec  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with stpOrderList do
    try
    DisableControls;
    vCurrRec := FieldByName('OrderNo_ID').AsFloat;
    vNewRec := DrillPurchaseOrder(0);                            // pIssues display.  True shows issues else requests (OLD)
    if vNewRec <> 0 then vCurrRec := vNewRec;
    Requery;
      try
      Locate('OrderNo_ID', vCurrRec, []);
      except
      end;
    finally
    EnableControls;
    end;

end;


function TOrderDM.DrillPurchaseOrder( pOrder  : double): double; (*::::::START:*)(*===========================================*)
                                                (*function:DrillRequisition------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)

var (*.................................................................*)(*var*)(*...........................................*)
  vOrderEdit        : TPurchaseOrderEditor;
  vSaveOrDelete,
  vCurrentPosting,
  vWasPosted      : Boolean;
  vStpProcs       : array[0..5] of TADOStoredProc;
//  vStpProcs       : array[0..3] of TADOStoredProc;
  vStpEXEProcs    : array[0..0] of TADOStoredProc;
  i               : integer;


  vProductID      : Double;
  vItemsOrdered,
  vItemsPosted    :integer;
  vAddedRecord    :boolean;


  procedure UpdateOrderTotals(  pReq, pTotals : TADOStoredProc);
  var
  vIsRxCosting :boolean;

  begin (*...........................................................*)(*begin*)(*...........................................*)

  with pReq  do
    begin
    stpStockControlOrderItems.Active := False;
    stpStockControlOrderItems.Active := True;

    vIsRxCosting := False;
    if Assigned(MainDM)then vIsRxCosting := MainDM.IsRxCosting;

    if not vIsRxCosting then
      begin

      if not (State in [dsEdit, dsInsert]) then Edit;

      FieldByName('EstimatedCost_mon').AsCurrency :=
        pTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency +
        FieldByName('Charges_mon').AsCurrency;

      FieldByName('ItemsNo_int').AsInteger :=
        stpStockControlOrderItems.RecordCount;

      FieldByName('LastUpdate_dat').AsDateTime := Now;

      Post;
      end;
    end;
  end; (*..............................................................*)(*end*)(*...........................................*)




  procedure UpdateItemDB( pItems : TADOStoredProc);
  var (*...............................................................*)(*var*)(*...........................................*)
  vOverallProgress            : TProgressIndicatorFrm;
  j                           : integer;
  vProdID                     : double;
  vQtyOrdered                 : integer;
  vProductDetails             : RProductDetails;
  vAuditData                  : RProductAuditDetails;

  vSystemStID                 : double;
  vSuppID                     : double;
  vRefStr                     : string;
  vVoucherStr                 : string;
  vPostBy                     : string;


  begin (*...........................................................*)(*begin*)(*...........................................*)

  vSystemStID := stpStockControlOrder.FieldByName('SystemStore_ID').AsFloat;
  vSuppID     := stpStockControlOrder.FieldByName('Supplier_ID').AsFloat;
  vRefStr     := stpStockControlOrder.FieldByName('OrderNo_str').AsString;
  vVoucherStr := stpStockControlOrder.FieldByName('VoucherNo_str').AsString;
  vPostBy     := stpStockControlOrder.FieldByName('ActivatedBy_str').AsString;

  ADOQuery1.Active := True;
  with pItems do
    if Active then
      try

      First;
      j := 0;
      vOverallProgress := TProgressIndicatorFrm.Create(Self);
      vOverallProgress.MaxProgress := RecordCount;

      while not EOF do
        begin
        vProdID         := FieldByName('ProductCode_ID').AsFloat;
        vQtyOrdered     := FieldByName('QtyOrdered_int').AsInteger;

        if vQtyOrdered > 0 then
          begin


//******************************************************************************// POTENTIAL PROBLEM.
          ADOQuery1.Edit;
          ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger :=
            ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger + vQtyOrdered;
          ADOQuery1.Post;
//******************************************************************************// POTENTIAL PROBLEM.

          vProductDetails.QtyOnHand   := ADOQuery1.FieldByName('QtyOnHand_int').AsInteger;
          vProductDetails.NSN         := ADOQuery1.FieldByName('NSN_Str').AsString;
          vProductDetails.ECN         := ADOQuery1.FieldByName('ECN_Str').AsString;
          vProductDetails.ICN         := ADOQuery1.FieldByName('ICN_Str').AsString;

          vAuditData.Quantity_int     := vQtyOrdered;
          vAuditData.ProductCode_ID   := vProdID;
          vAuditData.Item_ID          := FieldByName('OrderItemsNo_ID').AsFloat;
          vAuditData.Value_mon        := FieldByName('ExtendedCost_mon').AsCurrency;

          vAuditData.SystemStore_ID   := vSystemStID;
          vAuditData.Demander_ID      := 0;
          vAuditData.Supplier_ID      := vSuppID;
          vAuditData.Type_str         := 'O';
          vAuditData.Reference_str    := vRefStr;
          vAuditData.DemanderSupplier_str := 'S';

          vAuditData.ProductCode_str  := ADOQuery1.FieldByName('ProductCode_Str').AsString;;
          vAuditData.VoucherNo_str    := vVoucherStr;
          vAuditData.Date_dat         := Now;
          vAuditData.QuantityOnHand_int := vProductDetails.QtyOnHand;

          vAuditData.User_str         := vPostBy;
          vAuditData.NSN_Str          := vProductDetails.NSN;
          vAuditData.ECN_str          := vProductDetails.ECN;
          vAuditData.ICN_str          := vProductDetails.ICN;
          
          MainDM.WriteAuditData(vAuditData);
          end;

        inc(j);
        vOverallProgress.CurrentProgress := j;
        Next;
        end;


      finally
      vOverallProgress.MaxProgress := 0;
      vOverallProgress.Free;
      First;
      ADOQuery1.Active := False;
      end;
  end; (*..............................................................*)(*end*)(*...........................................*)


  procedure PostThisRequisition(pItems : TADOStoredProc);
  begin

  with pItems do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;

  {$IFDEF RXSTOREBUILD}
    FieldByName('ActivatedBy_str').AsString   :=
      SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
  {$ELSE}
    FieldByName('ActivatedBy_str').AsString   :=
      RxSolutionFrm.Security.User.LastName.Value + ', ' +
      RxSolutionFrm.Security.User.FirstName.Value;
  {$ENDIF}
    FieldByName('Activated_dat').AsDateTime   := Date;
    Post;
    end;

  end;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  vStpProcs[0] := stpStockControlOrder;
  vStpProcs[1] := stpStockControlOrderItems;
  vStpProcs[2] := stpStockControlOrderItemsTotals;
  vStpProcs[3] := stpOrderEditHistory;
  vStpProcs[4] := stpOrderListRequisitions;
  vStpProcs[5] := stpOrderListRequisitionsItems;



  vStpEXEProcs[0] := stpOrderItemsDELETE_NoOrders;
//  vStpEXEProcs[1] := stpOrderItemsAPPEND_Audit;

  try

  tblGeneralProductStockDetails.Requery;
  stpSystemWharehouse.Requery;


  with ADOOrdersConnection do
    try

    vAddedRecord := False;
    if pOrder = 0 then
      with vStpProcs[0] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('OrderID').Value := pOrder;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;        // has to be done this way. cannot close a table and hold the transaction.
        Append;
        FieldByName('CheckedOut_bol').AsBoolean       := True;
        FieldByName('CheckedOutName_str').AsString    := FUserName;
        FieldByName('CheckedOut_dat').AsDateTime      := Now;
        FieldByName('CheckedOutBy_ID').AsString       := FUserID;
        Post;
        pOrder := FieldByName('OrderNo_ID').AsFloat;
        vAddedRecord := True;
        end;

    for i := low(vStpProcs) to high(vStpProcs) do
      with vStpProcs[i] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('OrderID').Value := pOrder;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;

        if i=0 then
        begin
        Edit;
        FieldByName('CheckedOut_bol').AsBoolean       := True;
        FieldByName('CheckedOutName_str').AsString    := FUserName;
        FieldByName('CheckedOut_dat').AsDateTime      := Now;
        FieldByName('CheckedOutBy_ID').AsString       := FUserID;
        Post;
        end;

        end;

//    BeginTrans;
//    MainDm.ProductStartTrans;

    FOrderNo  := pOrder;
    Result    := pOrder;
    UpdateOrderListRequisitionsAvailable;

    vOrderEdit  := TPurchaseOrderEditor.Create;

      try

      vWasPosted      := vStpProcs[0].FieldByName('Activated_bol').AsBoolean;
      vSaveOrDelete   := vOrderEdit.OrderStock;
      vCurrentPosting := vStpProcs[0].FieldByName('Activated_bol').AsBoolean;

      if vSaveOrDelete then
        begin

        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            if State in [dsEdit, dsInsert] then Post;

        UpdateOrderTotalDataSource;

        if not vWasPosted then
          if vCurrentPosting then
            begin

            if MainDm.IsRxCosting then UpdateItemsFromCosting;


            for i := low(vStpEXEProcs) to high(vStpEXEProcs) do
              with vStpEXEProcs[i] do
                begin
                Parameters.ParamByName('OrderID').Value    := pOrder;
                Prepared := True;
                ExecProc;
                end;

            UpdateItemDB( vStpProcs[1] );
            PostThisRequisition( vStpProcs[0] );

            end;

        UpdateOrderTotals( vStpProcs[0], vStpProcs[2] );

//        CommitTrans;
//        MainDm.ProductCommitTrans;

        end else

        begin
        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            if State in [dsEdit, dsInsert] then Cancel;

//        RollBackTrans;
//        MainDm.ProductRollbackTrans;


        if vAddedRecord then                                                    // because this was outside transaction, delete here
          with vStpProcs[0] do
            if FieldByName('OrderNo_ID').AsFloat = pOrder then
              Delete;
        end;


      finally
      vOrderEdit.Free;
      end;

    finally

//    if InTransaction then RollBackTrans;                                   // Don't leave the database in an unknown state
    FOrderNo := 0;

    for i := low(vStpProcs) to high(vStpProcs) do
      vStpProcs[i].Close;
    end;

  except
    on E:Exception do
      MessageDlg(E.Message, mtInformation, [mbOK], 0);
  end;


end; (*................................................................*)(*end*)(*...........................................*)








function TOrderDM.GetProd( pPostItem :boolean):boolean; (*::::::::START:*)(*===========================================*)
                                                                                (*function:GetProd---------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vProductSelector : TProductSelector;
  vCurOrder, vCurOrderItem, vCurProduct, vNewProduct, vCurrRec :Double;
  vCurOrderAmnt :integer;


begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := False;
  vProductSelector := TProductSelector.Create;

  with stpStockControlOrderItems, vProductSelector do
    if Active then
      if RecordCount > 0 then
        try
        DisableControls;
        vCurProduct   := FieldByName('ProductCode_ID').AsFloat;
        vCurOrderAmnt := FieldByName('QtyOrdered_int').AsInteger;
        vCurOrderItem := FieldByName('OrderItemsNo_ID').AsFloat;
        vCurOrder     := FieldByName('OrderNo_ID').AsFloat;
        vNewProduct   := Product_Change(vCurProduct);

        if vCurProduct <> vNewProduct then
          if not Locate('ProductCode_ID;OrderNo_ID', VarArrayOf([vNewProduct, vCurOrder]), []) then
            try
            DeleteOrdItem(vCurOrderItem);
            AddOrderItem(vCurOrder, vNewProduct, vCurOrderAmnt);
            Close;
            Open;
            UpdateOrderTotalDataSource;
            UpdateOrderSubTotals;
            Result := vNewProduct <> 0;
            Locate('ProductCode_ID', vNewProduct, []);
            except

            end
            else
            MessageDlg('Product already exists in item list.', mtWarning,[mbOk],0)

        finally
        EnableControls;
        Free;
        end;

end; (*................................................................*)(*end*)(*...........................................*)




procedure TOrderDM.UpdateOrderSubTotals;
var
  vCharge, vTotalCost :currency;
  vItems : integer;
  vIsRxCosting :boolean;

begin (*...........................................................*)(*begin*)(*...........................................*)

  vCharge     := 0;
  vTotalCost  := 0;
  vItems      := 0;

  if Assigned(MainDM)then vIsRxCosting := MainDM.IsRxCosting;


  if not vIsRxCosting then
    begin
    with stpStockControlOrderItemsTotals do
      if not FieldByName('SumOfExtendedCost_mon').IsNull then
        vTotalCost := FieldByName('SumOfExtendedCost_mon').AsCurrency;
    vItems := stpStockControlOrderItems.RecordCount;
    end
    else
    with stpOrderListRequisitionsItems do
    begin
    First;

    while not EOF do
      begin
      vItems      := vItems + 1;
      vTotalCost  := vTotalCost + FieldByName('SumOfExtendedCost_mon').AsCurrency;
      Next;
      end;    // while
    end;    // with




    with stpStockControlOrder do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;

      if FieldByName('Charges_mon').IsNull then
        FieldByName('Charges_mon').AsCurrency := 0
        else
        vCharge := FieldByName('Charges_mon').AsCurrency;

      FieldByName('EstimatedCost_mon').AsCurrency := vCharge + vTotalCost;
      FieldByName('ItemsNo_int').AsInteger := vItems;
      end;


end; (*..............................................................*)(*end*)(*...........................................*)



procedure TOrderDM.UpdateOrderTotalDataSource; (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:UpdateRequisitionTotalDisplay----*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

//  if FUpdateData then
    with stpStockControlOrderItemsTotals do
      if Active then
        begin
        Close;
        Open;
        end;
        
end; (*................................................................*)(*end*)(*...........................................*)





procedure TOrderDM.SetOrderNumber; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetRequisitionNumber-------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  if Assigned(MainDM) then
    with stpStockControlOrder, MainDM do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('OrderNo_str').AsString   :=
        GetNextVoucherNumber( vFetchSuccess, 1, FRM_ORDERS);
      Post;
      end;
end; (*................................................................*)(*end*)(*...........................................*)






function TOrderDM.GetCurrProductID: double; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrProductID------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with stpStockControlOrderItems do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('ProductCode_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)





procedure TOrderDM.stpStockControlOrderItemsBeforePost(
  DataSet: TDataSet);
var
  vsUserStr,vsProduct :string;
  vdUserID  :double;

begin

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
  {
  }

  with Dataset do
    begin
    FieldByName('LastUpdate_dat').AsDateTime  := Now;
    FieldByName('LastUpdateBy_str').AsString  := vsUserStr;
    FieldByName('LastUpdateBy_dbl').AsFloat   := vdUserID;
    vsProduct  := FieldByName('Description_str').AsString;


    if FieldByName('QtyOrdered_int').IsNull then
      FieldByName('QtyOrdered_int').AsInteger := 0;
    if FieldByName('PackCost_mon').IsNull then
      FieldByName('PackCost_mon').AsCurrency := 0;
    FieldByName('ExtendedCost_mon').AsCurrency :=
      FieldByName('PackCost_mon').AsCurrency *
      FieldByName('QtyOrdered_int').AsInteger;
    FieldByName('QtyCalculated_int').AsInteger :=   FieldByName('QtyOrdered_int').AsInteger;
    AddEditHistory(HST_EDT, vsProduct, ADD_ITEM);
    end;
end;



procedure TOrderDM.UpdateItemsFromCosting;
var
  vQty  :integer;
  vCost :currency;
  vProd :Double;


begin
        {this proc is used when the program is in RxCosting mode.  it takes the
        view and adds all the merged items and adds them to the single item to the
        order items table}

  if FOrderNo <> 0 then
    begin

    with stpOrderItemsDELETE_AllItems do
      begin
      Parameters.ParamByName('OrderID').Value := FOrderNo;
      Prepared := True;
      ExecProc;
      end;

    with stpOrderListRequisitionsItems do
      if Active then
        begin
        First;
        while not eof do
          begin
          vQty  :=  FieldByName('SumOfQtyOrdered_int').AsInteger - FieldByName('SumOfQtyIssued_int').AsInteger;
          vProd :=  FieldbyName('ProductCode_ID').asfloat;
          FAddingSingleItem := True;
          AddOrderItem(FOrderNo, vProd, vQty);
          UpdateOnOrderForRxCosting(vProd, vQty);
          FAddingSingleItem := False;
          Next;
          end;
        end;
    end;

end;


procedure TOrderDM.UpdateOnOrderForRxCosting(vProdID:double; pAmount:integer);
const
  SQLSTR = 'UPDATE TblProductPackSize SET TblProductPackSize.QtyOnOrder_int = IsNull(QtyOnOrder_int,0)+(%d), TblProductPackSize.LastUpdate_dat = Getdate() WHERE (((TblProductPackSize.ProductCode_ID)=%f));';
var
  UpdateQry :TADOCommand;
  UpdStr    :string;
begin

  UpdateQry := TADOCommand.Create(Application);
  try
    try
    UpdStr := Format(SQLSTR,[pAmount, vProdID]);
//    MessageDlg(UpdStr, mtWarning, [mbOK], 0);
    UpdateQry.CommandText := UpdStr;
    UpdateQry.Connection := ADOOrdersConnection;
    UpdateQry.Execute;
    except

    end;
  finally
  UpdateQry.Free;
  end;

end;


procedure TOrderDM.AddOrderItem(    pOrderID, pProductID  :double;
                                            pQtyOrdered           :integer);
begin (*.............................................................*)(*begin*)(*...........................................*)

{
  with stpStockControlOrderItems do
    if Active then
      try
      FAddingSingleItem := True;
//      Insert;
      Append;
      FieldByName('OrderNo_ID').AsFloat               := pOrderID;
      FieldByName('ProductCode_ID').AsFloat           := pProductID;
      FieldByName('PackCost_mon').AsCurrency          := pItemCost;
      FieldByName('LastUpdate_dat').AsDateTime        := Now;
      FieldByName('QtyOnHand_int').AsInteger          := FieldByName('prd_OnHand').AsInteger;
      FieldByName('QtyOrdered_int').AsInteger         := pQtyOrdered;
      FieldByName('ExtendedCost_mon').AsCurrency      := 0;
      FieldByName('QtyReceivedCum_int').AsInteger     := 0;
      if pPostItem then Post;
      FAddingSingleItem := False;
      except
        on EDatabaseError do Abort;
      end;


@OrderID 	[float],
@ProductID	[float],
@PackCost	[money],
@LastUpdate	[datetime],
@QtyOnHand	[int],
@QtyOrdered	[int],
@TotalCost	[money],
@QtyCalc	[int],
@QtyRec	[int]

}
  with cmdOrderItemsAPPEND_Single do
    begin
    Prepared := False;
    Parameters.ParamByName('OrderID').Value         := pOrderID;
    Parameters.ParamByName('ProductID').Value       := pProductID;
//    Parameters.ParamByName('PackCost').Value        := pItemCost;
    Parameters.ParamByName('LastUpdate').Value      := Now;
    Parameters.ParamByName('QtyOrdered').Value      := pQtyOrdered;
//    Parameters.ParamByName('TotalCost').Value       := 0;
    Parameters.ParamByName('QtyCalc').Value         := 0;
    Parameters.ParamByName('QtyRec').Value          := 0;
    Prepared := True;
    Execute;
    end;


end; (*................................................................*)(*end*)(*...........................................*)





procedure TOrderDM.AddSingleOrderItem;
var
  vProductSelector  : TProductSelector;
  vOrdID            : Double;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;

begin

  with stpStockControlOrder do                                                  // Use same table as curently being edited
    vOrdID := FieldByName('OrderNo_ID').AsFloat;                                // Get current ID's for Req items

  vProductSelector := TProductSelector.Create;
  with stpStockControlOrderItems, vProductSelector do
    if Active then
      try
      if Product_SelectItems( vProductCost, vProductID) then
        for i := low(vProductID) to high(vProductID) do
          try

          if not Locate('ProductCode_ID;OrderNo_ID', VarArrayOf([vProductID[i], vOrdID]), []) then
            begin
            AddOrderItem( vOrdID, vProductID[i]);
            Close;
            Open;
            if i = high(vProductID) then
             Locate('ProductCode_ID;OrderNo_ID', VarArrayOf([vProductID[i], vOrdID]), []);//SM to move cursor to last item added
            end;

          except
          end;
      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      AddEditHistory(HST_ADD, '-', ADD_ITEM);

      finally
      Free;
      end;
   
end;




procedure TOrderDM.stpStockControlOrderItemsAfterPost(
  DataSet: TDataSet);
begin

  UpdateOrderTotalDataSource;
  UpdateOrderSubTotals;

end;




function TOrderDM.DeleteOrderItem(vAsk :Boolean): boolean;

var (*.................................................................*)(*var*)(*...........................................*)
  vCurProductName,vCurProductCode : string;
  vDel  :Boolean;

const                                                                  (*const*)(*...........................................*)
  DELSTR = 'Delete item? ' + #13 + 'Code: %s ' + #13 + 'Product: %s';

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result  := False;
  vDel    := True;

  with stpStockControlOrderItems do
    if Active then
      if RecordCount > 0 then
        begin
        vCurProductName := FieldByName('Description_str').AsString;
        vCurProductCode := FieldByName('ProductCode_str').AsString;
        if vAsk then
          if MessageDlg(Format(DELSTR,[vCurProductCode,vCurProductName]),
                        mtWarning,[mbYes,mbNo],0) = mrNo then
                        vDel := False;
        if vDel then
          begin
//          Delete;                                                               // Don't worry about updayting stock.  save proc in drill req will resolve that
//          if not Locate('ProductCode_ID;OrderNo_ID', VarArrayOf([vProductID[i], vOrdID]), []) then

          with ADOCommand_General do
            begin
            CommandText := 'DELETE TblOrderItems WHERE TblOrderItems.OrderItemsNo_ID=' + FieldByName('OrderItemsNo_ID').AsString + ';';
            Execute;
            end;

          Close;
          Open;
          UpdateOrderTotalDataSource;
          UpdateOrderSubTotals;
          Result := True;
          end;

        end;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TOrderDM.stpStockControlOrderItemsAfterDelete(
  DataSet: TDataSet);
begin

  UpdateOrderTotalDataSource;
  UpdateOrderSubTotals;

end;


procedure TOrderDM.PurchaseOrderItemsDelete;
const
  USERMSG = 'This will delete all currently ordered items on THIS order!';
var
  vStpEXEProcs    : array[0..0] of TADOStoredProc;
  i :integer;

begin

  vStpEXEProcs[0] := stpOrderItemsDELETE_AllItems;
//  vStpEXEProcs[1] := stpOrderItemsAPPEND_GeneratePO;

  if FOrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin
      for i := low(vStpEXEProcs) to high(vStpEXEProcs) do
        with vStpEXEProcs[i] do
          begin
          Parameters.ParamByName('OrderID').Value := FOrderNo;
          Prepared := True;
          ExecProc;
          end;
      stpStockControlOrderItems.Requery;
      UpdateOrderTotalDataSource;
      end;

end;





procedure TOrderDM.AutoPurchaseOrder;
const
  USERMSG = 'Automatic Order.  This will delete all currently ordered items on THIS order!';

var
  vStpEXEProcs    : array[0..1] of TADOStoredProc;
  i :integer;
  OrderNo :double;

begin

  vStpEXEProcs[0] := stpOrderItemsDELETE_AllItems;
  vStpEXEProcs[1] := stpOrderItemsAPPEND_GeneratePO;

  if stpStockControlOrder.Active then
    OrderNo := stpStockControlOrder.FieldByName('OrderNo_ID').AsFloat
    else
    OrderNo := 0;



  if OrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin

//      PurchaseOrderItemsDelete;

      with stpOrderItemsDELETE_AllItems do
        begin
        Parameters.ParamByName('OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        end;

     //Removed auto calc product levels, not needed...
      with stpOrderItemsAPPEND_GeneratePO do
        begin
        Parameters.ParamByName('OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        AddEditHistory(HST_ADD, 'Auto generated purchase order', ADD_ITEM);
        end;


      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      end;

end;

procedure TOrderDM.AutoPurchaseOrder_Group2;
const
  USERMSG = 'Automatic Order.  This will delete all currently ordered items on THIS order!';

var
  vStpEXEProcs    : array[0..1] of TADOStoredProc;
  i :integer;
  OrderNo :double;

begin

{   }
if GROUP2_str <> '' then
  begin
 // vStpEXEProcs[0] := stpOrderItemsDELETE_AllItems;
//  vStpEXEProcs[1] := stpOrderItemsAPPEND_GeneratePOGroup2;

  if stpStockControlOrder.Active then
    OrderNo := stpStockControlOrder.FieldByName('OrderNo_ID').AsFloat
    else
    OrderNo := 0;


//ShowMessage(GROUP2_str);
  if OrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin

//      PurchaseOrderItemsDelete;

      with stpOrderItemsDELETE_AllItems do
        begin
        Parameters.ParamByName('OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        end;

      with stpOrderItemsAPPEND_GeneratePOGroup2 do
        begin
        Parameters.ParamByName('@OrderID').Value := OrderNo;
        Parameters.ParamByName('@Group2').Value := GROUP2_str;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        AddEditHistory(HST_ADD, 'Auto generated purchase order', ADD_ITEM);
        end;


      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      end;
  end;

//  ShowMessage(GROUP2_str)
end;

procedure TOrderDM.AddInstitutionEdl;
const
  USERMSG = 'This will delete all currently ordered items on THIS order!';

var
  vStpEXEProcs    : array[0..1] of TADOStoredProc;
  i :integer;
  OrderNo :double;


begin


  if stpStockControlOrder.Active then
    OrderNo := stpStockControlOrder.FieldByName('OrderNo_ID').AsFloat
    else
    OrderNo := 0;


  if OrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin

//      PurchaseOrderItemsDelete;

      with stpOrderItemsDELETE_AllItems do
        begin
        Parameters.ParamByName('OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        end;

      with stpOrderItemsAddInstitutionEDL do
        begin
        Parameters.ParamByName('@OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        AddEditHistory(HST_ADD, 'Add Institutional EDL List', ADD_ITEM);
        end;


      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      end;

end;


procedure TOrderDM.AddDemanderAuthorizedItems;
const
  USERMSG = 'This will delete all currently ordered items on THIS order!';

var
  vStpEXEProcs    : array[0..1] of TADOStoredProc;
  i :integer;
  OrderNo :double;
  demanderID :double;
begin


  if stpStockControlOrder.Active then
     begin
     OrderNo := stpStockControlOrder.FieldByName('OrderNo_ID').AsFloat;
     demanderID := stpStockControlOrder.FieldByName('Demander_ID').AsFloat
     end
    else
      begin
      OrderNo := 0;
      demanderID := 0;
      end;

  if OrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin

//      PurchaseOrderItemsDelete;

      with stpOrderItemsDELETE_AllItems do
        begin
        Parameters.ParamByName('OrderID').Value := OrderNo;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        end;

      with stpOrderItemsAddDemanderAuthorizedProducts do
        begin
        Parameters.ParamByName('@OrderID').Value := OrderNo;
        Parameters.ParamByName('@DemanderID').Value := demanderID;
        Prepared := True;
        ExecProc;
        stpStockControlOrderItems.Close;
        stpStockControlOrderItems.Open;
        AddEditHistory(HST_ADD, 'Add Demander Authorized List', ADD_ITEM);
        end;


      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      end;

end;





procedure TOrderDM.LinkAllRequisitions;
const
  USERMSG = 'Automatic Order.  This will delete all currently ordered items on THIS order!';

var
  vStpEXEProcs    : array[0..1] of TADOStoredProc;
  i :integer;

begin

  vStpEXEProcs[0] := stpOrderItemsDELETE_AllItems;
  vStpEXEProcs[1] := stpOrderItemsAPPEND_GeneratePO;

  if FOrderNo <> 0 then
    if MessageDlg(USERMSG,mtWarning,[mbOk, mbCancel],0) = mrOk then
      begin
      for i := low(vStpEXEProcs) to high(vStpEXEProcs) do
        with vStpEXEProcs[i] do
          begin
          Parameters.ParamByName('OrderID').Value := FOrderNo;
          Prepared := True;
          ExecProc;
          end;
      stpStockControlOrderItems.Requery;
      UpdateOrderTotalDataSource;
      UpdateOrderSubTotals;
      end;

end;




procedure TOrderDM.stpStockControlOrderNewRecord(
  DataSet: TDataSet);

var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;
  vContinue     :boolean;
  vSuppID       :Double;
  Year1, Month1, Day1 : Word;
const
  ErrMsg =  'No Supplier available.'#13'Please add or activate at least one Supplier'#13'OR'#13 +
            'Check with the system administrator';
begin

  vContinue := False;
  with tblOrderListUniqueSuppliers do
    if Active then
      if RecordCount > 0 then
        begin
        vContinue := True;

 //MC remove default supplier 16/09/2010

       {* if SYSTEMSUPP_DEF = 0 then
          vSuppID    := FieldByName('Supplier_ID').AsFloat
          else
          vSuppID    := SYSTEMSUPP_DEF; *}
        end;

  if vContinue then
    begin
    if Assigned(MainDM) then
      with DataSet, MainDM do
        begin 
        DecodeDate(Now, Year1, Month1, Day1);
//        FieldByName('Supplier_ID').AsFloat        := vSuppID;
//        FieldByName('SystemStore_ID').AsFloat     := SYSTEMSTORE_DEF; //this should work?
        FieldByName('OrderNo_str').AsString       := MainDM.GetNextVoucherNumber( vFetchSuccess, 1, FRM_ORDERS);                  // the 1 is the wharehouse ID
        FieldByName('VoucherNo_str').AsString     := Copy(FieldByName('OrderNo_str').AsString, 0, 2) + Copy(IntToStr( Year1),3,2) + Copy(FieldByName('OrderNo_str').AsString, Length((FieldByName('OrderNo_str').AsString))-3, 4);

        FieldByName('Activated_bol').AsBoolean    := False;
        FieldByName('Charges_mon').AsCurrency     := 0;
        FieldByName('Order_dat').AsDateTime       := Date;
        FieldByName('EstimatedCost_mon').AsCurrency   := 0;
        FieldByName('ItemsCost_mon').AsCurrency   := 0;
        FieldByName('LastUpdate_dat').AsDateTime  := Now;
        FieldByName('Type_str').AsString          := 'D';
        end;
    end else
    begin
    MessageDlg(ErrMsg,mtWarning,[mbOK],0);
    Abort;
    end;

end;


procedure TOrderDM.stpStockControlOrderItemsPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin

//  Action := daAbort;

end;

procedure TOrderDM.stpOrderListRequisitionsNewRecord(
  DataSet: TDataSet);
begin

  with Dataset do
    begin
    FieldByName('OrderNo_ID').AsFloat := FOrderNo;
    end;

end;

procedure TOrderDM.stpOrderListRequisitionsAfterPost(
  DataSet: TDataSet);
begin
  UpdateOrderListRequisitionsItems;
end;


procedure TOrderDM.UpdateOrderListRequisitionsItems;
begin
  stpOrderListRequisitionsItems.Close;
  stpOrderListRequisitionsItems.Open;
end;

procedure TOrderDM.UpdateOrderListRequisitionsAvailable;
begin
  tblOrderListRequisitionsAvailable.Close;
  tblOrderListRequisitionsAvailable.Open;
end;


procedure TOrderDM.stpOrderListRequisitionsAfterDelete(
  DataSet: TDataSet);
begin
  UpdateOrderListRequisitionsItems;
end;

// This is correct. Used for RxCosting
procedure TOrderDM.AddRequisitionItems;
var
  vReqSelector      : TRequisitionSelector;
  vOrdID            : Double;
  vReqID            : cIDArray;
  i                 : integer;

begin

  with stpStockControlOrder do                                                  // Use same table as curently being edited
    vOrdID := FieldByName('OrderNo_ID').AsFloat;                                // Get current ID's for Req items

  vReqSelector := TRequisitionSelector.Create;
  with stpOrderListRequisitions, vReqSelector do
    if Active then
      try
      DisableControls;

      if SelectRequisitions( vReqID ) then
        for i := low(vReqID) to high(vReqID) do
          try
          if not Locate('Requisition_ID;OrderNo_ID', VarArrayOf([vReqID[i], vOrdID]), []) then
            AddReqItem( vOrdID, vReqID[i]);
          except
          end;

      Close;
      Open;
      finally
      EnableControls;
      Free;
      end;

end;

// This is correct. Used for RxCosting
procedure TOrderDM.AddReqItem( pOrderID, pReqID  :double);
begin (*.............................................................*)(*begin*)(*...........................................*)

  with AddOrderListReq do
  begin
  Parameters.ParamByName('OrdID').Value   := pOrderID;
  Parameters.ParamByName('ReqID').Value   := pReqID;
  Execute;
  end;    // with

  with stpOrderListRequisitions do
    if Active then
      try
      Close;
      Open;

      except
        on EDatabaseError do Abort;
      end;

  with stpOrderListRequisitionsItems do
    if Active then
      try
      Close;
      Open;

      except
        on EDatabaseError do Abort;
      end;
  UpdateOrderSubTotals;
  stpStockControlOrder.Post;


end; (*................................................................*)(*end*)(*...........................................*)


// This is correct. Used for RxCosting
procedure TOrderDM.RemoveRequisition;
var
  vCurReqID :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

{
CREATE PROCEDURE [dbo].[strdprc_OrderListRequisitionDelete]

@CombinedRequisitionID [int]

as


DELETE TblOrderRequisitionList
FROM TblOrderRequisitionList
WHERE (((TblOrderRequisitionList.CombinedRequisition_ID)=@CombinedRequisitionID));


GO
}

  with DBUpdater do
    try
    CommandText :=  'IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS ' +
                    'WHERE TABLE_NAME = ''strdprc_OrderListRequisitionDelete'') ' +
                    'DROP PROCEDURE strdprc_OrderListRequisitionDelete';
    Execute;
    CommandText :=  'CREATE PROCEDURE dbo.strdprc_OrderListRequisitionDelete ' +
                    '@CombinedRequisitionID int ' +
                    'as ' +
                    'DELETE TblOrderRequisitionList ' +
                    'FROM TblOrderRequisitionList ' +
                    'WHERE (((TblOrderRequisitionList.CombinedRequisition_ID)=@CombinedRequisitionID));';
    execute;
    except
    end;


  with stpOrderListRequisitions do
    if Active then
      if MessageDlg('Are you sure you want to delete',mtWarning,[mbOK, mbCancel],0) = mrOK then
        try
        DisableControls;
        vCurReqID := FieldByName('CombinedRequisition_ID').AsFloat;
        with stpOrderListRequisitionDelete do
          begin
          Parameters.ParamByName('CombinedRequisitionID').Value := vCurReqID;
          Prepared := True;
          Execute;
          end;
        Close;
        Open;
        UpdateOrderListRequisitionsItems;
        finally
        EnableControls
        end;

  UpdateOrderSubTotals;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TOrderDM.stpStockControlOrderItemsNewRecord(
  DataSet: TDataSet);
begin
  if not FAddingSingleItem then Abort;
end;

function TOrderDM.ValidatePosting:Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Supplier' +
          #13 + 'Account' +
          #13 + 'Ordered By && Date' +
          #13 + 'Authorised By && Date';
  WMSG = 'If you post this record, you may no longer edit it once you have saved & closed';

begin
  Result := True;
  with stpStockControlOrder do
    if Active then
      if not FieldByName('Activated_bol').AsBoolean then
        begin
        if FieldByName('Supplier_ID').IsNull then Result := False;       //Bug Issue 2333
        if FieldByName('SystemStore_ID').isNull then Result := False;    //Bug Issue 2333
        if FieldByName('OrderedBy_str').AsString = '' then Result := False;
        if FieldByName('AuthorizedBy_str').AsString = '' then Result := False;
        if FieldByName('Ordered_dat').IsNull then Result := False;
        if FieldByName('Authorized_dat').IsNull then Result := False;
        if not Result then
          begin
          if not (State in [dsEdit, dsInsert]) then Edit;
          FieldByName('Activated_bol').AsBoolean := False;
          Post;
          MessageDlg(EMSG, mtWarning, [mbOK],0);
          end;
        end else
        Result := False;

//  if Result then MessageDlg(WMSG, mtWarning, [mbOK],0);

end;

function TOrderDM.DeleteOrder:boolean;
var
  vWasPosted      : Boolean;
  vSupplier       : string;
  vOrderID        : Double;
  i               : integer;
  vDescription    : string;

begin


  with stpOrderList do
    begin
    vWasPosted    :=  FieldByName('Activated_bol').AsBoolean;
    vSupplier     :=  '[' + FieldByName('OrderNo_str').AsString + '] ' +
                      FieldByName('Supplier_Str').AsString;
    vOrderID      :=  FieldByName('OrderNo_ID').AsFloat;
    vDescription  :=  'because it has already been posted!';

    if vWasPosted then
      begin
      MessageDlg('Cannot Delete Purchase Order' + #13 + vSupplier + #13 + vDescription ,mtError	, [mbOK],0);
      end else

      begin
      if MessageDlg('DELETE PURCHASE ORDER?' + #13 + vSupplier, mtWarning, [mbYes, mbNo],0) = mrYes then
        begin

        with ADOCommand_General do
          for i:=0 to 3 do
            begin
            case i of
              0: CommandText := 'DELETE TblOrderRequisitionList WHERE (((TblOrderRequisitionList.OrderNo_ID)=' + FloatToStr(vOrderID) + '));';
              1: CommandText := 'DELETE TblOrderItems WHERE (((TblOrderItems.OrderNo_ID)=' + FloatToStr(vOrderID) + '));';
              2: CommandText := 'DELETE TblOrderEditHistory WHERE (((TblOrderEditHistory.OrderNo_ID)=' + FloatToStr(vOrderID) + '));';
              3: CommandText := 'DELETE TblOrder WHERE (((TblOrder.OrderNo_ID)=' + FloatToStr(vOrderID) + '));';
              end; //case
            Execute;
            end; //  for i:=0 to 3 do
        stpOrderList.Close;
        stpOrderList.Open;
        end; // messagedlg

      end; // vWasPosted


    end;


end;


{
procedure TPurchaseOrderDM.SetSystemStoreStr;
begin


  with stpStockControlOrder do
    if Active then
      if not FieldByName('Activated_bol').AsBoolean then
        if stpSystemWharehouse.Active then
          if stpSystemWharehouse.RecordCount > 0 then
            begin
            if not (State in [dsEdit, dsInsert]) then Edit;
            FieldByName('SystemStore_str').AsString   :=
              stpSystemWharehouse.fieldByName('Description').AsString;
            Post;
            end;
end;


procedure TPurchaseOrderDM.SetSupplierStr;
begin

  with stpStockControlOrder do
    if Active then
      if not FieldByName('Activated_bol').AsBoolean then
        if tblOrderListUniqueSuppliers.Active then
          if tblOrderListUniqueSuppliers.RecordCount > 0 then
            begin
            if not (State in [dsEdit, dsInsert]) then Edit;
            FieldByName('Supplier_str').AsString      :=
              tblOrderListUniqueSuppliers.FieldByName('Name_str').AsString + ' [' +
              tblOrderListUniqueSuppliers.FieldByName('Code_str').AsString + ']';
            Post;
            end;

end;
}

procedure TOrderDM.SetDateParams(DateStart, DateEnd: TDateTime;OpenTable : boolean);
begin

  with stpOrderList do
    begin
    Close;
    Parameters.ParamByName('Startdate').Value   := DateStart;
    Parameters.ParamByName('EndDate').Value     := DateEnd;
    Prepared := True;
    if OpenTable then Open;
    end;

end;

//Bug Issue 23
function TOrderDM.GetSupplierDescription(SupplierID : integer): string;
var
 sDescription: string;
begin
 sDescription := '';

 with qrySupplierDescription do
  begin
  Close;
  Parameters.ParamByName('supplierID').Value := SupplierID;
  Open;
  if RecordCount > 0 then
   sDescription := FieldByname('Description').AsString;
  Close;
  end;

 Result := sDescription;

end;

//Bug Issue 23
function TOrderDM.GetAccountDescription(AccountID: integer): string;
var
 sDescription: string;
begin
 sDescription := '';

 with qryAccountDescription do
  begin
  Close;
  Parameters.ParamByName('accountID').Value := AccountID;
  Open;
  if RecordCount > 0 then
   sDescription := FieldByname('Description').AsString;
  Close;
  end;

 Result := sDescription;    
end;

procedure TOrderDM.stpStockControlOrderBeforePost(
  DataSet: TDataSet);
var
  vsUserStr :string;
  vdUserID  :double;
  vAllItemComplete, vIsRxCosting :boolean;

  vADOTemp01 :TADOStoredProc;
  vADOTemp02,vADOTemp03 :TADOQuery;

begin

  vIsRxCosting := False;
  if Assigned(MainDM)then vIsRxCosting := MainDM.IsRxCosting;

  vADOTemp01  := stpStockControlOrderItems;
  vADOTemp02  := tblOrderListUniqueSuppliers;
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

    with stpStockControlOrderItemsComplete do
      begin
      Close;
      Parameters.ParamByName('OrderID').Value := stpStockControlOrder.FieldByName('OrderNo_ID').AsFloat;
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
        //Commented out for Bug 23 SM
        //FieldByName('Supplier_Str').AsString      := vADOTemp02.FieldByName('Name_str').AsString + ' [' + vADOTemp02.FieldByName('Code_str').AsString + ']';// Bug Issue 23 SM
        if (FieldByName('Supplier_ID').AsInteger > 0) then
         FieldByName('Supplier_Str').AsString := GetSupplierDescription(FieldByName('Supplier_ID').AsInteger);

        if (FieldByName('SystemStore_ID').AsInteger > 0) then
         FieldByName('SystemStore_str').AsString := GetAccountDescription(FieldByName('SystemStore_ID').AsInteger);
        end;
        

    end;

  if not vIsRxCosting then
    begin
    if vADOTemp01.Active then
      DataSet.FieldByName('ItemsNo_int').AsInteger :=
        vADOTemp01.RecordCount;

    with Dataset do
      begin
      if FieldByName('Charges_mon').IsNull then
        FieldByName('Charges_mon').AsCurrency := 0;

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

      end;
    end;

end;

procedure TOrderDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer ); (*:::::::::START:*)(*===========================================*)
                                                                                (*procedure:AddEditHistory-------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vOrdID, vOrdItemID  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)


  vOrdID      := 0;
  vOrdItemID  := 0;

  with stpOrderList do
    if Active then
      if RecordCount > 0 then                                                   //
        vOrdID := FieldByName('OrderNo_ID').AsFloat; // Get current ID's for Req items

  with stpStockControlOrder do                                            // Use same table as curently being edited
    if Active then
      vOrdID := FieldByName('OrderNo_ID').AsFloat;                           // Get current ID's for Req items



  with stpStockControlOrderItems do
    if Active then
      if RecordCount > 0 then
        vOrdItemID := FieldByName('OrderItemsNo_ID').AsFloat;



//  if Assigned(RxSolutionFrm) then
    with stpOrderEditHistory do
        begin

        if not Active then
          begin
          Close;
          Prepared := False;
          Parameters.ParamByName('ReceiptID').Value := vOrdID;                    // All stored procs have same param name
          Prepared := True;                                                         // Need to prepare for the qry to return result set
          Open;        // has to be done this way. cannot close a table and hold the transaction.
          end;

        Append;
        FieldByname('OrderNo_ID').AsFloat       := vOrdID;
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
            FieldByName('Item_ID').AsFloat          := vOrdItemID;
            end;
          ADD_ORD :
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



procedure TOrderDM.MarkAllItemsAsComplete(pFrom:integer);
var
  pID :double;
  CurRec :TBookMark;


begin

  case pFrom of
    0:
      with stpOrdersMarkAsComplete do
        begin
        pID := stpOrderList.FieldByName('OrderNo_ID').AsFloat;
        Parameters.ParamByName('OrderID').Value := pID;                         // All stored procs have same param name
        Prepared := True;                                                       // Need to prepare for the qry to return result set
        ExecProc;                                                                   // has to be done this way. cannot close a table and hold the transaction.
        if not (stpOrderList.State in [dsEdit, dsInsert]) then stpOrderList.Edit;
        stpOrderList.FieldByName('ItemsComplete_bol').AsBoolean :=  True;
        stpOrderList.Post;
        end;
    1:
      with stpStockControlOrderItems do
        try
        DisableControls;
        CurRec := GetBookMark;
        First;
        while not EOF do
          begin
          Edit;
          FieldByName('Completed_bol').AsBoolean := True;
          Post;
          Next;
          end;
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

procedure TOrderDM.DeleteOrdItem(pItemID:double);
begin

  with ADOCommand_General do
    begin
    AddEditHistory(HST_DEL, '-', ADD_ORD);
    CommandText := 'DELETE TblOrderItems WHERE (((TblOrderItems.OrderItemsNo_ID)=' + FloatToStr(pItemID) + '));';
    Execute;
    end;
end;



procedure TOrderDM.OpenOnOrder(pID: double);
begin
  with stpProductCurrentOnOrder do
    begin
    Close;
    Parameters.ParamByName('@ProductID').Value := pID;          // All stored procs have same param name
    Open;
    end;
end;

procedure TOrderDM.PrinterSelector(reportdoc: TppReport; printername : string; showDialog: boolean);
begin
 //Get latest printer settings
 RxSolutionFrm.LoadPrinterSettings;

 if RxSolutionFrm.CheckUsePrnt then
   begin
   reportdoc.PrinterSetup.PrinterName := printername;
   reportdoc.DeviceType := 'Printer';
   end
  else
   begin
   reportdoc.DeviceType := 'Screen';
   end;
  reportdoc.ShowPrintDialog := showDialog;
  reportdoc.Print;
  
end;

procedure TOrderDM.stpStockControlOrderItemsAfterOpen(DataSet: TDataSet);
begin
 with qryTotalQtyonHand do
  begin
  Close;
  Open;
  end;

 with qryOnOrder do
  begin
  Close;
  Open;
  end; 

end;

procedure TOrderDM.CreateTextFileOrderReport;
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
 OrderNoStr        : String;
begin

 //Bug Issue 721: SM
  with stpStockControlOrderItems do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

  //Bug Issue 721: SM
  with stpStockControlOrder do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

  //******* SM 15 Sep 2014
 //******* Check if there are Blank NSN product in the order and warn user if there are.
 if BlankNSNsICNsPresent then
  MessageDlg('There are products with blank ICN numbers in the order.', mtWarning,[mbOk], 0);

 FOrderNo := stpStockControlOrderItems.FieldByName('OrderNo_ID').AsFloat;
 with stpOrderListReport do //need parameters
  begin
  Close;
  Parameters.ParamByName('OrdID').Value := FOrderNo;
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

        Depot_Code      := CodeMyString(Copy(Trim(FieldByName('Code_str').AsString), 1, 8), 8);
       //if budget model then use demander account
        if prvIsBudgetModel then
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderAccount_str').AsString), 1, 8), 8) //Facility
        else
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderCode_str').AsString), 1, 8), 8); //Facility
        OrderNoStr      := Copy(Trim(FieldByName('OrderNo_str').AsString), Length((FieldByName('OrderNo_str').AsString))-3, 4);       //TblOrder.OrderNo_str
        Local_Dem_No    := CodeMyString(Trim(OrderNoStr), 10);
        Objective_Code  := CodeMyString(Copy(Trim(FieldByName('Account_str').AsString), 1, 6), 6);       //TblSystemAccounts.Account_str
        ICN_str         := CodeMyString(Copy(Trim(FieldByName('ICN_str').AsString), 1, 9), 9);           //TblProductPackSize.ICN_str
        Demand_Qty      := CodeMyString(FieldByName('QtyOrdered_int').AsString, 10);                    //SumQtyOrder_int //must format this one...
        FMS_Code        := '    ';
        Recurr_Ind      := 'Y';
        Use_Loc_Dem_No  := 'Y';


        DataStr := Depot_Code+ Dem_Code + Local_Dem_No + Objective_Code +
          ICN_str + Demand_Qty + FMS_Code +  Recurr_Ind + Use_Loc_Dem_No;
        Writeln(F2, DataStr) ;
      end;
      Next;
    end;
   CloseFile(F2);
   MessageDlg('RDM file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
   AddEditHistory(HST_FIL, 'RDM FILE ' + SaveDialog1.FileName, ADD_ITEM);
  Close;
  end;

  end;
end;



function TOrderDM.CodeMyString(mystring: string; vlength: integer): string;
begin

 if (Length(mystring) >= vlength) then
  begin
  mystring := Copy(mystring, (Length(mystring) - vlength) + 1 ,vlength);
  end
 else
  while Length(mystring) < vlength do
   begin
   mystring :=  mystring +' ';
   end;

 Result:= mystring;

end;


procedure TOrderDM.MakeRecordAvailable;
begin
  with stpStockControlOrder do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;
  end;
end;

function TOrderDM.IsRecordLocked : Boolean;
begin
 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('OrderNo_ID').Value := stpOrderList.FieldByName('OrderNo_ID').AsInteger;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;
end;




procedure TOrderDM.stpStockControlOrderDemander_IDChange(Sender: TField);
begin
 //update Demander Code and Name
 with stpStockControlOrder do
  begin
  FieldByName('DemanderName_str').AsString := qryDemanders.FieldByName('Name_str').AsString;
  FieldByName('DemanderAccount_str').AsString := qryDemanders.FieldByName('Account_str').AsString;
  end;

end;

procedure TOrderDM.UnLockRecord;
begin
  with stpOrderList do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;

  Close;
  Open;
  end;
end;

procedure TOrderDM.tblOrderListUniqueSuppliersFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);

var
  vCurDemander  :double;

begin

  with Dataset do
    begin
    vCurDemander := FieldByName('Supplier_ID').AsFloat;
    Accept := GetAccessLevel(vCurDemander) > USER_NONE;
    end;
end;
procedure TOrderDM.stpStockControlOrderSystemStore_IDChange(
  Sender: TField);
begin
 with stpStockControlOrder do
  begin
  if (FieldByName('SystemStore_ID').asInteger > 0) then
   FieldByName('SystemStore_str').AsString   := GetAccountDescription(FieldByName('SystemStore_ID').asInteger);
  end;

end;

procedure TOrderDM.stpStockControlOrderSupplier_IDChange(Sender: TField);
begin
with stpStockControlOrder do
  begin
  if (FieldByName('Supplier_ID').asInteger > 0) then
   FieldByName('Supplier_str').AsString   := GetSupplierDescription(FieldByName('Supplier_ID').asInteger);
  end;
end;

procedure TOrderDM.CreateTextFileOrderPMPUReport;
var
 F1, F2  : TextFile;
 DataStr : String;
 Depot_Code,
 Dem_Code,
 Local_Dem_No,
 Objective_Code,
 NSN_str,
 Demand_Qty,
 FMS_Code,
 Recurr_Ind,
 Use_Loc_Dem_No,
 OrderNoStr,
 OrderedBy,
 OrderedDate,
 AuthorisedBy,
 AuthorisedDate,
 OrderRef,
 VoucherNo_str,
 SOH : String;
begin

 //Bug Issue 721: SM
  with stpStockControlOrderItems do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

 //Bug Issue 721: SM
  with stpStockControlOrder do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   OrderedBy          := CodeMyString(Copy(FieldByName('OrderedBy_str').AsString, 0, Pos('(', FieldByName('OrderedBy_str').AsString) - 1), 50);
   OrderedDate        := FormatDateTime('dd/mm/yyyy', FieldByName('Ordered_dat').AsDateTime) + ' ';
   AuthorisedBy       := CodeMyString(Copy(FieldByName('AuthorizedBy_str').AsString, 0, Pos('(', FieldByName('AuthorizedBy_str').AsString) - 1), 50);
   AuthorisedDate     := FormatDateTime('dd/mm/yyyy', FieldByName('Authorized_dat').AsDateTime) + ' ';
   OrderRef           := Copy(Trim(FieldByName('OrderNo_str').AsString), Length(FieldByName('OrderNo_str').AsString)-4, 5);
   VoucherNo_str      := CodeMyString(FieldByName('VoucherNo_str').AsString, 10);
   end;
  //end of Bug 721

 //******* SM 15 Sep 2014
 //******* Check if there are Blank NSN product in the order and warn user if there are.
 if BlankNSNsICNsPresent then
  MessageDlg('There are products with blank NSN numbers in the order.', mtWarning,[mbOk], 0);

 FOrderNo := stpStockControlOrderItems.FieldByName('OrderNo_ID').AsFloat;
 with stpOrderListReport do //need parameters
  begin
  Close;
  Parameters.ParamByName('OrdID').Value := FOrderNo;
  Open;
  First;
  //******  Facility name and order reference (last 4 digits) 
  SaveDialog1.FileName := Copy(Trim(FieldByName('DemanderName_str').AsString), 0, 15) +  OrderRef;

  if SaveDialog1.Execute then begin
   AssignFile(F2, SaveDialog1.Filename);
   Rewrite(F2);
   while not Eof do
    begin
      if (Trim(FieldByName('NSN_str').AsString) <> '') then
      begin
      //Data string per line should have the following format
      //1234567812345678123456789012345612345678912345678901234YY12-5012345678

        Depot_Code      := CodeMyString(Copy(Trim(FieldByName('Code_str').AsString), 1, 8), 8);
       //if budget model then use demander account
        if prvIsBudgetModel then
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderAccount_str').AsString), 1, 8), 8) //Facility
        else
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderCode_str').AsString), 1, 8), 8); //Facility
        OrderNoStr      := Copy(Trim(FieldByName('OrderNo_str').AsString), Length((FieldByName('OrderNo_str').AsString))-3, 4);       //TblOrder.OrderNo_str
        Local_Dem_No    := CodeMyString(Trim(FieldByName('VoucherNo_str').AsString), 10); //
        Objective_Code  := CodeMyString(Copy(Trim(FieldByName('Account_str').AsString), 1, 6), 6);       //TblSystemAccounts.Account_str
        NSN_str         := CodeMyString(Copy(Trim(FieldByName('NSN_str').AsString), 1, 9), 9);           //TblProductPackSize.ICN_str
        Demand_Qty      := CodeMyString(FieldByName('QtyOrdered_int').AsString, 10);                    //SumQtyOrder_int //must format this one...
        FMS_Code        := '    ';
        Recurr_Ind      := 'Y';
        Use_Loc_Dem_No  := 'Y';
        SOH             := CodeMyString(FieldByName('QtyOnHand_int').AsString, 10);

        DataStr := Depot_Code+ Dem_Code + Local_Dem_No + Objective_Code +
          NSN_str + Demand_Qty + FMS_Code +  Recurr_Ind + Use_Loc_Dem_No + OrderedBy + OrderedDate + AuthorisedBy + AuthorisedDate + SOH;     //Need to add Stock on Hand here
        Writeln(F2, DataStr) ;
      end;
      Next;
    end;
   CloseFile(F2);
   MessageDlg('PMPU file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
   AddEditHistory(HST_FIL, 'PMPU FILE ' + SaveDialog1.FileName, ADD_ITEM);
  Close;
  end; 
  end;
end;

procedure TOrderDM.CreateTextFileOrderReportGP;
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
 OrderNoStr        : String;

begin

 //Bug Issue 721: SM
  with stpStockControlOrderItems do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

  //Bug Issue 721: SM
  with stpStockControlOrder do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
 //end of Bug 721

 //******* SM 15 Sep 2014
 //******* Check if there are Blank NSN product in the order and warn user if there are.
 if BlankNSNsICNsPresent then
  MessageDlg('There are products with blank NSN numbers in the order.', mtWarning,[mbOk], 0);

 FOrderNo := stpStockControlOrderItems.FieldByName('OrderNo_ID').AsFloat;
 with stpOrderListReport do //need parameters
  begin
  Close;
  Parameters.ParamByName('OrdID').Value := FOrderNo;
  Open;
  First;
  if SaveDialog1.Execute then begin
   //SaveDialog1.FileName := 'ORDER_'+Trim(FieldByName('OrderNo_str').AsString)+'.txt';
   AssignFile(F2, SaveDialog1.Filename);
   Rewrite(F2);
   while not Eof do
    begin
      if (Trim(FieldByName('NSN_str').AsString) <> '') then
      begin
      //Data string per line should have the following format
      //1234567812345678123456789012345612345678912345678901234YY

        Depot_Code      := CodeMyString(Copy(Trim(FieldByName('Code_str').AsString), 1, 8), 8);
       //if budget model then use demander account
        if prvIsBudgetModel then
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderAccount_str').AsString), 1, 8), 8) //Facility
        else
         Dem_Code        := CodeMyString(Copy(Trim(FieldByName('DemanderCode_str').AsString), 1, 8), 8); //Facility
        OrderNoStr      := Copy(Trim(FieldByName('OrderNo_str').AsString), Length((FieldByName('OrderNo_str').AsString))-3, 4);       //TblOrder.OrderNo_str
        Local_Dem_No    := CodeMyString(Trim(FieldByName('VoucherNo_str').AsString), 10); //
        Objective_Code  := CodeMyString(Copy(Trim(FieldByName('Account_str').AsString), 1, 6), 6);       //TblSystemAccounts.Account_str
        ICN_str         := CodeMyString(Copy(Trim(FieldByName('NSN_str').AsString), 1, 9), 9);           //TblProductPackSize.ICN_str
        Demand_Qty      := CodeMyString(FieldByName('QtyOrdered_int').AsString, 10);                    //SumQtyOrder_int //must format this one...
        FMS_Code        := '    ';
        Recurr_Ind      := 'Y';
        Use_Loc_Dem_No  := 'Y';


        DataStr := Depot_Code+ Dem_Code + Local_Dem_No + Objective_Code +
          ICN_str + Demand_Qty + FMS_Code +  Recurr_Ind + Use_Loc_Dem_No;
        Writeln(F2, DataStr) ;
      end;
      Next;
    end;
   CloseFile(F2);
   MessageDlg('RDM file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
   AddEditHistory(HST_FIL, 'RDM FILE ' + SaveDialog1.FileName, ADD_ITEM);
  Close;
  end;

  end;
end;

//****** SM 15 September 2014
//****** This function returns value TRUE if there is at least one product item that has a blank NSN or ICN number.
function TOrderDM.BlankNSNsICNsPresent: Boolean;
begin

 with qryBlankNSNICNPresent do
  begin
  Close;
  Parameters.ParamByName('OrderNo_Id').Value := stpStockControlOrderItems.FieldByName('OrderNo_ID').AsFloat;
  Open;

  if RecordCount > 0 then
   Result := True
  else
   Result := False;
  end;

end;

procedure TOrderDM.AuthoriseOrder;
begin
 //Asssign authorsed by to user logged on
 //Assigned authorised by date to today
 with stpStockControlOrder do
  begin
  if (not (State in [dsEdit])) then
   Edit;

  FieldByName('AuthorizedBy_str').AsString      := FUserNamewithPosition;
  FieldByName('Authorized_dat').AsDateTime      := Date();
  end;
 AddEditHistory(HST_AUT, 'ORDER AUTHORISED BY: ' + FUserNamewithPosition, ADD_ITEM);
 
end;

end.



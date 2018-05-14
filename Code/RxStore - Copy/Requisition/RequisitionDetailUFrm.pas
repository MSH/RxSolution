unit RequisitionDetailUFrm;
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

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Menus, DBActns, ActnList, StdCtrls, DBCtrls, ExtCtrls,
  ADODB, DB, ImgList,

  RzDBCmbo, dxExEdtr, RzCommon, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls,
  myChkBox, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxCntner, RzBmpBtn, dxEdLib, dxDBELib, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, ElPopBtn, dxPageControl, dxEditor, wwdbdatetimepicker,
  wwdblook, Mask, ppModule, raCodMod, Grids, DBGrids, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ppParameter, PrjConst;


  
const
 DBGROWHEIGHT = 18;


  REQ_GETACCESSLEVEL          = 0;
  REQ_GETPRODUCT                = 1;
  DELETECURRENTREITEM_TRUE  = 2;
  DELETEALLREITEMS          = 3;
  ADDREQITEMLIST_AUTHORISEDITEMS = 4;
  ADDREQITEMLIST_EDL = 5;
  SETREQNUMBER = 6;

  VALIDATE_POSTING           = 9;
//  SET_SYSTEMSTORE_STR        = 10;
//  SET_DEMANDER_STR           = 11;

  ADDREQITEMLIST_SINGLE = 0;
  UPDATEREQTOTALS = 7;
  ADDREQITEMLIST_BACKORDER = 12;
  UPDATEDEMANDER_USERS = 13;


type

  TRequisitionDetailFrm = class(TForm)
    ActionList1: TActionList;
    atnItemsChangeProduct: TAction;
    atnItemsDelete: TAction;
    atnItemsDeleteAll: TAction;
    atnItemsAdd_FromAuthorisedDemanders: TAction;
    atnItemsAdd_InstitutionalEDL: TAction;
    PopupMenu1: TPopupMenu;
    LoadDemandersauthorisedItems1: TMenuItem;
    LoadProvincialEDLProducts1: TMenuItem;
    N1: TMenuItem;
    ChangeProduct1: TMenuItem;
    N2: TMenuItem;
    DeletecurrentItem1: TMenuItem;
    Deleteallitems1: TMenuItem;
    atnItemsFirst: TDataSetFirst;
    atnItemsPrior: TDataSetPrior;
    atnItemsNext: TDataSetNext;
    atnItemsLast: TDataSetLast;
    atnUpdateRequisitionNo: TAction;
    atnItemsAdd_Single: TAction;
    atnRequisition_UpdateDemanderUsers: TAction;
    Additem1: TMenuItem;
    N3: TMenuItem;
    Refresh1: TMenuItem;
    atnItemsAdd_FromBackOrders: TAction;
    AddDemanderaddBackorders1: TMenuItem;
    atnRequisition_ValidatePost: TAction;
    atnItemsAdd_BackOrder: TAction;
    dxEditStyleController1: TdxEditStyleController;
    dxEditStyle_Flat: TdxEditStyleController;
    atnItems_Save: TDataSetPost;
    atnItems_Delete: TDataSetCancel;
    ImageList1: TImageList;
    rbpRequisition: TppReport;
    ppDBPipeline1: TppDBPipeline;
    atnItemsMarkAllAsComplete: TAction;
    N4: TMenuItem;
    Markallascomplete1: TMenuItem;
    atnColDisplays: TAction;
    ppTitleBand1: TppTitleBand;
    ppImage1: TppImage;
    ppDBText2: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText37: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText35: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText23: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppDBText50: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppImage2: TppImage;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDBText11: TppDBText;
    ppLabel21: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppImage3: TppImage;
    ppDBText22: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText18: TppDBText;
    ppDBText58: TppDBText;
    ppDBText66: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    RzFrameController1: TRzFrameController;
    N5: TMenuItem;
    AutomateIssuesfromRequisitionquantities1: TMenuItem;
    PopupMenu2: TPopupMenu;
    PrintRequisition1: TMenuItem;
    PrintPicklist1: TMenuItem;
    ppRequisitionPickList: TppReport;
    atnAddAnotherBatchItem: TAction;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    atnProductBatchSelect: TAction;
    ppParameterList1: TppParameterList;
    ppTitleBand3: TppTitleBand;
    ppImage7: TppImage;
    ppDBText30: TppDBText;
    ppDBText52: TppDBText;
    ppDBText57: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLabel60: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBText79: TppDBText;
    ppLabel61: TppLabel;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel78: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppShape1: TppShape;
    ppDBText90: TppDBText;
    ppLine3: TppLine;
    ppVariable3: TppVariable;
    ppDBText91: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppImage8: TppImage;
    ppSystemVariable3: TppSystemVariable;
    ppLabel79: TppLabel;
    ppDBText92: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel80: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppImage9: TppImage;
    ppDBText93: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppLabel81: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppVariable4: TppVariable;
    raCodeModule2: TraCodeModule;
    ppPickListWithBatches: TppReport;
    ppTitleBand2: TppTitleBand;
    ppImage4: TppImage;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel28: TppLabel;
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
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText46: TppDBText;
    ppLabel38: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBText47: TppDBText;
    ppLabel39: TppLabel;
    ppDBText51: TppDBText;
    ppDBText53: TppDBText;
    ppLabel40: TppLabel;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppShape2: TppShape;
    ppDBText64: TppDBText;
    ppLine2: TppLine;
    ppDBText65: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppImage5: TppImage;
    ppSystemVariable6: TppSystemVariable;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel82: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppImage6: TppImage;
    ppDBText95: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppLabel83: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel84: TppLabel;
    ppDBText96: TppDBText;
    PrintPickListWithBatches1: TMenuItem;
    ppDBPipeline3: TppDBPipeline;
    ppLabel62: TppLabel;
    ppLabel42: TppLabel;
    ppShape3: TppShape;
    ppLabel85: TppLabel;
    ppShape4: TppShape;
    ppLabel86: TppLabel;
    ppShape5: TppShape;
    ppDBText97: TppDBText;
    ppLabel87: TppLabel;
    ppDBText98: TppDBText;
    ppLabel88: TppLabel;
    ppDBText99: TppDBText;
    ppLabel89: TppLabel;
    atnUnlockRequisition: TAction;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel41: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRequisition_byDescrip: TppReport;
    ppTitleBand4: TppTitleBand;
    ppImage10: TppImage;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText122: TppDBText;
    ppLabel105: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppLine4: TppLine;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppImage11: TppImage;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDBText132: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppShape6: TppShape;
    ppSummaryBand4: TppSummaryBand;
    ppImage12: TppImage;
    ppDBText133: TppDBText;
    ppDBCalc12: TppDBCalc;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    PrintRequisitionbyDescription1: TMenuItem;
    atnUpdateVATforInvoice: TAction;
    N6: TMenuItem;
    UpdateVATforallitems1: TMenuItem;
    atnAddProductBatches: TAction;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText100: TppDBText;
    atnCreateRDMTextFile: TAction;
    AddBatchAnotherforSelecteditem1: TMenuItem;
    atnCaptureBarcodes: TAction;
    atnCaptureBarcodes1: TMenuItem;
    ppLabel66: TppLabel;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel77: TppLabel;
    ppShape9: TppShape;
    ppLabel119: TppLabel;
    ppShape10: TppShape;
    ppLabel120: TppLabel;
    ppDBText138: TppDBText;
    ppDBText137: TppDBText;
    pnlRequisitionHeaderBackground: TPanel;
    Label4: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label51: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    Label79: TLabel;
    Label3: TLabel;
    dbtRequisition_dat: TDBText;
    dbtPosted: TDBText;
    CountOfRequisitionItems_ID: TDBText;
    dbtCountOfRequisitionItems: TDBText;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbtActivated_dat: TDBText;
    Label11: TLabel;
    dbtDemanderDisplay: TDBText;
    dbtSystemStore: TDBText;
    lblSupplier: TLabel;
    dbtActivatedBy_str: TDBText;
    dbeVoucherNo_str: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBReceivedBy_str: TwwDBLookupCombo;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBReceivedBy_dat: TwwDBDateTimePicker;
    Panel1: TPanel;
    dbtProductCode: TDBText;
    lblIssued: TLabel;
    btnPost: TButton;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxeCharges_mon: TdxDBCurrencyEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dbcActivated_bol: TDBCheckBox;
    RzDemanderCode: TRzDBLookupComboBox;
    RzSystemStoreCode: TRzDBLookupComboBox;
    RzSystemStoreName: TRzDBLookupComboBox;
    cmdSupplierCode: TRzDBLookupComboBox;
    cmdSupplierName: TRzDBLookupComboBox;
    pnlStatusBar: TPanel;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    dxTbctrlRequistionDetail: TdxPageControl;
    dxTbsRequisition_Items: TdxTabSheet;
    dxTbctrlRequistionDetail_Display: TdxPageControl;
    dxTabNormal: TdxTabSheet;
    Panel3: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton30: TElSpeedButton;
    ElSpeedButton29: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    dxDBRequisitions_Items: TdxDBGrid;
    dxDBRequisitions_ItemsProductCode_str: TdxDBGridLookupColumn;
    dxDBRequisitions_ItemsICN_str: TdxDBGridColumn;
    dxDBRequisitions_ItemsECN_str: TdxDBGridColumn;
    dxDBRequisitions_ItemsNSN_str: TdxDBGridColumn;
    dxDBRequisitions_ItemsDescription_str: TdxDBGridLookupColumn;
    dxDBRequisitions_ItemsQtyAuthorized_int: TdxDBGridMaskColumn;
    dxDBRequisitions_ItemsQtyDemanderOnHand_int: TdxDBGridMaskColumn;
    dxDBRequisitions_ItemsAvailable: TdxDBGridColumn;
    dxDBRequisitions_ItemsQtyOrdered_int: TdxDBGridMaskColumn;
    dxDBRequisitions_ItemsQtyIssued_int: TdxDBGridMaskColumn;
    dxDBRequisitions_ItemsMarkUp_dbl: TdxDBGridColumn;
    dxDBRequisitions_ItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dxDBRequisitions_ItemsCal_PackCost: TdxDBGridCurrencyColumn;
    dxDBRequisitions_ItemsQtyApproved_int: TdxDBGridColumn;
    dxDBRequisitions_ItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    dxDBRequisitions_ItemsExtendedCostPot_mon: TdxDBGridCurrencyColumn;
    dxDBRequisitions_ItemsCompleted_bol: TdxDBGridCheckColumn;
    dxDBRequisitions_ItemsGroup2_str: TdxDBGridColumn;
    dxDBRequisitions_ItemsGroup1_str: TdxDBGridColumn;
    dxDBRequisitions_ItemsBatchNo: TdxDBGridColumn;
    dxDBRequisitions_ItemsExpiryDate: TdxDBGridDateColumn;
    dxDBRequisitions_ItemsShippingPack: TdxDBGridColumn;
    dxDBRequisitions_ItemsBin_str: TdxDBGridColumn;
    dxTabRxCosting: TdxTabSheet;
    Panel5: TPanel;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    Shape1: TShape;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton17: TElSpeedButton;
    Label10: TLabel;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBEdit1: TDBEdit;
    dxDBRequisitions_Items_RxCosting: TdxDBGrid;
    dxDBCosting_itemsProductCode_str: TdxDBGridLookupColumn;
    dxDBCosting_itemsICN_str: TdxDBGridColumn;
    dxDBCosting_itemsDescription_str: TdxDBGridLookupColumn;
    dxDBCosting_itemsQtyAuthorized_int: TdxDBGridMaskColumn;
    dxDBCosting_itemsQtyDemanderOnHand_int: TdxDBGridMaskColumn;
    dxDBCosting_itemsPrd_qtyOnHand: TdxDBGridLookupColumn;
    dxDBCosting_itemsQtyCostingRequest_int: TdxDBGridColumn;
    dxDBCosting_itemsQtyOrdered_int: TdxDBGridMaskColumn;
    dxDBCosting_itemsQtyIssued_int: TdxDBGridMaskColumn;
    dxDBCosting_itemsPackCost_mon: TdxDBGridCurrencyColumn;
    dxDBCosting_itemsCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBCosting_itemsExtendedCostPot_mon: TdxDBGridCurrencyColumn;
    dxDBCosting_itemsCompleted_bol: TdxDBGridCheckColumn;
    dxDBCosting_itemsGroup1_str: TdxDBGridColumn;
    dxDBCosting_itemsGroup2_str: TdxDBGridColumn;
    dxDBCosting_itemsECN_str: TdxDBGridColumn;
    dxDBCosting_itemsNSN_str: TdxDBGridColumn;
    dxTbsRequisition_Notes: TdxTabSheet;
    dxDBMmRemarks: TdxDBMemo;
    dxTbsRequisition_History: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Date_dat: TdxDBGridColumn;
    dxDBGrid1Type_str: TdxDBGridColumn;
    dxDBGrid1Description_str: TdxDBGridColumn;
    dxDBGrid1UserName_str: TdxDBGridColumn;
    RzDemanderName: TRzDBLookupComboBox;
    btnPrint: TRzBmpButton;
    btnClose: TButton;
    Label8: TLabel;
    Label9: TLabel;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbeCharges_monExit(Sender: TObject);
    procedure atnItemsAdd_FromBackOrdersExecute(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SetRequisitionDates(Sender: TObject);

    procedure Actions_ExecuteEvent(Sender: TObject);
    procedure dxDBRequisitions_ItemsChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure dxTbctrlRequistionDetailChange(Sender: TObject);
    procedure rbpRequisitionPreviewFormCreate(Sender: TObject);
    procedure atnItemsMarkAllAsCompleteExecute(Sender: TObject);
    procedure atnColDisplaysExecute(Sender: TObject);
    procedure ppImage3DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure PrintRequisition1Click(Sender: TObject);
    procedure PrintPicklist1Click(Sender: TObject);
    procedure atnAddAnotherBatchItemExecute(Sender: TObject);
    procedure atnProductBatchSelectExecute(Sender: TObject);
    procedure PrintPickListWithBatches1Click(Sender: TObject);
    procedure atnUnlockRequisitionExecute(Sender: TObject);
    procedure PrintRequisitionbyDescription1Click(Sender: TObject);
    procedure UpdateVATforallitems1Click(Sender: TObject);
    procedure atnUpdateVATforInvoiceExecute(Sender: TObject);
    procedure atnAddProductBatchesExecute(Sender: TObject);
    procedure dxDBRequisitions_ItemsDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure atnCreateRDMTextFileExecute(Sender: TObject);
    procedure atnCaptureBarcodesExecute(Sender: TObject);

  private
    { Private declarations }
    vLoading : boolean;
    vIsRxCosting :boolean;

    procedure SetUpRequisitionDateSequence;
    procedure PageDataSet(PageSize: integer);

    procedure Actions_ApplyTags;
    procedure Actions_Execute(pActionNumber: integer);


  public
    { Public declarations }
    procedure SetPageVisibility;

  end;

  TRequisitionEditor = class(TObject)

  public
    function RequestStock : Boolean;
//    function IssueStock : Boolean;
  end;

implementation

uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,

  {$ENDIF}

  MainUDM,
  MyApplicationUtilities,
  RequisitionUDM, ProductBatchSelctUFrm, RequisitionBarCodeUFrm;

{$R *.dfm}


function TRequisitionEditor.RequestStock: Boolean;
var
  RequisitionDetailFrm: TRequisitionDetailFrm;
begin

  Result := False;
  RequisitionDetailFrm := TRequisitionDetailFrm.Create(Application);
  with RequisitionDetailFrm do
    try
    SetPageVisibility;
    if ShowModal = mrOK then Result := True;
    finally
    Free;
    end;

end;


{ TRequisitionDetailFrm }

procedure TRequisitionDetailFrm.SetPageVisibility;
var
  vAccessLevel  :integer;
  i:integer;

  prvIsReqLocked, prvIsReqPosted, prvIsBudgetModel : boolean;

begin

  prvIsReqLocked  := not RequisitionDM.IsRequisitionAvailable;
  prvIsReqPosted  := dbtPosted.Field.AsBoolean;
  prvIsBudgetModel := MainDM.IsRequisitionManagementOnly;

  vAccessLevel := 0;
  if Assigned(RequisitionDM) then
    with RequisitionDM do
      vAccessLevel := GetCurrentAccess;

  if not prvIsReqLocked then
    begin

    dbtActivatedBy_str.Visible  := prvIsReqPosted;
    dbtActivated_dat.Visible    := prvIsReqPosted;
    btnPost.Visible             := (not prvIsReqPosted) AND (vAccessLevel > USER_USER);
    dbtSystemStore.Visible      := prvIsReqPosted;
    dbtDemanderDisplay.Visible  := prvIsReqPosted;
    RzSystemStoreCode.Visible   := not prvIsReqPosted;
    RzSystemStoreName.Visible   := not prvIsReqPosted;
    RzDemanderCode.Visible      := not prvIsReqPosted;
    RzDemanderName.Visible      := not prvIsReqPosted;
    lblIssued.Visible           := prvIsReqPosted;
    lblIssued.Caption           := SPosted;

    //pnlRequisitionHeaderBackground.Enabled        := not prvIsReqPosted; //need to amend SM 01/04/2008
    
    dbeVoucherNo_str.Enabled    := not prvIsReqPosted;
    dxeCharges_mon.Enabled      := not prvIsReqPosted;
    //Look up combos
    wwDBLookupCombo1.Enabled    := not prvIsReqPosted;
    wwDBLookupCombo2.Enabled    := not prvIsReqPosted;
    wwDBLookupCombo3.Enabled    := not prvIsReqPosted;
    //Date components
    wwDBDateTimePicker1.Enabled := not prvIsReqPosted;
    wwDBDateTimePicker2.Enabled := not prvIsReqPosted;
    wwDBDateTimePicker3.Enabled := not prvIsReqPosted;


    atnItemsChangeProduct.Enabled                 := not prvIsReqPosted;
    atnItemsDelete.Enabled                        := not prvIsReqPosted;
    atnItemsDeleteAll.Enabled                     := not prvIsReqPosted;
    atnItemsAdd_FromAuthorisedDemanders.Enabled   := not prvIsReqPosted;
    atnItemsAdd_InstitutionalEDL.Enabled          := not prvIsReqPosted;
    atnItemsAdd_Single.Enabled                    := not prvIsReqPosted;
    atnItemsAdd_FromBackOrders.Enabled            := not prvIsReqPosted;
    atnProductBatchSelect.Enabled                 := not prvIsReqPosted;//SM
    atnUnlockRequisition.Enabled        := RequisitionDM.qryRequisitionsCatalog.FieldByName('CheckedOut_bol').AsBoolean;
    atnProductBatchSelect.Visible       := RequisitionDm.FUsesBatchManagement;
    atnCaptureBarcodes.Enabled          := (RequisitionDM.FUsesBarcoding) and (RxSolutionFrm.HaveBarcodeScanner);
    atnCaptureBarcodes.Visible          := (not prvIsReqPosted) and (RxSolutionFrm.HaveBarcodeScanner);

    //lblBatchSelectInstruction.Visible   := RequisitionDm.FUsesBatchManagement;
    atnAddProductBatches.Enabled                  := not prvIsReqPosted;
    atnAddProductBatches.Visible                  := (not prvIsReqLocked) and (not prvIsBudgetModel);
    atnCreateRDMTextFile.Visible                  := (not prvIsReqLocked) and (prvIsBudgetModel);

    //SHOW Supplier information if in Budget Management Mode
    lblSupplier.Visible := prvIsBudgetModel;
    cmdSupplierCode.Visible := prvIsBudgetModel;
    cmdSupplierName.Visible := prvIsBudgetModel;
    atnAddAnotherBatchItem.Visible                := prvIsBudgetModel and (not prvIsReqPosted);//SM

//    dxTbsRequisition_History.TabVisible := vAccessLevel > USER_USER;

    with dxTbctrlRequistionDetail do Activepage := dxTbsRequisition_Items;

    with dxDBRequisitions_Items do
     if RequisitionDM.FUseEditableExitPrice then
      for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'PackCost_mon') or
             (Columns[i].FieldName = 'Cal_PackCost') then
              Columns[i].DisableEditor := False;

    with dxDBRequisitions_Items do
    for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyIssued_int') then
              Columns[i].DisableEditor := (not prvIsBudgetModel);

    with dxDBRequisitions_Items do
    for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'BatchNumber_str') or
             (Columns[i].FieldName = 'Expiry_dat') then
              Columns[i].DisableEditor := (not MainDM.IsRequisitionManagementOnly);


    with dxDBRequisitions_Items do
      if prvIsReqPosted then
        begin
        for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyDemanderOnHand_int') or
             (Columns[i].FieldName = 'QtyOrdered_int') or
             (Columns[i].FieldName = 'QtyIssued_int') or
             (Columns[i].FieldName = 'QtyApproved_int') or
             (Columns[i].FieldName = 'PackCost_mon') or
             (Columns[i].FieldName = 'Cal_PackCost') then
              Columns[i].DisableEditor := True;
        end
        else
        for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyDemanderOnHand_int') or
             (Columns[i].FieldName = 'QtyOrdered_int') then
              Columns[i].DisableEditor := False;
    end else
    begin
    dbtActivatedBy_str.Visible  := prvIsReqLocked;
    dbtActivated_dat.Visible    := prvIsReqLocked;
    btnPost.Visible             := (not prvIsReqLocked) AND (vAccessLevel > USER_USER);
    dbtSystemStore.Visible      := prvIsReqLocked;
    dbtDemanderDisplay.Visible  := prvIsReqLocked;
    RzSystemStoreCode.Visible   := not prvIsReqLocked;
    RzSystemStoreName.Visible   := not prvIsReqLocked;
    RzDemanderCode.Visible      := not prvIsReqLocked;
    RzDemanderName.Visible      := not prvIsReqLocked;
    lblIssued.Visible           := prvIsReqLocked;
    lblIssued.Caption           := SLockedByAnotherUser+RequisitionDM.qryRequisitionsCatalog.FieldByName('CheckedOutName_str').AsString;

    pnlRequisitionHeaderBackground.Enabled        := not prvIsReqLocked;

    atnItemsChangeProduct.Enabled                 := not prvIsReqLocked;
    atnItemsDelete.Enabled                        := not prvIsReqLocked;
    atnItemsDeleteAll.Enabled                     := not prvIsReqLocked;
    atnItemsAdd_FromAuthorisedDemanders.Enabled   := not prvIsReqLocked;
    atnItemsAdd_InstitutionalEDL.Enabled          := not prvIsReqLocked;
    atnItemsAdd_Single.Enabled                    := not prvIsReqLocked;
    atnItemsAdd_FromBackOrders.Enabled            := not prvIsReqLocked;
    atnAddAnotherBatchItem.Enabled                := not prvIsReqLocked;


    if prvIsBudgetModel then
     begin
     lblSupplier.Visible        := True;
     cmdSupplierCode.Visible    := True;
     cmdSupplierName.Visible    := True;

     lblSupplier.Enabled         := prvIsBudgetModel and (not prvIsReqPosted);//SM
     cmdSupplierCode.Enabled     := prvIsBudgetModel and (not prvIsReqPosted);//SM
     cmdSupplierName.Enabled     := prvIsBudgetModel and (not prvIsReqPosted);//SM
     atnAddAnotherBatchItem.Visible := prvIsBudgetModel and (not prvIsReqPosted);//SM
     end
    else
     begin
     lblSupplier.Visible        := False;
     cmdSupplierCode.Visible    := False;
     cmdSupplierName.Visible    := False;
     end;


    dxTbsRequisition_History.TabVisible := vAccessLevel > USER_USER;

    with dxTbctrlRequistionDetail do Activepage := dxTbsRequisition_Items;

    with dxDBRequisitions_Items do
      if prvIsReqLocked then
        begin
        for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyDemanderOnHand_int') or
             (Columns[i].FieldName = 'QtyOrdered_int') or
             (Columns[i].FieldName = 'QtyIssued_int')  or
             (Columns[i].FieldName = 'QtyApproved_int') or
             (Columns[i].FieldName = 'PackCost_mon') or
             (Columns[i].FieldName = 'Cal_PackCost') then
              Columns[i].DisableEditor := True;
        end
        else
        for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyDemanderOnHand_int') or
             (Columns[i].FieldName = 'QtyOrdered_int') then
              Columns[i].DisableEditor := False;
    end;


end;


procedure TRequisitionDetailFrm.FormCreate(Sender: TObject);
const
  cbuf = 1;
var
  vDetFormSize  :TRect;
begin

  dxTabRxCosting.TabVisible := False;
  dxTabNormal.TabVisible  := False;

  if Assigned(MainDM)then
    vIsRxCosting := MainDM.IsRxCosting
    else
    MessageDlg(SERRORMainDataModuleNotAvai, mtError, [mbOK], 0);

  if vIsRxCosting then
    dxTbctrlRequistionDetail_Display.ActivePage := dxTabRxCosting
    else
    dxTbctrlRequistionDetail_Display.ActivePage := dxTabNormal;


  Actions_ApplyTags;

  dxTbctrlRequistionDetail.ActivePage := dxTbsRequisition_Items;
  vDetFormSize := Screen.WorkAreaRect;
  
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;

  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2); 

  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);


  //SM 10 June 2014
  dxTbctrlRequistionDetail.Height := Screen.Height - (pnlRequisitionHeaderBackground.Height + Panel1.Height + pnlStatusBar.Height * 2 );

  SetUpRequisitionDateSequence;

end;




procedure TRequisitionDetailFrm.SetUpRequisitionDateSequence;
begin
  wwDBDateTimePicker2.MinDate := wwDBDateTimePicker1.Date;
  wwDBDateTimePicker3.MinDate := wwDBDateTimePicker2.Date;
  wwDBReceivedBy_dat.MinDate  := wwDBDateTimePicker3.Date;
end;


procedure TRequisitionDetailFrm.PageDataSet(PageSize: integer);
begin

  if PageSize < -1000 then PageSize := -1000;
  if PageSize > 1000 then PageSize  := 1000;

  with dxDBRequisitions_Items.DataSource.DataSet do
    if Active then
      case PageSize of
        -1000..-1   : if not BOF then MoveBy(PageSize);
        1..1000     : if not EOF then MoveBy(PageSize);
        end;

end;        


procedure TRequisitionDetailFrm.btnPostClick(Sender: TObject);
const
  PMSG = 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';

begin

  RequisitionDM.MustPost(False);
  if RequisitionDM.ValidatePosting then
    begin
    if MessageDlg(PMSG , mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
      RequisitionDM.MustPost;
      ModalResult := mrOk;
      end else
      ModalResult := mrCancel;
    end else
    ModalResult := mrCancel;

end;


procedure TRequisitionDetailFrm.Actions_ApplyTags;
begin

  atnItemsChangeProduct.Tag                 := REQ_GETPRODUCT;
  atnItemsDelete.Tag                        := DELETECURRENTREITEM_TRUE;
  atnItemsDeleteAll.Tag                     := DELETEALLREITEMS;
  atnItemsAdd_FromAuthorisedDemanders.Tag   := ADDREQITEMLIST_AUTHORISEDITEMS;
  atnItemsAdd_InstitutionalEDL.Tag          := ADDREQITEMLIST_EDL;
  atnUpdateRequisitionNo.Tag                := SETREQNUMBER;
  atnItemsAdd_Single.Tag                    := ADDREQITEMLIST_SINGLE;
  dxeCharges_mon.Tag                        := UPDATEREQTOTALS;

end;



procedure TRequisitionDetailFrm.Actions_Execute(pActionNumber: integer);
begin

//  Result := False;

  if Assigned(RequisitionDM) and Assigned(MainDM)then
    begin
    with RequisitionDM, MainDM do
      case pActionNumber of
        REQ_GETPRODUCT            : Product_ItemChange;
//        VALIDATE_POSTING          : Result := ValidatePosting;
        DELETECURRENTREITEM_TRUE  : DeleteCurrReqItem(True);
        DELETEALLREITEMS          : if MessageDlg(SDeleteALLItemsProductsOnThi,mtWarning,[mbYes,mbCancel],0) = mrYes then DeleteAllRequisitionItems;
        ADDREQITEMLIST_AUTHORISEDITEMS :AddRequisitionItemList(0); // Authorised items
        ADDREQITEMLIST_EDL        : AddRequisitionItemList(1); // EDL
        SETREQNUMBER              : SetRequisitionNumber;
        ADDREQITEMLIST_SINGLE     : AddSingleRequisitionItem;
        UPDATEREQTOTALS           : UpdateRequisitionSubTotals;
//        SET_SYSTEMSTORE_STR       : SetSystemStoreStr;
        ADDREQITEMLIST_BACKORDER  : AddRequisitionItemList(2); // Backorder
//        SET_DEMANDER_STR          : begin UpdateDemanderUsers; SetDemanderStr; SetPageVisibility; end;

      else
        MessageDlg(SNoProcedureHasBeenCalled, mtError, [mbOK], 0)
      end;
    end else
      MessageDlg(SERRORRequisitionOrMainData, mtError, [mbOK], 0);
end;

procedure TRequisitionDetailFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult = mrCancel then Canclose := False;
end;



procedure TRequisitionDetailFrm.dbeCharges_monExit(Sender: TObject);
begin
  Actions_Execute(UPDATEREQTOTALS);
end;

procedure TRequisitionDetailFrm.atnItemsAdd_FromBackOrdersExecute(
  Sender: TObject);
begin
  Actions_Execute(ADDREQITEMLIST_BACKORDER);
end;

procedure TRequisitionDetailFrm.SetRequisitionDates(Sender: TObject);
begin
  SetUpRequisitionDateSequence
end;

//Comfort Mankga 18/08/2010
procedure TRequisitionDetailFrm.Actions_ExecuteEvent(Sender: TObject);
const
EMSG = 'You may not select products unless all of the following are completed!' +
         #13 + 'Demander'
         +#13 + 'Account';

begin
     if (RzSystemStoreCode.Text = '') or (RzDemanderCode.Text = '')  then
      begin
           MessageDlg(EMSG, mtWarning, [mbOK],0);
      end else
 begin
   if Sender is TAction then
    Actions_Execute( (Sender as TAction).Tag )
  else if Sender is TdxDBCurrencyEdit then
    Actions_Execute( (Sender as TdxDBCurrencyEdit).Tag )
  else if Sender is TRadioGroup then
    Actions_Execute( (Sender as TRadioGroup).Tag )
  else if Sender is TdxDBGrid then
    Actions_Execute( (Sender as TdxDBGrid).Tag )
end;
end;

procedure TRequisitionDetailFrm.dxDBRequisitions_ItemsChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin

  with (Sender as tDxDBGrid), (Sender as tDxDBGrid).Columns[Column] do
    if (FieldName = 'ProductCode_str') or
       (FieldName = 'Description_str') or
       (FieldName = 'ICN_str') or
       (FieldName = 'ECN_str') or
       (FieldName = 'NSN_str')
        then
      OptionsBehavior := OptionsBehavior + [edgoAutoSearch]
      else
      OptionsBehavior := OptionsBehavior - [edgoAutoSearch]

end;


procedure TRequisitionDetailFrm.dxTbctrlRequistionDetailChange(
  Sender: TObject);
begin

  if not dbtPosted.Field.AsBoolean then
    if dxTbctrlRequistionDetail.ActivePage = dxTbsRequisition_Items then
      begin
      atnItemsChangeProduct.Enabled                 := True;
      atnItemsDelete.Enabled                        := True;
      atnItemsDeleteAll.Enabled                     := True;
      atnItemsAdd_FromAuthorisedDemanders.Enabled   := True;
      atnItemsAdd_InstitutionalEDL.Enabled          := True;
      atnItemsAdd_Single.Enabled                    := True;
      atnItemsAdd_FromBackOrders.Enabled            := True;
      end else
      begin
      atnItemsChangeProduct.Enabled                 := False;
      atnItemsDelete.Enabled                        := False;
      atnItemsDeleteAll.Enabled                     := False;
      atnItemsAdd_FromAuthorisedDemanders.Enabled   := False;
      atnItemsAdd_InstitutionalEDL.Enabled          := False;
      atnItemsAdd_Single.Enabled                    := False;
      atnItemsAdd_FromBackOrders.Enabled            := False;
      end;

end;



procedure TRequisitionDetailFrm.rbpRequisitionPreviewFormCreate(
  Sender: TObject);
begin
  with (Sender as TppReport).PreviewForm do
    WindowState         := wsMaximized;
end;


procedure TRequisitionDetailFrm.atnItemsMarkAllAsCompleteExecute(Sender: TObject);
begin

  if Assigned(RequisitionDM) then
    with RequisitionDM do
      MarkAllItemsAsComplete(1);

end;

procedure TRequisitionDetailFrm.atnColDisplaysExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;

begin

  SelectColumns := TColumnSelector.Create;
  try

  if vIsRxCosting then
    GridCols := dxDBRequisitions_Items_RxCosting
    else
    GridCols := dxDBRequisitions_Items;



  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;


end;

procedure TRequisitionDetailFrm.ppImage3DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  if myDBCheckBox1.Checked then
    ppLabel47.Caption := SBalance
    else
    ppLabel47.Caption := SBalanceBeforeTransaction

end;

procedure TRequisitionDetailFrm.btnCloseClick(Sender: TObject);
begin
  RequisitionDM.MustPost(False);

end;

procedure TRequisitionDetailFrm.btnPrintClick(Sender: TObject);
begin
{
  if Assigned(RequisitionDM) then
    with RequisitionDM, rbpRequisition do
      begin
      PrinterSetup.DocumentName := SetDocumentPrintName(2);
      Print;
      CloseReportData(0);
      end;
}
end;


procedure TRequisitionDetailFrm.PrintRequisition1Click(Sender: TObject);
begin
 if Assigned(RequisitionDM) then
    with RequisitionDM, rbpRequisition do
      begin
      if stpStockControlRequisition.State in [dsEdit, dsInsert] then
       stpStockControlRequisition.Post;

      if not LoadSqlStatement(2) then
       begin
       qryRequisitionsReport.Active := False;
       qryRequisitionsReport.Active := True;
       end
      else
       begin
       ppDBPipeline1.DataSource := dsstp_CustomReport;
       //Load from file
       Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Requisition.rtm';
       Template.LoadFromFile;
       end;

      PrinterSetup.DocumentName := SetDocumentPrintName(2);
      Print;
      CloseReportData(0);
      end;
end;

procedure TRequisitionDetailFrm.PrintPicklist1Click(Sender: TObject);
begin

  if Assigned(RequisitionDM) then
    with RequisitionDM, ppRequisitionPickList do
      begin
      if stpStockControlRequisition.State in [dsEdit, dsInsert] then
       stpStockControlRequisition.Post;
      qryRequisitionsReportPicklist.Active := False;
      qryRequisitionsReportPicklist.Active := True;
      PrinterSetup.DocumentName := SetDocumentPrintName(2);
      Print;
      CloseReportData(0);
      end;
end;

procedure TRequisitionDetailFrm.atnAddAnotherBatchItemExecute(Sender: TObject);
var
 item_id, req_id  : Integer;
 batchnumselect : String;
begin
 RequisitionDM.SelectBatchItemToAdd;
end;

procedure TRequisitionDetailFrm.atnProductBatchSelectExecute(
  Sender: TObject);
begin
 //
 RequisitionDM.SelectBatch;
end;

procedure TRequisitionDetailFrm.PrintPickListWithBatches1Click(
  Sender: TObject);
begin
//  Panel2.Visible := False;
  if Assigned(RequisitionDM) then
    with RequisitionDM, ppPickListWithBatches do
      begin
      if stpStockControlRequisition.State in [dsEdit, dsInsert] then
       stpStockControlRequisition.Post;
      qryRequisitionsReportPicklist.Active := False;
      qryRequisitionsReportPicklist.Active := True;
      PrinterSetup.DocumentName := SetDocumentPrintName(2);
      Print;
      CloseReportData(0);
      end;
end;

procedure TRequisitionDetailFrm.atnUnlockRequisitionExecute(
  Sender: TObject);
var
 username_str : string;
begin

 username_str := RequisitionDM.stpStockControlRequisition.FieldByName('CheckedOutName_str').AsString;

 if MessageDlg(SRequisitionHasBeenCheckedOut+username_str+#13+SAreYouSureYouWantToUnlock,
  mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
  RequisitionDM.RequisitionUnlock;
  MessageDlg(SRequisitionHasBeenUnlocked, mtInformation, [mbOk], 0);
  btnClose.Click;
  end;


end;

procedure TRequisitionDetailFrm.PrintRequisitionbyDescription1Click(
  Sender: TObject);
begin
 if Assigned(RequisitionDM) then
    with RequisitionDM, ppRequisition_byDescrip do
      begin
      if stpStockControlRequisition.State in [dsEdit, dsInsert] then
       stpStockControlRequisition.Post;
      qryRequisitionsReport_byDescrip.Active := False;
      qryRequisitionsReport_byDescrip.Active := True;

      PrinterSetup.DocumentName := SetDocumentPrintName(3);
      Print;
      CloseReportData(-1);
      end;

end;

procedure TRequisitionDetailFrm.UpdateVATforallitems1Click(
  Sender: TObject);
begin
 RequisitionDM.UpdateItemsVat;
end;

procedure TRequisitionDetailFrm.atnUpdateVATforInvoiceExecute(
  Sender: TObject);
begin
 RequisitionDM.UpdateItemsVat;
end;

procedure TRequisitionDetailFrm.atnAddProductBatchesExecute(
  Sender: TObject);
var
 vReq_ID, vProd_ID : integer;
begin

 if RequisitionDM.stpStockControlRequisitionItems.RecordCount > 0 then
  begin
  if RequisitionDM.stpStockControlRequisitionItems.State in [dsEdit, dsInsert] then
   RequisitionDM.stpStockControlRequisitionItems.Post;
  vReq_ID  := RequisitionDM.stpStockControlRequisition.FieldByName('Requisition_ID').AsInteger;
  vProd_ID := RequisitionDM.stpStockControlRequisitionItems.FieldByName('ProductCode_ID').AsInteger;
  RequisitionDM.AddALLBatchItems(vReq_ID, vProd_ID);
  end;
  
end;

procedure TRequisitionDetailFrm.dxDBRequisitions_ItemsDblClick(
  Sender: TObject);
begin
 atnAddProductBatches.Execute;
end;

procedure TRequisitionDetailFrm.Button2Click(Sender: TObject);
begin
 RequisitionDM.LoadUSerDemanders;
end;

procedure TRequisitionDetailFrm.atnCreateRDMTextFileExecute(
  Sender: TObject);
begin
 RequisitionDM.CreateTextFileOrderReport;
end;

procedure TRequisitionDetailFrm.atnCaptureBarcodesExecute(Sender: TObject);
begin

 with RequisitionDM.stpStockControlRequisition do
  begin
  if (State in [dsEdit, dsInsert]) then Post;

  if ((FieldByName('SystemStore_ID').IsNull) or (FieldByName('SystemStore_ID').AsInteger = 0)) then
        begin
        MessageDlg('Please select an account first', mtWarning, [mbOK], 0);
        Abort;
        end;
  end;

 with RequisitionBarCodeFrm do
  begin
  WindowState := wsMaximized;
  ShowModal;
  end;

end;

end.

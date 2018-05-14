unit ProductUfrm;
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
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, Grids, DBGrids, DB, DBTables, Windows,
  Menus, DBActns, ActnList, ImgList, StdCtrls, Registry, ExtCtrls,
  DbChart, Mask,

  dxPageControl, dxExEdtr, wwDialog, wwidlg, dxCntner, RzBmpBtn, Series,
  TeEngine, TeeFunci, TeeProcs, Chart, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, wwdbdatetimepicker, ElPgCtl, ElXPThemedControl, dxEditor,
  dxEdLib, dxDBELib, DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, dxTL,
  ElPopBtn, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel, RzDBEdit, RzDBCmbo,
  RzCmboBx, RzEdit, RzLabel, RzDBLbl, RzPanel, RzCommon, RzBckgnd, RzButton,
  RzRadChk, RzDBChk, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,  ppModule,
  raCodMod, ppVar, ppParameter, PrjConst;

const
  EDGEMARGIN = 10;
  LEDGERFILTERS  : array[0..5] of string = ( SShowAll1,
                                              SOrdered1,
                                              SIssued1,
                                              SReceived1,
                                              SVariance1,
                                              SStocktake1);
  PRODUCT_FIRST             = 1;
  PRODUCT_LAST              = 2;
  PRODUCT_PAGEUP            = 3;
  PRODUCT_PAGEDOWN          = 4;
  PRODUCT_SEARCH            = 5;
  PRODUCT_PRIOR             = 6;
  PRODUCT_NEXT              = 7;
  PRODUCT_FILTER_EDL        = 8;
  PRODUCT_FILTER_NAT        = 9;
  PRODUCT_FILTER_PRV        = 10;
  PRODUCT_FILTER_NIL        = 11;
  PRODUCT_FILTER_VARIANCE   = 12;
  PRODUCT_ADD               = 13;
  PRODUCT_EDIT              = 14;
  PRODUCT_DELETE            = 15;
  PRODUCT_SAVE              = 16;
  PRODUCT_CLOSEDETAIL       = 17;
  PRODUCT_REFRESH           = 18;
  PRODUCT_ADDVARIANCE       = 19;
  PRODUCT_CALCSTOCKLEVELS   = 20;
  PRODUCT_UPDATELEDGER      = 21;
  PRODUCT_DISPLAY_INFO      = 22;
  PRODUCT_SELCOLS_PRODUCTS  = 23;
  PRODUCT_DISPLAY_RESET     = 24;
  PRODUCT_DISPLAY_SAVEDEFAULTS = 25;
  PRODUCT_SELCOLS_CONTRACTS = 26;
  PRODUCT_SELCOLS_STOCKLEDGER = 27;
  PRODUCT_PRINT_LIST          =28;
  PRODUCT_PRINT_DETAIL        = 29;
  PRODUCT_ADD_COPY            = 30;  //

type
  TProductFrm = class(TForm)
    Label42: TLabel;
    pnlProductListBackground: TPanel;
    shpProductList: TShape;
    Shape1: TShape;
    ImageList1: TImageList;
    ActionList2: TActionList;
    atnProductFirst: TDataSetFirst;
    atnProductPrior: TDataSetPrior;
    atnProductNext: TDataSetNext;
    atnProductLast: TDataSetLast;
    atnProductEdit: TAction;
    atnPrintProductDetail: TAction;
    atnProductAdd: TAction;
    atnProductSearch: TAction;
    atnProductFilterInstitutionalEDL: TAction;
    atnProductFilterAll: TAction;
    pmnuProductFilter: TPopupMenu;
    InstitutionalEDL1: TMenuItem;
    atnProductFilterAll1: TMenuItem;
    atnProductFilterProvincialEDL: TAction;
    atnProductFilterNationalEDL: TAction;
    ProvincialEDL1: TMenuItem;
    NationalEDL1: TMenuItem;
    atnProductRefresh: TAction;
    atnProductAddVariance: TAction;
    pmnuProductAdjust: TPopupMenu;
    atnProductCalcStockLevels: TAction;
    Addproductvariance1: TMenuItem;
    atnProductDelete: TAction;
    pmnuProductsMain: TPopupMenu;
    atnAddRequisition1: TMenuItem;
    atnEditRequisition1: TMenuItem;
    N2: TMenuItem;
    Search1: TMenuItem;
    atnProductRefreshproducts1: TMenuItem;
    N3: TMenuItem;
    PrintRequisition1: TMenuItem;
    atnPrintProductList: TAction;
    atnProductCloseDetail: TAction;
    atnProductFilterVariance: TAction;
    atnProductPageUp: TDataSetFirst;
    atnProductPageDown: TDataSetLast;
    atnProductSave: TDataSetPost;
    tbsProductCatalog: TdxPageControl;
    tbshList: TdxTabSheet;
    tbshDetail: TdxTabSheet;
    Panel2: TPanel;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel20: TPanel;
    Shape2: TShape;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton18: TElSpeedButton;
    btnDemanders_Save: TElSpeedButton;
    Panel21: TPanel;
    Panel5: TPanel;
    pnlProductDetailColorBackground: TPanel;
    Label29: TLabel;
    Label103: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label35: TLabel;
    DBText10: TDBText;
    dbtProductCode: TDBText;
    Label79: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label46: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    dbeICNCode: TDBEdit;
    dbeNSNCode: TDBEdit;
    dbeECNCode: TDBEdit;
    dblGenericName: TwwDBLookupCombo;
    dblComparisonUnit: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBComboBox3: TwwDBComboBox;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    pclProductDetails: TElPageControl;
    tsStockLevels: TElTabSheet;
    tbsStockLedger: TElTabSheet;
    tsFinancial: TElTabSheet;
    pnl_ProductDetails_Financial: TPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label44: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    tbsContract: TElTabSheet;
    dxPageControl1: TdxPageControl;
    dxTbProductDetail_FinancialGraph: TdxTabSheet;
    dxTbProductDetail_FinancialLedger: TdxTabSheet;
    DBChrt_MonthEnd: TDBChart;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Month_str: TdxDBGridColumn;
    dxDBGrid2Year_str: TdxDBGridColumn;
    dxDBGrid2Quantity_int: TdxDBGridMaskColumn;
    dxDBGrid2Value_mon: TdxDBGridCurrencyColumn;
    dxDBGrid2Type_str: TdxDBGridColumn;
    ElSpeedButton3: TElSpeedButton;
    dxEditStyleController1: TdxEditStyleController;
    ElSpeedButton19: TElSpeedButton;
    Panel6: TPanel;
    atnDisplay_ProductListInfo: TAction;
    Adjuststocklevels1: TMenuItem;
    N1: TMenuItem;
    ElSpeedButton17: TElSpeedButton;
    Panel3: TPanel;
    atnDisplay_SelCols_Products: TAction;
    atnDisplay_ResetGrid: TAction;
    pmnuDisplay: TPopupMenu;
    Resetdefaults1: TMenuItem;
    N4: TMenuItem;
    Selectdisplaycolumns1: TMenuItem;
    N5: TMenuItem;
    Showproductinformation1: TMenuItem;
    Resetdefaults3: TMenuItem;
    Resetdefaults4: TMenuItem;
    Resetdefaults2: TMenuItem;
    atnDisplay_SaveDefaults: TAction;
    Savetodefaultfile1: TMenuItem;
    Timer1: TTimer;
    atnDisplay_SelCols_Contracts: TAction;
    Label24: TLabel;
    dbtGenericCode: TDBText;
    DBText7: TDBText;
    DBRadioGrp_OrdType: TDBRadioGroup;
    Label51: TLabel;
    DBText2: TDBText;
    Label78: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    dbeInjectable: TDBCheckBox;
    Label36: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label98: TLabel;
    dxDbeCost_mon: TdxDBCurrencyEdit;
    dxNoBorders: TdxEditStyleController;
    tbsVariance: TElTabSheet;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    atnDisplay_SelCols_StockLedger: TAction;
    Label19: TLabel;
    DBCheckBox5: TDBCheckBox;
    Label20: TLabel;
    wwDBLookupCombo12: TwwDBLookupCombo;
    DBText1: TDBText;
    chbSupplementDescription: TDBCheckBox;
    atnProductCalcStocklevelsAuto: TAction;
    atnProductCalcStocklevelsAuto1: TMenuItem;
    pnlProductList_Information: TPanel;
    Label43: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label86: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label87: TLabel;
    Label88: TLabel;
    Label100: TLabel;
    Label106: TLabel;
    Label108: TLabel;
    Label111: TLabel;
    DBText13: TDBText;
    Label112: TLabel;
    DBText14: TDBText;
    Label113: TLabel;
    Label114: TLabel;
    DBText15: TDBText;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    DBText17: TDBText;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBComboBox9: TwwDBComboBox;
    wwDBComboBox10: TwwDBComboBox;
    wwDBLookupCombo13: TwwDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBLookupCombo14: TwwDBLookupCombo;
    wwDBLookupCombo15: TwwDBLookupCombo;
    wwDBLookupCombo16: TwwDBLookupCombo;
    wwDBLookupCombo17: TwwDBLookupCombo;
    wwDBComboBox11: TwwDBComboBox;
    wwDBLookupCombo18: TwwDBLookupCombo;
    DBEdit12: TDBEdit;
    wwDBComboBox12: TwwDBComboBox;
    wwDBComboBox13: TwwDBComboBox;
    wwDBLookupCombo19: TwwDBLookupCombo;
    wwDBLookupCombo20: TwwDBLookupCombo;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    wwDBLookupCombo21: TwwDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    DBCheckBox9: TDBCheckBox;
    wwDBLookupCombo22: TwwDBLookupCombo;
    Label54: TLabel;
    DBEdit13: TDBEdit;
    atnPrintProductList1: TMenuItem;
    PrintRequisition2: TMenuItem;
    N6: TMenuItem;
    Label90: TLabel;
    dxDBCurrencyEdit8: TdxDBCurrencyEdit;
    pnlContract: TPanel;
    dxDBProductContracts: TdxDBGrid;
    dxDBProductContractsName_str: TdxDBGridColumn;
    dxDBProductContractsContractItemNumber_int: TdxDBGridMaskColumn;
    dxDBProductContractsSpecificationNumber_str: TdxDBGridColumn;
    dxDBProductContractsContractCode_str: TdxDBGridColumn;
    dxDBProductContractsContractYear_str: TdxDBGridColumn;
    dxDBProductContractsContractPrice_mon: TdxDBGridCurrencyColumn;
    dxDBProductContractsContractBegin_dat: TdxDBGridDateColumn;
    dxDBProductContractsTradeName_str: TdxDBGridColumn;
    dxDBProductContractsContractEnd_dat: TdxDBGridDateColumn;
    dxDBProductContractsActive_bol: TdxDBGridCheckColumn;
    Panel8: TPanel;
    Shape3: TShape;
    ElSpeedButton31: TElSpeedButton;
    Label48: TLabel;
    pnlVariance: TPanel;
    Label40: TLabel;
    rdgFilter_Variance: TRadioGroup;
    Button2: TButton;
    dxDBGrid3: TdxDBGrid;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    ElSpeedButton21: TElSpeedButton;
    wwLookupDialog1: TwwLookupDialog;
    Label45: TLabel;
    Label93: TLabel;
    dbShippingPack: TDBEdit;
    Label94: TLabel;
    Label95: TLabel;
    DBText3: TDBText;
    DBText18: TDBText;
    wwDBLookupCombo23: TwwDBLookupCombo;
    chbExcludeGenericDescription: TDBCheckBox;
    atnProductCalcStatusAuto: TAction;
    atnProductDescriptionToggleSupplement: TAction;
    atnProductDescriptionToggleGeneric: TAction;
    RzBmpButton1: TRzBmpButton;
    RzFrameController1: TRzFrameController;
    dxPageControl2: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    pnlLedger: TPanel;
    Label17: TLabel;
    Label47: TLabel;
    Date_LedgerSt: TDateTimePicker;
    Date_LedgerEnd: TDateTimePicker;
    rdgLedgerFilter: TRadioGroup;
    dxDBStockLedger: TdxDBGrid;
    dxDBStockLedgerType_str: TdxDBGridMaskColumn;
    dxDBStockLedgerDate_dat: TdxDBGridDateColumn;
    dxDBStockLedgerReference_str: TdxDBGridColumn;
    dxDBStockLedgerQuantity_int: TdxDBGridColumn;
    dxDBStockLedgerQuantityOnHand_int: TdxDBGridMaskColumn;
    dxDBStockLedgerFValue_mon: TdxDBGridCurrencyColumn;
    dxDBStockLedgerUser_str: TdxDBGridColumn;
    Panel9: TPanel;
    Shape5: TShape;
    ElSpeedButton20: TElSpeedButton;
    DBChart_QoH: TDBChart;
    Series4: TLineSeries;
    TeeFunction1: TAverageTeeFunction;
    Series5: TLineSeries;
    TeeFunction2: TAverageTeeFunction;
    Series7: TLineSeries;
    TeeFunction4: TAverageTeeFunction;
    lblMainFormTitle: TRzLabel;
    dxDBStockLedgerPackSize_dbl: TdxDBGridMaskColumn;
    ElTabSheet3: TElTabSheet;
    RzGroupBox1: TRzGroupBox;
    Label128: TLabel;
    Label135: TLabel;
    Label138: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    rzgOther: TRzGroupBox;
    DBText27: TDBText;
    DBText28: TDBText;
    wwDBLookupCombo5: TwwDBLookupCombo;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    Label76: TLabel;
    DBText34: TDBText;
    wwDBLookupCombo24: TwwDBLookupCombo;
    Label149: TLabel;
    DBText35: TDBText;
    Label146: TLabel;
    Label82: TLabel;
    DBText36: TDBText;
    DBCheckBox6: TDBCheckBox;
    DBText37: TDBText;
    DBText38: TDBText;
    RzGroupBox6: TRzGroupBox;
    Label32: TLabel;
    Label49: TLabel;
    Label55: TLabel;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    RzGroupBox5: TRzGroupBox;
    Label65: TLabel;
    Label77: TLabel;
    Label97: TLabel;
    Label85: TLabel;
    Label89: TLabel;
    Label33: TLabel;
    Label99: TLabel;
    dbtDDDUnit: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label101: TLabel;
    Label92: TLabel;
    Label61: TLabel;
    Label2: TLabel;
    Label104: TLabel;
    dbeBasicUnit: TDBEdit;
    dbeStrengthUnit: TDBEdit;
    dbeDispensingUnit: TDBEdit;
    dbeDDDValue: TDBEdit;
    cmbDDDUnit: TwwDBComboBox;
    chbRefrigerated: TDBCheckBox;
    dbeStorageTemp: TDBEdit;
    dbeStorageConditions: TDBEdit;
    chbRecurrent: TDBCheckBox;
    wwDBComboBox5: TwwDBComboBox;
    RzGroupBox4: TRzGroupBox;
    Label23: TLabel;
    Label50: TLabel;
    Label60: TLabel;
    Label37: TLabel;
    Label91: TLabel;
    rdgProcurementPeriod: TDBRadioGroup;
    rdgLeadTime: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    wwDBComboBox8: TwwDBComboBox;
    ElSpeedButton22: TElSpeedButton;
    ElSpeedButton23: TElSpeedButton;
    RzBitBtn1: TRzBitBtn;
    ImageList2: TImageList;
    RzBitBtn2: TRzBitBtn;
    atnGeneric_Manage: TAction;
    Label96: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzBitBtn3: TRzBitBtn;
    atnAdministrationUnit_Manage: TAction;
    atnStrengthRange_Manage: TAction;
    Label102: TLabel;
    AdministrationMode: TDBText;
    Label105: TLabel;
    DBText4: TDBText;
    Label109: TLabel;
    StrengthExtraDescription: TDBText;
    tbsBatchDetails: TElTabSheet;
    RzGroupBox7: TRzGroupBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1ProductCode_ID: TdxDBGridMaskColumn;
    dxDBGrid1BatchQty_int: TdxDBGridColumn;
    RzBitBtn4: TRzBitBtn;
    atnFormRange_Manage: TAction;
    atnTradeName_Manage: TAction;
    RzBitBtn5: TRzBitBtn;
    atnPackSizeRange_Manage: TAction;
    RzBitBtn6: TRzBitBtn;
    Label110: TLabel;
    DBText5: TDBText;
    RzDBCheckBox1: TRzDBCheckBox;
    atnProduct_ValidateDispensing: TAction;
    N7: TMenuItem;
    ValidateProductsforDispensing1: TMenuItem;
    ProductAddCopy1: TMenuItem;
    atnProductCopyItem: TAction;
    ProductCopyProduct1: TMenuItem;
    RzBmpButton2: TRzBmpButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    atnPrintProductLedger: TAction;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    pplblDescription: TppLabel;
    pplblDataDates: TppLabel;
    dxDBGrid1ShippingPack_int: TdxDBGridColumn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    atnContract_Manage: TAction;
    atnComparisonUnit_Manage: TAction;
    dxDBStockLedgerExpiry_dat: TdxDBGridColumn;
    dxDBStockLedgerBatchNumber_str: TdxDBGridColumn;
    Series1: TBarSeries;
    Series2: TBarSeries;
    wwDBLookupCombo25: TwwDBLookupCombo;
    atnStockCalcStdDeviation: TAction;
    Action11: TMenuItem;
    ppLabel6: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppDBText4: TppDBText;
    dxDBGrid1Bin_str: TdxDBGridColumn;
    dbgProducts: TdxDBGrid;
    dbgProductsECN_str: TdxDBGridColumn;
    dbgProductsICN_str: TdxDBGridColumn;
    dbgProductsNSN_str: TdxDBGridColumn;
    dbgProductsDescription_str: TdxDBGridColumn;
    dbgProductsCalcQtyOnHand_int: TdxDBGridColumn;
    dbgProductsGroup1_str: TdxDBGridColumn;
    dbgProductsGroup2_str: TdxDBGridColumn;
    dbgProductsGenericName_str: TdxDBGridColumn;
    dbgProductsQtyOnHold_int: TdxDBGridColumn;
    dbgProductsReOrderStatus_str: TdxDBGridColumn;
    dbgProductsSupplement_str: TdxDBGridColumn;
    dbgProductsProductCode_str: TdxDBGridColumn;
    dbgProductsStockValue_mon: TdxDBGridCurrencyColumn;
    dxDBGrid1Price_mon: TdxDBGridColumn;
    dbgProductsQtyOrdered_int: TdxDBGridColumn;
    dbgProductsSellingPrice: TdxDBGridCurrencyColumn;
    dbgProductsCost_mon: TdxDBGridCurrencyColumn;
    Label120: TLabel;
    DBText6: TDBText;
    dbgProductsBin_str: TdxDBGridColumn;
    dbgProductsInstitutionEDL_bol: TdxDBGridCheckColumn;
    atnUnLockProduct: TAction;
    popMenuMinor: TPopupMenu;
    UnlockProductforIssuing1: TMenuItem;
    grpClass: TDBRadioGroup;
    pnlProfile: TPanel;
    RzGroupBox2: TRzGroupBox;
    Label39: TLabel;
    Label127: TLabel;
    Label126: TLabel;
    DBText26: TDBText;
    DBText20: TDBText;
    dbtStockOnOrder: TDBText;
    Label41: TLabel;
    Label22: TLabel;
    dbtStockCommitted: TDBText;
    DBText21: TDBText;
    RzSeparator1: TRzSeparator;
    Label7: TLabel;
    Label133: TLabel;
    dbtStockonHand: TDBText;
    DBText24: TDBText;
    DBText19: TDBText;
    RzSeparator2: TRzSeparator;
    Label57: TLabel;
    Label58: TLabel;
    dbtStockProjected: TDBText;
    dbtStockAvailable: TDBText;
    Label121: TLabel;
    Label122: TLabel;
    DBText25: TDBText;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    dxDBCurrencyEdit9: TdxDBCurrencyEdit;
    dxDBCurrencyEdit10: TdxDBCurrencyEdit;
    RzGroupBox3: TRzGroupBox;
    Label8: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label59: TLabel;
    Label107: TLabel;
    Label75: TLabel;
    Label11: TLabel;
    DBText11: TDBText;
    Label67: TLabel;
    Label68: TLabel;
    DBText12: TDBText;
    Label26: TLabel;
    Label74: TLabel;
    Label34: TLabel;
    Label56: TLabel;
    Label69: TLabel;
    DBText16: TDBText;
    DBCheckBox7: TDBCheckBox;
    DBChck_InstList: TDBCheckBox;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo11: TwwDBLookupCombo;
    DBChck_ProvList: TDBCheckBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBChck_NatList: TDBCheckBox;
    wwDBComboBox6: TwwDBComboBox;
    wwDBComboBox7: TwwDBComboBox;
    Button1: TButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit10: TDBEdit;
    dbgProductsMaxStockSet_int: TdxDBGridColumn;
    dbgProductsMinStockSet_int: TdxDBGridColumn;
    dxDBStockLedgerDemanderName: TdxDBGridColumn;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    dbgProductsReturnsOnHold_int: TdxDBGridColumn;
    popMenuStockLedger: TPopupMenu;
    atnPrintStockStatusForRange: TAction;
    PrintProductList1: TMenuItem;
    atnPrintStockStatusForRange1: TMenuItem;
    PrintProductDetail1: TMenuItem;
    atnPrintProductBarcodes: TAction;
    PrintBarcodes1: TMenuItem;
    atnPrintProductDetailBarCode: TAction;
    atnPrintProductDetailBarCode1: TMenuItem;
    N8: TMenuItem;
    atnShowProductEditHistory: TAction;
    ProductEditHistory1: TMenuItem;
    tbsBarCodes: TElTabSheet;
    RzGroupBox8: TRzGroupBox;
    Panel87: TPanel;
    ElSpeedButton202: TElSpeedButton;
    ElSpeedButton203: TElSpeedButton;
    ElSpeedButton204: TElSpeedButton;
    ElSpeedButton205: TElSpeedButton;
    Shape48: TShape;
    dxProductBarCodes: TdxDBGrid;
    dxProductBarCodesbarCode_str: TdxDBGridColumn;
    atnBarcodeInsert: TDataSetInsert;
    atnBarcodeDelete: TDataSetDelete;
    atnBarcodeEdit: TDataSetEdit;
    atnBarcodePost: TDataSetPost;
    atnBarcodeCancel: TDataSetCancel;
    ElTabSheet1: TElTabSheet;
    RzDBMemo1: TRzDBMemo;
    PopupMenu1: TPopupMenu;
    Copytoclipboard1: TMenuItem;

(*---------------------------------------------------------------------------------------------------------------------------*)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlProductListBackgroundResize(Sender: TObject);
    procedure dbgProductsColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean); 
    procedure Actions_ExecuteEvent(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure atnProductCalcStocklevelsAutoExecute(Sender: TObject);
    procedure dbgProductsFilterChanged(Sender: TObject; ADataSet: TDataSet;
      const AFilterText: String); 
    procedure atnProductCalcStatusAutoExecute(Sender: TObject);
    procedure atnProductDescriptionToggleSupplementExecute(Sender: TObject);
    procedure atnProductDescriptionToggleGenericExecute(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure atnGeneric_ManageExecute(Sender: TObject);
    procedure atnAdministrationUnit_ManageExecute(Sender: TObject);
    procedure atnStrengthRange_ManageExecute(Sender: TObject);
    procedure dbShippingPackExit(Sender: TObject);
    procedure atnFormRange_ManageExecute(Sender: TObject);
    procedure atnTradeName_ManageExecute(Sender: TObject);
    procedure atnPackSizeRange_ManageExecute(Sender: TObject);
    procedure atnProduct_ValidateDispensingExecute(Sender: TObject);
    procedure atnProductCopyItemExecute(Sender: TObject);
    procedure atnPrintProductLedgerExecute(Sender: TObject);
    procedure atnContract_ManageExecute(Sender: TObject);
    procedure atnComparisonUnit_ManageExecute(Sender: TObject);
    procedure atnStockCalcStdDeviationExecute(Sender: TObject);
    procedure atnUnLockProductExecute(Sender: TObject);
    procedure atnPrintStockStatusForRangeExecute(Sender: TObject);
    procedure atnPrintProductBarcodesExecute(Sender: TObject);
    procedure atnPrintProductDetailBarCodeExecute(Sender: TObject);
    procedure atnShowProductEditHistoryExecute(Sender: TObject);
    procedure Copytoclipboard1Click(Sender: TObject);

  private
(*---------------------------------------------------------------------------------------------------------------------------*)
    { Private declarations }
    FColumnsSorted  : Boolean;                                                  // To compensate for no column title click event

    procedure ResizeListComponents;
    procedure SetAccessLevel(CurrAccess: integer);
    procedure SetProductFilter(pType: integer);
    procedure UpdateLedgerRecords;
    procedure Actions_ApplyTags;
    procedure Actions_Execute(pActionNumber: integer);

  public
(*---------------------------------------------------------------------------------------------------------------------------*)
    { Public declarations }
  protected

  {$IFDEF RXSTOREBUILD}
    procedure CreateParams(var Params: TCreateParams);override;                 // Removes border from the form
  {$ENDIF}

  end;
(*---------------------------------------------------------------------------------------------------------------------------*)
var
  ProductFrm: TProductFrm;
(*---------------------------------------------------------------------------------------------------------------------------*)

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

  ProductLevelUFrm,
  MainUDM,
  ProductUDm,
  ProductVarianceUFrm,
  MyApplicationUtilities,
  ProductAutolevelUDM, ProductStockStatusUFrm;
{$R *.DFM}



{$IFDEF RXSTOREBUILD}
procedure TProductFrm.CreateParams(var Params: TCreateParams); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:CreateParams---------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  inherited CreateParams(Params);                                               // Call general params
  Params.Style := WS_EX_CLIENTEDGE;                                             // Removes the border from the form edge.
end; (*................................................................*)(*end*)(*...........................................*)
{$ENDIF}



(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TProductFrm.ResizeListComponents; (*::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeListComponents-------------*)
                                                                                (*===========================================*)
                                                                    (*9.5.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth :integer;
begin (*.............................................................*)(*begin*)(*...........................................*)
  LockWindowUpdate(Handle);                                                     // Do everything youwe can to prevent screen
                                                                                // flicker.  Handle belongs to the form (Form.Handle)
  with pnlProductListBackground do                                              // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    end; (*with pnlProductListBackground do*)
  with shpProductList do                                                        // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpProductList do*)
  with lblMainFormTitle do                                                      // Title label
    begin
    Left    := EDGEMARGIN + 40;
    Top     := EDGEMARGIN;
    Width   := (NewWidth - 40) - (EDGEMARGIN * 2);
    end; (*with lblMainFormTitle do*)
  with tbsProductCatalog do                                                     // Tabsheet
    begin
    Left    := EDGEMARGIN;
    Top     := 45;
    Width   := NewWidth - (EDGEMARGIN * 2);
    Height  := NewHeight - ((EDGEMARGIN + (EDGEMARGIN div 2)) + Top);
    end;
  LockWindowUpdate(0);                                                          // Unlock the screen updater
end; (*................................................................*)(*end*)(*...........................................*)

(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TProductFrm.SetAccessLevel(CurrAccess: integer); (*:::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetAccessLevel-------------------*)
                                                                                (*===========================================*)
                                                                    (*9.5.2002*)(* Orig::Deane Putzier                       *)
                                                                    (*9.1.2003*)(* Edit::Deane Putzier                       *)
                                                                                // (A) Empty, but left in in case more security
                                                                                // is needed.  This is the framwork to apply
                                                                                // any security display options
begin (*.............................................................*)(*begin*)(*...........................................*)
atnProductEdit.Enabled := True;
atnProductAdd.Enabled := False;
atnProductAddVariance.Enabled := False;
pnlProductDetailColorBackground.Enabled := False;
pnlProfile.Enabled := True;
dxDBCurrencyEdit1.ReadOnly := False;
dxDBCurrencyEdit2.ReadOnly := False;
dxDBCurrencyEdit3.ReadOnly := False;
dxDBCurrencyEdit8.ReadOnly := False;
case CurrAccess of
  USER_SYS_ADMIN, USER_ADMIN, USER_USER:
    begin
    case CurrAccess of
      USER_SYS_ADMIN:
        begin
        pnlProductDetailColorBackground.Enabled := True;
        atnProductAddVariance.Enabled := True;
        atnProductAdd.Enabled := True;
        end;
      USER_ADMIN:
        begin
//        atnProductAddVariance.Enabled := True;
        pnlProductDetailColorBackground.Enabled := True;
        atnProductAdd.Enabled := True;
        end;
      USER_USER:
        begin
        end;
      end; //case
    end;
  USER_BROWSER:
    begin
    pnlProfile.Enabled := False;
    dxDBCurrencyEdit1.ReadOnly := True;
    dxDBCurrencyEdit2.ReadOnly := True;
    dxDBCurrencyEdit3.ReadOnly := True;
    dxDBCurrencyEdit8.ReadOnly := True;
    end;
  USER_NONE:
    begin
    atnProductEdit.Enabled := False;
    pnlProfile.Enabled := False;
    dxDBCurrencyEdit1.ReadOnly := True;
    dxDBCurrencyEdit2.ReadOnly := True;
    dxDBCurrencyEdit3.ReadOnly := True;
    dxDBCurrencyEdit8.ReadOnly := True;
    end;
  end;
end; (*................................................................*)(*end*)(*...........................................*)

(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TProductFrm.Actions_ApplyTags; (*:::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Actions_ApplyTags----------------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
                                                                                (* Sets tag values for all actions that go
                                                                                   thru action_executeevents                 *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  atnProductFirst.Tag                   := PRODUCT_FIRST;
  atnProductLast.Tag                    := PRODUCT_LAST;
  atnProductPageUp.Tag                  := PRODUCT_PAGEUP;
  atnProductPageDown.Tag                := PRODUCT_PAGEDOWN;
  atnProductPrior.Tag                   := PRODUCT_PRIOR;
  atnProductNext.Tag                    := PRODUCT_NEXT;
//atnProductSearch.Tag                  := PRODUCT_SEARCH;
  atnProductFilterAll.Tag               := PRODUCT_FILTER_NIL;
  atnProductFilterInstitutionalEDL.Tag  := PRODUCT_FILTER_EDL;
  atnProductFilterProvincialEDL.Tag     := PRODUCT_FILTER_PRV;
  atnProductFilterNationalEDL.Tag       := PRODUCT_FILTER_NAT;
  rdgFilter_Variance.Tag                := PRODUCT_FILTER_VARIANCE;
  atnProductRefresh.Tag                 := PRODUCT_REFRESH;
  atnProductAdd.Tag                     := PRODUCT_ADD;
  atnProductEdit.Tag                    := PRODUCT_EDIT;
  dbgProducts.Tag                       := PRODUCT_EDIT;
  atnProductDelete.Tag                  := PRODUCT_DELETE;
  atnProductSave.Tag                    := PRODUCT_SAVE;
  atnProductCloseDetail.Tag             := PRODUCT_CLOSEDETAIL;
  atnProductAddVariance.Tag             := PRODUCT_ADDVARIANCE;
  atnProductCalcStockLevels.Tag         := PRODUCT_CALCSTOCKLEVELS;
  Date_LedgerSt.Tag                     := PRODUCT_UPDATELEDGER;
  Date_LedgerEnd.Tag                    := PRODUCT_UPDATELEDGER;
  rdgLedgerFilter.Tag                   := PRODUCT_UPDATELEDGER;
  atnDisplay_ProductListInfo.Tag        := PRODUCT_DISPLAY_INFO;
  atnDisplay_SelCols_Products.Tag       := PRODUCT_SELCOLS_PRODUCTS;
  atnDisplay_ResetGrid.Tag              := PRODUCT_DISPLAY_RESET;
  atnDisplay_SaveDefaults.Tag           := PRODUCT_DISPLAY_SAVEDEFAULTS;
  atnDisplay_SelCols_Contracts.Tag      := PRODUCT_SELCOLS_CONTRACTS;
  atnDisplay_SelCols_StockLedger.Tag    := PRODUCT_SELCOLS_STOCKLEDGER;
  atnPrintProductList.Tag               := PRODUCT_PRINT_LIST;
  atnPrintProductDetail.Tag             := PRODUCT_PRINT_DETAIL;
  atnProductSearch.Tag                  := PRODUCT_SEARCH;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.Actions_Execute(pActionNumber :integer); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:Actions_Execute------------------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
var
  SelectColumns :TColumnSelector;
begin (*.............................................................*)(*begin*)(*...........................................*)
  if Assigned(ProductDm) then
    with ProductDm do
      case pActionNumber of                                                     // Process all events as per passed tag code
          // Navigation
        PRODUCT_FIRST       : ProductFirst;
        PRODUCT_LAST        : ProductLast;
        PRODUCT_PAGEUP      : ProductPageUp(10);
        PRODUCT_PAGEDOWN    : ProductPageDown(10);
        PRODUCT_PRIOR       : ProductPrior;
        PRODUCT_NEXT        : ProductNext;
          // Filter
        PRODUCT_FILTER_EDL  : SetProductFilter(1);
        PRODUCT_FILTER_NAT  : SetProductFilter(3);
        PRODUCT_FILTER_PRV  : SetProductFilter(2);
        PRODUCT_FILTER_NIL  : SetProductFilter(0);
        PRODUCT_REFRESH     : begin
                              Editing := False;
                              RefreshProductTable;
                              Editing := True;
                              end;
        // Edit
        PRODUCT_ADD         : ProductAdd; // get a return value
   //     PRODUCT_ADD_COPY    : ProductAddCopy;
        PRODUCT_SAVE        : ProductSave;
        PRODUCT_EDIT        : begin
                              atnProductDelete.Enabled := False;
                              Editing := True;
                              UpdateDataLinks;
                              if dbgProducts.DataSource.DataSet.RecordCount > 1 then
                                begin
                                tbsProductCatalog.ActivePageIndex := 1;
                                dbgProducts.DataSource := nil;
                                end;          
                              end;
        PRODUCT_DELETE      : DeleteProduct;
        PRODUCT_CLOSEDETAIL : begin
                              ProductSave;
                              atnProductDelete.Enabled := True;
                              Editing := False;
                              dbgProducts.DataSource := ProductDm.dstblProductCatalog;
                              tbsProductCatalog.ActivePageIndex := 0;
                              end;
        PRODUCT_ADDVARIANCE : begin
                              AddStockVariance;
                              DBChart_QoH.RefreshData;
                              end;
        PRODUCT_CALCSTOCKLEVELS :
          begin
          UpdateLTandPP; // ProductDM
          ProductLevelFrm := TProductLevelFrm.Create(Self);
            try
            ProductLevelFrm.ShowModal;
            finally
            ProductLevelFrm.Free;
            end;
          end;
        PRODUCT_UPDATELEDGER: UpdateLedgerRecords;
        PRODUCT_FILTER_VARIANCE :
          SetVarianceFilters(rdgFilter_Variance.ItemIndex, Now, Now);
        PRODUCT_DISPLAY_INFO :
          with pnlProductList_Information do
            begin
            Visible := not Visible;
            atnDisplay_ProductListInfo.Checked := Visible;
            end;
        PRODUCT_SELCOLS_PRODUCTS,
        PRODUCT_SELCOLS_STOCKLEDGER,
        PRODUCT_SELCOLS_CONTRACTS :
          begin
          SelectColumns := TColumnSelector.Create;
            try
            case pActionNumber of
              PRODUCT_SELCOLS_CONTRACTS :
                SelectColumns.SelectColumns(dxDBProductContracts);
              PRODUCT_SELCOLS_PRODUCTS :
              SelectColumns.SelectColumns(dbgProducts);
              PRODUCT_SELCOLS_STOCKLEDGER :
                SelectColumns.SelectColumns(dxDBStockLedger);
              end;
            finally
            SelectColumns.Free;
            end;
          end;
        PRODUCT_DISPLAY_RESET :
          try
           dbgProducts.LoadFromIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
          except
          end;
        PRODUCT_DISPLAY_SAVEDEFAULTS :
          dbgProducts.SaveToIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
        PRODUCT_PRINT_LIST :
          ProductPrintList;
        PRODUCT_PRINT_DETAIL :
          ProductPrintDetail;
        PRODUCT_SEARCH :
          wwLookupDialog1.Execute;
        end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.SetProductFilter(pType :integer); (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetProductFilter-----------------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
const                                                                  (*const*)(*...........................................*)
  MAXACTIONS = 3;
  STRCAPTION = 'P R O D U C T  C A T A L O G : [ %s ]';
  DESCRIPTIONS : array[0..MAXACTIONS] of string = (SALLPRODUCTS1,
                                                  SINSTITUTIONALE1,
                                                  SPROVINCIALEDL1,
                                                  SNATIONALEDL1);
var (*.................................................................*)(*var*)(*...........................................*)
  atnProducts :array[0..MAXACTIONS] of TAction;
  i :integer;
begin (*.............................................................*)(*begin*)(*...........................................*)
  if Assigned(ProductDM) then
    with ProductDM do
      begin
      FilterProducts(pType);
      atnProducts[0] := atnProductFilterAll;
      atnProducts[1] := atnProductFilterInstitutionalEDL;
      atnProducts[2] := atnProductFilterProvincialEDL;
      atnProducts[3] := atnProductFilterNationalEDL;
      for i := Low(ATNPRODUCTS) to High(ATNPRODUCTS) do
      ATNPRODUCTS[i].Checked := False;
      ATNPRODUCTS[pType].Checked := True;
      lblMainFormTitle.Caption := Format(STRCAPTION, [DESCRIPTIONS[pType]]);
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.UpdateLedgerRecords; (*:::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:UpdateLedgerRecords--------------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vRequest  :integer;
begin (*.............................................................*)(*begin*)(*...........................................*)
  if Assigned(ProductDm) then
    with ProductDm do
      begin
      vRequest := rdgLedgerFilter.ItemIndex;
      SetLedgerFilters(vRequest, Date_LedgerSt.DateTime, Date_LedgerEnd.DateTime);
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.FormCreate(Sender: TObject); (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:FormCreate-----------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i           :integer;
  {vStrLst     :TStringList;
  vRadioLists :array[0..1] of TDBRadioGroup;                                    // List of radio groups
  vRadioGets  :array[0..1] of integer;}                                          // List of type of parameters to get
begin (*.............................................................*)(*begin*)(*...........................................*)

  LockWindowUpdate(Handle);                                                     // Do everything youwe can to prevent screen

  {$IFDEF RXSTOREBUILD}
  FormStyle := fsMDIChild;
  {$ENDIF}


  EnableScrollBar(Handle, SB_BOTH, ESB_ENABLE_BOTH);

  FColumnsSorted := False;
//  Application.ProcessMessages;
//  ResizeListComponents;

  Actions_ApplyTags;
  atnDisplay_SaveDefaults.Visible := SYSTEM_DEBUG;                          // Only show if we are debuging
//  SetProductFilter(1);                                                          // Shows institution EDL only.  0 = all
  tbshList.TabVisible := False;                                                 // Switch off tabs used in design.
  tbshDetail.TabVisible := False;
  tbsProductCatalog.ActivePageIndex := 0;                                       // Set the tab for the startup page
  pclProductDetails.ActivePage := tsStockLevels;                               // Set the tab for the details page
  rdgFilter_Variance.ItemIndex := 0;
  ProductDm:=TProductDm.Create(Self);
  Date_LedgerSt.DateTime    := ((Date) - 365);                                  // Controls view dates for ledger tab.
  Date_LedgerEnd.DateTime   := (Date);
  with rdgLedgerFilter do                                                       // Controls view on stock ledger tab.
    begin
    Items.Clear;
    for i:= low(LEDGERFILTERS) to high(LEDGERFILTERS) do
      Items.Add(LEDGERFILTERS[i]);
    ItemIndex := 0;
    end;
    //Changes from JP for Radio Group
  rdgProcurementPeriod.Items[0]:=SA2+MainDm.tblMainSystem.FieldByName('ProcurementPeriodA_int').AsString+SDays8;
  rdgProcurementPeriod.Items[1]:=SB2+MainDm.tblMainSystem.FieldByName('ProcurementPeriodB_int').AsString+SDays9;
  rdgProcurementPeriod.Items[2]:=SC2+MainDm.tblMainSystem.FieldByName('ProcurementPeriodC_int').AsString+SDays10;
  rdgProcurementPeriod.Items[3]:=SD2+MainDm.tblMainSystem.FieldByName('ProcurementPeriodD_int').AsString+SDays11;
  rdgLeadTime.Items[0]:=SA3+MainDm.tblMainSystem.FieldByName('LeadTimeA_int').AsString+SDays12;
  rdgLeadTime.Items[1]:=SB3+MainDm.tblMainSystem.FieldByName('LeadTimeB_int').AsString+SDays13;
  rdgLeadTime.Items[2]:=SC3+MainDm.tblMainSystem.FieldByName('LeadTimeC_int').AsString+SDays14;
  rdgLeadTime.Items[3]:=SD3+MainDm.tblMainSystem.FieldByName('LeadTimeD_int').AsString+SDays15;
  //Remove the Bottom Statements

  UpdateLedgerRecords;                                                          // Do this AFTER setting date lists and group lists
  FColumnsSorted := True;                                                       // Forces a sort of the grid data


  {$IFDEF RXSTOREBUILD}
  SetAccessLevel(SystemSecurityDM.GetUserRights(SYSTEM_PRODUCTS));
  {$ELSE}
  SetAccessLevel(RxSolutionFrm.Security.GetUserAccessLevel(MODULE_CORE_PRODUCTS));
  {$ENDIF}

(* RxStore Requires --  RxStore - 2005 June
  SetAccessLevel(SystemSecurityDM.GetUserRights(SYSTEM_PRODUCTS));
*)

(* RxSolution Requires
  SetAccessLevel(RxSolutionFrm.Security.GetUserAccessLevel(MODULE_CORE_PRODUCTS));
*)
 
  SetProductFilter(1);
  LockWindowUpdate(0);                                                     // Do everything youwe can to prevent screen

end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.FormClose(Sender: TObject; var Action: TCloseAction); (**)(*===========================================*)
                                                                                (*procedure:FormClose------------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  ProductDm.Free;
  Action:=caFree;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductFrm.pnlProductListBackgroundResize(Sender: TObject); (*START:*)(*===========================================*)
                                                                                (*procedure:pnlProductListBackgroundResize---*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
begin
  ResizeListComponents;
end;

procedure TProductFrm.dbgProductsColumnSorting(Sender: TObject; (*::::::START:*)(*===========================================*)
  Column: TdxDBTreeListColumn; var Allow: Boolean);                             (*procedure:dbgProductsColumnSorting---------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
 FColumnsSorted := True;
//  (Sender as TDXDBGrid).KeyField := Column.FieldName;
//  MessageDlg((Sender as TDXDBGrid).KeyField, mtInformation, [mbOK], 0);
end;            

procedure TProductFrm.Actions_ExecuteEvent(Sender: TObject); (*:::::::::START:*)(*===========================================*)
                                                                                (*procedure:Actions_ExecuteEvent-------------*)
                                                                                (*===========================================*)
                                                                    (*9.1.2003*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  if Sender is TAction then
    Actions_Execute( (Sender as TAction).Tag )
  else if Sender is TDateTimePicker then
    Actions_Execute( (Sender as TDateTimePicker).Tag )
  else if Sender is TRadioGroup then
    Actions_Execute( (Sender as TRadioGroup).Tag )
  else if Sender is TDBRadioGroup then
    Actions_Execute( (Sender as TDBRadioGroup).Tag )
  else if Sender is TdxDBGrid then
    Actions_Execute( (Sender as TdxDBGrid).Tag );
end;

procedure TProductFrm.Timer1Timer(Sender: TObject);
begin
 if FColumnsSorted then
    if Assigned(ProductDm) then                                                   // Can't move to generic module because it needs
      with ProductDm do                                                           // to pass a string var
        SortByColumn(dbgProducts);
  FColumnsSorted := False;
end;

procedure TProductFrm.atnProductCalcStocklevelsAutoExecute(
  Sender: TObject);
begin
  ProductAutoLevelDM := TProductAutoLevelDM.Create(Self);
  with ProductAutoLevelDM do
    try
    AutoLevelProducts;
    finally;
    Free;
    end;
end;

procedure TProductFrm.dbgProductsFilterChanged(Sender: TObject;
  ADataSet: TDataSet; const AFilterText: String);
begin
if Assigned(ADataSet) then
  with ADataSet do
    begin
    Filter := AFilterText;
    Filtered := True;
    end;
end; 

procedure TProductFrm.atnProductCalcStatusAutoExecute(Sender: TObject);
begin
  ProductAutoLevelDM := TProductAutoLevelDM.Create(Self);
  with ProductAutoLevelDM do
    try
    AutoLevelProductsStatus;
    finally;
    Free;
    end;
end;

procedure TProductFrm.atnProductDescriptionToggleSupplementExecute(Sender: TObject);
begin
try
if assigned(ProductDm) then
  if chbExcludeGenericDescription.Checked then
    with chbExcludeGenericDescription.DataSource.DataSet do
      if Active then
        begin
        if not (State in [dsInsert, dsEdit]) then Edit;
        FieldByName('Supplement_bol').AsBoolean := True;
        end
except

end;

end;

procedure TProductFrm.atnProductDescriptionToggleGenericExecute(
  Sender: TObject);
begin
  try
    if assigned(ProductDm) then
      if chbExcludeGenericDescription.Checked then
        with chbExcludeGenericDescription.DataSource.DataSet do
          if Active then
          begin
            if not (State in [dsInsert, dsEdit]) then Edit;
           FieldByName('Supplement_bol').AsBoolean := True;
          end
  except
  end;
end;

procedure TProductFrm.RzBmpButton1Click(Sender: TObject);
begin
  if tbsProductCatalog.ActivePage = tbshList then
    Actions_Execute(PRODUCT_PRINT_LIST)
    else
    Actions_Execute(PRODUCT_PRINT_DETAIL);
end;

procedure TProductFrm.atnGeneric_ManageExecute(Sender: TObject);
begin
  ProductDm.ManageGenericList;
end;

procedure TProductFrm.atnAdministrationUnit_ManageExecute(Sender: TObject);
begin
  ProductDm.ManageAdministrationUnits;
end;

procedure TProductFrm.atnStrengthRange_ManageExecute(Sender: TObject);
begin
  ProductDM.ManageStrengthRange;
end;

procedure TProductFrm.dbShippingPackExit(Sender: TObject);
begin
 if StrToInt(dbShippingPack.Text) = 0 then
  dbShippingPack.Field.AsInteger := 1; 
end;

procedure TProductFrm.atnFormRange_ManageExecute(Sender: TObject);
begin
 ProductDm.ManageFormRange;
end;

procedure TProductFrm.atnTradeName_ManageExecute(Sender: TObject);
begin
ProductDm.ManageTradeName;
end;

procedure TProductFrm.atnPackSizeRange_ManageExecute(Sender: TObject);
begin
ProductDm.ManagePackSizeRange;
end;

procedure TProductFrm.atnProduct_ValidateDispensingExecute(
  Sender: TObject);
begin
ProductDm.ValidateForDispensing;
end;

procedure TProductFrm.atnProductCopyItemExecute(Sender: TObject);
var
 newproduct_id : Integer;
begin
 //Dec 07 SM
 try
  ProductDm.qryProductAddCopyItem.Parameters.ParamByName('currProductID').Value :=
  ProductDm.tblProductCatalog.FieldByName('ProductCode_Id').AsInteger;
  ProductDm.qryProductAddCopyItem.ExecSQL;

  //refresh product table and grid
  ProductDm.tblProductCatalog.Active := False;
  ProductDm.tblProductCatalog.Active := True;
  dbgProducts.Refresh;

  //look for last added item
  ProductDm.qryLastProductAdded.Active := True;
  newproduct_id := ProductDm.qryLastProductAdded.FieldByName('ProductCode_Id').AsInteger;
  ProductDm.qryLastProductAdded.Active := False;

  //locate the last added item and open it for editing.
  ProductDm.dstblProductCatalog.DataSet.Locate('ProductCode_ID', newproduct_id, []);
  atnProductDelete.Enabled := False;
  ProductDm.Editing := True;

  if dbgProducts.DataSource.DataSet.RecordCount > 1 then
   begin
   tbsProductCatalog.ActivePageIndex := 1;
   dbgProducts.DataSource := nil;
   end;
  except
  end;

end;

procedure TProductFrm.atnPrintProductLedgerExecute(Sender: TObject);
begin

pplblDataDates.caption := SShowingTransactionSBetween1+
 DateToStr(Date_LedgerSt.Date)+STo2+DateToStr(Date_LedgerEnd.Date);
pplblDescription.Caption :=
 ProductDm.tblProductCatalog.fieldByName('Description_str').AsString;
ppReport1.Print;

end;

procedure TProductFrm.atnContract_ManageExecute(Sender: TObject);
begin
 ProductDm.Managecontracts;
end;

procedure TProductFrm.atnComparisonUnit_ManageExecute(Sender: TObject);
begin
 ProductDm.ManageComparisonUnits;
end;

procedure TProductFrm.atnStockCalcStdDeviationExecute(Sender: TObject);
begin
 //New stock levels calculation procedure May 2008
 ProductDm.CalculateNewProcedure;
end;

procedure TProductFrm.atnUnLockProductExecute(Sender: TObject);
begin
 ProductDm.UnLockProductforIssuing;
end;

procedure TProductFrm.atnPrintStockStatusForRangeExecute(Sender: TObject);
var
 frmStockStatus: TProductStockStatusFilterFrm;
begin
 //************ SM 11 Feb 2013
 //************ Task 4207 - Stock Status Report
 frmStockStatus := TProductStockStatusFilterFrm.Create(Application);

 with frmStockStatus do
  begin
  ShowModal;
  Free;
  end;
  
end;

procedure TProductFrm.atnPrintProductBarcodesExecute(Sender: TObject);
begin
 ProductDm.PrintProductListBarCodes;
end;

procedure TProductFrm.atnPrintProductDetailBarCodeExecute(Sender: TObject);
begin
 //
 ProductDm.PrintProductDetailBarcodes;
end;

procedure TProductFrm.atnShowProductEditHistoryExecute(Sender: TObject);
begin
 ProductDm.ShowProductEditHistory;
end;

procedure TProductFrm.Copytoclipboard1Click(Sender: TObject);
begin
 DBChart_QoH.CopyToClipboardBitmap;
end;

end.

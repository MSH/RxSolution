unit OrderDetailUFrm;
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
  Dialogs, Grids, DBGrids, StdCtrls, dbcgrids, ExtCtrls, ElPopBtn, DBCtrls,
  ImgList,Mask, ActnList, Menus,DB,     Types,



  RzBmpBtn, dxExEdtr, ppBands, ppCtrls, myChkBox, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, dxCntner,
  DBActns, dxEdLib, dxDBELib, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl,
  dxPageControl, dxEditor, dxDBEdtr, wwdbdatetimepicker, wwdblook,
  ppModule, raCodMod, ppParameter, StdActns;

const
 EDGEMARGIN = 10;
 DBGROWHEIGHT = 16;

 SET_ORDER_NUMBER           = 0;
 GET_PRODUCT_TRUE           = 1;
 ADD_SINGLE_ORDERITEM       = 2;
 DELETE_ORDERITEM_TRUE      = 3;
 AUTO_PURCHASE_ORDER        = 4;
 PURCHASE_ORDER_ITEMSDELETE = 5;
 UPDATE_ORDERSUBTOTALS      = 6;
 ADD_REQUISITION_ITEMS      = 7;
 REMOVE_REQUISITION         = 8;
 VALIDATE_POSTING           = 9;
// SET_SYSTEMSTORE_STR        = 10;
// SET_SUPPLIER_STR           = 11;
 IS_RXCOSTING               = 12;
 MARKALLCOMPLETE            = 13;
 AUTO_PURCHASE_ORDER_GROUP2 = 14;
 ADD_INSTITUTION_EDL        = 15;
 CREATE_ORDER_TEXT_FILE     = 16;
 ADD_DEMANDER_AUTHORIZED_ITEMS = 17;


type
  TOrderDetailFrm = class(TForm)
    pnlOrderDetailBackground: TPanel;
    pnlOrderHeaderBackground: TPanel;
    Label4: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label51: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Label25: TLabel;
    Label35: TLabel;
    dbtActivated_dat: TDBText;
    Label79: TLabel;
    Label32: TLabel;
    DBText7: TDBText;
    dbtActivatedBy_str: TDBText;
    DBText9: TDBText;
    dbeICNCode: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    dbcActivated_bol: TDBCheckBox;
    pnlStatusBar: TPanel;
    Button1: TButton;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    atnItem_Product_Change: TAction;
    SelectNewProduct1: TMenuItem;
    atnItem_Product_Add: TAction;
    Label5: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Image1: TImage;
    atnItem_First: TDataSetFirst;
    atnItem_Prior: TDataSetPrior;
    atnItem_Next: TDataSetNext;
    atnItem_Last: TDataSetLast;
    atnItem_Product_Delete_Single: TAction;
    atnItem_Product_AutoOrder: TAction;
    atnItem_Product_Delete_All: TAction;
    Add2: TMenuItem;
    Delete1: TMenuItem;
    rgrpType: TDBRadioGroup;
    atnRequistionAdd: TAction;
    atnRequisitionDelete: TAction;
    btnPost: TButton;
    Panel1: TPanel;
    lblPosted: TLabel;
    dbtProductCode: TDBText;
    dbtSystemStore: TDBText;
    dbtSupplier: TDBText;
    dxdbSupplierCode: TdxDBLookupEdit;
    dxdbSystemStoreCode: TdxDBLookupEdit;
    dxdbSystemStore: TdxDBLookupEdit;
    dxdbSupplierName: TdxDBLookupEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxeCharges_mon: TdxDBCurrencyEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dxEditStyle_NoBorders: TdxEditStyleController;
    dxTbctrlOrderDetail: TdxPageControl;
    dxTbsRxCosting: TdxTabSheet;
    dxTbsOrders: TdxTabSheet;
    dxOrder_Detail: TdxPageControl;
    dxTbsOrders_Items: TdxTabSheet;
    dxTbsOrders_Notes: TdxTabSheet;
    Panel9: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton28: TElSpeedButton;
    ElSpeedButton29: TElSpeedButton;
    ElSpeedButton30: TElSpeedButton;
    ElSpeedButton31: TElSpeedButton;
    ElSpeedButton32: TElSpeedButton;
    Shape2: TShape;
    ElSpeedButton34: TElSpeedButton;
    ElSpeedButton35: TElSpeedButton;
    ElSpeedButton36: TElSpeedButton;
    Panel11: TPanel;
    Panel14: TPanel;
    dxgOrders_Items: TdxDBGrid;
    dxgOrders_ItemsProductCode_str: TdxDBGridColumn;
    dxgOrders_ItemsECN_str: TdxDBGridColumn;
    dxgOrders_ItemsDescription_str: TdxDBGridColumn;
    dxgOrders_ItemsQtyReceivedCum_int: TdxDBGridMaskColumn;
    dxgOrders_ItemsQtyOrdered_int: TdxDBGridMaskColumn;
    dxgOrders_ItemsPackCost_mon: TdxDBGridCurrencyColumn;
    dxgOrders_ItemsExtendedCost_mon: TdxDBGridCurrencyColumn;
    Panel2: TPanel;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton20: TElSpeedButton;
    ElSpeedButton21: TElSpeedButton;
    ElSpeedButton22: TElSpeedButton;
    ElSpeedButton23: TElSpeedButton;
    Shape1: TShape;
    ElSpeedButton24: TElSpeedButton;
    ElSpeedButton26: TElSpeedButton;
    ElSpeedButton27: TElSpeedButton;
    Panel6: TPanel;
    Panel10: TPanel;
    dxDBMemo1: TdxDBMemo;
    dxEditStyle_Flat: TdxEditStyleController;
    Image3: TImage;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    atnItem_Save: TDataSetPost;
    atnItem_Cancel: TDataSetCancel;
    atnItem_PageUp: TDataSetFirst;
    atnItem_PageDown: TDataSetLast;
    dxTbsOrders_History: TdxTabSheet;
    N1: TMenuItem;
    AddAutoGeneratePO1: TMenuItem;
    N3: TMenuItem;
    DeleteALLproducts1: TMenuItem;
    dxgOrders_ItemsCompleted_bol: TdxDBGridCheckColumn;
    ppDBPipeline1: TppDBPipeline;
    ppPurchaseOrder: TppReport;
    ImageList1: TImageList;
    dxgOrders_ItemsHistory: TdxDBGrid;
    dxgOrders_ItemsHistoryDate_dat: TdxDBGridColumn;
    dxgOrders_ItemsHistoryType_str: TdxDBGridColumn;
    dxgOrders_ItemsHistoryDescription_str: TdxDBGridColumn;
    dxgOrders_ItemsHistoryUserName_str: TdxDBGridColumn;
    atnItem_MarkAllComplete: TAction;
    atnItemMarkAllComplete1: TMenuItem;
    N2: TMenuItem;
    dxgDBRxCostingRequisitions: TdxDBGrid;
    dxgDBGridCosting: TdxDBGrid;
    dxgDBGridCostingDescription: TdxDBGridColumn;
    dxgDBGridCostingSumOfQtyOrdered_int: TdxDBGridMaskColumn;
    dxgDBGridCostingSumOfQtyIssued_int: TdxDBGridMaskColumn;
    dxgDBGridCostingMaxOfPackCost_mon: TdxDBGridCurrencyColumn;
    dxgDBGridCostingSumOfExtendedCost_mon: TdxDBGridCurrencyColumn;
    ppReportRxCosting: TppReport;
    ppTitleBand2: TppTitleBand;
    ppImage4: TppImage;
    ppDBCalc4: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel10: TppLabel;
    ppLabel16: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText18: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText19: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText20: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBText33: TppDBText;
    ppLine2: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    dxgDBRxCostingRequisitionsDescriptionOne: TdxDBGridColumn;
    dxgDBRxCostingRequisitionsRequisition_str: TdxDBGridMaskColumn;
    dxgDBRxCostingRequisitionsPotCost_mon: TdxDBGridCurrencyColumn;
    ppDBPipelineRxCosting: TppDBPipeline;
    dxgDBRxCostingRequisitionsPOReference_str: TdxDBGridColumn;
    atnDisplayCols: TAction;
    Panel7: TPanel;
    ElSpeedButton1: TElSpeedButton;
    dxgOrders_ItemsNSN_str: TdxDBGridColumn;
    dxgOrders_ItemsICN_str: TdxDBGridColumn;
    RzBmpButton1: TRzBmpButton;
    ppLabel24: TppLabel;
    ppDBText3: TppDBText;
    ppLabel32: TppLabel;
    dxgOrders_ItemsShippingPack: TdxDBGridColumn;
    atnItem_Product_AutoOrder_Group2: TAction;
    AddAutoGeneratePurchaseOrderforGroup21: TMenuItem;
    AddAllInsittutionalEDL1: TMenuItem;
    atnItem_Product_Add_EDL: TAction;
    dxgDBGridCostingICN_str: TdxDBGridColumn;
    dxgDBGridCostingECN_str: TdxDBGridColumn;
    ppVariable2: TppVariable;
    ppLabel33: TppLabel;
    ppShape2: TppShape;
    ppLabel31: TppLabel;
    ppDBText11: TppDBText;
    ppLabel34: TppLabel;
    ppDBText12: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppLabel35: TppLabel;
    ppDBText13: TppDBText;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel48: TppLabel;
    dxgOrders_ItemsTradeName_str: TdxDBGridColumn;
    dxgOrders_ItemsMinStockSet_int: TdxDBGridColumn;
    dxgOrders_ItemsMaxStockSet_int: TdxDBGridColumn;
    Label1: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    dxgOrders_ItemsOnStock: TdxDBGridColumn;
    dxgOrders_ItemsOnOrder: TdxDBGridColumn;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppImage1: TppImage;
    ppDBCalc3: TppDBCalc;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel6: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText52: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText53: TppDBText;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel84: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel91: TppLabel;
    ppLabel95: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    ppDBText84: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel96: TppLabel;
    ppDBText89: TppDBText;
    ppLabel97: TppLabel;
    ppDBText2: TppDBText;
    ppSystemVariable17: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText34: TppDBText;
    ppLabel85: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel86: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    N4: TMenuItem;
    CreateTextFile1: TMenuItem;
    atnMakeTextFile: TAction;
    lblBudgetDemander: TLabel;
    cmbBudgetCode: TdxDBLookupEdit;
    cmbBudgetDemanderName: TdxDBLookupEdit;
    dxgOrders_ItemsDemanderQtyOnHand_int: TdxDBGridColumn;
    AddAllDemanderAuthorizedProducts1: TMenuItem;
    atnItem_Product_Add_Demander_Authorized: TAction;
    PopupMenu2: TPopupMenu;
    Printselectedorder1: TMenuItem;
    PrintselectedorderDraft1: TMenuItem;
    Printselectedorder2: TMenuItem;
    atnPrintPurchaseOrder: TAction;
    atnPrintDraftPurchaseOrder: TAction;
    atnPrintOutstandingItems: TAction;
    ppOutstandingItems: TppReport;
    ppTitleBand3: TppTitleBand;
    ppImage7: TppImage;
    ppDBText51: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText68: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLabel67: TppLabel;
    ppLabel54: TppLabel;
    ppLine5: TppLine;
    ppLabel55: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppHeaderBand3: TppHeaderBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBCalc2: TppDBCalc;
    ppDBText39: TppDBText;
    ppDBText63: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppShape4: TppShape;
    ppLine3: TppLine;
    ppDBText86: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel59: TppLabel;
    ppDBText15: TppDBText;
    ppLabel98: TppLabel;
    ppDBText88: TppDBText;
    ppSystemVariable8: TppSystemVariable;
    ppLabel99: TppLabel;
    ppDBText90: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppLabel101: TppLabel;
    ppLabel100: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppParameterList3: TppParameterList;
    ppDBPipeline2: TppDBPipeline;
    ppDraftPurchaseOrder: TppReport;
    ppTitleBand4: TppTitleBand;
    ppImage2: TppImage;
    ppDBText23: TppDBText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel69: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText28: TppDBText;
    ppDBText35: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText69: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppDBText74: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel79: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLabel89: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBCalc14: TppDBCalc;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLine4: TppLine;
    ppDBText85: TppDBText;
    ppDBText83: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppImage6: TppImage;
    ppSystemVariable12: TppSystemVariable;
    ppLabel102: TppLabel;
    ppDBText87: TppDBText;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppImage5: TppImage;
    ppDBText91: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel106: TppLabel;
    raCodeModule3: TraCodeModule;
    ppParameterList4: TppParameterList;
    atnMakePMPUTextFile: TAction;
    CreatePMPUTextFile1: TMenuItem;
    ppLabel107: TppLabel;
    ppDBText92: TppDBText;
    atnMakeTextFileGP: TAction;
    CreateRDMTextFile1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure atnItem_Product_ChangeExecute(Sender: TObject);
    procedure atnItem_Product_AddExecute(Sender: TObject);
    procedure atnItem_Product_Delete_SingleExecute(Sender: TObject);
    procedure atnItem_Product_AutoOrderExecute(Sender: TObject);
    procedure atnItem_Product_Delete_AllExecute(Sender: TObject);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure atnRequistionAddExecute(Sender: TObject);
    procedure atnRequisitionDeleteExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPostClick(Sender: TObject);
    procedure dxgOrders_ItemsChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure dxeCharges_monExit(Sender: TObject);
    procedure atnItem_PageUpExecute(Sender: TObject);
    procedure atnItem_PageDownExecute(Sender: TObject);
    procedure dxOrder_DetailChange(Sender: TObject);
    procedure ppPurchaseOrderPreviewFormCreate(Sender: TObject);
    procedure atnItem_MarkAllCompleteExecute(Sender: TObject);
    procedure atnDisplayColsExecute(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure atnItem_Product_AutoOrder_Group2Execute(Sender: TObject);
    procedure atnItem_Product_Add_EDLExecute(Sender: TObject);
    procedure CreateTextFile1Click(Sender: TObject);
    procedure atnMakeTextFileExecute(Sender: TObject);
    procedure AddAllDemanderAuthorizedProducts1Click(Sender: TObject);
    procedure atnPrintPurchaseOrderExecute(Sender: TObject);
    procedure atnPrintDraftPurchaseOrderExecute(Sender: TObject);
    procedure atnPrintOutstandingItemsExecute(Sender: TObject);
    procedure atnMakePMPUTextFileExecute(Sender: TObject);
    procedure atnMakeTextFileGPExecute(Sender: TObject);

    
//    procedure ElPageControl1Resize(Sender: TObject);
  private
    { Private declarations }
    procedure SetUpRequisitionDateSequence;
    function AccessDataModule(CallProcedure:integer):boolean;
    procedure PageDataSet(PageSize:integer);


  public
    { Public declarations }
    GROUP2_str : String;
    procedure SetPageVisibility;
  end;

  TPurchaseOrderEditor = class(TObject)

  public
    function OrderStock : Boolean;
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

  OrderUDM,
  MainUDM,
  MyApplicationUtilities, OrderGroup2SelectUFrm, ProductAutolevelUDM,
  DialogProgressIndicatorUFrm;


{$R *.dfm}



{ TPurchaseOrderEditor }

function TPurchaseOrderEditor.OrderStock: Boolean;
var
  OrderDetailFrm: TOrderDetailFrm;

begin

  Result := False;
  OrderDetailFrm := TOrderDetailFrm.Create(Application);
  with OrderDetailFrm do
    try
    SetPageVisibility;
    if ShowModal = mrOK then Result := True;
     OrderDM.MakeRecordAvailable;
    finally
    Free;
    end;
              
end;

{ TOrderDetailFrm }

procedure TOrderDetailFrm.SetPageVisibility;
var
  i:integer;
  IsRxCosting   :Boolean;
  IsPosted      :Boolean;
  vAccessLevel  :double;
  prvIsBudgetModel : Boolean;



begin

  IsPosted    := dbcActivated_bol.Field.AsBoolean;                              // has this record been posted
  IsRxCosting := AccessDataModule(IS_RXCOSTING);                                // find out if this is in Costing mode
  prvIsBudgetModel := MainDM.IsRequisitionManagementOnly;                                                                              // (Select reqs instead of products)
  with dxTbctrlOrderDetail do                                                   // Set up main display items, tabcontrols etc.
    begin
    HideButtons := True;                                                        // Switch off main display tabs
    if IsRxCosting then
      ActivePage  := dxTbsRxCosting                                             // Set proper display page
      else
      ActivePage := dxTbsOrders;
    end;

  {$IFDEF RXSTOREBUILD}
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      vAccessLevel := GetUserRights(SYSTEM_ORDERS, 0);
  {$ELSE}
   vAccessLevel := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_STORE_ORDERS);
  {$ENDIF}



  with dxOrder_Detail do
    Activepage := dxTbsOrders_Items;
  dxTbsOrders_History.TabVisible := vAccessLevel > USER_USER;
  
  // Sets the posting display
  dbtActivatedBy_str.Visible  := IsPosted;
  dbtActivated_dat.Visible    := IsPosted;

  //********* 21 Oct 2013  SM
  btnPost.Visible             := (not IsPosted) AND (vAccessLevel > USER_USER);

  dbtSupplier.Visible         := IsPosted;
  dbtSystemStore.Visible      := IsPosted;

  dxdbSupplierName.Visible    := not IsPosted;
  dxdbSupplierCode.Visible    := not IsPosted;
  dxdbSystemStore.Visible     := not IsPosted;
  dxdbSystemStoreCode.Visible := not IsPosted;

  // makes sure you can not change qty ordered if posted but opposite for completed field
  with dxgOrders_Items do
    for i:= 0 to ColumnCount -1 do
      begin
      if Columns[i].FieldName = 'QtyOrdered_int' then
        Columns[i].DisableEditor := IsPosted;
      if Columns[i].FieldName = 'PackCost_mon' then
        Columns[i].DisableEditor := IsPosted;
      if Columns[i].FieldName = 'Completed_bol' then
        Columns[i].DisableEditor := not IsPosted;
      if Columns[i].FieldName = 'DemanderQtyOnHand_int' then
        Columns[i].DisableEditor := IsPosted;
      end;
  lblPosted.Visible                   := IsPosted;

  // Detail background
  pnlOrderHeaderBackground.Enabled    := not IsPosted;

  // Actions
  atnItem_Product_Change.Enabled      := not IsPosted;
  atnItem_Product_AutoOrder.Enabled   := not IsPosted;
  atnItem_Product_Delete_All.Enabled  := not IsPosted;
  atnItem_Product_AutoOrder_Group2.Enabled := not IsPosted;
  atnItem_Product_Add_EDL.Enabled := not IsPosted;
  
  //********** SM 21 Oct 2013
  atnMakeTextFile.Visible := vAccessLevel > USER_ADMIN;
  wwDBLookupCombo2.Enabled := vAccessLevel > USER_ADMIN;

  if IsRxCosting then
    begin
    atnRequistionAdd.Enabled              := not IsPosted;
    atnRequisitionDelete.Enabled          := not IsPosted;
    atnItem_Product_Add.Enabled           := False;
    atnItem_Product_Delete_Single.Enabled := False;
    end else
    begin
    atnRequistionAdd.Enabled              := False;
    atnRequisitionDelete.Enabled          := False;
    atnItem_Product_Add.Enabled           := not IsPosted;
    atnItem_Product_Delete_Single.Enabled := not IsPosted;
    end;

  //Check is budget model
  lblBudgetDemander.Visible := prvIsBudgetModel;
  cmbBudgetCode.Visible := prvIsBudgetModel;
  cmbBudgetDemanderName.Visible := prvIsBudgetModel;
  dxgOrders_ItemsDemanderQtyOnHand_int.Visible := prvIsBudgetModel;
  AddAllDemanderAuthorizedProducts1.Visible := prvIsBudgetModel;
  
end;


procedure TOrderDetailFrm.FormCreate(Sender: TObject);
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


end;
procedure TOrderDetailFrm.wwDBDateTimePicker1Change(Sender: TObject);
begin
  SetUpRequisitionDateSequence;
end;

procedure TOrderDetailFrm.SetUpRequisitionDateSequence;
begin

  wwDBDateTimePicker2.MinDate := wwDBDateTimePicker1.Date;

end;



procedure TOrderDetailFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if ModalResult = mrCancel then Canclose := False;

end;

function TOrderDetailFrm.AccessDataModule(CallProcedure: integer):boolean;
begin

  Result := False;

  if Assigned(OrderDM) and Assigned(MainDM)then
    begin
    with OrderDM, MainDM do
      case CallProcedure of
        SET_ORDER_NUMBER           : SetOrderNumber;
        GET_PRODUCT_TRUE           : GetProd(True);
        ADD_SINGLE_ORDERITEM       : AddSingleOrderItem;
        DELETE_ORDERITEM_TRUE      : DeleteOrderItem(True);
        AUTO_PURCHASE_ORDER        : AutoPurchaseOrder;

        PURCHASE_ORDER_ITEMSDELETE : PurchaseOrderItemsDelete;
        UPDATE_ORDERSUBTOTALS      : UpdateOrderSubTotals;
        ADD_REQUISITION_ITEMS      : AddRequisitionItems;//RxCosting
        REMOVE_REQUISITION         : RemoveRequisition;
        VALIDATE_POSTING           : Result := ValidatePosting;
//        SET_SYSTEMSTORE_STR        : SetSystemStoreStr;
//        SET_SUPPLIER_STR           : SetSupplierStr;
        IS_RXCOSTING               : Result := IsRxCosting;
        MARKALLCOMPLETE            : MarkAllItemsAsComplete(1);
        AUTO_PURCHASE_ORDER_GROUP2 : AutoPurchaseOrder_Group2;
        ADD_INSTITUTION_EDL        : AddInstitutionEdl;
        ADD_DEMANDER_AUTHORIZED_ITEMS : AddDemanderAuthorizedItems;

      else
        MessageDlg('No Procedure has been called', mtError, [mbOK], 0)
      end;
    end
    else
      MessageDlg('ERROR! Purchase Order or Main data module not available', mtError, [mbOK], 0);
end;


procedure TOrderDetailFrm.atnItem_Product_ChangeExecute(Sender: TObject);
begin
  AccessDataModule(GET_PRODUCT_TRUE);
end;

procedure TOrderDetailFrm.atnItem_Product_AddExecute(Sender: TObject);
const
EMSG = 'You may not select products unless all of the following are completed!' +
          #13 + 'Supplier' +
          #13 + 'Account';
begin
   //Comfort Mankga  18/08/2010

     if (dxdbSupplierCode.Text = '')  and (dxdbSystemStoreCode.Text = '') then
      begin
           MessageDlg(EMSG, mtWarning, [mbOK],0);
      end else
        AccessDataModule(ADD_SINGLE_ORDERITEM);
end;

procedure TOrderDetailFrm.atnItem_Product_Delete_SingleExecute(Sender: TObject);
begin
  AccessDataModule(DELETE_ORDERITEM_TRUE);
end;

procedure TOrderDetailFrm.atnItem_Product_AutoOrderExecute(Sender: TObject);
begin
  AccessDataModule(AUTO_PURCHASE_ORDER);
end;

procedure TOrderDetailFrm.atnItem_Product_Delete_AllExecute(Sender: TObject);
begin
  AccessDataModule(PURCHASE_ORDER_ITEMSDELETE);
end;

procedure TOrderDetailFrm.atnRequistionAddExecute(Sender: TObject);
begin
  AccessDataModule(ADD_REQUISITION_ITEMS);
end;

procedure TOrderDetailFrm.atnRequisitionDeleteExecute(Sender: TObject);
begin
  AccessDataModule(REMOVE_REQUISITION);
end;

procedure TOrderDetailFrm.PageDataSet(PageSize: integer);
begin

  if PageSize < -1000 then PageSize := -1000;
  if PageSize > 1000 then PageSize := 1000;

  with dxgOrders_Items.DataSource.DataSet do
    if Active then
      case PageSize of
        -1000..-1   : if not BOF then MoveBy(PageSize);
        1..1000     : if not EOF then MoveBy(PageSize);
        end;

end;



procedure TOrderDetailFrm.btnPostClick(Sender: TObject);
const
  PMSG = 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';

begin

  if AccessDataModule(VALIDATE_POSTING) then
    begin
    if MessageDlg(PMSG , mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin

      with dbcActivated_bol.DataSource.DataSet do
        begin
        if not (State in [dsEdit, dsInsert]) then Edit;
        dbcActivated_bol.Field.AsBoolean := True;
        Post;
        end;
      ModalResult := mrOk;

      end else
      ModalResult := mrCancel;
    end else
    ModalResult := mrCancel;

end;

{
procedure TOrderDetailFrm.ElPageControl1Resize(Sender: TObject);
var
  i, CurIndex :integer;
  vCount_0, vTotalWid, vRemainWid, vColWid    :integer;

const
  cColFields : array[0..6] of string = (
    'prd_Code','prd_Description','prd_OnHand','QtyReceivedCum_int',
    'QtyOrdered_int', 'PackCost_mon', 'ExtendedCost_mon');
  cColDescription : array[0..6] of string = (
    'Code','Description','OnHand','Rec', 'Order', 'Cost','TOTAL');
  cColWidths : array[0..6] of integer = (85,0,50,50,50,70,80);

  MINCOL    = 150;
  SCROLLBAR = 15;


  function GetIndex(pFName:string):integer;
  var
  i :integer;
  begin
  Result := -1;
  for i:= low(cColFields) to high(cColFields) do
    if cColFields[i] = pFName then
      Result := i;
  end;


begin

  with DbAltGrid1 do
    begin
    vCount_0  := 0;
    vTotalWid := 0;
    // count the total width excluding the array with 0 value
    for i := low(cColWidths) to high(cColWidths) do
      if cColWidths[i] = 0 then inc(vCount_0)
      else vTotalWid := vTotalWid + cColWidths[i];


    if vCount_0 > 0 then
      begin
      vRemainWid  := DbAltGrid1.ClientWidth - (vTotalWid + SCROLLBAR);
      vColWid     := vRemainWid div vCount_0;
      if vColWid < MINCOL then vColWid := MINCOL;
      end;

    for i := 0 to Columns.Count -1 do
      begin
      CurIndex := GetIndex(Columns[i].FieldName);
      if CurIndex <> -1 then
        with Columns[i] do
          begin
          if cColWidths[CurIndex] > 0 then
            Width := cColWidths[CurIndex]
            else
            Width := vColWid;
          Title.Caption := cColDescription[CurIndex];
          end;
      end;

    end;

end;
}

procedure TOrderDetailFrm.dxgOrders_ItemsChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin

  with dxgOrders_Items, dxgOrders_Items.Columns[Column] do
    if (FieldName = 'ProductCode_str') or
       (FieldName = 'Description_str') or
       (FieldName = 'ECN_str') 
       then
      OptionsBehavior := OptionsBehavior + [edgoAutoSearch]
      else
      OptionsBehavior := OptionsBehavior - [edgoAutoSearch]

end;

procedure TOrderDetailFrm.dxeCharges_monExit(Sender: TObject);
begin
  AccessDataModule(UPDATE_ORDERSUBTOTALS);
end;

procedure TOrderDetailFrm.atnItem_PageUpExecute(Sender: TObject);
begin
  PageDataSet(-5);
end;

procedure TOrderDetailFrm.atnItem_PageDownExecute(Sender: TObject);
begin
  PageDataSet(5);
end;

procedure TOrderDetailFrm.dxOrder_DetailChange(Sender: TObject);
var
  IsPosted    :Boolean;

begin
  IsPosted    := dbcActivated_bol.Field.AsBoolean;                              // has this record been posted

  if not IsPosted then
    begin
    atnRequistionAdd.Enabled                := False;
    atnRequisitionDelete.Enabled            := False;
    if dxOrder_Detail.ActivePage = dxTbsOrders_Items then
      begin
      atnItem_Product_Add.Enabled           := True;
      atnItem_Product_Delete_Single.Enabled := True;
      atnItem_Product_Change.Enabled        := True;
      atnItem_Product_AutoOrder.Enabled     := True;
      atnItem_Product_Delete_All.Enabled    := True;
      atnItem_Product_AutoOrder_Group2.Enabled := True;
      atnItem_Product_Add_EDL.Enabled := True;
      end else
      begin
      atnItem_Product_Add.Enabled           := False;
      atnItem_Product_Delete_Single.Enabled := False;
      atnItem_Product_Change.Enabled        := False;
      atnItem_Product_AutoOrder.Enabled     := False;
      atnItem_Product_Delete_All.Enabled    := False;
      atnItem_Product_AutoOrder_Group2.Enabled := False;
      atnItem_Product_Add_EDL.Enabled := False;
      end;
    end;

end;

procedure TOrderDetailFrm.ppPurchaseOrderPreviewFormCreate(
  Sender: TObject);
begin
  with (Sender as TppReport).PreviewForm do
    WindowState         := wsMaximized;

end;

procedure TOrderDetailFrm.atnItem_MarkAllCompleteExecute(Sender: TObject);
begin
  AccessDataModule(MARKALLCOMPLETE);
end;

procedure TOrderDetailFrm.atnDisplayColsExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
  GridCols := dxgOrders_Items;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TOrderDetailFrm.RzBmpButton1Click(Sender: TObject);
var
  IsRxCosting   :Boolean;  
begin

  IsRxCosting := AccessDataModule(IS_RXCOSTING);                               // find out if this is in Costing mode

//  pnlPrintMenu.Visible := False;
  if not IsRxCosting then
    begin
      with OrderDM, ppPurchaseOrder do
        begin
        if stpStockControlOrder.State in [dsEdit, dsInsert] then
         stpStockControlOrder.Post; 
        if not LoadSqlStatement(3) then
         begin
         stpOrderListReport.Active := False;
         stpOrderListReport.Active := True;
         PrinterSetup.DocumentName := SetDocumentPrintName(3);
         Print;
         end
        else
         begin
         //Change the datasource of the DB pipe line to point to user defined report query
         ppDBPipeline1.DataSource := dsstp_CustomReport;
         //Load from file
         Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Order.rtm';
         Template.LoadFromFile;
         PrinterSetup.DocumentName := SetDocumentPrintName(3);

         OrderDM.PrinterSelector(ppPurchaseOrder, RxSolutionFrm.ReportPrnt, True);
         end; 
        end
    end
    else
      with OrderDM, ppReportRxCosting do
        begin
        if stpStockControlOrder.State in [dsEdit, dsInsert] then
         stpStockControlOrder.Post;

        stpOrderListReport.Active := False;
        stpOrderListReport.Active := True;

        PrinterSetup.DocumentName := SetDocumentPrintName(4);

        Print;
        end;    // with

end;

procedure TOrderDetailFrm.atnItem_Product_AutoOrder_Group2Execute(
  Sender: TObject);
begin
 OrderGroup2SelectFrm := TOrderGroup2SelectFrm.Create(Application);
 OrderGroup2SelectFrm.ShowModal;
 AccessDataModule(AUTO_PURCHASE_ORDER_GROUP2);
 OrderGroup2SelectFrm.Free;
end;

procedure TOrderDetailFrm.atnItem_Product_Add_EDLExecute(Sender: TObject);
begin
 AccessDataModule(ADD_INSTITUTION_EDL);
end;

procedure TOrderDetailFrm.CreateTextFile1Click(Sender: TObject);
begin
 AccessDataModule(CREATE_ORDER_TEXT_FILE);
end;

procedure TOrderDetailFrm.atnMakeTextFileExecute(Sender: TObject);
begin
//Bug Issue ; It should not matter whether the Order is Posted or not
// if not OrderDM.stpStockControlOrder.FieldByName('Activated_bol').AsBoolean then
  OrderDM.CreateTextFileOrderReport;
end;

//Comfort Mankga  06/09/2010
procedure TOrderDetailFrm.AddAllDemanderAuthorizedProducts1Click(
  Sender: TObject);
const
  EMSG = 'You may not select demander products unless demader name is completed!';
begin
 if cmbBudgetCode.Text = '' then
      begin
       MessageDlg(EMSG, mtWarning, [mbOK],0);
     end else
       AccessDataModule(ADD_DEMANDER_AUTHORIZED_ITEMS);
 end;
procedure TOrderDetailFrm.atnPrintPurchaseOrderExecute(Sender: TObject);
var
  IsRxCosting   :Boolean;  
begin

  IsRxCosting := AccessDataModule(IS_RXCOSTING);                               // find out if this is in Costing mode

//  pnlPrintMenu.Visible := False;
  if not IsRxCosting then
    begin
      with OrderDM, ppPurchaseOrder do
        begin
        if stpStockControlOrder.State in [dsEdit, dsInsert] then
         stpStockControlOrder.Post; 
        if not LoadSqlStatement(3) then
         begin
         stpOrderListReport.Active := False;
         stpOrderListReport.Active := True;
         PrinterSetup.DocumentName := SetDocumentPrintName(3);
         Print;
         end
        else
         begin
         //Change the datasource of the DB pipe line to point to user defined report query
         ppDBPipeline1.DataSource := dsstp_CustomReport;
         //Load from file
         Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Order.rtm';
         Template.LoadFromFile;
         PrinterSetup.DocumentName := SetDocumentPrintName(3);

         OrderDM.PrinterSelector(ppPurchaseOrder, RxSolutionFrm.ReportPrnt, True);
         end; 
        end
    end
    else
      with OrderDM, ppReportRxCosting do
        begin
        if stpStockControlOrder.State in [dsEdit, dsInsert] then
         stpStockControlOrder.Post;

        stpOrderListReport.Active := False;
        stpOrderListReport.Active := True;

        PrinterSetup.DocumentName := SetDocumentPrintName(4);

        Print;
        end;    // with

end;

procedure TOrderDetailFrm.atnPrintDraftPurchaseOrderExecute(
  Sender: TObject);
begin
//  pnlPrintMenu.Visible := False;
  if Assigned(OrderDM) then
    with OrderDM, ppDraftPurchaseOrder do
      begin
      PrinterSetup.DocumentName := SetDocumentPrintName(1);
//      tblOrderListReport.Active := False;
//      tblOrderListReport.Active := True;
      Print;
      end;
end;

procedure TOrderDetailFrm.atnPrintOutstandingItemsExecute(Sender: TObject);
begin 
//  pnlPrintMenu.Visible := False;
  if Assigned(OrderDM) then
    with OrderDM, ppOutstandingItems do
      begin
      PrinterSetup.DocumentName := SetDocumentPrintName(2);
  //    tblOrderListReportOutstanding.Active := False;
  //    tblOrderListReportOutstanding.Active := True;
      Print;
      end;
end;

procedure TOrderDetailFrm.atnMakePMPUTextFileExecute(Sender: TObject);
begin
 //****** SM Create PMPU Text File
 //****** 22 Oct 2013  
 OrderDM.CreateTextFileOrderPMPUReport;
end;

procedure TOrderDetailFrm.atnMakeTextFileGPExecute(Sender: TObject);
begin
 //****** SM Create GP Text File
 //****** 11 July 2014
 OrderDM.CreateTextFileOrderReportGP;
end;

end.

unit DemanderUFrm;
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

  DemanderUDm,


  dxPageControl, dxExEdtr, RzBmpBtn, dxCntner, DBCtrls, dxDBTLCl, dxGrClms,
  dxDBGrid, dxEditor, dxEdLib, dxDBELib, dxTL, dxDBCtrl, ElPopBtn, RzLabel, PrjConst;

const
 DBGROWHEIGHT = 18;

type

  OnDemanderScroll = procedure(DataSet: TDataSet) of object;

  TDemanderFrm = class(TForm)
    Panel4: TPanel;
    pnlMainBackground: TPanel;
    shpMainBorder: TShape;
    Panel2: TPanel;
    Shape3: TShape;
    pnlDemandersMain: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lblLevel1: TLabel;
    lblLevel2: TLabel;
    lblLevel3: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    dbeCode: TDBEdit;
    dbeName: TDBEdit;
    dbeAccountNo: TDBEdit;
    dbeContactName: TDBEdit;
    dbeEMail: TDBEdit;
    dbeFax: TDBEdit;
    dbePhone: TDBEdit;
    dbeFacilitiesPopulation: TDBEdit;
    dbeFacilitiesOutPatients: TDBEdit;
    dbeFacilitiesInPatients: TDBEdit;
    dbeFacilitiesBeds: TDBEdit;
    Panel6: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label1: TLabel;
    ActionList1: TActionList;
    atnGetDemanderType: TAction;
    atnSetDemanderAuthority: TAction;
    ImageList1: TImageList;
    ImageList2: TImageList;
    lbl_ErrorNoAccess: TLabel;
    atnDemander_First: TDataSetFirst;
    atnDemander_Last: TDataSetLast;
    atnDemander_Add: TDataSetInsert;
    atnDemander_Save: TDataSetPost;
    atnDemander_Cancel: TDataSetCancel;
    Panel1: TPanel;
    btnDemanders_Last: TElSpeedButton;
    btnDemanders_PgDn: TElSpeedButton;
    btnDemanders_PgUp: TElSpeedButton;
    btnDemanders_First: TElSpeedButton;
    Panel7: TPanel;
    btnDemanders_Cancel: TElSpeedButton;
    btnDemanders_Save: TElSpeedButton;
    btnDemanders_Add: TElSpeedButton;
    Shape4: TShape;
    lblReadOnly: TLabel;
    atnAuthorisedItems_Save: TDataSetPost;
    atnAuthorisedItems_Cancel: TDataSetCancel;
    atnDemander_Search: TAction;
    atnAuthorisedItems_Add: TAction;
    pgDn: TAction;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    atnDemander_PageDown: TAction;
    atnDemander_PageUp: TAction;
    atnDemander_Prior: TDataSetPrior;
    atnDemander_Next: TDataSetNext;
    ElSpeedButton7: TElSpeedButton;
    atnAuthorisedItems_Search: TAction;
    atnItemsToggleDisplay: TAction;
    atnFilterDemanders_Active: TAction;
    atnFilterDemanders_InActive: TAction;
    atnFilterDemandersActive1: TMenuItem;
    atnFilterDemandersInActive1: TMenuItem;
    atnFilterDemanders_None: TAction;
    atnFilterDemandersNone1: TMenuItem;
    atnAuthorisedItems_Delete: TAction;
    Shape5: TShape;
    DBCheckBox1: TDBCheckBox;
    dbcOpenOrMaxDriven: TDBCheckBox;
    Shape8: TShape;
    atnDemander_Delete: TAction;
    Panel3: TPanel;
    Add1: TMenuItem;
    N1: TMenuItem;
    pnlDetails: TPanel;
    tbDemanderDetail: TdxPageControl;
    tbsAuthorisedItems: TdxTabSheet;
    dxgAuthorisedItems: TdxDBGrid;
    dxgAuthorisedItemsDescription: TdxDBGridColumn;
    dxgAuthorisedItemsMaxStockSet_int: TdxDBGridMaskColumn;
    tbsIssues: TdxTabSheet;
    dxgIssues: TdxDBGrid;
    dxgIssuesProductCode_str: TdxDBGridColumn;
    dxgIssuesDescription: TdxDBGridColumn;
    dxgIssuesTotalIssued: TdxDBGridMaskColumn;
    dxgIssuesTotalCost: TdxDBGridCurrencyColumn;
    tbsAddress: TdxTabSheet;
    lblDecriptionAddressInfo: TLabel;
    lblDecriptionAddress: TLabel;
    lblDecriptionSuburb: TLabel;
    lblDecriptionPostCode: TLabel;
    lblDecriptionPhysicalAddressInfo: TLabel;
    lblDecriptionPhysicalAddress: TLabel;
    lblDecriptionPhysicalAddressSuburb: TLabel;
    lblDecriptionPhysicalAddressPostCode: TLabel;
    lblDecriptionPaymentAddressInfo: TLabel;
    lblDecriptionPaymentAddress: TLabel;
    lblDecriptionPaymentAddressSuburb: TLabel;
    lblDecriptionPaymentAddressPostCode: TLabel;
    Label9: TLabel;
    lblDecriptionAddressCountry: TLabel;
    Label7: TLabel;
    lblDecriptionPhysicalAddressCountry: TLabel;
    Label6: TLabel;
    lblDecriptionPaymentAddressCountry: TLabel;
    dbeAddressPaymentPostalCode: TDBEdit;
    dbeAddressPaymentSuburb: TDBEdit;
    dbeAddressPaymentAddress: TDBEdit;
    dbeAddressPhysicalPostalCode: TDBEdit;
    dbeAddressPhysicalSuburb: TDBEdit;
    dbeAddressPhysicalAddress: TDBEdit;
    dbeAddressGenPostalCode: TDBEdit;
    dbeAddressGenSuburb: TDBEdit;
    dbeAddressGenAddress: TDBEdit;
    dbeAddressGenCity: TDBEdit;
    dbeAddressGenCountry: TDBEdit;
    dbeAddressPhysicalCountry: TDBEdit;
    dbeAddressPhysicalCity: TDBEdit;
    dbeAddressPaymentCountry: TDBEdit;
    dbeAddressPaymentCity: TDBEdit;
    tbsStaffMembers: TdxTabSheet;
    dxgStaffMembers: TdxDBGrid;
    lblAuthItems_Toolbar: TPanel;
    btnAuthItems_Cancel: TElSpeedButton;
    btnAuthItems_Save: TElSpeedButton;
    btnAuthItems_Delete: TElSpeedButton;
    btnAuthItems_Add: TElSpeedButton;
    Shape6: TShape;
    ElSpeedButton12: TElSpeedButton;
    Panel12: TPanel;
    dxgStaffMembersFirstName_str: TdxDBGridMaskColumn;
    dxgStaffMembersLastName_str: TdxDBGridMaskColumn;
    dxgStaffMembersInitials_str: TdxDBGridMaskColumn;
    dxgStaffMembersPosition_str: TdxDBGridMaskColumn;
    dxgStaffMembersPhone_str: TdxDBGridMaskColumn;
    dxgStaffMembersCellPhone_str: TdxDBGridMaskColumn;
    dxgStaffMembersFax_str: TdxDBGridMaskColumn;
    dxgStaffMembersEMail_str: TdxDBGridMaskColumn;
    dxgStaffMembersDescription_str: TdxDBGridMaskColumn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    lblLevel4: TLabel;
    Panel5: TPanel;
    Shape7: TShape;
    ElSpeedButton18: TElSpeedButton;
    dxEditStyleController1: TdxEditStyleController;
    atnDisplay_StaffMembers_SelCols: TAction;
    atnDisplay_AuthorisedItems_SelCols: TAction;
    atnDisplay_StaffMembers_SaveDef: TAction;
    atnDisplay_AuthorisedItems_SaveDef: TAction;
    atnDisplay_StaffMembers_GetDef: TAction;
    atnDisplay_AuthorisedItems_GetDef: TAction;
    pmnu_AuthorisedItems: TPopupMenu;
    pmnu_staffmembers: TPopupMenu;
    atnDisplayAuthorisedItemsSelCols1: TMenuItem;
    atnDisplayAuthorisedItemsSaveDef1: TMenuItem;
    atnDisplayAuthorisedItemsGetDef1: TMenuItem;
    atnDisplayStaffMembersSelCols1: TMenuItem;
    atnDisplayStaffMembersSaveDef1: TMenuItem;
    atnDisplayStaffMembersSaveDef2: TMenuItem;
    ElSpeedButton9: TElSpeedButton;
    Panel8: TPanel;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit1: TDBEdit;
    Label28: TLabel;
    DBEdit2: TDBEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxgDemanderList: TdxDBGrid;
    dxgDemanderListCode_str: TdxDBGridMaskColumn;
    dxgDemanderListName_str: TdxDBGridMaskColumn;
    atnPrintDemanderList: TAction;
    atnPrintDemanderDetail: TAction;
    PrintDemanderList1: TMenuItem;
    PrintDemanderDetail1: TMenuItem;
    tbsNotes: TdxTabSheet;
    DBMemo1: TDBMemo;
    atnAddEDLItems: TAction;
    pmnu_AddItems: TPopupMenu;
    AddEDL1: TMenuItem;
    atnAddFromDemander: TAction;
    AddfromselectedDemander1: TMenuItem;
    atnDeleteItems: TAction;
    DeleteALLthisDemandersItems1: TMenuItem;
    DBLookupComboBox4: TDBLookupComboBox;
    Panel10: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    Label24: TLabel;
    dteStart: TDateTimePicker;
    dteEnd: TDateTimePicker;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    dxgAuthorisedItemsProductCode_str: TdxDBGridColumn;
    atnAuthorisedItems_AutoLevel: TAction;
    Timer1: TTimer;
    RzBmpButton1: TRzBmpButton;
    RzBmpButton2: TRzBmpButton;
    RzBmpButton3: TRzBmpButton;
    Shape9: TShape;
    DBCheckDispensing: TDBCheckBox;
    dxgStaffMembersTitle_str: TdxDBGridMaskColumn;
    dxgAuthorisedItemsICN: TdxDBGridColumn;
    dxgAuthorisedItemsECN: TdxDBGridColumn;
    atnTransferToDemander: TAction;
    dxTabSheet1: TdxTabSheet;
    Panel11: TPanel;
    Shape10: TShape;
    ElSpeedButton10: TElSpeedButton;
    dxgStockLevels: TdxDBGrid;
    lblMainFormTitle: TRzLabel;
    dxgStockLevelsDescription_str: TdxDBGridMaskColumn;
    dxgStockLevelsProductCode_str: TdxDBGridColumn;
    dxgStockLevelsICN_str: TdxDBGridColumn;
    dxgStockLevelsECN_str: TdxDBGridColumn;
    dxgStockLevelsNSN_str: TdxDBGridColumn;
    dxgStockLevelsQtyOnHand_int: TdxDBGridMaskColumn;
    dxgStockLevelsQtyOnHandUnits_dbl: TdxDBGridMaskColumn;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    pmnu_StockLevels: TPopupMenu;
    pmnu_StockLevels_ViewAuditTrail: TMenuItem;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    atnDemanderStaff_Save: TDataSetPost;
    atnDemanderStaff_Cancel: TDataSetCancel;
    ElSpeedButton11: TElSpeedButton;
    dxgIssuesICN: TdxDBGridColumn;
    dxgIssuesECN: TdxDBGridColumn;
    btnPrintIssues: TRzBmpButton;
    dxgStockLevelsQtyOnHandSet_dat: TdxDBGridDateColumn;
    dxTbsItemsHistory: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ChangeDate_dat: TdxDBGridColumn;
    dxDBGrid1Description_str: TdxDBGridColumn;
    dxDBGrid1USerName_str: TdxDBGridColumn;
    dxDBGrid1Type_str: TdxDBGridColumn;
    Panel9: TPanel;
    Shape11: TShape;
    ElSpeedButton19: TElSpeedButton;
    Panel13: TPanel;
    Panel14: TPanel;
    RzBmpButton4: TRzBmpButton;
    Processitemlevels1: TMenuItem;
    dxDBGrid1ProductStr: TdxDBGridColumn;
    atnLoadIssues: TAction;
    Button1: TButton;
    Button2: TButton;
    atnLoadDemanderItems: TAction;
    Panel15: TPanel;
    Shape12: TShape;
    ElSpeedButton17: TElSpeedButton;
    dxgAuthorisedItemsMinStockSet_int: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Resize(Sender: TObject);
    procedure pnlMainBackgroundResize(Sender: TObject);
    procedure ElDBButtonEdit1ButtonClick(Sender: TObject);
    procedure atnGetDemanderTypeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cgdDemandersClick(Sender: TObject);
    procedure atnSetDemanderAuthorityExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure atnAuthorisedItems_AddExecute(Sender: TObject);
    procedure pgDnExecute(Sender: TObject);
    procedure atnDemander_PageUpUpdate(Sender: TObject);
    procedure atnDemander_PageDownUpdate(Sender: TObject);
    procedure atnDemander_PageDownExecute(Sender: TObject);
    procedure atnDemander_PageUpExecute(Sender: TObject);
    procedure atnFilterDemanders_ActiveExecute(Sender: TObject);
    procedure atnFilterDemanders_InActiveExecute(Sender: TObject);
    procedure atnFilterDemanders_NoneExecute(Sender: TObject);
    procedure edtCode_strEnter(Sender: TObject);
    procedure edtName_strEnter(Sender: TObject);
    procedure atnAuthorisedItems_DeleteExecute(Sender: TObject);
    procedure atnDemander_DeleteExecute(Sender: TObject);
    procedure atnDisplay_StaffMembers_SaveDefExecute(Sender: TObject);
    procedure atnDisplay_AuthorisedItems_SaveDefExecute(Sender: TObject);
    procedure atnDisplay_StaffMembers_GetDefExecute(Sender: TObject);
    procedure atnDisplay_AuthorisedItems_GetDefExecute(Sender: TObject);
    procedure atnDisplay_StaffMembers_SelColsExecute(Sender: TObject);
    procedure atnDisplay_AuthorisedItems_SelColsExecute(Sender: TObject);
    procedure ElSpeedButton2Click(Sender: TObject);
    procedure ElSpeedButton3Click(Sender: TObject);
    procedure atnDemander_AddExecute(Sender: TObject);
    procedure atnAddEDLItemsExecute(Sender: TObject);
    procedure atnDeleteItemsExecute(Sender: TObject);
    procedure atnAddFromDemanderExecute(Sender: TObject);
    procedure atnAuthorisedItems_AutoLevelExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dteStartCloseUp(Sender: TObject);
    procedure dteEndCloseUp(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure RzBmpButton2Click(Sender: TObject);
    procedure RzBmpButton3Click(Sender: TObject);
    procedure ElSpeedButton10Click(Sender: TObject);
    procedure ElSpeedButton5Click(Sender: TObject);
    procedure dxgStockLevelsCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure pmnu_StockLevels_ViewAuditTrailClick(Sender: TObject);
    procedure pmnu_StockLevels_VarianceClick(Sender: TObject);
    procedure ElSpeedButton6Click(Sender: TObject);
    procedure ElSpeedButton8Click(Sender: TObject);
    procedure ElSpeedButton12Click(Sender: TObject);
    procedure DBCheckDispensingExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckIfDispensing;
    procedure dxgDemanderListClick(Sender: TObject);
    procedure btnPrintIssuesClick(Sender: TObject);
    procedure atnTransferToDemanderExecute(Sender: TObject);
    procedure atnLoadIssuesExecute(Sender: TObject);
    procedure atnLoadDemanderItemsExecute(Sender: TObject);
  private
    { Private declarations }
    DemanderDm      : TDemanderDm;
    FUpdating       : Boolean;
    procedure ResizeDetailForm;
    procedure ResizeListForm;
    function CurrText: TTextAttributes;
    procedure SetAccessLevel(CurrAccess: integer);
    function GetAccessLevel(CurrDemander:double):integer;
    procedure UpdateSecurity;
    procedure UpdateErrorDisplay;
    procedure SetDemanderFilter(pType: integer);
    procedure UpdateLevelLabels;
   


  protected
    DemanderHasScrolled :OnDemanderScroll;
    procedure DemandersAfterScroll(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  DemanderFrm: TDemanderFrm;

implementation

uses

  {$IFDEF RXSTOREBUILD}
  SystemSecurityUDM,
  RxStoreMainUFrm,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,
  {$ENDIF}

  ProductUDm,
  ProductVarianceUFrm,
  MyApplicationUtilities,
  MainUDM, SystemGeneralMethods,
  DemanderStockAuditFrm, DemanderStockVarianceFrm;

{$R *.DFM}





procedure TDemanderFrm.FormClose(Sender: TObject; (*::::::::::::::::::::START:*)(*===========================================*)
  var Action: TCloseAction);                                                    (*procedure:FormClose------------------------*)
                                                                                (*===========================================*)
                                                                    (*5.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Action:=caFree;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.Panel2Resize(Sender: TObject); (*::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:Panel2Resize---------------------*)
                                                                                (*===========================================*)
                                                                    (*5.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeDetailForm;
//  ResizeDBGridsForm;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.ResizeDetailForm; (*:::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeDetailForm-----------------*)
                                                                                (*===========================================*)
                                                                    (*5.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  PnlWid, PnlHgt  :integer;

const                                                                  (*const*)(*...........................................*)
  MARGIN  = 10;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with Panel2 do                                                                // Base panel for all details components
    begin
    PnlWid  := ClientWidth;
    PnlHgt  := ClientHeight;
    end;

  with Shape3 do                                                                // Frame
    begin
    Left    := MARGIN div 2;
    Top     := MARGIN div 2;
    Width   := PnlWid - MARGIN ;
    Height  := PnlHgt - MARGIN ;
    end;

  with pnlDemandersMain do                                                                // Blue background frame
    begin
    Left    := MARGIN;
//    Top     := 50;
    Width   := PnlWid - MARGIN * 2;
//    Height  := PnlHgt - (Top + (MARGIN + (MARGIN div 2)));
    end;

  with pnlDetails do
    begin

    Left    := MARGIN;
    Width   := PnlWid - MARGIN * 2;
    Height  := PnlHgt - (Top + (MARGIN + (MARGIN div 2)));

    end;
 {
  with Label8 do
    begin
    Left    := MARGIN;
    Height  := 13 ;
    Top     := PnlHgt - (Height + 2) ;
//    Width   := PnlWid - MARGIN div 2;
    end;                        }

  with lbl_ErrorNoAccess do
    begin
    Left    := MARGIN;
    Top     := MARGIN;
    Width   := PnlWid - MARGIN * 2;
    end;

end; (*................................................................*)(*end*)(*...........................................*)




procedure TDemanderFrm.ResizeListForm; (*:::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeListForm-------------------*)
                                                                                (*===========================================*)
                                                                    (*5.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  PnlWid, PnlHgt, Padding  : integer;

const                                                                  (*const*)(*...........................................*)
  MARGIN  = 10;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with pnlMainBackground do
    begin
    PnlWid  := ClientWidth;
    PnlHgt  := ClientHeight;
    end;

  with shpMainBorder do                                                         // Frame
    begin
    Left    := MARGIN div 2;
    Top     := MARGIN div 2;
    Width   := PnlWid - MARGIN div 2;
    Height  := PnlHgt - MARGIN ;
    end;

  with lblMainFormTitle do
    begin
    Padding := 35;
    Left    := MARGIN + Padding;
    Top     := MARGIN;
    Width   := PnlWid - ((MARGIN + (MARGIN div 2)) + Padding);
    end;

  with dxgDemanderList do
    begin
    Left    := MARGIN;
    Top     := 80;
    Width   := PnlWid - (MARGIN + (MARGIN div 2));
    Height  := PnlHgt - (Top + MARGIN);
//    RowCount := ((PnlHgt - (Top + MARGIN)) div PanelHeight);
    end;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TDemanderFrm.pnlMainBackgroundResize(Sender: TObject); (*:::::START:*)(*===========================================*)
                                                                                (*procedure:pnlMainBackgroundResize----------*)
                                                                                (*===========================================*)
                                                                    (*5.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeListForm;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.ElDBButtonEdit1ButtonClick(Sender: TObject); (*::START:*)(*===========================================*)
                                                                                (*procedure:ElDBButtonEdit1ButtonClick-------*)
                                                                                (*===========================================*)
                                                                   (*13.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  atnGetDemanderTypeExecute(Nil);
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.atnGetDemanderTypeExecute(Sender: TObject); (*:::START:*)(*===========================================*)
                                                                                (*procedure:atnGetDemanderTypeExecute--------*)
                                                                                (*===========================================*)
                                                                   (*13.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  with DemanderDM do
    GetDemanderType('', Mouse.CursorPos.X, Mouse.CursorPos.Y);
end; (*................................................................*)(*end*)(*...........................................*)




procedure TDemanderFrm.FormCreate(Sender: TObject); (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:FormCreate-----------------------*)
                                                                                (*===========================================*)
                                                                   (*13.6.2002*)(* Orig::Deane Putzier                       *)
var
  dateStart :TDateTime;
  dateEnd   :TDateTime;

  RegPath : String;
//  lo : TdxDBGridLayout;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Inherited;

  MainDM.GetFinancialYear(dateStart,dateEnd);
  dteStart.Date := dateStart;
  dteEnd.Date := dateEnd;

  DemanderDm := TDemanderDm.Create(Self);
//  DemanderDm.adoSP_Demanders.AfterScroll := DemanderHasScrolled;
  DemanderDm.adoSP_Demanders.AfterScroll := DemandersAfterScroll;
  UpdateSecurity;
  atnDisplay_AuthorisedItems_SaveDef.Visible  := not SYSTEM_DEBUG;
  atnDisplay_StaffMembers_SaveDef.Visible     := not SYSTEM_DEBUG;
  SetDemanderFilter(1);
  tbDemanderDetail.ActivePageIndex:=0;
  UpdateLevelLabels;
  //Add to reflect levels lables - JP
  lblLevel1.Caption:=MainDm.tblMainSystemLevel_01Description_str.AsString+':';
  lblLevel2.Caption:=MainDm.tblMainSystemLevel_02Description_str.AsString+':';
  lblLevel3.Caption:=MainDm.tblMainSystemLevel_03Description_str.AsString+':';
  lblLevel4.Caption:=MainDm.tblMainSystemLevel_04Description_str.AsString+':';


 {
  dxgStockLevels.OptionsBehavior := dxgStockLevels.OptionsBehavior + [edgoStoreToRegistry];
  dxgStockLevels.RegistryPath := RegPath + '\Grid\Demander\dxgStockLevels';
  lo := dxgStockLevels.
  dxgStockLevels.Assign(dxgStockLevels);
  }


  
end; (*................................................................*)(*end*)(*...........................................*)


function TDemanderFrm.CurrText: TTextAttributes;
begin

end;


procedure TDemanderFrm.cgdDemandersClick(Sender: TObject); (*::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:DBCtrlGrid1Click-----------------*)
                                                                                (*===========================================*)
                                                                   (*25.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

//  ResizeDBGridsForm;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.atnSetDemanderAuthorityExecute(Sender: TObject); (*START:*)(*===========================================*)
                                                                                (*procedure:atnSetDemanderAuthorityExecute---*)
                                                                                (*===========================================*)
                                                                   (*25.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  with DemanderDM do
    GetDemanderAuthority;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderFrm.SetAccessLevel(CurrAccess: integer);
begin


  UpdateErrorDisplay;

  btnAuthItems_Delete.Visible := CurrAccess = USER_SYS_ADMIN;
  btnAuthItems_Add.Visible    := CurrAccess = USER_SYS_ADMIN;
  btnDemanders_Add.Visible    := CurrAccess = USER_SYS_ADMIN;
  dbcOpenOrMaxDriven.Enabled  := CurrAccess = USER_SYS_ADMIN;

  case CurrAccess of
    USER_SYS_ADMIN, USER_ADMIN, USER_USER:
    begin
      lblReadOnly.Visible           := False;
      lbl_ErrorNoAccess.Visible     := False;
      pnlDemandersMain.Visible      := True;
      pnlDemandersMain.Enabled      := True;
      pnlDetails.Visible            := True;

      tbsAuthorisedItems.Enabled := True;
      tbsIssues.Enabled          := True;
      tbsAddress.Enabled         := True;
      tbsStaffMembers.Enabled    := True;
      case CurrAccess of
        USER_SYS_ADMIN:
        begin
          DBCheckBox1.Enabled     := True;
          dbeCode.ReadOnly        := False;
          dbeCode.Color           := clWindow;
        end;
        USER_ADMIN:
        begin
          DBCheckBox1.Enabled     := True;
          dbeCode.ReadOnly        := False;
          dbeCode.Color           := clWindow;
        end;
        USER_USER:
        begin
          DBCheckBox1.Enabled           := False;
          tbsAuthorisedItems.Enabled := False;
          dbeCode.ReadOnly              := True;
          dbeCode.Color                 := clInfoBk;
        end;
      end;
    end;

  USER_BROWSER:
    begin
      lblReadOnly.Visible         := True;
      lbl_ErrorNoAccess.Visible   := False;
      pnlDemandersMain.Visible    := True;
      pnlDemandersMain.Enabled    := False;
      pnlDetails.Visible          := True;
      tbsAuthorisedItems.Enabled := False;
      tbsIssues.Enabled          := False;
      tbsAddress.Enabled         := False;
      tbsStaffMembers.Enabled    := False;
      DBCheckBox1.Enabled         := False;
      dbeCode.ReadOnly            := True;
      dbeCode.Color               := clInfoBk;
    end;
  USER_NONE:
    begin
      lbl_ErrorNoAccess.Visible   := True;
      pnlDemandersMain.Visible    := False;
      pnlDetails.Visible          := False;
    end;
  end;

end;


{

  if Assigned(MainForm.ApplicationForms[FRM_DEMANDERS]) then
    with MainForm.ApplicationForms[FRM_DEMANDERS] do
      if CurrentDemanderID = 1 then
        SetAccessLevel(2)
        else
        SetAccessLevel(0);
}



procedure TDemanderFrm.DemandersAfterScroll(DataSet: TDataSet);
begin
  Inherited;
  with DemanderDM do DemandersAfterScroll;
  UpdateSecurity;

end;


procedure TDemanderFrm.FormDestroy(Sender: TObject);
begin
  DemanderDm.Free;
//  DemanderHasScrolled := Nil;
end;

function TDemanderFrm.GetAccessLevel(CurrDemander: double): integer;
begin

  Result := USER_NONE;

  {$IFDEF RXSTOREBUILD}
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      Result := GetUserRights(SYSTEM_DEMANDER, CurrDemander);
  {$ELSE}
  Result := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_CORE_DEMANDERS, CurrDemander )
  {$ENDIF}


end;

procedure TDemanderFrm.UpdateSecurity;
var
  CurDemander   : double;
  CurLevel      : integer;

begin

  with DemanderDM do
    begin
    CurDemander         := GetCurrentDemander;
    CurLevel            := GetAccessLevel(CurDemander);
    SetAccessLevel(CurLevel);
    end;

end;


procedure TDemanderFrm.UpdateErrorDisplay;
const
  ERRMSG = 'Sorry %s, You do not have access to this demander.' + #13 +
  'If this is an error please contact the System Administrator';
begin

  {$IFDEF RXSTOREBUILD}
    lbl_ErrorNoAccess.Caption := Format(ERRMSG, ['']);
  {$ELSE}
  with RxSolutionFrm.Security.User do
    begin
    lbl_ErrorNoAccess.Caption := Format(ERRMSG, [LastName.Value + ', ' + FirstName.Value]);
    end;
  {$ENDIF}


end;

procedure TDemanderFrm.atnAuthorisedItems_AddExecute(Sender: TObject);
begin

  if Assigned(DemanderDM) then
    with DemanderDM do
      AddAuthorisedProducts;
end;

procedure TDemanderFrm.pgDnExecute(Sender: TObject);
var
FDataPage :integer;

begin

  with dxgDemanderList.DataSource.DataSet do
    if Active then
      if not EOF then
        begin
        FDataPage := 15;
        MoveBy(-FDataPage);
        end;

end;

procedure TDemanderFrm.atnDemander_PageUpUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnDemander_First.Enabled;
end;

procedure TDemanderFrm.atnDemander_PageDownUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnDemander_Last.Enabled;

end;

procedure TDemanderFrm.atnDemander_PageDownExecute(Sender: TObject);
var
  FDataPage :integer;

begin

  with dxgDemanderList.DataSource.DataSet do
    if Active then
      if not EOF then
        begin
        FDataPage := 15;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(FDataPage);
        end;

end;

procedure TDemanderFrm.atnDemander_PageUpExecute(Sender: TObject);
var
  FDataPage :integer;

begin

  with dxgDemanderList.DataSource.DataSet do
    if Active then
      if not BOF then
        begin
        FDataPage := 15;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(-FDataPage);
        end;

end;

procedure TDemanderFrm.SetDemanderFilter(pType :integer);
begin

  with DemanderDM do
    begin
    FilterDemanders(pType);
    atnFilterDemanders_None.Checked       := False;
    atnFilterDemanders_Active.Checked     := False;
    atnFilterDemanders_InActive.Checked   := False;
      case pType of
        0:
        begin
        lblMainFormTitle.Caption            := SDEMANDERS;
         atnFilterDemanders_None.Checked   := True;
        end;
        1:
        begin
        lblMainFormTitle.Caption            := SDEMANDERS1;
        atnFilterDemanders_Active.Checked   := True;
        end;
        2:
        begin
        lblMainFormTitle.Caption            := SDEMANDERS2;
        atnFilterDemanders_InActive.Checked := True;
        end;
      end;
    end;
end;

procedure TDemanderFrm.atnFilterDemanders_ActiveExecute(Sender: TObject);
begin
  SetDemanderFilter(1);
end;


procedure TDemanderFrm.atnFilterDemanders_InActiveExecute(Sender: TObject);
begin
  SetDemanderFilter(2);
end;

procedure TDemanderFrm.atnFilterDemanders_NoneExecute(Sender: TObject);
begin
  SetDemanderFilter(0);
end;

procedure TDemanderFrm.edtCode_strEnter(Sender: TObject);
begin

  if Assigned(DemanderDM) then
    with DemanderDM do
      SortDemandersTableASC('Code_Str');

end;

procedure TDemanderFrm.edtName_strEnter(Sender: TObject);
begin

  if Assigned(DemanderDM) then
    with DemanderDM do
      SortDemandersTableASC(SName_str);
end;


procedure TDemanderFrm.atnAuthorisedItems_DeleteExecute(Sender: TObject);
begin

  if Assigned(DemanderDM) then
    with DemanderDM do
      DeleteAuthorisedItem;

end;

procedure TDemanderFrm.atnDemander_DeleteExecute(Sender: TObject);
begin

  if Assigned(DemanderDM) then
    with DemanderDM do
      DeleteDemander;

end;

procedure TDemanderFrm.atnDisplay_StaffMembers_SaveDefExecute(
  Sender: TObject);
begin
  dxgStaffMembers.SaveToIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
end;

procedure TDemanderFrm.atnDisplay_AuthorisedItems_SaveDefExecute(
  Sender: TObject);
begin
  dxgAuthorisedItems.SaveToIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
end;

procedure TDemanderFrm.atnDisplay_StaffMembers_GetDefExecute(
  Sender: TObject);
begin
  dxgStaffMembers.LoadFromIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
end;

procedure TDemanderFrm.atnDisplay_AuthorisedItems_GetDefExecute(
  Sender: TObject);
begin
  dxgAuthorisedItems.LoadFromIniFile(ExtractFilePath(Application.ExeName) + INIFILE);
end;

procedure TDemanderFrm.atnDisplay_StaffMembers_SelColsExecute(
  Sender: TObject);
var
  SelectColumns : TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dxgStaffMembers)
  finally
    SelectColumns.Free;
  end;

end;

procedure TDemanderFrm.atnDisplay_AuthorisedItems_SelColsExecute(
  Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dxgAuthorisedItems)
  finally
    SelectColumns.Free;
  end;

end;

procedure TDemanderFrm.ElSpeedButton2Click(Sender: TObject);
begin
  dxgStaffMembers.DataSource.DataSet.Insert;
end;

procedure TDemanderFrm.ElSpeedButton3Click(Sender: TObject);
begin
  if MessageDlg(SDeleteStaffMember, mtWarning, [mbYes, mbCancel], 0) = mrYes then
    dxgStaffMembers.DataSource.DataSet.Delete;
end;

procedure TDemanderFrm.atnDemander_AddExecute(Sender: TObject);
begin
  dxgDemanderList.DataSource.DataSet.Append;
  dbeName.SetFocus;
end;

procedure TDemanderFrm.atnAddEDLItemsExecute(Sender: TObject);
begin

  if MessageDlg(SAddAllItemsFromI,mtWarning, [mbYes,mbNo],0) = mrYes then
    with DemanderDM do
      AppendEDLItems;
end;


procedure TDemanderFrm.atnDeleteItemsExecute(Sender: TObject);
begin

  if MessageDlg(SDeleteAllItemsFro,mtWarning, [mbYes,mbNo],0) = mrYes then
    with DemanderDM do
      DeleteAllItems;

end;

procedure TDemanderFrm.atnAddFromDemanderExecute(Sender: TObject);
begin

  with DemanderDM do
    AddFromDemander;

end;

procedure TDemanderFrm.atnAuthorisedItems_AutoLevelExecute(
  Sender: TObject);
begin


  with DemanderDM do
    ProcessDemanderLevels;

end;

procedure TDemanderFrm.Timer1Timer(Sender: TObject);
begin
  UpdateLevelLabels;
end;

procedure TDemanderFrm.UpdateLevelLabels;
begin
  lblLevel1.Caption := MainDM.GetLevelDescription(1);
  lblLevel2.Caption := MainDM.GetLevelDescription(2);
  lblLevel3.Caption := MainDM.GetLevelDescription(3);
  lblLevel4.Caption := MainDM.GetLevelDescription(4);
end;

procedure TDemanderFrm.dteStartCloseUp(Sender: TObject);
begin
 with DemanderDM do
    SetDemanderIssueDateFilter(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderFrm.dteEndCloseUp(Sender: TObject);
begin
  with DemanderDM do
    SetDemanderIssueDateFilter(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderFrm.RzBmpButton1Click(Sender: TObject);
begin
  with DemanderDM do
    PrintDemanderList;

end;

procedure TDemanderFrm.RzBmpButton2Click(Sender: TObject);
begin
  with DemanderDM do
    PrintDemanderDetail;
end;

procedure TDemanderFrm.RzBmpButton3Click(Sender: TObject);
begin
  with DemanderDM do
    PrintDemanderAuthorisedItems;
end;

procedure TDemanderFrm.ElSpeedButton10Click(Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dxgStockLevels)
  finally
    SelectColumns.Free;
  end;

end;

procedure TDemanderFrm.ElSpeedButton5Click(Sender: TObject);
begin
  Refresh_DataSet(dxgStockLevels.DataSource.DataSet, dxgStockLevels.KeyField);
end;

procedure TDemanderFrm.dxgStockLevelsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
//var
//  curFnt : TFont;
begin

//  curFnt.Assign(AFont);
{
  if (Sender as TdxDBGrid).DataSource.DataSet.FieldByName('QtyOnHandUnits_dbl').AsFloat < 0 then
    begin
    AFont.Color := clRed;
    AFont.Style := AFont.Style + [fsBold];
    end else
    begin
    AFont.Color := clBlack;
    AFont.Style := AFont.Style - [fsBold];
    end;

}
//  AFont.Assign(curFnt);

end;

procedure TDemanderFrm.pmnu_StockLevels_ViewAuditTrailClick(
  Sender: TObject);
var
 vDemId, vProdID: integer;
begin

  vDemId        := DemanderDm.adoSP_Demanders.fieldByName('Demander_ID').AsInteger;
  vProdID       := DemanderDm.adoStockList.FieldbyName('ProductCode_ID').AsInteger;
  TAudit.ShowAuditTrail(vDemId, vProdID);

end;

procedure TDemanderFrm.pmnu_StockLevels_VarianceClick(Sender: TObject);
begin

 atnTransferToDemander.Execute;

end;


procedure TDemanderFrm.ElSpeedButton6Click(Sender: TObject);
begin
dxgStaffMembers.DataSource.DataSet.Post;
end;


procedure TDemanderFrm.ElSpeedButton8Click(Sender: TObject);
begin
dxgStaffMembers.DataSource.DataSet.Cancel;
end;

procedure TDemanderFrm.ElSpeedButton12Click(Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dxgIssues)
  finally
    SelectColumns.Free;
  end;

end;

procedure TDemanderFrm.CheckIfDispensing;
begin
 dxgStockLevelsQtyOnHand_int.Visible := DBCheckDispensing.Checked;
 dxgStockLevelsQtyOnHandUnits_dbl.Visible := DBCheckDispensing.Checked;
// dxgStockLevelsSafetyStockSKU_dbl.Visible := DBCheckDispensing.Checked;
end;

procedure TDemanderFrm.DBCheckDispensingExit(Sender: TObject);
begin
CheckIfDispensing;
end;

procedure TDemanderFrm.FormShow(Sender: TObject);
begin
 CheckIfDispensing;
end;

procedure TDemanderFrm.dxgDemanderListClick(Sender: TObject);
begin
CheckIfDispensing;
end;

procedure TDemanderFrm.btnPrintIssuesClick(Sender: TObject);
begin
 DemanderDm.ppDateParameter.Caption := SDemanderIssuesFrom+DateToStr(dteStart.Date)+ STo+DateToStr(dteEnd.Date);
 DemanderDm.ppDemanderIssues.Print;
end;

procedure TDemanderFrm.atnTransferToDemanderExecute(Sender: TObject);
var
  prvDemander : String;
  prvSKU      : Double;
  prvReason   : string;
  prvType     : integer;
  prvPackQty  : Double;
  todemander  : string;

begin

  todemander := DemanderDm.adoSP_Demanders.fieldByName('Name_str').AsString;

  prvType := -1;
  if DemanderDm.adoStockList.Active then
    if DemanderDm.adoStockList.RecordCount > 0 then
       prvType := TVariance.AddVariance(prvDemander, prvSKU, prvReason, prvPackQty, todemander);

  case prvType of
    0 : DemanderDm.StockItemTransfer(prvDemander, prvSKU, prvReason, prvPackQty);
    end;

   Refresh_DataSet(dxgStockLevels.DataSource.DataSet, dxgStockLevels.KeyField);
end;

procedure TDemanderFrm.atnLoadIssuesExecute(Sender: TObject);
begin
  with DemanderDM do
    SetDemanderIssueDateFilter(dteStart.Date, dteEnd.Date);
end;

procedure TDemanderFrm.atnLoadDemanderItemsExecute(Sender: TObject);
begin
 with DemanderDm do
  LoadDemanderItems;
end;

end.







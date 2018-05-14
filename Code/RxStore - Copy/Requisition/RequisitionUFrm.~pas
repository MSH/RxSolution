 unit RequisitionUFrm;
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
{     RxSolution specific code here.                                          }
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
  StdCtrls, DBCtrls, Buttons, ExtCtrls, ComCtrls,


  ImgList, DBActns, ActnList, Menus,

  dxExEdtr,

  ppModule, raCodMod, ppVar, ppCtrls,
  ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  ElPopBtn, myChkBox,  RzBmpBtn, RzButton, daDataModule, ppParameter,
  RzLabel;
const
 EDGEMARGIN = 10;
 DBGROWHEIGHT = 18;

type
  TRequisitionFrm = class(TForm)
    rbpRequisition: TppReport;
    ppDBPipeline1: TppDBPipeline;
    rbpRequisitionPickList: TppReport;
    PopupMenu1: TPopupMenu;
    PrintPickListst1: TMenuItem;
    PrintRequisition1: TMenuItem;
    N1: TMenuItem;
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    pnlToolBar: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    Panel4: TPanel;
    ActionList1: TActionList;
    atnRequisitionFirst: TDataSetFirst;
    atnRequisitionPrior: TDataSetPrior;
    atnRequisitionNext: TDataSetNext;
    atnRequisitionLast: TDataSetLast;
    atnRequisitionEdit: TAction;
    atnPrintRequisition: TAction;
    atnPrintPickList: TAction;
    ImageList1: TImageList;
    atnRequisitionAdd: TAction;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    atnRequisitionPageUp: TAction;
    atnRequisitionPageDown: TAction;
    ppDBPipeline2: TppDBPipeline;
    PopupMenu2: TPopupMenu;
    PrintRequisition2: TMenuItem;
    PrintPicklist1: TMenuItem;
    atnRequisitionDelete: TAction;
    PopupMenu3: TPopupMenu;
    atnAddRequisition1: TMenuItem;
    atnEditRequisition1: TMenuItem;
    Apply1: TMenuItem;
    PrintRequisition3: TMenuItem;
    PrintPicklist2: TMenuItem;
    dbgRequisitions: TdxDBGrid;
    dbgRequisitionsRequisition_dat: TdxDBGridDateColumn;
    dbgRequisitionsRequisition_str: TdxDBGridColumn;
    dbgRequisitionsTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgRequisitionsItemsNo_int: TdxDBGridMaskColumn;
    dbgRequisitionsActivated_dat: TdxDBGridDateColumn;
    dbgRequisitionsDemander_Str: TdxDBGridColumn;
    dbgRequisitionsSystemStore_str: TdxDBGridColumn;
    dbgRequisitionsActivated_bol: TdxDBGridCheckColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    dteStart: TDateTimePicker;
    Panel5: TPanel;
    dteEnd: TDateTimePicker;
    atnDisplayColumns: TAction;
    ElSpeedButton19: TElSpeedButton;
    Timer1: TTimer;
    atnRequisitionMarkAllItemsComplete: TAction;
    N3: TMenuItem;
    Markallascomplete1: TMenuItem;
    dbgRequisitionsItemsComplete_bol: TdxDBGridCheckColumn;
    dbgRequisitionsPOReference_str: TdxDBGridColumn;
    ppTitleBand2: TppTitleBand;
    ppImage4: TppImage;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText26: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText59: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLabel59: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText47: TppDBText;
    ppLabel44: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLabel45: TppLabel;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel42: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppShape17: TppShape;
    ppDBText46: TppDBText;
    ppLine2: TppLine;
    ppVariable1: TppVariable;
    ppDBText51: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppImage5: TppImage;
    ppSystemVariable6: TppSystemVariable;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel28: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppImage6: TppImage;
    ppDBText29: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppLabel43: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
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
    ppFooterBand1: TppFooterBand;
    ppImage2: TppImage;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDBText11: TppDBText;
    ppLabel21: TppLabel;
    ppLabel50: TppLabel;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppImage3: TppImage;
    ppDBText22: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText18: TppDBText;
    ppDBText58: TppDBText;
    ppDBText66: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    RzBmpButton1: TRzBmpButton;
    daDataModule1: TdaDataModule;
    ppPickListWithBatches: TppReport;
    ppTitleBand3: TppTitleBand;
    ppImage7: TppImage;
    ppDBText57: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLabel69: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBText81: TppDBText;
    ppLabel70: TppLabel;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLabel71: TppLabel;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppShape2: TppShape;
    ppDBText92: TppDBText;
    ppLine3: TppLine;
    ppDBText93: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppImage8: TppImage;
    ppSystemVariable3: TppSystemVariable;
    ppLabel82: TppLabel;
    ppDBText94: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel83: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppImage9: TppImage;
    ppDBText95: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppLabel84: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppVariable4: TppVariable;
    raCodeModule2: TraCodeModule;
    ppDBText96: TppDBText;
    PrintPicklist3: TMenuItem;
    PrintselectedPicklistwithBatches1: TMenuItem;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel85: TppLabel;
    ppShape3: TppShape;
    ppLabel86: TppLabel;
    ppShape4: TppShape;
    ppDBText97: TppDBText;
    ppLabel87: TppLabel;
    ppDBText98: TppDBText;
    ppLabel88: TppLabel;
    ppDBText99: TppDBText;
    ppLabel89: TppLabel;
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
    ppLabel18: TppLabel;
    ppLabel48: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppDBText50: TppDBText;
    ppDBText30: TppDBText;
    ppDBText52: TppDBText;
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
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDBText132: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppShape5: TppShape;
    ppSummaryBand4: TppSummaryBand;
    ppImage12: TppImage;
    ppDBText133: TppDBText;
    ppDBCalc12: TppDBCalc;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    daDataModule2: TdaDataModule;
    ppDBPipeline3: TppDBPipeline;
    atnPrintRequisition_byDescription: TAction;
    PrintRequisitionbyDescription1: TMenuItem;
    dbgRequisitionsVoucherNo_str: TdxDBGridColumn;
    ppLabel119: TppLabel;
    ppDBText137: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText100: TppDBText;
    dbgRequisitionsOrdered_dat: TdxDBGridColumn;
    lblRequisitions: TRzLabel;
    atnUnLockRequistion: TAction;
    N2: TMenuItem;
    UnLockRequistion1: TMenuItem;
    ppShape7: TppShape;
    ppLabel19: TppLabel;
    ppShape6: TppShape;
    ppLabel80: TppLabel;
    ppShape8: TppShape;
    ppLabel120: TppLabel;
    ppShape9: TppShape;
    ppLabel121: TppLabel;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rbpRequisitionPreviewFormCreate(Sender: TObject);
    procedure rbpRequisitionPickListPreviewFormCreate(Sender: TObject);
    procedure pnlRequisitionListBackgroundResize(Sender: TObject);
    procedure atnRequisitionEditExecute(Sender: TObject);
    procedure atnPrintRequisitionExecute(Sender: TObject);
    procedure atnPrintPickListExecute(Sender: TObject);
    procedure atnRequisitionAddExecute(Sender: TObject);
    procedure atnRequisitionPageUpExecute(Sender: TObject);
    procedure atnRequisitionPageDownExecute(Sender: TObject);
    procedure atnRequisitionPageUpUpdate(Sender: TObject);
    procedure atnRequisitionPageDownUpdate(Sender: TObject);
    procedure atnRequisitionDeleteExecute(Sender: TObject);
    procedure dteStartCloseUp(Sender: TObject);
    procedure dteEndCloseUp(Sender: TObject);
    procedure atnDisplayColumnsExecute(Sender: TObject);
    procedure dbgRequisitionsColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure atnRequisitionMarkAllItemsCompleteExecute(Sender: TObject);
    procedure ppImage3Print(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PrintPicklist3Click(Sender: TObject);
    procedure PrintselectedPicklistwithBatches1Click(Sender: TObject);
    procedure atnPrintRequisition_byDescriptionExecute(Sender: TObject);
    procedure atnUnLockRequistionExecute(Sender: TObject);
  private
    { Private declarations }
    fDteStrSt   : TDateTime;
    fDteStrEd   : TDateTime;
    fDemStr     : string;
    fPstStr     : Integer;

    FDataPage   :integer;
    FColumnsSorted :Boolean;
    FRecordUnlocking : Boolean;


    procedure ResizeListComponents;
    procedure SetAccessLevel(CurrAccess: integer);
    procedure ApplyRequisitionFilter;
    procedure PageUpDown(vPageUp: boolean);
  public
    { Public declarations }

  protected
  {$IFDEF RXSTOREBUILD}
    procedure CreateParams(var Params: TCreateParams);override;                 // Removes border from the form
  {$ENDIF}
  end;

var
  RequisitionFrm: TRequisitionFrm;

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

  MyApplicationUtilities,
  RequisitionUDM;


{$R *.DFM}


(*-----------------------------------------------------------------------------------------------------------------------*)



procedure TRequisitionFrm.rbpRequisitionPreviewFormCreate(Sender: TObject);
begin

  with (Sender as TppReport).PreviewForm do
    begin
    WindowState         := wsMaximized;
//    Viewer.ZoomSetting  := zsPageWidth;
    end;

end;

procedure TRequisitionFrm.rbpRequisitionPickListPreviewFormCreate(Sender: TObject);
begin

  with (Sender as TppReport).PreviewForm do
    begin
    WindowState         := wsMaximized;
//    Viewer.ZoomSetting  := zsPageWidth;
    end;

end;





procedure TRequisitionFrm.FormCreate(Sender: TObject); (*:::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:FormCreate-----------------------*)
                                                                                (*===========================================*)
                                                                   (*31.7.2002*)(* Orig::Deane Putzier                       *)

var
  btnEnabled : boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  {$IFDEF RXSTOREBUILD}
  FormStyle := fsMDIChild;
  {$ENDIF}

  RequisitionDM := TRequisitionDM.Create(Self);

  if Assigned(RequisitionDM) then
    with RequisitionDM do
      begin
      fDteStrSt   := FDateSt;
      fDteStrEd   := FDateEnd;
      dteStart.DateTime := fDteStrSt;
      dteEnd.DateTime := fDteStrEd;
      end;

    FColumnsSorted := True;



  {$IFDEF RXSTOREBUILD}
  with SystemSecurityDM do
    btnEnabled := GetUserRights(SYSTEM_REQUISITIONS) > USER_BROWSER;
  {$ELSE}
  with RxSolutionFrm.Security do
    btnEnabled := GetUserAccessLevel(MODULE_STORE_REQUISITION) > USER_BROWSER;
  {$ENDIF}

  with RxSolutionFrm.Security do
   FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

  atnUnLockRequistion.Visible := FRecordUnlocking;

  atnRequisitionAdd.Enabled := btnEnabled;
  atnRequisitionDelete.Enabled := btnEnabled;
  atnRequisitionMarkAllItemsComplete.Enabled  := btnEnabled;
  atnRequisitionEdit.Enabled  := btnEnabled;


end; (*................................................................*)(*end*)(*...........................................*)



{$IFDEF RXSTOREBUILD}
procedure TRequisitionFrm.CreateParams(var Params: TCreateParams); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:CreateParams---------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  inherited CreateParams(Params);                                               // Call general params
  Params.Style := WS_EX_CLIENTEDGE;                                             // Removes the border from the form edge.
end; (*................................................................*)(*end*)(*...........................................*)
{$ENDIF}





procedure TRequisitionFrm.FormClose(Sender: TObject; (*:::::::::::::::::START:*)(*===========================================*)
  var Action: TCloseAction);                                                    (*procedure:FormClose------------------------*)
                                                                                (*===========================================*)
                                                                   (*31.7.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  RequisitionDM.Free;
  Action:=caFree;
end; (*................................................................*)(*end*)(*...........................................*)




procedure TRequisitionFrm.ResizeListComponents; (*::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeListComponents-------------*)
                                                                                (*===========================================*)
                                                                   (*31.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)
  LockWindowUpdate(Handle);                                                     // Do everything we can to prevent screen
                                                                                // flicker.  Handle belongs to the form (Form.Handle)
  with pnlRequisitionListBackground do                                          // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    end; (*with pnlSuppliersListBackground do*)

  with shpRequisitionList do                                                    // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN div 2;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpSuppliersList do*)

  with pnlToolBar do
    begin
    Top     := 60;
    Left    := EDGEMARGIN;
    Width   := NewWidth - (EDGEMARGIN + (EDGEMARGIN div 2));
    Height  := 26;
    end; (*with shpSuppliersList do*)


  with lblRequisitions do
    begin
    Left    := EDGEMARGIN + 45;
    Top     := EDGEMARGIN;
    Width   := NewWidth - (EDGEMARGIN * 2);
    end;      

  with dbgRequisitions do
    begin
    Left    := EDGEMARGIN;
    Top     := 90;
    Width   := NewWidth - (EDGEMARGIN + (EDGEMARGIN div 2));
    Height  := NewHeight - (Top + EDGEMARGIN);
    end;

//  ResizeGridColumns(dbgRequisitions,2,3);

  LockWindowUpdate(0);                                                          // Unlock the screen updater
end; (*................................................................*)(*end*)(*...........................................*)




procedure TRequisitionFrm.SetAccessLevel(CurrAccess: integer); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:SetAccessLevel-------------------*)
                                                                                (*===========================================*)
                                                                   (*31.7.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

case CurrAccess of
  USER_SYS_ADMIN, USER_ADMIN, USER_USER:
    begin
    case CurrAccess of
      USER_SYS_ADMIN:
        begin
        end;
      USER_ADMIN:
        begin
        end;
      USER_USER:
        begin
        end;
      end; //case
    end;
  USER_BROWSER:
    begin
    end;
  USER_NONE:
    begin
    end;
  end;

end; (*................................................................*)(*end*)(*...........................................*)




procedure TRequisitionFrm.pnlRequisitionListBackgroundResize(Sender: TObject);  (*===========================================*)
                                                                                (*procedure:pnlRequisitionListBackgroundResize*)
                                                                                (*===========================================*)
                                                                   (*31.7.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeListComponents;
end; (*................................................................*)(*end*)(*...........................................*)




procedure TRequisitionFrm.atnRequisitionEditExecute(Sender: TObject);
begin

  if atnRequisitionEdit.Enabled then
    if dbgRequisitions.DataSource.DataSet.RecordCount > 0 then
      if Assigned(RequisitionDM) then
        with RequisitionDM do
          begin
          if not (IsRequisitionLocked) then
           EditReq(True)
          else
           ShowMessage('Requisition is in use!');
          end;

end;


procedure TRequisitionFrm.atnRequisitionAddExecute(Sender: TObject);
begin

  if Assigned(RequisitionDM) then
    with RequisitionDM do
      AddReq(True);
end;


procedure TRequisitionFrm.atnPrintRequisitionExecute(Sender: TObject);
begin

  if Assigned(RequisitionDM) then
    with RequisitionDM, rbpRequisition do
     begin
     PrinterSetup.DocumentName := SetDocumentPrintName(0);
     if LoadSqlStatement(0) then
      begin
      ppDBPipeline1.DataSource := dsstp_CustomReport;
      //Load from file
      Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Requisition.rtm';
      Template.LoadFromFile;
      end;

     Print;
     CloseReportData(0);
     end;
end;

procedure TRequisitionFrm.atnPrintPickListExecute(Sender: TObject);
begin

//  Panel2.Visible := False;
  if Assigned(RequisitionDM) then
    with RequisitionDM, rbpRequisitionPickList do
      begin
      PrinterSetup.DocumentName := SetDocumentPrintName(0);
      Print;
      CloseReportData(0);
      end;

end;


procedure TRequisitionFrm.atnRequisitionPageUpExecute(Sender: TObject);
begin

  PageUpDown(True);

end;

procedure TRequisitionFrm.atnRequisitionPageDownExecute(Sender: TObject);
begin

  PageUpDown(False);

end;


procedure TRequisitionFrm.PageUpDown(vPageUp:boolean);
begin

  with dbgRequisitions.DataSource.DataSet do
    if Active then
      if not EOF then
        begin
        FDataPage := (dbgRequisitions.Height div dbgRequisitions.RowHeight) -2;
        if FDataPage < 1 then FDataPage := 1;
        if vPageUp then MoveBy(FDataPage) else MoveBy(-FDataPage);
        end;

end;




procedure TRequisitionFrm.atnRequisitionPageUpUpdate(Sender: TObject);
begin

  (Sender as TAction).Enabled := atnRequisitionFirst.Enabled;

end;

procedure TRequisitionFrm.atnRequisitionPageDownUpdate(Sender: TObject);
begin

  (Sender as TAction).Enabled := atnRequisitionLast.Enabled;

end;

procedure TRequisitionFrm.atnRequisitionDeleteExecute(Sender: TObject);
begin
{ //******* Code commented out. Making sure it is never executed
  //******* SM - July 2012
  if Assigned(RequisitionDM) then
    with RequisitionDM do
      DeleteRequisition;
}
end;



procedure TRequisitionFrm.ApplyRequisitionFilter;
begin

  if Assigned(RequisitionDM) then
    with RequisitionDM do
      begin
      fDteStrSt := dteStart.DateTime;
      fDteStrEd := dteEnd.DateTime;
      if (fDteStrSt <> FDateSt) or (fDteStrEd <> FDateEnd) then
        SetDateParams(fDteStrSt, fDteStrEd);
      end;

end;

procedure TRequisitionFrm.dteEndCloseUp(Sender: TObject);
begin
ApplyRequisitionFilter;
end;

procedure TRequisitionFrm.dteStartCloseUp(Sender: TObject);
begin
ApplyRequisitionFilter;
end;


procedure TRequisitionFrm.atnDisplayColumnsExecute(Sender: TObject);
var
  SelectColumns :TColumnSelector;

begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dbgRequisitions);
  finally
    SelectColumns.Free;
  end;

end;

procedure TRequisitionFrm.dbgRequisitionsColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  FColumnsSorted := True;
end;

procedure TRequisitionFrm.Timer1Timer(Sender: TObject);
begin

  if FColumnsSorted then
    begin
    DBdxSortDataSet(dbgRequisitions);
    FColumnsSorted := False;
    end;

end;

procedure TRequisitionFrm.atnRequisitionMarkAllItemsCompleteExecute(
  Sender: TObject);
begin

    if Assigned(RequisitionDM) then
      with RequisitionDM do
        MarkAllItemsAsComplete(0);

end;

procedure TRequisitionFrm.ppImage3Print(Sender: TObject);
begin


  if myDBCheckBox1.Checked then
    ppLabel47.Caption := 'Balance'
    else
    ppLabel47.Caption := 'Balance (Before transaction)'

end;

procedure TRequisitionFrm.Button1Click(Sender: TObject);
var
 ppReqReport : TppReport;
begin
ppReqReport := TppReport.Create(nil);
ppReqReport.DataPipeline := ppDBPipeline2;



ppReqReport.Template.FileName := 'C:\\Requisition.rtm';
ppReqReport.Template.LoadFromFile;

ppReqReport.DeviceType := 'Screen';
ppReqReport.Print;
ppReqReport.Free;

end;

procedure TRequisitionFrm.PrintPicklist3Click(Sender: TObject);
begin
//  Panel2.Visible := False;
  if Assigned(RequisitionDM) then
    with RequisitionDM, ppPickListWithBatches do
      begin
//      SortPrintdata(1);
//      ppShape3.Visible := True;
      PrinterSetup.DocumentName := SetDocumentPrintName(0);
//      stpRequisitionsReportPicklist.Active := False;
//      stpRequisitionsReportPicklist.Active := True;
      Print;
      CloseReportData(0);
      end;
end;

procedure TRequisitionFrm.PrintselectedPicklistwithBatches1Click(
  Sender: TObject);
begin
        if Assigned(RequisitionDM) then
    with RequisitionDM, ppPickListWithBatches do
      begin
//      SortPrintdata(1);
//      ppShape3.Visible := True;
      PrinterSetup.DocumentName := SetDocumentPrintName(0);
//      stpRequisitionsReportPicklist.Active := False;
//      stpRequisitionsReportPicklist.Active := True;
      Print;
      CloseReportData(0);
      end;
end;

procedure TRequisitionFrm.atnPrintRequisition_byDescriptionExecute(
  Sender: TObject);
begin
//  Panel2.Visible := False;
  if Assigned(RequisitionDM) then
    with RequisitionDM, ppRequisition_byDescrip do
      begin
      PrinterSetup.DocumentName := SetDocumentPrintName(-1);
      Print;
      CloseReportData(-1);
      end;

end;

procedure TRequisitionFrm.atnUnLockRequistionExecute(Sender: TObject);
begin
 with RequisitionDM do
  begin
  RequisitionUnlockMain;
  //qryRequisitionsCatalog.Refresh;
  end;
  
end;

end.

unit SupplierUFrm;
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

  SysUtils, Windows, Messages, Classes, Graphics, Controls, Menus,
  ActnList, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBTables,
  Forms, Dialogs, ImgList, ComCtrls,  DBCtrls, Mask, DBActns,

  SupplierUDM,


  RzBmpBtn, dxExEdtr, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel, ElPopBtn, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, ElPgCtl, ElXPThemedControl, PrjConst;


const
 EDGEMARGIN = 10;


type
  TSupplierFrm = class(TForm)

    dsSupplier: TDataSource;

    atnSuppliers: TActionList;
    Panel1: TPanel;
    Panel3: TPanel;
    pnlDetailBackground: TPanel;
    shpDetailBorder: TShape;
    pnlDetailColorBackground: TPanel;
    lblDecriptionSupplierName: TLabel;
    lblDecriptionCode: TLabel;
    dbeCode: TDBEdit;
    dbeSupplierName: TDBEdit;
    pclDetails: TElPageControl;
    TbsGeneralAddress: TElTabSheet;
    lblDecriptionAddressInfo: TLabel;
    lblDecriptionAddress: TLabel;
    lblDecriptionSuburb: TLabel;
    lblDecriptionPostCode: TLabel;
    lblDecriptionAddressCountry: TLabel;
    dbeAddressGenPostalCode: TDBEdit;
    dbeAddressGenSuburb: TDBEdit;
    dbeAddressGenAddress: TDBEdit;
    dbeAddressGenCity: TDBEdit;
    dbeAddressGenCountry: TDBEdit;
    tbsTransactions: TElTabSheet;
    TbsContactDetails: TElTabSheet;
    tbsBankingDetails: TElTabSheet;
    lblDecriptionBankingInfo: TLabel;
    lblDecriptionbankBranch: TLabel;
    lblDecriptionBankingAccNo: TLabel;
    lblDecriptionBankType: TLabel;
    shpEDI: TShape;
    bdeBankType: TDBEdit;
    dbeChkEDI: TDBCheckBox;
    bdeBankAccount: TDBEdit;
    bdeBankBranch: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Shape5: TShape;
    lblDescriptionGeneralDetails: TLabel;
    pnlSuppliersListBackground: TPanel;
    shpSuppliersList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    Shape1: TShape;
    lblDecriptionPhysicalAddressInfo: TLabel;
    lblDecriptionPhysicalAddress: TLabel;
    lblDecriptionPhysicalAddressSuburb: TLabel;
    lblDecriptionPhysicalAddressPostCode: TLabel;
    dbeAddressPhysicalPostalCode: TDBEdit;
    dbeAddressPhysicalSuburb: TDBEdit;
    dbeAddressPhysicalAddress: TDBEdit;
    dbeAddressPhysicalCity: TDBEdit;
    lblDecriptionPhysicalAddressCountry: TLabel;
    dbeAddressPhysicalCountry: TDBEdit;
    lblDecriptionPaymentAddressInfo: TLabel;
    lblDecriptionPaymentAddress: TLabel;
    lblDecriptionPaymentAddressSuburb: TLabel;
    lblDecriptionPaymentAddressPostCode: TLabel;
    dbeAddressPaymentPostalCode: TDBEdit;
    dbeAddressPaymentSuburb: TDBEdit;
    dbeAddressPaymentAddress: TDBEdit;
    lblDecriptionPaymentAddressCountry: TLabel;
    dbeAddressPaymentCity: TDBEdit;
    dbeAddressPaymentCountry: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ImageList1: TImageList;
    Panel2: TPanel;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    btnAddSuppllier: TElSpeedButton;
    Shape4: TShape;
    atnSupplier_First: TDataSetFirst;
    atnSupplier_Last: TDataSetLast;
    atnSupplier_Insert: TDataSetInsert;
    atnSupplier_Save: TDataSetPost;
    atnSupplier_Cancel: TDataSetCancel;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    atnSupplier_Search: TAction;
    atnSupplier_Prior: TDataSetPrior;
    atnSupplier_Next: TDataSetNext;
    atnSupplier_PageUp: TAction;
    atnSupplier_PageDown: TAction;
    atnSupplier_Filter: TAction;
    PopupMenu1: TPopupMenu;
    ActiveSuppliers1: TMenuItem;
    AllSuppliers1: TMenuItem;
    N1: TMenuItem;
    pgTransactionController: TElPageControl;
    tbsCompleted: TElTabSheet;
    tbsOustanding: TElTabSheet;
    atnSupplierFilter_All: TAction;
    atnSupplierFilter_Active: TAction;
    atnSupplierFilter_InActive: TAction;
    Inactivesuppliers1: TMenuItem;
    lblDescriptionShortName: TLabel;
    dbeSupplierShortName: TDBEdit;
    Panel4: TPanel;
    atnSupplier_Delete: TAction;
    PopupMenu2: TPopupMenu;
    menuAddSupplier: TMenuItem;
    N2: TMenuItem;
    atnSupplierSearch1: TMenuItem;
    lblDecriptionContactInfo: TLabel;
    lblDecriptionContactName: TLabel;
    dbeContactName: TDBEdit;
    lblDecriptionContactPhone: TLabel;
    dbeContactPhone: TDBEdit;
    bdeContactFax: TDBEdit;
    lblDecriptionConactFax: TLabel;
    dxgSuppliers: TdxDBGrid;
    dxgSuppliersCode_str: TdxDBGridColumn;
    dxgSuppliersName_str: TdxDBGridColumn;
    dxSupplierContactDetails: TdxDBGrid;
    dxSupplierContactDetailsFirstName_str: TdxDBGridColumn;
    dxSupplierContactDetailsLastName_str: TdxDBGridColumn;
    dxSupplierContactDetailsInitials_str: TdxDBGridColumn;
    dxSupplierContactDetailsPosition_str: TdxDBGridColumn;
    dxSupplierContactDetailsCellPhone: TdxDBGridColumn;
    dxSupplierContactDetailsEmail: TdxDBGridColumn;
    dxSupplierContactDetailsPhone: TdxDBGridColumn;
    dxSupplierContactDetailsFax: TdxDBGridColumn;
    dxSupplierTransCompleted: TdxDBGrid;
    dxSupplierTransCompletedDescription: TdxDBGridColumn;
    dxSupplierTransOutstanding: TdxDBGrid;
    dxSupplierTransOutstandingDescription: TdxDBGridColumn;
    dxSupplierTransOutstandingQtyOutStanding: TdxDBGridMaskColumn;
    TbsNotes: TElTabSheet;
    SupplierNotes: TDBMemo;
    dxSupplierTransCompletedSumOfQtyReceived_int: TdxDBGridCalcColumn;
    dxSupplierTransOutstandingTotalCost: TdxDBGridCurrencyColumn;
    dxSupplierTransOutstandingCost_mon: TdxDBGridCurrencyColumn;
    dxSupplierTransCompletedTotalCost: TdxDBGridCurrencyColumn;
    dxSupplierTransCompletedItemCost: TdxDBGridCurrencyColumn;
    Panel5: TPanel;
    Shape7: TShape;
    ElSpeedButton18: TElSpeedButton;
    btnAddContactDetails: TElSpeedButton;
    btnRemoveContactDetails: TElSpeedButton;
    pmnu_contactdetails: TPopupMenu;
    atnDisplayStaffMembersSelCols1: TMenuItem;
    atnDisplayStaffMembersSaveDef1: TMenuItem;
    atnDisplayStaffMembersSaveDef2: TMenuItem;
    dxSupplierTransOutstandingProductICN_str: TdxDBGridColumn;
    dxSupplierTransCompletedProductICN_str: TdxDBGridColumn;
    dxSupplierTransCompletedSumOfQtyOrdered_int: TdxDBGridColumn;
    dxSupplierTransOutstandingQtyOrdered_int: TdxDBGridColumn;
    Panel10: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    Label24: TLabel;
    dteStart: TDateTimePicker;
    dteEnd: TDateTimePicker;
    dxSupplierTransOutstandingOrderNo: TdxDBGridColumn;
    RzBmpButton1: TRzBmpButton;
    RzBmpButton2: TRzBmpButton;
    dxSupplierTransCompletedProductECN_str: TdxDBGridColumn;
    dxSupplierTransOutstandingProductECN_str: TdxDBGridColumn;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    lblReadOnly: TLabel;


    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlSuppliersListBackgroundResize(Sender: TObject);
    procedure pnlDetailBackgroundResize(Sender: TObject);
    procedure atnSupplier_PageUpExecute(Sender: TObject);
    procedure atnSupplier_PageUpUpdate(Sender: TObject);
    procedure atnSupplier_PageDownUpdate(Sender: TObject);
    procedure atnSupplier_PageDownExecute(Sender: TObject);
    procedure atnSupplierFilter_InActiveExecute(Sender: TObject);
    procedure atnSupplierFilter_AllExecute(Sender: TObject);
    procedure atnSupplierFilter_ActiveExecute(Sender: TObject);
    procedure atnSupplier_DeleteExecute(Sender: TObject);
    procedure btnAddContactDetailsClick(Sender: TObject);
    procedure btnRemoveContactDetailsClick(Sender: TObject);
    procedure dteStartCloseUp(Sender: TObject);
    procedure dteEndCloseUp(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure RzBmpButton2Click(Sender: TObject);
    procedure ElSpeedButton12Click(Sender: TObject);
    procedure ElSpeedButton18Click(Sender: TObject);
    procedure ElSpeedButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
    { private declarations }
    SupplierDm : TSupplierDm;


  (*......................................................................NEW.*)(*...........................................*)
                                                                                // ADDED: 2002.05.20 (Deane Putzier)
    //ColArrList : array of RDisplayList;                                       // REMOVED 2002.05.23 Moved to DM

                                                                                // ADDED: 2002.05.21 (Deane Putzier)
    LastSortedCol : Integer;                                                    // Holds the last column sorted.
    SortDirection : Boolean;                                                    // True will be ascending, false = descending

                                                                                // ADDED: 2002.05.21 (Deane Putzier)
//    procedure ResizeListColumns;                                                // Calls the resize procedure
//    procedure SetActionStatus;                                                  // Sets active any dataset buttons

                                                                                // ADDED: 2002.05.23 (Deane Putzier)
    procedure ClearSortColumn;
//    function IsSupplierFormVisible: Boolean;
//    procedure UpdateActionCheckMarks;
    procedure ResizeAllComponents;
    procedure ResizeListComponents;
    procedure ResizeDetailComponents;
    procedure FilterSuppliers(vFilter: integer);
    procedure SupplierSearch(pFieldType: integer);                                           // Resets defaults in the sort props for grid

  public
    { public declarations }
  (*...................................................................REMOVED*)(*...........................................*)
                                                                                // REMOVED: 2002.05.20 (Deane Putzier)
    (*procedure Loaded; override;*)                                             (* Items moved to the oncreate event*)

  protected
  {$IFDEF RXSTOREBUILD}
    procedure CreateParams(var Params: TCreateParams);override;                 // Removes border from the form
  {$ENDIF}
   end;

var
  SupplierFrm: TSupplierFrm;

implementation

uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  MyApplicationUtilities,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  DialogGridColumnSelectorUFrm,
  {$ENDIF}

  MainUDM, RxSolutionSecurityClass;


{$R *.DFM}


{$IFDEF RXSTOREBUILD}
procedure TSupplierFrm.CreateParams(var Params: TCreateParams); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:CreateParams---------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  inherited CreateParams(Params);                                               // Call general params
  Params.Style := WS_EX_CLIENTEDGE;                                             // Removes the border from the form edge.
end; (*................................................................*)(*end*)(*...........................................*)
{$ENDIF}

procedure TSupplierFrm.FormCreate(Sender: TObject); (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:FormCreate-----------------------*)
                                                                                (*===========================================*)
                                                                   (*00.0.2001*)(* Orig::Deane Putzier                       *)
                                                                                // Changed: 2002.05.21 (Deane Putzier)
var
  dateStart :TDateTime;
  dateEnd   :TDateTime;

begin (*.............................................................*)(*begin*)(*...........................................*)

  MainDM.GetFinancialYear(dateStart,dateEnd);
  dteStart.Date := dateStart;
  dteEnd.Date := dateEnd;
  SupplierDm := TSupplierDm.create( self );                                     // Create datamodule
  dsSupplier.DataSet := SupplierDm.adoQrySuppliers;                             // Link the datasource on the form to dm
  FilterSuppliers(1);                                                                      (*NEW.*)// Changed: 2002.05.21 (Deane Putzier)
  if Assigned(SupplierDm) then
    with SupplierDm do
      SetSupplierTransactionFilter(dteStart.Date, dteEnd.Date);


//  SetActionStatus;                                                              // Update if actions are available
end; (*................................................................*)(*end*)(*...........................................*)




procedure TSupplierFrm.FormClose(Sender: TObject; var Action: TCloseAction);    (*===========================================*)
                                                                                (*procedure:FormClose------------------------*)
                                                                                (*===========================================*)
                                                                   (*20.5.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  action:=cafree;                                                               // Realease the form
end; (*................................................................*)(*end*)(*...........................................*)





{
procedure TSupplierFrm.dbgrdSuppliersTitleClick(Column: TColumn); (*::::START:*)(*===========================================*)
                                                                                (*procedure:dbgrdSuppliersTitleClick---------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
                                                                                //   Used for clicking on the grid column title
                                                                                //   & sorting the data asc or desc
var (*.................................................................*)(*var*)(*...........................................*)
  Index  :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with SupplierDm do                                                            (* All work on data is done in datamodule*)
    if Assigned(SupplierDm) then                                                // make sure it has been created before using
      begin

      Index := Column.Index;                                                    // Get the column index position

      if LastSortedCol = Index then                                             // Check if the user has clicked the same column
        SortDirection := not SortDirection                                      // If yes swop direction of sort
        else SortDirection := True;                                             // else it should be ascending

      LastSortedCol := Index;                                                   // Remember the last column clicked

      ChangeSortOrder(cmbDisplayType.ItemIndex, Index, SortDirection);          // Update query in DM
      end;
end; (*................................................................*)(*end*)(*...........................................*)
}


procedure TSupplierFrm.ClearSortColumn; (*::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ClearSortColumn------------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  LastSortedCol       := -1;
end; (*................................................................*)(*end*)(*...........................................*)



procedure TSupplierFrm.ResizeAllComponents; (*::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeAllComponents--------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeListComponents;                                                         // Resizes the supplier list
  ResizeDetailComponents;                                                       // Resizes the supplier detail form
//  ResizeListColumns;                                                            // Calls the resizing proc. (Grid Columns etc)
end; (*................................................................*)(*end*)(*...........................................*)




procedure TSupplierFrm.pnlSuppliersListBackgroundResize(Sender: TObject); (*START:*)(*===========================================*)
                                                                                (*procedure:pnlSuppliersListBackgroundResize-*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeListComponents;                                                         // Resizes the supplier list
//  ResizeListColumns;                                                            // Calls the resizing proc. (Grid Columns etc)
end; (*................................................................*)(*end*)(*...........................................*)


procedure TSupplierFrm.pnlDetailBackgroundResize(Sender: TObject); (*:::START:*)(*===========================================*)
                                                                                (*procedure:pnlDetailBackgroundResize--------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  ResizeDetailComponents;                                                       // Resizes the supplier detail form
end; (*................................................................*)(*end*)(*...........................................*)



procedure TSupplierFrm.ResizeListComponents; (*:::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeListComponents-------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
                                                                                // Resizes components on the supplier list form
                                                                                // It does not update the grid columns.  That is
                                                                                // done by ResizeListColumns;.
var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth, Padding :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)
  LockWindowUpdate(Handle);                                                     // Do everything we can to prevent screen
                                                                                // flicker.  Handle belongs to the form (Form.Handle)
  with pnlSuppliersListBackground do                                            // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    end; (*with pnlSuppliersListBackground do*)

  with shpSuppliersList do                                                      // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN div 2;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpSuppliersList do*)

  with lblMainFormTitle do
    begin
    Padding := 35;
    Left    := EDGEMARGIN + Padding;
    Top     := EDGEMARGIN;
    Width   := NewWidth - ((EDGEMARGIN + (EDGEMARGIN div 2)) + Padding);
    end;

  with dxgSuppliers do
    begin
    Left    := EDGEMARGIN;
    Top     := 75;
    Height  := NewHeight - (EDGEMARGIN + Top);
    Width   := NewWidth - (EDGEMARGIN + (EDGEMARGIN div 2));

//    RowCount := ((NewHeight - (Top + EDGEMARGIN)) div PanelHeight);
    end;

  LockWindowUpdate(0);                                                          // Unlock the screen updater
end; (*................................................................*)(*end*)(*...........................................*)



procedure TSupplierFrm.ResizeDetailComponents; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:ResizeDetailComponents-----------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
                                                                                // Resize detail form and components
var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth :integer;
  edtWidth  :integer;

const                                                                  (*const*)(*...........................................*)
  LABELWIDTH  = 55;

begin (*.............................................................*)(*begin*)(*...........................................*)

  LockWindowUpdate(Handle);                                                     // Do everything we can to prevent screen flicker

  with pnlDetailBackground do                                                   // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    edtWidth  := (Width div 2) - (EDGEMARGIN * 2);
    end; (*with pnlSuppliersListBackground do*)

  with shpDetailBorder do                                                       // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpDetailBorder do*)

  with pnlDetailColorBackground do                                              // Colored background for detail form
    begin
    Top     := EDGEMARGIN;
    Left    := EDGEMARGIN;
    Width   := NewWidth - (EDGEMARGIN * 2);
    Height  := NewHeight - ((EDGEMARGIN * 2) + Top);
    end; (*with pnlDetailColorBackground do*)

 with pclDetails do                                                            // Pagecontrols details
    begin
 //   Top     := EDGEMARGIN;
    Left    := EDGEMARGIN + (EDGEMARGIN div 2);
    Width   := NewWidth - ( EDGEMARGIN* 3);
    Height  := NewHeight - ((EDGEMARGIN * 3) + Top);
    end; (*with pclDetails do*)

//  DBGridReSizeDymanicColumn(dbgdSupplierReceipts,0);
{
  lblDescriptionGeneralDetails.Width  := edtWidth;                              // Independant controls on color background
  dbeSupplierName.Width               := edtWidth - LABELWIDTH;                 // Independant controls less their labels
  dbeSupplierShortName.Width          := edtWidth - LABELWIDTH;                 // Independant controls less their labels
  dbeCode.Width                       := edtWidth - LABELWIDTH;                 // Independant controls less their labels
}
//  lblDetailCopyright.Top := NewHeight - lblDetailCopyright.Height;              // Independant control On hte bottom of the form

  LockWindowUpdate(0);                                                          // Unlock the screen updater
end; (*................................................................*)(*end*)(*...........................................*)


procedure TSupplierFrm.atnSupplier_PageUpExecute(Sender: TObject);
begin
  if Assigned(SupplierDm) then
    with SupplierDm do
      GotoPageUp;
end;

procedure TSupplierFrm.atnSupplier_PageUpUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnSupplier_First.Enabled;
end;

procedure TSupplierFrm.atnSupplier_PageDownUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnSupplier_Last.Enabled;
end;

procedure TSupplierFrm.atnSupplier_PageDownExecute(Sender: TObject);
begin
  if Assigned(SupplierDm) then
    with SupplierDm do
      GotoPageDown;
end;

procedure TSupplierFrm.FilterSuppliers(vFilter:integer);
begin
  if Assigned(SupplierDm) then
    with SupplierDm do
      begin
      atnSupplierFilter_All.Checked       := False;
      atnSupplierFilter_Active.Checked    := False;
      atnSupplierFilter_InActive.Checked  := False;
      FilterSuppliers(vFilter);
      case vFilter of
        0:  begin
            atnSupplierFilter_All.Checked       := True;
            lblMainFormTitle.Caption := SSUPPLIERS;
            end;
        1:  begin
            atnSupplierFilter_Active.Checked    := True;
            lblMainFormTitle.Caption := SSUPPLIERSActive;
            end;
        2:  begin
            atnSupplierFilter_InActive.Checked  := True;
            lblMainFormTitle.Caption := SSUPPLIERSInactive;
            end;
        end;
      end;
end;


procedure TSupplierFrm.atnSupplierFilter_InActiveExecute(Sender: TObject);
begin
  FilterSuppliers(2);
end;

procedure TSupplierFrm.atnSupplierFilter_AllExecute(Sender: TObject);
begin
  FilterSuppliers(0);
end;

procedure TSupplierFrm.atnSupplierFilter_ActiveExecute(Sender: TObject);
begin
  FilterSuppliers(1);
end;

procedure TSupplierFrm.SupplierSearch(pFieldType:integer); (*::::::START:*)(*===========================================*)
                                                                                (*procedure:ProductSearch--------------------*)
                                                                                (*===========================================*)
                                                                  (*28.10.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)

  vSearchStr, vSearchFld :String;

begin (*.............................................................*)(*begin*)(*...........................................*)
{
  case pFieldType of
    0:  begin
        vSearchStr  := edtCode_str.Text;
        vSearchFld  := 'Code_Str';
        end;
    1:  begin
        vSearchStr  := edtName_str.Text;
        vSearchFld  := 'Name_Str';
        end;
    end;

  if vSearchStr <> '' then
    with DBCtrlGrid1.DataSource.DataSet do
      Locate(vSearchFld,vSearchStr,[loCaseInsensitive, loPartialKey]);
}
end; (*................................................................*)(*end*)(*...........................................*)

procedure TSupplierFrm.atnSupplier_DeleteExecute(Sender: TObject);
begin

  if Assigned(SupplierDm) then
    with SupplierDm do
      DeleteSupplier;

end;

procedure TSupplierFrm.btnAddContactDetailsClick(Sender: TObject);
begin
  dxSupplierContactDetails.DataSource.DataSet.Append;
end;

procedure TSupplierFrm.btnRemoveContactDetailsClick(Sender: TObject);
begin
 if dxSupplierContactDetails.DataSource.DataSet.RecordCount > 0 then
  if  MessageDlg(SDeleteSupplierContact,mtWarning, [mbYes, mbCancel],0)= mrYes then
   dxSupplierContactDetails.DataSource.DataSet.Delete;

end;

procedure TSupplierFrm.dteStartCloseUp(Sender: TObject);
begin
 if Assigned(SupplierDm) then
    with SupplierDm do
      SetSupplierTransactionFilter(dteStart.Date, dteEnd.Date);
end;

procedure TSupplierFrm.dteEndCloseUp(Sender: TObject);
begin
 if Assigned(SupplierDm) then
    with SupplierDm do
      SetSupplierTransactionFilter(dteStart.Date, dteEnd.Date);
end;

procedure TSupplierFrm.RzBmpButton1Click(Sender: TObject);
begin
  if Assigned(SupplierDm) then
    with SupplierDm do
      PrintSupplierList;
end;

procedure TSupplierFrm.RzBmpButton2Click(Sender: TObject);
begin
  if Assigned(SupplierDm) then
    with SupplierDm do
      PrintSupplierDetail;
end;



procedure TSupplierFrm.ElSpeedButton12Click(Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
   if pgTransactionController.TabIndex = 0 then
    SelectColumns.SelectColumns(dxSupplierTransCompleted)
   else if pgTransactionController.TabIndex = 1 then
    SelectColumns.SelectColumns(dxSupplierTransOutstanding)
  finally
    SelectColumns.Free;
  end;
end;

procedure TSupplierFrm.ElSpeedButton18Click(Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dxSupplierContactDetails)
  finally
    SelectColumns.Free;
  end;

end;

procedure TSupplierFrm.ElSpeedButton13Click(Sender: TObject);
begin
if dxSupplierContactDetails.DataSource.DataSet.State in [dsEdit, dsInsert] then
 dxSupplierContactDetails.DataSource.DataSet.Post;
end;

//Bug Issue 2548; SM; 25/11/2011
procedure TSupplierFrm.FormShow(Sender: TObject);
var
   atnBrowse : Boolean;
begin

  with RxSolutionFrm.Security do
   atnBrowse := (GetUserAccessLevel(MODULE_CORE_SUPPLIERS) = USER_BROWSER);

  lblReadOnly.Visible                   := atnBrowse;

  btnAddSuppllier.Enabled               := not atnBrowse;
  pnlDetailColorBackground.Enabled      := not atnBrowse;
  dxSupplierContactDetails.Enabled      := not atnBrowse;
  btnAddContactDetails.Enabled          := not atnBrowse;
  btnRemoveContactDetails.Enabled       := not atnBrowse;
  TbsGeneralAddress.Enabled             := not atnBrowse;
  menuAddSupplier.Enabled               := not atnBrowse;
  tbsBankingDetails.Enabled             := not atnBrowse;
  SupplierNotes.Enabled                 := not atnBrowse;      

end;

end.

unit BudgetUFrm;
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
  ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, DB, ActnList, ImgList,
  ADODB,

  RzBmpBtn, dxExEdtr, ppDB, dxCntner, ppBands, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppPrnabl, ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDBPipe,
  ElPopBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxEditor,
  dxEdLib, dxDBELib, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel, RzLabel, ppParameter;

const

 EDGEMARGIN = 10;

type
  TBudgetFrm = class(TForm)
    dsTotalBudgetPrint: TDataSource;
    dsLevelOfUseBudget: TDataSource;
    dsVENBudget: TDataSource;
    DsProductPackSize: TDataSource;
    dsTenderInflation: TDataSource;
    dsTotalBudgetEDL: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pnlProductListBackground: TPanel;
    shpProductList: TShape;
    Shape1: TShape;
    pnlDetail: TPanel;
    pnlProductDetailColorBackground: TPanel;
    Label31: TLabel;
    Label38: TLabel;
    dbtTenderInflation: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DatBudgetStart: TDateTimePicker;
    datReviewStart: TDateTimePicker;
    DatBudgetEnd: TDateTimePicker;
    DatReviewEnd: TDateTimePicker;
    RadioProjection: TRadioGroup;
    RadioTender: TRadioGroup;
    EdtInflation: TEdit;
    EdtPop: TEdit;
    BtnPrintBudget: TBitBtn;
    btnEstimatedToReviewed: TBitBtn;
    BtnGenerateBudget: TBitBtn;
    Panel20: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton18: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton20: TElSpeedButton;
    ElSpeedButton21: TElSpeedButton;
    Shape2: TShape;
    ElSpeedButton23: TElSpeedButton;
    ElSpeedButton24: TElSpeedButton;
    ElSpeedButton25: TElSpeedButton;
    Panel21: TPanel;
    dxgProductBudget: TdxDBGrid;
    dxgProductBudgetProductCode_str: TdxDBGridColumn;
    dxgProductBudgetItemBugdet_mon: TdxDBGridCurrencyColumn;
    dxgProductBudgetATC_str: TdxDBGridColumn;
    dxgProductBudgetInstLevelOfUse_str: TdxDBGridColumn;
    dxgProductBudgetVEN_str: TdxDBGridColumn;
    dxgProductBudgetDescription: TdxDBGridColumn;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxEditStyleController1: TdxEditStyleController;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid3InstLevelOfUse_str: TdxDBGridColumn;
    dxDBGrid3LevelBudget_mon: TdxDBGridCurrencyColumn;
    dxDBGrid3LevelReviewedBudget_mon: TdxDBGridCurrencyColumn;
    dxDBGrid2VEN_str: TdxDBGridColumn;
    dxDBGrid2VENBuget_mon: TdxDBGridCurrencyColumn;
    dxDBGrid2VENReviewedBuget_mon: TdxDBGridCurrencyColumn;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    dsVENBudgetPrint: TDataSource;
    dsLoUBudgetPrint: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppTitleBand3: TppTitleBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    dxgProductBudgetGroup1_str: TdxDBGridColumn;
    dxgProductBudgetGroup2_str: TdxDBGridColumn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    atnPrintBudget: TAction;
    dxgProductBudgetReviewedItemBudget_mon: TdxDBGridCurrencyColumn;
    RzBmpButton1: TRzBmpButton;
    lblMainFormTitle: TRzLabel;
    dxgProductBudgetICN_str: TdxDBGridColumn;
    dxgProductBudgetECN_str: TdxDBGridColumn;
    procedure BtnGenerateBudgetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtInflationKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEstimatedToReviewedClick(Sender: TObject);
    procedure wwDBNavBudgetItemsRefreshClick(Sender: TObject);
    procedure EdtPopKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure ElSpeedButton23Click(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
  private
    Inflation :double;
    BudgetStart, BudgetEnd, ReviewStart, ReviewEnd: TDateTime;
    BudgetPeriod,ReviewPeriod: Real;
    procedure ResizeListComponents;
    procedure SetScreenOnAccountChange;
    { Private declarations }


  public
    { Public declarations }

  protected
  {$IFDEF RXSTOREBUILD}
    procedure CreateParams(var Params: TCreateParams);override;                 // Removes border from the form
  {$ENDIF}
  end;

var
  BudgetFrm: TBudgetFrm;

implementation

uses
  BudgetUDM,
  MyApplicationUtilities,
  Types;

{$R *.DFM}



procedure TBudgetFrm.SetScreenOnAccountChange;
var
  StYear      :string;
  EndYear     :string;
  vInFlation  :string;
begin

  if Assigned(BudgetDM) then
  try
  RadioProjection.ItemIndex := 0;
  RadioTender.ItemIndex := 0;

  with BudgetDM.tblBudgetAccounts do
    begin
    DatBudgetStart.Date := FieldByName('FYStart_dat').AsDateTime;
    DatReviewStart.Date := FieldByName('FYStart_dat').AsDateTime;
    DatBudgetEnd.Date := FieldByName('FYEnd_dat').AsDateTime;
    DatReviewEnd.Date := FieldByName('FYEnd_dat').AsDateTime;
    StYear      :=  FieldByName('FinancialYear_str').AsString;
    EndYear     :=  IntToStr(FieldByName('FinancialYear_str').AsInteger-1);
    vInFlation  :=  FieldByName('InflationRate_int').AsString;
    end;
  with BudgetDM.stpBudgetTenderInflation do
    begin
    Close;
    Parameters.ParamByName('FYContract').Value  :=  StYear;
    Parameters.ParamByName('LFYContract').Value :=  EndYear;
    Open;
    end;
  EdtInflation.Text := vInFlation;
  except
  end;
end;

{$IFDEF RXSTOREBUILD}
procedure TBudgetFrm.CreateParams(var Params: TCreateParams); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:CreateParams---------------------*)
                                                                                (*===========================================*)
                                                                   (*10.9.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)
  inherited CreateParams(Params);                                               // Call general params
  Params.Style := WS_EX_CLIENTEDGE;                                             // Removes the border from the form edge.
end; (*................................................................*)(*end*)(*...........................................*)
{$ENDIF}


procedure TBudgetFrm.FormCreate(Sender: TObject);
begin
  {$IFDEF RXSTOREBUILD}
  FormStyle := fsMDIChild;
  {$ENDIF}

 BudgetDM := TBudgetDM.Create(Self);

end;

procedure TBudgetFrm.BtnGenerateBudgetClick(Sender: TObject);
var
  vRefreshQry : array[0..3] of TADOTable;
  i   :integer;
  vInflation, vPopulation :double;
begin
  if EdtInflation.Text='' then
    ShowMessage('Inflation Rate is Blank')
    else
    begin
    // Setting the varaible for the qry
    BudgetStart:= DatBudgetStart.DateTime;
    ReviewStart:= DatReviewStart.DateTime;
    BudgetEnd := DatBudgetEnd.DateTime;
    ReviewEnd := DatReviewEnd.DateTime;
    //  If EdtInflation.Text > '' then Inflation := (1+(((StrToFloat(EdtInflation.Text))/100)));
    // Inflation := (1+(((StrToFloat(EdtInflation.Text))/100)));
    // First switch off the qry
    // Buidling the budget
    //  Case RadioProjection.ItemIndex of
    //  0 : BudgetDM.QryBudgetBuild.Active := True;
    //  end;
    // Doing the summaries.
    with BudgetDm.stpBudgetUPDATEResetItemBudget do // Reset all budgets
      begin
      Close;
      ExecProc;
      end;
    with BudgetDm.stpBudgetUPDATEItemBudget do
      begin
      Close;
      ReviewStart:=DatReviewStart.DateTime;
      ReviewEnd:=DatReviewEnd.DateTime;
      ReviewPeriod:=ReviewEnd-ReviewStart;
      BudgetStart:= DatBudgetStart.DateTime;
      BudgetEnd := DatBudgetEnd.DateTime;
      BudgetPeriod := BudgetEnd-BudgetStart;
      if RadioTender.ItemIndex = 0 then   // check which inflation unit to use
        vInflation  :=  StrToFloat(EdtInflation.Text)/100
        else
        vInflation  :=  StrToFloat(dbtTenderInflation.Caption)/100;
      if RadioProjection.ItemIndex = 1 then
        vPopulation :=  StrToFloat(EdtPop.Text)/100
        else
        vPopulation := 0;
      Inflation :=  (1 + vInflation + vPopulation);  //add them all together
//      vInflation :=  (1 + vInflation);
      Parameters.ParamByName('BudgetPeriod').Value:=BudgetPeriod;
      Parameters.ParamByName('Period').Value:=ReviewPeriod;
      Parameters.ParamByName('InflationRate').Value:=Inflation;
      Parameters.ParamByName('DateStart').Value:=ReviewStart;
      Parameters.ParamByName('DateEnd').Value:=ReviewEnd;
      ExecProc;
      end;
    vRefreshQry[0] := BudgetDM.tblBudgetProducts;
    vRefreshQry[1] := BudgetDM.tblBudgetTotalEDL;
    vRefreshQry[2] := BudgetDM.tblBudgetLevelOfUse;
    vRefreshQry[3] := BudgetDM.tblBudgetVEN;
    for i:= low(vRefreshQry) to high(vRefreshQry) do
      with vRefreshQry[i] do
        begin
        DisableControls;
        Close;
        Open;
        EnableControls;
        end;
    end;  //if EdtInflation.Text='' then
end;

procedure TBudgetFrm.EdtInflationKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',#8])then
  Key := #0;
end;

procedure TBudgetFrm.FormActivate(Sender: TObject);
begin
  SetScreenOnAccountChange;
end;

procedure TBudgetFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BudgetDM.Free;
  Action:=caFree;
  Inherited;
end;

procedure TBudgetFrm.btnEstimatedToReviewedClick(Sender: TObject);
begin
  BudgetDM.RefreshDataSources;
end;

procedure TBudgetFrm.wwDBNavBudgetItemsRefreshClick(Sender: TObject);
begin
  BudgetDM.RefreshDataSources;
end;

procedure TBudgetFrm.EdtPopKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',#8])then Key := #0;
end;




procedure TBudgetFrm.ResizeListComponents;
var (*.................................................................*)(*var*)(*...........................................*)
  NewHeight, NewWidth :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)
  LockWindowUpdate(Handle);                                                     // Do everything youwe can to prevent screen
                                                                                // flicker.  Handle belongs to the form (Form.Handle)
  with pnlProductListBackground do                                            // Get the sizes of the background panel
    begin
    NewHeight := Height;
    NewWidth  := Width;
    end; (*with pnlSuppliersListBackground do*)

  with shpProductList do                                                      // Form frame (Shape)
    begin
    Top     := EDGEMARGIN div 2;
    Left    := EDGEMARGIN div 2;
    Width   := NewWidth - EDGEMARGIN;
    Height  := NewHeight - EDGEMARGIN;
    end; (*with shpSuppliersList do*)

  with lblMainFormTitle do
    begin
    Left    := EDGEMARGIN + 40;
    Top     := EDGEMARGIN;
    Width   := (NewWidth - 40) - (EDGEMARGIN * 2);
    end; (*with lblMainFormTitle do*)

  with pnlDetail do
    begin
    Left    := EDGEMARGIN;
    Top     := 45;
    Width   := NewWidth - (EDGEMARGIN * 2);
    Height  := NewHeight - ((EDGEMARGIN + (EDGEMARGIN div 2)) + Top);
    end;

  LockWindowUpdate(0);                                                          // Unlock the screen updater
end;


procedure TBudgetFrm.FormResize(Sender: TObject);
begin
  ResizeListComponents;
end;

procedure TBudgetFrm.ElSpeedButton23Click(Sender: TObject);
begin

  BudgetDm.RefreshData;

end;

procedure TBudgetFrm.RzBmpButton1Click(Sender: TObject);
begin
  with ppReport1 do // Reset all budgets
    begin
    Print;
    end;
end;

end.


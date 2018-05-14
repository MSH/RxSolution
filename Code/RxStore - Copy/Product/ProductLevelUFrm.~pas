unit ProductLevelUFrm;
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
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, Buttons,
  Grids, DBGrids, TeeProcs, TeEngine, Chart, DBChart, Series, Variants,
  dxPageControl, dxExEdtr, dxCntner, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl,
  dxGrClms;

type
  TProductLevelFrm = class(TForm)
    dsConsumption: TDataSource;
    dsLeadTime: TDataSource;
    dsProductStore: TDataSource;
    dsTender: TDataSource;
    dsOrder: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Btn_Reject: TBitBtn;
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    Grp_DrugID: TGroupBox;
    DBEdt_PackSize: TDBEdit;
    DBEdt_Code: TDBEdit;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Panel3: TPanel;
    Grp_LevelShow: TGroupBox;
    Lbl_SSDb: TLabel;
    Lbl_MinDb: TLabel;
    Lbl_MaxDb: TLabel;
    Lbl_LastReview: TLabel;
    SS_Unt: TLabel;
    Lbl_SizeUnt: TLabel;
    DBTxt_SizeUnt: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    DBEdt_SS: TDBEdit;
    DBEdt_Min: TDBEdit;
    DBEdt_Max: TDBEdit;
    DBEdt_LastReview: TDBEdit;
    Grp_ProcurmentData: TGroupBox;
    Lbl_PP: TLabel;
    Lbl_UntPP: TLabel;
    Lbl_OrdPack: TLabel;
    Lbl_UntOrdPack: TLabel;
    Lbl_Supplier: TLabel;
    Lbl_DeliveryPeriod: TLabel;
    Lbl_UntDeliveryPeriod: TLabel;
    Edt_PP: TEdit;
    Edt_OrdPck: TEdit;
    DBEdt_Supplier: TDBEdit;
    DBEdt_DeliveryPeriod: TDBEdit;
    Panel2: TPanel;
    DBChrt_History: TDBChart;
    Series2: TPointSeries;
    Series1: TLineSeries;
    Panel4: TPanel;
    Grp_HistoryCntrls: TGroupBox;
    Lbl_Graph: TLabel;
    Btn_Actual: TBitBtn;
    Btn_GrphAcc_Full: TBitBtn;
    Btn_GrphAcc_Period: TBitBtn;
    dxPageControl2: TdxPageControl;
    TbshConsumption: TdxTabSheet;
    TbshLeadTime: TdxTabSheet;
    TbshOrders: TdxTabSheet;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Vw_Lag_Avg: TEdit;
    Label22: TLabel;
    Vw_Lag_SD: TEdit;
    Stat_Lag_n_Lbl: TLabel;
    Vw_Lag_n: TEdit;
    Label36: TLabel;
    Vw_Lag_CI: TEdit;
    Label23: TLabel;
    Vw_L_St: TDateTimePicker;
    Label24: TLabel;
    Vw_L_End: TDateTimePicker;
    ProgressBar2: TProgressBar;
    Btn_CollectLag: TBitBtn;
    Label31: TLabel;
    L_Stats_Radio: TRadioGroup;
    L_Review_days_Vw: TLabel;
    Label32: TLabel;
    L_Review_Mnth_Vw: TLabel;
    Label33: TLabel;
    L_Review_Yr_Vw: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Date_dat: TdxDBGridDateColumn;
    dxDBGrid1DayQuantity_int: TdxDBGridMaskColumn;
    dxEditStyleController1: TdxEditStyleController;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Date_dat: TdxDBGridDateColumn;
    dxDBGrid2QuantityOnHand_int: TdxDBGridMaskColumn;
    dxDBGrid2Order_Qnt_Int: TdxDBGridCurrencyColumn;
    dxDBGrid2Rec_Qnt_Int: TdxDBGridCurrencyColumn;
    dxDBGrid2Issue_Qnt_Int: TdxDBGridCurrencyColumn;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid4: TdxDBGrid;
    dxDBGridDateColumn2: TdxDBGridDateColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn3: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGrid3ReceiptNo_str: TdxDBGridMaskColumn;
    dxDBGrid3Received_dat: TdxDBGridDateColumn;
    dxDBGrid3LeadTime_int: TdxDBGridMaskColumn;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid5Date_dat: TdxDBGridDateColumn;
    dxDBGrid5Quantity_int: TdxDBGridCurrencyColumn;
    dxDBGrid5Value_mon: TdxDBGridCurrencyColumn;
    dxDBGrid5QuantityOnHand_int: TdxDBGridMaskColumn;
    dxDBGrid5MaxStockSet_int: TdxDBGridMaskColumn;
    Grp_LevelCalc: TGroupBox;
    Lbl_SS: TLabel;
    Lbl_Min: TLabel;
    Lbl_Max: TLabel;
    Lbl_Calc: TLabel;
    Lbl_Prop: TLabel;
    Lbl_Final: TLabel;
    Lbl_value: TLabel;
    Test: TLabel;
    Edt_SSCalc: TEdit;
    Edt_SSProp: TEdit;
    Edt_MaxCalc: TEdit;
    Edt_MaxProp: TEdit;
    Edt_MinCalc: TEdit;
    Edt_MinProp: TEdit;
    Btn_Calc: TBitBtn;
    Grp_SSMode: TGroupBox;
    Radio_SSLead: TRadioGroup;
    Radio_SSCon: TRadioGroup;
    Edt_SSFinal: TEdit;
    Edt_MinFinal: TEdit;
    Edt_MaxFinal: TEdit;
    Edt_SSMon: TEdit;
    Edt_MinMon: TEdit;
    Edt_MaxMon: TEdit;
    Btn_Keep: TBitBtn;
    dxPageControl3: TdxPageControl;
    dxTabSheet3: TdxTabSheet;
    Label30: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Stat_CL_r_Lbl: TLabel;
    Vw_Stat_CL_r: TLabel;
    Label9: TLabel;
    C_Review_Lbl: TLabel;
    C_Review_days_Vw: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Stat_CL_n_Lbl: TLabel;
    Stat_CS_n_Lbl: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    C_Review_Days_Unt: TLabel;
    C_Review_Mnth_Vw: TLabel;
    C_Review_Mnth_Unts: TLabel;
    C_Review_Yr_Vw: TLabel;
    C_Review_Yrs_Unts: TLabel;
    Vw_C_St: TDateTimePicker;
    Vw_Con_LAvg: TEdit;
    Edt_Con_SAvg: TEdit;
    Vw_Con_SSD: TEdit;
    Vw_Con_LSD: TEdit;
    Vw_Stat_CS_n: TEdit;
    Vw_Con_SCI: TEdit;
    Vw_Con_LCI: TEdit;
    Vw_Stat_CL_n: TEdit;
    Btn_CollectCon: TBitBtn;
    Vw_C_End: TDateTimePicker;
    C_Stats_Radio: TRadioGroup;
    Radio_ConAvg: TRadioGroup;
    RadioGroup1: TRadioGroup;
    dxTabSheet4: TdxTabSheet;
    Label35: TLabel;
    Lbl_DDD: TLabel;
    Lbl_COT: TLabel;
    Lbl_Epi: TLabel;
    Lbl_EstAvgHead: TLabel;
    Lbl_EstExpHead: TLabel;
    Lbl_EstExp: TLabel;
    Lbl_EstAvg: TLabel;
    Lbl_EstAvgUnt: TLabel;
    Unt_Epi: TLabel;
    Unt_COT: TLabel;
    DBText_DDDUnt: TDBText;
    Lbl_DDD_Day: TLabel;
    Btn_EpiCalc: TBitBtn;
    Radio_Epi: TRadioGroup;
    Edt_DDD: TEdit;
    Edt_COT: TEdit;
    Edt_Epi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Btn_CalcClick(Sender: TObject);
    procedure Radio_ConAvgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C_Stats_RadioClick(Sender: TObject);
    procedure Edt_Con_SAvgKeyPress(Sender: TObject; var Key: Char);
    procedure L_Stats_RadioClick(Sender: TObject);
    procedure Vw_C_StChange(Sender: TObject);
    procedure Vw_L_StChange(Sender: TObject);
    procedure Btn_CollectConClick(Sender: TObject);
    procedure Btn_ActualClick(Sender: TObject);
    procedure GetConsumption;
    Procedure GetLeadTime(pType:integer);
    Procedure t_Value;
    procedure Radio_EpiClick(Sender: TObject);
    procedure Btn_EpiCalcClick(Sender: TObject);
    procedure Btn_CollectLagClick(Sender: TObject);
    procedure Btn_GrphAcc_FullClick(Sender: TObject);
    procedure StrngGrd_ConKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_KeepClick(Sender: TObject);
    procedure Btn_RejectClick(Sender: TObject);
    procedure Radio_SSConClick(Sender: TObject);
    procedure Radio_SSLeadClick(Sender: TObject);
    procedure Edt_SSFinalChange(Sender: TObject);
    procedure Edt_MinFinalChange(Sender: TObject);
    procedure Btn_GrphAcc_PeriodClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    Avg_Con, SD_Con, CI_Con: Single ;
    Con, Lead: Single;
    C_Safe, P_Safe, F_Safe: Single ;
    C_Min, P_Min, F_Min: Single ;
    C_Max, P_Max, F_Max: Single ;
    O_Pck: Integer;
    PP: Integer;
    Con_Mode, CSS_Mode, LSS_Mode, Epi_Mode:String[1];
    C_Start, C_End, L_St, L_End: TDateTime;
    // Stats varaibles
    Reg_Start, Total_St, Total_End, LastIssueDate : TDate;
    OS_Days: Single;
    Tot_Con, Day: Single;
    N, Df: Integer;
    t, TN: Single;
    X, X2, Y, Y2, XY, NY, NY2: Single;
    L, L2, LN: Single;
    R_Avg_Con, R_SD_Con, R_CI_Con, r: Single;
    T_Avg_Con, T_SD_Con, T_CI_Con: Single;
    Avg_Lag, SD_Lag, CI_Lag: Single;
    LastQOH: Integer;
  /// Epidemiological Varaibles
    DDD, DDDU, EpiUnts: Single;
    Strength, Size: Single;
    COT, Pop: Integer;

    ReviewPeriod :integer;

    procedure LagTime_CollectStats;
    procedure CalculateConsumption_CollectStats;
    procedure CalculateConsumption;
    procedure CalculateConsumption_Epidemiology;
    procedure Save_StockLevels;

  public
    { Public declarations }
  end;

var
  ProductLevelFrm: TProductLevelFrm;

implementation

uses
  ProductUDm,
  MainUDM;

{$R *.DFM}

/// Defaults


procedure TProductLevelFrm.FormCreate(Sender: TObject);
Begin
  /// Initialisng the qry so that we can see the whole history
  dxPageControl1.ActivePage := dxTabSheet1;
  dxTabSheet2.TabVisible    := False;
  with ProductDm do
    begin
    ReviewPeriod := tblProductCatalog.FieldbyName('ProcurementPeriod_int').AsInteger * 6;
    if ReviewPeriod < 1 then ReviewPeriod := 7;
    C_Start := ((Date)-ReviewPeriod);
    C_End := (Date);
    L_St := ((Date)-ReviewPeriod);
    L_End := (Date);
    SetConsumptionFilter( 0, C_Start, C_End); // sets type_str = "i"
    SetLeadtimeFilter( 0, L_St, L_End); // sets type_str = "i"
    end;
    // Draw the graph
    DBChrt_History.RefreshData;
    // Variables
    Con_Mode := 'S';
    CSS_Mode := 'A';
    LSS_Mode := 'A';
    O_Pck := 1;
    DDD := 0;
    DDDU := 0;
    EpiUnts := 0;
    COT := 0;
    Pop := 0;
    Strength :=0;
    Size := 0;
    /// Getting data from the DBs
    // Procurment period
  If (dsProductStore.DataSet.FieldByName('ProcurementPeriod_str').AsString = 'A') then
   PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriodA_int').AsInteger;
  If (dsProductStore.DataSet.FieldByName('ProcurementPeriod_str').AsString = 'B') then
   PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriodB_int').AsInteger;
  If (dsProductStore.DataSet.FieldByName('ProcurementPeriod_str').AsString = 'C') then
   PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriodC_int').AsInteger;
  If (dsProductStore.DataSet.FieldByName('ProcurementPeriod_str').AsString = 'D') then
   PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriodD_int').AsInteger;
    // DDD
   DDD := dsProductStore.DataSet.FieldByName('DDDValue_Int').AsFloat;
  //// Object Properties
  // Radiobuttons
   C_Stats_Radio.ItemIndex := 0;
   Radio_ConAvg.ItemIndex := 0;
   L_Stats_Radio.ItemIndex := 0;
   Radio_SSCon.ItemIndex := 0;
   Radio_SSLead.ItemIndex := 0;
   Radio_Epi.ItemIndex := 0;
  // Edit
  // Text & captions
   Vw_C_St.Date :=  C_Start;
   Vw_C_End.Date := C_End;
   C_Review_days_Vw.Caption := FloatToStr((C_End - C_Start));
   C_Review_Mnth_Vw.Caption := FloatToStr(((C_End - C_Start)/30));
   C_Review_Yr_Vw.Caption := FloatToStr(((C_End - C_Start)/365));
   Vw_L_St.Date :=  L_St;
   Vw_L_End.Date := L_End;
   L_Review_days_Vw.Caption := FloatToStr((L_End - L_St));
   L_Review_Mnth_Vw.Caption := FloatToStr(((L_End - L_St)/30));
   L_Review_Yr_Vw.Caption := FloatToStr(((L_End - L_St)/365));
   Vw_Stat_CS_n.Text := '0';
   Vw_Stat_CL_n.Text := '0';
   Vw_Stat_CL_r.Caption := '0';
   Vw_Lag_n.Text := '0';
   Edt_PP.Text := IntToStr(PP);
   Edt_OrdPck.Text := IntToStr(O_Pck);
   Edt_SSCalc.Text := '0';
   Edt_SSProp.Text := '0';
   Edt_SSFinal.Text := '0';
   Edt_MinCalc.Text := '0';
   Edt_MinProp.Text := '0';
   Edt_MinFinal.Text := '0';
   Edt_MaxCalc.Text := '0';
   Edt_MaxProp.Text := '0';
   Edt_MaxFinal.Text := '0';
   Edt_SSMon.Text := 'R';
   Edt_MinMon.Text := 'R';
   Edt_MaxMon.Text := 'R';
//   Dt_AvgConSt.Date := (Date);
//   Dt_AvgConEnd.Date := (Date);
   If DDD > 0 then
    Edt_DDD.Text := FloatToStr(DDD)
    else Edt_DDD.Text := '0';
   Edt_COT.Text := '0';
   Edt_Epi.Text := '0';
   Lbl_EstAvg.Caption := '0';
   Lbl_EstExp.Caption := 'R';
    // stats edt
  If (dsProductStore.DataSet.FieldByName('LeadTime_str').AsString = 'A') then
   Vw_Lag_Avg.Text := MainDm.tblMainSystem.FieldByName('LeadTimeA_inT').AsString;
  If (dsProductStore.DataSet.FieldByName('LeadTime_str').AsString = 'B') then
   Vw_Lag_Avg.Text := MainDm.tblMainSystem.FieldByName('LeadTimeB_inT').AsString;
  If (dsProductStore.DataSet.FieldByName('LeadTime_str').AsString = 'C') then
   Vw_Lag_Avg.Text := MainDm.tblMainSystem.FieldByName('LeadTimeC_inT').AsString;
  If (dsProductStore.DataSet.FieldByName('LeadTime_str').AsString = 'D') then
   Vw_Lag_Avg.Text := MainDm.tblMainSystem.FieldByName('LeadTimeD_int').AsString;
   Edt_Con_SAvg.Text := '0';
   Vw_Con_SSD.Text := '0';
   Vw_Con_SCI.Text := '0';
   Vw_Stat_CS_n.Text := '0';
   Vw_Con_LAvg.Text := '0';
   Vw_Con_LSD.Text := '0';
   Vw_Con_LCI.Text := '0';
  Vw_Stat_CL_n.Text := '0';
  // Get Procurement period
   Edt_PP.Text := IntToStr(PP);
   /// Groups
   //Grp_Consumption.Visible := True;
   //Grp_Epi.Visible := False;
   ///AutoCalc
    CalculateConsumption_CollectStats;
    LagTime_CollectStats;
    CalculateConsumption;
end;

/// Calculations
procedure TProductLevelFrm.Btn_CalcClick(Sender: TObject);
begin
  CalculateConsumption;
end;

/// Recalc min & max if the SS changes
procedure TProductLevelFrm.Edt_SSFinalChange(Sender: TObject);
begin
 If (Edt_SSFinal.Text > '')then
 begin
  F_Safe := StrToFloat(Edt_SSFinal.Text);
  P_Min  := ((Round((Avg_Con * Avg_Lag) + F_Safe)/O_Pck) * O_Pck);
  F_Min := P_Min;
  P_Max  := ((Round((F_Min + (PP * Avg_Con))/O_Pck)) * O_Pck);
  Edt_MinCalc.Text := FloatToStr(C_Min);
  Edt_MinProp.Text := FloatToStr(P_Min);
  Edt_MinFinal.Text := FloatToStr(F_Min);
  Edt_MaxCalc.Text := FloatToStr(C_Max);
  Edt_MaxProp.Text := FloatToStr(P_Max);
  Edt_MaxFinal.Text := FloatToStr(P_Max);
 end;
end;

/// Recalculate the max stock if the min changes
procedure TProductLevelFrm.Edt_MinFinalChange(Sender: TObject);
begin
 If (Edt_MinFinal.Text > '')then
 Begin
  F_Min := StrToFloat(Edt_MinFinal.Text);
  P_Max  := ((Round((F_Min + (PP * Avg_Con))/O_Pck)) * O_Pck);
  Edt_MaxCalc.Text := FloatToStr(C_Max);
  Edt_MaxProp.Text := FloatToStr(P_Max);
  Edt_MaxFinal.Text := FloatToStr(P_Max);
 end;
end;

procedure TProductLevelFrm.Radio_ConAvgClick(Sender: TObject);
begin
 If Radio_ConAvg.ItemIndex = 0 Then
  Begin
   /// Mode
   Con_Mode := 'S';
   /// Capture option control
   Vw_Con_LAvg.ReadOnly := True;
   Vw_Con_LAvg.Color := clInfoBk;
   Vw_Con_LSD.ReadOnly := True;
   Vw_Con_LSD.Color := clInfoBk;
   Vw_Stat_CL_n.ReadOnly := True;
   Vw_Stat_CL_n.Color := clInfoBk;
   Vw_Con_LCI.Color := clInfoBk;
   Edt_Con_SAvg.ReadOnly := False;
   Edt_Con_SAvg.Color := clWindow;
   Vw_Con_SSD.ReadOnly := False;
   Vw_Con_SSD.Color := clWindow;
   Vw_Stat_CS_n.ReadOnly := False;
   Vw_Stat_CS_n.Color := clWindow;
   Vw_Con_SCI.Color := clWindow;
  end;
 If Radio_ConAvg.ItemIndex = 1 Then
  Begin
   /// Mode
   Con_Mode := 'L';
   /// Capture option control
   Vw_Con_LAvg.ReadOnly := False;
   Vw_Con_LAvg.Color := clWindow;
   Vw_Con_LSD.ReadOnly := False;
   Vw_Con_LSD.Color := clWindow;
   Vw_Stat_CL_n.ReadOnly := False;
   Vw_Stat_CL_n.Color := clWindow;
   Vw_Con_LCI.Color := clWindow;
   Edt_Con_SAvg.ReadOnly := True;
   Edt_Con_SAvg.Color := clInfoBk;
   Vw_Con_SSD.ReadOnly := True;
   Vw_Con_SSD.Color := clInfoBk;
   Vw_Stat_CS_n.ReadOnly := True;
   Vw_Stat_CS_n.Color := clInfoBk;
   Vw_Con_SCI.Color := clInfoBk;
  end;
end;

/// Stats Mode
procedure TProductLevelFrm.C_Stats_RadioClick(Sender: TObject);
begin
 If C_Stats_Radio.ItemIndex = 0 Then // Calculate
  Begin
   /// Groups
//   Grp_Consumption.Visible := True;
//   Grp_Epi.Visible := False;
   /// Edit
   Edt_Con_SAvg.ReadOnly := True;
   Edt_Con_SAvg.Color :=  clInfoBk;
   Vw_Con_SSD.ReadOnly :=  True;
   Vw_Con_SSD.Color :=  clInfoBk;
   Vw_Con_LAvg.ReadOnly := True;
   Vw_Con_LAvg.Color :=  clInfoBk;
   Vw_Con_LSD.ReadOnly :=  True;
   Vw_Con_LSD.Color :=  clInfoBk;
   Vw_C_St.Enabled := True;
   Vw_C_St.Color :=  clWindow;
   Vw_C_End.Enabled := True;
   Vw_C_End.Color :=  clWindow;
   /// Buttons
   Btn_CollectCon.Visible := True;
   /// stat results
   Vw_Stat_CS_n.Readonly := True;
   Vw_Stat_CL_n.Readonly := True;
   Vw_Stat_CL_r.Visible := True;
   Stat_CL_r_Lbl.Visible := True;
   Vw_Stat_CS_n.Color :=  clInfoBk;
   Vw_Stat_CL_n.Color :=  clInfoBk;
  end;
 If C_Stats_Radio.ItemIndex = 1 Then // Capture
  Begin
   /// Groups
//   Grp_Consumption.Visible := True;
//   Grp_Epi.Visible := False;
   /// Edits
   Edt_Con_SAvg.ReadOnly := False;
   Edt_Con_SAvg.Color :=  clWindow;
   Vw_Con_SSD.ReadOnly :=  False;
   Vw_Con_SSD.Color :=  clWindow;
   Vw_Con_LAvg.ReadOnly := False;
   Vw_Con_LAvg.Color :=  clWindow;
   Vw_Con_LSD.ReadOnly :=  False;
   Vw_Con_LSD.Color :=  clWindow;
   Vw_C_St.Enabled := False;
   Vw_C_St.Color :=  clInfoBk;
   Vw_C_End.Enabled := False;
   Vw_C_End.Color :=  clInfoBk;
   /// Buttons
   Btn_CollectCon.Visible := False;
   /// stat results
   Vw_Stat_CS_n.Readonly := False;
   Vw_Stat_CL_n.Readonly := False;
   Vw_Stat_CL_r.Visible := False;
   Stat_CL_r_Lbl.Visible := False;
   Vw_Stat_CS_n.Color :=  clWindow;
   Vw_Stat_CL_n.Color :=  clWindow;
  end;
end;

procedure TProductLevelFrm.L_Stats_RadioClick(Sender: TObject);
begin
 If L_Stats_Radio.ItemIndex = 0 Then // Calculate
  Begin
   Vw_Lag_Avg.ReadOnly := True;
   Vw_Lag_Avg.Color :=  clInfoBk;
   Vw_Lag_SD.ReadOnly :=  True;
   Vw_Lag_SD.Color :=  clInfoBk;
   Vw_L_St.Enabled := True;
   Vw_L_St.Color :=  clWindow;
   Vw_L_End.Enabled := True;
   Vw_L_End.Color :=  clWindow;
   /// Buttons
   Btn_CollectLag.Visible := True;
   /// stat results
   Vw_Lag_n.Visible := True;
   Stat_Lag_n_Lbl.Visible := True;
  end;
 If L_Stats_Radio.ItemIndex = 1 Then // Capture
  Begin
   Vw_Lag_Avg.ReadOnly := False;
   Vw_Lag_Avg.Color :=  clWindow;
   Vw_Lag_SD.ReadOnly :=  False;
   Vw_Lag_SD.Color :=  clWindow;
   Vw_L_St.Enabled := False;
   Vw_L_St.Color :=  clInfoBk;
   Vw_L_End.Enabled := False;
   Vw_L_End.Color :=  clInfoBk;
   /// Buttons
   Btn_CollectLag.Visible := False;
   /// stat results
   Vw_Lag_n.Visible  := False;
   Stat_Lag_n_Lbl.Visible := False;
  end;
end;

/// Only number keys for numeric data
procedure TProductLevelFrm.Edt_Con_SAvgKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in ['0'..'9','.',#8])then
  Key := #0;
end;

/// Review period: Consumpiton
procedure TProductLevelFrm.Vw_C_StChange(Sender: TObject);
begin
   C_Start  := Vw_C_St.Date;
   C_End := Vw_C_End.Date;
   C_Review_days_Vw.Caption := FloatToStr(Round(C_End - C_Start));
   C_Review_Mnth_Vw.Caption := FloatToStr(((C_End - C_Start)/30));
   C_Review_Yr_Vw.Caption := FloatToStr(((C_End - C_Start)/365));
end;

/// Review period: Lag time
procedure TProductLevelFrm.Vw_L_StChange(Sender: TObject);
begin
   L_St := Vw_L_St.Date;
   L_End := Vw_L_End.Date;
   L_Review_days_Vw.Caption := FloatToStr(Round(L_End - L_St));
   L_Review_Mnth_Vw.Caption := FloatToStr(((L_End - L_St)/30));
   L_Review_Yr_Vw.Caption := FloatToStr(((L_End - L_St)/365));
end;

procedure TProductLevelFrm.Btn_CollectConClick(Sender: TObject);
begin
  CalculateConsumption_CollectStats;
end;

procedure TProductLevelFrm.Btn_ActualClick(Sender: TObject);
begin

  ProductDm.stpProductConsumption.First;
  with ProductDm do
    SetConsumptionFilter( 0, date, date); // sets type_str = "i"
  DBChrt_History.RefreshData;
  with DBChrt_History.Title.Text do
    begin
    Clear;
    Add('Daily Consumption Profile');
    end;
  Series2.Active := True;
  Series1.Active := False;

end;

procedure TProductLevelFrm.Btn_GrphAcc_FullClick(Sender: TObject);
begin
  /// Get full data set
  with ProductDm do
    SetConsumptionFilter( 0, date, date); // sets type_str = "i"
  // Draw the graph
  //  TProductDm(ProductDm).Qr_Consumption.First;
  DBChrt_History.RefreshData;

  with DBChrt_History.Title.Text do
    begin
    Clear;
    Add('Accumulative Consumption Profile');
    end;

  Series2.Active := False;
  Series1.Active := True;
end;

//// Collecting Data
// Consumption
procedure TProductLevelFrm.GetConsumption;
begin
  /// Limiting to issues & recp between the dates & grouping by the day
  /// Note we use the day's consumption as we are not interested in the avg per transaction but per day
  with ProductDm.stpProductConsumption do
    begin
    ProductDm.SetConsumptionFilter( 2, C_Start, C_End); // sets type_str = "I" & "R"
    /// Now we go through each record and prime the std stats variables
    First;
    /// Reg_start is a variable used to give the x axis of the consumption regressional graph
    // First day = 1 not 0
    // This placed here as we only need to prime once, the pointer is set at the top of the file
    Reg_Start := (FieldByName('Date_dat').AsDateTime  - 1);
    while not EOF do
      begin
      /// Using issues for consumption
      if FieldByName('Type_Str').AsString = 'I' then
        begin
        //// For the regressional graph the variable day is the X axis and Tot_Con the y Axis
        /// Days from the start
        Day := (FieldByName('Date_dat').AsDateTime-(Reg_Start+OS_Days));
        /// Accumulative consumption
        // We do not use that days total consumption but the consumption from reg start to this data point
        Tot_Con := Tot_Con + FieldByName('DayQuantity_int').AsFloat;
        /// The stats
        N := N + 1;
        /// Regression
        X  :=  X+ Day;
        X2 := X2+(Day*Day);
        Y  := Y+Tot_Con;
        Y2 := Y2+(Tot_Con*Tot_Con);
        XY := XY+(Tot_Con*Day);
        /// Total or simple
        NY  :=  NY + FieldByName('DayQuantity_int').AsFloat;
        NY2 :=  NY2+(FieldByName('DayQuantity_int').AsFloat * FieldByName('DayQuantity_int').AsFloat);
        /// These 2 variabes determine the time period in the simple avg consumption calc
        If FieldByName('Date_dat').AsDateTime <= Total_St then
          Total_St := FieldByName('Date_dat').AsDateTime;
        If FieldByName('Date_dat').AsDateTime >= Total_End then
          Total_End := FieldByName('Date_dat').AsDateTime;
        end;
      // OS Data collection
      if ((FieldByName('Type_Str').AsString = 'R') and (LastQOH=0)) then
        begin {OS period = Todays date - Date when you went OS}
        OS_days :=OS_days+(FieldByName('Date_dat').AsDateTime-LastIssueDate);
        Test.Caption := FloatToStr(OS_days);
        end;
      // Priming the OS trigger varaibles
      LastIssueDate := FieldByName('Date_dat').AsDateTime;
      LastQOH       := FieldByName('DayMinQOH_int').AsInteger;
      /// Cycle to the next ledger entry
      Next
      end;
    end;
end;



//// Lag Time
procedure TProductLevelFrm.GetLeadTime(pType:integer);
begin

  if pType = 1 then
    ProductDm.SetLeadtimeFilter(1, L_St, L_End)
    else
    ProductDm.SetLeadtimeFilter(1, C_Start, C_End);

  with ProductDM.stpProductLeadTime do
    begin
    First;
    while not EOF do
      begin
      // The stats
      N := N + 1;
      // Total or simple
      L  :=  L  + FieldByName('LeadTime_int').AsFloat;
      L2 :=  L2 + (FieldByName('LeadTime_int').AsFloat * FieldByName('LeadTime_int').AsFloat);
      Next;
      end;
    end;

end;




/// T Values
Procedure TProductLevelFrm.t_Value;
begin
 t := 0;
 If Df = 1 then t := 12.706;
 If Df = 2 then t := 4.303;
 If Df = 3 then t := 3.182;
 If Df = 4 then t := 2.776;
 If Df = 5 then t := 2.571;
 If Df = 6 then t := 2.447;
 If Df = 7 then t := 2.365;
 If Df = 8 then t := 2.306;
 If Df = 9 then t := 2.262;
 If Df  = 10 then t := 2.228;
 If Df  = 11 then t := 2.201;
 If Df  = 12 then t := 2.179;
 If Df  = 13 then t := 2.160;
 If Df  = 14 then t := 2.145;
 If Df  = 15 then t := 2.131;
 If Df  = 16 then t := 2.120;
 If Df  = 17 then t := 2.110;
 If Df  = 18 then t := 2.101;
 If Df  = 19 then t := 2.093;
 If Df  = 20 then t := 2.086;
 If Df  = 21 then t := 2.080;
 If Df  = 22 then t := 2.074;
 If Df  = 23 then t := 2.069;
 If Df  = 24 then t := 2.064;
 If Df  = 25 then t := 2.060;
 If Df  = 26 then t := 2.056;
 If Df  = 27 then t := 2.052;
 If Df  = 28 then t := 2.048;
 If Df  = 29 then t := 2.045;
 If Df  >= 30 then t := 1.960;
end;

/// Epidemiologically derived consumption
procedure TProductLevelFrm.Radio_EpiClick(Sender: TObject);
begin
 If Radio_Epi.ItemIndex = 0 then /// Chronic
   Epi_Mode := 'L';
 If Radio_Epi.ItemIndex = 1 then /// Course
   Epi_Mode := 'C';
 If Radio_Epi.ItemIndex = 2 then /// Single dose
   Epi_Mode := 'S';
end;

procedure TProductLevelFrm.Btn_EpiCalcClick(Sender: TObject);
begin
  CalculateConsumption_Epidemiology;
end;

procedure TProductLevelFrm.Btn_CollectLagClick(Sender: TObject);
begin
  LagTime_CollectStats;
end;

procedure TProductLevelFrm.StrngGrd_ConKeyPress(Sender: TObject;
  var Key: Char);
begin
end;

/// What to do with the data
procedure TProductLevelFrm.Btn_KeepClick(Sender: TObject);
begin
Save_StockLevels
end;

procedure TProductLevelFrm.Btn_RejectClick(Sender: TObject);
begin
end;

/// Safety stock mode
// Consumption
procedure TProductLevelFrm.Radio_SSConClick(Sender: TObject);
begin
 If Radio_SSCon.ItemIndex = 0 Then  /// Average
   CSS_Mode := 'A';
 If Radio_SSCon.ItemIndex = 1 Then  /// Confidence interval
   CSS_Mode := 'C';
end;

// Lead
procedure TProductLevelFrm.Radio_SSLeadClick(Sender: TObject);
begin
 If Radio_SSLead.ItemIndex = 0 Then  /// Average
   LSS_Mode := 'A';
 If Radio_SSLead.ItemIndex = 1 Then  /// Confidence interval
   LSS_Mode := 'C';
end;

procedure TProductLevelFrm.Btn_GrphAcc_PeriodClick(Sender: TObject);
begin
  // Reseting the varaibles
  C_Start  := Vw_C_St.Date;
  C_End := Vw_C_End.Date;
  /// Get full data set
  with ProductDm do
    SetConsumptionFilter( 0, C_Start, C_End); // sets type_str = "i"
  // Draw the graph
  //  TProductDm(ProductDm).Qr_Consumption.First;
  DBChrt_History.RefreshData;
  With DBChrt_History.Title.Text do
    begin
    Clear;
    Add('Accumulative Consumption Profile');
    end;
  Series2.Active := False;
  Series1.Active := True;
end;

procedure TProductLevelFrm.Button1Click(Sender: TObject);
begin
  ProductDm.stpProductConsumption.Close;
  ProductDm.stpProductConsumption.Open;
end;

procedure TProductLevelFrm.CalculateConsumption_Epidemiology;
begin
  Radio_ConAvg.ItemIndex := 0;
  /// COT based on Radio_Epi
  if (Epi_Mode = 'L') then COT := 365 else COT:= 0;
  if ((Epi_Mode = 'C') and (Edt_COT.Text > '')) then COT := StrToInt(Edt_COT.Text);
  if (Epi_Mode = 'S') then COT := 1;
  // Getting the variables
  DDD := StrToFloat(Edt_DDD.Text);
  Pop := StrToInt(Edt_Epi.Text);
  /// DDD unit consumption
  DDDU := (DDD*COT*Pop);
  /// Converting DDD unts into packs per day
  Strength := dsProductStore.DataSet.FieldByName('StrengthValue_Int').AsFloat;
  Size := dsProductStore.DataSet.FieldByName('PackSize_Str').AsFloat;
  if (Strength*Size*365) > 0 then EpiUnts := ( DDDU /(Strength*Size*365));
  Lbl_EstAvg.Caption := FloatToStr(EpiUnts);
  Edt_Con_SAvg.Text := FloatToStr(EpiUnts);
end;

procedure TProductLevelFrm.CalculateConsumption_CollectStats;
begin
  // Reseting the varaibles
  C_Start  := Vw_C_St.DateTime;
  C_End := Vw_C_End.DateTime;
  Total_St := Date;
  Total_End := (Date-3600);
  Tot_Con := 0;
  Day := 0;
  N := 0;
  Df := 0;
  X := 0;
  X2 := 0;
  Y := 0;
  Y2 := 0;
  XY := 0;
  NY := 0;
  NY2 := 0;
  L := 0;
  L2 := 0;
  LN :=0;
  OS_days := 0;
  R_Avg_Con := 0;
  R_SD_Con := 0;
  R_CI_Con := 0;
  T_Avg_Con := 0;
  T_SD_Con := 0;
  T_CI_Con := 0;
  r := 0;
  // Collating the stats.
  GetConsumption;  // A Procedure
  // Calc the Average Daily Consumption
  //and the linear regression
  if (N >= 3) then
    begin
    if not ((X2 - ((X*X)/n)) = 0) then
      begin
      R_Avg_Con :=  (XY - ((X*Y)/N))/ (X2 - ((X*X)/N));
      R_SD_Con  := Sqrt(((N-1)/(N-2))*(((Y2 - ((Y*Y)/N))/(N-1)) - ((R_Avg_Con*R_Avg_Con)*((X2 - ((X*X)/N))/(N-1)))));
      Df := n - 2;
      t_Value;
      R_CI_Con := R_Avg_Con + ((t*R_SD_Con)/((X2 - ((X*X)/N))/(N-1))*(Sqrt(n-1)));
      end;
    if ((X2 - ((X*X)/N)) * (Y2 - ((Y*Y)/N))) > 0 then
      r := (XY - ((X*Y)/N)) / (Sqrt((X2 - ((X*X)/N)) * (Y2 - ((Y*Y)/N))));
    end;
  TN := ((Total_End- Total_St) - OS_days);  /// N is = No days & not No samples
  if (TN > 0) Then
    begin
    T_Avg_Con := (Tot_Con / TN);
    T_SD_Con := Sqrt((NY2 - ((NY*NY)/TN))/(TN-1));
    Df := N - 1;
    t_Value;  /// A procedure
    T_CI_Con := T_Avg_Con + (t * (T_SD_Con/Sqrt(TN)));
    end;
  /// Communicating the results
  Edt_Con_SAvg.Text := FloatToStr(T_Avg_Con);
  Vw_Con_LAvg.Text := FloatToStr(R_Avg_Con);
  Vw_Con_SSD.Text := FloatToStr(T_SD_Con);
  Vw_Con_LSD.Text := FloatToStr(R_SD_Con);
  Vw_Con_SCI.Text := FloatToStr(T_CI_Con);
  Vw_Con_LCI.Text := FloatToStr(R_CI_Con);
  Vw_Stat_CS_n.Text := FloatToStr(N);
  Vw_Stat_CL_n.Text := FloatToStr(N);
  Vw_Stat_CL_r.Caption := FloatToStr(r);
end;

procedure TProductLevelFrm.LagTime_CollectStats;
begin
  // Reseting the varaibles
  L_St  := Vw_L_St.Date;
  L_End := Vw_L_End.Date;
  N := 0;
  Df := 0;
  L := 0;
  L2 := 0;
  LN :=0;
  Avg_Lag := 0;
  SD_Lag := 0;
  CI_Lag := 0;
  /// Collating the stats.
  GetLeadTime(1);  /// A Procedure
  /// Calc the stats
  /// These stats are based on the number of samples
  if (N <> 0) then
    begin
    Avg_Lag := (L / N);
    if ((N-1) > 0) then
      begin
      SD_Lag := Sqrt((L2 - ((L*L)/N))/(N-1));
      Df := N - 1;
      t_Value;
      CI_Lag := Avg_Lag + (t * (SD_Lag/Sqrt(N)));
      end;
    end;
  /// Communicating the results
  Vw_Lag_Avg.Text := FloatToStr(Avg_Lag);
  Vw_Lag_SD.Text  := FloatToStr(SD_Lag);
  Vw_Lag_CI.Text  := FloatToStr(CI_Lag);
  Vw_Lag_n.Text   := FloatToStr(N);
end;

procedure TProductLevelFrm.Save_StockLevels;
begin
 /// Priming the DB
 // Fmax needs to be primed and could have changed with on change
  F_Max := StrToFloat(Edt_MaxFinal.Text);
  with ProductDm.tblProductCatalog do
    if Active then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('SafetyStockSet_int').AsFloat := F_Safe;
      FieldByName('MinStockSet_int').AsFloat := F_Min;
      FieldByName('MaxStockSet_int').AsFloat := F_Max;
      FieldByName('SafetyStockCalc_int').AsFloat := C_Safe;
      FieldByName('MinStockCalc_int').AsFloat := C_Min;
      FieldByName('MaxStockCalc_int').AsFloat := C_Max;
      FieldByName('LastReview_dat').AsDateTime := Date;
      FieldByName('AvgDailyConsumption_int').AsFloat := T_Avg_Con;
      ProductDm.ProductSave;
      //  Vw_Min_Value.Text := FloatToStr(DS_Levels.DataSet.FieldByName('MinStockSet_int').AsFloat*Ds_Levels.DataSet.FieldbyName('Cost_mon').AsFloat);
      // DS_Levels.DataSet.Post;
      end;
end;

procedure TProductLevelFrm.CalculateConsumption;
begin
  ///// Priming the variables
  /// Consumption
  if Con_Mode = 'S' Then  // Simple
    begin
    if Edt_Con_SAvg.Text = Null then  // average
       begin
       Avg_Con := 0;
       Edt_Con_SAvg.Text := '0';
       end
    else
       Avg_Con:=StrToFloat(Edt_Con_SAvg.Text);
     if Vw_Con_SSD.Text = Null then  // Standard deviation
       begin
       SD_Con := 0;
       Vw_Con_SSD.Text := '0';
       end
     else
       begin
       SD_Con:=StrToFloat(Vw_Con_SSD.Text);
       CI_Con:= T_CI_Con;
       end;
    end;
  if Con_Mode = 'L' Then  // Linear regression
    begin
    if Vw_Con_LAvg.Text = '' then // Average
      begin
      Avg_Con := 0;
      Vw_Con_LAvg.Text := '0';
      end else
      Avg_Con:=StrToFloat(Vw_Con_LAvg.Text);
    if Vw_Con_LSD.Text = '' then  // Standard deviation
      begin
      SD_Con := 0;
      Vw_Con_LSD.Text := '0';
      end
    else
      begin
      SD_Con:=StrToFloat(Vw_Con_LSD.Text);
      CI_Con:=R_CI_Con;
      end;
    end;
  /// Lag time
  if Vw_Lag_Avg.Text = '' then
    begin
    Avg_Lag := 0;
    Vw_Lag_Avg.Text := '0';
    end
  else
    Avg_Lag := StrToFloat(Vw_Lag_Avg.Text);
  /// Procurement data
  if Edt_OrdPck.Text = Null then
    begin
    O_Pck := 0;
    Edt_OrdPck.Text := '0';
    end
  else
    O_Pck := StrToInt(Edt_OrdPck.Text);
  if Edt_PP.Text = Null then
    begin
    PP := 0;
    Edt_PP.Text := '0';
    end else
    PP := StrToInt(Edt_PP.Text);
  //// The calculations
  // The prefix C = calculated, P = proposed & F = final
  // The final values can be changed, if the user alters F_min
  // the on change then recalcs min and max and so on.
  If ((CSS_Mode = 'A') and (LSS_Mode = 'A')) then C_Safe := Avg_Con * Avg_Lag;
  If ((CSS_Mode = 'A') and (LSS_Mode = 'C')) then C_Safe := Avg_Con * CI_Lag;
  If ((CSS_Mode = 'C') and (LSS_Mode = 'A')) then C_Safe := CI_Con * Avg_Lag;
  If ((CSS_Mode = 'C') and (LSS_Mode = 'C')) then C_Safe := CI_Con * CI_Lag;
  P_Safe := ((Round((1.5*C_Safe)/O_Pck))* O_Pck);
  F_Safe := P_Safe;
  C_Min  := (Avg_Con * Avg_Lag) + F_Safe;
  P_Min  := ((Round(C_Min/O_Pck)) * O_Pck);
  F_Min := P_Min;
  C_Max  := F_Min + (PP * Avg_Con);
  P_Max  := ((Round(C_Max/O_Pck)) * O_Pck);
  F_Max := P_max;
  /// Communicating the results
  // Varaibles are used so as to make the 3 linked
  // parameters dynamic.
  Edt_SSCalc.Text := FloatToStr(C_Safe);
  Edt_SSProp.Text := FloatToStr(P_Safe);
  Edt_SSFinal.Text := FloatToStr(F_Safe);
  Edt_MinCalc.Text := FloatToStr(C_Min);
  Edt_MinProp.Text := FloatToStr(P_Min);
  Edt_MinFinal.Text := FloatToStr(F_Min);
  Edt_MaxCalc.Text := FloatToStr(C_Max);
  Edt_MaxProp.Text := FloatToStr(P_Max);
  Edt_MaxFinal.Text := FloatToStr(P_Max);
  Edt_SSMon.Text :='R ' + FloatToStr(F_Safe*dsProductStore.DataSet.FieldByName('Cost_mon').AsFloat);
  Edt_MinMon.Text:='R ' + FloatToStr(F_Min *dsProductStore.DataSet.FieldByName('Cost_mon').AsFloat);
  Edt_MaxMon.Text:='R ' + FloatToStr(P_Max *dsProductStore.DataSet.FieldByName('Cost_mon').AsFloat);
end;

end.


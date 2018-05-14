unit ProductAutolevelUDM;
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
//SM 05/07/2007
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  Db, DBTables, ADODB, ExtCtrls, Forms;

type
  TProductAutoLevelDM = class(TDataModule)
    ADOProductLevelConnection: TADOConnection;
    tblProductCatalog: TADOTable;
    stpProductLeadTime: TADOStoredProc;
    stpProductConsumption: TADOStoredProc;
    stpProductConsumptionProductCode_ID: TIntegerField;
    stpProductConsumptionProductCode_str: TWideStringField;
    stpProductConsumptionDate_dat: TDateTimeField;
    stpProductConsumptionType_str: TWideStringField;
    stpProductConsumptionDayQuantity_int: TFloatField;
    stpProductConsumptionAccumDay_int: TFloatField;
    stpProductConsumptionAccumDayQuantity_int: TFloatField;
    stpProductConsumptionDayMinQOH_int: TIntegerField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    stpProductFYTDExpenditures: TADOStoredProc;
    stpProductCurrentOnHold: TADOStoredProc;
    stpProductCurrentOnOrder: TADOStoredProc;
    qrySystemLeadtime: TADOQuery;
    tblProductCatalogStatus: TADOTable;
    tblProductCatalogGenericName_str: TWideStringField;
    tblProductCatalogStrength_str: TWideStringField;
    tblProductCatalogForm_str: TWideStringField;
    tblProductCatalogRoute_str: TWideStringField;
    tblProductCatalogPackSize_str: TWideStringField;
    tblProductCatalogPackSizeUnit_str: TWideStringField;
    tblProductCatalogLeadTime_str: TWideStringField;
    tblProductCatalogSupplement_str: TWideStringField;
    tblProductCatalogSupplement_bol: TBooleanField;
    tblProductCatalogShippingPack_int: TIntegerField;
    tblProductCatalogLeadTime_int: TIntegerField;
    tblProductCatalogAvgDailyConsumption_int: TFloatField;
    tblProductCatalogProcurementPeriod_int: TIntegerField;
    tblProductCatalogLastReview_dat: TDateTimeField;
    tblProductCatalogDescription_str: TStringField;
    tblProductCatalogMaxStockSet_int: TIntegerField;
    tblProductCatalogMinStockSet_int: TIntegerField;
    tblProductCatalogMaxStockCalc_int: TIntegerField;
    tblProductCatalogMinStockCalc_int: TIntegerField;
    tblProductCatalogSafetyStockSet_int: TIntegerField;
    tblProductCatalogSafetyStockCalc_Int: TIntegerField;
    tblProductCatalogReviewLevel_bol: TBooleanField;
    tblProductCatalogProcurementPeriod_str: TWideStringField;
    tblProductCatalogReOrderStatus_str: TWideStringField;
    tblProductCatalogOrderType_str: TWideStringField;
    tblProductCatalogInstitutionEDL_bol: TBooleanField;
    tblProductCatalogDDDValue_int: TSmallintField;
    tblProductCatalogDDDUnit_str: TWideStringField;
    tblProductCatalogItemBugdet_mon: TBCDField;
    tblProductCatalogMaxStockAvailableInBudget_int: TIntegerField;
    tblProductCatalogCost_mon: TBCDField;
    tblProductCatalogQtyOnOrder_int: TIntegerField;
    tblProductCatalogQtyOnHold_int: TIntegerField;
    tblProductCatalogProductCode_ID: TAutoIncField;
    tblProductCatalogAvg_Lag_dbl: TFloatField;
    tblProductCatalogICN_str: TWideStringField;
    tblProductCatalogECN_str: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure stpProductConsumptionCalcFields(DataSet: TDataSet);
    procedure tblProductCatalogBeforePost(DataSet: TDataSet);
    procedure tblProductCatalogStatusBeforePost(DataSet: TDataSet);
  private
    Avg_Con, SD_Con, CI_Con: Single ;
    Con, Lead: Single;
    C_Safe, P_Safe, F_Safe: Single ;
    C_Min, P_Min, F_Min: Single ;
    C_Max, P_Max, F_Max: Single ;
    O_Pck: Integer;
    PP, LT: Integer;
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
    ReviewPeriod_LT : integer;
    cReg_Start :TDate;
    cTot_Con   :Single;
    cOS_Days   :Single;
    cDay       :Single;
    Pr_Avg_Lag : Single;   //SM 09/07/2007

    function ConnectDataSource: Boolean;
    procedure GetConsumptionData(pCurrentProductID: double;
      pRequest: integer; pDateSt, pDateEnd: TDateTime);
    procedure GetLeadTimeData(pCurrentProductID: double; pDateSt,
      pDateEnd: TDateTime);
    procedure CalculateConsumption;
    procedure CalculateConsumption_CollectStats;
    procedure GetConsumption;
    procedure GetLeadTime;
    function GetTValue(const vDF: integer): double;
    procedure LagTime_CollectStats;
    procedure ProcessProduct;
    procedure Save_StockLevels;
    procedure OpenOnOrder(pID:double);
    procedure OpenOnHold(pID:double);
    procedure OpenFYTDExpenditures(pID:double);
    function GetSystemDefaultLeadTime: Integer;
    function RoundCorrect(R: Real): LongInt;
    { Private declarations }
  public
    { Public declarations }
    procedure AutoLevelProducts;
    procedure AutoLevelProductsStatus;


  end;

var
  ProductAutoLevelDM: TProductAutoLevelDM;

implementation

uses

  {$IFDEF RXSTOREBUILD}
  GridColumnSelectorUFrm,
  ProgressIndicatorUFrm,
  {$ELSE}
  DialogGridColumnSelectorUFrm,
  DialogProgressIndicatorUFrm,
  {$ENDIF}

  MainUDM;
{$R *.dfm}

function TProductAutoLevelDM.RoundCorrect(R: Real): LongInt;
begin
  Result:= Trunc(R);       // extract the integer part 
  if Frac(R) >= 0.5 then   // if fractional part >= 0.5 then...
    Result:= Result + 1;   // ...add 1
end;



function TProductAutoLevelDM.ConnectDataSource: Boolean; (*::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:ConnectDataSource-----------------*)
                                                                                (*===========================================*)
                                                                    (*5.7.2002*)(* Orig::Deane Putzier                       *)
                                                                    (*7.1.2003*)(* Edit::Deane Putzier                       *)
                                                                                // (A)Adjusted code to accept SQL server string
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                  : integer;
  vbAllDataSetsOpened   : boolean;
  vdbConnections        : array[0..0] of TADOConnection;                        // Easier to add connections this way.
  vsDatabaseConnection  : string;
begin (*.............................................................*)(*begin*)(*...........................................*)
  vbAllDataSetsOpened   := True;                                                // If datasets could not be opened, set this to false
  vdbConnections[0]     := ADOProductLevelConnection;
  if Assigned(MainDM) then                                                      // Ask for complete connection string,
    with MainDM do                                                              // as it may be Access or SQL Server.
      vsDatabaseConnection     := ADOMainDBConnection.ConnectionString;
  for i:= low(vdbConnections) to high(vdbConnections) do
    with vdbConnections[i] do
      try
      Connected         := False;                                               // Make sure it's not connected
      ConnectionString  := vsDatabaseConnection;
      for j := 0 to DataSetCount - 1 do
        if Datasets[j].Tag < 1 then
          if not DataSets[j].Active then
            DataSets[j].Active := True;                                         // Activate the datastores.
                                                                                // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          begin
          vbAllDataSetsOpened  := False;
          Connected           := False;                                         // Make sure it's not connected
          end;
      end;
  Result := vbAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TProductAutoLevelDM.DataModuleCreate(Sender: TObject);
begin
  ConnectDataSource;
end;

procedure TProductAutoLevelDM.AutoLevelProducts;
var
  vCount :integer;
  vCurrentProductID :double;
  vOverallProgress            : TProgressIndicatorFrm;
  StrVal :string;
  StartTime, EndTime:TDateTime;
begin
  vCount := 0;
  vOverallProgress := TProgressIndicatorFrm.Create(Self);
  vOverallProgress.MainCaption := 'Auto Leveling Product Stock...';
  with tblProductCatalog, vOverallProgress do
    try
    StartTime := Now;
    tblProductCatalog.First;
    MaxProgress := tblProductCatalog.RecordCount;
    while not EOF do
      begin
      CurrentProgress  := vCount;
      StrVal := tblProductCatalog.FieldByName('ICN_str').AsString + ', ' +
                tblProductCatalog.FieldByName('Description_str').AsString;
      vCurrentProductID := tblProductCatalog.FieldByName('ProductCode_ID').AsFloat;
      UpdateCaption    := StrVal;
      try
      OpenOnHold(vCurrentProductID);
      OpenOnOrder(vCurrentProductID);
      OpenFYTDExpenditures(vCurrentProductID);
      ProcessProduct;  //SM 01/08/2007 process product again if...     START with 3 X PP  then 6 X PP then 12 X PP not sure of criteria
//      ProcessDataForAutoleveling;
      except
        on E: Exception do MessageDlg('Record No : ' + #13 +  E.Message,mtWarning,[mbOK],0);
      end;
      inc(vCount);
      tblProductCatalog.Next;
//      Application.ProcessMessages;
      end;
    finally
    MaxProgress := 0;
    Free;
    MessageDlg( 'Records processed : ' + IntToStr(vCount) + #13 +
                'Started @ ' + DateTimeToStr(StartTime) + #13 +
                'Ended @ ' + DateTimeToStr(Now),mtWarning,[mbOK],0);
    end;
end;



procedure TProductAutoLevelDM.stpProductConsumptionCalcFields(
  DataSet: TDataSet);
begin
  with DataSet do
    begin
    if BOF then                                                                 // First day = 1 not 0
      begin                                                                     // Set defaults for first run
      cReg_Start := (FieldByName('Date_dat').AsDateTime  - 1);                   // Following (4) are private class level vars
      cTot_Con   := 0;
      cOS_Days   := 0;
      cDay       := 0;
      end;
    cDay := FieldByName('Date_dat').AsDateTime - ( cReg_Start + cOS_Days );        // Days from the start
    cTot_Con := cTot_Con + FieldByName('DayQuantity_Int').AsInteger;              // Accumulative consumption
    FieldByName('AccumDay_Int').AsFloat := cDay;                                 // Set calc fields
    FieldByName('AccumDayQuantity_int').AsFloat := cTot_Con;
    end;
end;

procedure TProductAutoLevelDM.GetConsumptionData(pCurrentProductID: double;
  pRequest:integer; pDateSt,pDateEnd: TDateTime);
                                                                    (*8.1.2003*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vsTypeB           :String;
begin (*.............................................................*)(*begin*)(*...........................................*)
  with stpProductConsumption do
    begin
    vsTypeB := 'I';                                                             // Default value
    case pRequest of                                                            // Get request type values
      1:  vsTypeB := 'R';
      end;
    Close;                                                                      // Now prepare and return query
    Prepared := False;
    Parameters.ParamByName('@ProductID').Value := pCurrentProductID;
    Parameters.ParamByName('@DateA').Value     := pDateSt;
    Parameters.ParamByName('@DateB').Value     := pDateEnd;
    Parameters.ParamByName('@TypeA').Value     := 'I';
    Parameters.ParamByName('@TypeB').Value     := vsTypeB;
    Prepared := True;
    Open;
    end;
end; (*................................................................*)(*end*)(*...........................................*)

(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TProductAutoLevelDM.GetLeadTimeData(pCurrentProductID: double;
  pDateSt, pDateEnd: TDateTime);
begin (*.............................................................*)(*begin*)(*...........................................*)
  with stpProductLeadTime do
    begin
    Close;
    Parameters.ParamByName('@ProductID').Value := pCurrentProductID;
    Parameters.ParamByName('@DateA').Value     := pDateSt;
    Parameters.ParamByName('@DateB').Value     := pDateEnd;
    Prepared := True;
    Open;
    end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TProductAutoLevelDM.ProcessProduct;
const
  MULTIPLES_OF_REVIEWPERIOD = 12;

var
  PP_str, LT_str :string;
begin
  with tblProductCatalog do
    begin
    Pr_Avg_Lag := 0; //SM
    // Procurement period
    PP_str := FieldByName('ProcurementPeriod_str').AsString;
    Pr_Avg_Lag := FieldByName('Avg_Lag_dbl').AsFloat;
    if (PP_str <> 'A') or (PP_str <> 'B') or (PP_str <> 'C') or (PP_str <> 'D') then PP_str := 'A';
    PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriod'+ PP_str + '_int').AsInteger;
    // Leadtime period
    LT_str := FieldByName('LeadTime_str').AsString;
    if (LT_str <> 'A') or (LT_str <> 'B') or (LT_str <> 'C') or (LT_str <> 'D') then LT_str := 'A';
    LT := MainDm.tblMainSystem.FieldByName('LeadTime' + LT_str + '_int').AsInteger;
    //LT:=14;// SM should not default to 14
    // Review period
    ReviewPeriod := PP * MULTIPLES_OF_REVIEWPERIOD;
    ReviewPeriod_LT := PP * 10;// make LT Review period X 10
    if ReviewPeriod < 1 then ReviewPeriod := 7; // Should not be, but just in case.
    // DDD
    DDD := FieldByName('DDDValue_Int').AsFloat;

    end;
    // Set review dates
    C_Start := ((Date)-ReviewPeriod);
    C_End := (Date);
    L_St := ((Date)-ReviewPeriod_LT);   //pp*10
    L_End := (Date);
    // Variables
    Con_Mode  := 'S';
    CSS_Mode  := 'A';
    LSS_Mode  := 'A';
    O_Pck     := 1;
    DDDU      := 0;
    EpiUnts   := 0;
    COT       := 0;
    Pop       := 0;
    Strength  := 0;
    Size      := 0;

    CalculateConsumption_CollectStats;
    LagTime_CollectStats;
    CalculateConsumption;
    Save_StockLevels;
end;

// Collecting Data
// Consumption
procedure TProductAutoLevelDM.GetConsumption;
var
  vCurrentProductID :double;
  TempCount :double;
begin
  /// Limiting to issues & recp between the dates & grouping by the day
  /// Note we use the day's consumption as we are not interested in the avg per transaction but per day
  TempCount :=0;
  with stpProductConsumption do
    begin
    vCurrentProductID := tblProductCatalog.FieldByName('ProductCode_ID').AsFloat;
    GetConsumptionData(vCurrentProductID, 1, C_Start, C_End);
    Tot_Con := 0;

    /// Now we go through each record and prime the std stats variables
    First;
    /// Reg_start is a variable used to give the x axis of the consumption regressional graph
    // First day = 1 not 0
    // This placed here as we only need to prime once, the pointer is set at the top of the file
    Reg_Start := FieldByName('Date_dat').AsDateTime  - 1;
    while not EOF do
      begin
      /// Using issues for consumption
      // Priming the OS trigger varaibles
      LastIssueDate := FieldByName('Date_dat').AsDateTime;
      LastQOH       := FieldByName('DayMinQOH_int').AsInteger;
      /// Cycle to the next ledger entry
      if FieldByName('Type_Str').AsString = 'I' then
        begin
        //// For the regressional graph the variable day is the X axis and Tot_Con the y Axis
        /// Days from the start
        Day := FieldByName('Date_dat').AsDateTime-(Reg_Start+OS_Days);
        /// Accumulative consumption
        // We do not use that days total consumption but the consumption from reg start to this data point
        TempCount := TempCount + FieldByName('DayQuantity_int').AsFloat;
        /// The stats
        N := N + 1;
        /// Regression
        X  :=  X+ Day;
        X2 := X2+(Day*Day);
        Y  := Y+TempCount;
        Y2 := Y2+(TempCount*TempCount);
        XY := XY+(TempCount*Day);
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
        end;
      Next
      end;
    end;
  Tot_Con := TempCount;
end;

/// T Values
function TProductAutoLevelDM.GetTValue(const vDF :integer):double;
const
  AA = -10000000;
begin
 Result := 0;
  case vDF of
   AA..0: Result := 0;
    1   : Result := 12.706;
    2   : Result := 4.303;
    3   : Result := 3.182;
    4   : Result := 2.776;
    5   : Result := 2.571;
    6   : Result := 2.447;
    7   : Result := 2.365;
    8   : Result := 2.306;
    9   : Result := 2.262;
    10  : Result := 2.228;
    11  : Result := 2.201;
    12  : Result := 2.179;
    13  : Result := 2.160;
    14  : Result := 2.145;
    15  : Result := 2.131;
    16  : Result := 2.120;
    17  : Result := 2.110;
    18  : Result := 2.101;
    19  : Result := 2.093;
    20  : Result := 2.086;
    21  : Result := 2.080;
    22  : Result := 2.074;
    23  : Result := 2.069;
    24  : Result := 2.064;
    25  : Result := 2.060;
    26  : Result := 2.056;
    27  : Result := 2.052;
    28  : Result := 2.048;
    29  : Result := 2.045;
    else
      Result := 1.960;
    end;
end;

procedure TProductAutoLevelDM.CalculateConsumption_CollectStats;
begin
// Reseting the varaibles
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
  CSS_Mode := '';//SM
  // Collating the stats.
  GetConsumption;  // A Procedure
  // Calc the Average Daily Consumption     //T_
  //and the linear regression //SM R_Avg R_Con
  if (N >= 3) then
    begin
    if not ((X2 - ((X*X)/n)) = 0) then
      begin
      R_Avg_Con :=  (XY - ((X*Y)/N))/ (X2 - ((X*X)/N));
      R_SD_Con  := Sqrt(((N-1)/(N-2))*(((Y2 - ((Y*Y)/N))/(N-1)) - ((R_Avg_Con*R_Avg_Con)*((X2 - ((X*X)/N))/(N-1)))));
      Df := n - 2;
      R_CI_Con := R_Avg_Con + ((GetTValue(Df)*R_SD_Con)/((X2 - ((X*X)/N))/(N-1))*(Sqrt(n-1)));
      end;
    if ((X2 - ((X*X)/N)) * (Y2 - ((Y*Y)/N))) > 0 then
      r := (XY - ((X*Y)/N)) / (Sqrt((X2 - ((X*X)/N)) * (Y2 - ((Y*Y)/N))));
    end;
    TN := ((Total_End - Total_St) - OS_days);  /// N is = No days & not No samples
    if (TN > 1) Then
      begin
      T_Avg_Con := (Tot_Con / TN);
      T_SD_Con := Sqrt((NY2 - ((NY*NY)/TN))/(TN-1));
      Df := N - 1;
      T_CI_Con := T_Avg_Con + (GetTValue(Df) * (T_SD_Con/Sqrt(TN)));
      end;

  // ShowMessage('r: '+FloatToStr(r)+' N:'+IntToStr(N)+' RAvg:'+FloatToStr(R_Avg_Con)+' PrAvg:'+FloatToStr(Pr_Avg_Lag)+' TAvgCn:'+FloatToStr(T_Avg_Con));

   //Start SM 09/07/2007
   if ((N>10) AND (r>0.9) AND (R_Avg_Con <=3*Pr_Avg_Lag)) //and the avg from ppcksz
   then
   begin
   CSS_Mode := 'C';
   Avg_Con := 0;
   CI_Con := R_CI_Con;
   end

   else if ((N>5) AND (r >0.9) AND (R_Avg_Con <=3*Pr_Avg_Lag){}) //and avg > 3X avg from ppkcksz
   then
   begin
   CSS_Mode := 'C';
   Avg_Con := R_Avg_Con;
   CI_Con := 0;
   exit;
   end

   else if ((N>10) AND (r<0.9) AND (T_Avg_Con <=3*Pr_Avg_Lag){}) then
   begin
   Avg_Con := 0;
   CI_Con := T_CI_Con;
   CSS_Mode := 'C';
   exit;
   end

   else if ((N<5) AND (r < 0.9) AND (T_Avg_Con <=3*Pr_Avg_Lag){}) then
   begin
   Avg_Con := T_Avg_Con;
   CI_Con := 0;
   CSS_Mode := 'A';
   exit;
   end

   else   //SM  not sure about this
   begin
   Avg_Con := T_Avg_Con;
   CSS_Mode := 'A';
   CI_Con := T_CI_Con;
   end;

   //need to update or not update the product
   //End SM 09/07/2007
end;

//// Lead Time
procedure TProductAutoLevelDM.GetLeadTime;
var
  LT_int :double;
  vCurrentProductID :double;
begin
 LT_int := 0; //SM
 N := 0; //SM
  vCurrentProductID := tblProductCatalog.FieldByName('ProductCode_ID').AsFloat;
  GetLeadTimeData(vCurrentProductID, C_Start, C_End);
 // GetLeadTimeData(vCurrentProductID, L_St, L_End);
  with stpProductLeadTime do
    begin
    First;
    while not EOF do
      begin
      // The stats
      LT_int := FieldByName('LeadTime_int').AsFloat;
      if LT_int < 1 then LT_int := GetSystemDefaultLeadTime;
      N := N + 1;
      // Total or simple
      L  :=  L  + LT_int;
      L2 :=  L2 + (LT_int * LT_int);
      Next;
      end;
    end;
end;

procedure TProductAutoLevelDM.LagTime_CollectStats;
begin
  // Reseting the variables
  N := 0;
  Df := 0;
  L := 0;
  L2 := 0;
  LN :=0;
  Avg_Lag := 0;
  SD_Lag := 0;
  CI_Lag := 0;
  LSS_Mode := '';
  
  /// Collating the stats.
  GetLeadTime;  /// A Procedure
  /// Calc the stats
  /// These stats are based on the number of samples
  if (N <> 0) then
    begin
    Avg_Lag := (L / N);
    if ((N-1) > 0) then
      begin
      SD_Lag := Sqrt((L2 - ((L*L)/N))/(N-1));
      Df := N - 1;
      CI_Lag := Avg_Lag + (GetTValue(Df) * (SD_Lag/Sqrt(N)));
      end;
    end;
  //ShowMessage('N: '+IntToStr(N));
  {if AVG_lag<LT then
    AVG_lag:=LT;
    if AVG_lag>(2*LT) then
    AVG_lag:=(2*LT);}
   
 if ((CI_Lag <= Avg_Lag*3) AND (CI_Lag <= 4*LT) AND (CI_Lag <> 0) AND (N>10)) then
  LSS_Mode := 'C'
 else if ((CI_Lag >=Avg_Lag) AND (Avg_Lag<=4*LT) AND (Avg_Lag <> 0) AND (N > 5)) then
  LSS_Mode := 'A'
 else if ((CSS_Mode ='') AND (LT<>0)) then
  begin
  LSS_Mode := 'A';
  Avg_Lag := LT;
  end
 else                //Not sure if it should then default to A?
  begin
  LSS_Mode := 'A';
  end;
end;

procedure TProductAutoLevelDM.CalculateConsumption;
begin
  //// The calculations
  // The prefix C = calculated, P = proposed & F = final
  // The final values can be changed, if the user alters F_min
  // the on change then recalcs min and max and so on.
  O_pck  := tblProductCatalog.FieldByName('ShippingPack_int').AsInteger; //SM 09
  If ((CSS_Mode = 'A') and (LSS_Mode = 'A')) then C_Safe := Avg_Con * Avg_Lag;
  If ((CSS_Mode = 'A') and (LSS_Mode = 'C')) then C_Safe := Avg_Con * CI_Lag;
  If ((CSS_Mode = 'C') and (LSS_Mode = 'A')) then C_Safe := CI_Con * Avg_Lag;
  If ((CSS_Mode = 'C') and (LSS_Mode = 'C')) then C_Safe := CI_Con * CI_Lag;
  if O_pck < 1 then
   O_Pck := 1;
  P_Safe := ((Round((1.5*C_Safe)/O_Pck))* O_Pck);               //SM 09
 // P_Safe := ((RoundCorrect((1.5*C_Safe)/O_Pck))* O_Pck);
 // ShowMessage('Tavg: '+FloatToStr(Avg_Con)+' CiLg: '+FloatToStr(CI_Lag)+' TCiCon: '+FloatToStr(CI_Con)+' AvgLg: '+FloatToStr(Avg_Lag));
  F_Safe := P_Safe;
  //F_Safe:=5;
 // ShowMessage(FloatToStr(CI_Con * Avg_Lag));
  //  C_Min  := (T_Avg_Con * Avg_Lag) + F_Safe;
    C_Min  := (Avg_Con * Avg_Lag) + F_Safe;
  P_Min  := ((Round(C_Min/O_Pck)) * O_Pck);                    //SM 09
 // P_Min  := ((RoundCorrect(C_Min/O_Pck)) * O_Pck);
  F_Min := P_Min;
  //F_Min:=10;
 // C_Max  := F_Min + (PP * T_Avg_Con);
  C_Max  := F_Min + (PP * Avg_Con);
 P_Max  := ((Round(C_Max/O_Pck)) * O_Pck);                    //SM 09
 //  P_Max  := ((RoundCorrect(C_Max/O_Pck)) * O_Pck);
  F_Max := P_max;
  //F_Max:=15;
end;

procedure TProductAutoLevelDM.Save_StockLevels;
begin
 // Priming the DB
 // Fmax needs to be primed and could have changed with on change
  with tblProductCatalog do
    if Active then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('SafetyStockSet_int').AsFloat   := F_Safe;
      FieldByName('MinStockSet_int').AsFloat      := F_Min;
      FieldByName('MaxStockSet_int').AsFloat      := F_Max;
      FieldByName('SafetyStockCalc_int').AsFloat  := C_Safe;
      FieldByName('MinStockCalc_int').AsFloat     := C_Min;
      FieldByName('MaxStockCalc_int').AsFloat     := C_Max;
      FieldByName('LastReview_dat').AsDateTime    := Date;
      FieldByName('AvgDailyConsumption_int').AsFloat := T_Avg_Con;
      Post;
      //  Vw_Min_Value.Text := FloatToStr(DS_Levels.DataSet.FieldByName('MinStockSet_int').AsFloat*Ds_Levels.DataSet.FieldbyName('Cost_mon').AsFloat);
      // DS_Levels.DataSet.Post;
      end;
end;

procedure TProductAutoLevelDM.OpenOnHold(pID: double);
begin
  with stpProductCurrentOnHold do
    begin
    Close;
    Parameters.ParamByName('@ProductID').Value := pID;          // All stored procs have same param name
    Open;
    end;
end;

procedure TProductAutoLevelDM.OpenOnOrder(pID: double);
begin
  with stpProductCurrentOnOrder do
    begin
    Close;
    Parameters.ParamByName('@ProductID').Value := pID;          // All stored procs have same param name
    Open;
    end;
end;

procedure TProductAutoLevelDM.OpenFYTDExpenditures(pID: double);
begin
  with stpProductFYTDExpenditures do
    begin
    Close;
    Parameters.ParamByName('@ProductID').Value := pID;          // All stored procs have same param name
    Open;
    end;
end;


function TProductAutoLevelDM.GetSystemDefaultLeadTime: Integer;
var
  DefLeadTime :integer;
begin
  // TODO -cMM: TProductAutoLevelDM.GetSystemDefaultLeadTime default body inserted
  Result := 14;
  with qrySystemLeadtime do
    begin
    Active := True;
    DefLeadTime := FieldByName('LeadTimeA_int').AsInteger;
    if DefLeadTime > 0 then Result := DefLeadTime;
    end;
end;

procedure TProductAutoLevelDM.AutoLevelProductsStatus;
var
  vCount :integer;
  vCurrentProductID :double;
  vOverallProgress            : TProgressIndicatorFrm;
  StrVal, StrValCode :string;
  StartTime, EndTime:TDateTime;
begin
  vCount := 0;
  vOverallProgress := TProgressIndicatorFrm.Create(Self);
  vOverallProgress.MainCaption := 'Auto Leveling Product Stock Status...';
  with tblProductCatalogStatus, vOverallProgress do
    try
    StartTime := Now;
    tblProductCatalogStatus.First;
    MaxProgress := tblProductCatalogStatus.RecordCount;
    while not EOF do
      begin
      CurrentProgress  := vCount;
      StrValCode := tblProductCatalog.FieldByName('ICN_str').AsString;
      StrVal := tblProductCatalogStatus.FieldByName('ICN_str').AsString + ', ' +
                tblProductCatalogStatus.FieldByName('Description_str').AsString;
      vCurrentProductID := tblProductCatalogStatus.FieldByName('ProductCode_ID').AsFloat;
      UpdateCaption    := StrVal;
      try
      OpenOnHold(vCurrentProductID);
      OpenOnOrder(vCurrentProductID);
//      OpenFYTDExpenditures(vCurrentProductID);
      if not (tblProductCatalogStatus.State in [dsEdit, dsInsert]) then tblProductCatalogStatus.Edit;
      tblProductCatalogStatus.FieldByName('LastUpdate_dat').AsDateTime := Now;
      tblProductCatalogStatus.Post;
      except
        on E: Exception do MessageDlg('Record No : ' + #13 +  E.Message,mtWarning,[mbOK],0);
      end;
      inc(vCount);
      tblProductCatalogStatus.Next;
//      Application.ProcessMessages;
      end;
    finally
    MaxProgress := 0;
    Free;
    MessageDlg( 'Records processed : ' + IntToStr(vCount) + #13 +
                'Started @ ' + DateTimeToStr(StartTime) + #13 +
                'Ended @ ' + DateTimeToStr(Now),mtWarning,[mbOK],0);
    end;
end;

procedure TProductAutoLevelDM.tblProductCatalogBeforePost(
  DataSet: TDataSet);
var
  vGenericName_str, vStrength_str, vForm_str, vPackSize_str, vPackSizeUnit_str,
  vRoute_str, vSupplement_str, PP_str, LT_str :string;
  vSupplement_bol :boolean;
  vRemainingBudget, vCost :Currency;
  vItemsleft, vOnHold, vOnOrder  :integer;
begin
  with DataSet do
    begin
    // Proccurement Period
    try
      PP_str := FieldByName('ProcurementPeriod_str').AsString;
      if ((PP_str <> 'A') and (PP_str <> 'B') and (PP_str <> 'C') and (PP_str <> 'D')) then PP_str := 'A';
      FieldByName('ProcurementPeriod_str').AsString := PP_str;
      FieldByName('ProcurementPeriod_int').AsInteger := MainDm.tblMainSystem.FieldByName('ProcurementPeriod'+ PP_str + '_int').AsInteger;
    except
    end;
    try      // Leadtime period
      LT_str := FieldByName('LeadTime_str').AsString;
      if ((LT_str <> 'A') and (LT_str <> 'B') and (LT_str <> 'C') and (LT_str <> 'D')) then LT_str := 'A';
      FieldByName('LeadTime_str').AsString  := LT_str;
      FieldByName('LeadTime_int').AsInteger := MainDm.tblMainSystem.FieldByName('LeadTime' + LT_str + '_int').AsInteger;
    except
    end;
    try
    PP_str := FieldByName('ReOrderStatus_str').AsString;
    if ((PP_str <> 'A') and (PP_str <> 'B') and (PP_str <> 'M'))then PP_str := 'A';
    FieldByName('ReOrderStatus_str').AsString := PP_str;
    except
    end;
    try
    if FieldByName('Supplement_bol').IsNull then
      FieldByName('Supplement_bol').AsBoolean := False;
    if FieldByName('ShippingPack_int').IsNull then
      FieldByName('ShippingPack_int').AsInteger := 1;
    if FieldByName('AvgDailyConsumption_int').IsNull then
      FieldByName('AvgDailyConsumption_int').AsInteger := 0;
    if FieldByName('ReviewLevel_bol').IsNull then
      FieldByName('ReviewLevel_bol').AsBoolean := False;
    if FieldByName('LastReview_dat').IsNull then
      FieldByName('LastReview_dat').AsDateTime := Date-750;
    if FieldByName('Route_str').IsNull then
      FieldByName('Route_str').AsString := '';
    if FieldByName('ItemBugdet_mon').IsNull then
      FieldByName('ItemBugdet_mon').AsCurrency := 0;
    if FieldByName('Cost_mon').IsNull then
      FieldByName('Cost_mon').AsCurrency := 0;
    except
    end;
    vOnHold   := 0;
    vOnOrder  := 0;
    try
    if stpProductCurrentOnHold.RecordCount > 0 then
      if not stpProductCurrentOnHold.FieldByName('SumOfQtyOrdered_int').IsNull then
        begin
        vOnHold := stpProductCurrentOnHold.FieldByName('SumOfQtyOrdered_int').AsInteger;
//          if FieldByName('ProductCode_ID').AsFloat = 899 then
//            MessageDlg( 'OnHoldBefore: ' + IntToStr(vOnHold),mtWarning,[mbOK],0);
        if vOnHold < 0 then vOnHold := 0;
//          if FieldByName('ProductCode_ID').AsFloat = 899 then
//            MessageDlg( 'OnHoldDB: ' + stpProductCurrentOnHold.FieldByName('SumOfQtyOrdered_int').AsString,mtWarning,[mbOK],0);
        end;
//      if FieldByName('ProductCode_ID').AsFloat = 899 then
//        MessageDlg( 'OnHold: ' + IntToStr(vOnHold),mtWarning,[mbOK],0);
    except
    end;
    try
    if stpProductCurrentOnOrder.RecordCount > 0 then
      if not stpProductCurrentOnOrder.FieldByName('SumOfQtyOrdered_int').IsNull then
        begin
        vOnOrder := stpProductCurrentOnOrder.FieldByName('SumOfQtyOrdered_int').AsInteger;
        if vOnOrder < 0 then vOnOrder := 0;
//    if FieldByName('ProductCode_ID').AsFloat = 899 then
//        MessageDlg( 'OnOrderDB: ' + stpProductCurrentOnOrder.FieldByName('SumOfQtyOrdered_int').AsString,mtWarning,[mbOK],0);
        end;
//    if FieldByName('ProductCode_ID').AsFloat = 899 then
//      MessageDlg( 'OnOrder: ' + IntToStr(vOnHold),mtWarning,[mbOK],0);
    except
    end;
    FieldByName('QtyOnHold_int').AsInteger := vOnHold;
    FieldByName('QtyOnOrder_int').AsInteger := vOnOrder;
    try
    if FieldByName('ItemBugdet_mon').IsNull then
      vRemainingBudget := 0
      else
      vRemainingBudget := FieldByName('ItemBugdet_mon').AsCurrency;
    if stpProductFYTDExpenditures.RecordCount > 0 then
      if not FieldByName('ItemBugdet_mon').IsNull then
        if not stpProductFYTDExpenditures.FieldbyName('ExpToDate_Mon').IsNull then
          vRemainingBudget := (FieldByName('ItemBugdet_mon').AsCurrency - stpProductFYTDExpenditures.FieldbyName('ExpToDate_Mon').AsCurrency);
    vItemsleft := 0;
    if FieldByName('Cost_mon').IsNull then
      vCost := 0
      else
      vCost := FieldByName('Cost_mon').AsCurrency;
    if vCost <= 0 then vItemsleft := 1000000;
    if (vRemainingBudget > 0) and (vCost > 0) then
      vItemsleft := Round(vRemainingBudget / vCost);
    FieldByName('MaxStockAvailableInBudget_int').AsInteger := vItemsleft;
    except
    end;
   end;
end;

procedure TProductAutoLevelDM.tblProductCatalogStatusBeforePost(
  DataSet: TDataSet);
var
  vGenericName_str, vStrength_str, vForm_str, vPackSize_str, vPackSizeUnit_str,
  vRoute_str, vSupplement_str, PP_str, LT_str :string;
  vSupplement_bol :boolean;
  vRemainingBudget, vCost :Currency;
  vItemsleft, vOnHold, vOnOrder  :integer;
begin
  with DataSet do
    begin
    vOnHold   := 0;
    vOnOrder  := 0;
    try
    if stpProductCurrentOnHold.RecordCount > 0 then
      if not stpProductCurrentOnHold.FieldByName('SumOfQtyOrdered_int').IsNull then
        begin
        vOnHold := stpProductCurrentOnHold.FieldByName('SumOfQtyOrdered_int').AsInteger;
        if vOnHold < 0 then vOnHold := 0;
        end;
    except
    end;
    try
    if stpProductCurrentOnOrder.RecordCount > 0 then
      if not stpProductCurrentOnOrder.FieldByName('SumOfQtyOrdered_int').IsNull then
        begin
        vOnOrder := stpProductCurrentOnOrder.FieldByName('SumOfQtyOrdered_int').AsInteger;
        if vOnOrder < 0 then vOnOrder := 0;
        end;
    except
    end;
    FieldByName('QtyOnHold_int').AsInteger := vOnHold;
    FieldByName('QtyOnOrder_int').AsInteger := vOnOrder;
    end;
end;


end.

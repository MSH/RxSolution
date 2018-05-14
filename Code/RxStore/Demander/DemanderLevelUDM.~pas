unit DemanderLevelUDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  Db, DBTables, ADODB, ExtCtrls, Forms;

type
  TDemanderLevelDM = class(TDataModule)
    ADOProductLevelConnection: TADOConnection;
    stpProductLeadTime: TADOStoredProc;
    stpProductConsumption: TADOStoredProc;
    qrySystemLeadtime: TADOQuery;
    qrySystemLeadtimeLeadTimeA_int: TIntegerField;
    qryDemander: TADOQuery;
    stpProductConsumptionDemander_ID: TIntegerField;
    stpProductConsumptionProductCode_str: TWideStringField;
    stpProductConsumptionDayQuantity_int: TFloatField;
    stpProductConsumptionDayMinQOH_int: TIntegerField;
    stpProductConsumptionProductCode_ID: TIntegerField;
    stpProductConsumptionDate_dat: TDateTimeField;
    stpProductConsumptionType_str: TStringField;
    stpProductConsumptionAccumDay_Int: TIntegerField;
    stpProductConsumptionAccumDayQuantity_Int: TIntegerField;
    qryDemanderDemander_ID: TAutoIncField;
    qryDemanderCode_str: TWideStringField;
    qryDemanderName_str: TWideStringField;
    qryDemanderAddress1_str: TWideStringField;
    qryDemanderAddress2_str: TWideStringField;
    qryDemanderAddress3_str: TWideStringField;
    qryDemanderCity_str: TWideStringField;
    qryDemanderPostalCode_str: TWideStringField;
    qryDemanderHealthDistrict_str: TWideStringField;
    qryDemanderMagisterialDistrict: TWideStringField;
    qryDemanderRegion_str: TWideStringField;
    qryDemanderType_str: TWideStringField;
    qryDemanderBeds_int: TIntegerField;
    qryDemanderAuthority_str: TWideStringField;
    qryDemanderContact1_str: TWideStringField;
    qryDemanderContact2_str: TWideStringField;
    qryDemanderPhone_str: TWideStringField;
    qryDemanderFax_str: TWideStringField;
    qryDemanderPopulation_int: TIntegerField;
    qryDemanderInPatients_int: TIntegerField;
    qryDemanderOutPatients_int: TIntegerField;
    qryDemanderLevy_str: TWideStringField;
    qryDemanderDeliveryRoute_str: TWideStringField;
    qryDemanderAccount_str: TWideStringField;
    qryDemanderActive_bol: TBooleanField;
    qryDemanderBudget_mon: TBCDField;
    qryDemanderBudgetBalance_mon: TBCDField;
    qryDemanderItemsLevel_str: TWideStringField;
    qryDemanderRemarks_mem: TMemoField;
    qryDemanderPostalAddress1_str: TWideStringField;
    qryDemanderPostalAddress2_str: TWideStringField;
    qryDemanderPostalAddress3_str: TWideStringField;
    qryDemanderPostalLocation_str: TWideStringField;
    qryDemanderPostalPostalCode_str: TWideStringField;
    qryDemanderShipAddress1_str: TWideStringField;
    qryDemanderShipAddress2_str: TWideStringField;
    qryDemanderShipAddress3_str: TWideStringField;
    qryDemanderShipLocation_str: TWideStringField;
    qryDemanderShipPostalCode_str: TWideStringField;
    qryDemanderOpenOrMaxDriven: TBooleanField;
    qryDemanderLastUpdateBy_str: TWideStringField;
    qryDemanderLastUpdateBy_dbl: TIntegerField;
    qryDemanderProcurementPeriod_int: TIntegerField;
    qryDemanderLeadTime_int: TIntegerField;
    qryDemanderProvince_str: TWideStringField;
    qryDemandereMail_str: TWideStringField;
    qryDemanderCanDispense_bol: TBooleanField;
    qryDemanderDemanderUnique_ID: TGuidField;
    stpProductList: TADOStoredProc;
    stpProductListDemander_ID: TIntegerField;
    stpProductListAvgConsumption_dbl: TFloatField;
    stpProductListProcurementPeriod_int: TIntegerField;
    stpProductListLeadTime_int: TIntegerField;
    stpProductListMaxStockSet_int: TIntegerField;
    stpProductListMinStockSet_int: TIntegerField;
    stpProductListQtyAuthorized_int: TIntegerField;
    stpProductListLeadTime_str: TWideStringField;
    stpProductListProcurementPeriod_str: TWideStringField;
    stpProductListDescription_str: TStringField;
    stpProductListProductCode_str: TWideStringField;
    stpProductListDDDValue_int: TSmallintField;
    stpProductListProductCode_ID: TAutoIncField;
    stpProductListProductMin: TIntegerField;
    stpProductListProductMax: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
   
  private
    { Private declarations }
    
    C_Min: Single ;
    C_Max: Single ;
    PP, LT: Integer;
    C_Start, C_End, L_St, L_End: TDateTime;
    // Stats variables
    Total_St, Total_End, LastIssueDate : TDate;
    OS_Days: Single;
    Tot_Con, Day: Single;
    N, Df: Integer;
    t, TN: Single;
    NY, NY2: Single;
    L, L2, LN: Single;
    T_Avg_Con, T_SD_Con, T_CI_Con: Single;
    Avg_Lag, SD_Lag, CI_Lag: Single;
    LastQOH: Integer;


    ReviewPeriod :integer;


    // Used by calculated fields in table
    cReg_Start :TDate;
    cTot_Con   :Single;
    cOS_Days   :Single;
    cDay       :Single;



    function ConnectDataSource: Boolean;
    procedure GetConsumptionData(pCurrentProductID: double; pRequest: integer;
        pDateSt, pDateEnd: TDateTime; pCurrentDemanderID: double);
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
    function GetSystemDefaultLeadTime: Integer;


    { Private declarations }
  public
    { Public declarations }
    procedure AutoLevelDemanderProducts(vDemanderID:double);
  end;

var
  DemanderLevelDM: TDemanderLevelDM;
  FDemanderID: Double;

implementation

uses MainUDM, DialogProgressIndicatorUFrm;

{$R *.dfm}

procedure TDemanderLevelDM.DataModuleCreate(Sender: TObject);
begin

 ConnectDataSource;
      
end;

function TDemanderLevelDM.ConnectDataSource: Boolean;
var
   vbAllDataSetsOpened   : Boolean;
begin

 vbAllDataSetsOpened   := True;

 with MainDM do                                                              // as it may be Access or SQL Server.
  ADOProductLevelConnection.ConnectionString     := ADOMainDBConnection.ConnectionString;

 try
  qryDemander.Active        := True;
  stpProductList.Active     := True;

 except
  on E: EDatabaseError do                                                 // Pick up any databse errors
     begin
     vbAllDataSetsOpened   := False;
     ADOProductLevelConnection.Connected   := False;                                         // Make sure it's not connected
     end;
 end;
 Result :=   vbAllDataSetsOpened;

end;

procedure TDemanderLevelDM.AutoLevelDemanderProducts(vDemanderID:double);
var
  vCount :integer;
  vCurrentProductID :double;
  vOverallProgress            : TProgressIndicatorFrm;
  StrVal :string;
  StartTime, EndTime:TDateTime;
  h: double;

begin

  vCount := 0;
  FDemanderID := vDemanderID;

  vOverallProgress := TProgressIndicatorFrm.Create(Self);
  vOverallProgress.MainCaption := 'Auto Level Demander Product Stock...';
  if stpProductList.Active then
   stpProductList.Close;
  stpProductList.Parameters.ParamByName('@DemanderID').Value :=vDemanderID;
  stpProductList.Prepared := True;
  stpProductList.Open;

  with stpProductList, vOverallProgress do
   begin
    try
    StartTime := Now;

    qryDemander.Close;
    qryDemander.Parameters.ParamByName('DemanderID').Value := FDemanderID;
    qryDemander.Open;


    stpProductList.First;
    MaxProgress :=  stpProductList.RecordCount;

    while not stpProductList.EOF do
      begin
      CurrentProgress  := vCount;
      StrVal := stpProductList.FieldByName('ProductCode_str').AsString + ', ' +
                stpProductList.FieldByName('Description_str').AsString;
      vCurrentProductID :=  stpProductList.FieldByName('ProductCode_ID').AsFloat;
      UpdateCaption    := StrVal;

      try
       ProcessProduct;
      except
        on E: Exception do MessageDlg('Record : ' + StrVal + #13 +  E.Message,mtWarning,[mbOK],0);
       end;
      vCount := vCount +1;
      stpProductList.Next;
      Application.ProcessMessages;
      end;
    finally
    MaxProgress := 0;
    Free;

    MessageDlg( 'Records processed : ' + IntToStr(vCount) + #13 +
                'Started @ ' + DateTimeToStr(StartTime) + #13 +
                'Ended @ ' + DateTimeToStr(Now),mtWarning,[mbOK],0);
    end;
    end;

end;

procedure TDemanderLevelDM.GetConsumptionData(pCurrentProductID: double;
    pRequest: integer; pDateSt, pDateEnd: TDateTime; pCurrentDemanderID:
    double);
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
    Parameters.ParamByName('@ProductID').Value   := pCurrentProductID;
    Parameters.ParamByName('@DateA').Value       := pDateSt;
    Parameters.ParamByName('@DateB').Value       := pDateEnd;
    Parameters.ParamByName('@TypeA').Value       := 'I';
    Parameters.ParamByName('@TypeB').Value       := vsTypeB;
    Parameters.ParamByName('@DemanderID').Value  := pCurrentDemanderID;
    Prepared := True;
    Open;

//    MessageDlg( 'Records available : ' + IntToStr(RecordCount) ,mtWarning,[mbOK],0);

    end;

end; (*................................................................*)(*end*)(*...........................................*)

(*---------------------------------------------------------------------------------------------------------------------------*)

procedure TDemanderLevelDM.GetLeadTimeData(pCurrentProductID: double;
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

end;

procedure TDemanderLevelDM.ProcessProduct;
const
  MULTIPLES_OF_REVIEWPERIOD = 6;

var
  PP_str, LT_str :string;
begin

  with stpProductList do
    begin

    // Procurement period
    PP_str := FieldByName('ProcurementPeriod_str').AsString;
    if (PP_str <> 'A') or (PP_str <> 'B') or (PP_str <> 'C') or (PP_str <> 'D') then PP_str := 'A';
    PP := MainDm.tblMainSystem.FieldByName('ProcurementPeriod'+ PP_str + '_int').AsInteger;

    if qryDemander.FieldByName('ProcurementPeriod_int').AsInteger > 0 then
      PP := qryDemander.FieldByName('ProcurementPeriod_int').AsInteger;

    if FieldByName('ProcurementPeriod_int').AsInteger > 0 then
      PP := FieldByName('ProcurementPeriod_int').AsInteger;


    // Leadtime period
    LT_str := FieldByName('LeadTime_str').AsString;
    if (LT_str <> 'A') or (LT_str <> 'B') or (LT_str <> 'C') or (LT_str <> 'D') then LT_str := 'A';
    LT := MainDm.tblMainSystem.FieldByName('LeadTime' + LT_str + '_int').AsInteger;

    if qryDemander.FieldByName('LeadTime_int').AsInteger > 0 then
      LT := qryDemander.FieldByName('LeadTime_int').AsInteger;

    if FieldByName('LeadTime_int').AsInteger > 0 then
      LT := FieldByName('LeadTime_int').AsInteger;


    end;

  // Set review dates
  // Review period for Procurement Period
  ReviewPeriod := PP * MULTIPLES_OF_REVIEWPERIOD;
  if ReviewPeriod < 1 then ReviewPeriod := PP; // Should not be, but just in case.
  C_Start := ((Date)-ReviewPeriod);
  C_End := (Date + 1);
  // Review period for Procurement Period
  ReviewPeriod := LT * MULTIPLES_OF_REVIEWPERIOD;
  if ReviewPeriod < 1 then ReviewPeriod := LT; // Should not be, but just in case.
  L_St := ((Date)-(LT * ReviewPeriod));
  L_End := (Date + 1);

  CalculateConsumption_CollectStats;
  LagTime_CollectStats;
  CalculateConsumption;
  Save_StockLevels;

end;


//// Collecting Data
// Consumption
procedure TDemanderLevelDM.GetConsumption;
var
  vCurrentProductID :double;
  TempCount :double;

begin
  /// Limiting to issues & recp between the dates & grouping by the day
  /// Note we use the day's consumption as we are not interested in the avg per transaction but per day
  TempCount :=0;
  with stpProductConsumption do
    begin
    vCurrentProductID := stpProductList.FieldByName('ProductCode_ID').AsFloat;
    GetConsumptionData(vCurrentProductID, 1, C_Start, C_End, FDemanderID);
    Tot_Con := 0;

    /// Now we go through each record and prime the std stats variables
    First;
    // First day = 1 not 0
    // This placed here as we only need to prime once, the pointer is set at the top of the file
    while not EOF do
      begin
      /// Using issues for consumption
      // Priming the OS trigger varaibles
      LastIssueDate := FieldByName('Date_dat').AsDateTime;
      LastQOH       := FieldByName('DayMinQOH_int').AsInteger;
      /// Cycle to the next ledger entry
      if FieldByName('Type_Str').AsString = 'I' then
        begin
        /// Accumulative consumption
           TempCount := TempCount + FieldByName('DayQuantity_int').AsFloat;
        /// The stats
        N := N + 1;
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
      Next;
      end;
    end;
  Tot_Con := TempCount;
end;

/// T Values
function TDemanderLevelDM.GetTValue(const vDF :integer):double;
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



procedure TDemanderLevelDM.CalculateConsumption_CollectStats;
begin
  // Reseting the varaibles
  Total_St := Date;
  Total_End := (Date-3600);
  Tot_Con := 0;
  Day := 0;
  N := 0;
  Df := 0;
  NY := 0;
  NY2 := 0;
  L := 0;
  L2 := 0;
  LN :=0;
  OS_days := 0;
  T_Avg_Con := 0;
  T_SD_Con := 0;
  T_CI_Con := 0;
  // Collating the stats.
  GetConsumption;  // A Procedure
  // Calc the Average Daily Consumption
  TN := ((Total_End - Total_St) - OS_days);  /// N is = No days & not No samples
  if (TN > 0) Then
    begin
    T_Avg_Con := (Tot_Con / TN);
//    MessageDlg('T_Avg_Con: ' + FloatToStr(T_Avg_Con), mtInformation, [mbOK], 0);
    T_SD_Con := Sqrt((NY2 - ((NY*NY)/TN))/(TN-1));
    Df := N - 1;
    T_CI_Con := T_Avg_Con + (GetTValue(Df) * (T_SD_Con/Sqrt(TN)));
    end;

end;


//// Lag Time
procedure TDemanderLevelDM.GetLeadTime;
var
  LT_int :double;
  vCurrentProductID :double;

begin

  vCurrentProductID := stpProductList.FieldByName('ProductCode_ID').AsFloat;
  GetLeadTimeData(vCurrentProductID, L_St, L_End);
  with stpProductLeadTime do
    begin
    First;
    while not EOF do
      begin
      // The stats
      LT_int := FieldByName('LeadTime_int').AsFloat;
      if LT_int < 1 then LT_int := LT;  // LT obtained in process product for demander product leatime
      if LT_int < 1 then LT_int := GetSystemDefaultLeadTime;
      N := N + 1;
      // Total or simple
      L  :=  L  + LT_int;
      L2 :=  L2 + (LT_int * LT_int);
      Next;
      end;
    end;

end;


procedure TDemanderLevelDM.LagTime_CollectStats;
begin
  // Reseting the varaibles
  N := 0;
  Df := 0;
  L := 0;
  L2 := 0;
  LN :=0;
  Avg_Lag := 0;
  SD_Lag := 0;
  CI_Lag := 0;
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

end;


procedure TDemanderLevelDM.CalculateConsumption;
begin
  //// The calculations
  // The prefix C = calculated
  // Demanders do not have SS however we use a factor of 1.5 to cover varainces.
  C_Min  := 1.5*(T_Avg_Con * LT);
  //  C_Min  := 1.5*(T_Avg_Con * Avg_Lag);
  C_Max  := C_Min + (PP * T_Avg_Con);

//  MessageDlg('PP: ' + IntToStr(PP) + #13 + 'LT: ' + IntToStr(LT), mtInformation, [mbOK], 0);
end;



procedure TDemanderLevelDM.Save_StockLevels;
begin
 /// Priming the DB
 // Fmax needs to be primed and could have changed with on change

  with stpProductList do
    if Active then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('MinStockSet_int').AsFloat      := C_Min;
      FieldByName('MaxStockSet_int').AsFloat      := C_Max;

      FieldByName('QtyAuthorized_int').AsFloat    := C_Max;

      FieldByName('AvgConsumption_dbl').AsFloat   := T_Avg_Con;
      Post;
      end;

end;

function TDemanderLevelDM.GetSystemDefaultLeadTime: Integer;
var
  DefLeadTime :integer;
begin
  Result := 14;
  with qrySystemLeadtime do
    begin
    Active := True;
    DefLeadTime := FieldByName('LeadTimeA_int').AsInteger;
    if DefLeadTime > 0 then Result := DefLeadTime;
    end;

end;



end.

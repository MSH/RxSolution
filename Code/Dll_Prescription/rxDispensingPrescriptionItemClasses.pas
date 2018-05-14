unit rxDispensingPrescriptionItemClasses;

interface

uses
  SysUtils, Classes, ComObj,
  Windows, Messages, Variants, Graphics, Controls,
  Forms, Dialogs, DateUtils,

  DB, ADODB;

const


  STRRATIO    = 20;
  PCKRATIO    = 30;
  ROUTERATIO  = 500;
  FORMRATIO   = 45;
  AGERATIO    = 0;

  // MAKING this ratio higher improves the value added to diferent types
  STRENGTHRATIO_MULTIPLE  = 1;
  PACKRATIO_MULTIPLE      = 1;

  // IMPROVES A FRATIONAL NUMBER (TURN 0.006 TO 0.6)
  RATIOINCREASE           = 1;

  // ITEMS COST ?????? FOR RATIO CALCULATION
  DEFAULTCOSTVALUE        = 100;

  JUVENILE    = 8;

  FORM_LIQUID = 'liquid';


type


  TDrugs = class;

  EDrugList = array of TDrugs;
  TAnthropometric = class;
  TDosingLevels = class;
  DAL = class;
  TRxLabel = class;
  TPrescription = class;

  TProduct = class(TObject)
  private
    FAutoInstruction: Boolean;
    FProductAutoUpdate: Boolean;
    FbrandName: string;
    FconnString: string;
    Fdose: Double;
    FdoseEccentricA: Double;
    FdoseEccentricB: Double;
    FdoseUnit: string;
    Fduration: Double;
    FFreeForm: string;
    FgenericName: string;
    FIndication: string;
    FInstructionData: string;
    FinstructionDescription: string;
    FinstructionDescriptionA: string;
    FinstructionDescriptionB: string;
    Finstructions: string;
    FinstructionsSpecial: string;
    Finterval: string;
    FintervalEccentricA: string;
    FintervalEccentricB: string;
    FintervalPeriod: Double;
    FintervalPeriodEccentricA: Double;
    FintervalPeriodEccentricB: Double;
    FinterventionCode: Integer;
    FisEccentricDose: Boolean;
    FMaxDose: string;
    FOnChange: TNotifyEvent;
    FOnProductChange: TNotifyEvent;
    Frepeats: Integer;
    Froute: string;
    Fwarning: string;
    procedure CalculateDose;
    procedure SetbrandName(const Value: string);
    procedure SetdoseEccentricA(Value: Double);
    procedure SetdoseEccentricB(Value: Double);
    procedure Setduration(Value: Double);
    procedure SetgenericName(const Value: string);
    procedure SetIndication(const Value: string);
    procedure SetintervalEccentricA(const Value: string);
    procedure SetintervalEccentricB(const Value: string);
    procedure SetisEccentricDose(Value: Boolean);
  protected
    procedure Change; dynamic;
    procedure ProductChange; dynamic;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnProductChange: TNotifyEvent read FOnProductChange write
        FOnProductChange;
  public
    constructor Create(connectionString :string);
    destructor Destroy; override;
    procedure BuildInstruction(dispUnit : string; dispValueA, dispValueB : double;
        eccentric :boolean; unitVal : double);
    property AutoInstruction: Boolean read FAutoInstruction write FAutoInstruction;
    property ProductAutoUpdate: Boolean read FProductAutoUpdate write
        FProductAutoUpdate;
    property brandName: string read FbrandName write SetbrandName;
    property dose: Double read Fdose write Fdose;
    property doseEccentricA: Double read FdoseEccentricA write SetdoseEccentricA;
    property doseEccentricB: Double read FdoseEccentricB write SetdoseEccentricB;
    property doseUnit: string read FdoseUnit write FdoseUnit;
    property duration: Double read Fduration write Setduration;
    property FreeForm: string read FFreeForm write FFreeForm;
    property genericName: string read FgenericName write SetgenericName;
    property Indication: string read FIndication write SetIndication;
    property instructionDescription: string read FinstructionDescription write
        FinstructionDescription;
    property instructionDescriptionA: string read FinstructionDescriptionA;
    property instructionDescriptionB: string read FinstructionDescriptionB;
    property instructions: string read Finstructions write Finstructions;
    property instructionsSpecial: string read FinstructionsSpecial write
        FinstructionsSpecial;
    property interval: string read Finterval write Finterval;
    property intervalEccentricA: string read FintervalEccentricA write
        SetintervalEccentricA;
    property intervalEccentricB: string read FintervalEccentricB write
        SetintervalEccentricB;
    property intervalPeriod: Double read FintervalPeriod;
    property intervalPeriodEccentricA: Double read FintervalPeriodEccentricA;
    property intervalPeriodEccentricB: Double read FintervalPeriodEccentricB;
    property interventionCode: Integer read FinterventionCode write
        FinterventionCode;
    property isEccentricDose: Boolean read FisEccentricDose write
        SetisEccentricDose;
    property MaxDose: string read FMaxDose write FMaxDose;
    property repeats: Integer read Frepeats write Frepeats;
    property route: string read Froute write Froute;
    property warning: string read Fwarning write Fwarning;
  end;

  TDrugs = class(TObject)
  private
    FAdministration: string;
    Fbreakable: Boolean;
    FCompletePacksRequired: Integer;
    FdispensedForm: string;
    FdispensedUnit: string;
    FdispensedVal: Double;
    FDispensingCost: Currency;
    FDispensingDose: Double;
    FDispensingDrugTotal: Double;
    FGenericName: string;
    FPackAvailable: Integer;
    FPackCost: Double;
    FPackDescription: string;
    FPackDispensingUnit: string;
    FPackDispensingValue: Double;
    FPackItemCost: Double;
    FRoute: string;
    FPackSize: Double;
    FPackSizeRatio: Double;
    FPackStrengthUnit: string;
    FPackStrengthValue: Double;
    FProductID: string;
    FRegimen: string;
    FRegimenID: string;
    FScoreRatio: Double;
    FStrengthRatio: Double;
    FUnitsOnHand: Double;
    FUnitsToDispense: Double;
  public
    constructor Create;
    property Administration: string read FAdministration write FAdministration;
    property breakable: Boolean read Fbreakable write Fbreakable;
    property CompletePacksRequired: Integer read FCompletePacksRequired write
        FCompletePacksRequired;
    property dispensedForm: string read FdispensedForm write FdispensedForm;
    property dispensedUnit: string read FdispensedUnit write FdispensedUnit;
    property dispensedVal: Double read FdispensedVal write FdispensedVal;
    property DispensingCost: Currency read FDispensingCost write FDispensingCost;
    property DispensingDose: Double read FDispensingDose write FDispensingDose;
    property DispensingDrugTotal: Double read FDispensingDrugTotal write
        FDispensingDrugTotal;
    property GenericName: string read FGenericName write FGenericName;
    property PackAvailable: Integer read FPackAvailable write FPackAvailable;
    property PackCost: Double read FPackCost write FPackCost;
    property PackDescription: string read FPackDescription write FPackDescription;
    property PackDispensingUnit: string read FPackDispensingUnit write
        FPackDispensingUnit;
    property PackDispensingValue: Double read FPackDispensingValue write
        FPackDispensingValue;
    property PackItemCost: Double read FPackItemCost write FPackItemCost;
    property Route: string read FRoute write FRoute;
    property PackSize: Double read FPackSize write FPackSize;
    property PackSizeRatio: Double read FPackSizeRatio write FPackSizeRatio;
    property PackStrengthUnit: string read FPackStrengthUnit write
        FPackStrengthUnit;
    property PackStrengthValue: Double read FPackStrengthValue write
        FPackStrengthValue;
    property ProductID: string read FProductID write FProductID;
    property Regimen: string read FRegimen write FRegimen;
    property RegimenID: string read FRegimenID write FRegimenID;
    property ScoreRatio: Double read FScoreRatio write FScoreRatio;
    property StrengthRatio: Double read FStrengthRatio write FStrengthRatio;
    property UnitsOnHand: Double read FUnitsOnHand write FUnitsOnHand;
    property UnitsToDispense: Double read FUnitsToDispense write FUnitsToDispense;
  end;

  TDispensing = class(TObject)
  private
    FdispensingBP: Boolean;
    FdispensingCost: Double;
    FdispensingDescription: string;
    FdispensingItemCost: Double;
    FdispensingPackCount: Double;
    FdispensingTotal: Double;
    FdispensingTotalCalc: Double;
    FdispensingUnit: string;
    FOnChange: TNotifyEvent;
    FproductID: string;
    FProtocolID: string;
    FselectedDrug: Integer;
    FSelectedProductPrivate: string;
    FupdateDispensing: Boolean;
    procedure SetdispensingTotal(Value: Double);
    procedure SetdispensingTotalCalc(Value: Double);
    procedure UpdateTotals;
  protected
    procedure Change;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  public
    constructor Create;
    property dispensingBP: Boolean read FdispensingBP write FdispensingBP;
    property dispensingCost: Double read FdispensingCost write FdispensingCost;
    property dispensingDescription: string read FdispensingDescription write
        FdispensingDescription;
    property dispensingItemCost: Double read FdispensingItemCost write
        FdispensingItemCost;
    property dispensingPackCount: Double read FdispensingPackCount write
        FdispensingPackCount;
    property dispensingTotal: Double read FdispensingTotal write SetdispensingTotal;
    property dispensingTotalCalc: Double read FdispensingTotalCalc write
        SetdispensingTotalCalc;
    property dispensingUnit: string read FdispensingUnit write FdispensingUnit;
    property productID: string read FproductID write FproductID;
    property ProtocolID: string read FProtocolID write FProtocolID;
    property selectedDrug: Integer read FselectedDrug write FselectedDrug;
    property SelectedProductPrivate: string read FSelectedProductPrivate write
        FSelectedProductPrivate;
    property updateDispensing: Boolean read FupdateDispensing write
        FupdateDispensing;
  end;

  TProductList = class(TObject)
  private
    FconnectionString: string;
    FDrugs: EDrugList;
    FProductCount: Integer;
    procedure ClearList;
    function GetDrugs(Index: Integer): TDrugs;
    function GetLU_Packs: TStringList;
  public
    constructor Create(conString :String);
    destructor Destroy; override;
    function Find(description :string): Integer;
    function FindID(prmID : String): Integer;
    function FindLowest: Integer;
    procedure LoadDrugs(genericName, routeStr: String; dispByProduct: Boolean);
    property Drugs[Index: Integer]: TDrugs read GetDrugs;
    property LU_Packs: TStringList read GetLU_Packs;
    property ProductCount: Integer read FProductCount;
  end;

  TPrescriptionItem = class(TObject)
  private
    FaddingItem: Boolean;
    FAnthropometries: TAnthropometric;
    FautoUpdate: Boolean;
    FBusyChanging: Boolean;
    FconnectionString: string;
    FDispenseByProduct: Boolean;
    FDispensedID: string;
    FDispensedItem: string;
    FdispensedItemArray: Integer;
    FdispensedItemID: string;
    FdispensingDetail: TProduct;
    FdispensingProductList: TProductList;
    FdispensingSummary: TDispensing;
    FDosing: TDosingLevels;
    FOnChange: TNotifyEvent;
    FPrescriptionData: TPrescription;
    FprescriptionDetail: TProduct;
    FprescriptionID: string;
    FScriptLabel: TRxLabel;
    procedure AnthropometriesHasChanged(Sender: TObject);
    procedure CalculateProductList;
    procedure Change;
    procedure DispensingChange(Sender : TObject);
    procedure DispensingProductChange(Sender : TObject);
    procedure DispensingTotalsChange(Sender : TObject);
    procedure LoadFromDB;
    function LoadFromDefaultDose: Boolean;
    procedure PrescriptionChange(Sender : TObject);
    function PrescriptionItem_FromStandardRegimen(prmRegimenID: string): Boolean;
    procedure PrescriptionProductChange(Sender : TObject);
    procedure RunningTotal(var prmValue : double ; prmAmountToAdd : double ;
        prmMinVal : double = -100000000);
    procedure SetAnthropometries(const Value: TAnthropometric);
    procedure SetDispenseByProduct(const Value: Boolean);
    procedure SetDispensedID(const Value: string);
    procedure SetDispensedItem(const Value: string);
    procedure SetPrescriptionID(const Value: string);
  protected
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  public
    constructor Create(ID, prmPrescriptionID, connection: String;
        prmAnthropometric: TAnthropometric; prmPrescriptionData: TPrescription);
    destructor Destroy; override;
    procedure CalculateDispensing;
    procedure LabelUpdate;
    procedure Save;
    property Anthropometries: TAnthropometric read FAnthropometries write
        SetAnthropometries;
    property autoUpdate: Boolean read FautoUpdate write FautoUpdate;
    property connectionString: string read FconnectionString;
    property DispenseByProduct: Boolean read FDispenseByProduct write
        SetDispenseByProduct;
    property DispensedID: string read FDispensedID write SetDispensedID;
    property DispensedItem: string read FDispensedItem write SetDispensedItem;
    property dispensedItemID: string read FdispensedItemID;
    property dispensingDetail: TProduct read FdispensingDetail write
        FdispensingDetail;
    property dispensingProductList: TProductList read FdispensingProductList write 
        FdispensingProductList;
    property dispensingSummary: TDispensing read FdispensingSummary write
        FdispensingSummary;
    property Dosing: TDosingLevels read FDosing write FDosing;
    property prescriptionDetail: TProduct read FprescriptionDetail write
        FprescriptionDetail;
    property PrescriptionID: string read FPrescriptionID write SetPrescriptionID;
    property ScriptLabel: TRxLabel read FScriptLabel write FScriptLabel;
  end;

  TAnthropometric = class(TObject)
  private
    FABW: Double;
    FAgeInYears: Integer;
    FAgeInYearsModMonths: Integer;
    FBMI: Double;
    FBSA: Double;
    FCalculating: Boolean;
    FDateOfBirth: TDateTime;
    FGender: string;
    FHeight: Double;
    FIBW: Double;
    FLBW: Double;
    FOnChange: TNotifyEvent;
    FWeight: Double;
    procedure CalculateAnthropometries;
    procedure SetDateOfBirth(const Value: TDateTime);
    procedure SetGender(const Value: string);
    procedure SetHeight(const Value: Double);
    procedure SetWeight(const Value: Double);
    procedure ValueChange(Sender : TObject);
  public
    constructor Create; overload;
    constructor Create(prmDOB: TDateTime; prmHeight, prmWeight: Double; prmGender:
        string); overload;
    procedure LoadProperties(prmDOB: TDateTime; prmHeight, prmWeight: Double;
        prmGender: string); overload;
    property ABW: Double read FABW;
    property AgeInYears: Integer read FAgeInYears;
    property AgeInYearsModMonths: Integer read FAgeInYearsModMonths;
    property BMI: Double read FBMI;
    property BSA: Double read FBSA;
    property DateOfBirth: TDateTime read FDateOfBirth write SetDateOfBirth;
    property Gender: string read FGender write SetGender;
    property Height: Double read FHeight write SetHeight;
    property IBW: Double read FIBW;
    property LBW: Double read FLBW;
    property Weight: Double read FWeight write SetWeight;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TDosingLevels = class(TObject)
  private
    FAnthro: TAnthropometric;
    FCalculating: Boolean;
    FDBConnectionString: string;
    FDosingErrorMsg: string;
    FKgDayHi: Double;
    FKgDayLo: Double;
    FKgDayRec: Double;
    FKgDoseHi: Double;
    FKgDoseLo: Double;
    FKgDoseRec: Double;
    FM2DayHi: Double;
    FM2DayLo: Double;
    FM2DayRec: Double;
    FM2DoseHi: Double;
    FM2DoseLo: Double;
    FM2DoseRec: Double;
    FMgPerKgPerDay: Double;
    FMgPerKgPerDose: Double;
    FMgPerM2PerDay: Double;
    FMgPerM2PerDose: Double;
    FOnChange: TNotifyEvent;
    FRxDose: Double;
    FRxDoseUnit: string;
    FRxGenericName: string;
    FRxInterval: Double;
    FRxRoute: string;
    procedure CalculateDosingLevels;
    procedure SetM2DoseLo(const Value: Double);
    procedure SetRxDose(const Value: Double);
    procedure SetRxDoseUnit(const Value: string);
    procedure SetRxGenericName(const Value: string);
    procedure SetRxInterval(const Value: Double);
    procedure SetRxRoute(const Value: string);
    procedure ValueChange(Sender : TObject);
  public
    constructor Create(prmDBConStr: string); overload;
    procedure DoseSuggested(prmGenericName: string; prmDose: Double; prmDoseUnit,
        prmRoute: string; prmInterval: Double);
    procedure Refresh;
    property DBConnectionString: string read FDBConnectionString write
        FDBConnectionString;
    property DosingErrorMsg: string read FDosingErrorMsg write FDosingErrorMsg;
    property KgDayHi: Double read FKgDayHi write FKgDayHi;
    property KgDayLo: Double read FKgDayLo write FKgDayLo;
    property KgDayRec: Double read FKgDayRec write FKgDayRec;
    property KgDoseHi: Double read FKgDoseHi write FKgDoseHi;
    property KgDoseLo: Double read FKgDoseLo write FKgDoseLo;
    property KgDoseRec: Double read FKgDoseRec write FKgDoseRec;
    property M2DayHi: Double read FM2DayHi write FM2DayHi;
    property M2DayLo: Double read FM2DayLo write FM2DayLo;
    property M2DayRec: Double read FM2DayRec write FM2DayRec;
    property M2DoseHi: Double read FM2DoseHi write FM2DoseHi;
    property M2DoseLo: Double read FM2DoseLo write SetM2DoseLo;
    property M2DoseRec: Double read FM2DoseRec write FM2DoseRec;
    property MgPerKgPerDay: Double read FMgPerKgPerDay write FMgPerKgPerDay;
    property MgPerKgPerDose: Double read FMgPerKgPerDose write FMgPerKgPerDose;
    property MgPerM2PerDay: Double read FMgPerM2PerDay write FMgPerM2PerDay;
    property MgPerM2PerDose: Double read FMgPerM2PerDose write FMgPerM2PerDose;
    property RxDose: Double read FRxDose write SetRxDose;
    property RxDoseUnit: string read FRxDoseUnit write SetRxDoseUnit;
    property RxGenericName: string read FRxGenericName write SetRxGenericName;
    property RxInterval: Double read FRxInterval write SetRxInterval;
    property RxRoute: string read FRxRoute write SetRxRoute;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  DAL = class(TObject)
  private
    procedure GetClinLabValues;
    procedure GetDoseRatios;
    class function LoadProductStandardRegimenFromDB(var prmRx: TPrescriptionItem;
        const prmRegimenID, prmConnectionStr: string): Boolean;
  public
    class function LoadProductDefaultDoseFromDB(var prmRx: TPrescriptionItem; const
        prmConnectionStr: string): Boolean;
    class procedure LoadProductListFromDB(var prmProduct: EDrugList; var
        prmProdCnt: Integer; const prmGeneric, prmRouteStr: String; const
        prmDispByProduct: Boolean; const prmConnectionStr: String);
    class function LoadRxItemFromDB(var prmRx: TPrescriptionItem; prmConnectionStr:
        string): Boolean;
    class function SaveRxItemToDB(prmRx: TPrescriptionItem; prmConnectionStr:
        string): Boolean;
  end;

  TRxLabel = class(TObject)
  private
    FLine: array of string;
    FLine01: string;
    FLine02: string;
    FLine03: string;
    FLine04: string;
    FLine05: string;
    FLine06: string;
    FLine07: string;
    FLine08: string;
  public
    constructor Create;
    destructor Destroy; override;
    procedure UpdateLabel(prmProduct: string; prmProductTotal: double;
        prmPrescriberInstruction, prmDispenserInstruction,
        prmDispenserSpecialInstruction, prmWarning, prmPatientName,
        prmReferenceNumber: string; prmRepeatNumber, prmRepeatCount: integer;
        prmInstitution, prmInstitutionAddress: string);
    property Line01: string read FLine01;
    property Line02: string read FLine02;
    property Line03: string read FLine03;
    property Line04: string read FLine04;
    property Line05: string read FLine05;
    property Line06: string read FLine06;
    property Line07: string read FLine07;
    property Line08: string read FLine08;
  end;

  TDAL = class(TObject)
  private
    class procedure AddStr(var prmExist : string ; const prmNew : string; const
        prmSeperator : string = ' ');
    class procedure AddStrToStringList(prmStringValue : string ; var prmStringList
        : TStringList);
  public
    class function RxDescription(prmBrandName, prmGenericName, prmDoseUnit,
        prmRoute, prmIntervalA, prmIntervalB : string ; prmRepeats : integer ;
        prmDuration, prmDoseA, prmDoseB : double ; prmIsEccentric : boolean ;
        prmShowRepeats : boolean = True ; prmFreeForm : string = ''): string;
    class function RxDoseRangeDescription(prmAgeLo : double ; prmAgeHi : double ;
        prmWeightLo : double ; prmWeightHi : double): string;
    class procedure RxItemLabel(var prmLabel: TStringList; prmProduct: string;
        prmProductTotal: double; prmPrescriberInstruction, prmDispenserInstruction,
        prmDispenserSpecialInstruction, prmWarning, prmPatientName,
        prmReferenceNumber: string; prmRepeatNumber, prmRepeatCount: integer;
        prmHospital: string);
    class function TotalDuration(const prmConnectionString, ID :string): Double;
    class function TotalRepeats(const prmConnectionString, ID :string): Integer;
  end;

  TPrescription = class(TObject)
  private
    FScriptDate: TDateTime;
    FInstitutionName: string;
    FInstitutionAddress: string;
    FPatientName: string;
    FRepeatNumber: Integer;
    FRepeatTotal: Integer;
    FScriptNumber: string;
  public
    property ScriptDate: TDateTime read FScriptDate write FScriptDate;
    property InstitutionName: string read FInstitutionName write FInstitutionName;
    property InstitutionAddress: string read FInstitutionAddress write
        FInstitutionAddress;
    property PatientName: string read FPatientName write FPatientName;
    property RepeatNumber: Integer read FRepeatNumber write FRepeatNumber;
    property RepeatTotal: Integer read FRepeatTotal write FRepeatTotal;
    property ScriptNumber: string read FScriptNumber write FScriptNumber;
  end;

implementation

uses SystemGeneralMethods;

constructor TProduct.Create(connectionString :string);
begin

  inherited Create;
  FconnString     := connectionString;
  FProductAutoUpdate     := True;
  FAutoInstruction:= True;
  FisEccentricDose:= False;

  FbrandName      := 'None selected';
  FgenericName    := 'None selected';
  FdoseUnit       := 'mg';

  Fdose                     := 0;
  Finterval                 := 'bid';
  FintervalPeriod           := 12;
  FinstructionDescription   := 'twice a day';

  FdoseEccentricA             := Fdose;
  FintervalEccentricA         := Finterval;
  FintervalPeriodEccentricA   := FintervalPeriod;
  FinstructionDescriptionA    := FinstructionDescription;





//  FinstructionDescriptionA  := '';

  FdoseEccentricB           := Fdose;
  FintervalEccentricB       := Finterval;
  FintervalPeriodEccentricB := FintervalPeriod;
  FinstructionDescriptionB  := FinstructionDescription;
//  FinstructionDescriptionB  := '';

  Fduration       := 28;
  Frepeats        := 1;
  Froute          := 'PO';
  Finstructions   := '';
  FInstructionData    := '';
  FinterventionCode   := 0;

end;

destructor TProduct.Destroy;
begin
  inherited;
end;

procedure TProduct.BuildInstruction(dispUnit : string; dispValueA, dispValueB :
    double; eccentric :boolean; unitVal : double);
var
  dispStr   :string;
  r, t, dispValue      :double;
  srchQry   :TADOQuery;
  myConn    :TADOConnection;
  routeInstr, routeInstrDesc, dispUnits, doseInstr :string;
  rotations, i :integer;

  function RouteLabelDescription: string;
  var
  bStr      :string;

  begin

  Result := '-';
  try
    // Froute is part of class
    bStr   := 'select Instruction_Str from tlkRoute where Code_str = ''' + Froute + '''';
    myConn := TADOConnection.Create(nil);
    srchQry := TADOQuery.Create(nil);
    myConn.ConnectionString := FconnString;
    myConn.LoginPrompt := False;
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      SQL.Add(bStr);
      Open;
      while not EOF do
        begin
        Result := FieldByname('Instruction_Str').AsString;
        Next;
        end;
      except
      end;
  finally
    srchQry.Free;
    myConn.Free;
  end;

  end;

begin


  if FAutoInstruction then
    begin
    Finstructions:= '';
    routeInstr := RouteLabelDescription;

//    if eccentric then messageDlg('Eccentric', mtWarning, [mbOK], 0);
    if eccentric then rotations := 2 else rotations :=1;
    dispStr := '';

    for i:= 1 to rotations do
      begin

      case i of
        1: begin dispValue := dispValueA; routeInstrDesc := FinstructionDescriptionA; end;
        2: begin
          dispValue := dispValueB;
          routeInstrDesc := FinstructionDescriptionB;
          Finstructions := Finstructions + ' then ';
          routeInstr := LowerCase(routeInstr);
          end;
        end;



      doseInstr := '';
      dispValue := dispValue / unitVal;
      r := Frac(dispValue);
      t := Int(dispValue);
      if r <= 0.99 then doseInstr := '¾ (three quarters) of a';
//      if r <= 0.70 then doseInstr := '2/3 (two thirds) of a' ;
      if r <= 0.55 then doseInstr := '½ (half) of a' ;
//      if r <= 0.40 then doseInstr := '1/3 (one third) of a' ;
      if r <= 0.25 then doseInstr := '¼ (quarter) of a';
      if r <= 0.0001 then doseInstr := '';
      if t > 0 then doseInstr := Format('%.0f', [t]) + doseInstr;

      // plural, language issues
      dispUnits := LowerCase(dispUnit);
      if t > 1 then dispUnits := LowerCase(dispUnit) + 's';
      Finstructions := Finstructions + routeInstr + ' ' + doseInstr + ' ' + dispUnits + ' ' + routeInstrDesc;

      end; // for i:= 1 to rotations

    Change;
    end;

end;

procedure TProduct.CalculateDose;
begin
  if not isEccentricDose then
    begin
    Fdose           := FdoseEccentricA;
    Finterval       := FintervalEccentricA;
    FintervalPeriod := FintervalPeriodEccentricA;
    end else
    begin
    try
    Finterval       := 'OD';
    FintervalPeriod := 24;
//    if FintervalPeriodEccentricA <= 0 then FintervalPeriodEccentricA := 24;
//    if FintervalPeriodEccentricB <= 0 then FintervalPeriodEccentricA := 24;
    if FintervalPeriodEccentricA > 0 then FintervalPeriodEccentricA := FintervalPeriodEccentricA else FintervalPeriodEccentricA:= 24;
    if FintervalPeriodEccentricB > 0 then FintervalPeriodEccentricB := FintervalPeriodEccentricB else FintervalPeriodEccentricB:= 24;

    Fdose           := (FdoseEccentricA * (24/FintervalPeriodEccentricA))
                     + (FdoseEccentricB * (24/FintervalPeriodEccentricB));
    except
      on e: Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
    end;
    end;
end;

procedure TProduct.Change;
begin
  if Assigned(FOnChange) then FOnChange(self);
end;

procedure TProduct.ProductChange;
begin
  if Assigned(FOnProductChange) then FOnProductChange(self);
end;

procedure TProduct.SetbrandName(const Value: string);
begin

  FbrandName    :=  Value;
  FgenericName  :=  GetGenericNameFromBrandName(FconnString, FbrandName);
  ProductChange;  // Activate the OnChange event.

end;

procedure TProduct.SetdoseEccentricA(Value: Double);
begin
  FdoseEccentricA := Value;
  CalculateDose;
  Change;
end;

procedure TProduct.SetdoseEccentricB(Value: Double);
begin
  FdoseEccentricB := Value;
  CalculateDose;
  Change;
end;

procedure TProduct.Setduration(Value: Double);
begin
  Fduration := Value;
  Change;
end;

procedure TProduct.SetgenericName(const Value: string);
begin
  FgenericName := Value;
  ProductChange;
end;

procedure TProduct.SetIndication(const Value: string);
begin
  FIndication := Value;
  Change;
end;

procedure TProduct.SetintervalEccentricA(const Value: string);
begin
  if (value <> FintervalEccentricA) and (Value <> '') then
    begin
    FintervalEccentricA        := Value;
    FintervalPeriodEccentricA  := GetAbbreviationValue(FconnString, Value);
    FinstructionDescriptionA   := GetAbbreviationInstruction(FconnString, Value);
 //   messagedlg(FintervalEccentricA +';' + FinstructionDescriptionA, mtWarning, [mbOK], 0);
    CalculateDose;
    //Change;
    end;
end;

procedure TProduct.SetintervalEccentricB(const Value: string);
begin
  if (value <> FintervalEccentricB) or (Value <> '') then
    begin
    FintervalEccentricB        := Value;
    FintervalPeriodEccentricB  := GetAbbreviationValue(FconnString, Value);
    FinstructionDescriptionB   := GetAbbreviationInstruction(FconnString, Value);
    CalculateDose;
    //Change;
    end;
end;

procedure TProduct.SetisEccentricDose(Value: Boolean);
begin
  FisEccentricDose := Value;
  CalculateDose;
  Change;
end;

constructor TDispensing.Create;
begin

  inherited;
  FproductID          := 'Nil';
  FdispensingUnit     := 'Nil';
  FdispensingCost     := 0;
  FdispensingTotal    := 0;
  FdispensingItemCost := 0;
  FupdateDispensing   := True;
  FselectedDrug       := -1;
  FProtocolID         := '{00000000-0000-0000-0000-000000000000}';
  FSelectedProductPrivate := '{00000000-0000-0000-0000-000000000000}';
end;

procedure TDispensing.Change;
begin
  if Assigned(FOnChange) then FOnChange(self);
end;

procedure TDispensing.SetdispensingTotal(Value: Double);
begin
  if FupdateDispensing then
    begin
    FdispensingTotal := Value;
    UpdateTotals;
    end;
end;

procedure TDispensing.SetdispensingTotalCalc(Value: Double);
begin
  if FupdateDispensing then
    begin
    FdispensingTotalCalc := Value;
    UpdateTotals;
    end;
end;

procedure TDispensing.UpdateTotals;
begin

  FdispensingCost := FdispensingTotal * FdispensingItemCost;
  Change;

end;

constructor TPrescriptionItem.Create(ID, prmPrescriptionID, connection: String;
    prmAnthropometric: TAnthropometric; prmPrescriptionData: TPrescription);
begin

  FPrescriptionData     := prmPrescriptionData;
  FScriptLabel          := TRxLabel.Create;
  FBusyChanging         := False;
  FprescriptionID       := prmPrescriptionID;
  FDispenseByProduct    := False;

  if ID = '' then FdispensedItemID := CreateClassID else
    FdispensedItemID  := ID;

  FconnectionString := connection;

  FaddingItem       := False;
  // When loading the DB, if no record is found with this ID, it is assumed that
  // a new record needs to be added to the DB and this will be set to true.

  FAnthropometries      := prmAnthropometric;
  FDosing               := TDosingLevels.Create(FconnectionString);
  FdispensingDetail     := TProduct.Create(FconnectionString);
  FprescriptionDetail   := TProduct.Create(FconnectionString);
  FdispensingSummary    := TDispensing.Create;
  FdispensingProductList:= TProductList.Create(FconnectionString);
  FautoUpdate           := True;

  // procedure ???
  FDispensedItem := 'None';
  FdispensedItemArray := -1;



  // Get the data from the DB now everything has been setup.
  LoadFromDB;
  FdispensingProductList.LoadDrugs(prescriptionDetail.genericName, prescriptionDetail.route, FDispenseByProduct);
  CalculateDispensing;


  // Do this after loading the DB to prevent any events from causing a chain
  // reaction, but don't forget to force the update after loading
  FAnthropometries.OnChange           :=  AnthropometriesHasChanged;

  FdispensingDetail.OnChange          :=  DispensingChange;
  FdispensingDetail.OnProductChange   :=  DispensingProductChange;

  FprescriptionDetail.OnChange        :=  PrescriptionChange;
  FprescriptionDetail.OnProductChange :=  PrescriptionProductChange;

  FdispensingSummary.OnChange := DispensingTotalsChange;



end;

destructor TPrescriptionItem.Destroy;
begin
  FdispensingProductList.Free;
  FScriptLabel.Free;
  FdispensingDetail.OnChange := nil;
  FdispensingDetail.OnProductChange := nil;
  FdispensingDetail.Free;
  FprescriptionDetail.OnChange := nil;
  FprescriptionDetail.OnProductChange := nil;
  FprescriptionDetail.Free;
  FdispensingSummary.OnChange := nil;
  FdispensingSummary.Free;
//  FDosing.Free;

  // Don't free this one, it was passed by ref.
  FAnthropometries.OnChange := nil;

  inherited;
end;

procedure TPrescriptionItem.AnthropometriesHasChanged(Sender: TObject);
begin
  // DONE -cMM: TPrescriptionItem.AnthropometriesHasChanged default body inserted
end;

procedure TPrescriptionItem.CalculateDispensing;
const
  EMsg01 = 'Error calculating intuative dispensing data!' + #13;
  EMsg02 = 'Error building dispensing instruction.' + #13;
var
  daA, daB :double;   // dispensing amounts for eccentric, used with building instruction string
  bestMatch :integer;

  // the following variables are for ease of code reading only, that is why they are not very descriptive
  d, p    :TProduct;          // d= dispensing, p=prescription
  dpl     :TProductList;      // dpl = dispensingProductList
  ds      :TDispensing;

  sl      :integer;           //Duplicates the FdispensedItemArray

begin

//  try

  FBusyChanging := True;
  d   := FdispensingDetail;                                                     // This is entirely to make this easier to read.
  p   := FprescriptionDetail;
  dpl := FdispensingProductList;
  ds  := FdispensingSummary;

  //----------------------------------------------------------------------------


  // FdispensedItemArray is not an array, but the index of the product list.
  // FDispensedID will be empty if a user selected a product from the list,
  // returning -1 on the find.

  FdispensedItemArray := dpl.FindID(FDispensedID);
//  if FdispensedItemArray = -1 then FdispensedItemArray := dpl.Find(FDispensedItem);
  if FdispensedItemArray = -1 then FdispensedItemArray := dpl.Find(ds.dispensingDescription);

  if FDispenseByProduct then
    if FdispensedItemArray <> -1 then
      PrescriptionItem_FromStandardRegimen(dpl.Drugs[FdispensedItemArray].RegimenID);


  daA := 0;
  daB := 0;


  if FautoUpdate then //or FDispenseByProduct then // AutoUpdate allows for the automatic copy of prescription data over to the dispensing data.
                      // SHOULD switch itself off once the script has been authorised.
    begin
    d.genericName         := p.genericName;
    d.interval            := p.interval;
    d.intervalEccentricA  := p.intervalEccentricA;
    d.intervalEccentricB  := p.intervalEccentricB;
    d.duration            := p.duration;
    d.repeats             := p.repeats;
    d.route               := p.route;


    if lowercase(p.instructions) <> 'nil' then
      d.instructions        := p.instructions;
    end;

  CalculateProductList;         // this loads and calculates all data for each match product
  bestMatch := dpl.FindLowest;  // Finds the best or LOWEST scoring ratio.

  // Private value for recording which product the intuitive disp selected
  if bestMatch <> -1 then
    ds.SelectedProductPrivate := dpl.Drugs[bestMatch].ProductID;


  if FautoUpdate then
    if bestMatch <> -1 then
      FdispensedItemArray := bestMatch;

  if dpl.ProductCount > 0 then                                                  // Now work with the dispensing product list and try to do dispensing
    begin

    if FdispensedItemArray = -1 then FdispensedItemArray := 0;                  // No best match eas found, just use the first on in the list
    ds.selectedDrug     := FdispensedItemArray;

    sl := FdispensedItemArray;                                                  // Make sure to update the local working copy as well.


    /// Update to the product list calculated total.  TotalCalc should always be
    /// this value as dispensingTotal carries the actual dispensing amount.
    ds.dispensingTotalCalc := dpl.Drugs[sl].DispensingDrugTotal;

    // Now check if the pack needs to be broken as BP detail goes here
    if not ds.dispensingBP then
      begin
      // Pack is not to be broken, therefore must be a derivative of complete packs
      ds.dispensingTotal := dpl.Drugs[sl].CompletePacksRequired * dpl.Drugs[sl].PackSize;

      // Complete packs required carries the correct complete packs required.  Calc'ed in products
      ds.dispensingPackCount := dpl.Drugs[sl].CompletePacksRequired;
      end
      else
      begin
      // Pack can be broken, so figure out the actual amounts required.
      // First make sure that data is available
        if (dpl.Drugs[sl].DispensingDrugTotal <> 0) and (dpl.Drugs[sl].PackSize <> 0 ) then
          ds.dispensingPackCount := ds.dispensingTotal / dpl.Drugs[sl].PackSize
        else
        ds.dispensingPackCount  := 1;

//        MessageDlg(FloatToStr(ds.dispensingTotal), mtWarning, [mbOK], 0);

      end;

    ds.dispensingCost := dpl.Drugs[sl].PackCost * ds.dispensingPackCount;
    ds.dispensingUnit := dpl.Drugs[sl].PackDispensingUnit;
//    ds.dispensingDescription  :=
//      dpl.Drugs[sl].GenericName + ' ' + dpl.Drugs[sl].PackDescription;

    ds.dispensingDescription  := dpl.Drugs[sl].PackDescription;
    ds.productID      := dpl.Drugs[sl].ProductID;

    d.dose              := dpl.Drugs[sl].PackStrengthValue;
    d.doseEccentricA    := dpl.Drugs[sl].PackStrengthValue;
    d.doseEccentricB    := dpl.Drugs[sl].PackStrengthValue;
    d.doseUnit          := dpl.Drugs[sl].PackStrengthUnit;


      try
  //    daA := p.doseEccentricA / d.doseEccentricA;
  //    daB := p.doseEccentricB / d.doseEccentricB;
      daA := (p.doseEccentricA / dpl.Drugs[sl].PackStrengthValue) * dpl.Drugs[sl].PackDispensingValue;
      daB := (p.doseEccentricB / dpl.Drugs[sl].PackStrengthValue) * dpl.Drugs[sl].PackDispensingValue;

//      d.BuildInstruction(ds.dispensingUnit, daA, daB, p.isEccentricDose);  //Build the instruction string


      d.BuildInstruction( dpl.Drugs[sl].dispensedUnit, daA, daB, p.isEccentricDose,
                          dpl.Drugs[sl].dispensedVal);  //Build the instruction string


      except
      on e: Exception do
        raise Exception.Create(EMsg01 + e.Message);
      end;

    end
  else
    begin  ///if dpl.ProductCount > 0 then
    ds.dispensingTotal        := 0;
    ds.dispensingCost         := 0;
    ds.dispensingUnit         := 'None';
    ds.dispensingDescription  := 'Not Available';
    d.dose                    := 0;
    d.doseUnit                := 'None';
    end;

//  except
//    on e: Exception do
//      raise Exception.Create(EMsg02 + e.Message);
//  end;

  LabelUpdate;
  Dosing.DoseSuggested(d.genericName, d.dose, d.doseUnit, d.route, d.intervalPeriod);
  FBusyChanging := False;

end;

procedure TPrescriptionItem.CalculateProductList;
var
  remVal: Double;
  i, j :integer;

  scr, stAdd, pcAdd :double;
  // the following variables are for ease of code reading only, that is why they are not very descriptive
  d, p    :TProduct;          // d= dispensing, p=prescription
  dpl     :TProductList;      // dpl = dispensingProductList

  sl      :integer;           //Duplicates the FdispensedItemArray
const
  EMsg = 'Error calculating product dispensing data!' + #13;

begin

  //  try

  d   := FdispensingDetail;                                                     // This is entirely to make this easier to read.
  p   := FprescriptionDetail;
  dpl := FdispensingProductList;

  if dpl.ProductCount > 0 then
    for i := 0 to dpl.ProductCount-1 do
      with dpl.Drugs[i] do
//        try
        begin
        //p.doseUnit    := PackStrengthUnit;
        d.doseUnit    := PackStrengthUnit;

        /// intervalPeriod is set in hours, therefore divide by 24 to get daily dosing.
        PackItemCost  := PackCost / PackSize;
        DispensingDrugTotal:=
          (p.dose/PackStrengthValue) * PackDispensingValue *
          (24/d.intervalPeriod) * d.duration;
        DispensingCost := PackItemCost * DispensingDrugTotal;

        // Find out how many complete packs are required to fulfill script
        j := 1;
        while j > 0 do
          begin
            if DispensingDrugTotal <= (PackSize * j) then
              begin
              CompletePacksRequired := j;
              j := 0;
              end
            else
              j := j + 1;
          end;

        /// Now calculate the ratio on which intuative dispensing is based.
        // Reset numbers
        // Lowest value wins the intuitive dispensing
        scr   := 0;
        stAdd := 0;
        pcAdd := 0;

        PackSizeRatio := 0;
        try
        if DispensingDrugTotal < PackSize then

          PackSizeRatio := PackSize / DispensingDrugTotal
          else
          PackSizeRatio := DispensingDrugTotal / PackSize;  //dispensingTotal = calculated total.
        except
        end;

        if p.dose > 0 then
          StrengthRatio := p.dose / PackStrengthValue
          else
          StrengthRatio := 0;


        if not breakable then
          begin
          if Frac(StrengthRatio) <> 0 then RunningTotal(scr, 40000 );
          if p.dose < PackStrengthValue then RunningTotal(scr, 50000 );
          end;



        //STRENGTH
        RunningTotal(stAdd, ((StrengthRatio - 1) * 15), 0);                     // Decrease score according
        if Int(StrengthRatio) < 5 then
          begin
          remVal := Frac(StrengthRatio);
          if remVal <> 0 then
            RunningTotal(pcAdd, remVal * (Int(StrengthRatio) * -20) )
            else
            RunningTotal(pcAdd, (Int(StrengthRatio) * -10) )

          end;               // Take away points if it needs to be broken

                                                                                // NB Check here if tablet can be broken !!!!!!
//        if dispensedForm = FORM_LIQUID then stAdd := stAdd + 15;              // If this is a liquid, give some points back
        RunningTotal(scr, stAdd);                                               // Finished with strength


        //PACKSIZE
        RunningTotal(pcAdd, ((PackSizeRatio - 1) * 10), 0);                     // Decrease score according

        if Int(PackSizeRatio) < 5 then
          begin
          remVal := Frac(PackSizeRatio);
          if remVal <> 0 then
            RunningTotal(pcAdd, remVal * (Int(PackSizeRatio) * -20) )
            else
            RunningTotal(pcAdd, (Int(PackSizeRatio) * -10) );

          end;               // Take away points if it needs to be broken

                                                                                //  NB Check here if tablet can be broken !!!!!!
        RunningTotal(scr, pcAdd);                                               // Finished with strength
{
        // This was changed 24 may 2005.
        // Changed to play with liquids and juvinile disp.
        // Liquids were loosing out bigtime when caclulating scores.

        //** Original line :

}
//        if dispensedForm = FORM_LIQUID then pcAdd := pcAdd + 15;
//        if dispensedForm = FORM_LIQUID then pcAdd := pcAdd + (PackSizeRatio * 2);                //  If this is a liquid, give some points back



        // COST
        RunningTotal(scr, DispensingCost);  // To negatively impact, add positive values


//        if Frac(PackSizeRatio) = 0 then  pcAdd := 200 - (PackSizeRatio * 10);
//        if Frac(PackSizeRatio) = 0 then  pcAdd := pcAdd - (PCKRATIO * pcAdd);


        /// check if the prescribed route is the same...
        // and make sure it is impacted properly with negative values
        if d.route = Route then RunningTotal(scr, -ROUTERATIO);

        /// Check the age of the patient, and any one of JUVENILE age should get liquids
//        if FAnthropometries.AgeInYears <= JUVENILE then
//          if dispensedForm = FORM_LIQUID then
//            RunningTotal(scr, -ROUTERATIO);

          //        if FpatientAge <= JUVENILE then
//          if dispensedForm = FORM_LIQUID then
//            scr := scr - FORMRATIO;

//        scr := scr + ((StrengthRatio + PackSizeRatio) - (stAdd + pcAdd));  /// Boost the stength ratio
//        scr := Scr + (PackSizeRatio * PackSizeRatio); // boost values for lower pack amounts
//        scr := Scr + (DispensingCost);


        /// if the following are not fractional values, its good so improve ratio
        {
        if Frac(StrengthRatio) = 0 then
          stAdd := (STRRATIO * RATIOINCREASE) * (1 - StrengthRatio)
          else
          stAdd := (StrengthRatio * RATIOINCREASE) * STRENGTHRATIO_MULTIPLE;
        if Frac(PackSizeRatio) = 0 then
          pcAdd := (PCKRATIO * RATIOINCREASE) * (1 - PackSizeRatio)
          else
          pcAdd := (PackSizeRatio * RATIOINCREASE) * PACKRATIO_MULTIPLE;
         }
//        messagedlg('Pack:' + FloatToStr(pcAdd) + ' Strength : ' + FloatToStr(stAdd), mtWarning, [mbOK], 0);




{
        scr := scr + ((StrengthRatio + PackSizeRatio) - (stAdd + pcAdd));  /// Boost the stength ratio
        scr := Scr + (PackSizeRatio * PackSizeRatio); // boost values for lower pack amounts
        scr := Scr + (DispensingCost);
}
        ScoreRatio := scr;


//        except
//          on e: Exception do
//            raise Exception.Create(EMsg + e.Message);
        end;
end;

procedure TPrescriptionItem.Change;
begin
  if Assigned(FOnChange) then FOnChange(self);
end;

procedure TPrescriptionItem.DispensingChange(Sender : TObject);
begin

  if not FBusyChanging then
    begin
    FBusyChanging := True;
    CalculateDispensing;
    FBusyChanging := False;
    end;

end;

procedure TPrescriptionItem.DispensingProductChange(Sender : TObject);
begin

  if not FBusyChanging then
    begin
    FBusyChanging := True;
    if prescriptionDetail.FreeForm <> '' then
      FdispensingProductList.LoadDrugs(prescriptionDetail.genericName, prescriptionDetail.route, FDispenseByProduct)
      else
      FdispensingProductList.LoadDrugs(prescriptionDetail.genericName, '', FDispenseByProduct);
    CalculateDispensing;
    FBusyChanging := False;
    end;

end;

procedure TPrescriptionItem.DispensingTotalsChange(Sender : TObject);
begin

end;

procedure TPrescriptionItem.LoadFromDB;
begin

  DAL.LoadRxItemFromDB(Self, FconnectionString);
  
end;

function TPrescriptionItem.LoadFromDefaultDose: Boolean;
begin

  DAL.LoadProductDefaultDoseFromDB(Self, FconnectionString);

end;

procedure TPrescriptionItem.PrescriptionChange(Sender : TObject);
begin
  if not FBusyChanging then
    begin
    FBusyChanging := True;
    CalculateDispensing;
    FBusyChanging := False;
    end;
end;

function TPrescriptionItem.PrescriptionItem_FromStandardRegimen(prmRegimenID:
    string): Boolean;
begin

  DAL.LoadProductStandardRegimenFromDB(Self, prmRegimenID, FconnectionString);

end;

procedure TPrescriptionItem.PrescriptionProductChange(Sender : TObject);
begin
  if not FBusyChanging then
    begin
    FBusyChanging := True;
    LoadFromDefaultDose;
    FdispensingProductList.LoadDrugs(prescriptionDetail.genericName, prescriptionDetail.route, FDispenseByProduct);
    CalculateDispensing;
    FBusyChanging := False;
    end;
end;

procedure TPrescriptionItem.RunningTotal(var prmValue : double ; prmAmountToAdd
    : double ; prmMinVal : double = -100000000);
begin

  if prmAmountToAdd < prmMinVal then prmAmountToAdd := prmMinVal;
  prmValue := prmValue + prmAmountToAdd;
  
end;

procedure TPrescriptionItem.Save;
begin
  DAL.SaveRxItemToDB(Self, FconnectionString);
end;

procedure TPrescriptionItem.SetAnthropometries(const Value: TAnthropometric);
begin
  FAnthropometries := Value;
end;

procedure TPrescriptionItem.SetDispenseByProduct(const Value: Boolean);
begin
  FDispenseByProduct := Value;
  FdispensingProductList.LoadDrugs(prescriptionDetail.genericName, prescriptionDetail.route, FDispenseByProduct)
end;

procedure TPrescriptionItem.SetDispensedID(const Value: string);
begin
  if FDispensedID <> Value then
  begin
    FDispensedItem := '';
    FDispensedID := Value;
    CalculateDispensing;
  end;
end;

procedure TPrescriptionItem.SetDispensedItem(const Value: string);
begin

  FDispensedID := '';  // Clears any prevoius id for autoselection
  FDispensedItem                            := Value;
  CalculateDispensing

end;

procedure TPrescriptionItem.SetPrescriptionID(const Value: string);
begin
  FPrescriptionID := Value;
end;

procedure TPrescriptionItem.LabelUpdate;
begin
{
prmProduct: string; prmProductTotal: double;
    prmPrescriberInstruction, prmDispenserInstruction,
    prmDispenserSpecialInstruction, prmWarning, prmPatientName,
    prmReferenceNumber: string; prmRepeatNumber, prmRepeatCount: integer;
    prmDemander, prmDemanderPhone: strin
}


  FScriptLabel.UpdateLabel( FdispensingSummary.dispensingDescription,
                            FdispensingSummary.FdispensingTotal,
                            FprescriptionDetail.instructions,
                            FdispensingDetail.instructions,
                            FdispensingDetail.instructionsSpecial,
                            FdispensingDetail.warning,
                            FPrescriptionData.PatientName,
                            FPrescriptionData.ScriptNumber,
                            FPrescriptionData.RepeatNumber,
                            FPrescriptionData.RepeatTotal,
                            FPrescriptionData.InstitutionName,
                            FPrescriptionData.FInstitutionAddress);
end;

constructor TProductList.Create(conString :String);
begin
  inherited Create;
  FconnectionString := conString;
  FProductCount := 0;

end;

destructor TProductList.Destroy;
begin
  ClearList;
  inherited;
end;

procedure TProductList.ClearList;
var
  i :integer;
begin

  for i:= low(FDrugs) to high(FDrugs) do FDrugs[i].Free;
  FDrugs := nil;
  FProductCount := 0;

end;

function TProductList.Find(description :string): Integer;
var
  i :integer;
begin
  Result := -1;

  if FProductCount > 0 then
    for i := 0 to FProductCount -1 do
      if description = FDrugs[i].FPackDescription then
        Result := i;

end;

function TProductList.FindID(prmID : String): Integer;
var
  i :integer;
begin
  Result := -1;

  if FProductCount > 0 then
    for i := 0 to FProductCount -1 do
      if prmID = FDrugs[i].ProductID then
        Result := i;

end;

function TProductList.FindLowest: Integer;
var
  i :integer;
  lowestVal :double;
begin
  Result      := -1;
  lowestVal   := 20000;

  if FProductCount > 0 then
    for i := 0 to FProductCount -1 do
      if FDrugs[i].ScoreRatio <= lowestVal then
        begin
        Result := i;
        lowestVal := FDrugs[i].ScoreRatio;
        end;

end;

function TProductList.GetDrugs(Index: Integer): TDrugs;
begin
  if (Index > -1) and (Index < Length(FDrugs)) then
    Result := FDrugs[Index];
end;

function TProductList.GetLU_Packs: TStringList;
var
  retStr  : TStringlist;
  i : integer;
  str : string;

begin

  retStr := TStringList.Create;

  if FProductCount > 0 then
    for i := 0 to FProductCount -1 do
      begin
      str := FDrugs[i].PackDescription;
      if retStr.IndexOf(str) = -1 then retStr.Add(str);
      end;

  Result := retStr;
  
end;

procedure TProductList.LoadDrugs(genericName, routeStr: String; dispByProduct:
    Boolean);

begin

  try

    ClearList;
    FProductCount := 0;
    DAL.LoadProductListFromDB(FDrugs, FProductCount, genericName, routeStr, dispByProduct, FconnectionString);

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

constructor TDrugs.Create;
begin

  inherited Create;
  FPackDescription        := '';
  FPackSize               := 1;
  FPackCost               := 0;
  FPackDispensingUnit     := '';
  FPackDispensingValue    := 1;
  FPackItemCost           := 0;

  FPackStrengthValue      := 1;
  FPackStrengthUnit       := '';
  FRoute              := '';
  FStrengthRatio          := 1;
  FPackSizeRatio          := 1;
  FPackAvailable          := 1;

  FDispensingDose         := 1;
  FDispensingDrugTotal        := 0;
  FDispensingCost         := 0;

  FdispensedUnit          := '';
  FdispensedVal           := 0;
  FdispensedForm          := '';
  Fbreakable              := true;

  FCompletePacksRequired  := 1;



end;

constructor TAnthropometric.Create;
begin
  inherited Create;//Force the inherited create statement in case the params change
  FDateOfBirth := Now;
  FHeight := 0;
  FWeight := 0;
  FGender := 'M';
  FCalculating := False;

end;

constructor TAnthropometric.Create(prmDOB: TDateTime; prmHeight, prmWeight:
    Double; prmGender: string);
begin
  inherited Create;

  FDateOfBirth := prmDOB;
  FHeight := prmHeight;
  FWeight := prmWeight;
  FGender := prmGender;
  FCalculating := False;
  CalculateAnthropometries;

end;

procedure TAnthropometric.CalculateAnthropometries;
begin

  FCalculating := True;
  // Age
  FAgeInYears           := YearsBetween(now, FDateOfBirth);
  if FAgeInYears > 0 then
    FAgeInYearsModMonths  := MonthsBetween(now, FDateOfBirth) - (FAgeInYears * 12)
    else
    FAgeInYearsModMonths  := MonthsBetween(now, FDateOfBirth);


  // IBW = Ideal Body Weight
  // TODO -cUpdate IBW -oGavin Steel: Gavin is still going to check on the last factor (either 1.4 or 1.04)
  if (FHeight = 0) then
    begin
    FIBW := FWeight; //if no height is available, set IBW to weight property
    end
  else
    begin
    if (FGender = 'M') then
      FIBW := 50 + ( 2.3 * ((FHeight*0.3937) - 60))
      else
      FIBW := 45 + ( 2.3 * ((FHeight*0.3937) - 60)) * 1.04;
    end;

  // BMI = Body Mass Index
  if FIBW > 0 then
    FBMI := ((FWeight/FIBW) * 100)
    else
    FBMI := 0;

  // ABW = Adjusted Body Weight
  if FBMI > 100 then
    FABW := (FIBW + ( 0.4 * (FWeight - FIBW)))
    else
    FABW := FIBW;

  // BSA = Body Surface Area
  if ((FWeight > 0) and (FHeight > 0)) then
    FBSA := ((exp(0.425*ln(FWeight))) * (exp(0.725*ln(FHeight))) * 71.84)/10000
  else
    FBSA    := 0;

  // LBW = Lean Body Weight
  if FBMI >= 120 then FLBW := FABW;
  if ((FBMI > 100) and (FBMI < 120)) then FLBW := FIBW;
  if FBMI <= 100 then FLBW := FWeight;

  FCalculating := False;

  ValueChange(Self);

end;

procedure TAnthropometric.LoadProperties(prmDOB: TDateTime; prmHeight,
    prmWeight: Double; prmGender: string);
begin

  FDateOfBirth := prmDOB;
  FHeight := prmHeight;
  FWeight := prmWeight;
  FGender := prmGender;
  CalculateAnthropometries;

end;

procedure TAnthropometric.SetDateOfBirth(const Value: TDateTime);
begin
  if FDateOfBirth <> Value then
    begin
    FDateOfBirth := Value;
    CalculateAnthropometries;
    end;
end;

procedure TAnthropometric.SetGender(const Value: string);
begin
  if FGender <> Value then
    begin
    FGender := Value;
    CalculateAnthropometries;
    end;
end;

procedure TAnthropometric.SetHeight(const Value: Double);
begin
  if FHeight <> Value then
    begin
    FHeight := Value;
    CalculateAnthropometries;
    end;
end;

procedure TAnthropometric.SetWeight(const Value: Double);
begin
  if FWeight <> Value then
    begin
    FWeight := Value;
    CalculateAnthropometries;
    end;
end;

procedure TAnthropometric.ValueChange(Sender : TObject);
begin

  if (not FCalculating) then
    begin
    if Assigned(FOnChange) then FOnChange(Self);
    end;

end;

constructor TDosingLevels.Create(prmDBConStr: string);
begin
  inherited Create;//Force the inherited create statement in case the params change
  FDBConnectionString := prmDBConStr;
end;

procedure TDosingLevels.CalculateDosingLevels;
var
  doseRec, doseHi, doseLo :double;
begin

  FCalculating := True;

  FMgPerKgPerDay          := 0;
  FMgPerKgPerDose         := 0;
  FMgPerM2PerDay          := 0;
  FMgPerM2PerDose         := 0;
  FKgDayHi                := doseRec;
  FKgDayRec               := doseLo;
  FKgDayLo                := doseHi;
  FDosingErrorMsg         := '';

  if Assigned(FAnthro) then
    begin

    if FAnthro.Weight > 0 then
      begin
      FMgPerKgPerDay  := (FRxDose * FRxInterval) / FAnthro.Weight;
      FMgPerKgPerDose := FRxDose / FAnthro.Weight;
      end;

    if FAnthro.BSA > 0 then
      begin
      FMgPerM2PerDay  := (FRxDose * FRxInterval) / FAnthro.BSA;
      FMgPerM2PerDose := FRxDose / Fanthro.BSA;
      end;

    // Var parameters
    doseRec := 0;
    doseHi  := 0;
    doseLo  := 0;

    if FDBConnectionString <> '' then
      GetDoseRatios(FDBConnectionString, FRxGenericName, FRxRoute, FRxDoseUnit, FAnthro.AgeInYears , doseRec, doseLo, doseHi);

    FKgDayHi   := doseRec;
    FKgDayRec           := doseLo;
    FKgDayLo            := doseHi;

    if (FMgPerKgPerDay < FKgDayRec) or (FMgPerKgPerDay > KgDayLo) then
      FDosingErrorMsg := 'Dose Error';

    end; {Assigned FAnthro}

  FCalculating := False;
  ValueChange(Self);

end;

procedure TDosingLevels.DoseSuggested(prmGenericName: string; prmDose: Double;
    prmDoseUnit, prmRoute: string; prmInterval: Double);
begin
  FRxGenericName  := prmGenericName;
  FRxDose         := prmDose;
  FRxDoseUnit     := prmDoseUnit;
  FRxRoute        := prmRoute;
  FRxInterval     := prmInterval;
  CalculateDosingLevels;
end;

procedure TDosingLevels.SetM2DoseLo(const Value: Double);
begin
  FM2DoseLo := Value;
end;

procedure TDosingLevels.SetRxDose(const Value: Double);
begin
  FRxDose := Value;
end;

procedure TDosingLevels.SetRxDoseUnit(const Value: string);
begin
  FRxDoseUnit := Value;
end;

procedure TDosingLevels.SetRxGenericName(const Value: string);
begin
  FRxGenericName := Value;
end;

procedure TDosingLevels.SetRxInterval(const Value: Double);
begin
  FRxInterval := Value;
end;

procedure TDosingLevels.SetRxRoute(const Value: string);
begin
  FRxRoute := Value;
end;

procedure TDosingLevels.Refresh;
begin
  CalculateDosingLevels;
end;

procedure TDosingLevels.ValueChange(Sender : TObject);
begin

  if (not FCalculating) then
    begin
//    inherited ValueChange(Sender);
//    CalculateDosingLevels;
    if Assigned(FOnChange) then FOnChange(Self);
    end;

end;

procedure DAL.GetClinLabValues;
begin
{
    FCreatinine := GetClinLabValue(FDBCon, 'Sr Cr', 'mol/l', 'mg/dl', FSrCr.Value);
}
end;

procedure DAL.GetDoseRatios;
begin
{
  doseRec := 0;
  doseHi  := 0;
  doseLo  := 0;
  if FDBCon <> '' then
    GetDoseRatios(FDBCon, FGeneric, FRoute, FDoseUnit, FDateOfBirth.Years , doseRec, doseLo, doseHi);
}
end;

class function DAL.LoadProductDefaultDoseFromDB(var prmRx: TPrescriptionItem;
    const prmConnectionStr: string): Boolean;
var
  con :TADOConnection;
  qry :TADOQuery;
const
//  STR = 'select * from TblPrescriptionItem where prescriptionItem_ID = ''%s''';
STR = 'SELECT * FROM tblProductDosing WHERE (genericName_str = :GEN ) AND (defaultDose_int = 1)';
begin
  result := False;


  try
    con := TADOConnection.Create(nil);
    con.LoginPrompt := false;
    con.ConnectionString := prmConnectionStr;
    con.Open;
    qry := TADOQuery.Create(nil);
    qry.Connection := con;
    qry.SQL.Add(STR);
    qry.Parameters.ParamByName('GEN').Value := prmRx.prescriptionDetail.genericName;
    qry.Open;

    if qry.RecordCount > 0 then
      begin

      with prmRx.prescriptionDetail do
        begin
        doseEccentricA      := qry.FieldByName('doseRecommendedA_dbl').AsFloat;
        intervalEccentricA  := qry.FieldByName('intervalRecommendedA_str').AsString;
        doseEccentricB      := qry.FieldByName('doseRecommendedB_dbl').AsFloat;
        intervalEccentricB  := qry.FieldByName('intervalRecommendedB_str').AsString;
        doseUnit            := qry.FieldByName('doseUnit_str').AsString;
        duration            := qry.FieldByName('durationRecommended_dbl').AsFloat;
        route               := qry.FieldByName('routeRecommended_str').AsString;
        Indication          := qry.FieldByName('doseIndication_str').AsString;
        isEccentricDose     := qry.FieldByName('isEccentric_bol').AsBoolean;
        end;


      with prmRx.dispensingDetail do
        begin
        AutoInstruction     := not qry.FieldByName('usePreselectedProduct_bol').AsBoolean;
        instructions        := qry.FieldByName('productLabelInstruction_str').AsString;
        instructionsSpecial := qry.FieldByName('productLabelWarning_str').AsString;
        isEccentricDose     := qry.FieldByName('isEccentric_bol').AsBoolean;
        warning             := qry.FieldByName('productLabelInstructionAdditional_str').AsString;
        end;

      prmRx.autoUpdate := True;

      end;

    qry.Close;
    qry.Free;
    con.Close;
    con.Free;
    result := True;

  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;



end;

class procedure DAL.LoadProductListFromDB(var prmProduct: EDrugList; var
    prmProdCnt: Integer; const prmGeneric, prmRouteStr: String; const
    prmDispByProduct: Boolean; const prmConnectionStr: String);

var
  atp: Boolean;
  qry  :TADOQuery;
  con  :TADOConnection;
  str  :string;

begin

  try

    if not prmDispByProduct then
      begin
      if prmRouteStr <> '' then
        str   := 'select * from tblProductPackSize where (GenericName_str = ''' + prmGeneric + ''') AND (InstitutionEDL_bol = 1)'
        else
        str   := 'select * from tblProductPackSize where (GenericName_str = ''' + prmGeneric + ''') AND (Route_str = ''' + prmRouteStr + ''')  AND (InstitutionEDL_bol = 1)';
      end else
      str   := 'select * from strdprc_ProductWithStandardRegimen where (GenericName_str = ''' + prmGeneric + ''') AND (InstitutionEDL_bol = 1)';

    con := TADOConnection.Create(nil);
    con.ConnectionString := prmConnectionStr;
    con.LoginPrompt := False;
    qry := TADOQuery.Create(nil);
    with qry do
      try
      qry.Connection := con;
      con.Open;
      qry.SQL.Add(str);
      qry.Open;
      while not EOF do
        begin


        // Do a check of suitable product data before adding them for picking.
        // this will help prevent any errors of the products selection data

        atp := True;
        if atp then atp := not qry.FieldByName('StrengthValue_dbl').IsNull;
        if atp then atp := not qry.FieldByName('DispensingValue_dbl').IsNull;
        if atp then atp := not qry.FieldByName('dispensedValue_dbl').IsNull;
        if atp then atp := not qry.FieldByName('PackSizeValue_dbl').IsNull;

        if atp then atp := qry.FieldByName('StrengthValue_dbl').AsFloat <> 0;
        if atp then atp := qry.FieldByName('DispensingValue_dbl').AsFloat <> 0;
        if atp then atp := qry.FieldByName('dispensedValue_dbl').AsFloat <> 0;
        if atp then atp := qry.FieldByName('PackSizeValue_dbl').AsFloat <> 0;


        if atp then
          begin

          prmProdCnt := prmProdCnt + 1;
          SetLength(prmProduct, prmProdCnt);

          prmProduct[prmProdCnt -1] := TDrugs.Create;
          prmProduct[prmProdCnt -1].ProductID            := qry.FieldByName('productPackSize_ID').Asstring;


          // Extra fields are grabed when dispensing by product.
          if prmDispByProduct then
            begin
            prmProduct[prmProdCnt -1].PackDescription    := qry.FieldByName('packDescription_Str').AsString + ' - ' + qry.FieldByName('RxDescription').AsString;
            prmProduct[prmProdCnt -1].Regimen            := qry.FieldByName('RxDescription').AsString;
            prmProduct[prmProdCnt -1].RegimenID          := qry.FieldByName('productDosingID').AsString;
            end
            else
            prmProduct[prmProdCnt -1].PackDescription    := qry.FieldByName('packDescription_Str').AsString;

          // RxDescription
          prmProduct[prmProdCnt -1].Route                 := qry.FieldByName('Route_str').AsString;
          prmProduct[prmProdCnt -1].GenericName          := qry.FieldByName('GenericName_str').AsString;

          prmProduct[prmProdCnt -1].PackStrengthValue    := qry.FieldByName('StrengthValue_dbl').AsFloat;
          prmProduct[prmProdCnt -1].PackStrengthUnit     := qry.FieldByName('StrengthUnit_str').AsString;
          prmProduct[prmProdCnt -1].PackDispensingValue  := qry.FieldByName('DispensingValue_dbl').AsFloat;
          prmProduct[prmProdCnt -1].PackDispensingUnit   := qry.FieldByName('DispensingUnit_str').AsString;
          prmProduct[prmProdCnt -1].dispensedVal         := qry.FieldByName('dispensedValue_dbl').AsFloat;

          prmProduct[prmProdCnt -1].dispensedUnit        := qry.FieldByName('dispensedUnit_str').AsString;

          prmProduct[prmProdCnt -1].PackSize             := qry.FieldByName('PackSizeValue_dbl').AsFloat;

          prmProduct[prmProdCnt -1].dispensedForm        := qry.FieldByName('dispensingForm_str').Asstring;
          prmProduct[prmProdCnt -1].breakable            := qry.FieldByName('canBreakUnit').AsBoolean;

          prmProduct[prmProdCnt -1].PackAvailable        := qry.FieldByName('QtyOnHand_int').AsInteger;
          prmProduct[prmProdCnt -1].UnitsOnHand          := qry.FieldByName('UnitsOnHand_dbl').AsFloat;
          prmProduct[prmProdCnt -1].PackCost             := qry.FieldByName('Cost_mon').AsFloat;
          prmProduct[prmProdCnt -1].Administration       := qry.FieldByName('Administration_str').AsString;
          prmProduct[prmProdCnt -1].PackDescription      := qry.FieldByName('PackSizeValue_dbl').AsString + ' ' +   qry.FieldByName('PackSizeUnit_str').AsString;

          end;

        qry.Next;
        end;
      con.Close;
      finally
      qry.Free;
      con.Free;
      end;
  except
    on E:Exception do raise Exception.Create(e.Message);
  end;

end;

class function DAL.LoadProductStandardRegimenFromDB(var prmRx:
    TPrescriptionItem; const prmRegimenID, prmConnectionStr: string): Boolean;
var
  prvLabel          : TStringList;
  qryRegimen        : TADOQuery;
begin

  // Create all user objects
  //  prvLabel    := TStringList.Create;
  qryRegimen  := TADOQuery.Create(Application);

  // Setup datasource
  qryRegimen.ConnectionString := prmConnectionStr;
  qryRegimen.SQL.Add('SELECT * FROM tblProductDosing WHERE productDosingID = :PDID');
  qryRegimen.Parameters.ParamByName('PDID').Value := prmRegimenID;
  qryRegimen.Open;

  if qryRegimen.RecordCount > 0 then
    with qryRegimen, prmRx do
    begin

    prescriptionDetail.brandName          := 'None selected';
    prescriptionDetail.genericName        := FieldByName('genericName_str').AsString;
    prescriptionDetail.doseEccentricA     := FieldByName('doseRecommendedA_dbl').AsFloat;
    prescriptionDetail.intervalEccentricA := FieldByName('intervalRecommendedA_str').AsString;
    prescriptionDetail.doseEccentricB     := FieldByName('doseRecommendedB_dbl').AsFloat;
    prescriptionDetail.intervalEccentricB := FieldByName('intervalRecommendedB_str').AsString;
    prescriptionDetail.isEccentricDose    := FieldByName('isEccentric_bol').AsBoolean;
    dispensingDetail.isEccentricDose      := FieldByName('isEccentric_bol').AsBoolean;
    prescriptionDetail.duration           := FieldByName('durationRecommended_dbl').AsFloat;
    prescriptionDetail.route              := FieldByName('routeRecommended_str').AsString;
    prescriptionDetail.doseUnit           := FieldByName('doseUnit_str').AsString;
    prescriptionDetail.Indication         := FieldByName('doseIndication_str').AsString;

    prescriptionDetail.FreeForm           := FieldByName('freeForm_str').AsString;

    autoUpdate  := False;
    if FieldByName('productLabelInstruction_str').AsString <> '' then
      begin
      dispensingDetail.AutoInstruction := False;
      dispensingDetail.instructions := FieldByName('productLabelInstruction_str').AsString;
      end;

    if FieldByName('productLabelInstructionAdditional_str').AsString <> '' then
      begin
      dispensingDetail.instructionsSpecial := FieldByName('productLabelInstructionAdditional_str').AsString;
      end;

    dispensingDetail.warning := FieldByName('productLabelWarning_str').AsString;

    end;
  qryRegimen.Free;

end;

class function DAL.LoadRxItemFromDB(var prmRx: TPrescriptionItem;
    prmConnectionStr: string): Boolean;
var
  con :TADOConnection;
  qry :TADOQuery;
const
  STR = 'select * from TblPrescriptionItem where prescriptionItem_ID = ''%s''';
begin
  result := False;


  try
    con := TADOConnection.Create(nil);
    qry := TADOQuery.Create(nil);

    con.LoginPrompt := false;
    con.ConnectionString := prmConnectionStr;
    con.Open;
    qry.Connection := con;
    qry.SQL.Add(Format(STR, [prmRx.dispensedItemID]));
    qry.Open;
    if qry.RecordCount > 0 then
      begin

      with prmRx do
        begin
        autoUpdate          := qry.FieldByName('dispAutoDispense_bol').AsBoolean;
        DispenseByProduct   := qry.FieldByName('dispenseByProduct_bol').AsBoolean;
        end;

      with prmRx.prescriptionDetail do
        begin
        brandName           := qry.FieldByName('brandName_str').AsString;
        genericName         := qry.FieldByName('genericName_str').AsString;
        dose                := qry.FieldByName('dose_dbl').AsFloat;
        interval            := qry.FieldByName('interval_Str').AsString;
        doseEccentricA      := qry.FieldByName('doseEccentricA_dbl').AsFloat;
        intervalEccentricA  := qry.FieldByName('intervalEccentricA_Str').AsString;
        doseEccentricB      := qry.FieldByName('doseEccentricB_dbl').AsFloat;
        intervalEccentricB  := qry.FieldByName('intervalEccentricB_Str').AsString;

        doseUnit            := qry.FieldByName('doseUnits_Str').AsString;
        duration            := qry.FieldByName('duration_dbl').AsFloat;
        repeats             := qry.FieldByName('repeat_int').AsInteger;
        route               := qry.FieldByName('route_Str').AsString;
        instructions        := qry.FieldByName('instruction_Str').AsString;
        Indication          := qry.FieldByName('indication_Str').AsString;
        isEccentricDose     := qry.FieldByName('eccentricDose_bol').AsBoolean;
        FreeForm            := qry.FieldByName('prescFreeFormEdit_str').AsString;
        MaxDose             := qry.FieldByName('prescMaxDose_str').AsString;

        end;


      with prmRx.dispensingDetail do
        begin
        genericName         := qry.FieldByName('dispGenericName_str').AsString;
        dose                := qry.FieldByName('dispDose_dbl').AsFloat;
        interval            := qry.FieldByName('dispInterval_Str').AsString;
        doseEccentricA      := qry.FieldByName('dispDoseEccentricA_dbl').AsFloat;
        intervalEccentricA  := qry.FieldByName('dispIntervalEccentricA_Str').AsString;
        doseEccentricB      := qry.FieldByName('dispDoseEccentricB_dbl').AsFloat;
        intervalEccentricB  := qry.FieldByName('dispIntervalEccentricB_Str').AsString;

        doseUnit            := qry.FieldByName('dispDoseUnits_Str').AsString;
        duration            := qry.FieldByName('dispDuration_dbl').AsFloat;
        repeats             := qry.FieldByName('dispRepeat_int').AsInteger;
        route               := qry.FieldByName('dispRoute_Str').AsString;
        instructions        := qry.FieldByName('dispInstruction_Str').AsString;
        AutoInstruction     := qry.FieldByName('dispInstructionAuto_bol').AsBoolean;
        instructionsSpecial := qry.FieldByName('dispInstructionSpecial_Str').AsString;
        isEccentricDose     := qry.FieldByName('eccentricDose_bol').AsBoolean;

        warning             := qry.FieldByName('dispWarning_str').AsString;
        end;


      with prmRx.Anthropometries do
        begin

        Height        := qry.FieldByName('personHeight_int').AsFloat;
        Weight        := qry.FieldByName('personWeight_int').AsFloat;
        DateOfBirth   := qry.FieldByName('personDOB_dte').AsDateTime;
        end;

      with prmRx.dispensingSummary do
        begin
        dispensingDescription := qry.FieldByName('dispDescription_Str').AsString;
        dispensingCost        := qry.FieldByName('dispPackCost_mon').AsFloat;
        dispensingCost        := qry.FieldByName('dispItemCost_mon').AsFloat;
        dispensingTotal       := qry.FieldByName('dispDoseTotal_Dbl').AsFloat;
        dispensingPackCount   := qry.FieldByName('dispPacksToDispense_dbl').AsFloat;
        dispensingBP          := qry.FieldByName('dispBreakPack_bol').AsBoolean;
        productID             := qry.FieldByName('productPackSize_ID').AsString;
        SelectedProductPrivate := qry.FieldByName('prv_IntuitiveDispSelection_ID').AsString;
        ProtocolID            := qry.FieldByName('protocolID').AsString;
        end;

      with prmRx.Dosing do
        begin

        MgPerKgPerDay     := qry.FieldByName('personKgDay_dbl').AsFloat;
        MgPerKgPerDose    := qry.FieldByName('personKgDose_dbl').AsFloat;
        MgPerM2PerDay     := qry.FieldByName('personM2Day_dbl').AsFloat;
        MgPerM2PerDose    := qry.FieldByName('personM2Dose_dbl').AsFloat;
        KgDayLo           := qry.FieldByName('personKgDayLo_dbl').AsFloat;
        KgDayRec          := qry.FieldByName('personKgDayRec_dbl').AsFloat;
        KgDayHi           := qry.FieldByName('personKgDayHi_dbl').AsFloat;
        KgDoseLo          := qry.FieldByName('personKgDoseLo_dbl').AsFloat;
        KgDoseRec         := qry.FieldByName('personKgDoseRec_dbl').AsFloat;
        KgDoseHi          := qry.FieldByName('personKgDoseHi_dbl').AsFloat;
        M2DayLo           := qry.FieldByName('personM2DayLo_dbl').AsFloat;
        M2DayRec          := qry.FieldByName('personM2DayRec_dbl').AsFloat;
        M2DayHi           := qry.FieldByName('personM2DayHi_dbl').AsFloat;
        M2DoseLo          := qry.FieldByName('personM2DoseLo_dbl').AsFloat;
        M2DoseRec         := qry.FieldByName('personM2DoseRec_dbl').AsFloat;
        M2DoseHi          := qry.FieldByName('personM2DoseHi_dbl').AsFloat;

        end;



      end;

    qry.Close;
    qry.Free;
    con.Close;
    con.Free;
    result := True;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

class function DAL.SaveRxItemToDB(prmRx: TPrescriptionItem; prmConnectionStr:
    string): Boolean;
var
  con :TADOConnection;
  qry :TADOQuery;
  err : string;
const
  STR = 'select * from TblPrescriptionItem where prescriptionItem_ID = ''%s''';
begin

  result  := False;
  err     := '';


  try
    con := TADOConnection.Create(nil);
    qry := TADOQuery.Create(nil);

    try
    con.LoginPrompt := false;
    con.ConnectionString := prmConnectionStr;
    con.Open;
    qry.Connection := con;
    qry.SQL.Add(Format(STR, [prmRx.dispensedItemID]));
    qry.Open;
    if qry.RecordCount > 0 then qry.Edit else qry.Append;

    with prmRx.prescriptionDetail do
      begin

      qry.FieldByName('brandName_str').AsString := brandName;
      qry.FieldByName('genericName_str').AsString := genericName;
      qry.FieldByName('dose_dbl').AsFloat := dose;
      qry.FieldByName('doseUnits_Str').AsString := doseUnit;
      qry.FieldByName('interval_Str').AsString := interval;
      qry.FieldByName('interval_dbl').AsFloat := intervalPeriod;
      qry.FieldByName('duration_dbl').AsFloat := duration;
      qry.FieldByName('repeat_int').AsInteger := repeats;
      qry.FieldByName('route_Str').AsString := route;
      qry.FieldByName('instruction_Str').AsString := instructions;
      qry.FieldByName('indication_Str').AsString := Indication;
      qry.FieldByName('doseEccentricA_dbl').AsFloat := doseEccentricA;
      qry.FieldByName('intervalEccentricA_Str').AsString := intervalEccentricA;
      qry.FieldByName('doseEccentricB_dbl').AsFloat := doseEccentricB;
      qry.FieldByName('intervalEccentricB_Str').AsString := intervalEccentricB;
      qry.FieldByName('eccentricDose_bol').AsBoolean := isEccentricDose;
      qry.FieldByName('prescFreeFormEdit_str').AsString := FreeForm;
      qry.FieldByName('prescMaxDose_str').AsString := MaxDose;
      qry.FieldByName('prescriptionItemDescription_str').AsString := TDAL.RxDescription('',genericName,doseUnit,route,intervalEccentricA,intervalEccentricB,repeats,duration,doseEccentricA,doseEccentricB,isEccentricDose,True,FreeForm);

      end;


    with prmRx.dispensingDetail do
      begin

      qry.FieldByName('dispGenericName_str').AsString := genericName;
      qry.FieldByName('dispDose_dbl').AsFloat := dose;
      qry.FieldByName('dispDoseUnits_Str').AsString := doseUnit;
      qry.FieldByName('dispInterval_Str').AsString := interval;
      qry.FieldByName('dispInterval_dbl').AsFloat := intervalPeriod;
      qry.FieldByName('dispDuration_dbl').AsFloat := duration;
      qry.FieldByName('dispRepeat_int').AsInteger := repeats;
      qry.FieldByName('dispRoute_Str').AsString := route;
      qry.FieldByName('dispInstruction_Str').AsString := instructions;
      qry.FieldByName('dispDoseEccentricA_dbl').AsFloat := doseEccentricA;
      qry.FieldByName('dispIntervalEccentricA_Str').AsString := intervalEccentricA;
      qry.FieldByName('dispDoseEccentricB_dbl').AsFloat := doseEccentricB;
      qry.FieldByName('dispIntervalEccentricB_Str').AsString := intervalEccentricB;
      qry.FieldByName('dispWarning_str').AsString := warning;
      qry.FieldByName('dispInstructionSpecial_Str').AsString := instructionsSpecial;
      qry.FieldByName('eccentricDose_bol').AsBoolean := isEccentricDose;
      qry.FieldByName('dispInstructionAuto_bol').AsBoolean := AutoInstruction;

      end;


    with prmRx.dispensingSummary do
      begin

      qry.FieldByName('dispDescription_Str').AsString := dispensingDescription;
      qry.FieldByName('dispPackCost_mon').AsFloat := dispensingCost * 1; // dispensing cost already calculated!!
      qry.FieldByName('dispItemCost_mon').AsFloat := dispensingCost;
      qry.FieldByName('dispDoseTotal_Dbl').AsFloat := dispensingTotal;
      qry.FieldByName('dispPacksToDispense_dbl').AsFloat := dispensingPackCount;
      qry.FieldByName('dispBreakPack_bol').AsBoolean := dispensingBP;

      if productID = '' then productID := CreateClassID;
      if (productID = 'Nil') or (productID = 'nil') then productID := CreateClassID;

      if productID <> '' then qry.FieldByName('productPackSize_ID').AsString := productID;
      if SelectedProductPrivate <> '' then qry.FieldByName('prv_IntuitiveDispSelection_ID').AsString := SelectedProductPrivate;
      if ProtocolID <> '' then qry.FieldByName('protocolID').AsString := ProtocolID;

      end;

    with prmRx.Anthropometries do
      begin

      qry.FieldByName('personHeight_int').AsFloat := Height;
      qry.FieldByName('personWeight_int').AsFloat := Weight;
      qry.FieldByName('personDOB_dte').AsDateTime := DateOfBirth;
      qry.FieldByName('personIBW_dbl').AsFloat := IBW;
      qry.FieldByName('personBMI_dbl').AsFloat := BMI;
      qry.FieldByName('personABW_dbl').AsFloat := ABW;
      qry.FieldByName('personBSA_dbl').AsFloat := BSA;
      qry.FieldByName('personLBW_dbl').AsFloat := LBW;

      end;


    with prmRx.Dosing do
      begin

      // Error message builder
      if DosingErrorMsg <> '' then err := DosingErrorMsg + ', ' + err;
      qry.FieldByName('personWarningMsgShort_Str').AsString := err;

      qry.FieldByName('personKgDay_dbl').AsFloat := MgPerKgPerDay;
      qry.FieldByName('personKgDose_dbl').AsFloat := MgPerKgPerDose;
      qry.FieldByName('personM2Day_dbl').AsFloat := MgPerM2PerDay;
      qry.FieldByName('personM2Dose_dbl').AsFloat := MgPerM2PerDose;

      qry.FieldByName('personKgDayLo_dbl').AsFloat := KgDayLo;
      qry.FieldByName('personKgDayRec_dbl').AsFloat := KgDayRec;
      qry.FieldByName('personKgDayHi_dbl').AsFloat := KgDayHi;

      qry.FieldByName('personKgDoseLo_dbl').AsFloat := KgDoseLo;
      qry.FieldByName('personKgDoseRec_dbl').AsFloat := KgDoseRec;
      qry.FieldByName('personKgDoseHi_dbl').AsFloat := KgDoseHi;

      qry.FieldByName('personM2DayLo_dbl').AsFloat := M2DayLo;
      qry.FieldByName('personM2DayRec_dbl').AsFloat := M2DayRec;
      qry.FieldByName('personM2DayHi_dbl').AsFloat := M2DayHi;

      qry.FieldByName('personM2DoseLo_dbl').AsFloat := M2DoseLo;
      qry.FieldByName('personM2DoseRec_dbl').AsFloat := M2DoseRec;
      qry.FieldByName('personM2DoseHi_dbl').AsFloat := M2DoseHi;

      end;


    with prmRx do
      begin
//      if prmRx.autoUpdate then
//        qry.FieldByName('dispAutoDispense_bol').AsString := '1'
//        else
      qry.FieldByName('dispAutoDispense_bol').AsBoolean := autoUpdate;
      qry.FieldByName('dispenseByProduct_bol').AsBoolean := DispenseByProduct;


      qry.FieldByName('prescriptionItem_ID').AsString   := prmRx.dispensedItemID;
      qry.FieldByName('prescription_ID').AsString   := prmRx.PrescriptionID;

      // Save The Label
      qry.FieldByName('label_Line01_str').AsString   := prmRx.ScriptLabel.Line01;
      qry.FieldByName('label_Line02_str').AsString   := prmRx.ScriptLabel.Line02;
      qry.FieldByName('label_Line03_str').AsString   := prmRx.ScriptLabel.Line03;
      qry.FieldByName('label_Line04_str').AsString   := prmRx.ScriptLabel.Line04;
      qry.FieldByName('label_Line05_str').AsString   := prmRx.ScriptLabel.Line05;
      qry.FieldByName('label_Line06_str').AsString   := prmRx.ScriptLabel.Line06;
      qry.FieldByName('label_Line07_str').AsString   := prmRx.ScriptLabel.Line07;
      qry.FieldByName('label_Line08_str').AsString   := prmRx.ScriptLabel.Line08;

      // NEEDS TO GET DYNAMIC DATA
      qry.FieldByName('personPregnant_Bol').AsBoolean := False;
      qry.FieldByName('personSrCr_dbl').AsFloat := 0;
      qry.FieldByName('personCrCl_dbl').AsFloat := 0;

      end;



    qry.Post;
    qry.Close;
    con.Close;
    result := True;
    finally
    qry.Free;
    con.Free;
    end;
  except
    on E:Exception do raise Exception.Create(e.Message);
  end;

end;


class procedure TDAL.AddStr(var prmExist : string ; const prmNew : string;
    const prmSeperator : string = ' ');
begin
  prmExist := prmExist + prmSeperator + prmNew;
end;

class procedure TDAL.AddStrToStringList(prmStringValue : string ; var
    prmStringList : TStringList);
begin
  prmStringValue := Trim(prmStringValue);
  if prmStringValue <> '' then
    if LowerCase(prmStringValue) <> 'nil' then
      prmStringList.Add(prmStringValue);
end;

class function TDAL.RxDescription(prmBrandName, prmGenericName,
    prmDoseUnit, prmRoute, prmIntervalA, prmIntervalB : string ; prmRepeats :
    integer ; prmDuration, prmDoseA, prmDoseB : double ; prmIsEccentric :
    boolean ; prmShowRepeats : boolean = True ; prmFreeForm : string = ''):
    string;

var
  retStr : string;
  strDoseA, strDoseB, strDuration, strRepeats : string;
  strInterval : string;

begin


  strDoseA    := FloatToStr(prmDoseA);
  strDoseB    := FloatToStr(prmDoseB);
  strDuration := FloatToStr(prmDuration);
  strRepeats  := IntToStr(prmRepeats);
  if prmDuration > 1 then strInterval := ' days' else strInterval := ' day';

  retStr := ''; // Clear to start;

  // Drug name
  AddStr(retStr, prmGenericName, '');
  if prmBrandName <> '' then AddStr(retStr, '(' + prmBrandName + ')', '');

  //Free form description
  if prmFreeForm = '' then
    begin
    // Dose & unit
      AddStr(retStr, strDoseA);
      AddStr(retStr, prmDoseUnit, ''); // no gap
      AddStr(retStr, prmIntervalA);
      AddStr(retStr, prmRoute);
      AddStr(retStr, 'for ' + strDuration + strInterval);
      if prmIsEccentric then
        begin
        AddStr(retStr, strDoseB, ' THEN ' );
        AddStr(retStr, prmDoseUnit, ''); // no gap
        AddStr(retStr, prmIntervalB);
        AddStr(retStr, prmRoute);
        AddStr(retStr, 'for ' + strDuration + strInterval);
        end;
    end else
    AddStr(retStr, prmFreeForm);

  if prmShowRepeats then AddStr(retStr, '( X ' + strRepeats + ')');

  Result := Trim(retStr);

end;

class function TDAL.RxDoseRangeDescription(prmAgeLo : double ; prmAgeHi :
    double ; prmWeightLo : double ; prmWeightHi : double): string;

var
  retAgeStr: string;
  retWghtStr: string;
  strWeightHi: string;
  strWeightLo: string;
  strAgeHi: string;
  strAgeLo: string;
  retStr : string;


begin


  strAgeLo    := FloatToStr(prmAgeLo);
  strAgeHi    := FloatToStr(prmAgeHi);
  strWeightLo := FloatToStr(prmWeightLo);
  strWeightHi := FloatToStr(prmWeightHi);

  retAgeStr := ''; // Clear to start;
  retWghtStr := '';

  if prmAgeHi <> 0 then retAgeStr := strAgeHi + ' year(s)';
  if prmAgeLo <> 0 then
    begin

    if retAgeStr = '' then
      retAgeStr := 'From ' + strAgeLo + ' year(s)'
      else
      retAgeStr := 'Between ' + strAgeLo + ' and ' + retAgeStr;

    end else
    begin

    if retAgeStr <> '' then retAgeStr := 'Until ' + retAgeStr;

    end;

  if prmWeightHi <> 0 then retWghtStr := strWeightHi + ' kg(s)';
  if prmWeightLo <> 0 then
    begin

    if retWghtStr = '' then
      retWghtStr := 'From ' + strWeightLo + ' kg(s)'
      else
      retWghtStr := 'Between ' + strWeightLo + ' and ' + retWghtStr;

    end else
    begin

    if retWghtStr <> '' then retWghtStr := 'Up to ' + retWghtStr;

    end;

  retStr := Trim(retAgeStr + ' ' + retWghtStr);
  if retStr <> '' then retStr := '[' + retStr + ']';
  Result := retStr;

end;

class procedure TDAL.RxItemLabel(var prmLabel: TStringList; prmProduct:
    string; prmProductTotal: double; prmPrescriberInstruction,
    prmDispenserInstruction, prmDispenserSpecialInstruction, prmWarning,
    prmPatientName, prmReferenceNumber: string; prmRepeatNumber,
    prmRepeatCount: integer; prmHospital: string);
var
  prvHospital: string;
  prvReferenceNumber: string;
  prvRepeatDescription: string;
  prvDispenserInstruction: string;
  prvPrescriberInstruction: string;
  j: Integer;
  i: Integer;
  prvProduct: string;

begin

  {
  prmProduct := FItem.dispensingSummary.dispensingDescription
  prmProductTotal := FItem.dispensingSummary.dispensingTotal

  }

  // Clear label
  prmLabel.Clear;

  //******************
  // PRODUCT AND AMOUNT
  // Product pack to display on screen. Remove pack size info.  should start with '['
  for i := 1 to Length(prmProduct) do
    if prmProduct[i] = '[' then j := i -1;
  prvProduct := copy(prmProduct, 1, j); // Product name only.
  // Now add the units to dispense.
  prvProduct := prvProduct + ' [ x ' + FloatToStr(prmProductTotal) + ' ]';

  //******************
  // INSTRUCTION
  prvPrescriberInstruction := prmPrescriberInstruction;
  if prmDispenserSpecialInstruction <> '' then
    prvDispenserInstruction := prmDispenserInstruction + ' (' + prmDispenserSpecialInstruction + ')'
    else
    prvDispenserInstruction := prmDispenserInstruction;

  //******************
  // REPEATS
  prvRepeatDescription := '';
  if prmRepeatNumber > 0 then
    prvRepeatDescription := 'Repeat ' + IntToStr(prmRepeatNumber);
  if prmRepeatCount > 0 then
    if prvRepeatDescription <> '' then
      prvRepeatDescription := prvRepeatDescription + ' of ' + IntToStr(prmRepeatCount) + ' repeats'
      else
      prvRepeatDescription := prvRepeatDescription + 'Repeats ' + IntToStr(prmRepeatCount);
  if prvRepeatDescription <> '' then prvRepeatDescription := '  - [' + prvRepeatDescription + ']';
  // if its 1 of 1 then just blank it out
  if (prmRepeatNumber = 1) and (prmRepeatCount = 1) then prvRepeatDescription := '';



  //******************
  // REFERENCE NUMBER
  prvReferenceNumber := 'Rx # : ' + Trim(prmReferenceNumber);

  //******************
  // COMPLEX DESCRIPTION
  prvHospital := Trim(prmHospital) + ' -[' + DateToStr(Date) + ']';

  // Build Label - Blank or empty values will not be added.
  AddStrToStringList(prvProduct, prmLabel);
  AddStrToStringList(prmWarning, prmLabel);
  AddStrToStringList(prvPrescriberInstruction, prmLabel);
  AddStrToStringList(prvDispenserInstruction, prmLabel);
  AddStrToStringList(prmPatientName, prmLabel);
  AddStrToStringList(prvReferenceNumber + ' ' + prvRepeatDescription, prmLabel);
  AddStrToStringList(prvHospital, prmLabel);


end;

class function TDAL.TotalDuration(const prmConnectionString, ID :string):
    Double;
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;
begin

  result := 28;

  try
    bSTR   := 'SELECT MAX(duration_dbl) AS MaxDuration FROM TblPrescriptionItem GROUP BY prescription_ID HAVING (prescription_ID = ''%s'')';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := prmConnectionString;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(Format(bSTR, [ID]));
      Open;
      if RecordCount > 0 then
        Result := srchQry.FieldByName('MaxDuration').AsFloat
        else
        Result := 28;
      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

class function TDAL.TotalRepeats(const prmConnectionString, ID :string):
    Integer;
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;
begin

  result := 1;

  try
    bSTR   := 'SELECT MAX(repeat_int) AS MaxRepeats FROM TblPrescriptionItem GROUP BY prescription_ID HAVING (prescription_ID = ''%s'')';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := prmConnectionString;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(Format(bSTR, [ID]));
      Open;
      if RecordCount > 0 then
        Result := srchQry.FieldByName('MaxRepeats').AsInteger
        else
        Result := 1;
      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

constructor TRxLabel.Create;
var
  i :integer;
begin
  inherited;
  SetLength(FLine, 8);
  for i:= 0 to 7 do FLine[i] := '-';
  FLine01 := '<Product>';
  FLine02 := '<Warning>';
  FLine03 := '<PrescriberInstruction>';
  FLine04 := '<DispenserInstruction>';
  FLine05 := '<Patient>';
  FLine06 := '<Rx#>';
  FLine07 := '<Demander>';
  FLine08 := '<>';
end;

destructor TRxLabel.Destroy;
begin
  FLine := nil;
  inherited;
end;

procedure TRxLabel.UpdateLabel(prmProduct: string; prmProductTotal: double;
    prmPrescriberInstruction, prmDispenserInstruction,
    prmDispenserSpecialInstruction, prmWarning, prmPatientName,
    prmReferenceNumber: string; prmRepeatNumber, prmRepeatCount: integer;
    prmInstitution, prmInstitutionAddress: string);
var
  prvHospital: string;
  prvReferenceNumber: string;
  prvRepeatDescription: string;
  prvDispenserInstruction: string;
  prvPrescriberInstruction: string;
  j: Integer;
  i: Integer;
  prvProduct: string;

begin

  {
  prmProduct := FItem.dispensingSummary.dispensingDescription
  prmProductTotal := FItem.dispensingSummary.dispensingTotal

  }

  //******************
  // PRODUCT AND AMOUNT
  // Product pack to display on screen. Remove pack size info.  should start with '['
  for i := 1 to Length(prmProduct) do
    if prmProduct[i] = '[' then j := i -1;
  prvProduct := copy(prmProduct, 1, j); // Product name only.
  // Now add the units to dispense.
  prvProduct := prvProduct + ' [ x ' + FloatToStr(prmProductTotal) + ' ]';

  //******************
  // INSTRUCTION
  prvPrescriberInstruction := prmPrescriberInstruction;
  if prmDispenserSpecialInstruction <> '' then
    prvDispenserInstruction := prmDispenserInstruction + ' (' + prmDispenserSpecialInstruction + ')'
    else
    prvDispenserInstruction := prmDispenserInstruction;

  //******************
  // REPEATS
  prvRepeatDescription := '';
  if prmRepeatNumber > 0 then
    prvRepeatDescription := 'Repeat ' + IntToStr(prmRepeatNumber);
  if prmRepeatCount > 0 then
    if prvRepeatDescription <> '' then
      prvRepeatDescription := prvRepeatDescription + ' of ' + IntToStr(prmRepeatCount) + ' repeats'
      else
      prvRepeatDescription := prvRepeatDescription + 'Repeats ' + IntToStr(prmRepeatCount);
  if prvRepeatDescription <> '' then prvRepeatDescription := '  - [' + prvRepeatDescription + ']';
  // if its 1 of 1 then just blank it out
  if (prmRepeatNumber = 1) and (prmRepeatCount = 1) then prvRepeatDescription := '';



  //******************
  // REFERENCE NUMBER
  prvReferenceNumber := 'Rx # : ' + Trim(prmReferenceNumber);

  //******************
  // COMPLEX DESCRIPTION
  prvHospital := Trim(prmInstitution) + ' -[' + DateToStr(Date) + ']';

  // Build Label - Blank or empty values will not be added.
  FLine01 := prvProduct;
  FLine02 := prmWarning;
  FLine03 := prvPrescriberInstruction;
  FLine04 := prvDispenserInstruction;
  FLine05 := prmPatientName;
  FLine06 := prvReferenceNumber + ' : ' + prvRepeatDescription;
  FLine07 := prvHospital;
  FLine08 := prmInstitutionAddress;

  // Clear label
//  FLines.Clear;
//  for i := 0 to 7 do FLines.Add(FLines[i]);
  {
  AddStrToStringList(prvProduct, prmLabel);
  AddStrToStringList(prmWarning, prmLabel);
  AddStrToStringList(prvPrescriberInstruction, prmLabel);
  AddStrToStringList(prvDispenserInstruction, prmLabel);
  AddStrToStringList(prmPatientName, prmLabel);
  AddStrToStringList(prvReferenceNumber + ' ' + prvRepeatDescription, prmLabel);
  AddStrToStringList(prvHospital, prmLabel);
  }

end;







end.

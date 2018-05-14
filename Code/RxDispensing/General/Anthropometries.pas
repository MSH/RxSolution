unit Anthropometries;

interface

uses
  SysUtils, Classes, ComObj, Dialogs, DB, ADODB, Variants,

  DateUtils, TPropertyClasses;

const
  M = 1;  //MALE
  F = 2;  //FEMALE
  O = 3;  //OTHER

type






  TAnthropometries = class(TRow)
  private
    FIBW: TDoubleProperty;
    FABW: TDoubleProperty;
    FBMI: TDoubleProperty;
    FBSA: TDoubleProperty;
    FSex: TStringProperty;
    FHeight: TIntegerProperty;
    FWeight: TIntegerProperty;
    FGender: Integer;
    FCrCl: TDoubleProperty;
    FSrCr: TDoubleProperty;
    FLBW: TDoubleProperty;
    FDateOfBirth: TDateProperty;
    FOnChange: TNotifyEvent;
    FCreatinine: Double;
    FDBCon: string;
    FMgPerKgPerDay: TDoubleProperty;
    FMgPerM2PerDay: TDoubleProperty;
    FDose: TDoubleProperty;
    FInterval: string;
    FMgPerM2PerDose: TDoubleProperty;
    FMgPerKgPerDose: TDoubleProperty;
    FCalculating: Boolean;
    FIntervalVal: Double;
    FGeneric: string;
    FDoseUnit: string;
    FDaily_Dose_Recommended: TDoubleProperty;
    FDaily_Dose_Hi: TDoubleProperty;
    FDaily_Dose_Low: TDoubleProperty;
    FRoute: string;
    FPregnant: Boolean;
    function GetGender(Value : String): Integer;
    procedure SetInterval(const Value: string);
  protected
  public
    constructor Create; overload;
    procedure ValueChange(Sender : TObject); override;
    procedure CalculateAnthropometries;
    function Get_IBW(const prmHeight : integer ; const prmWeight : integer ; const
        prmGender : integer): Double;
    property IBW: TDoubleProperty read FIBW;
    property ABW: TDoubleProperty read FABW;
    property BMI: TDoubleProperty read FBMI;
    property BSA: TDoubleProperty read FBSA;
    property Sex: TStringProperty read FSex write FSex;
    property Height: TIntegerProperty read FHeight write FHeight;
    property Weight: TIntegerProperty read FWeight write FWeight;
    property CrCl: TDoubleProperty read FCrCl;
    property SrCr: TDoubleProperty read FSrCr write FSrCr;
    property LBW: TDoubleProperty read FLBW;
    property DateOfBirth: TDateProperty read FDateOfBirth write FDateOfBirth;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property DBCon: string read FDBCon write FDBCon;
    property MgPerKgPerDay: TDoubleProperty read FMgPerKgPerDay write
        FMgPerKgPerDay;
    property MgPerM2PerDay: TDoubleProperty read FMgPerM2PerDay write
        FMgPerM2PerDay;
    property Dose: TDoubleProperty read FDose write FDose;
    property Interval: string read FInterval write SetInterval;
    property MgPerM2PerDose: TDoubleProperty read FMgPerM2PerDose write
        FMgPerM2PerDose;
    property MgPerKgPerDose: TDoubleProperty read FMgPerKgPerDose write
        FMgPerKgPerDose;
    property Generic: string read FGeneric write FGeneric;
    property DoseUnit: string read FDoseUnit write FDoseUnit;
    property Daily_Dose_Recommended: TDoubleProperty read FDaily_Dose_Recommended
        write FDaily_Dose_Recommended;
    property Daily_Dose_Hi: TDoubleProperty read FDaily_Dose_Hi write
        FDaily_Dose_Hi;
    property Daily_Dose_Low: TDoubleProperty read FDaily_Dose_Low write
        FDaily_Dose_Low;
    property Route: string read FRoute write FRoute;
    property IntervalVal: Double read FIntervalVal write FIntervalVal;
    property Pregnant: Boolean read FPregnant write FPregnant;
  end;



implementation

uses SystemGeneralMethods;

procedure TAnthropometries.CalculateAnthropometries;
var
  FBSA_1    :double;
  Cr_Weight :double;
  doseRec, doseHi, doseLo :double;
begin

  FCalculating := True;
  FGender := GetGender(FSex.Value);

  // IBW = Ideal Body Weight
  // TODO -cUpdate IBW -oGavin Steel: Gavin is still going to check on the last factor (either 1.4 or 1.04)
  if (FHeight.Value = 0) then
    begin
    FIBW.Value := FWeight.Value; //if no height is available, set IBW to weight property
    end
  else
    begin
    if (FGender = M) then
      FIBW.Value := 50 + ( 2.3 * ((FHeight.Value*0.3937) - 60))
      else
      FIBW.Value := 45 + ( 2.3 * ((FHeight.Value*0.3937) - 60)) * 1.04;
    end;

  // BMI = Body Mass Index
  if FIBW.Value > 0 then
    FBMI.Value := ((FWeight.Value/FIBW.Value) * 100)
    else
    FBMI.Value := 0;

  // ABW = Adjusted Body Weight
  if FBMI.Value > 100 then
    FABW.Value := (FIBW.Value + ( 0.4 * (FWeight.Value - FIBW.Value)))
    else
    FABW.Value := FIBW.Value;

  // BSA = Body Surface Area
  if ((FWeight.Value > 0) and (FHeight.Value > 0)) then
    begin
    FBSA_1    := (exp(0.425*ln(FWeight.Value))) * (exp(0.725*ln(FHeight.Value))) * 71.84;
    FBSA.Value:= FBSA_1/10000;
    end
  else
    FBSA.Value    := 0;

  // LBW = Lean Body Weight
  if FBMI.Value >= 120 then FLBW.Value := FABW.Value;
  if ((FBMI.Value > 100) and (FBMI.Value < 120)) then FLBW.Value := FIBW.Value;
  if FBMI.Value <= 100 then FLBW.Value := FWeight.Value;

  // Creatinine clearance
  // Creatinine Clearance value already converted from DB to selected unit
  FCreatinine := 0;

  if FDBCon <> '' then
    FCreatinine := GetClinLabValue(FDBCon, 'Sr Cr', 'mol/l', 'mg/dl', FSrCr.Value);

  Cr_Weight := 0;
  if FIBW.Value = 0 then Cr_Weight := FWeight.Value;
  if FWeight.Value > FIBW.Value then Cr_Weight := FIBW.Value;
  if FWeight.Value <= FIBW.Value then Cr_Weight := FABW.Value;

  if FCreatinine > 0 then
    begin
    if (FGender = M) then
      FCrCl.Value := ((140-FDateOfBirth.Years) * Cr_Weight)/(FCreatinine * 72)
    else
      FCrCl.Value := ((140-FDateOfBirth.Years) * Cr_Weight)/(FCreatinine * 72) * (0.85);
    end;

//  FMgPerKgPerDay.Value  := 0;
//  FMgPerM2PerDay.Value  := 0;
//  FMgPerKgPerDose.Value  := 0;
//  FMgPerM2PerDose.Value  := 0;


  if FWeight.Value > 0 then FMgPerKgPerDay.Value := (FDose.Value * FIntervalVal) / FWeight.Value;
  if FBSA.Value > 0 then FMgPerM2PerDay.Value := (FDose.Value * FIntervalVal) / FBSA.Value;

  if FWeight.Value > 0 then FMgPerKgPerDose.Value := FDose.Value / FWeight.Value;
  if FBSA.Value > 0 then FMgPerM2PerDose.Value := FDose.Value / FBSA.Value;

  doseRec := 0;
  doseHi  := 0;
  doseLo  := 0;
  if FDBCon <> '' then
    GetDoseRatios(FDBCon, FGeneric, FRoute, FDoseUnit, FDateOfBirth.Years , doseRec, doseLo, doseHi);
  FDaily_Dose_Recommended.Value := doseRec;
  FDaily_Dose_Low.Value         := doseLo;
  FDaily_Dose_Hi.Value          := doseHi;

  FCalculating := False;

end;

constructor TAnthropometries.Create;
begin
  inherited Create;//Force the inherited create statement in case the params change
  FCreatinine   := 1;
  FDBCon        := '';
  FCalculating  := False;
  FIntervalVal  := 1;
  FGeneric      := '';
  FRoute        := '';
  FDoseUnit     := '';
  FPregnant     := False;

  FABW := TDoubleProperty.Create('');
  FABW.DecimalPlaces := 2;
  AddColumn(FABW);

  FBMI := TDoubleProperty.Create('');
  FBMI.DecimalPlaces := 1;
  FBMI.Suffix := '%';
  AddColumn(FBMI);

  FBSA := TDoubleProperty.Create('');
  FBSA.DecimalPlaces := 2;
  FBSA.Suffix := 'm²';
  AddColumn(FBSA);

  FCrCl := TDoubleProperty.Create('');
  AddColumn(FCrCl);

  FSrCr := TDoubleProperty.Create('');
  AddColumn(FSrCr);

  FIBW := TDoubleProperty.Create('');
  FIBW.DecimalPlaces := 2;
  AddColumn(FIBW);

  FLBW := TDoubleProperty.Create('');
  FLBW.DecimalPlaces := 2;
  AddColumn(FLBW);

  FDateOfBirth := TDateProperty.Create('');
  AddColumn(FDateOfBirth);

  FHeight := TIntegerProperty.Create('');
  AddColumn(FHeight);

  FWeight := TIntegerProperty.Create('');
  AddColumn(FWeight);

  FSex := TStringProperty.Create('');
  AddColumn(FSex);

  FMgPerKgPerDay := TDoubleProperty.Create('');
  AddColumn(FMgPerKgPerDay);

  FMgPerM2PerDay := TDoubleProperty.Create('');
  AddColumn(FMgPerM2PerDay);

  FMgPerKgPerDose := TDoubleProperty.Create('');
  AddColumn(FMgPerKgPerDose);

  FMgPerM2PerDose := TDoubleProperty.Create('');
  AddColumn(FMgPerM2PerDose);

  FDaily_Dose_Recommended := TDoubleProperty.Create('');
  AddColumn(FDaily_Dose_Recommended);

  FDaily_Dose_Hi := TDoubleProperty.Create('');
  AddColumn(FDaily_Dose_Hi);

  FDaily_Dose_Low := TDoubleProperty.Create('');
  AddColumn(FDaily_Dose_Low);


  FDose := TDoubleProperty.Create('');
  AddColumn(FDose);

  FGender     := O;  //internal int to manage sex type.  Interpreted from FSex property
  FSex.Value  := 'Other';

end;

function TAnthropometries.GetGender(Value : String): Integer;
var
  SexType :integer;
begin

  SexType := O;
  if (UpperCase(Value) = 'MALE') or (UpperCase(Value) = 'M') then SexType := M;
  if (UpperCase(Value) = 'FEMALE') or (UpperCase(Value) = 'F') then SexType := F;

  if SexType = O then Value := 'Other';
  Result := SexType;

end;

function TAnthropometries.Get_IBW(const prmHeight : integer ; const prmWeight :
    integer ; const prmGender : integer): Double;
begin

  // IBW = Ideal Body Weight
  // TODO -cUpdate IBW -oGavin Steel: Gavin is still going to check on the last factor (either 1.4 or 1.04)
  Result := prmWeight;
  if (prmHeight = 0) then
    begin
    Result := prmWeight; //if no height is available, set IBW to weight property
    end else
    begin
    if (prmGender = M) then
      Result := 50 + ( 2.3 * ( ( prmHeight * 0.3937 ) - 60 ) )
      else
      Result := 45 + ( 2.3 * ( ( prmHeight * 0.3937 ) - 60 ) ) * 1.04;
    end;

end;

procedure TAnthropometries.ValueChange(Sender : TObject);
begin

  if (not FCalculating) then
    begin
    inherited ValueChange(Sender);
    CalculateAnthropometries;
    if Assigned(FOnChange) then FOnChange(Self);
    end;

end;

procedure TAnthropometries.SetInterval(const Value: string);
begin

//  MessageDlg(Value + #13 + FDBCon, mtWarning, [mbOK], 0);
  FInterval := Value;
  if FDBCon <> '' then
    FIntervalVal := 24 / GetAbbreviationValue(FDBCon, Value)
  else
    FIntervalVal := 1;
end;


end.

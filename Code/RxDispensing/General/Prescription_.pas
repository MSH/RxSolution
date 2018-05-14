unit Prescription_;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, ADODB, ComObj;


type

  TPrescription = class(TObject)
  private
    class procedure AddStr(var prmExist : string ; const prmNew : string; const
        prmSeperator : string = ' ');
    class procedure AddStrToStringList(prmStringValue : string ; var prmStringList
        : TStringList);
    class function GetRouteDescription(const prmConnectionString : String ; const
        prmRoute : String ; prmLanguage : String = 'English'): string;
    class function IsActive(const prmConnectionString, prmStatusID :string):
        Boolean;
  protected
  public
    procedure GetListOfAbbreviations(conStr :string; var listOfNames :TStringList;
        pType:string = '');
    procedure GetListOfBrandNames(conStr :string; var listOfNames :TStringList);
    procedure GetListOfClinics(conStr :string; var listOfNames :TStringList);
    procedure GetListOfGenericNames(conStr :string; var listOfNames :TStringList);
    procedure GetListOfIndications(conStr :string; var listOfNames :TStringList);
    procedure GetListOfInstructionsSpecial(conStr :string; var listOfNames
        :TStringList);
    procedure GetListOfRoutes(conStr :string; var listOfNames :TStringList);
    class function TotalDuration(const prmConnectionString, ID :string): Double;
    class function TotalRepeats(const prmConnectionString, ID :string): Integer;
    class procedure RX_Instructions(const prmConnectionString : String ; const
        prmRoute : String);
    class function RxDescription(prmBrandName, prmGenericName, prmDoseUnit,
        prmRoute, prmIntervalA, prmIntervalB : string ; prmRepeats : integer ;
        prmDuration, prmDoseA, prmDoseB : double ; prmIsEccentric : boolean ;
        prmShowRepeats : boolean = True ; prmFreeForm : string = ''): string;
    class function RxActiveStatus(const prmConnectionString, prmRxID :string):
        Boolean;
    class function RxDoseRangeDescription(prmAgeLo : double ; prmAgeHi : double ;
        prmWeightLo : double ; prmWeightHi : double): string;
    class procedure RxItemLabel(var prmLabel: TStringList; prmProduct: string;
        prmProductTotal: double; prmPrescriberInstruction, prmDispenserInstruction,
        prmDispenserSpecialInstruction, prmWarning, prmPatientName,
        prmReferenceNumber: string; prmRepeatNumber, prmRepeatCount: integer;
        prmHospital: string);
  end;

  TDosingLevel = class(TObject)
  private
    FDoseA: Double;
    procedure SetDoseA(const Value: Double);
  public
    property DoseA: Double read FDoseA write SetDoseA;
  end;

implementation

class procedure TPrescription.AddStr(var prmExist : string ; const prmNew :
    string; const prmSeperator : string = ' ');
begin
  prmExist := prmExist + prmSeperator + prmNew;
end;

class procedure TPrescription.AddStrToStringList(prmStringValue : string ; var
    prmStringList : TStringList);
begin
  prmStringValue := Trim(prmStringValue);
  if prmStringValue <> '' then
    if LowerCase(prmStringValue) <> 'nil' then
      prmStringList.Add(prmStringValue);
end;

procedure TPrescription.GetListOfAbbreviations(conStr :string; var listOfNames
    :TStringList; pType:string = '');
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    if pType = '' then pType := 'Interval';
    bSTR   := 'select abbreviation_Str from tblAbbreviations where abbreviationType_Str = ''' + pType +'''';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('abbreviation_Str').AsString);
          next;
          end;

      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TPrescription.GetListOfBrandNames(conStr :string; var listOfNames
    :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select brandName_Str from tblBrandName order by brandName_Str';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('brandName_Str').AsString);
          next;
          end;

      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TPrescription.GetListOfClinics(conStr :string; var listOfNames
    :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select distinct downRefferal_Str from tblPrescription';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      listOfNames.Add('<ALL>');
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('downRefferal_Str').AsString);
          next;
          end;

      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TPrescription.GetListOfGenericNames(conStr :string; var listOfNames
    :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select distinct GenericName_str from tblProductPackSize';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('GenericName_str').AsString);
          next;
          end;

      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TPrescription.GetListOfIndications(conStr :string; var listOfNames
    :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select distinct indication_Str from TblPrescriptionItem';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('indication_Str').AsString);
          next;
          end;
      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TPrescription.GetListOfInstructionsSpecial(conStr :string; var
    listOfNames :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select distinct dispInstructionSpecial_Str from TblPrescriptionItem';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('dispInstructionSpecial_Str').AsString);
          next;
          end;
      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TPrescription.GetListOfRoutes(conStr :string; var listOfNames
    :TStringList);
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    listOfNames.Clear;
    bSTR   := 'select Code_str from tlkRoute';
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := conStr;
    myConn.LoginPrompt := False;
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := myConn;
      myConn.Open;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        while not EOF do
          begin
          listOfNames.Add(srchQry.FieldByName('Code_str').AsString);
          next;
          end;
      myConn.Close;
      finally
      srchQry.Free;
      myConn.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

class function TPrescription.TotalDuration(const prmConnectionString, ID
    :string): Double;
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

class function TPrescription.TotalRepeats(const prmConnectionString, ID
    :string): Integer;
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

class procedure TPrescription.RX_Instructions(const prmConnectionString : String
    ; const prmRoute : String);
var
  prvInstruction : string;

  dispStr   :string;
  r, t, dispValue      :double;
  routeInstr, routeInstrDesc, dispUnits, doseInstr :string;
  rotations, i :integer;

begin

{
dispUnit : string; dispValueA,dispValueB : double; eccentric :boolean; unitVal : double
}

  prvInstruction := '';
  AddStr(prvInstruction, GetRouteDescription(prmConnectionString, prmRoute));
{

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
      if r <= 0.99 then doseInstr := '¾ three quarters of a';
      if r <= 0.70 then doseInstr := '½ a half of a' ;
      if r <= 0.40 then doseInstr := '¼ a quarter of a';
      if r <= 0.1 then doseInstr := '';
      if t > 0 then doseInstr := Format('%.0f', [t]) + doseInstr;

      // plural, language issues
      dispUnits := LowerCase(dispUnit);
      if t > 1 then dispUnits := LowerCase(dispUnit) + 's';
      Finstructions := Finstructions + routeInstr + ' ' + doseInstr + ' ' + dispUnits + ' ' + routeInstrDesc;

      end; // for i:= 1 to rotations

    Change;
    end;
}
end;

class function TPrescription.GetRouteDescription(const prmConnectionString :
    String ; const prmRoute : String ; prmLanguage : String = 'English'):
    string;

const
  PARAMNAME = 'prvRoute';
  SQLSTR    = 'select Instruction_Str from tlkRoute where Code_str = :' + PARAMNAME;

var
  srchQry   :TADOQuery;
  myConn    :TADOConnection;

begin

Result := '-';
try
  myConn := TADOConnection.Create(nil);
  srchQry := TADOQuery.Create(nil);
  myConn.ConnectionString := prmConnectionString;
  myConn.LoginPrompt := False;

  with srchQry do
    try
    Connection := myConn;
    myConn.Open;
    SQL.Add(SQLSTR);
    Parameters.ParamByName(PARAMNAME).Value := prmRoute;
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

class function TPrescription.RxDescription(prmBrandName, prmGenericName,
    prmDoseUnit, prmRoute, prmIntervalA, prmIntervalB : string ; prmRepeats :
    integer ;  prmDuration, prmDoseA, prmDoseB : double ; prmIsEccentric :
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

class function TPrescription.IsActive(const prmConnectionString, prmStatusID
    :string): Boolean;
const
  PARAMNAME = 'prvStatusID';
  SQLSTR    = 'select prescriptionStatusActive_bol from tblPrescriptionStatus where prescriptionStatus_ID = :' + PARAMNAME;

var
  srchQry   :TADOQuery;
  myConn    :TADOConnection;

begin

Result := False;
try
  myConn := TADOConnection.Create(nil);
  srchQry := TADOQuery.Create(nil);
  myConn.ConnectionString := prmConnectionString;
  myConn.LoginPrompt := False;

  with srchQry do
    try
    Connection := myConn;
    myConn.Open;
    SQL.Add(SQLSTR);
    Parameters.ParamByName(PARAMNAME).Value := prmStatusID;
    Open;
    Result := FieldByname('prescriptionStatusActive_bol').AsBoolean;
    except
    end;
finally
  srchQry.Free;
  myConn.Free;
end;

end;

class function TPrescription.RxActiveStatus(const prmConnectionString, prmRxID
    :string): Boolean;
const
  PARAMNAME = 'prvRxID';
  SQLSTR    = 'select prescriptionStatus_ID from TblPrescription where prescription_ID = :' + PARAMNAME;

var
  srchQry   :TADOQuery;
  myConn    :TADOConnection;
  prvRxID   : string;

begin

Result := False;
try
  myConn := TADOConnection.Create(nil);
  srchQry := TADOQuery.Create(nil);
  myConn.ConnectionString := prmConnectionString;
  myConn.LoginPrompt := False;

  with srchQry do
    try
    Connection := myConn;
    myConn.Open;
    SQL.Add(SQLSTR);
    Parameters.ParamByName(PARAMNAME).Value := prmRxID;
    Open;
    prvRxID := FieldByname('prescriptionStatus_ID').AsString;
    Result := IsActive(prmConnectionString, prvRxID);
    except
    end;
finally
  srchQry.Free;
  myConn.Free;
end;

end;

class function TPrescription.RxDoseRangeDescription(prmAgeLo : double ;
    prmAgeHi : double ; prmWeightLo : double ; prmWeightHi : double): string;

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

class procedure TPrescription.RxItemLabel(var prmLabel: TStringList;
    prmProduct: string; prmProductTotal: double; prmPrescriberInstruction,
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

procedure TDosingLevel.SetDoseA(const Value: Double);
begin
  if FDoseA <> Value then
  begin
    FDoseA := Value;
  end;
end;


end.

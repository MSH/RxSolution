unit PrescriptionUtilities;

interface

uses
  SysUtils, Classes, DB, ADODB, Variants, Dialogs,
  Math;

const
  _EDIT_NORMAL = 0;
  _EDIT_REPEAT = 1;
  _EDIT_POSTEDCOLLECTED = 2;
  _EDIT_POSTEDNOTCOLLECTED = 3;

  STATUS_ACTIVE = 'Active';
  POST_ALL = 0;
  STATUSDESC_POSTALL = 'POSTED';
  POST_STATUS = 1; // No stock removed
  STATUSDESC_STATUS = 'POSTED - NOT Collected';
  POST_STOCKONLY = 2; //Already posted, now just remove stock.
  STATUSDESC_STOCK = 'POSTED';
  POST_CANCEL = 3; //Already posted, now just remove stock.
  STATUSDESC_CANCEL = '**VOID**';
  POST_REVERT = 4; //Already posted, now just remove stock.
  STATUSDESC_REVERT = 'Active';
  POST_CANCELNOTCOLLECTED = 5; //Already posted, now just remove stock.
  STATUSDESC_CANCELNOTCOLLECTED = '**VOID**NC**';


const
  BTN_CANCEL = 0;
  BTN_POST = 1;
  BTN_ADD = 2;
  BTN_DELETE = 3;
  BTN_REFRESH = 8;

  BTN_FIRST = 4;
  BTN_LAST = 5;
  BTN_NEXT = 6;
  BTN_PRIOR = 7;


// FieldNames
  fldFrmFormulation_Str = 'FrmFormulation_Str';
  fldFrmAdministration_Str = 'FrmAdministration_Str';
  fldFrmSKU_Dbl = 'FrmSKU_Dbl';
  fldFrmAdministrationUnit_Str = 'FrmAdministrationUnit_Str';
  fldFrmInterval_Str = 'FrmInterval_Str';
  fldFrmDuration_Dbl = 'FrmDuration_Dbl';
  fldFrmRepeat_Dbl = 'FrmRepeat_Dbl';
  fldFrmDirections_Str = 'FrmDirections_Str';
  fldFrmDailyDoseCalc_Dbl = 'FrmDailyDoseCalc_Dbl';
  fldFrmDoseCalc_Dbl = 'FrmDoseCalc_Dbl';
  fldFrmSKUTotal_Dbl = 'FrmSKUTotal_Dbl';
  fldFrmICDCode_Str = 'FrmICDCode_Str';
  fldFrmDescription_Str = 'FrmDescription_Str';
  fldFrmProtocol_ID = 'FrmProtocol_ID';
  fldDspProduct_Str = 'DspProduct_Str';
  fldDspProduct_ID = 'DspProduct_ID';
  fldDspSKUActual_Dbl = 'DspSKUActual_Dbl';
  fldDspProductCalc_Dbl = 'DspProductCalc_Dbl';
  fldDspDirections_Str = 'DspDirections_Str';
  fldDspWarning_Str = 'DspWarning_Str';
  fldDspProductBatch_Str = 'DspProductBatch_Str';
  fldDspProductBreakPack_Bol = 'DspProductBreakPack_Bol';
  fldDspDescription_Str = 'DspDescription_Str';
  fldDspProductCost_Mny = 'DspProductCost_Mny';
  fldDspItemCost_Mny = 'DspItemCost_Mny';
  fldDspNotDispensed_Bol = 'DspNotDispensed_Bol';
  fldDspInterventionProblem_Str = 'DspInterventionProblem_Str';
  fldDspInterventionOutcome_Str = 'DspInterventionOutcome_Str';
  fldDspLabel01_Str = 'DspLabel01_Str';
  fldDspLabel02_Str = 'DspLabel02_Str';
  fldDspLabel03_Str = 'DspLabel03_Str';
  fldDspLabel04_Str = 'DspLabel04_Str';
  fldDspLabel05_Str = 'DspLabel05_Str';
  fldDspLabel06_Str = 'DspLabel06_Str';
  fldItemPreviewStr = 'ItemPreview_Str';
  fldDspDirectionsAuto_Bol = 'DspDirectionsAuto_Bol';
  fldInputOrder_int = 'InputOrder_int';

  fldRXID = 'RX_ID';
  fldRXItemID = 'RXItem_ID';

  fldPrescription_ID_Original = 'prescription_ID_Original';
  fldRepeatDate_dat = 'repeatDate_dat';
  fldCompleted_bol = 'completed_bol';
	fldDownRefferal_Str = 'DownRefferal_Str';
	fldRXIsCollected_Bol = 'issuedOrCollected_Bol';
	fldDispensed_Bol = 'dispensed_Bol';
	fldIsReferred_bol = 'isReferred_bol';
	fldActive_bol = 'active_bol';
	fldClinic_ID = 'clinic_ID';
	fldPrescription_ID = 'prescription_ID';
	fldPrescriptionLastEdited_dat = 'prescriptionLastEdited_dat';
	fldPrescriptionLastEdited_ID = 'prescriptionLastEdited_ID';
	fldPrescriptionLastEdited_Str = 'prescriptionLastEdited_Str';
	fldPrescriptionNumber_Str = 'prescriptionNumber_Str';
	fldDate_Dat = 'date_Dat';
        
        fldvstNextVisit_dat = 'vstNextVisit_dat';

	fldPatient_ID = 'patient_ID';
	fldPatientName_Str = 'patientName_Str';
	fldFolderNumber_Str = 'folderNumber_Str';
	fldAdmissionNo_Str = 'admissionNo_Str';
	fldPrescriber_ID = 'prescriber_ID';
	fldPrescriberName_Str = 'prescriberName_Str';
	fldPrescriberRXLevel_Str = 'prescriberRXLevel_Str';
	fldPrescriberAlert_mem = 'prescriberAlert_mem';
	fldPrescribedAuthorisedBy_Str = 'prescribedAuthorisedBy_Str';
	fldDispenser_ID = 'dispenser_ID';
	fldDispenserName_Str = 'dispenserName_Str';
	fldDispenserRxLevel_Str = 'dispenserRxLevel_Str';
	fldDispensedAuthorisedBy_Str = 'dispensedAuthorisedBy_Str';
	fldRepeatTotal_Int = 'repeats_Int';
	fldRepeatCurrent_Int = 'repeatNo_Int';
	fldPrescriptionCost_Mon = 'prescriptionCost_Mon';
	fldPrescriptionItemsCount_Int = 'prescriptionItemsCount_Int';
	fldClinic_str = 'clinic_str';
	fldPrescriptionActive_bol = 'prescriptionActive_bol';
	fldPrescriptionStatus_Str = 'prescriptionStatus_Str';
         //CM
        fldRxCancelReasonsAfterPosting_str = 'RxCancelReasonsAfterPosting_str';

	fldPrescriptionStatus_ID = 'prescriptionStatus_ID';
	fldDownRefRouteSchedule_ID = 'downRefRouteSchedule_ID';
	fldBatchIsBatched_bol = 'batchIsBatched_bol';
	fldPrescriptionAuthorised_bol = 'prescriptionAuthorised_bol';
	fldDispensingAuthorised_bol = 'dispensingAuthorised_bol';
	fldDispensingCollected_bol = 'dispensingCollected_bol';
	fldDispensingPicked_bol = 'dispensingPicked_bol';
	fldBatchIsCollated_bol = 'batchIsCollated_bol';
	fldBatchIsShipped_bol = 'batchIsShipped_bol';
	fldProtocolID = 'protocolID';
	fldRXIsPosted_Bol = 'dispensingPosted_bol';
	fldNaive_bol = 'naive_bol';
	fldDemanderUnique_ID = 'DemanderUnique_ID';
	fldDemanderName_Str = 'DemanderName_Str';
        fldComplexDept_ID = 'complexSiteDepartment_ID';
        fldComplexDept_Str ='complexSiteDepartment_str';
  fldRepeatStatus_str = 'RepeatStatus_str';
  fldRepeatDuration_Int = 'RepeatDuration_Int';
  fldPersonAge_int = 'personAge_int';
  fldPosted_dat = 'Posted_dat';
  fldPostedBy_str = 'PostedBy_str';

  {
    fldPrescription_ID_Original := 'prescription_ID_Original';
//  fldRepeatDate_dat := 'repeatDate_dat';
//  fldCompleted_bol := 'completed_bol';
//	fldDownRefferal_Str := 'DownRefferal_Str';
	fldRXIsCollected_Bol := 'issuedOrCollected_Bol';
//	fldDispensed_Bol := 'dispensed_Bol';
//	fldIsReferred_bol := 'isReferred_bol';
//	fldActive_bol := 'active_bol';
	fldClinic_ID := 'clinic_ID';
	fldPrescription_ID := 'prescription_ID';
//	fldPrescriptionLastEdited_dat := 'prescriptionLastEdited_dat';
//	fldPrescriptionLastEdited_ID := 'prescriptionLastEdited_ID';
//	fldPrescriptionLastEdited_Str := 'prescriptionLastEdited_Str';
	fldPrescriptionNumber_Str := 'prescriptionNumber_Str';
	fldDate_Dat := 'date_Dat';
	fldPatient_ID := 'patient_ID';
	fldPatientName_Str := 'patientName_Str';
	fldFolderNumber_Str := 'folderNumber_Str';
//	fldAdmissionNo_Str := 'admissionNo_Str';
	fldPrescriber_ID := 'prescriber_ID';
	fldPrescriberName_Str := 'prescriberName_Str';
	fldPrescriberRXLevel_Str := 'prescriberRXLevel_Str';
	fldPrescriberAlert_mem := 'prescriberAlert_mem';
//	fldPrescribedAuthorisedBy_Str := 'prescribedAuthorisedBy_Str';
//	fldDispenser_ID := 'dispenser_ID';
//	fldDispenserName_Str := 'dispenserName_Str';
//	fldDispenserRxLevel_Str := 'dispenserRxLevel_Str';
//	fldDispensedAuthorisedBy_Str := 'dispensedAuthorisedBy_Str';
	fldRepeatTotal_Int := 'repeats_Int';
	fldRepeatCurrent_Int := 'repeatNo_Int';
	fldPrescriptionCost_Mon := 'prescriptionCost_Mon';
	fldPrescriptionItemsCount_Int := 'prescriptionItemsCount_Int';
	fldClinic_str := 'clinic_str';
//	fldPrescriptionActive_bol := 'prescriptionActive_bol';
	fldPrescriptionStatus_Str := 'prescriptionStatus_Str';
//	fldPrescriptionStatus_ID := 'prescriptionStatus_ID';
//	fldDownRefRouteSchedule_ID := 'downRefRouteSchedule_ID';
	fldBatchIsBatched_bol := 'batchIsBatched_bol';
//	fldPrescriptionAuthorised_bol := 'prescriptionAuthorised_bol';
//	fldDispensingAuthorised_bol := 'dispensingAuthorised_bol';
//	fldDispensingCollected_bol := 'dispensingCollected_bol';
//	fldDispensingPicked_bol := 'dispensingPicked_bol';
//	fldBatchIsCollated_bol := 'batchIsCollated_bol';
//	fldBatchIsShipped_bol := 'batchIsShipped_bol';
//	fldProtocolID := 'protocolID';
	fldRXIsPosted_Bol := 'dispensingPosted_bol';
//	fldNaive_bol := 'naive_bol';
	fldDemanderUnique_ID := 'DemanderUnique_ID';
	fldDemanderName_Str := 'DemanderName_Str';
  fldRepeatStatus_str := 'RepeatStatus_str';


  }


type

  TRXLabel = array[1..6] of string;

  //SM 
  TRXMultipleReg = array of string;

  TLoader = class;
  RX = class;


  RX = class(TObject)
  private
    class procedure AddStr(var prmExist : string ; const prmNew : string; const
        prmSeperator : string = ' ');
  public
    class function GetNextRXNumber(qryNumbering: TDataset): string;
    class function Instruction(_administered: string; _qtyToAdminister: Double;
        _unitType, _intervalDescription, _directionsForUse, _form: string): string;
    class procedure PacksRequired(packSize: Double; var sKU, packRequired: Double;
        _canBreakPack: Boolean);
    class function RxDescription(brandName, genericName, doseUnit, route,
        intervalA, intervalB: string; repeats, duration, doseA, doseB: Double;
        isEccentric: boolean = False; showRepeats: boolean = True; freeForm: string
        = ''): string;
    class procedure RxItemLabel(var _label: TRXLabel; _product: string; _qty:
        double; _unit, _direction, _warning, _patient, _num, _hospital, _address:
        string; const _date: TDateTime; const _repeatStatus: string);
  end;

  TLoader = class(TObject)
  private
    FDataSet: TDataset;
    FLookUpData: TDataset;
    FKey: string;
    FKeyField: string;
  public
    constructor Create;
    procedure Cancel;
    procedure LookUpValue(var value: Double; fieldName: string); overload;
    procedure LookUpValue(var value: string; fieldName: string); overload;
    procedure LookUpValue(var value: boolean; fieldName: string); overload;
    procedure Load(var value: Boolean; sender: TField; fieldName: string); overload;
    procedure Load(var value: Double; sender: TField; fieldName: string); overload;
    procedure Load(var value: Integer; sender: TField; fieldName: string); overload;
    procedure Load(var value: string; sender: TField; fieldName: string); overload;
    procedure Load(var value: Boolean; fieldName: string); overload;
    procedure Load(var value: Double; fieldName: string); overload;
    procedure Load(var value: Integer; fieldName: string); overload;
    procedure Load(var value: string; fieldName: string); overload;
    procedure Load(var value: TDateTime; fieldName: string); overload;
    procedure Load(var value: TDateTime; sender: TField; fieldName: string);
        overload;
    procedure Post;
    procedure Write(const value: Boolean; fieldName: string); overload;
    procedure Write(const value: Integer; fieldName: string); overload;
    procedure Write(const value: string; fieldName: string); overload;
    procedure Write(const value: Double; fieldName: string); overload;
    procedure WriteDATE(const value: TDateTime; fieldName: string);
    procedure WriteGUID(const value: string; fieldName: string); overload;
    procedure WriteGUID(const value: integer; fieldName: string); overload;
    property DataSet: TDataset read FDataSet Write FDataSet;
    property LookUpData: TDataset read FLookUpData Write FLookUpData;
    property Key: string read FKey Write FKey;
    property KeyField: string read FKeyField Write FKeyField;
  end;

  TDataManager = class(TObject)
  private
    FDataset: TDataset;
    FPK: string;
    function _Delete(_dataset: TDataset): Boolean;
    function _Add(_dataset: TDataset; _pk: string): string;
    function _First(_dataset: TDataset): Boolean;
    function _Last(_dataset: TDataset): Boolean;
    function _Next(_dataset: TDataset): Boolean;
    function _Post(_dataset: TDataset): Boolean;
    function _Prior(_dataset: TDataset): Boolean;
    function _Refresh(_dataset: TDataset; _pk: string; _pkValue: string = ''):
        Boolean;
    function _Move(_dataset: TDataset; _pk, _pkValue: string): Boolean;
    function _Cancel(_dataset: TDataset): Boolean;
    function _ButtonEnabled(_button: Integer; _dataset: TDataset): Boolean;
  public
    constructor Create(dataSet: TDataset; primaryKey: string);
    function Add: string;
    function ButtonEnabled(const button: Integer): Boolean;
    function Delete: Boolean;
    function First: Boolean;
    function Last: Boolean;
    function Move(const id: string): Boolean;
    function Next: Boolean;
    function Post: Boolean;
    function Cancel: Boolean;
    function Prior: Boolean;
    function Refresh: Boolean;
    property Dataset: TDataset read FDataset write FDataset;
    property PK: string read FPK write FPK;
  end;

implementation

class procedure RX.AddStr(var prmExist : string ; const prmNew : string;
    const prmSeperator : string = ' ');
begin
  prmExist := prmExist + prmSeperator + prmNew;
end;

class function RX.Instruction(_administered: string; _qtyToAdminister: Double;
    _unitType, _intervalDescription, _directionsForUse, _form: string): string;
var
  __unitTypeDescription, __qtyDescription   :string;
  _qtyToAdministerFractional, _qtyToAdministerWholeNum : double;

begin


  if (_form = 'solid') then
    begin
    //??????THIS SHOUlD APPLY FOR SOLID DOSAGE FORM
    _qtyToAdministerFractional := Frac(_qtyToAdminister);
    _qtyToAdministerWholeNum := Int(_qtyToAdminister);
    if _qtyToAdministerFractional <= 0.99 then __qtyDescription := '¾ ';          //(three quarters) of a
    if _qtyToAdministerFractional <= 0.55 then __qtyDescription := '½ ' ;         //(half) of a
    if _qtyToAdministerFractional <= 0.25 then __qtyDescription := '¼ ';          //(quarter) of a
    if _qtyToAdministerFractional <= 0.0001 then __qtyDescription := '';
    if _qtyToAdministerWholeNum > 0 then __qtyDescription := Format('%.0f', [_qtyToAdministerWholeNum]) + __qtyDescription;
    end
  else
    begin
    _qtyToAdministerFractional := Frac(_qtyToAdminister);
    if (_qtyToAdministerFractional <> 0) then
      __qtyDescription := Format('%.2f', [_qtyToAdminister])
      else
      __qtyDescription := Format('%.0f', [_qtyToAdminister]);
    end;

  __unitTypeDescription := LowerCase(_unitType);
  if _qtyToAdministerWholeNum > 1 then __unitTypeDescription := __unitTypeDescription + 's';

  if (_qtyToAdminister <> 0) then
    Result := _administered + ' ' + __qtyDescription + ' ' + __unitTypeDescription + ' ' + _intervalDescription + ' ' + _directionsForUse
    else
    Result := _administered + ' ' + _intervalDescription + ' ' + _directionsForUse


end;

class procedure RX.PacksRequired(packSize: Double; var sKU, packRequired:
    Double; _canBreakPack: Boolean);
var
  _wholePacks : Double;
  j : integer;
  unitsPerPack :double;

begin

  // Find out how many complete packRequired are required to fulfill script

//
//  100U/ml 3ml cartridge   100/100 * (n)sku = (n)sku  dispense (n)sku units
//  pack = 3 * 100

//  500mg/5ml 100ml bottle   500/5 * (n)sku = (n)sku 
//  pack = 3 * 100

//  unitsPerPack := packSize / sKUCoeff;

  if not _canBreakPack then
    begin
    _wholePacks := 1;
    j := 1;
    if packSize > 0 then
      while j > 0 do
        begin
          if sKU <= (packSize * j) then
            begin
            _wholePacks := j;
            j := 0;
            end
            else
            j := j + 1;
        end;
    packRequired := _wholePacks;
    if packSize > 0 then sKU := packSize * packRequired;

    end;

end;

class function RX.RxDescription(brandName, genericName, doseUnit, route,
    intervalA, intervalB: string; repeats, duration, doseA, doseB: Double;
    isEccentric: boolean = False; showRepeats: boolean = True; freeForm: string
    = ''): string;

var
  retStr : string;
  strDoseA, strDoseB, strDuration, strRepeats : string;
  strInterval : string;

begin


  strDoseA    := FloatToStr(doseA);
  strDoseB    := FloatToStr(doseB);

  strDuration := FloatToStr(duration);
  strRepeats  := FloatToStr(repeats);
  if duration > 1 then strInterval := ' days' else strInterval := ' day';


  retStr := ''; // Clear to start;

  // Drug name
  AddStr(retStr, genericName, '');
  if brandName <> '' then AddStr(retStr, '(' + brandName + ')', '');

  //Free form description
  if freeForm = '' then
    begin
    // Dose & unit
      if (doseA <> 0) then
        begin
        AddStr(retStr, strDoseA);
        AddStr(retStr, doseUnit, ''); // no gap
        end;
      AddStr(retStr, intervalA);
      AddStr(retStr, route);
      if duration > 0 then
        AddStr(retStr, 'for ' + strDuration + strInterval);
      if isEccentric then
        begin
        AddStr(retStr, strDoseB, ' THEN ' );
        AddStr(retStr, doseUnit, ''); // no gap
        AddStr(retStr, intervalB);
        AddStr(retStr, route);
        AddStr(retStr, 'for ' + strDuration + strInterval);
        end;
    end else
    AddStr(retStr, freeForm);

  if repeats > 0 then
    if showRepeats then
      AddStr(retStr, '( X ' + strRepeats + ')');

  Result := Trim(retStr);

end;

class procedure RX.RxItemLabel(var _label: TRXLabel; _product: string; _qty:
    double; _unit, _direction, _warning, _patient, _num, _hospital, _address:
    string; const _date: TDateTime; const _repeatStatus: string);
var
  j: Integer;
  i: Integer;
  _productDisplay: string;
  _hasProduct : boolean;

begin

  i := 0;
  j := 0;

  //******************
  // PRODUCT DISPLAY
  for i := 1 to Length(_product) do
    if _product[i] = '[' then j := i -1;
  _productDisplay := copy(_product, 1, j); // _product name only.
  if _productDisplay <> '' then _hasProduct := true else _hasProduct := false;

  if _qty > 1 then _unit := _unit + '(s)';
  _productDisplay := _productDisplay + ' [ ' + FloatToStr(_qty) + ' x ' + _unit +  ' ]';

  //******************
  // REFERENCE NUMBER
  _num := 'Rx # : ' + Trim(_num);

  //******************
  // COMPLEX DESCRIPTION
  _hospital := Trim(_hospital);
  _address := Trim(_address);


  // COMPILE
  if _hasProduct then
    begin
    _label[1] := _productDisplay;
    if trim(_warning) <> '' then
     _label[2] := _direction +#13+Trim(_warning)
    else
    _label[2] := _direction;
    _label[3] := _num + ' - [' + _repeatStatus + ']';   //Should be Rx number and repeat status 
    _label[4] := _patient;                              //should be patient name and IPN number
    _label[5] := _hospital;
    _label[6] := _address;
    end else
    begin
    _label[1] := 'Product not selected';
    _label[2] := '';
    _label[3] := '';
    _label[4] := _patient;
    _label[5] := _hospital + '  - ' + _num;
    _label[6] := _address;
    end;

end;

class function RX.GetNextRXNumber(qryNumbering: TDataset): string;

const
  _MAXATTEMPTS = 5000;
  _NUMWIDTH    = 4;
  _ADJUSTDATE  = True;
  _REC_NUM_PRESCRIPTION = 4;

var
  _attempts: Integer;
  _curYear, _curMonth, _curDay : Word;
  _prevYear, _prevMonth, _prevDay : Word;
  _currentTimeStamp, _prevTimeStamp: TDateTime;
  _prevRecNum,i : Integer;
  _number, _prf, _yr, _mn, _typ, _dvd : string;

begin

  Result    := '';

  with qryNumbering do
    begin
    Active := False;
    Active := True;                                                             // do this to prevent can't locate record error

    if active then
//      if Locate( 'Record_TypeID', VarArrayOf([_REC_NUM_PRESCRIPTION]), []) then
      if Locate( 'Record_TypeID;SystemStore_ID', VarArrayOf([_REC_NUM_PRESCRIPTION,null]), []) then
        begin
        _attempts := 0;

        //ShowMessage('Here');

        while _attempts <= _MAXATTEMPTS do
          try
          Inc(_attempts);
          // If another user has the table in edit mode, an error occurs here.
          Edit;
          // If we reach the Break statement, we are successful. Break out of loop.
          Break;
          except
            on EDataBaseError do Continue;
          end;

        if State = dsEdit then
          begin
          _currentTimeStamp := Now;
          _prevTimeStamp := FieldByName('Record_DateSet').AsDateTime;
          if _currentTimeStamp > _prevTimeStamp then
            begin
            DecodeDate(_currentTimeStamp, _curYear, _curMonth, _curDay);
            DecodeDate(_prevTimeStamp, _prevYear, _prevMonth, _prevDay);
            if _curMonth <> _prevMonth then
              begin
              FieldByName('Record_Month').AsInteger     := _curMonth;
              FieldByName('Record_Number').AsInteger    := 1;
              end;
            if _curYear <> _prevYear then
              FieldByName('Record_Year').AsInteger      := _curYear;
            end;

          _prevRecNum  := FieldByName('Record_Number').AsInteger;
          FieldByName('Record_Number').AsInteger := _prevRecNum + 1;
          FieldByName('Record_DateSet').AsDateTime  := _currentTimeStamp;

          _yr     := Copy(FieldByName('Record_Year').AsString, 3 , 2);
          _mn    := FieldByName('Record_Month').AsString;
          _prf    := FieldByName('Record_StorePre').AsString;
          _typ     := FieldByName('Record_Type').AsString;
          _dvd    := FieldByName('Record_Divider').AsString;
          Post;  // Close the rec so somone else can access

          _number := IntToStr(_prevRecNum);

          for i:= Length(_number) to _NUMWIDTH-1 do _number := '0' + _number;

          if _ADJUSTDATE then if Length(_mn) = 1 then _mn := '0' + _mn;

          if _typ = '' then
            Result := _prf + '/' + _yr + _dvd + _mn + _dvd + _number
            else
            Result := _prf + _dvd + _typ + '/' + _yr + _dvd + _mn + _dvd + _number;

          end; (* if State = dsEdit then *)
      end;
    end;


end;

constructor TLoader.Create;
begin
  inherited;
end;

procedure TLoader.Cancel;
begin
  try
  if FDataSet.State in [dsEdit, dsInsert] then FDataSet.Cancel;
  except
    on E:Exception do raise Exception ('Error cancelling Dataset: ' + FDataSet.Name + #13 + E.Message);
  end;
end;

procedure TLoader.LookUpValue(var value: Double; fieldName: string);
begin

  try
    value  := VarAsType(FLookUpData.Lookup(FKeyField, FKey, fieldName), varDouble);
  except
    on E:Exception do
      begin
      value := 0;

      raise Exception.Create('Error fetching Field: ' + fieldName + #13
                             + 'Dataset: ' + FLookUpData.Name + #13
                             + 'Key: ' + FKey + #13
                             + 'KeyField: ' + FKeyField + #13
                             + E.Message);

      end;
  end;
end;

procedure TLoader.LookUpValue(var value: string; fieldName: string);
begin

  try
    value := VarToStrDef(FLookUpData.Lookup(FKeyField, FKey, fieldName), '');
  except
    on E:Exception do
      begin
      value := '';
      {
      raise Exception.Create('Error fetching Field: ' + fieldName + #13
                             + 'Dataset: ' + FLookUpData.Name + #13
                             + 'Key: ' + FKey + #13
                             + 'KeyField: ' + FKeyField + #13
                             + E.Message);
                             }
      end;
  end;
end;

procedure TLoader.LookUpValue(var value: boolean; fieldName: string);
begin

  try
    value := VarIsType(FLookUpData.Lookup(FKeyField, FKey, fieldName), varBoolean);
  except
    on E:Exception do
      begin
      value := False;
      {
      raise Exception.Create('Error fetching Field: ' + fieldName + #13
                             + 'Dataset: ' + FLookUpData.Name + #13
                             + 'Key: ' + FKey + #13
                             + 'KeyField: ' + FKeyField + #13
                             + E.Message);
                             }
      end;
  end;
end;

procedure TLoader.Load(var value: Boolean; sender: TField; fieldName: string);
begin

  try

  if Sender.FieldName = fieldName then
    value := Sender.AsBoolean
    else
    value := FDataSet.FieldByName(fieldName).AsBoolean;

  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: Double; sender: TField; fieldName: string);
begin

  try
    if Sender.FieldName = fieldName then
      value := Sender.AsFloat
      else
      value := FDataSet.FieldByName(fieldName).AsFloat;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: Integer; sender: TField; fieldName: string);
begin

  try
    if Sender.FieldName = fieldName then
      value := Sender.AsInteger
      else
      value := FDataSet.FieldByName(fieldName).AsInteger;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: string; sender: TField; fieldName: string);
begin

  try
  if Sender.FieldName = fieldName then
      value := Sender.AsString
      else
      value := FDataSet.FieldByName(fieldName).AsString;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;
      
end;

procedure TLoader.Load(var value: Boolean; fieldName: string);
begin

  try

  value := FDataSet.FieldByName(fieldName).AsBoolean;

  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: Double; fieldName: string);
begin

  try
    value := FDataSet.FieldByName(fieldName).AsFloat;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: Integer; fieldName: string);
begin

  try
    value := FDataSet.FieldByName(fieldName).AsInteger;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: string; fieldName: string);
begin

  try
    value := FDataSet.FieldByName(fieldName).AsString;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;
      
end;

procedure TLoader.Load(var value: TDateTime; fieldName: string);
begin

  try

  value := FDataSet.FieldByName(fieldName).AsDateTime;

  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Load(var value: TDateTime; sender: TField; fieldName: string);
begin

  try
    if Sender.FieldName = fieldName then
      value := Sender.AsDateTime
      else
      value := FDataSet.FieldByName(fieldName).AsDateTime;
  except
    on E:Exception do raise Exception ('Error fetching Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Post;
begin
  try

  if FDataSet.State in [dsEdit, dsInsert] then FDataSet.Post;
  except
    on E:Exception do raise Exception ('Error posting Dataset: ' + FDataSet.Name + #13 + E.Message);
  end;
  
end;

procedure TLoader.Write(const value: Boolean; fieldName: string);
begin

  try

 // This dataset should be in edit mode, but just make sure here.
  if FDataSet.Active then
    begin
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;
    FDataSet.FieldByName(fieldName).AsBoolean := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Write(const value: Integer; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;
    FDataSet.FieldByName(fieldName).AsInteger := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Write(const value: string; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;
    FDataSet.FieldByName(fieldName).AsString := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.Write(const value: Double; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;
    FDataSet.FieldByName(fieldName).AsFloat := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.WriteDATE(const value: TDateTime; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;
    FDataSet.FieldByName(fieldName).AsDateTime := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.WriteGUID(const value: string; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;

    if value = '' then
        FDataSet.FieldByName(fieldName).AsVariant := null
        else
        FDataSet.FieldByName(fieldName).AsString := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

procedure TLoader.WriteGUID(const value: integer; fieldName: string);
begin

  try

  if FDataSet.Active then
    begin
    // This dataset should be in edit mode, but just make sure here.
    if not (FDataSet.State in [dsEdit, dsInsert]) then FDataSet.Edit;

    if value = 0 then
        FDataSet.FieldByName(fieldName).AsVariant := null
        else
        FDataSet.FieldByName(fieldName).AsInteger := value;
    end;

  except
    on E:Exception do raise Exception ('Error saving Field: ' + fieldName + #13 + E.Message);
  end;

end;

constructor TDataManager.Create(dataSet: TDataset; primaryKey: string);
begin
  inherited Create;
  FDataset := dataSet;
  FPK := primaryKey;
end;

function TDataManager.Add: string;
begin
  Result := _Add(FDataset, FPK);
end;

function TDataManager.ButtonEnabled(const button: Integer): Boolean;
begin
  Result := _ButtonEnabled(button, FDataset);
end;

function TDataManager.Delete: Boolean;
begin
  Result := _Delete(FDataset);
end;

function TDataManager.First: Boolean;
begin
  Result := _First(FDataset);
end;

function TDataManager.Last: Boolean;
begin
  Result := _Last(FDataset);
end;

function TDataManager.Move(const id: string): Boolean;
begin
  Result := _Move(FDataset, FPK, id);
end;

function TDataManager.Next: Boolean;
begin
  Result := _Next(FDataset);
end;

function TDataManager.Post: Boolean;
begin
  Result := _Post(FDataset);
end;

function TDataManager.Cancel: Boolean;
begin
  Result := _Cancel(FDataset);
end;

function TDataManager.Prior: Boolean;
begin
  Result := _Prior(FDataset);
end;

function TDataManager.Refresh: Boolean;
begin
  Result := _Refresh(FDataset, FPK);
end;

function TDataManager._Delete(_dataset: TDataset): Boolean;
var
  _id : string;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if _dataset.RecordCount > 0 then
        try
        _dataset.DisableControls;

        if FPK <> '' then
          begin
          _id := _dataset.FieldByName(FPK).AsString;
          _dataset.Close;
          _dataset.Open;
          _dataset.Locate(FPK, _id, []);
          _dataset.Delete;
          Result := True;
          end;

        finally
        if not _dataset.Active then _dataset.Open;
        _dataset.EnableControls;
        end;

end;

function TDataManager._Add(_dataset: TDataset; _pk: string): string;
begin

  Result := '';
  if Assigned(_dataset) then
    if _dataset.Active then
      begin
      _dataset.Append;
      if _pk <> '' then Result := _dataset.FieldByName(_pk).AsString;
      end;

end;

function TDataManager._Refresh(_dataset: TDataset; _pk: string; _pkValue:
    string = ''): Boolean;
var
  pkValue : string;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      try
      with _dataset do
        try
        DisableControls;
        // Get the cursor position
        if _pk <> '' then
          if _pkValue = '' then
            pkValue := FieldByName(_pk).AsString
            else
            pkValue := _pkValue;
        Close;
        Open;
        if _pk <> '' then
          if pkValue <> '' then Locate(_pk, pkValue, []);
        Result := True;
        except
        end;
      finally
        _dataset.EnableControls;
      end;


end;

function TDataManager._First(_dataset: TDataset): Boolean;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if not _dataset.Bof then
        begin
        _dataset.First;
        Result := True;
        end;
        
end;

function TDataManager._Prior(_dataset: TDataset): Boolean;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if not _dataset.Bof then
        begin
        _dataset.Prior;
        Result := True;
        end;
end;

function TDataManager._Next(_dataset: TDataset): Boolean;
begin
  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if not _dataset.Eof then
        begin
        _dataset.Next;
        Result := True;
        end;
end;

function TDataManager._Last(_dataset: TDataset): Boolean;
begin
  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if not _dataset.Eof then
        begin
        _dataset.Last;
        Result := True;
        end;
end;

function TDataManager._Post(_dataset: TDataset): Boolean;
begin
  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if _dataset.State in [dsEdit, dsInsert] then
        begin
        _dataset.Post;
        Result := True;
        end;
end;

function TDataManager._Move(_dataset: TDataset; _pk, _pkValue: string): Boolean;
var
  pkValue : string;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      try
      with _dataset do
        try
        DisableControls;
        // Get the cursor position
        if _pk <> '' then
          if _pkValue = '' then
            pkValue := FieldByName(_pk).AsString
            else
            pkValue := _pkValue;
        if _pk <> '' then
          if pkValue <> '' then Locate(_pk, pkValue, []);
        Result := True;
        except
        end;
      finally
        _dataset.EnableControls;
      end;


end;

function TDataManager._Cancel(_dataset: TDataset): Boolean;
begin
  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      if _dataset.State in [dsEdit, dsInsert] then
        begin
        _dataset.Cancel;
        Result := True;
        end;
end;

function TDataManager._ButtonEnabled(_button: Integer; _dataset: TDataset):
    Boolean;


begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      case _button of
        BTN_CANCEL : Result := _dataset.State in [dsInsert, dsEdit];
        BTN_POST : Result := _dataset.State in [dsInsert, dsEdit];
        BTN_ADD : Result := _dataset.Active;
        BTN_DELETE : Result := _dataset.RecordCount > 0;
        BTN_REFRESH : Result := _dataset.Active;
        BTN_FIRST : Result := not _dataset.Bof;
        BTN_PRIOR : Result := not _dataset.Bof;
        BTN_NEXT : Result := not _dataset.Eof;
        BTN_LAST : Result := not _dataset.Eof;
        end;

end;





end.

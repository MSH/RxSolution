unit rxDispensing_Dm_Prescriber;

interface

uses
  SysUtils, Classes, ComObj,
  Windows, Messages, Variants, Graphics, Controls,
  Forms, Dialogs, StrUtils,

  SystemConstants, SystemGeneralMethods,

  DB, ADODB, ppBands, ppStrtch, ppRegion, ppClass, ppVar, jpeg, ppCtrls,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppParameter;




// These are required by each using class.  Use Constant
const

  CURRENTPERSONTYPE = AREA_PRESCRIBER;
  CURRENTPERSONAREA = AREA_PRESCRIBER_DESC;


type
  TdmPerson = class(TDataModule)
    conPrescriber: TADOConnection;
    dsqryPersonComment: TDataSource;
    dsqryPersonContact: TDataSource;
    dsqryPersonDetail: TDataSource;
    dsqryPersonDetailPhoto: TDataSource;
    dsqryPersonPosition: TDataSource;
    dsqryPersonPositionRotation: TDataSource;
    dsqryPersonPositionTitle: TDataSource;
    dsqryPersonPost: TDataSource;
    dsqryPersonQualification: TDataSource;
    dsqryPersonSignature: TDataSource;
    dsqryPersonType: TDataSource;
    dsqryRxLevel: TDataSource;
    dsqrySiteDepartment: TDataSource;
    dsqrySpecialisation: TDataSource;
    dstblLanguage: TDataSource;
    dstblRace: TDataSource;
    qryNumbering: TADOQuery;
    qryPersonComment: TADOQuery;
    qryPersonContact: TADOQuery;
    qryPersonContactcontactDescription_Str: TWideStringField;
    qryPersonContactcontactDetailOrder_Int: TIntegerField;
    qryPersonContactcontactDetail_Str: TWideStringField;
    qryPersonContactcontactDisplay_Str: TWideStringField;
    qryPersonContactcontactLine01_str: TWideStringField;
    qryPersonContactcontactLine02_str: TWideStringField;
    qryPersonContactcontactLine03_str: TWideStringField;
    qryPersonContactcontactLine04_str: TWideStringField;
    qryPersonContactcontactMode_str: TWideStringField;
    qryPersonContactcontactType_Str: TWideStringField;
    qryPersonContactcontact_ID: TGuidField;
    qryPersonContactlinking_ID: TGuidField;
    qryPersonDetail: TADOQuery;
    qryPersonDetailPhoto: TADOQuery;
    qryPersonPosition: TADOQuery;
    qryPersonPositionRotation: TADOQuery;
    qryPersonPositionTitle: TADOQuery;
    qryPersonPost: TADOQuery;
    qryPersonQualification: TADOQuery;
    qryPersonSignature: TADOQuery;
    qryPersonType: TADOQuery;
    qryRxLevel: TADOQuery;
    qrySiteDepartment: TADOQuery;
    qrySpecialisation: TADOQuery;
    tblLanguage: TADOTable;
    tblRace: TADOTable;
    qryBioDataSheet: TADOQuery;
    dsqryBioDataSheet: TDataSource;
    ppDBBioDataSheet: TppDBPipeline;
    ppReportBioDataSheet: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppShape9: TppShape;
    ppLine10: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel29: TppLabel;
    ppDBImage6: TppDBImage;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine11: TppLine;
    ppFooterBand4: TppFooterBand;
    ppImage5: TppImage;
    ppLine12: TppLine;
    ppLabel36: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppPageStyle4: TppPageStyle;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppRegion3: TppRegion;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel41: TppLabel;
    ppRegion2: TppRegion;
    ppDBImage1: TppDBImage;
    ppLabel49: TppLabel;
    ppDBText46: TppDBText;
    ppLine13: TppLine;
    ppDBText47: TppDBText;
    ppLine14: TppLine;
    ppDBImage2: TppDBImage;
    ppLabel50: TppLabel;
    ppRegion5: TppRegion;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText52: TppDBText;
    ppLabel57: TppLabel;
    ppDBText53: TppDBText;
    ppLabel58: TppLabel;
    ppDBText54: TppDBText;
    ppLabel59: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRegion4: TppRegion;
    ppLabel60: TppLabel;
    qryPersonPositionTitlepersonPositionTitle_ID: TGuidField;
    qryPersonPositionTitlepersonPositionTitleDescription_Str: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryPersonCommentNewRecord(DataSet: TDataSet);
    procedure qryPersonContactAfterScroll(DataSet: TDataSet);
    procedure qryPersonContactBeforePost(DataSet: TDataSet);
    procedure qryPersonContactNewRecord(DataSet: TDataSet);
    procedure qryPersonDetailBeforePost(DataSet: TDataSet);
    procedure qryPersonDetailNewRecord(DataSet: TDataSet);
    procedure qryPersonDetailPhotoNewRecord(DataSet: TDataSet);
    procedure qryPersonPositionBeforePost(DataSet: TDataSet);
    procedure qryPersonPositionNewRecord(DataSet: TDataSet);
    procedure qryPersonPositionRotationBeforePost(DataSet: TDataSet);
    procedure qryPersonPositionRotationNewRecord(DataSet: TDataSet);
    procedure qryPersonQualificationNewRecord(DataSet: TDataSet);
    procedure qryPersonSignatureNewRecord(DataSet: TDataSet);
    procedure qryPersonPositionRotationAfterPost(DataSet: TDataSet);
  private
    FDatabase: string;
    FPerson: string;
    procedure DoDefaultChecks;
    function GetCurrentDescription: string;
    function GetCurrentPersonDescription: string;
    function GetCurrentPersonID: string;
    function GetName: string;
    function GetNumber: string;
    function GetPersonType: Integer;
    function GetPersonTypeDescription: string;
    function GetRxLevel: string;
    procedure SetDatabase(const Value: string);
    procedure SetDatabaseLinks;
    procedure SetPerson(const Value: string);
    procedure SetupSQL;
    procedure UpdatePersonHeader;
  public
    { Public declarations }
    function Add: string;
    procedure Delete(ID:string; askToDelete :boolean = True);
    procedure SetNewNumber;
    procedure SetNewRxLevel;
    procedure SetupCurrentStatus;
    property Database: string read FDatabase write SetDatabase;
    property Name: string read GetName;
    property Number: string read GetNumber;
    property Person: string read FPerson write SetPerson;
    property PersonType: Integer read GetPersonType;
    property PersonTypeDescription: string read GetPersonTypeDescription;
    property RxLevel: string read GetRxLevel;
  end;

var
  dmPerson: TdmPerson;

implementation

uses Person_;




{$R *.dfm}


function TdmPerson.Add: string;
var
  AddQry  :TADOQuery;
  myConn  :TADOConnection;
begin

  Result := '';
  if FDatabase <> '' then
    begin
    FPerson := CreateClassID;
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := FDatabase;
    myConn.LoginPrompt := False;
    AddQry := TADOQuery.Create(nil);
    with AddQry do
      try
      AddQry.Connection := myConn;
      myConn.Open;
      AddQry.SQL.Add('insert into tblPerson (person_ID) values (''' + FPerson + ''')');
      AddQry.ExecSQL;
      myConn.Close;
      finally
      AddQry.Free;
      myConn.Free;
      end;
    SetDatabaseLinks;
    Result := FPerson;
  end;

end;

procedure TdmPerson.DataModuleCreate(Sender: TObject);
begin

  FDatabase           := '';
  FPerson         := '';

end;

procedure TdmPerson.DataModuleDestroy(Sender: TObject);
begin
 
  SetupCurrentStatus;
 {
  if qryPersonDetail.State in [dsedit, dsinsert] then qryPersonDetail.Post;
  if qryPersonDetailPhoto.State in [dsedit, dsinsert] then qryPersonDetailPhoto.Post;
  if qryPersonSignature.State in [dsedit, dsinsert] then qryPersonSignature.Post;
  if qryPersonQualification.State in [dsedit, dsinsert] then qryPersonQualification.Post;
  if qryPersonComment.State in [dsedit, dsinsert] then qryPersonComment.Post;
  if qryPersonContact.State in [dsedit, dsinsert] then qryPersonContact.Post;
  if qryPersonPosition.State in [dsedit, dsinsert] then qryPersonPosition.Post;
  if qryPersonPositionRotation.State in [dsedit, dsinsert] then qryPersonPositionRotation.Post;
  }

end;

procedure TdmPerson.Delete(ID:string; askToDelete :boolean = True);
var
  AddQry :TADOQuery;
  myConn  :TADOConnection;
  doDelete    : Boolean;
  delMsg      : String;
   rowsMsg : Integer;
begin
             
  if FDatabase <> '' then
    begin
    doDelete := False;
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := FDatabase;
    myConn.LoginPrompt := False;
    AddQry := TADOQuery.Create(nil);
    with AddQry do
      try
      AddQry.Connection := myConn;
      myConn.Open;

      if askToDelete then
        begin
        AddQry.SQL.Add('select * from tblPerson where person_ID = ''' + ID + '''');
        AddQry.Open;
        delMsg := 'Delete ' + ' - [' + AddQry.FieldByName('personLastName_Str').AsString + ']';
        if MessageDlg(delMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then doDelete := True;
        end
      else
        doDelete := True;

      if doDelete then
        begin

        myConn.BeginTrans;

        try
        
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPosition where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonQualification where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonSignature where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPhoto where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonComment where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.Close;
        AddQry.SQL.Add('delete from tblPerson where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
     {   }

        myConn.CommitTrans;
        
        except
            on E:EDatabaseError do myConn.RollbackTrans;
         end;

        end;
        
      myConn.Close;
      finally
      AddQry.Free;
      myConn.Free;
      end;
    end;

end;

procedure TdmPerson.DoDefaultChecks;
var
  pFound : boolean;
begin

  with qryPersonPosition do
    if Active then
      if RecordCount < 1 then
        begin
        Append;
        FieldByName('personPositionCurrent_bol').AsBoolean := True;
        Post;
        end;

  with qryPersonPositionRotation do
    if Active then
      if RecordCount < 1 then
        begin
        Append;
        Post;
        end;


  with qryPersonSignature do
    if Active then
      if RecordCount < 1 then
        begin
        Append;
        FieldByName('personSignatureCurrent_bol').AsBoolean := True;
        Post;
        end;

  with qryPersonDetailPhoto do
    if Active then
      if RecordCount < 1 then
        begin
        Append;
        FieldByName('personPhotoCurrent_bol').AsBoolean := True;
        Post;
        end;

  with qryPersonContact do
    if Active then
      begin
      First;
      pFound := False;
      while not EOF do
        begin
        if FieldByName('contactMode_str').AsString = 'Cell Phone' then pFound := True;
        Next;
        end;
      if not pFound then
        begin
        Append;
        FieldByName('contactMode_str').AsString := 'Cell Phone';
        FieldByName('contactDetail_str').AsString := '-';
        Post;
        end;
      end;

end;

function TdmPerson.GetCurrentDescription: string;
var
  dispStr, dbStr :string;

begin

  with qryPersonContact do
    if Active then
      begin

      dispStr := '';
      dispStr := Trim(FieldByName('contactLine01_str').AsString);


      if FieldbyName('contactMode_str').AsString = 'Address' then
        begin

        dbStr   := Trim(FieldByName('contactLine02_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        dbStr   := Trim(FieldByName('contactLine03_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        dbStr   := Trim(FieldByName('contactLine04_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        end;

        Result := dispStr;

      end;
end;

function TdmPerson.GetCurrentPersonDescription: string;
begin

  with qryPersonDetail do
    if Active then
      begin
      Result := FieldByName('personLastName_Str').AsString + ', ' + FieldByName('personFirstName_Str').AsString;
      end;

end;

function TdmPerson.GetCurrentPersonID: string;
begin
  Result := 'Nil';
  if qryPersonDetail.Active then
    Result := qryPersonDetail.FieldByName('person_ID').AsString;
end;

function TdmPerson.GetName: string;
begin
  Result := 'Nil';
  if qryPersonDetail.Active then
    Result := GetPersonFullName(qryPersonDetail);
end;

function TdmPerson.GetNumber: string;
begin

  Result := '';
  if qryPersonPosition.Active then
    Result := GetCurrentPositionNumber(qryPersonPosition, GetPersonTypeGUID(GetPersonType));

end;

function TdmPerson.GetPersonType: Integer;
begin
  Result := CURRENTPERSONTYPE;
end;

function TdmPerson.GetPersonTypeDescription: string;
begin
  Result := CURRENTPERSONAREA;
end;

function TdmPerson.GetRxLevel: string;
begin
  Result := '';
  if qryPersonPosition.Active then
    Result := GetCurrentRxLevel(qryPersonPosition, qryRxLevel, GetPersonTypeGUID(GetPersonType));
end;

procedure TdmPerson.qryPersonCommentNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personComment_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personCommentDate_Dat').AsDateTime := Date;
    end;

end;

procedure TdmPerson.qryPersonContactAfterScroll(DataSet: TDataSet);
var
  str, addStr  : string;
  i, j, k    : integer;

begin
  with qryPersonContact do
    if Active then
      begin

      if FieldbyName('contactLine01_str').AsString = '' then
        if FieldbyName('contactDetail_Str').AsString <> '' then
          begin
          str := FieldbyName('contactDetail_Str').AsString;
          k := 0;
          for i:=1 to 4 do
            begin
            j := AnsiPos(',', str);

            if (j > 0) then
              begin
              addStr := Trim(LeftStr(str, j -1));
              str := RightStr(str, Length(str) - j);
              end;
            if (j = 0) and (k = 0) then
              begin
              addStr := str;
              k := 1;
              end;

            if not (State in [dsEdit, dsInsert]) then Edit;
            FieldByName('contactLine0' + intToStr(i) + '_str').AsString := Trim(addStr);

            addStr := '';

            end;

          end;

      end;
end;

procedure TdmPerson.qryPersonContactBeforePost(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('contactDisplay_Str').AsString := GetCurrentPersonDescription;
    FieldByName('contactDetail_Str').AsString := GetCurrentDescription;
    end;

end;

procedure TdmPerson.qryPersonContactNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('contact_ID').AsString := CreateClassID;
    FieldByName('linking_ID').AsString := GetCurrentPersonID;
    end;

end;

procedure TdmPerson.qryPersonDetailBeforePost(DataSet: TDataSet);
var
  prvKnownName: string;
  prvLastName: string;
  prvFirstName: string;
  prvPersonActive : String;

begin

  with Dataset do
    begin
    prvPersonActive := FieldByName('personActive_bol').AsString;
    prvFirstName  := FieldByName('personFirstName_Str').AsString;
    prvLastName   := FieldByName('personLastName_Str').AsString;
    prvKnownName  := FieldByName('personKnownName_Str').AsString;


    FieldByName('personDescription_str').AsString :=
      TPerson.DisplayName_Long(prvFirstName, prvLastName, prvKnownName);

    FieldByName('personActive_bol').AsString := prvPersonActive;
    FieldByName('personFirstName_Str').AsString := prvFirstName;
    FieldByName('personLastName_Str').AsString := prvLastName;
    FieldByName('personKnownName_Str').AsString := prvKnownName;

//    FieldByName('personDispenser_bol').AsBoolean := False;
    FieldByName('personPrescriber_bol').AsBoolean := True;
    FieldByName('personPatient_bol').AsBoolean := False;
    end;

end;

procedure TdmPerson.qryPersonDetailNewRecord(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('person_ID').AsString := FPerson;
    end;

end;

procedure TdmPerson.qryPersonDetailPhotoNewRecord(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('personPhoto_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personPhotoDate_Dat').AsDateTime := Date;
    end;
end;

procedure TdmPerson.qryPersonPositionBeforePost(DataSet: TDataSet);
begin
 //************* SM - 31 Jan 2013
 UpdatePersonHeader;
end;

procedure TdmPerson.UpdatePersonHeader;
var
startDate, endDate, descOf :string;
  pArea   : string;
  activeRec : boolean;
  isActive :string;
begin
  with qryPersonPosition do
    begin
    if (not (State in [dsEdit, dsInsert])) then Edit;
    activeRec := False;
    if FieldByName('personPositionEnd_Dat').IsNull then activeRec := True;
    if FieldByName('personPositionEnd_Dat').AsDateTime > Date then activeRec := True;
    FieldByName('personPositionCurrent_bol').AsBoolean := activeRec;
    if activeRec then isActive := 'Current' else isActive := 'INACTIVE';

    pArea := qryPersonPost.FieldByName('personPositionPostDescription_str').AsString;
    if FieldByName('personPositionStart_Dat').IsNull then startDate := '(Open)' else
      startDate := '(' + FormatDateTime('dd/mm/yy', FieldByName('personPositionStart_Dat').AsDateTime ) + ')';
    if FieldByName('personPositionEnd_Dat').IsNull then endDate := '(Open)' else
      endDate := '(' + FormatDateTime('dd/mm/yy', FieldByName('personPositionEnd_Dat').AsDateTime ) + ')';
    descOf := FieldByName('personPositionNumberNo_Str').AsString;
    FieldByName('personPositionDescription_Str').AsString :=
      'Post [' + pArea + '] ' + 'From ' + startDate + ' Until ' + endDate + ' ' + isActive;
    end;
end;

procedure TdmPerson.qryPersonPositionNewRecord(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('personPosition_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personPositionNumberNo_Str').AsString := '';
    FieldByName('personPositionStart_Dat').AsDateTime := Date;
    FieldByName('personPositionEnd_Dat').AsDateTime := Date + 365;
    FieldByName('personType_ID').AsString := GetPersonTypeGUID(GetPersonType);
    FieldByName('personPositionStart_Dat').AsDateTime := Date;
    FieldByName('personPositionPost_ID').AsString := '{477ED238-172D-4226-B9C2-C05368099354}';
    FieldByName('clinic_ID').AsString := '{00000000-0000-0000-0000-000000000000}';
    FieldByName('specialisation_ID').AsString := '{7058DBD9-2319-4F38-A766-819CCF3AEC61}';
    FieldByName('complexSiteDepartment_ID').AsString := '{00000000-0000-0000-0000-000000000000}';
    FieldByName('personPositionCurrent_bol').AsBoolean := true;
    FieldByName('personPositionTitle_Str').AsString := '';
    FieldByName('personPositionBarCode_Str').AsString := '';
    FieldByName('personPositionDescription_Str').AsString := '';
    FieldByName('personPositionTitle_ID').AsString := '{3F41D1F0-D550-4128-84DC-8C21C525DE0E}';
    FieldByName('rxLevel_ID').AsString := '{7B921630-1D2D-4822-B792-614C54908258}';
    end;

end;

procedure TdmPerson.qryPersonPositionRotationBeforePost(
  DataSet: TDataSet);
var
startDate, endDate, descOf :string;
begin
  with DataSet do
    begin
    if FieldByName('dateStart_dat').IsNull then startDate := '(Open)' else
      startDate := '(' + FormatDateTime('dd/mm/yy', FieldByName('dateStart_dat').AsDateTime ) + ')';
    if FieldByName('dateEnd_dat').IsNull then endDate := '(Open)' else
      endDate := '(' + FormatDateTime('dd/mm/yy', FieldByName('dateEnd_dat').AsDateTime ) + ')';
    descOf := qrySiteDepartment.FieldByName('description_Str').AsString;
    FieldByName('rotationDescription_str').AsString :=
      'Dept. [' + descOf + '] ' + 'From ' + startDate + ' Until ' + endDate;
    end;
end;

procedure TdmPerson.qryPersonPositionRotationNewRecord(
  DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('positionRotation_ID').AsString := CreateClassID;
    FieldByName('complexSiteDepartment_ID').AsString := CreateClassID;
    FieldByName('personPosition_ID').AsString := qryPersonPosition.FieldByName('personPosition_ID').AsString;
    FieldByName('dateStart_dat').AsDateTime := Date;
    FieldByName('dateEnd_dat').AsDateTime := Date;
    FieldByName('rotationDescription_str').AsString := '<not set>';
    end;

end;

procedure TdmPerson.qryPersonQualificationNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personQualification_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personQualificationDateEntered_Dat').AsDateTime := Date;
    end;
end;

procedure TdmPerson.qryPersonSignatureNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personSignature_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personSignatureDateRecorded_Dat').AsDateTime := Date;
    end;
end;

procedure TdmPerson.SetDatabase(const Value: string);
begin

  FDatabase := Value;
  conPrescriber.ConnectionString := FDatabase;
  SetDatabaseLinks;

end;

procedure TdmPerson.SetDatabaseLinks;
begin

  if (FDatabase <> '') and (FPerson <> '') then
    begin
    conPrescriber.Close;
    SetupSQL;
    qryPersonDetail.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonDetailPhoto.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonSignature.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonQualification.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonComment.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonContact.Parameters.ParamByName('person_ID').Value := FPerson;
    qryPersonPosition.Parameters.ParamByName('person_ID').Value := FPerson;
    ConnectDataSource(FDatabase, conPrescriber);
    DoDefaultChecks;
    end;

end;

procedure TdmPerson.SetNewNumber;
var
  pArea   : string;
  pPostID : string;
  pNum    : string;
  pRxID   : string;
  ovr     : boolean;
begin

  with qryPersonPosition do
    begin

    ovr := True;

    pNum := FieldByName('personPositionNumberNo_Str').AsString;

    if pNum <> '' then
      if MessageDlg('Number exists, Overwrite?', mtWarning, [mbYes, mbNo, mbCancel],0) <> mrYes then
      ovr := False;

    if ovr then
      begin
      if not (state in [dsEdit, dsInsert]) then Edit;
      pArea := qryPersonPost.FieldByName('personPositionPostDescription_str').AsString;
      pPostID := FieldByName('personPositionPost_ID').AsString;
      FieldByName('personPositionNumberNo_Str').AsString := GetNextPrescriberDispenserNumber(pArea, FDatabase);
    {  pRxID := GetDefaultRxLevel(FDatabase, pPostID);
      if pRxID <> '' then FieldByName('rxLevel_ID').AsString := pRxID;    }
      end;
    end;

end;

procedure TdmPerson.SetNewRxLevel;
var
  pArea   : string;
  pPostID : string;
  pNum    : string;
  pRxID   : string;
  ovr     : boolean;
begin

  with qryPersonPosition do
    begin
    if not (state in [dsEdit, dsInsert]) then Edit;
    pPostID := FieldByName('personPositionPost_ID').AsString;
    pRxID := GetDefaultRxLevel(FDatabase, pPostID);
    if pRxID <> '' then FieldByName('rxLevel_ID').AsString := pRxID;
    end;

end;

procedure TdmPerson.SetPerson(const Value: string);
begin

  FPerson         := Value;
  SetDatabaseLinks;

end;

procedure TdmPerson.SetupCurrentStatus;
var
  activeRec : boolean;
  curNumber, cellNum, homeNum, Addr, clinicName, clinicID : String;

  pCFound, pHFound, pAFound, clinicFound : boolean;
  activePresc : boolean;
begin

  activePresc := False;
  with qryPersonPosition do
    if Active then
      begin
      First;
      while not EOF do
        begin
        Edit;
        //Bug Issue 2757
        //Remove automatic Ref number update
        //activeRec   := False;
        //if FieldByName('personPositionEnd_Dat').IsNull then activeRec := True;
        //if FieldByName('personPositionEnd_Dat').AsDateTime > Date then activeRec := True;
        //FieldByName('personPositionCurrent_bol').AsBoolean := activeRec;
        //if activeRec then
        //  begin
          curNumber := FieldByName('personPositionNumberNo_Str').AsString;
          activePresc := True;
        //  end;
        Post;
        Next;
        end;
      end;

  with qryPersonSignature do
    if Active then
      begin
      Close;
      Open;
      First;
      activeRec := True;
      while not EOF do
        begin
        Edit;
        FieldByName('personSignatureCurrent_bol').AsBoolean := activeRec;
        activeRec := False;
        Post;
        Next;
        end;
      end;

  with qryPersonDetailPhoto do
    if Active then
      begin
      Close;
      Open;
      First;
      activeRec := True;
      while not EOF do
        begin
        Edit;
        FieldByName('personPhotoCurrent_bol').AsBoolean := activeRec;
        activeRec := False;
        Post;
        Next;
        end;
      end;

  pCFound := True;
  pHFound := True;
  pAFound := True;

  with qryPersonContact do
    if Active then
      begin
      First;
      while not EOF do
        begin

        if not (State in [dsEdit, dsInsert]) then Edit;

        if FieldbyName('contactType_str').AsString = 'Address (Physical)' then
          begin
          FieldbyName('contactMode_str').AsString := 'Address';
          FieldbyName('contactType_str').AsString := 'Physical';
          end;

        if FieldbyName('contactType_str').AsString = 'Phone (Home)' then
          begin
          FieldbyName('contactMode_str').AsString := 'Phone';
          FieldbyName('contactType_str').AsString := 'Home';
          end;

        Post;

        if FieldByName('contactMode_str').AsString = 'Cell Phone' then
          begin
          if pCFound then cellNum := FieldByName('contactDetail_str').AsString;
          pCFound    := False;
          end;

        if FieldByName('contactMode_str').AsString = 'Phone' then
          begin
          if pHFound then homeNum := FieldByName('contactDetail_str').AsString;
          pHFound := False;
          end;

        if FieldByName('contactMode_str').AsString = 'Address' then
          begin
          if pAFound then Addr := FieldByName('contactDetail_str').AsString;
          pAFound:= False;
          end;
        Next;
        end;
      end;

  with qryPersonDetail do
    if Active then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
//      FieldByName('personActive_Bol').AsBoolean := activePresc;      SM    One must be able to set them active or not.
      FieldByName('personRefNoCurrent_str').AsString := curNumber;
      FieldByName('personCelNoCurrent_str').AsString := cellNum;
      FieldByName('personTelNoCurrent_str').AsString := homeNum;
      FieldByName('personAddressCurrent_str').AsString := Addr;
      Post;
      end;

end;

procedure TdmPerson.SetupSQL;
begin

  if FDatabase <> '' then
    begin
    with qryPersonPosition do
      begin
      SQL.Clear;
      SQL.Add('select * from tblPersonPosition where ((person_ID= :person_ID) AND (personType_ID = ''' + GetPersonTypeGUID(GetPersonType) + ''')) order by personPositionStart_Dat desc');
      end;

    with qryPersonPost do
      begin
      SQL.Clear;
      SQL.Add('select * from tblPersonPositionPost WHERE personPositionPostArea_str = ''' + GetPersonTypeDescription + '''');
      end;

    end;

end;

procedure TdmPerson.qryPersonPositionRotationAfterPost(DataSet: TDataSet);
begin
 //********* SM 31 Jan 2013
 UpdatePersonHeader;
end;

end.

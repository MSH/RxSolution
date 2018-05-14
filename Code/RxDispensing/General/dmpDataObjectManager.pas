unit dmpDataObjectManager;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, ADODB, Variants, StdCtrls,
  ExtCtrls, Dialogs, Controls,

  dxDBGrid;

const
  NOTAVALAILABLE = '<Not Available>';

type
  TMySession = class;
  TMyDataSet = class;

  TMySession = class(TObject)
  private
    ConnectionObject: TADOConnection;
    FConnectionString: string;
    FDB: string;
    FPassword: string;
    FServer: string;
    FUsername: string;
    function GetThisConnection: TADOConnection;
    procedure SetDB(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetServer(const Value: string);
    procedure SetupConnection;
    procedure SetUsername(const Value: string);
  public
    constructor Create(const prmConnectionString : string); overload;
    constructor Create(const prmDB : string ; const prmServer : string ; const
        prmUser : string = '' ; const prmPassword : string = ''); overload;
    destructor Destroy; override;
    function GetConnectionString: string;
    property DB: string read FDB write SetDB;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property ThisConnection: TADOConnection read GetThisConnection;
    property Username: string read FUsername write SetUsername;
  end;

  TMyDataSet = class(TObject)
  private
    FAutoOpen: Boolean;
    FAutoRefresh: Boolean;
    FDataSet: TADOQuery;
    FIsRefreshing: Boolean;
    
    FKeyField: string;
    FTimer: TTimer;
    function Editing: Boolean;
    function GetAutoRefreshIntervalInMins: Integer;
    function GetCurrentKey: Variant;
    procedure Refresh_DataSet;
    procedure SetAutoRefreshIntervalInMins(const Value: Integer);
    procedure Tick(Sender : TObject);
  protected
  public
    constructor Create(prmDataSet : TADOQuery ; prmKeyField : string ; prmOpen :
        Boolean  = True ; prmAutoRefresh : boolean = true);
    destructor Destroy; override;
    procedure Add;
    procedure Cancel;
    procedure Delete;
    procedure Open;
    procedure Refresh;
    procedure Save;
    property AutoOpen: Boolean read FAutoOpen write FAutoOpen;
    property AutoRefresh: Boolean read FAutoRefresh write FAutoRefresh;
    property AutoRefreshIntervalInMins: Integer read GetAutoRefreshIntervalInMins
        write SetAutoRefreshIntervalInMins;
    property CurrentKey: Variant read GetCurrentKey;
    property DataSet: TADOQuery read FDataSet write FDataSet;
    property IsRefreshing: Boolean read FIsRefreshing;
    property KeyField: string read FKeyField write FKeyField;
  end;

  TDataSetManager = class(TObject)
  private
    FCount: Integer;
    FDataSets: array of TMyDataSet;
    FInternallyCreatedSession: Boolean;
    FSession: TMySession;
    function GetDataSet(Index : string): TMyDataSet;
    procedure SetDatabaseLinks;
    procedure SetDataSet(Index : string; const Value: TMyDataSet);
  public
    constructor Create(prmDB, prmServer, prmUserName, prmPassword : string);
        overload;
    constructor Create(prmSession : TMySession); overload;
    constructor Create(const prmConnectionString : string); overload;
    destructor Destroy; override;
    procedure Add(prmDataSet : TADOQuery ; prmKeyField : string ; prmOpen :
        Boolean = True);
    procedure Cancel;
    procedure Open;
    procedure Refresh;
    procedure Save;
    property Count: Integer read FCount;
    property DataSet[Index : string]: TMyDataSet read GetDataSet write SetDataSet;
    property Session: TMySession read FSession write FSession;
  end;

  RMasterDetail = record
    Child: string;
    ForeignKey: string;
    Master: string;
  end;

implementation

constructor TMySession.Create(const prmConnectionString : string);
begin

  inherited Create;
  ConnectionObject := TADOConnection.Create(nil);
  FDB       := NOTAVALAILABLE;
  FServer   := NOTAVALAILABLE;
  FUsername := NOTAVALAILABLE;
  FPassword := NOTAVALAILABLE;
  FConnectionString := prmConnectionString;
  SetupConnection;

end;

constructor TMySession.Create(const prmDB : string ; const prmServer : string ;
    const prmUser : string = '' ; const prmPassword : string = '');
begin

  inherited Create;
  ConnectionObject := TADOConnection.Create(nil);
  FDB       := prmDB;
  FServer   := prmServer;
  FUsername := prmUser;
  FPassword := prmPassword;
  SetupConnection;

end;

destructor TMySession.Destroy;
begin
  ConnectionObject.Free;
  inherited;
end;

function TMySession.GetConnectionString: string;
const
  SQLSTR = 'Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';
begin
  if FDB <> NOTAVALAILABLE then
    Result := Format(SQLSTR, [FPassword, FUsername, FDB, FServer])
  else
    Result := FConnectionString;
end;

function TMySession.GetThisConnection: TADOConnection;
begin
  Result := ConnectionObject;
end;

procedure TMySession.SetDB(const Value: string);
begin

  if FDB <> Value then
  begin
    FDB := Value;
    SetupConnection;
  end;
  
end;

procedure TMySession.SetPassword(const Value: string);
begin
  if FPassword <> Value then
  begin
    FPassword := Value;
    SetupConnection;
  end;
end;

procedure TMySession.SetServer(const Value: string);
begin
  if FServer <> Value then
  begin
    FServer := Value;
    SetupConnection;
  end;
end;

procedure TMySession.SetupConnection;
begin

  try
  ConnectionObject.Close;
  ConnectionObject.ConnectionString := GetConnectionString;
  ConnectionObject.LoginPrompt := False;
  ConnectionObject.Open;
  ConnectionObject.Close;
  except
    on E : Exception do Exception.Create(E.Message);
  end;
  
end;

procedure TMySession.SetUsername(const Value: string);
begin

  if FUsername <> Value then
  begin
    FUsername := Value;
    SetupConnection;
  end;
  
end;

constructor TMyDataSet.Create(prmDataSet : TADOQuery ; prmKeyField : string ;
    prmOpen : Boolean  = True ; prmAutoRefresh : boolean = true);
begin

  inherited Create;

  FIsRefreshing     := False;
  FDataSet          := prmDataSet;
  FKeyField         := prmKeyField;
  FAutoOpen         := prmOpen;
//  FAutoRefresh      := prmAutoRefresh;
  FAutoRefresh      := False;
  FTimer            := TTimer.Create(nil);
  FTimer.OnTimer    := Tick;
  FTimer.Enabled    := True;
  FTimer.Interval   := 10000; // 2 Minutes
//  FTimer.Interval   := 6000; // 2 Minutes
  if FAutoOpen then FDataSet.Open;

end;

destructor TMyDataSet.Destroy;
begin

  FTimer.OnTimer := nil;
  FTimer.Free;
  inherited;

end;

procedure TMyDataSet.Add;
begin
  FDataSet.Append;
end;

procedure TMyDataSet.Cancel;
begin
  if Editing then FDataSet.Cancel;
end;

procedure TMyDataSet.Delete;
begin
  if FDataSet.RecordCount < 1 then raise Exception.Create('No Records to Delete');


  if MessageDlg('Delete Selected Record', mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
    FDataSet.Delete;
    Refresh_DataSet;
    end;
end;

function TMyDataSet.Editing: Boolean;
begin
  Result := FDataSet.State in [dsEdit, dsInsert];
end;

function TMyDataSet.GetAutoRefreshIntervalInMins: Integer;
begin
  Result := FTimer.Interval div 1000;
end;

function TMyDataSet.GetCurrentKey: Variant;
begin
  Result := DataSet.FieldByName(FKeyField).AsVariant;
end;

procedure TMyDataSet.Open;
begin
  if not FDataSet.Active then FDataSet.Open;
end;

procedure TMyDataSet.Refresh;
begin
  Refresh_DataSet;
end;

procedure TMyDataSet.Refresh_DataSet;
var
  curRecord, curSort : String;
  curRec    : Variant;
  reEnable  : boolean;
  bkm       : TBookmark;
//  i         : integer;
//  grds      : array of TdxDBGrid;

begin

{
//  FDataSet.DataSource.DataSet
  if FDataSet.Active or FAutoOpen then
    if not (FDataSet.State in [dsEdit, dsInsert]) then
      for i := 0 to FDataSet.  ComponentCount -1 do
        if Components[i] is TdxDBGrid then
          if (Components[i] as TdxDBGrid).DataSource.DataSet = FDataSet then
            if edgoLoadAllRecords in (Components[i] as TdxDBGrid).OptionsDB then
              begin
              SetLength(grds, Length(grds) + 1);
              grds[high(grds)] := Components[i] as TdxDBGrid;
//              Exclude(grds[high(grds)].OptionsDB , edgoLoadAllRecords);
              grds[high(grds)].OptionsDB := grds[high(grds)].OptionsDB - [edgoLoadAllRecords];
              end;
}
  try
  reEnable := True;
  with FDataSet do
    if Active or FAutoOpen then
      if not (State in [dsEdit, dsInsert]) then
        try
        FIsRefreshing := True;
        if ControlsDisabled then reEnable := False else DisableControls;
        if FKeyField <> '' then
          curRecord := FieldByName(FKeyField).AsString;
//        curRec := FieldByName(FKeyField).AsVariant;
        curSort   := Sort;
        Close;
        Open;
        Sort      := curSort;

        if FKeyField <> '' then
          Locate(FKeyField, curRecord,[])

        (*
        Last;
        while not BOF do
          begin
          if FieldByName(FKeyField).AsString = curRecord then Break;
          Prior;
          end;
          *)
        finally
        if reEnable then EnableControls;
        FIsRefreshing := False;
        end;

  except
    //???
  end;

end;

procedure TMyDataSet.Save;
begin
  if Editing then
    begin
    FDataSet.Post;
    Refresh_DataSet;
    end;


end;

procedure TMyDataSet.SetAutoRefreshIntervalInMins(const Value: Integer);
begin
  FTimer.Interval := Value * 1000;
end;

procedure TMyDataSet.Tick(Sender : TObject);
begin
  if FAutoRefresh then Refresh_DataSet;
end;

constructor TDataSetManager.Create(prmDB, prmServer, prmUserName, prmPassword :
    string);
begin
  inherited Create;
  FInternallyCreatedSession := True;
  FSession := TMySession.Create(prmDB, prmServer, prmUserName, prmPassword);
  FCount := 0;

end;

constructor TDataSetManager.Create(prmSession : TMySession);
begin
  inherited Create;
  FInternallyCreatedSession := False;
  FCount := 0;
end;

constructor TDataSetManager.Create(const prmConnectionString : string);
begin
  inherited Create;
  FInternallyCreatedSession := True;
  FSession := TMySession.Create(prmConnectionString);
  FCount := 0;
end;

destructor TDataSetManager.Destroy;
begin
  if FInternallyCreatedSession then FSession.Free;
  inherited;
end;

procedure TDataSetManager.Add(prmDataSet : TADOQuery ; prmKeyField : string ;
    prmOpen : Boolean = True);
begin

  Inc(FCount);
  Setlength(FDataSets, FCount);
  prmDataSet.Close;
  prmDataSet.Connection := FSession.ThisConnection;
  FDataSets[FCount -1] := TMyDataSet.Create(prmDataSet, prmKeyField, prmOpen);

end;

procedure TDataSetManager.Cancel;
var
  i : integer;
begin
  if FCount > 0 then
    for i := low(FDataSets) to high(FDataSets) do
      FDataSets[i].Cancel;
end;

function TDataSetManager.GetDataSet(Index : string): TMyDataSet;
const                                                                  (*const*)(*...........................................*)
  ERR01 = 'APPLICATION ERROR : No Dataset available.' + #13;
  ERR02 = 'APPLICATION ERROR : Dataset %s not found.' + #13;
var (*.................................................................*)(*var*)(*...........................................*)
  i       : integer;
  found   : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  for i := low(FDataSets) to High(FDataSets) do
    if FDataSets[i].DataSet.Name = Index then
      found := i;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));               // Passed variable was not found, raise exception.
  Result := FDataSets[found];

end; (*................................................................*)(*end*)(*...........................................*)

procedure TDataSetManager.Open;
var
  i : integer;
begin
  if FCount > 0 then
    for i := low(FDataSets) to high(FDataSets) do
      FDataSets[i].Open;
end;

procedure TDataSetManager.Refresh;
var
  i : integer;
begin


  if FCount > 0 then
    for i := low(FDataSets) to high(FDataSets) do
      FDataSets[i].Refresh;
end;

procedure TDataSetManager.Save;
var
  i : integer;
begin
  if FCount > 0 then
    for i := low(FDataSets) to high(FDataSets) do
      FDataSets[i].Save;
end;

procedure TDataSetManager.SetDatabaseLinks;
begin

{
  if (FDatabase <> '') and (FPrescriber <> '') then
    begin
    conPrescriber.Close;
    SetupSQL;
    qryPersonDetail.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonDetailPhoto.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonSignature.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonQualification.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonComment.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonContact.Parameters.ParamByName('person_ID').Value := FPrescriber;
    qryPersonPosition.Parameters.ParamByName('person_ID').Value := FPrescriber;
    ConnectDataSource(FDatabase, conPrescriber);
    DoDefaultChecks;
    end;
}

end;

procedure TDataSetManager.SetDataSet(Index : string; const Value: TMyDataSet);
const
  ERR01 = 'APPLICATION ERROR : No Dataset available.' + #13;
  ERR02 = 'APPLICATION ERROR : Dataset %s not found.' + #13;
var
  i       : integer;
  found   : integer;
begin

  if FCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an

  found := -1;
  for i := low(FDataSets) to High(FDataSets) do
    if FDataSets[i].DataSet.Name = Index then
      found := i;

  if found = -1 then raise Exception.Create(Format(ERR02, [Index]));
  FDataSets[found] := Value;

end;


end.

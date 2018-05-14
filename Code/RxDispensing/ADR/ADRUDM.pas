unit ADRUDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TADRDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    tblPatients: TADOQuery;
    DSPatients: TDataSource;
    tblADR: TADOQuery;
    DSADR: TDataSource;
    tblPatientspersonRefNoCurrent_str: TWideStringField;
    tblPatientspersonName: TWideStringField;
    tblPatientsperson_ID: TGuidField;
    tblPatientsAge: TIntegerField;
    tblPatientspersonGender_Str: TWideStringField;
    tblPatientspersonDOB_Dat: TDateTimeField;
    ADRDetail: TADOQuery;
    DSADRDetail: TDataSource;
    addProducts: TADOQuery;
    addProductsFrmRx: TADOQuery;
    tblADRWorker: TADOQuery;
    dsADRWorker: TDataSource;
    procedure tblADRAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
   vCurrentRecord : integer;
   procedure DataConnect;
   procedure EditADR;
   procedure AddADR;
   procedure LoadPatients;
   procedure LoadADRs;
   procedure LoadADRDetails;

   procedure InsertProductDetails;
   procedure InsertProductFromRx(RxID: string; ADRID: integer);


  end;

var
  ADRDM: TADRDM;

implementation

{$R *.dfm}


procedure TADRDM.DataConnect;
var
 FDataBasePath       : string;
begin
 {
if Assigned(MainDM) then
 begin
 ADODemanderTransfer.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;
 }

 with tblPatients do
  begin
  Close;
  Open;
  end;

 with tblADR do
  begin
  Close;
  Open;
  end;

 {vCurrentRecord := tblTransfers.FieldByName('DemanderTransfer_ID').AsInteger;
 
 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;         }

end;

procedure TADRDM.LoadPatients;
begin
 with tblPatients do
  begin
  Close;
  Open;
  end;
end;

procedure TADRDM.LoadADRs;
begin
 with tblADR do
  begin
  Close;
  Open;
  end;
end;

procedure TADRDM.LoadADRDetails;
begin
 with ADRDetail do
  begin
  Close;
  Parameters.ParamByName('ADR_ID').Value := vCurrentRecord;
  Open;
  end;
end;  

procedure TADRDM.AddADR;
begin

 with tblADR do
  begin
  Append;
  FieldByName('Person_ID').Value := tblPatients.fieldByname('person_ID').Value;
  FieldByName('AdverseReation_bol').AsBoolean   := False;
  FieldByName('ProductReaction_bol').AsBoolean  := False;
  FieldByName('Posted_bol').AsBoolean           := False;
  Post;

  vCurrentRecord := FieldByName('ADR_ID').AsInteger;
  end;
  
 EditADR; 
end;

procedure TADRDM.EditADR;
begin

 with tblADRWorker do
  begin
  Close;
  Parameters.ParamByName('@ADR_ID').Value := vCurrentRecord;
  Open;
  end;

  LoadADRDetails;

end;

procedure TADRDM.InsertProductDetails;
begin
 with addProducts do
  begin
  Parameters.ParamByName('@ADR_ID').Value := '';
  Parameters.ParamByName('@ProdCode_ID').Value := '';
  ExecSQL;
  end;

end;

procedure TADRDM.InsertProductFromRx(RxID: string; ADRID: integer);
begin
 //
 with addProductsFrmRx do
  begin
  Parameters.ParamByName('@ADR_ID').Value:= ADRID;
  Parameters.ParamByName('@RX_ID').Value := RxID;     
  ExecSQL;
  end; 
end;



procedure TADRDM.tblADRAfterScroll(DataSet: TDataSet);
begin

 with tblADR do
  begin
  vCurrentRecord := fieldByName('ADR_ID').AsInteger;
  end;

end;

end.

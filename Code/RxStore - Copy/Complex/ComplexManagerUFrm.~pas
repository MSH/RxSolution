unit ComplexManagerUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, StdCtrls, Mask, RzEdit, RzButton, RzLabel, RzBckgnd,
  ElPopBtn, ExtCtrls, DB, ADODB, dxExEdtr, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, DBActns, ActnList, RzDBEdit, RzRadChk,
  RzDBChk, ComObj;

type
  TComplexManagerFrm = class(TForm)
    pnl_Main_Back: TPanel;
    pnl_Main_PatientListPanel: TPanel;
    Label83: TLabel;
    Shape2: TShape;
    rzsLine01: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    pnl_Main_PrescriptionPanel: TPanel;
    Shape3: TShape;
    rzLblRxList: TRzLabel;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    ADOConnection1: TADOConnection;
    qryComplex: TADOQuery;
    qryComplexSite: TADOQuery;
    qryComplexSiteDeptArea: TADOQuery;
    qryComplexPhamarcy: TADOQuery;
    dsComplex: TDataSource;
    dsComplexSite: TDataSource;
    dsComplexSiteDeptArea: TDataSource;
    dsComplexPhamarcy: TDataSource;
    qryComplexPhamarcycomplexPharmacy_ID: TGuidField;
    qryComplexPhamarcycomplexPharmacyName_str: TWideStringField;
    qryComplexPhamarcycomplex_ID: TGuidField;
    qryComplexPhamarcyrxStoreDemander_ID: TIntegerField;
    qryComplexPhamarcyrxStoreServer_str: TWideStringField;
    qryComplexPhamarcyrxStoreDB_str: TWideStringField;
    qryComplexPhamarcyrxStoreUseDB_bol: TBooleanField;
    ActionList1: TActionList;
    ComplexInsert1: TDataSetInsert;
    ComplexEdit1: TDataSetEdit;
    GroupBox1: TGroupBox;
    grdcomplex: TdxDBGrid;
    grdcomplexcomplexCode_str: TdxDBGridColumn;
    grdcomplexcomplexName_str: TdxDBGridColumn;
    grdcomplexcomplexAbbreviation_Str: TdxDBGridColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryComplexcomplex_ID: TGuidField;
    qryComplexcomplexName_str: TWideStringField;
    qryComplexcomplexAbbreviation_Str: TWideStringField;
    qryComplexcomplexCode_str: TWideStringField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    ComplexSitetInsert1: TDataSetInsert;
    ComplexSiteEdit1: TDataSetEdit;
    qryComplexSitecomplexSite_ID: TGuidField;
    qryComplexSitecomplex_ID: TGuidField;
    qryComplexSitesiteName_Str: TWideStringField;
    qryComplexSitesiteAddress01_Str: TWideStringField;
    qryComplexSitesiteAddress02_Str: TWideStringField;
    qryComplexSitesiteAddress03_Str: TWideStringField;
    qryComplexSitesiteAddress04_Str: TWideStringField;
    qryComplexSitesitePhone_Str: TWideStringField;
    qryComplexSitesiteFax_Str: TWideStringField;
    qryComplexSitesiteEmail_str: TWideStringField;
    qryComplexSitesiteType_str: TWideStringField;
    qryComplexSitesiteCode_str: TWideStringField;
    qryComplexSitesiteSuperintendent_str: TWideStringField;
    qrycomplexSiteDept: TADOQuery;
    dscomplexSideDept: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    GroupBox3: TGroupBox;
    grdComplexDept: TdxDBGrid;
    dxDBGrid1: TdxDBGrid;
    dxDBGridsiteName_Str: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    dxDBGridColumn10: TdxDBGridColumn;
    dxDBGridColumn11: TdxDBGridColumn;
    dxDBGridColumn12: TdxDBGridColumn;
    dxDBGridColumn13: TdxDBGridColumn;
    qrycomplexSiteDeptcomplexSiteDepartment_ID: TGuidField;
    qrycomplexSiteDeptcomplexSite_ID: TGuidField;
    qrycomplexSiteDeptdepartmentName_str: TWideStringField;
    qrycomplexSiteDeptdepartmentRoom_str: TWideStringField;
    qrycomplexSiteDeptauthorizePrescription_bol: TBooleanField;
    qrycomplexSiteDeptauthorizeDispensing_bol: TBooleanField;
    qrycomplexSiteDeptdescription_Str: TWideStringField;
    qrycomplexSiteDeptclinicDepartment_bol: TBooleanField;
    grdComplexDeptcomplexSiteDepartment_ID: TdxDBGridColumn;
    grdComplexDeptcomplexSite_ID: TdxDBGridColumn;
    grdComplexDeptdepartmentName_str: TdxDBGridColumn;
    grdComplexDeptdepartmentRoom_str: TdxDBGridColumn;
    grdComplexDeptauthorizePrescription_bol: TdxDBGridCheckColumn;
    grdComplexDeptauthorizeDispensing_bol: TdxDBGridCheckColumn;
    grdComplexDeptdescription_Str: TdxDBGridColumn;
    grdComplexDeptclinicDepartment_bol: TdxDBGridCheckColumn;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    Panel1: TPanel;
    Shape5: TShape;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    complexSideDeptInsert1: TDataSetInsert;
    complexSideDeptEdit1: TDataSetEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    Panel4: TPanel;
    Shape6: TShape;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2departmentAreaCode_str: TdxDBGridColumn;
    dxDBGrid2departmentAreaName_str: TdxDBGridColumn;
    dxDBGrid2departmentAreaRoomNo_str: TdxDBGridColumn;
    dxDBGrid2departmentAreaRoomType_str: TdxDBGridColumn;
    dxDBGrid2departmentAreaDescription_str: TdxDBGridColumn;
    dxDBGrid2isHospitalWard_bol: TdxDBGridCheckColumn;
    RzDBCheckBox2: TRzDBCheckBox;
    dsComplexSiteDeptAreaInsert1: TDataSetInsert;
    dsComplexSiteDeptAreaEdit1: TDataSetEdit;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton18: TElSpeedButton;
    ElSpeedButton20: TElSpeedButton;
    ComplexPost1: TDataSetPost;
    ComplexCancel1: TDataSetCancel;
    ComplexSitePost1: TDataSetPost;
    ComplexSiteCancel1: TDataSetCancel;
    complexSideDeptPost1: TDataSetPost;
    complexSideDeptCancel1: TDataSetCancel;
    ComplexSiteDeptAreaPost1: TDataSetPost;
    ComplexSiteDeptAreaCancel1: TDataSetCancel;
    complexsiteDeptAreaBeds: TADOQuery;
    dscomplexsiteDeptAreaBeds: TDataSource;
    Panel5: TPanel;
    Panel6: TPanel;
    Shape7: TShape;
    ElSpeedButton21: TElSpeedButton;
    ElSpeedButton22: TElSpeedButton;
    ElSpeedButton23: TElSpeedButton;
    ElSpeedButton24: TElSpeedButton;
    ElSpeedButton25: TElSpeedButton;
    GroupBox5: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzDBCheckBox3: TRzDBCheckBox;
    dxDBGrid3: TdxDBGrid;
    complexsiteDeptAreaBedscomplexSiteDepartmentArea_ID: TGuidField;
    complexsiteDeptAreaBedsCode_str: TWideStringField;
    complexsiteDeptAreaBedsDescription_str: TWideStringField;
    complexsiteDeptAreaBedspersonUsingBed_ID: TGuidField;
    complexsiteDeptAreaBedsoccupied_bol: TBooleanField;
    dxDBGrid3Code_str: TdxDBGridColumn;
    dxDBGrid3Description_str: TdxDBGridColumn;
    dxDBGrid3occupied_bol: TdxDBGridCheckColumn;
    BedsInsert1: TDataSetInsert;
    BedsEdit1: TDataSetEdit;
    BedsPost1: TDataSetPost;
    BedsCancel1: TDataSetCancel;
    complexsiteDeptAreaBedscomplexBed_ID: TGuidField;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    Label5: TLabel;
    RzDBEdit19: TRzDBEdit;
    Label6: TLabel;
    qryComplexSiteDeptAreacomplexSiteDepartmentArea_ID: TGuidField;
    qryComplexSiteDeptAreacomplexSiteDepartment_ID: TGuidField;
    qryComplexSiteDeptAreacomplexPharmacy_ID: TGuidField;
    qryComplexSiteDeptAreadepartmentAreaCode_str: TWideStringField;
    qryComplexSiteDeptAreadepartmentAreaName_str: TWideStringField;
    qryComplexSiteDeptAreadepartmentAreaRoomNo_str: TWideStringField;
    qryComplexSiteDeptAreadepartmentAreaRoomType_str: TWideStringField;
    qryComplexSiteDeptAreadepartmentAreaDescription_str: TWideStringField;
    qryComplexSiteDeptAreaisHospitalWard_bol: TBooleanField;
    procedure qryComplexSiteNewRecord(DataSet: TDataSet);
    procedure qryComplexSiteDeptAreaNewRecord(DataSet: TDataSet);
    procedure qryComplexPhamarcyNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qrycomplexSiteDeptNewRecord(DataSet: TDataSet);
    procedure complexsiteDeptAreaBedsNewRecord(DataSet: TDataSet);
    procedure qryComplexSiteBeforePost(DataSet: TDataSet);
    procedure qrycomplexSiteDeptBeforePost(DataSet: TDataSet);
    procedure qryComplexSiteDeptAreaBeforePost(DataSet: TDataSet);
    procedure complexsiteDeptAreaBedsBeforePost(DataSet: TDataSet);
    procedure qryComplexSiteDeptAreaAfterScroll(DataSet: TDataSet);
    procedure qryComplexNewRecord(DataSet: TDataSet);
    procedure qryComplexAfterScroll(DataSet: TDataSet);
    procedure qryComplexSiteAfterScroll(DataSet: TDataSet);
    procedure qrycomplexSiteDeptAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LoadData;
    procedure CloseData;


    


  public
    { Public declarations }
        vSiteID : string;
        vSiteComplex : string;
        vSiteComplexDept: string;
        vSiteComplexDeptArea: string;
        vDeptAreaID: string;
  end;

var
  ComplexManagerFrm: TComplexManagerFrm;

implementation

uses RxSolutionUFrm, MainUDM;

{$R *.dfm}

procedure TComplexManagerFrm.LoadData;
begin

 
if Assigned(MainDM) then
 ADOConnection1.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 //Open all tables
 with qryComplex do
  begin
  Close;
  Open;
  end;

 with qryComplexSite do
  begin
  Close;
  Open;
  end;

 with qrycomplexSiteDept do
  begin
  Close;
  Open;
  end;

 with qryComplexSiteDeptArea do
  begin
  Close;
  Open;
  end;

 with complexsiteDeptAreaBeds do
  begin
  Close;
  Open;
  end;

end;

procedure TComplexManagerFrm.CloseData;
begin

//Close all tables
 with qryComplex do
  begin
  Close;
  end;

 with qryComplexSite do
  begin
  Close;
  end;

 with qrycomplexSiteDept do
  begin
  Close;
  end;

 with qryComplexSiteDeptArea do
  begin
  Close;
  end;

 with complexsiteDeptAreaBeds do
  begin
  Close;
  end;

end;

procedure TComplexManagerFrm.qryComplexSiteNewRecord(
  DataSet: TDataSet);
begin

 vSiteComplex := CreateClassID;

 with qryComplexSite do
  begin
  if qryComplex.Active then
   FieldByName('Complex_ID').Value := vSiteID;
  FieldByName('complexSite_ID').AsString := vSiteComplex;
  end;

end;

procedure TComplexManagerFrm.qryComplexSiteDeptAreaNewRecord(
  DataSet: TDataSet);
begin

 vDeptAreaID := CreateClassID;

 with qryComplexSiteDeptArea do
  begin
  if qryComplexSiteDept.Active then
   FieldByName('complexSiteDepartment_ID').Value := vSiteComplexDept;
  FieldByName('complexSiteDepartmentArea_ID').asString := vDeptAreaID;
  end;
  
end;

procedure TComplexManagerFrm.qryComplexPhamarcyNewRecord(
  DataSet: TDataSet);
begin 

 with qryComplexPhamarcy do
  begin
  if qryComplex.Active then
   FieldByName('Complex_ID').Value := qryComplex.FieldByName('Complex_ID').Value;
  end;
end;

procedure TComplexManagerFrm.FormShow(Sender: TObject);
begin
 LoadData;
end;

procedure TComplexManagerFrm.qrycomplexSiteDeptNewRecord(
  DataSet: TDataSet);
begin

 vSiteComplexDept := CreateClassID;

 with qrycomplexSiteDept do
  begin
  if qryComplexSite.Active then
    FieldByName('complexSite_ID').Value := vSiteComplex;
  FieldByname('complexSiteDepartment_ID').AsString := vSiteComplexDept;  
  end;
end;

procedure TComplexManagerFrm.complexsiteDeptAreaBedsNewRecord(
  DataSet: TDataSet);
begin


 with complexsiteDeptAreaBeds do
  begin
  if qryComplexSiteDeptArea.Active then
   FieldByName('complexSiteDepartmentArea_ID').Value := vDeptAreaID;
  end;

end;

procedure TComplexManagerFrm.qryComplexSiteBeforePost(DataSet: TDataSet);
begin
 with qryComplex do
  begin
  if State in [dsEdit, dsInsert] then Post;
  end;
end;

procedure TComplexManagerFrm.qrycomplexSiteDeptBeforePost(
  DataSet: TDataSet);
begin
 with qryComplexSite do
  begin
  if State in [dsEdit, dsInsert] then Post;
  end;
end;

procedure TComplexManagerFrm.qryComplexSiteDeptAreaBeforePost(
  DataSet: TDataSet);
begin

 with qrycomplexSiteDept do
  begin
  if State in [dsEdit, dsInsert] then Post;
  end;

end;

procedure TComplexManagerFrm.complexsiteDeptAreaBedsBeforePost(
  DataSet: TDataSet);
begin

 with qryComplexSiteDeptArea do
  begin
  if State in [dsEdit, dsInsert] then Post;
  end;

end;

procedure TComplexManagerFrm.qryComplexSiteDeptAreaAfterScroll(
  DataSet: TDataSet);
begin
 vDeptAreaID := qryComplexSiteDeptArea.FieldByName('complexSiteDepartmentArea_ID').AsString;
end;

procedure TComplexManagerFrm.qryComplexNewRecord(DataSet: TDataSet);
begin

 vSiteID := CreateClassID;
 with qryComplex do
  begin
  FieldByName('complex_ID').AsString := vSiteID;
  end;

end;

procedure TComplexManagerFrm.qryComplexAfterScroll(DataSet: TDataSet);
begin
 vSiteID := qryComplex.FieldByName('complex_ID').Asstring;
end;

procedure TComplexManagerFrm.qryComplexSiteAfterScroll(DataSet: TDataSet);
begin

 vSiteComplex := qryComplexSite.FieldByName('complexSite_ID').AsString;

end;

procedure TComplexManagerFrm.qrycomplexSiteDeptAfterScroll(
  DataSet: TDataSet);
begin
 vSiteComplexDept := qryComplexSiteDept.FieldByName('complexSiteDepartment_ID').AsString;
end;

end.

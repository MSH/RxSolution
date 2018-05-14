unit ClinicManagerUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, DBCtrls,
  RzDBNav, RzDBCmbo, Mask, RzEdit, RzDBEdit, RzPanel, RzLabel, ExtCtrls,
  DB, ADODB, RzCommon, ComObj, RzButton, ImgList;

type
  TClinicManagerFrm = class(TForm)
    conClinic: TADOConnection;
    rzcMain: TRzFrameController;
    qryClinic: TADOQuery;
    dsqryClinic: TDataSource;
    dsqryLUBatchRoute: TDataSource;
    qryLUBatchRoute: TADOQuery;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    pnlHolder_Clinic: TPanel;
    rzlClinicList: TRzLabel;
    RZlBLComplexSiteDetails: TRzLabel;
    rzgClinicDetails: TRzGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    rznClinics: TRzDBNavigator;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    rzgClinicList: TRzGroupBox;
    gxdClinicList: TdxDBGrid;
    gxdClinicListclinicName_str: TdxDBGridColumn;
    gxdClinicListclinicClassification_str: TdxDBGridColumn;
    gxdClinicListclinicDistrictPharmacist_str: TdxDBGridColumn;
    gxdClinicListclinicDistrictMunicipality_str: TdxDBGridColumn;
    gxdClinicListclinicHealthSubDistrict_str: TdxDBGridColumn;
    gxdClinicListclinicLocation_str: TdxDBGridColumn;
    gxdClinicListbatchRouteName_str: TdxDBGridColumn;
    ImageList2: TImageList;
    qryClinicclinic_ID: TGuidField;
    qryClinicclinicName_str: TWideStringField;
    qryClinicclinicClassification_str: TWideStringField;
    qryClinicclinicDistrictPharmacist_str: TWideStringField;
    qryClinicclinicDistrictMunicipality_str: TWideStringField;
    qryClinicclinicHealthSubDistrict_str: TWideStringField;
    qryClinicclinicLocation_str: TWideStringField;
    qryClinicdownRefRoute_ID: TGuidField;
    qryClinicbatchRouteName_str: TWideStringField;
    qryClinicclinicAddress01_str: TWideStringField;
    qryClinicclinicAddress02_str: TWideStringField;
    qryClinicclinicAddress03_str: TWideStringField;
    qryClinicclinicAddress04_str: TWideStringField;
    qryClinicclinicDays_str: TWideStringField;
    qryClinicclinicElectoralWard_str: TWideStringField;
    qryClinicclinicTelephone_str: TWideStringField;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    dsMagisterialDistrict: TDataSource;
    procedure qryClinicBeforePost(DataSet: TDataSet);
    procedure qryClinicNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryClinicbatchRouteName_strChange(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    FDbConnectionString: string;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open;
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  ClinicManagerFrm: TClinicManagerFrm;

implementation

uses RxSolutionUFrm, MainUDM, RxSolutionSecurityClass;

{$R *.dfm}

procedure TClinicManagerFrm.Close;
begin
  qryClinic.Close;
  qryLUBatchRoute.Close; 
end;

procedure TClinicManagerFrm.Open;
begin

  try
  conClinic.Close;
  conClinic.ConnectionString := FDbConnectionString;
  qryLUBatchRoute.Open;
  qryClinic.Open;
  except
  end;   
end;

procedure TClinicManagerFrm.qryClinicBeforePost(DataSet: TDataSet);
begin
  with Dataset do
    begin

    if FieldByName('downRefRoute_ID').AsString = qryLUBatchRoute.FieldByName('downRefRoute_ID').AsString then
      FieldByName('batchRouteName_str').AsString := qryLUBatchRoute.FieldByName('routeName_str').AsString


    end;
end;

procedure TClinicManagerFrm.qryClinicNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('clinic_ID').AsString := CreateClassID;
    FieldByName('clinicClassification_str').AsString := 'Pending...';
    FieldByName('clinicDistrictPharmacist_str').AsString := 'Pending...';
    FieldByName('clinicDistrictMunicipality_str').AsString := 'Pending...';
    FieldByName('clinicHealthSubDistrict_str').AsString := 'Pending...';
    FieldByName('clinicLocation_str').AsString := 'Pending...';
    FieldByName('downRefRoute_ID').AsString := CreateClassID;
    end;
end;

procedure TClinicManagerFrm.Screen_Resize;
var
  curWid, curHgt  :integer;
const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnlToolbar_Header.Width;
  curHgt  := HGHT;

  pnlToolbar_Header.Height := curHgt;

  pnlToolbar_Header_ShapeBorder.Left   := STEP;
  pnlToolbar_Header_ShapeBorder.Top    := STEP;
  pnlToolbar_Header_ShapeBorder.Width  := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height := curHgt - (STEP * 2);

  pnlToolbar_Header_Display.Left   := (STEP * 2);
  pnlToolbar_Header_Display.Top    := (STEP * 2);
  pnlToolbar_Header_Display.Width  := curWid - (STEP * 4);
  pnlToolbar_Header_Display.Height := curHgt - (STEP * 4);

  curWid := pnlToolbar_Header.Width;
  curHgt := pnlHolder_Clinic.Height;

//  rzLblClinics.Width := curWid - (STEP * 2);
  rzgClinicDetails.Height := curHgt - (rzgClinicDetails.Top + STEP);
  rznClinics.Top := rzgClinicDetails.Height - (rznClinics.Height + STEP);

  rzlClinicList.Width := curWid - rzlClinicList.Left - STEP;
  rzgClinicList.Width := rzlClinicList.Width;
  rzgClinicList.Height := rzgClinicDetails.Height;


end;

procedure TClinicManagerFrm.SetDbConnectionString(const Value: string);
begin
  conClinic.Close;
  conClinic.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TClinicManagerFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TClinicManagerFrm.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open;
end;

procedure TClinicManagerFrm.qryClinicbatchRouteName_strChange(
  Sender: TField);
begin

 qryClinic.FieldByName('clinicDays_str').AsString := qryLUBatchRoute.FieldByName('routeDayOfWeek_int').AsString;

end;

procedure TClinicManagerFrm.FormShow(Sender: TObject);
var
 atnBrowse, vDisable : Boolean;
 i, vColumnNumber: integer;
begin

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_DISPENSING_CLINICS) = USER_BROWSER);

 vDisable := not atnBrowse;

 if (atnBrowse) then
  rznClinics.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbRefresh]
 else
  rznClinics.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];

 rzgClinicDetails.Enabled := not atnBrowse;
 
 if atnBrowse then
  pnlToolbar_Header_Display.Caption := 'Clinic Manager [Browse Only]'
 else
  pnlToolbar_Header_Display.Caption := 'Clinic Manager';

end;

end.


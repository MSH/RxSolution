unit frameClinic;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, ADODB, RzCommon, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  ExtCtrls, RzPanel, ComObj, DBCtrls, RzDBCmbo, RzDBNav, StdCtrls, Mask,
  RzEdit, RzDBEdit, RzLabel;

type
  TfrmeClinic = class(TFrame)
    conClinic: TADOConnection;
    rzcMain: TRzFrameController;
    qryClinic: TADOQuery;
    dsqryClinic: TDataSource;
    qryLUBatchRoute: TADOQuery;
    dsqryLUBatchRoute: TDataSource;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    Panel4: TPanel;
    rzLblClinics: TRzLabel;
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
    RzDBEdit2: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    rzgClinicList: TRzGroupBox;
    grdClinicList: TdxDBGrid;
    grdClinicListclinicName_str: TdxDBGridColumn;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    grdClinicListclinicClassification_str: TdxDBGridColumn;
    grdClinicListclinicDistrictPharmacist_str: TdxDBGridColumn;
    grdClinicListclinicDistrictMunicipality_str: TdxDBGridColumn;
    grdClinicListclinicHealthSubDistrict_str: TdxDBGridColumn;
    grdClinicListclinicLocation_str: TdxDBGridColumn;
    rznClinics: TRzDBNavigator;
    grdClinicListbatchRouteName_str: TdxDBGridColumn;
    Label1: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label5: TLabel;
    RzDBEdit4: TRzDBEdit;
    Label9: TLabel;
    RzDBEdit7: TRzDBEdit;
    Label10: TLabel;
    RzDBEdit8: TRzDBEdit;
    Label11: TLabel;
    RzDBEdit10: TRzDBEdit;
    Label12: TLabel;
    RzDBEdit11: TRzDBEdit;
    Label13: TLabel;
    RzDBEdit12: TRzDBEdit;
    procedure qryClinicNewRecord(DataSet: TDataSet);
    procedure rznClinicsResize(Sender: TObject);
    procedure qryClinicBeforePost(DataSet: TDataSet);
    procedure FrameResize(Sender: TObject);
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

implementation

{$R *.dfm}

procedure TfrmeClinic.Close;
begin

  qryClinic.Close;
  qryLUBatchRoute.Close;

end;

procedure TfrmeClinic.Open;
begin

  try
  qryLUBatchRoute.Open;
  qryClinic.Open;
  except
  end;


end;

procedure TfrmeClinic.qryClinicNewRecord(DataSet: TDataSet);
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

procedure TfrmeClinic.Screen_Resize;
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

  rzLblClinics.Width := curWid - (STEP * 2);
  rzgClinicDetails.Height := curHgt - (rzgClinicDetails.Top + STEP);
  rznClinics.Top := rzgClinicDetails.Height - (rznClinics.Height + STEP);

  rzlClinicList.Width := curWid - rzlClinicList.Left - STEP;
  rzgClinicList.Width := rzlClinicList.Width;
  rzgClinicList.Height := rzgClinicDetails.Height;
  

end;

procedure TfrmeClinic.SetDbConnectionString(const Value: string);
begin
  conClinic.Close;
  conClinic.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TfrmeClinic.rznClinicsResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TfrmeClinic.qryClinicBeforePost(DataSet: TDataSet);
begin
  with Dataset do
    begin

    if FieldByName('downRefRoute_ID').AsString = qryLUBatchRoute.FieldByName('downRefRoute_ID').AsString then
      FieldByName('batchRouteName_str').AsString := qryLUBatchRoute.FieldByName('routeName_str').AsString


    end;
end;

procedure TfrmeClinic.FrameResize(Sender: TObject);
begin
  Screen_Resize;
end;

end.

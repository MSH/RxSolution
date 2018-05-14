unit frameComplex;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, ADODB, RzCommon, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DBCtrls,
  RzDBCmbo, StdCtrls, RzDBEdit, dxCntner, Mask, RzEdit, ExtCtrls, RzPanel,
  RzLabel, RzDBLbl, RzTabs, RzCmboBx, dxDBTLCl, dxGrClms, RzDBNav, ComObj,
  RzLstBox, RzDBList, RzBckgnd,
  dmpDataObjectManager;

type
  TfrmeComplex = class(TFrame)
    conComplex: TADOConnection;
    rzcMain: TRzFrameController;
    qryComplexSite: TADOQuery;
    qryComplex: TADOQuery;
    dsqryComplex: TDataSource;
    dsqryComplexSite: TDataSource;
    qryComplexSiteDepartment: TADOQuery;
    dsqryComplexSiteDepartment: TDataSource;
    qryComplexPharmacy: TADOQuery;
    dsqryComplexPharmacy: TDataSource;
    dsqryComplexPharmacyLookup: TDataSource;
    qryComplexSiteDepartmentAreas: TADOQuery;
    dsqryComplexSiteDepartmentAreas: TDataSource;
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    pnlComplexname: TPanel;
    rzDBLblComplexname: TRzDBLabel;
    RzSeparator2: TRzSeparator;
    pnlHolder_Complex_Sites: TPanel;
    RzLabel9: TRzLabel;
    RZlBLComplexSiteDetails: TRzLabel;
    rzgComplexSiteDetails: TRzGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    grdComplexSite: TdxDBGrid;
    RzDBNavigator1: TRzDBNavigator;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzDBEdit21: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    grdPharmacy: TdxDBGrid;
    RzDBNavigator3: TRzDBNavigator;
    RzSeparator1: TRzSeparator;
    pnlComplexDepartments: TPanel;
    rzLblComplexDepartments: TRzLabel;
    RzSeparator3: TRzSeparator;
    pnlHolder_Complex_Sites_Departments: TPanel;
    rzLblDepartment: TRzLabel;
    rzLblAreas: TRzLabel;
    rzgDepartment: TRzGroupBox;
    grdComplexSiteDepartment: TdxDBGrid;
    rzgDepartmentDetail: TRzGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    rznDepartment: TRzDBNavigator;
    rzgAreas: TRzGroupBox;
    rzgDepartmentAreaDetail: TRzGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    DBCheckBox4: TDBCheckBox;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    grdComplexSiteDepartmentArea: TdxDBGrid;
    rznDepartmentArea: TRzDBNavigator;
    grdPharmacycomplexPharmacyName_str: TdxDBGridColumn;
    grdComplexSitesiteName_Str: TdxDBGridColumn;
    grdComplexSiteDepartmentdepartmentName_str: TdxDBGridColumn;
    grdComplexSiteDepartmentAreadepartmentAreaName_str: TdxDBGridColumn;
    grdComplexSiteDepartmentAreadepartmentAreaRoomNo_str: TdxDBGridColumn;
    Label9: TLabel;
    DBCheckBox3: TDBCheckBox;
    procedure qryComplexNewRecord(DataSet: TDataSet);
    procedure qryComplexSiteNewRecord(DataSet: TDataSet);
    procedure qryComplexSiteDepartmentNewRecord(DataSet: TDataSet);
    procedure qryComplexPharmacyNewRecord(DataSet: TDataSet);
    procedure qryComplexSiteDepartmentBeforePost(DataSet: TDataSet);
    procedure qryComplexSiteDepartmentAreasNewRecord(DataSet: TDataSet);
    procedure FrameResize(Sender: TObject);
    procedure qryComplexPharmacyAfterPost(DataSet: TDataSet);
    procedure qryComplexSiteDepartmentAreasAfterPost(DataSet: TDataSet);
    procedure qryComplexSiteDepartmentAfterPost(DataSet: TDataSet);
    procedure qryComplexSiteAfterPost(DataSet: TDataSet);
    procedure qryComplexAfterPost(DataSet: TDataSet);
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    FDataManager: TDataSetManager;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Open(const prmConnectionString : string);
    procedure Close;
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmeComplex.Open(const prmConnectionString : string);
var
  Server, DB :String;

begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  try
  FDbConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qryComplex, 'complex_ID');
  FDataManager.Add(qryComplexSite, 'complexSite_ID');
  FDataManager.Add(qryComplexSiteDepartment, 'complexSiteDepartment_ID');
  FDataManager.Add(qryComplexSiteDepartmentAreas, '');
  FDataManager.Add(qryComplexPharmacy, 'complexPharmacy_ID');
  except
  end;
  Floading := False;

end;

procedure TfrmeComplex.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TfrmeComplex.SetDbConnectionString(const Value: string);
begin

  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;

end;

procedure TfrmeComplex.qryComplexNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complex_ID').AsString := CreateClassID;
    FieldByName('complexName_str').AsString := 'Pending...';
    FieldByName('complexAbbreviation_Str').AsString := 'Pending...';
    FieldByName('complexCode_str').AsString := 'Pending...';
    end;
end;

procedure TfrmeComplex.qryComplexSiteNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complexSite_ID').AsString := CreateClassID;
    FieldByName('complex_ID').AsString := qryComplex.FieldByName('complex_ID').AsString;
    FieldByName('siteName_Str').AsString := 'Pending...';
    FieldByName('siteAddress01_Str').AsString := 'Pending...';
    FieldByName('siteAddress02_Str').AsString := 'Pending...';
    FieldByName('siteAddress03_Str').AsString := 'Pending...';
    FieldByName('siteAddress04_Str').AsString := 'Pending...';
    FieldByName('sitePhone_Str').AsString := 'Pending...';
    FieldByName('siteFax_Str').AsString := 'Pending...';
    FieldByName('siteEmail_str').AsString := 'Pending...';
    FieldByName('siteType_str').AsString := 'Pending...';

    end;

end;

procedure TfrmeComplex.qryComplexSiteDepartmentNewRecord(
  DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complexSiteDepartment_ID').AsString := CreateClassID;
    FieldByName('complexSite_ID').AsString := qryComplexSite.FieldByName('complexSite_ID').AsString;
    FieldByName('departmentName_str').AsString := 'Pending...';
    FieldByName('departmentRoom_str').AsString := 'Pending...';
    FieldByName('authorizePrescription_bit').AsBoolean := False;
    FieldByName('authorizeDispensing_bit').AsBoolean := False;
    FieldByName('description_Str').AsString := 'Pending...';
    end;
end;

procedure TfrmeComplex.qryComplexPharmacyNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complexPharmacy_ID').AsString := CreateClassID;
    FieldByName('complex_ID').AsString := qryComplex.FieldByName('complex_ID').AsString;
    FieldByName('complexPharmacyName_str').AsString := 'Pending...';
    end;
end;

procedure TfrmeComplex.qryComplexSiteDepartmentBeforePost(
  DataSet: TDataSet);
var
desc  : string;
dept  : string;
room  : string;
code  : string;



begin
  with DataSet do
    begin

    dept := Trim(FieldByName('departmentName_str').AsString);
    room := Trim(FieldByName('departmentRoom_str').AsString);
    code := Trim(qryComplexSite.FieldByName('siteCode_str').AsString);

    desc := '';
    if code <> '' then desc := desc + '[' + code + '] ';
    desc := desc + dept;
//    if room <> '' then desc := desc + ' (' + room + ')';
    FieldByName('description_Str').AsString := desc;
    end;

end;

procedure TfrmeComplex.qryComplexSiteDepartmentAreasNewRecord(
  DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('complexSiteDepartmentArea_ID').AsString := CreateClassID;
    FieldByName('complexSiteDepartment_ID').AsString :=
      qryComplexSiteDepartment.FieldByName('complexSiteDepartment_ID').AsString;
//    FieldByName('complexPharmacy_ID').AsString := CreateClassID;
    FieldByName('isHospitalWard_bol').AsBoolean := False;


    FieldByName('departmentAreaCode_str').AsString := '<Not Set>';
    FieldByName('departmentAreaName_str').AsString := '<Not Set>';
    FieldByName('departmentAreaRoomNo_str').AsString := '<Not Set>';
    FieldByName('departmentAreaRoomType_str').AsString := '<Not Set>';
    FieldByName('departmentAreaDescription_str').AsString := '<Not Set>';

    end;

end;

procedure TfrmeComplex.Screen_Resize;
var
  curWid, curHgt  :integer;
  halfWid, halfHgt : integer;
const
  STEP = 5;
  STEP2 = 3;
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


  // get new width
  curWid := pnlComplexname.Width;
  rzDBLblComplexName.Width := curWid - (rzDBLblComplexName.Left + STEP);
  RZlBLComplexSiteDetails.Width := curWid - (RZlBLComplexSiteDetails.Left + STEP);
  rzgComplexSiteDetails.Width := RZlBLComplexSiteDetails.Width;

  rzLblComplexDepartments.Width := curWid - (rzLblComplexDepartments.Left + STEP);

  //----------------
  halfWid := curWid div 2;
  curHgt := pnlHolder_Complex_Sites_Departments.Height;

  rzLblDepartment.Left   := STEP;
  rzLblDepartment.Width  := halfWid - (rzLblDepartment.Left + (STEP div 2));

  rzgDepartment.Left := rzLblDepartment.Left;
  rzgDepartment.Width := rzLblDepartment.Width;
  rzgDepartment.Height := curHgt - (rzgDepartment.Top + STEP);

  rznDepartment.Top := rzgDepartment.Height - (rznDepartment.Height + STEP2);
  grdComplexSiteDepartment.Height := rzgDepartment.Height - (rznDepartment.Height + grdComplexSiteDepartment.Top + (STEP2 * 2));
  rzgDepartmentDetail.Height := rzgDepartment.Height - (rzgDepartmentDetail.Top + STEP2);
  rzgDepartmentDetail.Width := rzgDepartment.Width - (rzgDepartmentDetail.Left + STEP2);



  //---------------
  rzLblAreas.Left   := halfWid + (STEP div 2);
  rzLblAreas.Width  := halfWid - ((STEP div 2) + STEP);

  rzgAreas.Left := rzLblAreas.Left;
  rzgAreas.Width := rzLblAreas.Width;
  rzgAreas.Height := curHgt - (rzgAreas.Top + STEP);

//  grdComplexSiteDepartmentArea.Left := grdComplexSiteDepartment.Left;
  rznDepartmentArea.Top := rznDepartment.Top;
  grdComplexSiteDepartmentArea.Height := grdComplexSiteDepartment.Height;
  rzgDepartmentAreaDetail.Height := rzgDepartmentDetail.Height;
  rzgDepartmentAreaDetail.Width := rzgDepartmentDetail.Width;






end;

procedure TfrmeComplex.FrameResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TfrmeComplex.qryComplexPharmacyAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeComplex.qryComplexSiteDepartmentAreasAfterPost(
  DataSet: TDataSet);
begin
//  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeComplex.qryComplexSiteDepartmentAfterPost(
  DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeComplex.qryComplexSiteAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeComplex.qryComplexAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

end.

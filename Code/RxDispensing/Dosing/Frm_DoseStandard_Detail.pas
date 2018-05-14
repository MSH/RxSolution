unit Frm_DoseStandard_Detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzRadChk, RzDBChk, DBCtrls, RzDBCmbo, StdCtrls, Mask,
  RzEdit, RzDBEdit, ExtCtrls, RzPanel, dxPageControl, DB, ADODB,
  ComObj, dmpDataObjectManager, RzDlgBtn, RzBmpBtn, jpeg;

type
  TDoseStandard_Detail_Frm = class(TForm)
    conProductDosing: TADOConnection;
    qryGenericNames: TADOQuery;
    dsqryGenericNames: TDataSource;
    dsqryDosing: TDataSource;
    qryDosing: TADOQuery;
    qryRoute: TADOQuery;
    dsqryRoute: TDataSource;
    qryInterval: TADOQuery;
    dsqryInterval: TDataSource;
    qryUnit: TADOQuery;
    dsqryUnit: TDataSource;
    dsqryIndication: TDataSource;
    qryIndication: TADOQuery;
    qryProductList: TADOQuery;
    dsqryProductList: TDataSource;
    pnl_Main_Back: TPanel;
    RzGroupBox3: TRzGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBEdit7: TRzDBEdit;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBEdit11: TRzDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzGroupBox5: TRzGroupBox;
    lblRoute: TLabel;
    Label7: TLabel;
    lblDoseA: TLabel;
    Label2: TLabel;
    lblIntervalA: TLabel;
    lblDuration: TLabel;
    lblDoseB: TLabel;
    lblIntervalB: TLabel;
    rzluRoute: TRzDBLookupComboBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBEdit6: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    edtDuration: TRzDBEdit;
    edtIntervalB: TRzDBLookupComboBox;
    edtDoseB: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label8: TLabel;
    RzDBEdit5: TRzDBEdit;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Image_Header: TImage;
    RzBmpButton1: TRzBmpButton;
    Label15: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    procedure qryDosingBeforePost(DataSet: TDataSet);
    procedure qryDosingNewRecord(DataSet: TDataSet);
    procedure RzDBCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDataManager: TDataSetManager;
    FDbConnectionString: string;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open(const prmConnectionString : string); overload;
    procedure UpdateEccentricDisplay(prmDisplay : boolean = True);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  DoseStandard_Detail_Frm: TDoseStandard_Detail_Frm;

implementation

uses RxSolutionUFrm, rxDispensingPrescriptionItemClasses;

{$R *.dfm}

procedure TDoseStandard_Detail_Frm.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TDoseStandard_Detail_Frm.Open(const prmConnectionString : string);
begin

  try
  FDbConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qryGenericNames, 'GenericName_str');
  FDataManager.Add(qryDosing, 'productDosingID');
  FDataManager.Add(qryRoute, 'Code_str');
  FDataManager.Add(qryInterval, 'abbreviation_Str');
  FDataManager.Add(qryUnit, 'abbreviation_Str');
  FDataManager.Add(qryIndication, 'ICode_str');
  FDataManager.Add(qryProductList, 'productPackSize_ID');

  except
  end;


end;

procedure TDoseStandard_Detail_Frm.qryDosingBeforePost(DataSet: TDataSet);
var
  prvWghtLo: Double;
  prvWghtHi: Double;
  prvAgeHi: Double;
  prvAgeLo: Double;
  prvBrandName, prvGenericName,
  prvDoseUnit, prvRoute, prvIntervalA, prvIntervalB : string ;
  prvRepeats : integer ;
  prvDuration, prvDoseA, prvDoseB : double ;
  prvIsEccentric : boolean;
begin


with DataSet do
  begin
  prvBrandName    := '';
  prvGenericName  := FieldByName('genericName_str').AsString;
  prvDoseUnit     := FieldByName('doseUnit_str').AsString;
  prvRoute        := FieldByName('routeRecommended_str').AsString;
  prvIntervalA    := FieldByName('intervalRecommendedA_str').AsString;
  prvIntervalB    := FieldByName('intervalRecommendedB_str').AsString;
  prvRepeats      := 1;
  prvDuration     := FieldByName('durationRecommended_dbl').AsFloat;
  prvDoseA        := FieldByName('doseRecommendedA_dbl').AsFloat;
  prvDoseB        := FieldByName('doseRecommendedB_dbl').AsFloat;
  prvIsEccentric  := FieldByName('isEccentric_bol').AsBoolean;

  prvAgeLo        := FieldByName('ageLo_dbl').AsFloat;
  prvAgeHi        := FieldByName('ageHi_dbl').AsFloat;
  prvWghtHi       := FieldByName('weightHi_dbl').AsFloat;
  prvWghtLo       := FieldByName('weightLo_dbl').AsFloat;


  if (FieldByName('freeForm_str').AsString = '') or (FieldByName('freeForm_str').IsNull) then
    FieldByName('description_str').AsString :=
    TDAL.RxDescription(prvBrandName, prvGenericName, prvDoseUnit, prvRoute,
                  prvIntervalA, prvIntervalB, prvRepeats, prvDuration,
                  prvDoseA, prvDoseB, prvIsEccentric, False)
    else
    FieldByName('description_str').AsString := prvGenericName + ' ' + FieldByName('freeForm_str').AsString;



  FieldByName('descriptionRange_Str').AsString :=
    TDAL.RxDoseRangeDescription(prvAgeLo, prvAgeHi, prvWghtLo, prvWghtHi);

  end;


end;

procedure TDoseStandard_Detail_Frm.qryDosingNewRecord(DataSet: TDataSet);
begin

  with DataSet do
  begin
  FieldByName('productDosingID').AsString           := CreateClassID;
  FieldByName('genericName_str').AsString           := qryGenericNames.FieldByName('genericName_str').AsString;
  FieldByName('doseRecommendedA_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedA_str').AsString  := 'bid';
  FieldByName('durationRecommended_dbl').AsFloat    := 1;
  FieldByName('routeRecommended_str').AsString      := 'PO';
  FieldByName('doseRecommendedB_dbl').AsFloat       := 1;
  FieldByName('intervalRecommendedB_str').AsString  := 'bid';
  FieldByName('doseUnit_str').AsString              := 'mg';
  FieldByName('isEccentric_bol').AsBoolean          := False;
  FieldByName('description_str').AsString           := '<Not Set>';
  FieldByName('descriptionRange_Str').AsString      := '<Not Set>';
  FieldByName('ageLo_dbl').AsFloat                  := 0;
  FieldByName('ageHi_dbl').AsFloat                  := 0;
  FieldByName('weightHi_dbl').AsFloat               := 0;
  FieldByName('weightLo_dbl').AsFloat               := 0;
  FieldByName('freeForm_str').AsString              := '';
  FieldByName('DefaultProductID').AsString          := CreateClassID;
  FieldByName('productPackToDispense_dbl').AsFloat  := 1;
  FieldByName('ProductBreakPack_bol').AsBoolean     := False;
  FieldByName('productLabelInstruction_str').AsString := '';
  FieldByName('productLabelInstructionAdditional_str').AsString := '';
  FieldByName('productLabelWarning_str').AsString   := '';

//  TDAL.RxDescription(prvBrandName, prvGenericName, prvDoseUnit, prvRoute,
//                  prvIntervalA, prvIntervalB, prvRepeats, prvDuration,
//                  prvDoseA, prvDoseB, prvIsEccentric, False);

//  FieldByName('description_str').AsString         := '<Not Set>';
  end;    // with


end;

procedure TDoseStandard_Detail_Frm.RzDBCheckBox1Click(Sender: TObject);
begin
  UpdateEccentricDisplay( (Sender as TRzDBCheckBox).Checked );
end;

procedure TDoseStandard_Detail_Frm.SetDbConnectionString(const Value: string);
begin

  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;

end;

procedure TDoseStandard_Detail_Frm.UpdateEccentricDisplay(prmDisplay : boolean = True);
var
  prvTop  : integer;
  prvSpace: integer;
begin

  edtIntervalB.Visible  := prmDisplay;
  lblDoseB.Visible      := prmDisplay;
  lblIntervalB.Visible  := prmDisplay;
  edtDoseB.Visible      := prmDisplay;

  if prmDisplay then lblDoseA.Caption := 'Dose A' else lblDoseA.Caption := 'Dose';
  if prmDisplay then lblIntervalA.Caption := 'Interval A' else lblIntervalA.Caption := 'Interval';

//  if prmDisplay then prvTop := 169 else prvTop := 125;
//  prvSpace := 1;

//  lblRoute.Top        := prvTop + (prvSpace * 0);
//  rzluRoute.Top       := prvTop + (prvSpace * 0);
//  lblDuration.Top     := lblRoute.Top + lblRoute.Height + prvSpace;
//  edtDuration.Top     := rzluRoute.Top + rzluRoute.Height + prvSpace;


//  lblDosing.Top       :=lblDuration.Top + lblDuration.Height + prvSpace;
//  rzgrDosing.Top      :=edtDuration.Top + edtDuration.Height + prvSpace;
//  lblDailyDose.Top    :=lblDosing.Top + lblDosing.Height + prvSpace;
//  edtDailyDose.Top    :=rzgrDosing.Top + rzgrDosing.Height + prvSpace;
//  lblDailyDoseUnit.Top:=rzgrDosing.Top + rzgrDosing.Height + prvSpace;

end;

procedure TDoseStandard_Detail_Frm.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open(FDbConnectionString);
end;

end.

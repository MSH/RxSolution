unit frameSystemSetting;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzLabel, ExtCtrls, dxExEdtr, DB, ADODB, RzCommon, dxTL, ComObj, 
  dxDBCtrl, dxDBGrid, dxCntner, DBCtrls, RzDBCmbo, Mask, RzEdit, RzDBEdit,
  RzPanel, dxPageControl, RzDBNav, RzDlgBtn, dxDBTLCl, dxGrClms,
  dmpDataObjectManager;

type
  TfrmeSystemSetting = class(TFrame)
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    pnlHolder_System: TPanel;
    rzlClinicList: TRzLabel;
    conSystem: TADOConnection;
    rzcMain: TRzFrameController;
    qrySpecialisations: TADOQuery;
    dsqrySpecialisations: TDataSource;
    dxPageControl1: TdxPageControl;
    qryPosts: TADOQuery;
    dsqryPosts: TDataSource;
    dsqryTitle: TDataSource;
    qryTitle: TADOQuery;
    qryLanguage: TADOQuery;
    dsqryLanguage: TDataSource;
    qryRxLevel: TADOQuery;
    dsqryRxLevel: TDataSource;
    dxtbsGeneral: TdxTabSheet;
    RZlBLComplexSiteDetails: TRzLabel;
    RzGroupBox4: TRzGroupBox;
    grdTitle: TdxDBGrid;
    grdTitlepersonPositionTitleDescription_Str: TdxDBGridColumn;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    grdLangauge: TdxDBGrid;
    grdLangaugelanguageName_Str: TdxDBGridColumn;
    RzGroupBox2: TRzGroupBox;
    RzLabel2: TRzLabel;
    grdSpecialisations: TdxDBGrid;
    grdSpecialisationsspecialisation_Code: TdxDBGridColumn;
    grdSpecialisationsspecialisation_Description_str: TdxDBGridColumn;
    dxtbsAllergies: TdxTabSheet;
    RzLabel3: TRzLabel;
    RzGroupBox3: TRzGroupBox;
    grdPosts: TdxDBGrid;
    grdPostspersonPositionPostDescription_str: TdxDBGridColumn;
    dxtbsAbbreviations: TdxTabSheet;
    lblAbbreviationList: TRzLabel;
    rzgAbbreviationList: TRzGroupBox;
    dxgAbbreviations: TdxDBGrid;
    qryAbbreviationTypes: TADOQuery;
    qryAbbreviationList: TADOQuery;
    dsqryAbbreviationTypes: TDataSource;
    dsqryAbbreviationList: TDataSource;
    lblAbbreviationTypes: TRzLabel;
    rzgAbbreviationTypes: TRzGroupBox;
    dxgAbbreviationTypes: TdxDBGrid;
    dxgAbbreviationTypesabbreviationType_Str: TdxDBGridColumn;
    dxgAbbreviationsabbreviation_Str: TdxDBGridColumn;
    dxgAbbreviationsabbreviationDescription_Str: TdxDBGridColumn;
    dxgAbbreviationsabbreviationValue_dbl: TdxDBGridMaskColumn;
    dxgAbbreviationsabbreviationInstruction_Str: TdxDBGridColumn;
    dxgAbbreviationsabbreviationType_Str: TdxDBGridColumn;
    dxtbsIndication: TdxTabSheet;
    lblICD10: TRzLabel;
    rzgICD10: TRzGroupBox;
    dxgICD10: TdxDBGrid;
    qryICD10: TADOQuery;
    dsqryICD10: TDataSource;
    dxgICD10ICode_str: TdxDBGridColumn;
    dxgICD10Description_str: TdxDBGridColumn;
    dxgICD10Active_bol: TdxDBGridCheckColumn;
    dxtbsGeneric: TdxTabSheet;
    lblGenericList: TRzLabel;
    rzgGenericList: TRzGroupBox;
    dxgGenericNames: TdxDBGrid;
    qryGenericNames: TADOQuery;
    dsqryGenericNames: TDataSource;
    dxgGenericNamesgenericNameCode_str: TdxDBGridColumn;
    dxgGenericNamesgenericName_Str: TdxDBGridColumn;
    dxgGenericNamesgenericRxLevel_str: TdxDBGridColumn;
    dxgGenericNamesgenericActive_Bol: TdxDBGridCheckColumn;
    grdPostspersonPositionPostArea_str: TdxDBGridPickColumn;
    procedure FrameResize(Sender: TObject);
    procedure qryAbbreviationListNewRecord(DataSet: TDataSet);
    procedure qrySpecialisationsAfterPost(DataSet: TDataSet);
    procedure qryPostsAfterPost(DataSet: TDataSet);
    procedure qryTitleAfterPost(DataSet: TDataSet);
    procedure qryLanguageAfterPost(DataSet: TDataSet);
    procedure qryRxLevelAfterPost(DataSet: TDataSet);
    procedure qryAbbreviationListAfterPost(DataSet: TDataSet);
    procedure qryICD10AfterPost(DataSet: TDataSet);
    procedure qryGenericNamesAfterPost(DataSet: TDataSet);
    procedure qryPostsNewRecord(DataSet: TDataSet);
  private
    FDataManager: TDataSetManager;
    FDbConnectionString: string;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    function GetAbbreviationType: string;
    procedure Open(const prmConnectionString : string);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmeSystemSetting.Close;
begin

  FDataManager.Session.ThisConnection.Close;

end;

procedure TfrmeSystemSetting.Open(const prmConnectionString : string);
begin

  try
  FDbConnectionString := prmConnectionString;
  FDataManager := TDataSetManager.Create(prmConnectionString);
  FDataManager.Add(qrySpecialisations, 'specialisation_ID');
  FDataManager.Add(qryPosts, 'personPositionPost_ID');
  FDataManager.Add(qryTitle, 'personPositionTitle_ID');
  FDataManager.Add(qryLanguage, 'language_ID');
  FDataManager.Add(qryRxLevel, 'rxLevel_ID');
  FDataManager.Add(qryAbbreviationTypes, 'abbreviationType_Str');
  FDataManager.Add(qryAbbreviationList, 'abbreviation_Str');
  FDataManager.Add(qryICD10, 'ICode_str');
  FDataManager.Add(qryGenericNames, 'genericName_ID');
  except
  end;

end;

procedure TfrmeSystemSetting.Screen_Resize;
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

  curWid := dxtbsAbbreviations.Width;
  curHgt := dxtbsAbbreviations.Height;

  rzgAbbreviationTypes.Height := curHgt - (rzgAbbreviationTypes.Top + STEP);

  lblAbbreviationList.Width := curWid - (lblAbbreviationList.Left + STEP);
  rzgAbbreviationList.Width := curWid - (rzgAbbreviationList.Left + STEP);
  rzgAbbreviationList.Height := curHgt - (rzgAbbreviationList.Top + STEP);


  lblICD10.Width := curWid - (lblICD10.Left + STEP);
  rzgICD10.Width := curWid - (rzgICD10.Left + STEP);
  rzgICD10.Height := curHgt - (rzgICD10.Top + STEP);

  lblGenericList.Width := curWid - (lblGenericList.Left + STEP);
  rzgGenericList.Width := curWid - (rzgGenericList.Left + STEP);
  rzgGenericList.Height := curHgt - (rzgGenericList.Top + STEP);


{
  rzLblClinics.Width := curWid - (STEP * 2);
  rzgClinicDetails.Height := curHgt - (rzgClinicDetails.Top + STEP);
  rznClinics.Top := rzgClinicDetails.Height - (rznClinics.Height + STEP);

  rzlClinicList.Width := curWid - rzlClinicList.Left - STEP;
  rzgClinicList.Width := rzlClinicList.Width;
  rzgClinicList.Height := rzgClinicDetails.Height;
}  

end;

procedure TfrmeSystemSetting.SetDbConnectionString(const Value: string);
begin

  FDataManager.Session.ThisConnection.Close;
  FDataManager.Session.ThisConnection.ConnectionString := Value;
  FDataManager.Open;
  FDbConnectionString := Value;

end;

procedure TfrmeSystemSetting.FrameResize(Sender: TObject);
begin
  Screen_Resize;
end;

function TfrmeSystemSetting.GetAbbreviationType: string;
begin
  Result := qryAbbreviationTypes.FieldByName('abbreviationType_Str').AsString;
end;

procedure TfrmeSystemSetting.qryAbbreviationListNewRecord(
  DataSet: TDataSet);
begin
  with Dataset do
    begin
    FieldByName('abbreviationDescription_Str').AsString     := '-';
    FieldByName('abbreviationValue_dbl').AsFloat            := 1;
    FieldByName('abbreviationValueUnit_Str').AsString       := '-';
    FieldByName('abbreviationValueRatio_dbl').AsFloat       := 1;
    FieldByName('abbreviationType_Str').AsString            := GetAbbreviationType;
    FieldByName('abbreviationValueRatioUnit_Str').AsString  := '-';
    FieldByName('abbreviationInstruction_Str').AsString     := '-';
    FieldByName('abbreviationLanguage_str').AsString        := 'English';
    end;
end;

procedure TfrmeSystemSetting.qrySpecialisationsAfterPost(
  DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryPostsAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryTitleAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryLanguageAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryRxLevelAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryAbbreviationListAfterPost(
  DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryICD10AfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryGenericNamesAfterPost(DataSet: TDataSet);
begin
  FDataManager.DataSet[DataSet.Name].Refresh;
end;

procedure TfrmeSystemSetting.qryPostsNewRecord(DataSet: TDataSet);
begin

  with Dataset do
    begin
    FieldByName('personPositionPost_ID').AsString     := CreateClassID;
    end;
    
end;

end.

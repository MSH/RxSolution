unit PrescriberListUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Menus, ADODB,StdCtrls, ExtCtrls,

  SystemConstants,

  RzButton, RzDlgBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, RzPanel, ppCtrls, jpeg,  ppBands,
  ppRegion, ppClass, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  RzCommon,  RzLabel, dxExEdtr, ElPopBtn, RzBckgnd, daDataView,
  daQueryDataView, daADO, ppModule, daDataModule, raCodMod, ppParameter,
  RzBmpBtn;

type
  TPrescriberListFrm = class(TForm)
    conPrescriber: TADOConnection;
    rzcMain: TRzFrameController;
    qryPrescriber: TADOQuery;
    pmuPrescriber: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    PrintPrescribersByName2: TMenuItem;
    PrintPrescribersByNumber2: TMenuItem;
    PrintPrescribersAllConsultants2: TMenuItem;
    SelectedPrescriberBiodataSheet1: TMenuItem;
    PrintNotificationLetter1: TMenuItem;
    pmnuPrint: TPopupMenu;
    PrintPrescribersByName1: TMenuItem;
    PrintPrescribersByNumber1: TMenuItem;
    PrintPrescribersAllConsultants1: TMenuItem;
    atnPrintBioDataSheet1: TMenuItem;
    BlankBiodataSheet1: TMenuItem;
    NotificationLetter1: TMenuItem;
    dsqryPrescriber: TDataSource;
    ActionList1: TActionList;
    atnPrescriber_Add: TAction;
    atnPrescriber_Edit: TAction;
    atnPrescriber_Delete: TAction;
    atnPrntPrescribersByName: TAction;
    atnPrntPrescribersByNumber: TAction;
    atnPrntPrescribersByConsultant: TAction;
    atnPrintBioDataSheet: TAction;
    atnPrintBlankBioDataSheet: TAction;
    atnPrintPrescriberNotificationLetter: TAction;
    qryPrintRegisterByName: TADOQuery;
    dsqryPrintRegisterByName: TDataSource;
    ppDBRegisterByName: TppDBPipeline;
    qryPrintRegisterByNumber: TADOQuery;
    dsqryPrintRegisterByNumber: TDataSource;
    ppDBRegisterByNumber: TppDBPipeline;
    ppReportRegisterByNumber: TppReport;
    ppDBRegisterConsultants: TppDBPipeline;
    dsqryPrintRegisterConsultants: TDataSource;
    qryPrintRegisterConsultants: TADOQuery;
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
    ppReportNotificationLetter: TppReport;
    ppTitleBand6: TppTitleBand;
    ppHeaderBand6: TppHeaderBand;
    ppShape30: TppShape;
    ppLine20: TppLine;
    ppSystemVariable16: TppSystemVariable;
    ppDBText55: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppImage9: TppImage;
    ppLine21: TppLine;
    ppLabel7: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel9: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLabel10: TppLabel;
    ppPageStyle6: TppPageStyle;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppRegion13: TppRegion;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppMemo2: TppMemo;
    ppDBText60: TppDBText;
    ppLabel11: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLine22: TppLine;
    ppShape34: TppShape;
    ppDBText64: TppDBText;
    ppLabel95: TppLabel;
    ppLine23: TppLine;
    ppMemo3: TppMemo;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppRegion14: TppRegion;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppDBqryNoficationLetters: TppDBPipeline;
    dsqryNoficationLetter: TDataSource;
    qryNoficationLetter: TADOQuery;
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Main_PatientListPanel: TPanel;
    Label83: TLabel;
    rzbGradient: TRzBackground;
    Shape2: TShape;
    rzsLine01: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    pnl_Main_QuestionnairePanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton17: TElSpeedButton;
    grdPrescribers: TdxDBGrid;
    grdPrescriberspersonRefNoCurrent_str: TdxDBGridColumn;
    grdPrescriberspersonLastName_Str: TdxDBGridColumn;
    grdPrescriberspersonFirstName_Str: TdxDBGridColumn;
    grdPrescriberspersonActive_Bol: TdxDBGridCheckColumn;
    atnPrescriber_GridColumns: TAction;
    ppDBImage8: TppDBImage;
    ppDBImage6: TppDBImage;
    ppReportRegisterByName: TppReport;
    ppReportRegisterConsultants: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppMemo5: TppMemo;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBImage5: TppDBImage;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape18: TppShape;
    ppLabel90: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel91: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppPageStyle1: TppPageStyle;
    ppReportBioBlankDataSheet: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppPageStyle3: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBImage9: TppDBImage;
    ppRegion1: TppRegion;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape21: TppShape;
    ppLabel28: TppLabel;
    ppShape22: TppShape;
    ppLabel30: TppLabel;
    ppShape23: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel92: TppLabel;
    ppShape24: TppShape;
    ppRegion8: TppRegion;
    ppLabel93: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppRegion15: TppRegion;
    ppRegion16: TppRegion;
    ppLabel99: TppLabel;
    ppRegion17: TppRegion;
    ppLabel100: TppLabel;
    ppShape25: TppShape;
    ppShape35: TppShape;
    ppLabel101: TppLabel;
    ppRegion18: TppRegion;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppImage1: TppImage;
    ppLine26: TppLine;
    ppLabel105: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel106: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel107: TppLabel;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppMemo1: TppMemo;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBImage4: TppDBImage;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine5: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape7: TppShape;
    ppLabel23: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel24: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppPageStyle2: TppPageStyle;
    raCodeModule3: TraCodeModule;
    N2: TMenuItem;
    N3: TMenuItem;
    ppLabel94: TppLabel;
    ppLabel98: TppLabel;
    N4: TMenuItem;
    ppImage2: TppImage;
    ppImage3: TppImage;
    qryFindLastAddedPrescriber: TADOQuery;
    ppParameterList1: TppParameterList;
    ppTitleBand7: TppTitleBand;
    ppHeaderBand7: TppHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLine18: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppMemo4: TppMemo;
    ppLabel48: TppLabel;
    ppDBText38: TppDBText;
    ppDBImage3: TppDBImage;
    ppDetailBand7: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine24: TppLine;
    ppFooterBand7: TppFooterBand;
    ppLine25: TppLine;
    ppLabel73: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppImage4: TppImage;
    ppSummaryBand4: TppSummaryBand;
    ppShape17: TppShape;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable21: TppSystemVariable;
    ppDBCalc5: TppDBCalc;
    ppPageStyle7: TppPageStyle;
    raCodeModule4: TraCodeModule;
    qryNoficationLetterprovincialLogo_img: TBlobField;
    qryNoficationLetterpersonIDNumber_Str: TWideStringField;
    qryNoficationLetterpersonLastName_Str: TWideStringField;
    qryNoficationLetterpersonFirstName_Str: TWideStringField;
    qryNoficationLetterpersonInitials_Str: TWideStringField;
    qryNoficationLetterpersonPositionCurrent_bol: TBooleanField;
    qryNoficationLetterpersonPositionNumberNo_Str: TWideStringField;
    qryNoficationLetterpersonPositionTitle_Str: TWideStringField;
    qryNoficationLetterpersonPositionStart_Dat: TDateTimeField;
    qryNoficationLetterpersonPositionEnd_Dat: TDateTimeField;
    qryNoficationLetterpersonTypeDescription_Str: TWideStringField;
    qryNoficationLetterperson_ID: TGuidField;
    qryNoficationLetterpersonPositionTitleDescription_Str: TWideStringField;
    qryNoficationLetterpersonPositionDescription_Str: TWideStringField;
    qryNoficationLetterrxLevelCode_Str: TWideStringField;
    qryNoficationLetterpersonRegistrationNo_str: TWideStringField;
    qryNoficationLettercomplexName_str: TWideStringField;
    pnl_Image_Header: TRzLabel;
    btnPrint: TRzBmpButton;
    procedure atnPrescriber_AddExecute(Sender: TObject);
    procedure atnPrescriber_DeleteExecute(Sender: TObject);
    procedure atnPrescriber_EditExecute(Sender: TObject);
    procedure atnPrintBioDataSheetExecute(Sender: TObject);
    procedure atnPrintBlankBioDataSheetExecute(Sender: TObject);
    procedure atnPrintPrescriberNotificationLetterExecute(Sender: TObject);
    procedure atnPrntPrescribersByConsultantExecute(Sender: TObject);
    procedure atnPrntPrescribersByNameExecute(Sender: TObject);
    procedure atnPrntPrescribersByNumberExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atnPrescriber_GridColumnsExecute(Sender: TObject);
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    atnBrowse: Boolean;
    atnCanEdit: Boolean;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open;
    procedure Print(printWhat : integer);
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  PrescriberList: TPrescriberListFrm;

implementation

uses RxSolutionUFrm, DLLInterface, DialogGridColumnSelectorUFrm, RxSolutionSecurityClass;

{$R *.dfm}

procedure TPrescriberListFrm.atnPrescriber_AddExecute(Sender: TObject);
var
 ID : String;  
begin

 if atnCanEdit then
  begin
  TDLLInterface.Prescriber__Add(FDbConnectionString, 1);
  Refresh_DataSet(qryPrescriber, 'person_ID');
  qryFindLastAddedPrescriber.Active := True;
  ID := qryFindLastAddedPrescriber.FieldByName('person_Id').AsString;
  qryPrescriber.Locate('person_ID', ID, []);
  qryFindLastAddedPrescriber.Active := False;
  end;

end;

procedure TPrescriberListFrm.atnPrescriber_DeleteExecute(Sender: TObject);
var
  ID : string;
  nme : string;
begin

 if atnCanEdit then
  begin
  ID := qryPrescriber.FieldByName('person_ID').AsString;
  if ID <> '' then TDLLInterface.Prescriber__Delete(FDbConnectionString, ID, 1);
  Refresh_DataSet(qryPrescriber, 'person_ID');
  end;

end;

procedure TPrescriberListFrm.atnPrescriber_EditExecute(Sender: TObject);
var
  ID : string;
begin

  ID := qryPrescriber.FieldByName('person_ID').AsString;

  if atnCanEdit then
   TDLLInterface.Prescriber__Edit(FDbConnectionString,ID, 1)
  else
   TDLLInterface.Prescriber__Edit(FDbConnectionString,ID, 0);

  Refresh_DataSet(qryPrescriber, 'person_ID');

end;

procedure TPrescriberListFrm.atnPrintBioDataSheetExecute(Sender: TObject);
begin
  Print(3);
end;

procedure TPrescriberListFrm.atnPrintBlankBioDataSheetExecute(Sender: TObject);
begin
  Print(4);
end;

procedure TPrescriberListFrm.atnPrintPrescriberNotificationLetterExecute(Sender: TObject);
begin
  Print(5);
end;

procedure TPrescriberListFrm.atnPrntPrescribersByConsultantExecute(Sender: TObject);
begin
  Print(2);
end;

procedure TPrescriberListFrm.atnPrntPrescribersByNameExecute(Sender: TObject);
begin
  Print(0);
end;

procedure TPrescriberListFrm.atnPrntPrescribersByNumberExecute(Sender: TObject);
begin
  Print(1);
end;

procedure TPrescriberListFrm.Close;
begin

  conPrescriber.Close;

end;

procedure TPrescriberListFrm.Open;
var
  Server, DB :String;
begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  conPrescriber.Close;
  conPrescriber.ConnectionString := FDbConnectionString;
  qryPrescriber.Open;
  Floading := False;

end;

procedure TPrescriberListFrm.Print(printWhat : integer);
begin

  case printWhat of
    0:
      begin
      qryPrintRegisterByName.Open;
      ppReportRegisterByName.Print;
      qryPrintRegisterByName.Close;
      end;
    1:
      begin
      qryPrintRegisterByNumber.Open;
      ppReportRegisterByNumber.Print;
      qryPrintRegisterByNumber.Close;
      end;
    2:
      begin
      qryPrintRegisterConsultants.Open;
      ppReportRegisterConsultants.Print;
      qryPrintRegisterConsultants.Close;
      end;
    3:
      begin
      qryBioDataSheet.Close;
      qryBioDataSheet.Parameters.ParamByName('PERSONID').Value :=
        qryPrescriber.FieldByName('person_ID').AsString;
      ppReportBioDataSheet.Print;
      qryBioDataSheet.Close;
      end;
    4:
      begin
      ppReportBioBlankDataSheet.Print;
      end;
    5:
      begin
      qryNoficationLetter.Close;
      qryNoficationLetter.Parameters.ParamByName('PERSONID').Value :=
        qryPrescriber.FieldByName('person_ID').AsString;
      ppReportNotificationLetter.Print;
      qryNoficationLetter.Close;
      end;

  end;
end;

procedure TPrescriberListFrm.Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
var
  curRecord :String;
begin

  try
  with DataSet do
    try
    DisableControls;
    curRecord := FieldByName(PrimaryKeyField).AsString;
    Close;
    Open;
    Last;
    while not BOF do
      begin
      if FieldByName(PrimaryKeyField).AsString = curRecord then Break;
      Prior;
      end;
    finally
    EnableControls;
    end;
  except
  end;

end;

procedure TPrescriberListFrm.SetDbConnectionString(const Value: string);
begin
  conPrescriber.Close;
  conPrescriber.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TPrescriberListFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TPrescriberListFrm.FormCreate(Sender: TObject);
begin

  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open;  

end;

procedure TPrescriberListFrm.Screen_Resize;
var
  pnlWid: Integer;
  curWid, curHgt  :integer;

  LeftPnl, RightPnl : TPanel;

const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnl_Main_Back.Width;
  curHgt  := pnl_Main_Back.Height;

  pnlToolbar_Header_ShapeBorder.Left  := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Top   := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Width := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height:= curHgt - (STEP * 2);

  pnl_Image_Header.Left               := 68;
  pnl_Image_Header.Top                := (STEP * 2);

  LeftPnl   := pnl_Main_PatientListPanel;
  RightPnl  := pnl_Main_QuestionnairePanel;

  if RightPnl.Visible then
    begin
    pnlWid := (curWid - (STEP * 5)) div 6;
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid * 4;

    RightPnl.Left         := LeftPnl.Left + LeftPnl.Width + (STEP * 1);
    RightPnl.Top          := pnl_Image_Header.Top + pnl_Image_Header.Height;
    RightPnl.Height       := curHgt - (LeftPnl.Top + (STEP * 2));
    RightPnl.Width        := pnlWid * 2;
    end else
    begin
    pnlWid := (curWid - (STEP * 2));
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid;
    end;

  // Now the items on the filter panel
  curWid  := LeftPnl.Width;
  curHgt  := LeftPnl.Height;

  rzsLine01.Width           := curWid - (STEP * 2);
//  rzsLine02.Width           := curWid - (STEP * 2);

  grdPrescribers.Top       := 70;
  grdPrescribers.Left      := STEP;
  grdPrescribers.Width     := curWid - (STEP * 2);
  grdPrescribers.Height    := curHgt - (grdPrescribers.Top + STEP);

  with RxSolutionFrm.Security do
   atnBrowse := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBERS) = USER_BROWSER);

  with RxSolutionFrm.Security do
   atnCanEdit := (GetUserAccessLevel(MODULE_DISPENSING_PRESCRIBERS) > USER_BROWSER);

  atnPrescriber_Delete.Enabled  := atnCanEdit;
  atnPrescriber_Add.Enabled     := atnCanEdit;

  if atnBrowse then
   pnl_Image_Header.Caption := 'Prescriber - Browse Only';

end;

procedure TPrescriberListFrm.atnPrescriber_GridColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(grdPrescribers);
end;

end.

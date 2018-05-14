unit PrescriberListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Menus, ADODB,StdCtrls, ExtCtrls,

  SystemConstants,

  RzButton, RzDlgBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, RzPanel, ppCtrls, jpeg, TXComp, TXRB, ppBands,
  ppRegion, ppClass, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  RzCommon,  RzLabel;

type
  TPrescriberList = class(TForm)
    pnlToolbar_Header: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnlToolbar_Header_Display: TRzLabel;
    conPrescriber: TADOConnection;
    rzcMain: TRzFrameController;
    qryPrescriber: TADOQuery;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    PrintPrescribersByName2: TMenuItem;
    PrintPrescribersByNumber2: TMenuItem;
    PrintPrescribersAllConsultants2: TMenuItem;
    SelectedPrescriberBiodataSheet1: TMenuItem;
    PrintNotificationLetter1: TMenuItem;
    PopupMenu2: TPopupMenu;
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
    ppDBRegisterByNameppField1: TppField;
    ppDBRegisterByNameppField2: TppField;
    ppDBRegisterByNameppField3: TppField;
    ppDBRegisterByNameppField4: TppField;
    ppDBRegisterByNameppField5: TppField;
    ppDBRegisterByNameppField6: TppField;
    ppDBRegisterByNameppField7: TppField;
    ppDBRegisterByNameppField8: TppField;
    ppDBRegisterByNameppField9: TppField;
    ppDBRegisterByNameppField10: TppField;
    ppDBRegisterByNameppField11: TppField;
    ppDBRegisterByNameppField12: TppField;
    ppDBRegisterByNameppField13: TppField;
    ppDBRegisterByNameppField14: TppField;
    ppDBRegisterByNameppField15: TppField;
    ppDBRegisterByNameppField16: TppField;
    ppDBRegisterByNameppField17: TppField;
    ppDBRegisterByNameppField18: TppField;
    ppDBRegisterByNameppField19: TppField;
    ppDBRegisterByNameppField20: TppField;
    ppDBRegisterByNameppField21: TppField;
    ppReportRegisterByName: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppImage2: TppImage;
    ppShape2: TppShape;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppParameterDescription: TppMemo;
    ppLabel90: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppReportCopyright: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppPageStyle1: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion1: TppRegion;
    ppLabel2: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel12: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel13: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBText13: TppDBText;
    ExtraOptions1: TExtraOptions;
    qryPrintRegisterByNumber: TADOQuery;
    dsqryPrintRegisterByNumber: TDataSource;
    ppDBRegisterByNumber: TppDBPipeline;
    ppReportRegisterByNumber: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppImage1: TppImage;
    ppShape4: TppShape;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppMemo1: TppMemo;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
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
    ppReportRegisterConsultants: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppImage3: TppImage;
    ppShape6: TppShape;
    ppLine7: TppLine;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel4: TppLabel;
    ppDBText10: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine8: TppLine;
    ppFooterBand3: TppFooterBand;
    ppLine9: TppLine;
    ppLabel30: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppShape8: TppShape;
    ppLabel33: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel34: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppPageStyle3: TppPageStyle;
    ppDBRegisterConsultants: TppDBPipeline;
    dsqryPrintRegisterConsultants: TDataSource;
    qryPrintRegisterConsultants: TADOQuery;
    qryBioDataSheet: TADOQuery;
    dsqryBioDataSheet: TDataSource;
    ppDBBioDataSheet: TppDBPipeline;
    ppDBBioDataSheetppField1: TppField;
    ppDBBioDataSheetppField2: TppField;
    ppDBBioDataSheetppField3: TppField;
    ppDBBioDataSheetppField4: TppField;
    ppDBBioDataSheetppField5: TppField;
    ppDBBioDataSheetppField6: TppField;
    ppDBBioDataSheetppField7: TppField;
    ppDBBioDataSheetppField8: TppField;
    ppDBBioDataSheetppField9: TppField;
    ppDBBioDataSheetppField10: TppField;
    ppDBBioDataSheetppField11: TppField;
    ppDBBioDataSheetppField12: TppField;
    ppDBBioDataSheetppField13: TppField;
    ppDBBioDataSheetppField14: TppField;
    ppDBBioDataSheetppField15: TppField;
    ppDBBioDataSheetppField16: TppField;
    ppDBBioDataSheetppField17: TppField;
    ppDBBioDataSheetppField18: TppField;
    ppDBBioDataSheetppField19: TppField;
    ppDBBioDataSheetppField20: TppField;
    ppDBBioDataSheetppField21: TppField;
    ppDBBioDataSheetppField22: TppField;
    ppDBBioDataSheetppField23: TppField;
    ppDBBioDataSheetppField24: TppField;
    ppDBBioDataSheetppField25: TppField;
    ppDBBioDataSheetppField26: TppField;
    ppDBBioDataSheetppField27: TppField;
    ppDBBioDataSheetppField28: TppField;
    ppDBBioDataSheetppField29: TppField;
    ppDBBioDataSheetppField30: TppField;
    ppDBBioDataSheetppField31: TppField;
    ppDBBioDataSheetppField32: TppField;
    ppDBBioDataSheetppField33: TppField;
    ppDBBioDataSheetppField34: TppField;
    ppDBBioDataSheetppField35: TppField;
    ppDBBioDataSheetppField36: TppField;
    ppDBBioDataSheetppField37: TppField;
    ppDBBioDataSheetppField38: TppField;
    ppDBBioDataSheetppField39: TppField;
    ppReportBioDataSheet: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppImage4: TppImage;
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
    ppReportBioBlankDataSheet: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppImage6: TppImage;
    ppShape10: TppShape;
    ppLine15: TppLine;
    ppLabel35: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppLabel61: TppLabel;
    ppFooterBand5: TppFooterBand;
    ppImage7: TppImage;
    ppLine16: TppLine;
    ppLabel62: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel63: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel64: TppLabel;
    ppPageStyle5: TppPageStyle;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppRegion6: TppRegion;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel75: TppLabel;
    ppShape19: TppShape;
    ppLabel82: TppLabel;
    ppShape20: TppShape;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel42: TppLabel;
    ppShape14: TppShape;
    ppRegion7: TppRegion;
    ppLabel74: TppLabel;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLabel83: TppLabel;
    ppRegion9: TppRegion;
    ppLabel84: TppLabel;
    ppRegion10: TppRegion;
    ppLabel85: TppLabel;
    ppRegion11: TppRegion;
    ppLabel86: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLabel87: TppLabel;
    ppRegion12: TppRegion;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppReportNotificationLetter: TppReport;
    ppTitleBand6: TppTitleBand;
    ppHeaderBand6: TppHeaderBand;
    ppImage8: TppImage;
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
    pnlHolder_Presciber_List: TPanel;
    rzgPrescribers: TRzGroupBox;
    grdPrescribers: TdxDBGrid;
    grdPrescriberspersonPositionNumberNo_Str: TdxDBGridColumn;
    grdPrescriberspersonPositionTitleDescription_Str: TdxDBGridColumn;
    grdPrescriberspersonLastName_Str: TdxDBGridColumn;
    grdPrescriberspersonFirstName_Str: TdxDBGridColumn;
    grdPrescriberspersonInitials_Str: TdxDBGridColumn;
    grdPrescriberspersonGender_Str: TdxDBGridColumn;
    grdPrescriberspersonPositionPostDescription_str: TdxDBGridColumn;
    grdPrescribersrxLevelCode_Str: TdxDBGridColumn;
    grdPrescriberspersonActive_Bol: TdxDBGridCheckColumn;
    pnlActivePrescribers: TPanel;
    rzlPrescriberList: TRzLabel;
    rzbStatusButtons: TRzDialogButtons;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzMenuButton1: TRzMenuButton;
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
  private
    FDbConnectionString: string;
    FLoading: Boolean;
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

  //Prescriber DLL
  procedure Edit_Prescriber(pDatabase:string;pID:SGUID; pAccessLevel :integer);
      stdcall; external 'PrescriberDLL.dll';

  procedure Add_Prescriber(pDatabase:string; pAccessLevel : integer); stdcall;
      external 'PrescriberDLL.dll';

  procedure Delete_Prescriber(pDatabase:string; pID :SGUID; pAccessLevel :
      integer); stdcall; external 'PrescriberDLL.dll';

var
  PrescriberList: TPrescriberList;

implementation

uses RxSolutionUFrm;

{$R *.dfm}

procedure TPrescriberList.atnPrescriber_AddExecute(Sender: TObject);
begin
  Add_Prescriber(FDbConnectionString, 1);
  Refresh_DataSet(qryPrescriber, 'person_ID');
end;

procedure TPrescriberList.atnPrescriber_DeleteExecute(Sender: TObject);
var
  ID : string;
  nme : string;
begin

  ID := qryPrescriber.FieldByName('person_ID').AsString;
  if ID <> '' then Delete_Prescriber(FDbConnectionString, ID, 1);
  Refresh_DataSet(qryPrescriber, 'person_ID');

end;

procedure TPrescriberList.atnPrescriber_EditExecute(Sender: TObject);
var
  ID : string;
begin

  ID := qryPrescriber.FieldByName('person_ID').AsString;
  Edit_Prescriber(FDbConnectionString,ID, 1);
  Refresh_DataSet(qryPrescriber, 'person_ID');

end;

procedure TPrescriberList.atnPrintBioDataSheetExecute(Sender: TObject);
begin
  Print(3);
end;

procedure TPrescriberList.atnPrintBlankBioDataSheetExecute(Sender: TObject);
begin
  Print(4);
end;

procedure TPrescriberList.atnPrintPrescriberNotificationLetterExecute(Sender: TObject);
begin
  Print(5);
end;

procedure TPrescriberList.atnPrntPrescribersByConsultantExecute(Sender: TObject);
begin
  Print(2);
end;

procedure TPrescriberList.atnPrntPrescribersByNameExecute(Sender: TObject);
begin
  Print(0);
end;

procedure TPrescriberList.atnPrntPrescribersByNumberExecute(Sender: TObject);
begin
  Print(1);
end;

procedure TPrescriberList.Close;
begin

  conPrescriber.Close;

end;

procedure TPrescriberList.Open;
var
  Server, DB :String;

begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  qryPrescriber.Open;
  Floading := False;

end;

procedure TPrescriberList.Print(printWhat : integer);
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

procedure TPrescriberList.Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
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

procedure TPrescriberList.Screen_Resize;
var
  curWid, curHgt  :integer;
  halfWid, halfHgt : integer;
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

  curHgt  := pnlHolder_Presciber_List.Height;
  curWid  := pnlHolder_Presciber_List.Width;


  rzlPrescriberList.Width := curWid - (STEP * 2);

  rzgPrescribers.Width  := curWid - (rzgPrescribers.Left + STEP);
  rzgPrescribers.Height := curHgt - rzgPrescribers.Top - STEP - rzbStatusButtons.Height;

//  RzGroup1.Height := 120;

//  rzlPrescribers.Width  := rzgPrescribers.Width;



end;

procedure TPrescriberList.SetDbConnectionString(const Value: string);
begin
  conPrescriber.Close;
  conPrescriber.ConnectionString := Value;
  FDbConnectionString := Value;

end;

procedure TPrescriberList.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TPrescriberList.FormCreate(Sender: TObject);
begin
  FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
  Open;

end;

end.

unit AdherencePatientRecordUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzDTP, RzDBDTP, RzLine, ExtCtrls, StdCtrls, RzLabel,
  RzDBLbl, RzDlgBtn, RzPanel, DB, RzCmboBx, RzDBCmbo, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCardView, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  ActnList, ElPopBtn, DBActns, RzDBEdit, RzBmpBtn, Menus;

type
  TAdherencePatientRecordFrm = class(TForm)
    pnlMain: TPanel;
    pnlForm_Footer: TRzGroupBox;
    rzdButtons: TRzDialogButtons;
    Button2: TButton;
    pnlForm_Header: TPanel;
    lblPatientLastName: TRzDBLabel;
    lblPatientFolderNumber: TRzDBLabel;
    pnlForm_Header_Divider: TShape;
    Label4: TLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    pnlDescripHeader: TRzGroupBox;
    Label5: TLabel;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    pnlForm_Detail: TRzGroupBox;
    Label1: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    cxSupportMeasures: TcxGrid;
    cxSupportMeasuresDBTableView1: TcxGridDBTableView;
    cxSupportMeasuresLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxHeader: TcxStyle;
    cxBody: TcxStyle;
    cxsrRegiminDetail: TcxStyleRepository;
    cxs01_Content: TcxStyle;
    cxs01_ContentEven: TcxStyle;
    cxs01_ContentOdd: TcxStyle;
    cxs01_Footer: TcxStyle;
    cxs01_Group: TcxStyle;
    cxs01_GroupByBox: TcxStyle;
    cxs01_Header: TcxStyle;
    cxs01_Inactive: TcxStyle;
    cxs01_Indicator: TcxStyle;
    cxs01_Preview: TcxStyle;
    cxs01_Selection: TcxStyle;
    cxsLbl_Background: TcxStyle;
    cxsLbl_CaptionRow: TcxStyle;
    cxsLbl_CardBorder: TcxStyle;
    cxsLbl_Content: TcxStyle;
    cxsLbl_ContentEven: TcxStyle;
    cxsLbl_ContentOdd: TcxStyle;
    cxsLbl_Inactive: TcxStyle;
    cxsLbl_IncSearch: TcxStyle;
    cxsLbl_RowCaption: TcxStyle;
    cxsLbl_Selection: TcxStyle;
    gtvsStandard: TcxGridTableViewStyleSheet;
    gcvsLabel: TcxGridCardViewStyleSheet;
    cxSupportMeasuresDBTableView1Notes_mem: TcxGridDBColumn;
    cxSupportMeasuresDBTableView1SupportMeasureCode_str: TcxGridDBColumn;
    cxSupportMeasuresDBTableView1SupportMeasureDescription_str: TcxGridDBColumn;
    ActionList1: TActionList;
    RzToolbar3: TRzToolbar;
    btnSave: TElSpeedButton;
    btnCancel: TElSpeedButton;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    RzDBRichEdit1: TRzDBRichEdit;
    Label2: TLabel;
    Label3: TLabel;
    RzDBRichEdit2: TRzDBRichEdit;
    cxGrid1DBTableViewAdherenceSupport_bol: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    PostAdherence1: TMenuItem;
    lblPosted: TLabel;
    lblPostedDate: TRzDBLabel;
    btnEdit: TElSpeedButton;
    RzBmpButton7: TRzBmpButton;
    procedure pnlMainResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure ShowAdeherenceDetails;
     procedure SortDisplay;
  end;

var
  AdherencePatientRecordFrm: TAdherencePatientRecordFrm;

implementation

uses  rxDispensing_Dm_Patient, rxDispensing_Frm_Patient,
  rxDispensing_Unt_Patient;

{$R *.dfm}

procedure TAdherencePatientRecordFrm.pnlMainResize(Sender: TObject);
const
  FFrameWidth = 5;

var
  wid : integer;
  hgt : integer;
  halfForm : integer;
begin

  wid := (Sender as TPanel).Width;
  hgt := (Sender as TPanel).Height;

  halfForm := pnlForm_Header.Width div 2;
  pnlForm_Header.Left := (wid div 2) - halfForm;
  pnlForm_Header.Top := FFrameWidth;

  pnlForm_Footer.Left := (wid div 2) - halfForm;
  pnlForm_Footer.Top := hgt - pnlForm_Footer.Height - FFrameWidth ;

  pnlForm_Detail.Left   := (wid div 2) - halfForm;
  pnlForm_Detail.Top    := pnlForm_Header.Top + pnlForm_Header.Height + 1;
  pnlForm_Detail.Height := (pnlForm_Footer.Top - pnlForm_Detail.Top) -1;

end;

procedure TAdherencePatientRecordFrm.ShowAdeherenceDetails;
begin
 with AdherencePatientRecordFrm do
  begin  
  if ShowModal = mrOK then
   begin
   if dmPatient.tblAdherenceWorker.State in [dsEdit, dsInsert] then
   dmPatient.tblAdherenceWorker.Post;
   if dmPatient.tblAdherenceMeasures.State in [dsEdit, dsInsert] then
    dmPatient.tblAdherenceMeasures.Post; 
   //********* Post Record
   dmPatient.PostAdherence;
   end
  else
   begin
   if dmPatient.tblAdherenceWorker.State in [dsEdit, dsInsert] then
    dmPatient.tblAdherenceWorker.Cancel;      
   if dmPatient.tblAdherenceMeasures.State in [dsEdit, dsInsert] then
    dmPatient.tblAdherenceMeasures.Cancel;
   end;
  end;
end;

procedure TAdherencePatientRecordFrm.SortDisplay;
var
 vPosted: Boolean;
begin

 vPosted := dmPatient.tblAdherenceWorker.FieldByName('Posted_bol').AsBoolean;

 cxSupportMeasures.Enabled := not vPosted;
 pnlForm_Header.Enabled := not vPosted;
 pnlForm_Footer.Enabled := not vPosted;

 lblPostedDate.Visible := vPosted;
 lblPosted.Visible := vPosted;    
end;

procedure TAdherencePatientRecordFrm.FormShow(Sender: TObject);
begin
 pnlMainResize(pnlMain);
 SortDisplay();
end;

end.

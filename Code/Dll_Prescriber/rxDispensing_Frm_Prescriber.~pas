unit rxDispensing_Frm_Prescriber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPageControl, StdCtrls, ExtCtrls, ComCtrls, LMDControl,
  dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, RzDlgBtn, dxEdLib, dxDBELib, RzGroupBar, RzTabs, dxEditor,
  DBCtrls, Mask, RzDTP, RzDBDTP,
  dxDBTLCl, dxGrClms, RzDBCmbo, RzEdit, RzDBEdit, RzDBNav, RzCommon,
  RzLabel, RzButton, RzPanel, RzBckgnd, ImgList, DBActns, StdActns,
  ActnList, RzDBLbl, RzRadGrp, RzDBRGrp, RzCmboBx, ExtActns, RzBmpBtn,
  ElPopBtn, DB, LocOnFly, Menus;
  
type
  TfrmPersonDetail_ = class(TForm)
    pnlToolbar_Header: TPanel;
    RzDialogButtons1: TRzDialogButtons;
    pnlToolbar_Header_ShapeBorder: TShape;
    Panel2: TPanel;
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    tbsAcademicQualifications: TRzTabSheet;
    tbsClinicalRotationProfile: TRzTabSheet;
    tbsContactDetails: TRzTabSheet;
    tbsComments: TRzTabSheet;
    tbsSignaturePhoto: TRzTabSheet;
    grdPrescriberPhoto: TdxDBGrid;
    grdPrescriberPhotopersonPhotoDate_Dat: TdxDBGridDateColumn;
    pnlProductDetailColorBackground: TPanel;
    RzGroupBox1: TRzGroupBox;
    grdPrescriberPosition: TdxDBGrid;
    RzGroupBox2: TRzGroupBox;
    Label10: TLabel;
    cmbDepartment: TRzDBLookupComboBox;
    Label13: TLabel;
    dtePeriodStart: TRzDBDateTimeEdit;
    Label11: TLabel;
    dtePeriodEnd: TRzDBDateTimeEdit;
    Panel3: TPanel;
    frcEdit: TRzFrameController;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdPrescriberSignature: TdxDBGrid;
    grdPrescriberSignaturepersonSignatureDateRecorded_Dat: TdxDBGridDateColumn;
    RzGroupBox5: TRzGroupBox;
    grdPrescriberQualification: TdxDBGrid;
    grdPrescriberQualificationpersonQualificationInstitution_Str: TdxDBGridColumn;
    grdPrescriberQualificationpersonQualificationName_Str: TdxDBGridColumn;
    grdPrescriberQualificationpersonQualificationDescription_Str: TdxDBGridColumn;
    imgToolbar: TImageList;
    Panel7: TPanel;
    RzToolbar2: TRzToolbar;
    RzGroupBar1: TRzGroupBar;
    RzGroup4: TRzGroup;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    RzGroup5: TRzGroup;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    RzToolbar3: TRzToolbar;
    RzToolbar4: TRzToolbar;
    RzGroupBox6: TRzGroupBox;
    grdPersonContact: TdxDBGrid;
    grdPersonContactcontactType_Str: TdxDBGridPickColumn;
    grdPersonContactcontactDetail_Str: TdxDBGridColumn;
    grdPersonContactcontactDescription_Str: TdxDBGridColumn;
    RzGroupBox8: TRzGroupBox;
    grdPersonComment: TdxDBGrid;
    grdPersonCommentpersonCommentDate_Dat: TdxDBGridDateColumn;
    grdPersonCommentpersonCommentDescription_Str: TdxDBGridColumn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    pnlToolbar_Header_Display: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    grpBoxMainDetails: TRzGroupBox;
    Label12: TLabel;
    RzDBEdit6: TRzDBEdit;
    Label25: TLabel;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    Label1: TLabel;
    RzGroupBox12: TRzGroupBox;
    rzlRxLevel: TRzLabel;
    grpContactDetails: TRzGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    lblContact_01: TLabel;
    lblContact_02: TLabel;
    lblContact_03: TLabel;
    edtContact_Edit01: TRzDBEdit;
    edtContact_Edit03: TRzDBEdit;
    lblContact_04: TLabel;
    edtContact_Edit04: TRzDBEdit;
    edtContact_Edit02: TRzDBEdit;
    Label18: TLabel;
    edtContactNote: TRzDBEdit;
    cmbContactMode: TRzDBComboBox;
    cmbContactType: TRzDBComboBox;
    grdPersonContactcontactMode_str: TdxDBGridColumn;
    atnList: TActionList;
    atnEdit_Cut: TEditCut;
    atnEdit_Copy: TEditCopy;
    atnEdit_Paste: TEditPaste;
    atnPosition_New: TDataSetInsert;
    atnPosition_Delete: TDataSetDelete;
    atnPosition_Save: TDataSetPost;
    atnPosition_Cancel: TDataSetCancel;
    atnPosition_Refresh: TDataSetRefresh;
    atnPosition_Print: TAction;
    atnContact_Print: TAction;
    atnContact_New: TDataSetInsert;
    atnContact_Delete: TDataSetDelete;
    atnContact_Save: TDataSetPost;
    atnContact_Cancel: TDataSetCancel;
    atnContact_Refresh: TDataSetRefresh;
    atnQualification_Print: TAction;
    atnQualification_New: TDataSetInsert;
    atnQualification_Delete: TDataSetDelete;
    atnQualification_Save: TDataSetPost;
    atnQualification_Cancel: TDataSetCancel;
    atnQualification_Refresh: TDataSetRefresh;
    atnComments_Print: TAction;
    atnComments_New: TDataSetInsert;
    atnComments_Delete: TDataSetDelete;
    atnComments_Post: TDataSetPost;
    atnComments_Cancel: TDataSetCancel;
    atnComments_Refresh: TDataSetRefresh;
    Label8: TLabel;
    edtRegistrationNumber: TRzDBEdit;
    Label5: TLabel;
    RzDBEdit1: TRzDBEdit;
    grpClinicalRotation: TRzGroupBox;
    Label21: TLabel;
    cmbRxLevel: TRzDBLookupComboBox;
    Label17: TLabel;
    Label16: TLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    Label4: TLabel;
    dxDBGrid1: TdxDBGrid;
    Label3: TLabel;
    Label6: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label9: TLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzDBEdit2: TRzDBEdit;
    Label14: TLabel;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    Label15: TLabel;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    atnGetNextNumber: TAction;
    dxDBGrid1personPositionDescription_Str: TdxDBGridColumn;
    dxDBGrid1personPositionCurrent_bol: TdxDBGridCheckColumn;
    grdPrescriberPositionrotationDescription_str: TdxDBGridColumn;
    RzDBNavigator5: TRzDBNavigator;
    atnGetDefaultRxlevel: TAction;
    RzDBNavigator3: TRzDBNavigator;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBRichEdit1: TRzDBRichEdit;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    imgSmall: TImageList;
    imgLarge: TImageList;
    RzDBNavigator6: TRzDBNavigator;
    RzDBNavigator7: TRzDBNavigator;
    Label20: TLabel;
    cmbSpecialisation: TRzDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    DBCheckBox1: TDBCheckBox;
    btnContactAdd: TElSpeedButton;
    btnContactDelete: TElSpeedButton;
    btnContactSave: TElSpeedButton;
    btnContactCancel: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    RzDBEdit5: TRzDBEdit;
    PopupMenu1: TPopupMenu;
    LangMenuItem: TMenuItem;
    lblBrowseOnly: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cmbRxLevelCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbContactModeChange(Sender: TObject);
    procedure grdPersonContactClick(Sender: TObject);
    procedure grdPersonContactKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure atnGetNextNumberExecute(Sender: TObject);
    procedure atnGetDefaultRxlevelExecute(Sender: TObject);
    procedure RzToolButton18Click(Sender: TObject);
    procedure atnContact_NewExecute(Sender: TObject);
    procedure atnContact_DeleteExecute(Sender: TObject);
    procedure atnContact_SaveExecute(Sender: TObject);
    procedure atnContact_CancelExecute(Sender: TObject);
    procedure atnContact_RefreshExecute(Sender: TObject);
    procedure atnQualification_NewExecute(Sender: TObject);
    procedure atnQualification_DeleteExecute(Sender: TObject);
    procedure atnQualification_SaveExecute(Sender: TObject);
    procedure atnQualification_CancelExecute(Sender: TObject);
    procedure atnQualification_RefreshExecute(Sender: TObject);
    procedure atnComments_NewExecute(Sender: TObject);
    procedure atnComments_DeleteExecute(Sender: TObject);
    procedure atnComments_PostExecute(Sender: TObject);
    procedure atnComments_CancelExecute(Sender: TObject);
    procedure atnComments_RefreshExecute(Sender: TObject);
    procedure RzDBEdit3Change(Sender: TObject);
    procedure RzDBEdit4Change(Sender: TObject);
    procedure RzDBEdit5Change(Sender: TObject);
    procedure CheckNames;
    procedure RzDBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
  private
    procedure SetHeaderPanel;
    { Private declarations }
  public
    procedure FillContactTypeDropDown(inputType : string);
    procedure SetContactDisplay(const pContactMode : string);
    { Public declarations }
  end;

var
  frmPersonDetail_: TfrmPersonDetail_;

implementation

uses SystemConstants, rxDispensing_Dm_Prescriber;

{$R *.dfm}

procedure TfrmPersonDetail_.FormShow(Sender: TObject);
begin
  SetHeaderPanel;
   LocalizerOnFly.PopulateMenu(LangMenuItem, 0, True);
end;

procedure TfrmPersonDetail_.SetHeaderPanel;
begin

  frmPersonDetail_.Caption := dmPerson.PersonTypeDescription + ' - ' + dmPerson.Name;
  pnlToolbar_Header_Display.Caption :=  dmPerson.Name + ' - (' +
                                        dmPerson.Number + ') RX Level = [' +
                                        dmPerson.RxLevel + ']';
  rzlRxLevel.Caption := dmPerson.RxLevel;

end;

procedure TfrmPersonDetail_.cmbRxLevelCloseUp(
  Sender: TObject);
begin
  rzlRxLevel.Caption := (Sender as TRzDBLookupComboBox).Text;
end;

procedure TfrmPersonDetail_.SetContactDisplay(const pContactMode : string);
begin

  edtContact_Edit01.Visible   := False;
  lblContact_01.Visible       := False;
  edtContact_Edit02.Visible   := False;
  lblContact_02.Visible       := False;
  edtContact_Edit03.Visible   := False;
  lblContact_03.Visible       := False;
  edtContact_Edit04.Visible   := False;
  lblContact_04.Visible       := False;


if pContactMode = 'Cell Phone' then
  begin
  lblContact_01.Caption       := 'Cellphone #:';
  edtContact_Edit01.Visible   := True;
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Phone' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'LandLine #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Fax' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Fax #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Pager' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Pager #:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'e-Mail' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'eMail Address:';
  lblContact_01.Visible       := True;
  end;

if pContactMode = 'Address' then
  begin
  edtContact_Edit01.Visible   := True;
  lblContact_01.Caption       := 'Street:';
  edtContact_Edit02.Visible   := True;
  lblContact_02.Caption       := 'Suburb:';
  edtContact_Edit03.Visible   := True;
  lblContact_03.Caption       := 'City:';
  edtContact_Edit04.Visible   := True;
  lblContact_04.Caption       := 'Code:';
  lblContact_01.Visible       := True;
  lblContact_02.Visible       := True;
  lblContact_03.Visible       := True;
  lblContact_04.Visible       := True;
  end;

  FillContactTypeDropDown(pContactMode);

end;

procedure TfrmPersonDetail_.FormCreate(Sender: TObject);
begin
  SetContactDisplay(cmbContactMode.Text);
end;

procedure TfrmPersonDetail_.cmbContactModeChange(Sender: TObject);
begin
  SetContactDisplay((Sender as TRzDBComboBox).Text);
end;

procedure TfrmPersonDetail_.FillContactTypeDropDown(inputType : string);
begin

  cmbContactType.Items.Clear;
  if  (inputType = 'Phone') or (inputType = 'Fax') or (inputType = 'Pager') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Private');
    cmbContactType.Items.Add('Home');
    cmbContactType.Items.Add('Emergency');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'e-Mail') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Personal');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'Cell Phone') then
    begin
    cmbContactType.Items.Add('Work');
    cmbContactType.Items.Add('Private');
    cmbContactType.Items.Add('Home');
    cmbContactType.Items.Add('Emergency');
    cmbContactType.Items.Add('Other');
    end;
  if  (inputType = 'Address') then
    begin
    cmbContactType.Items.Add('Work - Physical');
    cmbContactType.Items.Add('Work - Postal');
    cmbContactType.Items.Add('Home - Postal');
    cmbContactType.Items.Add('Other');
    end;
end;

procedure TfrmPersonDetail_.grdPersonContactClick(Sender: TObject);
begin
  SetContactDisplay(cmbContactMode.Text);
end;

procedure TfrmPersonDetail_.grdPersonContactKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  SetContactDisplay(cmbContactMode.Text);
end;

procedure TfrmPersonDetail_.atnGetNextNumberExecute(Sender: TObject);
begin
  dmPerson.SetNewNumber;
end;

procedure TfrmPersonDetail_.atnGetDefaultRxlevelExecute(
  Sender: TObject);
begin
  dmPerson.SetNewRxLevel;
end;

procedure TfrmPersonDetail_.RzToolButton18Click(Sender: TObject);
begin
dmPerson.ppReportBioDataSheet.Print;
end;

procedure TfrmPersonDetail_.atnContact_NewExecute(Sender: TObject);
begin
dmPerson.qryPersonContact.Append;
end;

procedure TfrmPersonDetail_.atnContact_DeleteExecute(Sender: TObject);
begin
if dmPerson.qryPersonContact.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
   dmPerson.qryPersonContact.Delete;
end;

procedure TfrmPersonDetail_.atnContact_SaveExecute(Sender: TObject);
begin
if dmPerson.dsqryPersonContact.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonContact.Post;
end;

procedure TfrmPersonDetail_.atnContact_CancelExecute(Sender: TObject);
begin
if dmPerson.dsqryPersonContact.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonContact.Cancel;
end;

procedure TfrmPersonDetail_.atnContact_RefreshExecute(Sender: TObject);
begin
dmPerson.qryPersonContact.Refresh;
end;

procedure TfrmPersonDetail_.atnQualification_NewExecute(Sender: TObject);
begin
dmPerson.qryPersonQualification.Append;
end;

procedure TfrmPersonDetail_.atnQualification_DeleteExecute(
  Sender: TObject);
begin
if dmPerson.qryPersonQualification.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
  dmPerson.qryPersonQualification.Delete;
end;

procedure TfrmPersonDetail_.atnQualification_SaveExecute(Sender: TObject);
begin
if dmPerson.qryPersonQualification.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonQualification.Post;
end;

procedure TfrmPersonDetail_.atnQualification_CancelExecute(
  Sender: TObject);
begin
if dmPerson.qryPersonQualification.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonQualification.Cancel;
end;

procedure TfrmPersonDetail_.atnQualification_RefreshExecute(
  Sender: TObject);
begin
dmPerson.qryPersonQualification.Refresh;
end;

procedure TfrmPersonDetail_.atnComments_NewExecute(Sender: TObject);
begin
dmPerson.qryPersonComment.Append;
end;

procedure TfrmPersonDetail_.atnComments_DeleteExecute(Sender: TObject);
begin
if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
 if dmPerson.qryPersonComment.RecordCount > 0 then
  dmPerson.qryPersonComment.Delete;
end;

procedure TfrmPersonDetail_.atnComments_PostExecute(Sender: TObject);
begin
if dmPerson.qryPersonComment.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonComment.Post;
end;

procedure TfrmPersonDetail_.atnComments_CancelExecute(Sender: TObject);
begin
if dmPerson.qryPersonComment.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonComment.Cancel;
end;

procedure TfrmPersonDetail_.atnComments_RefreshExecute(Sender: TObject);
begin
dmPerson.qryPersonComment.Refresh;
end;

procedure TfrmPersonDetail_.RzDBEdit3Change(Sender: TObject);
begin
CheckNames;
end;

procedure TfrmPersonDetail_.RzDBEdit4Change(Sender: TObject);
begin
CheckNames;
end;

procedure TfrmPersonDetail_.RzDBEdit5Change(Sender: TObject);
begin
CheckNames;
end;


procedure TfrmPersonDetail_.CheckNames;
begin
 RzDialogButtons1.EnableOk := (((RzDBEdit3.Text <> '') and (RzDBEdit4.Text <> '') and (RzDBEdit5.Text <> '')));
end;

procedure TfrmPersonDetail_.RzDBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 SetHeaderPanel;
end;

end.

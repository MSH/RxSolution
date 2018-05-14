unit rxDispensing_Frm_Dispenser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPageControl, StdCtrls, ExtCtrls, ComCtrls, LMDControl,
  dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, RzDlgBtn, dxEdLib, dxDBELib, RzGroupBar, RzTabs, dxEditor,
  DBCtrls, Mask, RzDTP, RzDBDTP,
  dxDBTLCl, dxGrClms, RzDBCmbo, RzEdit, RzDBEdit, RzDBNav, RzCommon,
  RzLabel, RzButton, RzPanel, RzBckgnd, ImgList, DBActns, StdActns,
  ActnList, RzDBLbl, RzRadGrp, RzDBRGrp, RzCmboBx, ExtActns, ElPopBtn, DB,
  RzRadChk, RzDBChk, LocOnFly, Menus;
  
type
  TfrmPersonDetail_ = class(TForm)
    pnlToolbar_Header: TPanel;
    RzDialogButtons1: TRzDialogButtons;
    pnlToolbar_Header_ShapeBorder: TShape;
    Panel2: TPanel;
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    tbsAcademicQualifications: TRzTabSheet;
    grdPrescriberPhoto: TdxDBGrid;
    grdPrescriberPhotopersonPhotoDate_Dat: TdxDBGridDateColumn;
    pnlProductDetailColorBackground: TPanel;
    frcEdit: TRzFrameController;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdPrescriberSignature: TdxDBGrid;
    grdPrescriberSignaturepersonSignatureDateRecorded_Dat: TdxDBGridDateColumn;
    RzGroupBox5: TRzGroupBox;
    grdPrescriberQualification: TdxDBGrid;
    grdPrescriberQualificationpersonQualificationDateEntered_Dat: TdxDBGridDateColumn;
    grdPrescriberQualificationpersonQualificationInstitution_Str: TdxDBGridColumn;
    grdPrescriberQualificationpersonQualificationName_Str: TdxDBGridColumn;
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
    RzLabel2: TRzLabel;
    pnlToolbar_Header_Display: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzGroupBox12: TRzGroupBox;
    rzlRxLevel: TRzLabel;
    RzGroupBox4: TRzGroupBox;
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
    atnGetNextNumber: TAction;
    atnGetDefaultRxlevel: TAction;
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
    PopupMenu1: TPopupMenu;
    LangMenuItem: TMenuItem;
    RzGroupBox10: TRzGroupBox;
    Label12: TLabel;
    Label25: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    edtRegistrationNumber: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    cmbRxLevel: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    tbsContact: TRzTabSheet;
    procedure FormShow(Sender: TObject);
    procedure cmbRxLevelCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbContactModeChange(Sender: TObject);
    procedure grdPersonContactClick(Sender: TObject);
    procedure grdPersonContactKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure atnGetNextNumberExecute(Sender: TObject);
    procedure atnGetDefaultRxlevelExecute(Sender: TObject);
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
    procedure CheckNames;
    procedure RzDBEdit4Change(Sender: TObject);
    procedure RzDBLabel1Click(Sender: TObject);
    procedure RzDBEdit2Change(Sender: TObject);
    
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

uses SystemConstants, rxDispensing_Dm_Dispenser;

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
if dmPerson.qryPersonContact.State in [dsEdit, dsInsert] then
 dmPerson.qryPersonContact.Post;
end;

procedure TfrmPersonDetail_.atnContact_CancelExecute(Sender: TObject);
begin
if dmPerson.qryPersonContact.State in [dsEdit, dsInsert] then
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
if dmPerson.qryPersonComment.RecordCount > 0 then
 if MessageDlg('Delete Record?', mtConfirmation, [mbOk, mbCancel], 1) = mrOk then
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

procedure TfrmPersonDetail_.CheckNames;
begin
 RzDialogButtons1.EnableOk := ((RzDBEdit2.Text <> '') and (RzDBEdit3.Text <> '') and (RzDBEdit4.Text <> ''));
end;

procedure TfrmPersonDetail_.RzDBEdit4Change(Sender: TObject);
begin
    CheckNames;
end;

procedure TfrmPersonDetail_.RzDBLabel1Click(Sender: TObject);
begin
CheckNames;
end;

procedure TfrmPersonDetail_.RzDBEdit2Change(Sender: TObject);
begin
 CheckNames;
end;



end.







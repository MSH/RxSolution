unit ADRDetailUFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, DBCtrls, RzDBEdit, Mask, RzEdit,
  RzButton, RzRadChk, RzDBChk, RzDBLbl, RzLabel, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, DB, ElPopBtn, Menus, ActnList,
  RzDlgBtn, DBActns, ComCtrls, RzDTP, RzDBDTP, RzLine, RzBmpBtn;

type
  TADRDetailForm = class(TForm)
    pnlMain: TPanel;
    pnlForm_Detail: TRzGroupBox;
    dxADRDetails: TdxDBGrid;
    dxADRDetailsProductDescription_str: TdxDBGridPickColumn;
    dxADRDetailsDailyDosage_dbl: TdxDBGridMaskColumn;
    dxADRDetailsRoute_str: TdxDBGridPickColumn;
    dxADRDetailsDosageForm_str: TdxDBGridColumn;
    dxADRDetailsStrength_dbl: TdxDBGridMaskColumn;
    dxADRDetailsDateStarted_dat: TdxDBGridDateColumn;
    dxADRDetailsDateStopped_dat: TdxDBGridDateColumn;
    dxADRDetailsReasonForUse_str: TdxDBGridColumn;
    dxADRDetailsPackSize_dbl: TdxDBGridMaskColumn;
    dxADRDetailsContainer_str: TdxDBGridColumn;
    dxADRDetailsProductAvailable_bol: TdxDBGridCheckColumn;
    dxADRDetailsExpiryDate_dat: TdxDBGridDateColumn;
    dxADRDetailsBatchNumber_str: TdxDBGridColumn;
    RzToolbar3: TRzToolbar;
    btnContactAdd: TElSpeedButton;
    btnContactDelete: TElSpeedButton;
    btnContactSave: TElSpeedButton;
    btnContactCancel: TElSpeedButton;
    pnlForm_Footer: TRzGroupBox;
    RzGroupBox5: TRzGroupBox;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBCheckBox4: TRzDBCheckBox;
    RzDBCheckBox5: TRzDBCheckBox;
    RzDBCheckBox7: TRzDBCheckBox;
    RzDBCheckBox6: TRzDBCheckBox;
    RzDBCheckBox8: TRzDBCheckBox;
    RzDBCheckBox9: TRzDBCheckBox;
    RzDBMemo3: TRzDBMemo;
    RzGroupBox2: TRzGroupBox;
    Label2: TLabel;
    RzDBCheckBox11: TRzDBCheckBox;
    RzDBCheckBox10: TRzDBCheckBox;
    RzDBMemo2: TRzDBMemo;
    RzGroupBox4: TRzGroupBox;
    Label3: TLabel;
    RzDBCheckBox12: TRzDBCheckBox;
    RzDBCheckBox13: TRzDBCheckBox;
    RzDBMemo4: TRzDBMemo;
    rzdButtons: TRzDialogButtons;
    Button2: TButton;
    pnlForm_Header: TPanel;
    lblPatientLastName: TRzDBLabel;
    lblPatientFolderNumber: TRzDBLabel;
    pnlForm_Header_Divider: TShape;
    lne_01: TRzLine;
    Label4: TLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    PopupMenu1: TPopupMenu;
    atnDeleteSingleADRItem1: TMenuItem;
    ActionList1: TActionList;
    atnSaveandClose: TAction;
    atnClose: TAction;
    atnCancel: TAction;
    atnAddProduct: TDataSetInsert;
    atnRemoveProduct: TDataSetDelete;
    atnSaveProduct: TDataSetPost;
    atnCancelProduct: TDataSetCancel;
    pnlComments: TRzGroupBox;
    RzDBMemo5: TRzDBMemo;
    pnlDescripHeader: TRzGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBMemo1: TRzDBMemo;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    atnPrintReport: TAction;
    PopupMenu2: TPopupMenu;
    PrintReport1: TMenuItem;
    SaveandClose1: TMenuItem;
    Cancel1: TMenuItem;
    btnEdit: TElSpeedButton;
    Post1: TMenuItem;
    N1: TMenuItem;
    lblPosted: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzBmpButton3: TRzBmpButton;
    Shape1: TShape;
    Label7: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RzLine1: TRzLine;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure atnCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlMainResize(Sender: TObject);
    procedure ShowADRForm;
    procedure atnPrintReportExecute(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SortDisplay();
  end;

var
  ADRDetailForm: TADRDetailForm;

implementation

uses   PatientRxUFrm, 
  rxDispensing_Unt_Patient, rxDispensing_Dm_Patient;

{$R *.dfm}

procedure TADRDetailForm.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TADRDetailForm.Button3Click(Sender: TObject);
var
 vADRID: string;
begin

 if dmPatient.tblADRWorker.State in [dsEdit, dsInsert] then
  dmPatient.tblADRWorker.Post;

 vADRID := PatientRxFrm.PatientRxSelect;
 if Length(vADRID) > 0 then
  dmPatient.InsertProductFromRx(vADRID , dmPatient.vCurrentADRRecord);

end;

procedure TADRDetailForm.atnCloseExecute(Sender: TObject);
begin
 with dmPatient do
  begin
  if tblADRWorker.State in [dsEdit, dsInsert] then
   tblADRWorker.Post;
  end;

 Close;
end;

procedure TADRDetailForm.FormShow(Sender: TObject);
begin
 SortDisplay();
end;

procedure TADRDetailForm.SortDisplay;
const FFrameWidth = 5;
var
  wid : integer;
  hgt : integer;
  halfForm : integer;
  vPosted : Boolean;
begin

 vPosted := dmPatient.tblADRWorker.FieldByName('Posted_bol').AsBoolean;

 if not vPosted then
  begin
  //Clear Formulation Items first
  dxADRDetailsProductDescription_str.Items.Clear;
  //Clear Routes Items First;
  dxADRDetailsRoute_str.Items.Clear;

  with dmPatient.qryProductFormulation do
   begin
   Close;
   Open;
   First;
   while not EOF do
    begin
    dxADRDetailsProductDescription_str.Items.Add(FieldByName('strengthExtraDescription_str').AsString);
     Next;
    end;
   Close;
   end;

  with dmPatient.qryRoutes do
   begin
   Close;
   Open;
   First;
   while not EOF do
    begin
    dxADRDetailsRoute_str.Items.Add(FieldByName('Code_str').AsString);
    Next;
    end;
   Close;
   end;
  end;

 pnlMainResize(pnlMain);
 //Disable - Enable actions, text editors and panels
 pnlForm_Header.Enabled := not vPosted;
 //pnlForm_Detail.Enabled := not vPosted;
 pnlForm_Footer.Enabled := not vPosted;

 dxADRDetails.Enabled := not vPosted;

 atnAddProduct.Enabled := not vPosted;
 atnRemoveProduct.Enabled := not vPosted;
 atnCancelProduct.Enabled := not vPosted;
 dmPatient.atnPostADR.Enabled := not vPosted;
 lblPosted.Visible := vPosted;

end; 

procedure TADRDetailForm.pnlMainResize(Sender: TObject);
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
  pnlForm_Detail.Height := hgt - pnlForm_Footer.Height - rzdButtons.Height ;

end;

procedure TADRDetailForm.ShowADRForm;
begin
 with ADRDetailForm do
  begin

  if ShowModal = mrOK then
   begin
   if dmPatient.tblADRWorker.State in [dsEdit, dsInsert] then
    dmPatient.tblADRWorker.Post; 
   dmPatient.PostADR;
   end
  else
   begin
   if dmPatient.tblADRWorker.State in [dsEdit, dsInsert] then
   dmPatient.tblADRWorker.Cancel;
   end;

  end;

end;

procedure TADRDetailForm.atnPrintReportExecute(Sender: TObject);
begin

 with dmPatient do
  begin
  PrintADRPatientReport;
  end;

end;

end.


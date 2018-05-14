unit PrescriptionFRM_Posting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzDlgBtn, Menus, RzCommon, DB, RzLine, DBCtrls,
  RzButton, RzRadChk, RzDBChk, RzDBCmbo, StdCtrls, RzLabel, RzDBLbl,
  ComCtrls, RzDTP, RzDBDTP, wwdbdatetimepicker;

type
  TfrmRXPosting = class(TForm)
    rzdButtons: TRzDialogButtons;
    FRM_RX: TDataSource;
    FRM_Dispenser: TDataSource;
    FRM_Prescriber: TDataSource;
    FRM_Clinic: TDataSource;
    FRM_Demanders: TDataSource;
    fcRXHeader: TRzFrameController;
    pmnuRX_: TPopupMenu;
    Directions1: TMenuItem;
    Intervention1: TMenuItem;
    N1: TMenuItem;
    pmnuRX_PrintLabels: TMenuItem;
    Labels1: TMenuItem;
    PrintAddressLabel1: TMenuItem;
    N2: TMenuItem;
    actProtocolsSelect1: TMenuItem;
    actRegimenStandard1: TMenuItem;
    N3: TMenuItem;
    CancelPosts1: TMenuItem;
    Post1: TMenuItem;
    pnlRXBackground: TPanel;
    pnlForm_Header: TPanel;
    lblPatientLastName: TRzDBLabel;
    lblDemander: TLabel;
    lblPrescriber: TLabel;
    lblDispenser: TLabel;
    Label5: TLabel;
    rxClinic: TRzDBLookupComboBox;
    rxDemander: TRzDBLookupComboBox;
    rxPrescriberCode: TRzDBLookupComboBox;
    rxDispenserCode: TRzDBLookupComboBox;
    rxPrescriber: TRzDBLookupComboBox;
    rxDispenser: TRzDBLookupComboBox;
    rxReferred: TRzDBCheckBox;
    lblRXNumber: TDBText;
    lne_01: TRzLine;
    imgTick_Clinic: TImage;
    imgNO_Clinic: TImage;
    imgQuestion_Clinic: TImage;
    Label1: TLabel;
    imgTick_Demander: TImage;
    imgNO_Demander: TImage;
    imgQuestion_Demander: TImage;
    imgTick_Prescriber: TImage;
    imgNO_Prescriber: TImage;
    imgQuestion_Prescriber: TImage;
    imgTick_Dispenser: TImage;
    imgNO_Dispenser: TImage;
    imgQuestion_Dispenser: TImage;
    imgTick_Referred: TImage;
    imgNO_Referred: TImage;
    imgQuestion_Referred: TImage;
    Timer1: TTimer;
    RzLine1: TRzLine;
    Label2: TLabel;
    dteNextVisit: TwwDBDateTimePicker;
    procedure _SetDisplay;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FEnableDispenser: Boolean;
    function GetHasClinic: Boolean;
    function GetHasDemander: Boolean;
    function GetHasDispenser: Boolean;
    function GetHasPrescriber: Boolean;
    function GetIsChronic: Boolean;
    function _CanPost: Boolean;
    { Private declarations }
  public
    procedure UpdateScreen;
    property EnableDispenser: Boolean read FEnableDispenser write FEnableDispenser;
    property HasClinic: Boolean read GetHasClinic;
    property HasDemander: Boolean read GetHasDemander;
    property HasDispenser: Boolean read GetHasDispenser;
    property HasPrescriber: Boolean read GetHasPrescriber;
    property IsChronic: Boolean read GetIsChronic;
    function IsDispenserValid(id : string): Boolean;
    { Public declarations }
  end;

type
  TRXPost = class(TObject)
  public
    function IsRequired: Boolean;
    class function Show(_enableDispenser: Boolean): Boolean;
  end;


implementation

uses PrescriptionDM, ADODB;

{$R *.dfm}

function TRXPost.IsRequired: Boolean;
begin
  Result := False;
end;

class function TRXPost.Show(_enableDispenser: Boolean): Boolean;
var
  frmRXPosting: TfrmRXPosting;

begin

  Result := False;
  try
  frmRXPosting := TfrmRXPosting.Create(nil);
    try
//    frmRXPosting.EnableDispenser := _enableDispenser;
    frmRXPosting.UpdateScreen;
    if frmRXPosting.ShowModal = mrOK then Result := True;
    except
      on E:Exception do raise Exception.Create('TRXPost.Show' + #13 + E.Message);
    end;
  finally
  frmRXPosting.Free;
  end;

end;

function TfrmRXPosting.GetHasClinic: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      begin
      _retVal := True;
      if _retVal then _retVal := not FieldByName('clinic_ID').IsNull;
      if _retVal then _retVal := not (Trim(FieldByName('clinic_ID').AsString) = '');
      end;
  Result := _retVal;

end;

function TfrmRXPosting.GetHasDemander: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      begin
      _retVal := True;
      if _retVal then _retVal := not FieldByName('DemanderUnique_ID').IsNull;
      if _retVal then _retVal := not (Trim(FieldByName('DemanderUnique_ID').AsString) = '');
      end;
  Result := _retVal;
end;

function TfrmRXPosting.GetHasDispenser: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      begin
      _retVal := True;
      if _retVal then _retVal := not FieldByName('dispenser_ID').IsNull;
      if _retVal then _retVal := not (Trim(FieldByName('dispenser_ID').AsString) = '');
      if _retVal then _retVal := IsDispenserValid(FieldByName('dispenser_ID').Value);     //SM new procedure to check whether the dispenser ID is valid or not
      end;
  Result := _retVal;
end;

function TfrmRXPosting.GetHasPrescriber: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      begin
      _retVal := True;
      if _retVal then _retVal := not FieldByName('prescriber_ID').IsNull;
      if _retVal then _retVal := not (Trim(FieldByName('prescriber_ID').AsString) = '');
      end;
  Result := _retVal;
end;

function TfrmRXPosting.GetIsChronic: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      if FieldByName('repeats_Int').AsInteger > 0 then _retVal := True;;
  Result := _retVal;
end;

function TfrmRXPosting._CanPost: Boolean;
var
  _retVal : Boolean;
begin

  _retVal := False;
  with dmRX.qryRX do
    if Active then
      begin
      _retVal := True;
      if _retVal then _retVal := GetHasDemander;
      if _retVal then _retVal := GetHasDispenser;
      if _retVal then _retVal := GetHasPrescriber;
      if _retVal then
        if GetIsChronic then
          _retVal := GetHasClinic;
      end;

  Result := _retVal;

end;

procedure TfrmRXPosting._SetDisplay;
begin

  rzdButtons.EnableOk := _CanPost;

//  rxDispenserCode.Enabled := FEnableDispenser;
//  rxDispenser.Enabled := FEnableDispenser;

  if GetIsChronic then
    begin
    rxClinic.Enabled := True;
    imgTick_Clinic.Visible := GetHasClinic;
    imgNO_Clinic.Visible := not GetHasClinic;
    imgQuestion_Clinic.Visible := GetHasClinic;

    rxReferred.Enabled := True;
    imgTick_Referred.Visible := GetHasClinic;
    imgNO_Referred.Visible := not GetHasClinic;
    imgQuestion_Referred.Visible := GetHasClinic;

    end else
    begin
    rxClinic.Enabled := False;
    imgTick_Clinic.Visible := False;
    imgNO_Clinic.Visible := False;
    imgQuestion_Clinic.Visible := False;
    rxReferred.Enabled := False;
    imgTick_Referred.Visible := False;
    imgNO_Referred.Visible := False;
    imgQuestion_Referred.Visible := False;
    end;


  imgTick_Demander.Visible := GetHasDemander;
  imgNO_Demander.Visible := not GetHasDemander;
  imgQuestion_Demander.Visible := False;

  imgTick_Prescriber.Visible := GetHasPrescriber;
  imgNO_Prescriber.Visible := not GetHasPrescriber;
  imgQuestion_Prescriber.Visible := False;

  imgTick_Dispenser.Visible := GetHasDispenser;
  imgNO_Dispenser.Visible := not GetHasDispenser;
  imgQuestion_Dispenser.Visible := False;
 
 //********* SM Disable Drop downs if default prescriber selected
 if dmRX.GetPinBeforePost then
  if (dmRX.qryRX.FieldByName('Prescriber_ID').AsString <> '') then
       begin
       rxPrescriberCode.Enabled := False;
       rxPrescriber.Enabled     := False;
       end;

 //********* SM Disable Drop downs if Default Dispenser Selected
 if dmRX.GetPinBeforePost then
  if (dmRX.qryRX.FieldByName('Dispenser_ID').AsString <> '') then
       begin
       rxDispenser.Enabled      := False;//FEnableDispenser;
       rxDispenserCode.Enabled  := False;// FEnableDispenser;
       end;

 //********* SM Disable Demander if already selected
 if dmRX.GetPinBeforePost then
  if (dmRX.qryRX.FieldByName('DemanderUnique_ID').AsString <> '') then
        begin
        rxDemander.Enabled      := False;
        end;

end;


procedure TfrmRXPosting.Timer1Timer(Sender: TObject);
begin
  _SetDisplay;
end;

procedure TfrmRXPosting.UpdateScreen;
begin
  _SetDisplay;
end;

procedure TfrmRXPosting.FormCreate(Sender: TObject);
begin
  FEnableDispenser := True;
end;

function TfrmRXPosting.IsDispenserValid(id : string): Boolean;
begin

 with dmRX.qryIsDispenserValid do
  begin
  Close;
  Parameters.ParamByName('person_id').Value := id;
  Open;
  if FieldByName('Result').AsInteger = 1 then
   Result := True
  else
   Result := False;
  end;

end;

procedure TfrmRXPosting.FormShow(Sender: TObject);
begin
  if not (dmRX.qryRX.FieldByName('dispensingPosted_bol').AsBoolean) then
   dteNextVisit.MinDate := Now();
end;

end.

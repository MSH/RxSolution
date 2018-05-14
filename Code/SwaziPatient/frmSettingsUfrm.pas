unit frmSettingsUfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, wwdbdatetimepicker, Mask, RzEdit,
  RzDBEdit, Buttons;

type
  TSettingsFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label45: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label61: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    GroupBox2: TGroupBox;
    lblInterval: TLabel;
    lblLength: TLabel;
    edtInterval: TRzDBNumericEdit;
    edtLength: TRzDBNumericEdit;
    Label3: TLabel;
    gbTicketNumber: TGroupBox;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Button2: TButton;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    lblTmp1: TLabel;
    lblTmp3: TLabel;
    lblTmp2: TLabel;
    lblTmp4: TLabel;
    rdReportType: TRadioGroup;
    cmbTmp5: TDBLookupComboBox;
    edtTmp4: TDBEdit;
    DBEdit2: TDBEdit;
    lblTmp5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure UpdateReportLabels;
    procedure rdReportTypeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsFrm: TSettingsFrm;

implementation

uses MainUDm, PatientUDm, MainUFrm;

{$R *.dfm}

procedure TSettingsFrm.FormShow(Sender: TObject);
begin
 MainDm.OpenRecordNumbering;
 UpdateReportLabels;

 if (MainFrm.FViewType = 'Receptionist') or (MainFrm.FViewType = 'Administrator') then
  gbTicketNumber.Enabled := True
 else
 gbTicketNumber.Enabled := False;

end;

procedure TSettingsFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //

end;

procedure TSettingsFrm.Button1Click(Sender: TObject);
begin
  MainDm.CloseRecordNumbering;
  MainDm.SaveSystemSettings;
  SettingsFrm.Close;
end;

procedure TSettingsFrm.Button2Click(Sender: TObject);
begin
  MainDm.CloseRecordNumbering;
  MainDm.SaveSystemSettings;
end;

procedure TSettingsFrm.UpdateReportLabels;
begin

   MainDm.TblSystem.close;
   MainDm.TblSystem.Open;
 //

  if rdReportType.ItemIndex = 0 then
   begin
   edtInterval.Enabled := True;
   lblTmp1.Caption := 'Age Start';
   lblTmp2.Caption := 'Age End';
   lblTmp3.Caption := 'Gender';

   edtTmp4.Enabled := False;

   cmbTmp5.Enabled := True;
   cmbTmp5.ListSource := PatientDm.dsClinics;
   cmbTmp5.KeyField := 'clinicName_str';
   cmbTmp5.ListField := 'clinicName_str';
   cmbTmp5.Refresh;
   end
  else
   begin

   cmbTmp5.ListSource := PatientDm.dsPAtientClass;
   cmbTmp5.KeyField := 'Description_str';
   cmbTmp5.ListField := 'Description_str';

   edtInterval.Enabled := False;
   lblTmp1.Caption := 'Start Year';
   lblTmp2.Caption := 'End Year';
   lblTmp3.Caption := 'Start Month';
   lblTmp4.Caption := 'End Month';
   lblTmp5.Caption := 'Class';

   edtTmp4.Enabled := True;

   cmbTmp5.Enabled := True;
   cmbTmp5.Refresh;

   end;

end;

procedure TSettingsFrm.rdReportTypeClick(Sender: TObject);
begin
 UpdateReportLabels;
end;

end.

unit LocalSettingsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, inifiles, DB, Printers, ExtCtrls, RzDlgBtn, ActnList,
  Mask, RzEdit, RzSpnEdt;

type
  TLocalSettingsFrm = class(TForm)
    GroupBox8: TGroupBox;
    Label18: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    cmbReportPrinter: TComboBox;
    cmbLabelPrinter: TComboBox;
    chkUsePrinters: TCheckBox;
    cmbLocalDemander: TComboBox;
    RzDialogButtons1: TRzDialogButtons;
    ActionList1: TActionList;
    atnSaveSettings: TAction;
    GroupBox1: TGroupBox;
    edtUser: TEdit;
    edtPwd: TEdit;
    edtPracNumber: TEdit;
    edtPaabUrl: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label8: TLabel;
    chkBiometric: TCheckBox;
    chkHaveBarcodeScanner: TCheckBox;
    RzSpinEdit1: TRzSpinEdit;
    chkUsingScannerOnly: TCheckBox;
    procedure cmbLocalDemanderDropDown(Sender: TObject);
    procedure cmbLabelPrinterDropDown(Sender: TObject);
    procedure cmbReportPrinterDropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atnSaveSettingsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SavePrinterSettings;
    procedure GetPrinterSettings;   
  public
    { Public declarations }
  end;

var
  LocalSettingsFrm: TLocalSettingsFrm;

implementation

uses MainUDM, RxSolutionUFrm, RxSolutionSecurityClass;

{$R *.dfm}

procedure TLocalSettingsFrm.SavePrinterSettings;          //SM
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create('RxPrinters.ini');
  try
  ini.WriteString('Rx','LabelPrinter', cmbLabelPrinter.Text);
  ini.WriteString('Rx','ReportPrinter', cmbReportPrinter.Text);
  ini.WriteBool('Rx','UsePrinters_bol', chkUsePrinters.Checked);
  ini.WriteBool('Rx', 'HaveBiometricMachine', chkBiometric.Checked);
  ini.WriteBool('Rx', 'HaveBarcodeScanner', chkHaveBarcodeScanner.Checked);
  ini.WriteInteger('Rx', 'BioMetricFingerNum', RzSpinEdit1.IntValue);
//  ini.WriteString('Rx', 'BiometricURL', edtBioWebService.Text);
  ini.WriteBool('Rx', 'BioMachineScannerOnly', chkUsingScannerOnly.Checked);

  ini.WriteString('Rx', 'PaabUser', edtUser.Text);
  ini.WriteString('Rx', 'PaabPwd', edtPwd.Text);
  ini.WriteString('Rx', 'PaabPrac', edtPracNumber.Text);
  ini.WriteString('Rx', 'PaabUrl', edtPaabUrl.Text);

  if MainDm.stpDemanderList.Locate('Name_Str', cmbLocalDemander.Text, []) then
   ini.WriteString('Rx','DefaultDemander', MainDm.stpDemanderList.FieldByName('DemanderUnique_ID').AsString)
  else
   ini.WriteString('Rx','DefaultDemander', '');
  finally
   ini.Free;
  end;
end;   

procedure TLocalSettingsFrm.GetPrinterSettings;            //SM
var
  ini : TIniFile;
  DemanderID : String;
begin
  Ini := TIniFile.Create('RxPrinters.ini');
  try
  cmbLabelPrinter.Text := ini.ReadString('Rx','LabelPrinter','');
  cmbReportPrinter.Text := ini.ReadString('Rx','ReportPrinter','');
  demanderID := ini.ReadString('Rx','DefaultDemander', '');
  chkUsePrinters.Checked := ini.ReadBool('Rx','UsePrinters_bol', False);
  chkBiometric.Checked := ini.ReadBool('Rx', 'HaveBiometricMachine', False);
  chkHaveBarcodeScanner.Checked := ini.ReadBool('Rx', 'HaveBarcodeScanner', False);
  RzSpinEdit1.IntValue := ini.ReadInteger('Rx', 'BioMetricFingerNum', 10);
//  edtBioWebService.Text := ini.ReadString('Rx', 'BiometricURL', '');
  chkUsingScannerOnly.Checked := ini.ReadBool('Rx', 'BioMachineScannerOnly', False);

  edtUser.Text := ini.ReadString('Rx', 'PaabUser', '');
  edtPwd.Text := ini.ReadString('Rx', 'PaabPwd', '');
  edtPracNumber.Text := ini.ReadString('Rx', 'PaabPrac', '');
  edtPaabUrl.Text := ini.ReadString('Rx', 'PaabUrl', '');

  if MainDm.stpDemanderList.Locate('DemanderUnique_ID', DemanderID, []) then
   cmbLocalDemander.Text := MainDm.stpDemanderList.FieldByName('Name_str').AsString
  else
   cmbLocalDemander.Text := '';
  finally
   ini.Free;
  end;
end;

procedure TLocalSettingsFrm.cmbLocalDemanderDropDown(Sender: TObject);
var
 demanderSet : TDataSet;
begin

cmbLocalDemander.Items.Clear;
demanderSet := MainDm.dsActiveDemanders.DataSet;
demanderSet.First;

while not demanderSet.Eof do
 begin
 cmbLocalDemander.Items.Add(demanderSet.FieldByName('Name_Str').AsString);
 demanderSet.Next;
 end;
 
end;

procedure TLocalSettingsFrm.cmbLabelPrinterDropDown(Sender: TObject);
var
 count, position: Integer;
 pname : String;
begin

count := 0;
cmbLabelPrinter.Items.Clear;
Printer.Refresh;

while count < Printer.Printers.Count do
 begin
 pname := Printer.Printers.Strings[count];
// position := Pos(' on', pname);        blocked code is for Windows 98
// pname := copy(pname, 1, position-1);  blocked code is for Windows 98
 cmbLabelPrinter.Items.Add(pname);
 count := count +1;
 end;

end;

procedure TLocalSettingsFrm.cmbReportPrinterDropDown(Sender: TObject);
var
 count, position: Integer;
 pname : String;
begin

 count := 0;
 cmbReportPrinter.Items.Clear;
 Printer.Refresh;

 while count < Printer.Printers.Count do
  begin
  pname := Printer.Printers.Strings[count];
 // position := Pos(' on', pname);        blocked code is for Windows 98
 // pname := copy(pname, 1, position-1);  blocked code is for Windows 98
  cmbReportPrinter.Items.Add(pname);
  count := count +1;
  end;

end;

procedure TLocalSettingsFrm.FormShow(Sender: TObject);
var
 atnCanEdit, atnBrowse: Boolean;
begin
 //******* Show User Settings and Levels
 with RxSolutionFrm.Security do
   begin
   atnCanEdit    := (GetUserAccessLevel(MODULE_LOCALSETTINGS) > USER_BROWSER);
   atnBrowse     := (GetUserAccessLevel(MODULE_LOCALSETTINGS) = USER_BROWSER);
   end;

 GroupBox8.Enabled := atnCanEdit;
 GroupBox1.Enabled := atnCanEdit;
 GroupBox2.Enabled := atnCanEdit;

 if atnBrowse then
  Caption := Caption + ' - Browse Only';

 GetPrinterSettings;

end;

procedure TLocalSettingsFrm.atnSaveSettingsExecute(Sender: TObject);
begin
 SavePrinterSettings;
end;

end.

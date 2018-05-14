unit rxDispensing_Frm_AdherenceToolForPatient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, RzDlgBtn, RzDBSpin, dxDBTLCl, dxGrClms,
  DBCtrls, RzDBNav, RzDBCmbo, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxPageControl, RzDBEdit, Mask, RzEdit, RzPanel, StdCtrls, wwdblook,
  RzBckgnd, ExtCtrls, RzButton,
  RzRadChk, RzDBChk, RzLabel, RzDBLbl;

type
  TfrmAdherencePatient = class(TForm)
    pnlToolbar_Header_Prescription: TPanel;
    pnlToolbar_Header_ShapeBorder_Prescriptions: TShape;
    Panel2: TPanel;
    RzSeparator1: TRzSeparator;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Panel1: TPanel;
    grdPatientAdherence: TdxDBGrid;
    RzDBNavigator5: TRzDBNavigator;
    RzDialogButtons1: TRzDialogButtons;
    rzcMain: TRzFrameController;
    grdPatientAdherencetoolCode_Str: TdxDBGridColumn;
    grdPatientAdherencetoolPatientScore_Dbl: TdxDBGridMaskColumn;
    grdPatientAdherencetoolPatientCompliant_Bol: TdxDBGridCheckColumn;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    grdPatientDetail: TdxDBGrid;
    RzDBLabel3: TRzDBLabel;
    RzDBLabel4: TRzDBLabel;
    grdPatientDetailtoolPatientDetScore_Int: TdxDBGridMaskColumn;
    grdPatientDetailtoolPatientDetScorePercent_dbl: TdxDBGridMaskColumn;
    grdPatientDetailtoolPatientDetAnswerDescription_Str: TdxDBGridColumn;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdherencePatient: TfrmAdherencePatient;

implementation

uses rxDispensing_Dm_Main;

{$R *.dfm}

end.

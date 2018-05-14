unit rxDispensing_Frm_AdherenceTool;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, dxExEdtr, RzButton,
  RzDlgBtn, StdCtrls, RzCmboBx, RzDBCmbo, DBCtrls, ComCtrls, RzDBEdit,
  RzBckgnd, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms, dxCntner,
  RzLabel, RzDBLbl, RzPanel,  ActnList, RzCommon, Mask, RzEdit,
  dxPageControl, RzDBNav, RzDBSpin, wwdblook;

type
  TfrmAdherenceTool = class(TForm)
    pnlToolbar_Header_Prescription: TPanel;
    pnlToolbar_Header_ShapeBorder_Prescriptions: TShape;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    rzcMain: TRzFrameController;
    ActionList1: TActionList;
    atnAddCounselPlan: TAction;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    dxPageControl1: TdxPageControl;
    dxtEvaluations: TdxTabSheet;
    dxtEvidence: TdxTabSheet;
    dxtJournals: TdxTabSheet;
    dxtScales: TdxTabSheet;
    RzDBEdit3: TRzDBEdit;
    grdToolEvaluation: TdxDBGrid;
    grdToolEvaluationtoolEvalQuestion_Str: TdxDBGridColumn;
    grdEvaluationScale: TdxDBGrid;
    grdEvaluationScaletoolEvalScaleName_Str: TdxDBGridColumn;
    grdEvaluationScaletoolEvalScaleScoreType_Str: TdxDBGridColumn;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label4: TLabel;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    grdJournals: TdxDBGrid;
    grdJournalsjnl_Str: TdxDBGridColumn;
    grdJournalsvolume_Str: TdxDBGridColumn;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    RzDBNavigator2: TRzDBNavigator;
    RzDBNavigator3: TRzDBNavigator;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RzDBEdit11: TRzDBEdit;
    Label20: TLabel;
    RzDBEdit12: TRzDBEdit;
    Label21: TLabel;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBSpinEdit1: TRzDBSpinEdit;
    RzDBSpinEdit2: TRzDBSpinEdit;
    Label22: TLabel;
    Label23: TLabel;
    RzDBEdit15: TRzDBEdit;
    Label24: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNavigator4: TRzDBNavigator;
    Label25: TLabel;
    Label26: TLabel;
    RzDBEdit16: TRzDBEdit;
    Label27: TLabel;
    RzDBEdit17: TRzDBEdit;
    Label28: TLabel;
    RzDBEdit18: TRzDBEdit;
    Label29: TLabel;
    RzDBEdit19: TRzDBEdit;
    Label30: TLabel;
    RzDBEdit20: TRzDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzDBEdit21: TRzDBEdit;
    Panel1: TPanel;
    grdTools: TdxDBGrid;
    grdToolstoolCode_Str: TdxDBGridColumn;
    grdToolstoolName_Str: TdxDBGridColumn;
    RzDBNavigator5: TRzDBNavigator;
    RzSeparator1: TRzSeparator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses rxDispensing_Dm_Main;

{$R *.dfm}

end.

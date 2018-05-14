unit rxDispensing_Frm_Evidence;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ElPopBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  StdCtrls, RzTabs, RzButton, jpeg, ExtCtrls, RzLabel, RzDBLbl, DBCtrls,
  RzDBCmbo, RzPanel;

type
  TfrmEvidence = class(TForm)
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Image_Header: TImage;
    RzMenuButton1: TRzMenuButton;
    RzPageControl1: TRzPageControl;
    tbsInteractions: TRzTabSheet;
    pnl_Main_RouteRxPanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    dxgDrugInteraction: TdxDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    Panel1: TPanel;
    RzGroupBox4: TRzGroupBox;
    lblProblem: TLabel;
    lblOutcome: TLabel;
    RzGroupBox2: TRzGroupBox;
    TabSheet3: TRzTabSheet;
    dxgDrugInteractionColumn1: TdxDBGridColumn;
    dxgDrugInteractionColumn2: TdxDBGridColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label43: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvidence: TfrmEvidence;

implementation

{$R *.dfm}

end.

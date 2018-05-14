unit rxDispensing_Frm_Reference;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzPanel, ElPopBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  RzTabs, RzButton, StdCtrls, jpeg, ExtCtrls;

type
  TfrmReference = class(TForm)
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Image_Header: TImage;
    Label43: TLabel;
    RzMenuButton1: TRzMenuButton;
    RzPageControl1: TRzPageControl;
    tbsInteractions: TRzTabSheet;
    pnl_Main_RouteRxPanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    dxgDrugInteraction: TdxDBGrid;
    dxgDrugInteractionColumn1: TdxDBGridColumn;
    dxgDrugInteractionColumn2: TdxDBGridColumn;
    dxgDrugInteractionColumn3: TdxDBGridColumn;
    dxgDrugInteractionColumn4: TdxDBGridColumn;
    dxgDrugInteractionColumn5: TdxDBGridColumn;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    Panel1: TPanel;
    TabSheet3: TRzTabSheet;
    RzGroupBox4: TRzGroupBox;
    lblProblem: TLabel;
    lblOutcome: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TabSheet1: TRzTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Shape2: TShape;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Body: TRzTabSheet;
    Label11: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label12: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Label13: TLabel;
    Shape5: TShape;
    dxDBGrid1: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    Label14: TLabel;
    Label15: TLabel;
    Panel7: TPanel;
    Shape6: TShape;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    Panel8: TPanel;
    Label16: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReference: TfrmReference;

implementation

{$R *.dfm}

end.

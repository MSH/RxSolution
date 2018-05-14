unit StdRegimen_StdDoseDetailFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RzCommon, RzEdit, Mask, RzDBEdit, StdCtrls, wwdblook,
  RzLabel, RzDBLbl, dxExEdtr, DBCtrls, RzDBCmbo, RzBckgnd, dxDBTLCl,
  dxGrClms, dxDBGrid, dxDBCtrl, dxTL, dxCntner, ElPopBtn, ExtCtrls,
  RzDlgBtn, RzButton, RzRadChk, RzDBChk, ActnList, Menus;

type
  TfrmStdDoseDetail = class(TForm)
    fcRegimin: TRzFrameController;
    FRM_StandardRegimen: TDataSource;
    FRM_Formulation: TDataSource;
    FRM_ProductPacks: TDataSource;
    FRM_RegiminInstruction: TDataSource;
    FRM_ICD: TDataSource;
    pnlRXBackground: TPanel;
    pnlForm_Detail: TPanel;
    pnlToolbar: TPanel;
    shpToolber: TShape;
    btnEdit: TElSpeedButton;
    btnSave: TElSpeedButton;
    btnCancel: TElSpeedButton;
    Panel11: TPanel;
    pnlForm_Header: TPanel;
    FRM_RegiminInterval: TDataSource;
    rzdbMain: TRzDialogButtons;
    Label1: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    regRegimin: TRzDBLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBEdit5: TRzDBEdit;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    RzDBEdit6: TRzDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBLabel1: TRzDBLabel;
    RzSeparator1: TRzSeparator;
    RzLabel2: TRzLabel;
    lblICD: TLabel;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    regICDCode: TRzDBLookupComboBox;
    Label12: TLabel;
    RzDBEdit7: TRzDBEdit;
    Label13: TLabel;
    RzDBEdit8: TRzDBEdit;
    Panel1: TPanel;
    regLabel_01: TRzDBLabel;
    regLabel_02: TRzDBLabel;
    regLabel_03: TRzDBLabel;
    regLabel_04: TRzDBLabel;
    regLabel_05: TRzDBLabel;
    regLabel_06: TRzDBLabel;
    Shape1: TShape;
    RzDBCheckBox2: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    pnlForm_Detail_Divider: TShape;
    Shape2: TShape;
    aclRegiminDetail: TActionList;
    actData_Post: TAction;
    actData_Cancel: TAction;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    actPrint: TAction;
    Print1: TMenuItem;
    procedure actData_PostExecute(Sender: TObject);
    procedure actData_CancelExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure SetButtons;
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TStdDoseDetail = class(TObject)
  public
    class function Show: Integer;
  end;


implementation

uses StdRegimenDM, TabEnter;

{$R *.dfm}

class function TStdDoseDetail.Show: Integer;
var
  frmStdDoseDetail: TfrmStdDoseDetail;

begin

  result := -1;
  try
  frmStdDoseDetail := TfrmStdDoseDetail.Create(nil);
    try

    result := frmStdDoseDetail.ShowModal;

    except
      on E:Exception do raise Exception.Create('TStdDoseDetail.Show' + #13 + E.Message);
    end;
  finally
  frmStdDoseDetail.Free;
  end;

end;


procedure TfrmStdDoseDetail.actData_PostExecute(Sender: TObject);
begin

  with dmStdReg.qryStdRegimen do
    try
    if State in [dsEdit, dsInsert] then Post;
    except
    end;

end;

procedure TfrmStdDoseDetail.actData_CancelExecute(Sender: TObject);
begin

  with dmStdReg.qryStdRegimen do
    try
    if State in [dsEdit, dsInsert] then Cancel;
    except
    end;

end;

procedure TfrmStdDoseDetail.SetButtons;
begin

  with dmStdReg.qryStdRegimen do
    if Active then
      begin
      if State in [dsEdit, dsInsert] then actData_Post.Enabled := True else actData_Post.Enabled := False;
      if State in [dsEdit, dsInsert] then actData_Cancel.Enabled := True else actData_Cancel.Enabled := False;
      end;

end;

procedure TfrmStdDoseDetail.Timer1Timer(Sender: TObject);
begin
  SetButtons;
end;

procedure TfrmStdDoseDetail.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Key := NextControl(Self, Key);
end;

end.

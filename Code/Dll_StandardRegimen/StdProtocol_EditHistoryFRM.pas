unit StdProtocol_EditHistoryFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzDlgBtn, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  StdCtrls, Mask, RzEdit, RzDBEdit, ExtCtrls, DB, ADODB, dxDBTLCl, dxGrClms;

type
  TRX_ProtocolEditHistoryFrm = class(TForm)
    pnlRXBackground: TPanel;
    pnlForm_Header: TPanel;
    pnlForm_Detail: TPanel;
    lblView_Standard: TLabel;
    dxgRXItemStandard: TdxDBGrid;
    rzdbMain: TRzDialogButtons;
    tblEditHistory: TADOQuery;
    tblEditHistoryProtocolChange_ID: TAutoIncField;
    tblEditHistoryDate_dat: TDateTimeField;
    tblEditHistoryDescription_str: TWideStringField;
    tblEditHistoryProtocol_ID: TGuidField;
    tblEditHistoryRegimen_ID: TGuidField;
    tblEditHistoryType_str: TWideStringField;
    tblEditHistoryMode_str: TWideStringField;
    tblEditHistoryUser_str: TWideStringField;
    dsEditHistory: TDataSource;
    dxgRXItemStandardDate_dat: TdxDBGridDateColumn;
    dxgRXItemStandardDescription_str: TdxDBGridColumn;
    dxgRXItemStandardType_str: TdxDBGridColumn;
    dxgRXItemStandardMode_str: TdxDBGridColumn;
    dxgRXItemStandardUser_str: TdxDBGridColumn;
    Label1: TLabel;
    dxgRXItemStandardProtocol: TdxDBGridColumn;
    tblEditHistoryProtocol: TWideStringField;
    procedure pnlRXBackgroundResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 TProtocolEditHistoryFrm = class(TObject)
  public
    class procedure LoadEditHistory(refID: string; vType: integer);
  end;

implementation

uses StdRegimenDM;

{$R *.dfm}

class procedure TProtocolEditHistoryFrm.LoadEditHistory(refID: string; vType: integer);
var
 vSql: string;
 frmProtocolHistory: TRX_ProtocolEditHistoryFrm;
begin

 //Load History Option: 0 for Protocol Histroy; 1 for Regimen Changes
 //SM 12 August 2014
 vSql := 'SELECT tblProtocolEditLog.*, TblStdProtocol.Name_str AS Protocol';
 vSql := vSql + ' FROM tblProtocolEditLog';
 vSql := vSql + ' LEFT OUTER JOIN TblStdProtocol ON tblProtocolEditLog.Protocol_ID=TblStdProtocol.Protocol_ID';

 if vType = 0 then
  vSql := vSql + ' WHERE tblProtocolEditLog.Protocol_ID=' + QuotedStr(refID)
 else
  vSql := vSql + ' WHERE tblProtocolEditLog.Regimen_ID=' + QuotedStr(refID);
  
 vSql := vSql + ' ORDER BY tblProtocolEditLog.Date_dat DESC';

 frmProtocolHistory := TRX_ProtocolEditHistoryFrm.Create(Application);

 with frmProtocolHistory do
  begin
  tblEditHistory.Close;
  tblEditHistory.SQL.Clear;
  tblEditHistory.SQL.Add(vSql);
  tblEditHistory.Open;
  end;

 with frmProtocolHistory do
  begin
  ShowModal;
  Free;
  end;

end;

procedure TRX_ProtocolEditHistoryFrm.pnlRXBackgroundResize(
  Sender: TObject);
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

  pnlForm_Detail.Width  := pnlForm_Header.Width;
  pnlForm_Detail.Left   := (wid div 2) - halfForm;
  pnlForm_Detail.Top    := pnlForm_Header.Top + pnlForm_Header.Height + 1;
  pnlForm_Detail.Height := (pnlRXBackground.Height - pnlForm_Header.Height) -1 ;

end;

end.

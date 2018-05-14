unit OnsiteListUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  StdCtrls, ActnList, Buttons;

type
  TOnSiteFrm = class(TForm)
    dxOnSiteList: TdxDBGrid;
    dxOnSiteListvstIsOnSite_bol: TdxDBGridCheckColumn;
    dxOnSiteListpersonLastName_str: TdxDBGridColumn;
    dxOnSiteListpersonFirstName_str: TdxDBGridColumn;
    dxOnSiteListpersonRefNoCurrent_str: TdxDBGridColumn;
    dxOnSiteListpersonPAS_str: TdxDBGridColumn;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    atnDeSellectAll: TAction;
    atnBringOffSite: TAction;
    atnCancel: TAction;
    Button3: TButton;
    BitBtn1: TBitBtn;
    procedure atnCancelExecute(Sender: TObject);
    procedure atnDeSellectAllExecute(Sender: TObject);
    procedure atnBringOffSiteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OnSiteFrm: TOnSiteFrm;

implementation

uses PatientUDm;

{$R *.dfm}

procedure TOnSiteFrm.atnCancelExecute(Sender: TObject);
begin
 PatientDm.CancelBringOffToAll;
end;

procedure TOnSiteFrm.atnDeSellectAllExecute(Sender: TObject);
begin
 PatientDm.DeSelectAll;
end;

procedure TOnSiteFrm.atnBringOffSiteExecute(Sender: TObject);
begin
 PatientDm.BringListOffSite;
 OnSiteFrm.Close;
end;

end.

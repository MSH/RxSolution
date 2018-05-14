unit ClinicalDrugInformationUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxExEdtr, RzButton, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ElPopBtn, StdCtrls, ExtCtrls, jpeg, RzTabs, RzDlgBtn, Grids,
  DBGrids, ActnList, ComObj, Menus;

type
  TfrmClinicalDrugInformation = class(TForm)
    qryGenericList: TADOQuery;
    conClinicalDrugInformation: TADOConnection;
    dsqryGenericList: TDataSource;
    qryGenericListSelection: TADOQuery;
    dsqryGenericListSelection: TDataSource;
    pnl_Main_Back: TPanel;
    pnl_Image_Header: TImage;
    pnlToolbar_Header_ShapeBorder: TShape;
    RzMenuButton1: TRzMenuButton;
    RzDialogButtons1: TRzDialogButtons;
    RzPageControl1: TRzPageControl;
    tbsInteractions: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    pnl_Main_RouteRxPanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    dxgDrugInteraction: TdxDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton14: TElSpeedButton;
    dxgGenericList: TdxDBGrid;
    dxgGenericListgenericName_Str: TdxDBGridColumn;
    dxgDrugInteractioninteraction_Description_str: TdxDBGridColumn;
    dxgDrugInteractioninteraction_Display_str: TdxDBGridColumn;
    stpDrugInteractions: TADOStoredProc;
    dsstpDrugInteractions: TDataSource;
    ActionList1: TActionList;
    atnInteractions_Refresh: TAction;
    TabSheet1: TRzTabSheet;
    atnInteractions_Edit: TAction;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    Panel1: TPanel;
    atnInteractions_Add: TAction;
    atnInteractions_Delete: TAction;
    pmuInteractions: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    dxgDrugInteractioninteraction_Evidence_str: TdxDBGridColumn;
    procedure qryGenericListAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure atnInteractions_RefreshExecute(Sender: TObject);
    procedure atnInteractions_EditExecute(Sender: TObject);
    procedure stpDrugInteractionsBeforePost(DataSet: TDataSet);
    procedure atnInteractions_AddExecute(Sender: TObject);
    procedure stpDrugInteractionsNewRecord(DataSet: TDataSet);
    procedure atnInteractions_DeleteExecute(Sender: TObject);
  private
    FDBConnection: string;
    UpdateChildren: Boolean;
    procedure Interaction_Edit;
    procedure Interaction_Add;
    procedure Interaction_Delete;
    procedure UpdateButtons;
    procedure UpdateChildData;
    { Private declarations }
  public
    procedure Open(const prmConnectionString : string); overload;
    { Public declarations }
  end;

  TClinicalDrugInformation = class(TObject)
  public
    class procedure Manage(const prmConnectionString : string);
  end;


implementation

uses AddEditDrugInteractionUFrm;

{$R *.dfm}

class procedure TClinicalDrugInformation.Manage(const prmConnectionString :
    string);
var
  frmClinicalDrugInformation: TfrmClinicalDrugInformation;

begin

  frmClinicalDrugInformation := TfrmClinicalDrugInformation.Create(nil);
  with frmClinicalDrugInformation do
    try
      try
      Open(prmConnectionString);
      ShowModal;
      except
      end;

    finally
      Free;
    end;


end;

procedure TfrmClinicalDrugInformation.Open(const prmConnectionString : string);
begin

  try

  FDBConnection := prmConnectionString;
  conClinicalDrugInformation.Close;
  conClinicalDrugInformation.ConnectionString := prmConnectionString;


  qryGenericList.Open;
  qryGenericListSelection.Open;

  UpdateChildren := True;
  UpdateChildData;


  except
  end;


end;

procedure TfrmClinicalDrugInformation.qryGenericListAfterScroll(
  DataSet: TDataSet);
begin
  UpdateChildData;
  UpdateButtons;
end;

procedure TfrmClinicalDrugInformation.UpdateChildData;
var
  prvGeneric : string;

begin

  if UpdateChildren then
    begin
    prvGeneric := qryGenericList.FieldByName('genericName_str').AsString;

    with stpDrugInteractions do
      begin
      Close;
      Parameters.ParamByName('@GenericName').Value := prvGeneric;
      Open;
      end;

    end;

end;

procedure TfrmClinicalDrugInformation.FormCreate(Sender: TObject);
begin
  UpdateChildren := False;
end;

procedure TfrmClinicalDrugInformation.atnInteractions_RefreshExecute(
  Sender: TObject);
begin
  UpdateChildData;
end;

procedure TfrmClinicalDrugInformation.atnInteractions_EditExecute(
  Sender: TObject);
begin
  Interaction_Edit;
end;

procedure TfrmClinicalDrugInformation.Interaction_Edit;
var
  prvGeneric3: string;
  prvGenericDesc: string;
  prvGeneric2: string;
  prvGeneric1: string;
  prvGenericInt : string;
  prvEvidence :string;
begin


  if stpDrugInteractions.RecordCount > 0 then
    begin
    prvGeneric1 := qryGenericList.FieldByName('genericName_str').AsString;
    prvGeneric2 := stpDrugInteractions.FieldByName('interaction_Generic_1_str').AsString;
    prvGeneric3 := stpDrugInteractions.FieldByName('interaction_Generic_2_str').AsString;
    prvEvidence := stpDrugInteractions.FieldByName('interaction_Evidence_str').AsString;

    if prvGeneric1 = prvGeneric2 then
      prvGenericInt := prvGeneric3
      else
      prvGenericInt := prvGeneric2;


    prvGenericDesc := stpDrugInteractions.FieldByName('interaction_Description_str').AsString;
    if TAddEditDrugInteraction.Manage(FDBConnection, prvGeneric1, prvGenericInt, prvGenericDesc, prvEvidence) then
      begin
      stpDrugInteractions.Edit;
      stpDrugInteractions.FieldByName('interaction_Generic_1_str').AsString := prvGeneric1;
      stpDrugInteractions.FieldByName('interaction_Generic_2_str').AsString := prvGenericInt;
      stpDrugInteractions.FieldByName('interaction_Description_str').AsString := prvGenericDesc;
      stpDrugInteractions.FieldByName('interaction_Evidence_str').AsString := prvEvidence;
      stpDrugInteractions.Post;
      end;
    end;
end;

procedure TfrmClinicalDrugInformation.stpDrugInteractionsBeforePost(
  DataSet: TDataSet);
var
  prvGen2: string;
  prvGen1: string;
begin
  with DataSet Do
    begin
    prvGen1 := FieldByName('interaction_Generic_1_str').AsString;
    prvGen2 := FieldByName('interaction_Generic_2_str').AsString;
    FieldByName('interaction_Display_str').AsString := prvGen1 + ' with ' + prvGen2;
    end;
end;

procedure TfrmClinicalDrugInformation.atnInteractions_AddExecute(
  Sender: TObject);
begin
  Interaction_Add;
end;

procedure TfrmClinicalDrugInformation.Interaction_Add;
var
  prvGeneric1: string;
  prvGenericInt : string;
  prvGenericDesc: string;
  prvEvidence :string;
begin


  if qryGenericList.RecordCount > 0 then
    begin
    prvGeneric1     := qryGenericList.FieldByName('genericName_str').AsString;
    prvGenericDesc  := '<No Description>';
    prvGenericInt   := '';
    prvEvidence     := '<None>';

    if TAddEditDrugInteraction.Manage(FDBConnection, prvGeneric1, prvGenericInt, prvGenericDesc, prvEvidence) then
      begin
      stpDrugInteractions.Append;
      stpDrugInteractions.FieldByName('interaction_Generic_1_str').AsString := prvGeneric1;
      stpDrugInteractions.FieldByName('interaction_Generic_2_str').AsString := prvGenericInt;
      stpDrugInteractions.FieldByName('interaction_Description_str').AsString := prvGenericDesc;
      stpDrugInteractions.FieldByName('interaction_Evidence_str').AsString := prvEvidence;
      stpDrugInteractions.Post;
      end;
    end;
end;

procedure TfrmClinicalDrugInformation.Interaction_Delete;
var
  prvGenericDesc: string;
  prvGenericDisp : string;
begin

  if stpDrugInteractions.RecordCount > 0 then
    begin
    prvGenericDisp := stpDrugInteractions.FieldByName('interaction_Display_str').AsString;
    prvGenericDesc := stpDrugInteractions.FieldByName('interaction_Description_str').AsString;
    if MessageDlg('Delete selected interaction' + #13 + prvGenericDisp + #13 + prvGenericDesc, mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
      stpDrugInteractions.Delete;
    end;

end;

procedure TfrmClinicalDrugInformation.stpDrugInteractionsNewRecord(
  DataSet: TDataSet);
begin

  with DataSet Do
    begin
    FieldByName('interaction_ID').AsString := CreateClassID;
    FieldByName('interaction_Generic_1_str').AsString := '';
    FieldByName('interaction_Generic_2_str').AsString := '';
    FieldByName('interaction_Description_str').AsString := '<No Description>';
    FieldByName('interaction_Evidence_str').AsString := '<None>';
    FieldByName('interaction_Display_str').AsString := '';
    end;

end;

procedure TfrmClinicalDrugInformation.atnInteractions_DeleteExecute(
  Sender: TObject);
begin
  Interaction_Delete;
end;

procedure TfrmClinicalDrugInformation.UpdateButtons;
begin

  if UpdateChildren then
    begin
    atnInteractions_Refresh.Enabled := qryGenericList.RecordCount > 0;
    atnInteractions_Edit.Enabled := stpDrugInteractions.RecordCount > 0;
    atnInteractions_Add.Enabled := qryGenericList.RecordCount > 0;
    atnInteractions_Delete.Enabled := stpDrugInteractions.RecordCount > 0;
    end;

end;

end.



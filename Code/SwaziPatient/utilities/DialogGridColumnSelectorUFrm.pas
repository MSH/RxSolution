unit DialogGridColumnSelectorUFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs, Controls, StdCtrls,
  Buttons, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,
  RzBckgnd, RzLabel;

type
  TDialog_GridColumnSelection = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    SrcList: TListBox;
    DstList: TListBox;
    SrcLabel: TLabel;
    DstLabel: TLabel;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    rzlDisplay: TRzLabel;
    RzSeparator1: TRzSeparator;
    shpFormFrame: TShape;
    img: TImage;
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure SetButtons;
  end;

  TColumnSelector = class(TObject)
  private
  public
    function SelectColumns(var dspGrid :TdxDBGrid): Boolean;
  end;

  TSelectDxGridColumns = class(TObject)
  public
    class function SelectColumns(var dspGrid :TdxDBGrid): Boolean;
  end;



implementation

{$R *.dfm}

procedure TDialog_GridColumnSelection.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TDialog_GridColumnSelection.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TDialog_GridColumnSelection.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
  SetButtons;
end;

procedure TDialog_GridColumnSelection.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
  SetButtons;
end;

procedure TDialog_GridColumnSelection.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TDialog_GridColumnSelection.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExAllBtn.Enabled := not DstEmpty;
end;

function TDialog_GridColumnSelection.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TDialog_GridColumnSelection.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then Index := 0
    else if Index > MaxIndex then Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtons;
end;

{ TColumnSelector }

function TColumnSelector.SelectColumns(var dspGrid :TdxDBGrid): Boolean;
var
  i :integer;
  FDualListDlg: TDialog_GridColumnSelection;

begin

  FDualListDlg      := TDialog_GridColumnSelection.Create(Application);
  try
    try
    with FDualListDlg do
      begin
      SrcList.Items.Clear;
      DstList.Items.Clear;

      for i:= 0 to dspGrid.ColumnCount -1 do
        with dspGrid.Columns[i] do
          if Visible then
            SrcList.Items.Add(Caption) else DstList.Items.Add(Caption);
//      MessageDlg('001', mtWarning, [mbOK],0);
      SetButtons;
//      MessageDlg('002', mtWarning, [mbOK],0);
      if ShowModal = mrYes then
        for i:= 0 to dspGrid.ColumnCount -1 do
          with dspGrid.Columns[i] do
            if SrcList.Items.IndexOf(Caption) <> -1
              then Visible := True else Visible := False;
//      MessageDlg('003', mtWarning, [mbOK],0);
      end
    except
    end;
  finally
//    MessageDlg('004', mtWarning, [mbOK],0);
    FDualListDlg.Free;
//    MessageDlg('005', mtWarning, [mbOK],0);
  end;


end;

{ TColumnSelector }

class function TSelectDxGridColumns.SelectColumns(var dspGrid :TdxDBGrid):
    Boolean;
var
  i :integer;
  FDualListDlg: TDialog_GridColumnSelection;

begin

  FDualListDlg      := TDialog_GridColumnSelection.Create(Application);
  try
    try
    with FDualListDlg do
      begin
      SrcList.Items.Clear;
      DstList.Items.Clear;

      for i:= 0 to dspGrid.ColumnCount -1 do
        with dspGrid.Columns[i] do
          if Visible then
            SrcList.Items.Add(Caption) else DstList.Items.Add(Caption);
//      MessageDlg('001', mtWarning, [mbOK],0);
      SetButtons;
//      MessageDlg('002', mtWarning, [mbOK],0);
      if ShowModal = mrYes then
        for i:= 0 to dspGrid.ColumnCount -1 do
          with dspGrid.Columns[i] do
            if SrcList.Items.IndexOf(Caption) <> -1
              then Visible := True else Visible := False;
//      MessageDlg('003', mtWarning, [mbOK],0);
      end
    except
    end;
  finally
//    MessageDlg('004', mtWarning, [mbOK],0);
    FDualListDlg.Free;
//    MessageDlg('005', mtWarning, [mbOK],0);
  end;


end;

end.

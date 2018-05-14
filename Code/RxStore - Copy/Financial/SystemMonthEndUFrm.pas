unit SystemMonthEndUFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, variants, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel,
  LMDSimpleLabel, ExtCtrls;

type
  TSystemMonthEndFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlProductDetailColorBackground: TPanel;
    Label12: TLabel;
    Label5: TLabel;
    dbeMonth: TComboBox;
    dbeYear: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeMonthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vBeginDate,vEndDate :TDateTime;
    vYear,vMonth:String;
  public
    { Public declarations }
  end;

var
  SystemMonthEndFrm: TSystemMonthEndFrm;

implementation

uses MainUDM;

{$R *.DFM}

procedure TSystemMonthEndFrm.BitBtn1Click(Sender: TObject);
var
  vUpdate :boolean;
begin

  vUpdate := True;

  with MainDM.qryADOProductMonthEnd do
    begin
    Open;
    //Check if the Month has already been generated
    vMonth :=  COPY(dbeMonth.Text,0,2);
    vYear  :=  dbeYear.Text;

    if Locate('Month_str;Year_str',VarArrayOf([vMonth,vYear]),[]) then
      if MessageDlg('You already have Closed this Month, do you want to Update the Information?', mtWarning, [mbYes, mbNo], 0) = mrNo then
        vUpdate := False;

    if vUpDate then
      begin
      with MainDm.cmdDeleteProductMonthEnd do
        begin
        Close;
        Parameters.ParamByName('Month_str').Value :=  vMonth;
        Parameters.ParamByName('Year_str').Value  :=  vYear;
        Execute;
        end;
      with MainDm.cmdUpdateProductMonthEnd do
        begin
        Close;
        Parameters.ParamByName('Month_str').Value :=  vMonth;
        Parameters.ParamByName('Year_str').Value  :=  vYear;

//        MessageDlg( 'Begin: ' + DateToStr(vBeginDate) ,mtWarning,[mbOK],0);

        Parameters.ParamByName('BeginDate').Value :=  vBeginDate;
        Parameters.ParamByName('EndDate').Value   :=  vEndDate;
        Execute;
        end;
      end;

    Close;
    end;
end;


procedure TSystemMonthEndFrm.dbeMonthChange(Sender: TObject);
var
  StYear, StMnth, EndYear, EndMnth  :Word;

begin

  StMnth  := StrToInt(COPY(dbeMonth.Text,0,2));
  StYear  := StrToInt(dbeYear.Text);

  if StMnth = 12 then
    begin
    EndMnth := 1;
    EndYear := StYear + 1;
    end else
    begin
    EndMnth := StMnth + 1;
    EndYear := StYear;
    end;

  TryEncodeDate( StYear,  StMnth,   1, vBeginDate);
  TryEncodeDate( EndYear, EndMnth,  1, vEndDate);

end;

procedure TSystemMonthEndFrm.FormCreate(Sender: TObject);
var
  Present: TDateTime;
  Year, Month, Day: Word;
begin

  Present:= Now;
  DecodeDate(Present, Year, Month, Day);
  dbeMonth.ItemIndex  := Month -1;
  dbeYear.ItemIndex   := dbeYear.Items.IndexOf(IntToStr(Year));

end;

end.

unit DialogProgressIndicatorUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, RzBckgnd, RzLabel;

type
  TProgressIndicatorFrm = class(TForm)
    pgbCurrentProgress: TProgressBar;
    img: TImage;
    Label1: TRzLabel;
    RzSeparator1: TRzSeparator;
    shpFormFrame: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FMaxProgress      : integer;
    FCurrentPosition  : integer;
    FCurrentPercent   : integer;
    FMainCaption      : String;
    FUpdateCaption    : String;
    FShowAllways      : boolean;
    FMinShowValue     : integer;

    procedure ResetAllValues;
    procedure SetMaxProgress(const Value: integer);
    procedure SetPosition(const Value: integer);
    procedure SetmainCaption(const Value: string);
    procedure SetUpdateCaption(const Value: string);
    procedure SetMinShowValue(const Value: integer);
    procedure SetShowAllways(const Value: boolean);
    procedure DisplayForm;
  protected


  public
    { Public declarations }

    procedure   ResetAll;

    property    MaxProgress     : integer read FMaxProgress write SetMaxProgress;
    property    CurrentProgress : integer read FCurrentPosition write SetPosition;
    property    Percent         : integer read FCurrentPercent;
    property    UpdateCaption   : string  read FUpdateCaption write SetUpdateCaption;
    property    MainCaption     : string  read FMainCaption write SetmainCaption;
    property    ShowAllways     : boolean read FShowAllways write SetShowAllways;
    property    MinShowValue    : integer read FMinShowValue write SetMinShowValue;


  end;




var
  ProgressIndicatorFrm: TProgressIndicatorFrm;

implementation

{$R *.dfm}

procedure TProgressIndicatorFrm.ResetAllValues;
begin

  FShowAllWays      := False;
  FMinShowValue     := 10;
  FMaxProgress      := 0;
  FCurrentPosition  := 0;
  FCurrentPercent   := 0;
  pgbCurrentProgress.Position := FCurrentPercent;
  SetmainCaption('Progress Indicator');
  SetUpdateCaption('Current Progress');
  DisplayForm;
end;

procedure TProgressIndicatorFrm.SetPosition(const Value: integer);
begin

  FCurrentPosition := Value;
  if FMaxProgress <> 0 then
    FCurrentPercent  := Round((FCurrentPosition / FMaxProgress) * 100)
    else
    FCurrentPercent  := 0;
  pgbCurrentProgress.Position := FCurrentPercent;
  UpDate;
end;

procedure TProgressIndicatorFrm.FormCreate(Sender: TObject);
begin
  ResetAllValues;
end;

procedure TProgressIndicatorFrm.SetMaxProgress(const Value: integer);
begin
  FMaxProgress := Value;
  DisplayForm;
end;

procedure TProgressIndicatorFrm.ResetAll;
begin

  ResetAllValues;
end;

procedure TProgressIndicatorFrm.SetmainCaption(const Value: string);
begin
  FMainCaption := Value;
  Caption := FMainCaption;
  if Visible then UpDate;
end;

procedure TProgressIndicatorFrm.SetUpdateCaption(const Value: string);
begin
  FUpdateCaption := Value;
  Label1.Caption := FUpdateCaption;
  if Visible then UpDate;
end;

procedure TProgressIndicatorFrm.SetMinShowValue(const Value: integer);
begin

  FMinShowValue := Value;
  DisplayForm;
end;

procedure TProgressIndicatorFrm.SetShowAllways(const Value: boolean);
begin

  FShowAllways := Value;
  DisplayForm;
end;


procedure TProgressIndicatorFrm.DisplayForm;
begin

  if FMaxProgress > 0 then
    begin
    if FShowAllWays then Show else
      if FMaxProgress >= FMinShowValue then Show else Hide;
    end else
    Hide;

end;

end.

unit TResponseU;

interface

uses
  Classes;

type
  TResponse = class(TObject)
  private
    FErrors: TStringList;
    FSuccess: Boolean;
    FWarnings: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Reset;
    property Errors: TStringList read FErrors write FErrors;
    property Success: Boolean read FSuccess write FSuccess;
    property Warnings: TStringList read FWarnings write FWarnings;
  end;

implementation

constructor TResponse.Create;
begin
  inherited Create;
  FErrors   := TStringList.Create;
  FWarnings := TStringList.Create;
  FSuccess  := false;
end;

destructor TResponse.Destroy;
begin
  if(Assigned(FErrors)) then FErrors.Free;
  if(Assigned(FWarnings)) then FWarnings.Free;
  inherited;
end;

procedure TResponse.Reset;
begin
  FSuccess    := false;
  FErrors.Clear;
  FWarnings.Clear
end;

end.

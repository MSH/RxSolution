unit RxSolutionSplashUFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel;

type
  TSplashFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    lblMainFormTitle: TLMDSimpleLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashFrm: TSplashFrm;

implementation

{$R *.DFM}

end.

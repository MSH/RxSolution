unit RxSolutionAboutUFrm;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ElVerInfo, jpeg;

type
  TAboutManager = class;

  TAboutFrm = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    ElVersionInfo1: TElVersionInfo;
    lblBuild: TLabel;
    lblVersionFile: TLabel;
    lblVersionProduct: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TAboutManager = class(TObject)
  public
    class procedure ShowAboutDialog;
  end;


implementation

{$R *.DFM}

procedure TAboutFrm.FormCreate(Sender: TObject);
begin
ElVersionInfo1.FileName := Application.ExeName;

//lblLegalCopyright.Caption := ElVersionInfo1.LegalCopyright;
lblBuild.Caption  :=  IntToStr(ElVersionInfo1.MajorVersion) + '.' +
                      IntToStr(ElVersionInfo1.MinorVersion) + '.' +
                      IntToStr(ElVersionInfo1.Release) + '.' +
                      IntToStr(ElVersionInfo1.Build);
lblVersionFile.Caption := ElVersionInfo1.FileVersion;
lblVersionProduct.Caption := ElVersionInfo1.ProductVersion;

end;

class procedure TAboutManager.ShowAboutDialog;
var
  abt: TAboutFrm;
begin

  try

    abt := TAboutFrm.Create(Nil);
    try
    abt.ShowModal;

    finally
    abt.Free;
    end;
  except
  end;


  // TODO -cMM: TAboutManager.ShowAboutDialog default body inserted
end;

end.


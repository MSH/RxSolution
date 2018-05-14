unit DemanderAuthorityUFrm;
{------------------------------------------------------------------------------}
{NOTE : THIS IS A SHARED UNIT.  IT IS USED TO BUILD BOTH RXSOLUTION & RXSTORE  }
{------------------------------------------------------------------------------}
{   It is optimised for compiling in RxSolution so any specific RxStore        }
{   directives need To be enclose in a compiler directive called -             }
{                                                                              }
{   ($IFDEF RXSTOREBUILD )                                                     }
{     RxStore specific code here.                                              }
{     This can be something like a form or a unit.                             }
{   ($ELSE)                                                                    }
{     RxStolution specific code here.                                          }
{                                                                              }
{   ($ENDIF)                                                                   }
{                                                                              }
{   This example used normal bracket, but for compiler directive use curly     }
{   brackets.                                                                  }
{                                                                              }
{ ---------------------------------------------------------------------------- }
{ EDIT/CHANGE NOTE                                                             }
{ Date Recorded : 2006-03-09                                                   }
{ Recorded By   : Deane Putzier                                                }
{ Reason        : Merging of the code files for compilation in both apps       }
{------------------------------------------------------------------------------}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ImgList, Grids, DBGrids,  LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls, DemanderAuthorityUDM, ADODB;

type
  TDemanderAuthorityFrm = class(TForm)
    Panel1: TPanel;
    Shape3: TShape;
    Label8: TLabel;
    lblMainFormTitle: TLMDSimpleLabel;
    Shape1: TShape;
    dbgrdBin: TDBGrid;
    ImageList1: TImageList;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    DemanderAuthorityDM: TDemanderAuthorityDM;
  public
    { Public declarations }
  end;

  TDemanderGetAuthority = class(TObject)

    public
      function GetDemanderAuthority(CurAuthority:String):String;
      procedure OpenToEdit;
    end;

implementation

{$R *.dfm}

procedure TDemanderAuthorityFrm.FormCreate(Sender: TObject);
begin
  DemanderAuthorityDM:= TDemanderAuthorityDM.Create(Application);
end;

procedure TDemanderAuthorityFrm.FormDestroy(Sender: TObject);
begin
  DemanderAuthorityDM.Free;
end;

procedure TDemanderAuthorityFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


{ TDemanderGetAuthority }

function TDemanderGetAuthority.GetDemanderAuthority(
  CurAuthority: String): String;
var
  DemanderAuthorityFrm: TDemanderAuthorityFrm;

  procedure SetCurrentPos(CurrPos:String;Demanders: TADOTable);
  var
  TypeFound :Boolean;
  begin
  TypeFound := False;
  if CurrPos <> '' then
    with Demanders do
      begin
      First;
      while not EOF do
        begin
        if CurrPos = FieldByName('Description_str').AsString then
          begin
          TypeFound := True;
          Break;
          end;
        Next;
        end;
      if not TypeFound then First;
      end;
  end;

  function SaveNewType(Demanders: TADOTable):String;
  begin
  Result := '';
  with Demanders do Result := FieldByName('Description_str').AsString;
  end;

begin

  Result := CurAuthority;
  DemanderAuthorityFrm   := TDemanderAuthorityFrm.Create(Application);

  with DemanderAuthorityFrm do
    try
    with DemanderAuthorityDM.strdprc_DemandersAuthority do
      if Active then                                                              // Make sure its open
        if RecordCount > 0 then                                                   // Are there any records?
          begin
          SetCurrentPos(CurAuthority, DemanderAuthorityDM.strdprc_DemandersAuthority);
          BitBtn1.Caption := '&Use Selected';
          if ShowModal = mrYes then
            Result := SaveNewType(DemanderAuthorityDM.strdprc_DemandersAuthority);
          end;
    finally
      Free;
    end;
end;




procedure TDemanderGetAuthority.OpenToEdit;
var
  DemanderAuthorityFrm: TDemanderAuthorityFrm;
begin
  DemanderAuthorityFrm   := TDemanderAuthorityFrm.Create(Application);

  with DemanderAuthorityFrm do
    try
    with DemanderAuthorityDM.strdprc_DemandersAuthority do
      if Active then                                                              // Make sure its open
        begin
        BitBtn2.Visible := False;
        BitBtn1.Caption := '&Finished';
        ShowModal;
        end;
    finally
      Free;
    end;

end;


end.

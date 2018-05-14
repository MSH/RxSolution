unit DemanderTypeUFrm;
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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, DBCtrls, Buttons, ExtCtrls, ImgList,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, DemanderTypeUDM,ADODB, RzBmpBtn;

type

  TDemanderTypeFrm = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Shape3: TShape;
    Label8: TLabel;
    Shape1: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    dbgrdBin: TDBGrid;
    ImageList1: TImageList;
    BitBtn3: TBitBtn;
    RzBmpButton1: TRzBmpButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  DemanderTypeDM: TDemanderTypeDM;

  public
    { Public declarations }
  end;


  TDemanderGetType = class(TObject)

    public
      function GetDemanderType(CurType:String; PosH, PosL :integer):String;
      procedure OpenToEdit;
    end;


implementation

{$R *.DFM}


procedure TDemanderTypeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TDemanderTypeFrm.FormCreate(Sender: TObject);
begin
  DemanderTypeDM:= TDemanderTypeDM.Create(Application);
end;

procedure TDemanderTypeFrm.FormDestroy(Sender: TObject);
begin
  if Assigned(DemanderTypeDM) then DemanderTypeDM.Free;
end;





{ TDemanderGetType }

function TDemanderGetType.GetDemanderType(CurType: String; PosH, PosL :integer): String;
var
  DemanderTypeFrm: TDemanderTypeFrm;


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

  Result := CurType;
  DemanderTypeFrm   := TDemanderTypeFrm.Create(Application);

  with DemanderTypeFrm do
    try
    with DemanderTypeDM.strdprc_DemanderTypes do
      if Active then                                                              // Make sure its open
        if RecordCount > 0 then                                                   // Are there any records?
          begin
          DemanderTypeFrm.Top   := PosH;
          DemanderTypeFrm.Left  := PosL - Width;
          SetCurrentPos(CurType, DemanderTypeDM.strdprc_DemanderTypes);
          BitBtn1.Caption := '&Select';
          if ShowModal = mrYes then
            Result := SaveNewType(DemanderTypeDM.strdprc_DemanderTypes);
          end;
    finally
      Free;
    end;
end;


procedure TDemanderGetType.OpenToEdit;
var
  DemanderTypeFrm: TDemanderTypeFrm;
begin
  DemanderTypeFrm   := TDemanderTypeFrm.Create(Application);
  with DemanderTypeFrm do
    try
    with DemanderTypeDM.strdprc_DemanderTypes do
      if Active then
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

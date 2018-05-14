unit DemanderListForSelectionUFrm;
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
  Dialogs, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel,
  LMDSimpleLabel, ExtCtrls;

type
  TDemanderListForSelectionFrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBLookupListBox1: TDBLookupListBox;
    shpMainBorder: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses DemanderUDM;

{$R *.dfm}

procedure TDemanderListForSelectionFrm.FormCreate(Sender: TObject);
begin
  if DBLookupListBox1.ListSource.DataSet.RecordCount > 0 then
    Button1.Enabled := True
    else
    Button1.Enabled := False;

end;

end.

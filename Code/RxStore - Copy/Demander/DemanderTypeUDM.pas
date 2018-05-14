unit DemanderTypeUDM;
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
  SysUtils, Classes, DB, ADODB;

type
  TDemanderTypeDM = class(TDataModule)
    dsDemandersType: TDataSource;
    ADODemanderTypeConnection: TADOConnection;
    strdprc_DemanderTypes: TADOTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses MainUDM;

{$R *.dfm}



procedure TDemanderTypeDM.DataModuleCreate(Sender: TObject); (*:::::::::START:*)(*===========================================*)
                                                                                (*procedure:DataModuleCreate-----------------*)
                                                                                (*===========================================*)
                                                                   (*25.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if Assigned(MainDM) then
    begin
    with MainDM do
      ADODemanderTypeConnection.ConnectionString :=
      ADOMainDBConnection.ConnectionString;

    try
    strdprc_DemanderTypes.Active := True;
    except

    end;

    end;

end; (*................................................................*)(*end*)(*...........................................*)


end.

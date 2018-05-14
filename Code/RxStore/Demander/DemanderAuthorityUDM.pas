unit DemanderAuthorityUDM;
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
  TDemanderAuthorityDM = class(TDataModule)
    dsDemandersAuthority: TDataSource;
    ADODemanderAuthority: TADOConnection;
    strdprc_DemandersAuthority: TADOTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    function ConnectDataSource: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses MainUDM;

{$R *.dfm}

procedure TDemanderAuthorityDM.DataModuleCreate(Sender: TObject);
begin
  ConnectDataSource;
end;

function TDemanderAuthorityDM.ConnectDataSource: Boolean; (*::::::::::::START:*)(*===========================================*)
                                                                                (*function:ConnectDataSource-----------------*)
                                                                                (*===========================================*)
                                                                   (*30.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  aAllDataSetsOpened    := True;                                                // If datasets could not be opened, set this to false
  Connections[0]        := ADODemanderAuthority;


  if Assigned(MainDM) then
    with MainDM do
      FDataBasePath     := ADOMainDBConnection.ConnectionString;

  for i:= low(Connections) to high(Connections) do
    with Connections[i] do
      try
      Connected         := False;                                               // Make sure it's not connected
      ConnectionString  := FDatabasePath;


      for j := 0 to DataSetCount - 1 do
        if Datasets[j].Tag < 1 then
          if not DataSets[j].Active then
            DataSets[j].Active := True;                                         // Activate the datastores.
                                                                                // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;

  Result := aAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)


end.


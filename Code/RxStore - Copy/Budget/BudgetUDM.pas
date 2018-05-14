unit BudgetUDM;
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
  Db, DBTables, ADODB, ComObj;

type
  TBudgetDM = class(TDataModule)
    ADOConnectionBudget: TADOConnection;
    tblBudgetProducts: TADOTable;
    tblBudgetTotalEDL: TADOTable;
    stpBudgetUPDATEItemBudget: TADOStoredProc;
    stpBudgetTenderInflation: TADOStoredProc;
    stpBudgetUPDATEItemBudgetFromReviewed: TADOStoredProc;
    stpBudgetUPDATEResetItemBudget: TADOStoredProc;
    tblBudgetVEN: TADOTable;
    tblBudgetLevelOfUse: TADOTable;
    tblBudgetAccounts: TADOTable;
    tblBudgetProductsProductCode_str: TWideStringField;
    tblBudgetProductsReviewedItemBudget_mon: TBCDField;
    tblBudgetProductsItemBugdet_mon: TBCDField;
    tblBudgetProductsGenericName_str: TWideStringField;
    tblBudgetProductsStrength_str: TWideStringField;
    tblBudgetProductsForm_str: TWideStringField;
    tblBudgetProductsATC_str: TWideStringField;
    tblBudgetProductsInstLevelOfUse_str: TWideStringField;
    tblBudgetProductsVEN_str: TWideStringField;
    tblBudgetProductsProvincialEDL_bol: TBooleanField;
    tblBudgetProductsPackSize_str: TWideStringField;
    tblBudgetProductsPackSizeUnit_str: TWideStringField;
    tblBudgetProductsPackSizeCode_str: TWideStringField;
    tblBudgetProductsDescription_str: TStringField;
    tblBudgetProductsGroup1_str: TWideStringField;
    tblBudgetProductsGroup2_str: TWideStringField;
    tblBudgetAccountsSystemStore_ID: TAutoIncField;
    tblBudgetAccountsDemanderCode_str: TWideStringField;
    tblBudgetAccountsFinancialYear_str: TWideStringField;
    tblBudgetAccountsFYStart_dat: TDateTimeField;
    tblBudgetAccountsFYEnd_dat: TDateTimeField;
    tblBudgetAccountsDemanderName_str: TWideStringField;
    tblBudgetAccountsType_str: TWideStringField;
    tblBudgetAccountsMainDepot_str: TWideStringField;
    tblBudgetAccountsProcurementPeriodA_int: TIntegerField;
    tblBudgetAccountsProcurementPeriodB_int: TIntegerField;
    tblBudgetAccountsProcurementPeriodC_int: TIntegerField;
    tblBudgetAccountsProcurementPeriodD_int: TIntegerField;
    tblBudgetAccountsLeadTimeA_int: TIntegerField;
    tblBudgetAccountsLeadTimeB_int: TIntegerField;
    tblBudgetAccountsLeadTimeC_int: TIntegerField;
    tblBudgetAccountsLeadTimeD_int: TIntegerField;
    tblBudgetAccountsA_int: TIntegerField;
    tblBudgetAccountsB_int: TIntegerField;
    tblBudgetAccountsVAT_int: TIntegerField;
    tblBudgetAccountsInflationRate_int: TIntegerField;
    tblBudgetProductsECN_str: TWideStringField;
    tblBudgetProductsICN_str: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    function ConnectDataSource: Boolean;
    { Private declarations }
  public

    { Public declarations }
    procedure RefreshDataSources;
    procedure RefreshData;
  end;

var
  BudgetDM: TBudgetDM;

implementation

uses MainUDM;

{$R *.DFM}

function TBudgetDM.ConnectDataSource: Boolean; (*::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:UpdateDataSource------------------*)
                                                                                (*===========================================*)
                                                                    (*5.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  aAllDataSetsOpened    := False;
  Connections[0]        := ADOConnectionBudget;

  if Assigned(MainDM) then
    with MainDM do
      FDataBasePath     := ADOMainDBConnection.ConnectionString;

  if FDataBasePath <> '' then
    for i:= low(Connections) to high(Connections) do
      with Connections[i] do
      try
      aAllDataSetsOpened:= True;                                                // If datasets could not be opened, set this to false
      Connected         := False;                                               // Make sure it's not connected
      ConnectionString  := FDatabasePath;
      for j := 0 to DataSetCount - 1 do
        if Datasets[j].Tag < 1 then
          if not DataSets[j].Active then
            DataSets[j].Active := True;                                           // Activate the datastores.
                                                                               // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;
  Result := aAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TBudgetDM.DataModuleCreate(Sender: TObject);
begin
  ConnectDataSource;
end;

procedure TBudgetDM.RefreshDataSources;
begin
  with stpBudgetUPDATEItemBudgetFromReviewed do
    Begin
    Close;
    ExecProc;
    End;
  With tblBudgetProducts do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls;
    end;
  With tblBudgetTotalEDL do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
  With BudgetDM.tblBudgetLevelOfUse do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
  With BudgetDM.tblBudgetVEN do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
end;

procedure TBudgetDM.RefreshData;
begin
  With tblBudgetProducts do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls;
    end;
  With tblBudgetTotalEDL do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
  With BudgetDM.tblBudgetLevelOfUse do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
  With BudgetDM.tblBudgetVEN do
    begin
      DisableControls;
      Close;
      Open;
      EnableControls
    end;
end;

end.

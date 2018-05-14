unit DemanderUDM;
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
  DBTables, Db, ADODB, ComCtrls, Variants, myChkBox, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppStrtch, ppMemo, Menus, ppParameter, Math, ActnList;

const
  NOCHANGE  = 0;
  ADDED     = 1;
  DELETED   = 2;

  HST_ADD     = 'ADDED';
  HST_ADDALL  = 'ALL EDL ADDED';
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_MAX     = 'MAX CHANGED';

type



  TDemanderDM = class(TDataModule)

    dsDemanders: TDataSource;
    adoSP_DemandersUsers: TADOStoredProc;
    dsDemandersUsers: TDataSource;
    adoSP_DemandersAuthorisedItems: TADOStoredProc;
    dsDemanderAuthorisedItems: TDataSource;
    adoSP_DemandersIssues: TADOStoredProc;
    dsDemandersIssues: TDataSource;
    adoSP_DemandersExpenditures: TADOStoredProc;
    dsDemandersExpenditures: TDataSource;
    ADODemanderConnection: TADOConnection;
    adoSP_Demanders: TADOTable;
    stpDeleteAuthorisedItem: TADOCommand;
    ado_MagisterialDistrict: TADOTable;
    ado_HealthDistrict: TADOTable;
    ado_Region: TADOTable;
    dsado_MagisterialDistrict: TDataSource;
    dsado_HealthDistrict: TDataSource;
    dsado_Region: TDataSource;
    ppDBDemandersList: TppDBPipeline;
    ppDemanderList: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBDemandersDetail: TppDBPipeline;
    ppDemandersDetail: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppDBText20: TppDBText;
    ppLabel21: TppLabel;
    ppDBText21: TppDBText;
    ppLabel22: TppLabel;
    ppDBText22: TppDBText;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppLabel28: TppLabel;
    ppDBText28: TppDBText;
    ppLabel29: TppLabel;
    ppDBText29: TppDBText;
    ppLabel30: TppLabel;
    ppDBText30: TppDBText;
    ppLabel31: TppLabel;
    ppDBText31: TppDBText;
    ppLabel32: TppLabel;
    ppDBText32: TppDBText;
    ppLabel33: TppLabel;
    ppDBText33: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText35: TppDBText;
    ppLabel36: TppLabel;
    ppDBText36: TppDBText;
    ppLabel37: TppLabel;
    ppDBText37: TppDBText;
    ppLabel38: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel39: TppLabel;
    ppDBText38: TppDBText;
    ppLabel40: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLabel43: TppLabel;
    ppDBText42: TppDBText;
    ppLabel44: TppLabel;
    ppDBText43: TppDBText;
    ppLabel45: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel48: TppLabel;
    ppDBText47: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText49: TppDBText;
    ppLabel51: TppLabel;
    ppDBText50: TppDBText;
    ppLabel52: TppLabel;
    ppDBText51: TppDBText;
    ppLabel53: TppLabel;
    ppDBText52: TppDBText;
    ppLabel54: TppLabel;
    ppDBText53: TppDBText;
    ppLabel55: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    AppendEDL: TADOCommand;
    DeleteItems: TADOCommand;
    ado_DemanderListForSelection: TADOTable;
    dsado_DemanderListForSelection: TDataSource;
    AddFromDemanders: TADOCommand;
    ado_Province: TADOTable;
    dsado_Province: TDataSource;
    ppDemandersAuthorisedItems: TppReport;
    ppDBDemandersAuthorisedItems: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel5: TppLabel;
    ppDBText34: TppDBText;
    ppLabel11: TppLabel;
    ppDBText48: TppDBText;
    ppLabel12: TppLabel;
    ppDBText54: TppDBText;
    ppLabel15: TppLabel;
    ppDBText55: TppDBText;
    ppLabel16: TppLabel;
    ppDBText56: TppDBText;
    ppLabel41: TppLabel;
    ppDBText57: TppDBText;
    ppLabel42: TppLabel;
    ppDBText58: TppDBText;
    ppLabel56: TppLabel;
    ppDBText61: TppDBText;
    ppLine1: TppLine;
    stpAddAuthorisedItems: TADOStoredProc;
    ppLabel57: TppLabel;
    ppDBText62: TppDBText;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    dsDemandersTransferTo: TDataSource;
    ADOQuery1: TADOQuery;
    adoStockList: TADOQuery;
    dsadoStockList: TDataSource;
    adoDemanderList: TADOQuery;
    dsadoDemanderList: TDataSource;
    stpStockTransferDemanders: TADOStoredProc;
    ppDemanderIssues: TppReport;
    ppDBDemandersIssues: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText68: TppDBText;
    ppLine9: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLine10: TppLine;
    ppLabel64: TppLabel;
    ppLine11: TppLine;
    ppDateParameter: TppLabel;
    adoSP_DemandersDemander_ID: TAutoIncField;
    adoSP_DemandersCode_str: TWideStringField;
    adoSP_DemandersName_str: TWideStringField;
    adoSP_DemandersAddress1_str: TWideStringField;
    adoSP_DemandersAddress2_str: TWideStringField;
    adoSP_DemandersAddress3_str: TWideStringField;
    adoSP_DemandersCity_str: TWideStringField;
    adoSP_DemandersPostalCode_str: TWideStringField;
    adoSP_DemandersHealthDistrict_str: TWideStringField;
    adoSP_DemandersMagisterialDistrict: TWideStringField;
    adoSP_DemandersRegion_str: TWideStringField;
    adoSP_DemandersType_str: TWideStringField;
    adoSP_DemandersBeds_int: TIntegerField;
    adoSP_DemandersAuthority_str: TWideStringField;
    adoSP_DemandersContact1_str: TWideStringField;
    adoSP_DemandersContact2_str: TWideStringField;
    adoSP_DemandersPhone_str: TWideStringField;
    adoSP_DemandersFax_str: TWideStringField;
    adoSP_DemandersPopulation_int: TIntegerField;
    adoSP_DemandersInPatients_int: TIntegerField;
    adoSP_DemandersOutPatients_int: TIntegerField;
    adoSP_DemandersLevy_str: TWideStringField;
    adoSP_DemandersDeliveryRoute_str: TWideStringField;
    adoSP_DemandersAccount_str: TWideStringField;
    adoSP_DemandersActive_bol: TBooleanField;
    adoSP_DemandersBudget_mon: TBCDField;
    adoSP_DemandersBudgetBalance_mon: TBCDField;
    adoSP_DemandersItemsLevel_str: TWideStringField;
    adoSP_DemandersRemarks_mem: TMemoField;
    adoSP_DemandersPostalAddress1_str: TWideStringField;
    adoSP_DemandersPostalAddress2_str: TWideStringField;
    adoSP_DemandersPostalAddress3_str: TWideStringField;
    adoSP_DemandersPostalLocation_str: TWideStringField;
    adoSP_DemandersPostalPostalCode_str: TWideStringField;
    adoSP_DemandersShipAddress1_str: TWideStringField;
    adoSP_DemandersShipAddress2_str: TWideStringField;
    adoSP_DemandersShipAddress3_str: TWideStringField;
    adoSP_DemandersShipLocation_str: TWideStringField;
    adoSP_DemandersShipPostalCode_str: TWideStringField;
    adoSP_DemandersOpenOrMaxDriven: TBooleanField;
    adoSP_DemandersLastUpdateBy_str: TWideStringField;
    adoSP_DemandersLastUpdateBy_dbl: TIntegerField;
    adoSP_DemandersProcurementPeriod_int: TIntegerField;
    adoSP_DemandersLeadTime_int: TIntegerField;
    adoSP_DemandersProvince_str: TWideStringField;
    adoSP_DemanderseMail_str: TWideStringField;
    adoSP_DemandersCanDispense_bol: TBooleanField;
    adoSP_DemandersDemanderUnique_ID: TGuidField;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    PopupMenu1: TPopupMenu;
    tblItemsHistory: TADOQuery;
    dsItemsHistory: TDataSource;
    ActionList1: TActionList;
    procedure adoSP_DemandersAfterScroll(DataSet: TDataSet);
    procedure adoSP_DemandersUsersNewRecord(DataSet: TDataSet);
    procedure adoSP_DemandersUsersBeforePost(DataSet: TDataSet);
    procedure adoSP_DemandersAuthorisedItemsNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adoSP_DemandersAfterPost(DataSet: TDataSet);
    procedure adoSP_DemandersNewRecord(DataSet: TDataSet);
    procedure adoSP_DemandersAfterOpen(DataSet: TDataSet);
    procedure adoSP_DemandersRemarksNewRecord(DataSet: TDataSet);
    procedure adoSP_DemandersAfterCancel(DataSet: TDataSet);
    procedure adoSP_DemandersAfterDelete(DataSet: TDataSet);
    procedure adoSP_DemandersBeforeCancel(DataSet: TDataSet);
    procedure adoSP_DemandersBeforePost(DataSet: TDataSet);
    procedure ppDemanderListPreviewFormCreate(Sender: TObject);
    procedure adoSP_DemandersAuthorisedItemsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    AddingRecords       : Boolean;
    CurrentDemanderID   : Double;
    BusyProcessing      : Boolean;
    CurrSortField       : String;
    FAddingItem         : boolean;
    IsLoading           : boolean;
    dateStart,
    dateEnd             :TDateTime;


    procedure SetupDataLinks;
    function ConnectDataSource: Boolean;
    function GetCurrProductID: double;
    function AddAuthorisedProduct(pDemID, pProdID: Double): boolean;

  public
    { Public declarations }
    function GetDemanderType(CurStr:String; PosTp, PosLf :integer):Boolean;                            // Open type form, allows add delete etc. also selects
    function GetDemanderAuthority:Boolean;
    procedure SetDemanderSortOrder(SortField: string);
    procedure FindDemander(SearchField, SearchValue: string);
    procedure DemandersAfterScroll;
    function GetCurrentDemander:Double;
    procedure SetAccessRights(AccessType:integer);
    function AddAuthorisedProducts: boolean;
    procedure FilterDemanders(const vFilter: integer);
    procedure SortDemandersTableASC(const vField: String);
    procedure DeleteAuthorisedItem;
    procedure DeleteDemander;
    procedure PrintDemanderDetail;
    procedure PrintDemanderList;
    procedure AppendEDLItems;
    procedure DeleteAllItems;
    procedure AddFromDemander;
    procedure SetDemanderIssueDateFilter(StartDte, EndDte :TDateTime);
    procedure ProcessDemanderLevels;
    procedure PrintDemanderAuthorisedItems;
    procedure StockItemTransfer(prmDemander: string; prmSKU: Double; prmReason:
        string; prmPackQty : Double);
    procedure AddEditItemHistory(pType : string; ProductCode_ID: integer; pDescription: string);
    procedure LoadDemanderHistory;
    procedure LoadDemanderItems;


  end;

implementation

uses

  {$IFDEF RXSTOREBUILD}
//  SystemSecurityUDM,
  RxStoreMainUFrm,
//  SystemSecurityConstantsU,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
//  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  {$ENDIF}

  MainUDM,
  DemanderTypeUFrm,
  DemanderAuthorityUFrm,
  ProductGeneralUFrm,
  MyApplicationUtilities,

  DemanderListForSelectionUFrm,
  DemanderUFrm,
  DemanderLevelUDM, SystemGeneralMethods, RxSolutionSecurityClass,
  dmpDataObjectBaseModule;


{$R *.DFM}




procedure TDemanderDM.DataModuleCreate(Sender: TObject); (*:::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:DataModuleCreate-----------------*)
                                                                                (*===========================================*)
                                                                   (*11.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  FAddingItem := True;
  ConnectDataSource;// Connect data using dmain as the connection string
  DemandersAfterScroll;                                                         // Use this to set up child datasets
  AddingRecords         := False;

  MainDM.GetFinancialYear(dateStart,dateEnd);
  BusyProcessing        := False;

end; (*................................................................*)(*end*)(*...........................................*)




function TDemanderDM.ConnectDataSource: Boolean; (*:::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:ConnectDataSource-----------------*)
                                                                                (*===========================================*)
                                                                   (*30.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  IsLoading := True;
  aAllDataSetsOpened    := True;                                                // If datasets could not be opened, set this to false
  Connections[0]        := ADODemanderConnection;


//Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=L:\RX Store\Data\RxStoreStd Version 1.1e (2002).mdb;Mode=Share Deny None;Extended Properties="";Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
//Provider=SQLOLEDB.1;Password=lvr8;Persist Security Info=True;User ID=sa;Initial Catalog=RxStore;Data Source=SERVER\CALLIOPE;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False

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
  IsLoading := False;

end; (*................................................................*)(*end*)(*...........................................*)





function TDemanderDM.GetDemanderType(CurStr: String; PosTp, PosLf :integer ): Boolean; (*:::::::START:*)(*===========================================*)
                                                                                (*function:GetDemanderType-------------------*)
                                                                                (*===========================================*)
                                                                    (*6.6.2002*)(* Orig::Deane Putzier                       *)

var (*.................................................................*)(*var*)(*...........................................*)
  GetDemander       : TDemanderGetType;
  CurType,NewType   : String;

const
  ERRORMSG = 'You must first add a demander to the database';


begin (*.............................................................*)(*begin*)(*...........................................*)


  Result := False;
  with adoSP_Demanders do
    if Active then                                                              // Make sure its open
      if RecordCount > 0 then                                                   // Are there any records?
        begin
        try
        GetDemander := TDemanderGetType.Create;
        CurType     := FieldByName('Type_str').AsString;
        NewType     := GetDemander.GetDemanderType(CurType, PosTp, PosLf);

        if CurType <> NewType then
          begin
          if not (State in [dsEdit, dsInsert]) then Edit;
          FieldByName('Type_str').AsString := NewType;
          Post;
          end;
        Result := True;                                                       // Got here, so everything was OK.

        finally
        GetDemander.Free;
        end;

        end else (*if RecordCount > 0 then*)
        MessageDlg( ERRORMSG, mtInformation, [mbOk], 0);                        // Tell user what to do

end; (*................................................................*)(*end*)(*...........................................*)







procedure TDemanderDM.adoSP_DemandersAfterScroll(DataSet: TDataSet); (*:START:*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersAfterScroll-------*)
                                                                                (*===========================================*)
                                                                   (*11.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  DemandersAfterScroll;
  
end; (*..............................\..................................*)(*end*)(*...........................................*)



procedure TDemanderDM.DemandersAfterScroll;
begin

  CurrentDemanderID := GetCurrentDemander;
  SetupDataLinks;
//  ShowMessage('In DM');
end;                                                          


procedure TDemanderDM.SetupDataLinks; (*::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetupDataLinks-------------------*)
                                                                                (*===========================================*)
                                                                   (*10.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i                 :Integer;
  LinkedQryList     :array[1..2] of TADOStoredProc;                              // List of Stored procs to update

begin (*.............................................................*)(*begin*)(*...........................................*)

  if adoSP_DemandersIssues.Active then
   adoSP_DemandersIssues.Close;
  if adoSP_DemandersAuthorisedItems.Active then
   adoSP_DemandersAuthorisedItems.Close; 

  LinkedQryList[1] := adoSP_DemandersUsers;
//  LinkedQryList[2] := adoSP_DemandersAuthorisedItems;
  LinkedQryList[2]:= adoSP_DemandersExpenditures;

  if not IsLoading then
    for i := Low(LinkedQryList) to high(LinkedQryList) do
      with LinkedQryList[i] do
        begin

        if State in [dsEdit, dsInsert] then Post;                               // Always check if the dataset is in edit mode

          try
            Close;
            Prepared := False;
            Parameters.ParamByName('@DemanderID').Value := CurrentDemanderID;    // All stored procs have same param name
            Prepared := True;

            try
              Active := True;                                                     // Now activate
            except
              on E:EDatabaseError do
                MessageDlg(E.Message, mtInformation, [mbOK], 0);
            end;

          finally

            Application.ProcessMessages;
          end;
        end;


end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.adoSP_DemandersUsersNewRecord(DataSet: TDataSet); (*::::*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersUsersNewRecord----*)
                                                                                (*===========================================*)
                                                                   (*11.6.2002*)(* Orig::Deane Putzier                       *)
var
  vCurrentDemanderID : double;
begin (*.............................................................*)(*begin*)(*...........................................*)

  vCurrentDemanderID := adoSP_Demanders.FieldByName('Demander_ID').AsFloat;
  if vCurrentDemanderID > 0 then
    Dataset.FieldByName('Demander_ID').AsFloat := vCurrentDemanderID
    else
    Abort;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TDemanderDM.adoSP_DemandersUsersBeforePost(DataSet: TDataSet); (*:::*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersUsersBeforePost---*)
                                                                                (*===========================================*)

(* 14/03/2012 ----Make sure that title, firstname and lastname are filled in before saving Demander staff*)                                                                   (*11.6.2002*)(* Orig::Deane Putzier                       *)
const
        PMSG = 'WARNING' + #13 +'Make sure that demander staff title, first name and last name are not empty before saving';
begin (*.............................................................*)(*begin*)(*...........................................*)
   Dataset.FieldByName('LastUpdated_dat').AsDateTime := Now;
   if (Dataset.FieldByName('Title_str').IsNull or Dataset.FieldByName('FirstName_str').IsNull or Dataset.FieldByName('LastName_str').IsNull or
   (Dataset.FieldByName('Title_str').Value = '') or (Dataset.FieldByName('FirstName_str').Value = '') or (Dataset.FieldByName('LastName_str').Value = '')) then
     begin
     MessageDlg(PMSG, mtWarning, [mbOK], 0);
     Abort;
     end;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.adoSP_DemandersAuthorisedItemsNewRecord( (*:::::::START:*)(*===========================================*)
  DataSet: TDataSet);                                                           (*procedure:adoSP_DemandersAuthorisedItemsNewRecord*)
                                                                                (*===========================================*)
                                                                   (*11.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

//  if CurrentDemanderID = 0 then                                                 // Incase user tries to add record in the grid
  if not FAddingItem then Abort;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.adoSP_DemandersAfterPost(DataSet: TDataSet); (*:::START:*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersAfterPost---------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if CurrentDemanderID <> DataSet.FieldByName('Demander_ID').AsFloat then
    begin
    CurrentDemanderID := GetCurrentDemander;
    SetupDataLinks;
    end;
  IsLoading := False;
  
end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.adoSP_DemandersNewRecord(DataSet: TDataSet); (*:::START:*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersNewRecord---------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  CurrentDemanderID := 0;
  with DataSet do
    begin
    FieldByName('OpenOrMaxDriven').AsBoolean := True;
    FieldByName('Active_bol').AsBoolean := True;
    FieldByName('CanDispense_bol').AsBoolean := True;        //SM 29 July 07
    end;
  SetupDataLinks;


end; (*................................................................*)(*end*)(*...........................................*)



procedure TDemanderDM.adoSP_DemandersAfterOpen(DataSet: TDataSet); (*:::START:*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersAfterOpen---------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  CurrentDemanderID := GetCurrentDemander;
  SetupDataLinks;
end; (*................................................................*)(*end*)(*...........................................*)




procedure TDemanderDM.adoSP_DemandersRemarksNewRecord(DataSet: TDataSet); (*::*)(*===========================================*)
                                                                                (*procedure:adoSP_DemandersRemarksNewRecord--*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  if CurrentDemanderID <> 0 then
    Dataset.FieldByName('Demander_ID').AsFloat := CurrentDemanderID
    else
    Abort;

end; (*................................................................*)(*end*)(*...........................................*)





function TDemanderDM.GetDemanderAuthority: Boolean;
var (*.................................................................*)(*var*)(*...........................................*)
  DemanderGetAuthority    : TDemanderGetAuthority;
  CurType,NewType         : String;

const
  ERRORMSG = 'You must first add a demander to the database';


begin (*.............................................................*)(*begin*)(*...........................................*)


  Result := False;
  with adoSP_Demanders do
    if Active then                                                              // Make sure its open
      if RecordCount > 0 then                                                   // Are there any records?
        begin
        try
        DemanderGetAuthority :=   TDemanderGetAuthority.Create;
        CurType     := FieldByName('Authority_str').AsString;
        NewType     := DemanderGetAuthority.GetDemanderAuthority(CurType);

        if CurType <> NewType then
          begin
          if not (State in [dsEdit, dsInsert]) then Edit;
          FieldByName('Authority_str').AsString := NewType;
          Post;
          end;
        Result := True;                                                       // Got here, so everything was OK.

        finally
        DemanderGetAuthority.Free;
        end;

        end
        else (*if RecordCount > 0 then*)
        MessageDlg( ERRORMSG, mtInformation, [mbOk], 0);                        // Tell user what to do

end; (*................................................................*)(*end*)(*...........................................*)




procedure TDemanderDM.SetDemanderSortOrder(SortField: String);
var
CurrSortField, LastSort :String;
CurrRec       :TBookmark;

begin

with adoSP_Demanders do
  begin
  CurrRec := GetBookMark;

  try
    CurrSortField := Sort;
    LastSort      := CurrSortField;


    if Pos(SortField, CurrSortField) > 0 then
      begin
      CurrSortField := SortField;
      if Pos('DESC', CurrSortField) > 0 then
        CurrSortField := SortField
        else
        CurrSortField := SortField + ' DESC';
      end;

    if CurrSortField = LastSort then
        CurrSortField := SortField;

    Sort := CurrSortField;

    finally
    if BookmarkValid(CurrRec) then
      GotoBookMark(CurrRec);
    FreeBookMark(CurrRec);
    end;

  end;


end;


{
with ADOTable1 do


}

procedure TDemanderDM.FindDemander(SearchField, SearchValue: string);
begin

with adoSP_Demanders do
  begin
  Locate(SearchField, SearchValue, [loPartialKey]);
  end;

end;


function TDemanderDM.GetCurrentDemander: Double;
begin

  Result := 0;
  with adoSP_Demanders do
    if RecordCount > 0 then
      Result := FieldByName('Demander_ID').AsFloat
      else
      Result := 0;

end;

procedure TDemanderDM.adoSP_DemandersAfterCancel(DataSet: TDataSet);
begin
  CurrentDemanderID := GetCurrentDemander;
  SetupDataLinks;
  IsLoading := False;

end;



procedure TDemanderDM.SetAccessRights(AccessType: integer);
var
  CurrAccess :Boolean;

begin


end;



function TDemanderDM.AddAuthorisedProduct(pDemID,pProdID:Double):boolean; (*::::::::START:*)(*===========================================*)

begin (*.............................................................*)(*begin*)(*...........................................*)

  FAddingItem := True;

  try

    //Storedprocedure inside SQL [strdprc_DemanderAddAuthorisedItems]
    // Requires 2 parameters to insert record, ProductID and Demander to insert into
    with stpAddAuthorisedItems do
      begin
      Parameters.ParamByName('DemanderID').Value := pDemID;
      Parameters.ParamByName('ProductID').Value := pProdID;
      ExecProc;
      end;

    //Refresh items display
    with adoSP_DemandersAuthorisedItems do
      if Active then
        begin
        Close;
        Open;
        end;

  except
    on E:EDatabaseError do MessageDlg(e.Message,mtError,[mbOK],0);
  end;

  FAddingItem := False;

end; (*................................................................*)(*end*)(*...........................................*)







function TDemanderDM.AddAuthorisedProducts:boolean; (*::::::::START:*)(*===========================================*)
                                                                                (*function:GetProd---------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vProductSelector : TProductSelector;
  vCurProduct, vNewProduct, vCurrRec :Double;

  vDemID            : Double;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;


begin (*.............................................................*)(*begin*)(*...........................................*)

 if (not adoSP_DemandersAuthorisedItems.Active) then
  LoadDemanderItems;

  Result := False;
  vDemID := GetCurrentDemander;
  vProductSelector := TProductSelector.Create;

//----------------------------------
  vProductSelector := TProductSelector.Create;
  with adoSP_DemandersAuthorisedItems, vProductSelector do
    if Active then
      try

      if Product_SelectItems( vProductCost, vProductID) then
        for i := low(vProductID) to high(vProductID) do
          try
          if not Locate('ProductCode_ID;Demander_ID', VarArrayOf([vProductID[i], vDemID]), []) then
            begin
            AddAuthorisedProduct( vDemID, vProductID[i]);
            AddEditItemHistory(HST_ADD, Floor(vProductID[i]), 'ADDED');
            end;
          except
          end;

      finally
      Free;
      Close;
      Open;
      end;
//------------------------------

end; (*................................................................*)(*end*)(*...........................................*)





function TDemanderDM.GetCurrProductID: double; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrProductID------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with adoSP_DemandersAuthorisedItems do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('ProductCode_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)



procedure TDemanderDM.FilterDemanders(const vFilter:integer);

begin (*.............................................................*)(*begin*)(*...........................................*)

  IsLoading := True;
  with adoSP_Demanders do
    if Active then
      begin
      case vFilter of
        0: Filter := '';
        1: Filter := 'Active_bol = TRUE';
        2: Filter := 'Active_bol = FALSE';
        end;
      Filtered := True;
      end;
  IsLoading := False;
  DemandersAfterScroll;

end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.SortDemandersTableASC(const vField:String); (*:::START:*)(*===========================================*)
                                                                                (*procedure:SortRequisitionGrid--------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)

begin (*.............................................................*)(*begin*)(*...........................................*)


end; (*................................................................*)(*end*)(*...........................................*)


procedure TDemanderDM.DeleteAuthorisedItem;
var
  vDelRec :boolean;
  vCurRec :String;
  vCurID  :double;
  vCurProd : integer;
begin

  vDelRec := False;

  with adoSP_DemandersAuthorisedItems do
    if Active then
      if RecordCount > 0 then
        begin
        vCurRec := FieldByName('Description').AsString;
        vCurID  := FieldByName('DemanderItems_ID').AsFloat;
        vCurProd := FieldByName('ProductCode_ID').AsInteger;
        if MessageDlg('Delete Item' + #13 + vCurRec, mtWarning, [mbOK,mbCancel], 0) = mrOK then
          begin
          vDelRec := True;
          AddEditItemHistory(HST_DEL, vCurProd, 'DELETED');
          end;
        end;

  if vDelRec then
    with stpDeleteAuthorisedItem do
      begin
      Parameters.ParamByName('DemanderItemsID').Value := vCurID;
      Prepared := True;
      Execute;
      adoSP_DemandersAuthorisedItems.Close;
      adoSP_DemandersAuthorisedItems.Open;
      end;

end;





procedure TDemanderDM.DeleteDemander;
var
  vDelRec :boolean;
  vCurRec,vDescription :String;
  vCurID  :double;
begin

  vDelRec := True;
  IsLoading := True;

  with adoSP_Demanders do
    vCurRec := FieldByName('Code_str').AsString + ', ' + FieldByName('Name_str').AsString;
  vDescription := 'Items have already been issued.  Make the demander inactive instead.';

  with adoSP_DemandersIssues do
    if Active then
      if RecordCount > 0 then
        vDelRec := False;

  if vDelRec then
    begin
     if MessageDlg('DELETE DEMANDER?' + #13 + vCurRec, mtWarning, [mbYes, mbNo],0)= mrYes then
      begin

      with adoSP_DemandersAuthorisedItems do
        begin
        First;
        while not eof do
          begin
          vCurID  := FieldByName('DemanderItems_ID').AsFloat;
          stpDeleteAuthorisedItem.Parameters.ParamByName('DemanderItemsID').Value := vCurID;
          stpDeleteAuthorisedItem.Prepared := True;
          stpDeleteAuthorisedItem.Execute;
          Next;
          end;
        end;

      adoSP_Demanders.Delete;
      SetupDataLinks;
      end;

    end else
    MessageDlg('Cannot Delete Demander ' + #13 + vCurRec + #13 + vDescription ,mtError	, [mbOK],0);
  IsLoading := False;

end;


procedure TDemanderDM.adoSP_DemandersAfterDelete(DataSet: TDataSet);
begin
  IsLoading := False;
end;

procedure TDemanderDM.adoSP_DemandersBeforeCancel(DataSet: TDataSet);
begin
  IsLoading := True;
end;

procedure TDemanderDM.adoSP_DemandersBeforePost(DataSet: TDataSet);
begin

 //Task 2903 Bug Issue 2682
 //Do not allow system to save blank or empty 'Demander Code and Name'
 with adoSP_Demanders do
  begin
  if ((FieldByName('Code_str').IsNull) or (Trim(FieldByName('Code_str').AsString) = '')) then
   begin MessageDlg('Demander Code field is empty. Please enter a Demander Code before saving', mtError, [mbOk], 0); Abort; end
  else if ((FieldByName('Name_str').IsNull) or (Trim(FieldByName('Name_str').AsString) = '')) then
   begin MessageDlg('Demander Name field is empty. Please enter a Demander Name before saving', mtError, [mbOk], 0); Abort; end
  else
   IsLoading := True;
  end;

end;

procedure TDemanderDM.ppDemanderListPreviewFormCreate(Sender: TObject);
begin

  with (Sender as TppReport).PreviewForm do
    WindowState         := wsMaximized;

end;

procedure TDemanderDM.PrintDemanderList;
begin
  IsLoading := True;
  ppDemanderList.Print;
  IsLoading := False;
end;

procedure TDemanderDM.PrintDemanderDetail;
begin
  IsLoading := True;
  ppDemandersDetail.Print;
  IsLoading := False;
end;

procedure TDemanderDM.AppendEDLItems;
var
  vDemID : double;

begin

  vDemID := adoSP_Demanders.FieldByName('Demander_ID').AsFloat;
  with AppendEDL do
    begin
    Parameters.ParamByName('DemanderID').Value := vDemID;
    Prepared := True;
    Execute;
    adoSP_DemandersAuthorisedItems.Close;
    adoSP_DemandersAuthorisedItems.Open;
    end;

  AddEditItemHistory(HST_ADD, 0, 'ALL EDL PRODUCTS ADDED');
end;

procedure TDemanderDM.DeleteAllItems;
var
  vDemID : double;

begin

  vDemID := adoSP_Demanders.FieldByName('Demander_ID').AsFloat;
  with DeleteItems do
    begin
    Parameters.ParamByName('DemanderID').Value := vDemID;
    Prepared := True;
    Execute;
    adoSP_DemandersAuthorisedItems.Close;
    adoSP_DemandersAuthorisedItems.Open;
    end;

 AddEditItemHistory(HST_DEL, 0, 'ALL PRODUCTS DELETED');

end;

procedure TDemanderDM.AddFromDemander;
var
  DemanderListForSelectionFrm: TDemanderListForSelectionFrm;
  vDemID, vDemIDFrom : double;
  Demstr :string;
begin

  DemanderListForSelectionFrm := TDemanderListForSelectionFrm.Create(Application);
  with DemanderListForSelectionFrm do
  begin
    ado_DemanderListForSelection.Close;
    ado_DemanderListForSelection.Open;
    if ShowModal = mrOK then
      begin
      DemStr := ado_DemanderListForSelection.FieldByName('Name_str').AsString;
      if MessageDlg('Add all Items from Demander?: [' + DemStr + ']',mtWarning, [mbYes,mbNo],0) = mrYes then
        begin
        vDemID := adoSP_Demanders.FieldByName('Demander_ID').AsFloat;
        vDemIDFrom := ado_DemanderListForSelection.FieldByName('Demander_ID').AsFloat;
        with AddFromDemanders do
          begin
          Parameters.ParamByName('DemanderID').Value := vDemID;
          Parameters.ParamByName('DemanderIDFrom').Value := vDemIDFrom;
          Prepared := True;
          Execute;
          adoSP_DemandersAuthorisedItems.Close;
          adoSP_DemandersAuthorisedItems.Open;
          end;
         AddEditItemHistory(HST_ADD, 0, 'ADDED PRODUCTS FROM ANOTHER DEMANDER: '+Demstr);
        end;
      end;
  end;    // with
end;


procedure TDemanderDM.SetDemanderIssueDateFilter(StartDte, EndDte :TDateTime);
begin
  with adoSP_DemandersIssues do
    begin
    dateStart := StartDte;
    dateEnd   := EndDte;
    Close;
    Prepared := False;
    Parameters.ParamByName('@DemanderID').Value := CurrentDemanderID;            // All stored procs have same param name
    Parameters.ParamByName('@DateStart').Value := dateStart;                     // All stored procs have same param name
    Parameters.ParamByName('@DateEnd').Value   := dateEnd;                       // All stored procs have same param name
    try
    Open;
    except
        on E:EDatabaseError do
          MessageDlg(E.Message, mtInformation, [mbOK], 0);
      end;
    end;
end;

procedure TDemanderDM.ProcessDemanderLevels;
begin

  with DemanderLevelDM do
    AutoLevelDemanderProducts(GetCurrentDemander);

  adoSP_DemandersAuthorisedItems.Close;
  adoSP_DemandersAuthorisedItems.Open;

  // TODO -cMM: TDemanderDM.ProcessDemanderLevels default body inserted
end;

procedure TDemanderDM.PrintDemanderAuthorisedItems;
begin

  ppDemandersAuthorisedItems.Print;

end;

procedure TDemanderDM.StockItemTransfer(prmDemander: string; prmSKU: Double;
    prmReason: string; prmPackQty : Double);
var
  prvPack : double;
  prvF, prvT : string;

begin

  with stpStockTransferDemanders do
    begin

    prvPack := adoStockList.FieldByName('PackSizeValue_dbl').AsFloat;
    prvF    := adoSP_Demanders.FieldByName('Name_str').AsString;
    prvT    := adoDemanderList.FieldByName('Name_str').AsString;

    if (prmPackQty <> 0) then
     prmSKU := prmPackQty * prvPack;
    
    Parameters.ParamByName('@ProductID').Value := adoStockList.FieldByName('productPackSize_ID').AsVariant;
    Parameters.ParamByName('@DemanderFromUniqueID').Value := adoSP_Demanders.FieldByName('DemanderUnique_ID').AsVariant;
    Parameters.ParamByName('@DemanderToUniqueID').Value := prmDemander;
    Parameters.ParamByName('@Quantity').Value := Round( prmSKU / prvPack );
    Parameters.ParamByName('@QtyUnits').Value := prmSKU;
    Parameters.ParamByName('@Reference').Value := 'Demander Transfer [' + prvF + ' to ' + prvT + ']';
    Parameters.ParamByName('@User').Value := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
    Parameters.ParamByName('@UserID').Value := RxSolutionFrm.Security.User.UserNumID.Value;
    Parameters.ParamByName('@VoucherNo').Value := prmReason; //'TX';
    Parameters.ParamByName('@itemID').Value := 0;

    ExecProc;
    end;


end;


procedure TDemanderDM.AddEditItemHistory(pType: string; ProductCode_ID: integer; pDescription: string);
begin
 //
 with tblItemsHistory do
  begin
  Append;
  FieldByName('Demander_ID').AsInteger          := adoSP_Demanders.FieldByName('Demander_ID').AsInteger;
  FieldByName('ProductCode_Id').AsInteger       := ProductCode_ID;
  FieldByName('Description_str').AsString       := pDescription;
  FieldByName('ChangeDate_dat').AsDateTime      := Now();
  FieldByName('Type_str').AsString              := pType;
  FieldByName('User_ID').Value                  := RxSolutionFrm.Security.User.UserNumID.Value;
  FieldByName('UserName_str').Asstring          := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
  Post;
  Close;
  Open;
  end;

end;

procedure TDemanderDM.adoSP_DemandersAuthorisedItemsBeforePost(
  DataSet: TDataSet);
begin

 with DataSet do
  begin
  if FieldByName('MaxStockSet_int').OldValue <> FieldByName('MaxStockSet_int').NewValue then
   begin
   if not (VarIsNull(FieldByName('MaxStockSet_int').OldValue)) then
    AddEditItemHistory(HST_MAX, FieldByName('ProductCode_ID').AsInteger, 'Maximum stock level changed from '+ IntToStr(FieldByName('MaxStockSet_int').OldValue)+' to '+ IntToStr(FieldByName('MaxStockSet_int').NewValue)+'')
   else
    AddEditItemHistory(HST_MAX, FieldByName('ProductCode_ID').AsInteger, 'Maximum stock level has been set to '+ IntToStr(FieldByName('MaxStockSet_int').NewValue)+'');
   end;
  end;

end;

procedure TDemanderDM.LoadDemanderHistory;
begin


end;

procedure TDemanderDM.LoadDemanderItems;
begin

//Refresh Open Demander Authorised Items
 with adoSP_DemandersAuthorisedItems do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@DemanderID').Value := CurrentDemanderID;    // All stored procs have same param name
  Prepared := True;
  Open;
  end;     
  
end;

end.

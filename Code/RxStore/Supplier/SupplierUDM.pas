unit SupplierUDM;
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
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables, DBGrids, StdCtrls, ADODB, ppStrtch, ppMemo,
  ppVar, ppBands, ppCtrls, myChkBox, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, PrjConst, ppParameter;


  (* Used by supplier form*)

type

  (*==========================================================================*)(*===========================================*)
                                                                                (*records:RFieldList-------------------------*)
                                                                                (*===========================================*)
                                                                                // ADDED: 2002.05.20 (Deane Putzier)
  (*...................................................................RECORD.*)(*...........................................*)
  RFieldList = Record                                                          // Used for column list constant
    FName       :String;
    FWidth      :integer;
    FTxtCol     :TColor;
    FColTitle   :String;
    FFontStyle  :Boolean;
  (*......................................................................END.*)(*===========================================*)
    end;


  (*==========================================================================*)(*===========================================*)
                                                                                (*records:RDisplayList-----------------------*)
                                                                                (*===========================================*)
                                                                                // ADDED: 2002.05.24 (Deane Putzier)
                                                                                //   Array lists of the columns
  (*...................................................................RECORD.*)(*...........................................*)
  RDisplayList = record
    ListName    :String;
    ListType    :Integer;
    DynamicCol  :Integer;
    ListCols    :array[0..14] of integer;
  (*......................................................................END.*)(*===========================================*)
    end;


const


  (*==========================================================================*)(*===========================================*)
                                                                                (*constant Array:RDisplayList----------------*)
                                                                                (*===========================================*)
                                                                                // ADDED: 2002.05.24 (Deane Putzier)
                                                                                // A list of columns for the display grids

  (*................................................................CONSTANTS.*)(*...........................................*)
  SHORTLIST = 0;

  (*....................................................................ARRAY.*)(*...........................................*)
  CSupplierFList :array[0..4] of RDisplayList = (
    ( ListName : 'Contacts & Telephone';
      ListType : SHORTLIST;     DynamicCol:1; // Column in CFields
      ListCols : ( 0, 1,18, 8,-1, -1,-1,-1,-1,-1, -1,-1,-1,-1,-1)),             // 00
    ( ListName : 'Contacts & Fax';
      ListType : SHORTLIST;     DynamicCol:1; // Column in CFields
      ListCols : ( 0, 1,18,17,-1, -1,-1,-1,-1,-1, -1,-1,-1,-1,-1)),             // 01
    ( ListName : 'Shortened Names';
      ListType : SHORTLIST;     DynamicCol:1; // Column in CFields
      ListCols : ( 0, 1, 2,-1,-1, -1,-1,-1,-1,-1, -1,-1,-1,-1,-1)),             // 03
    ( ListName : 'Postal Addresses';
      ListType : SHORTLIST;     DynamicCol:1; // Column in CFields
      ListCols : ( 0, 1, 3, 4, 5,  6, 7,-1,-1,-1, -1,-1,-1,-1,-1)),             // 04
    ( ListName : 'Physical Addresses';
      ListType : SHORTLIST;     DynamicCol:1; // Column in CFields
      ListCols : ( 0, 1,19,20,21, 22,23,-1,-1,-1, -1,-1,-1,-1,-1)));            // 05
  (*......................................................................END.*)(*===========================================*)



  (*==========================================================================*)(*===========================================*)
                                                                                (*constant Array:RDisplayList----------------*)
                                                                                (*===========================================*)
                                                                                // ADDED: 2002.05.24 (Deane Putzier)

  (*................................................................CONSTANTS.*)(*...........................................*)
  (*COLORS*)
  myBLUE  = $00C56A31;
  myMAIN  = clWindowText;
  myOTHER = $00C08000;
  myNORM  = clWindowText;
  (*WIDTHS*)
  ADDW    = 150;
  SUBW    = 150;
  CITW    = 100;
  CNTW    =  75;
  PSTW    =  35;

  (*....................................................................ARRAY.*)(*...........................................*)
  CFields  :array[0..26] of RFieldList = (
    (FName : 'Code_str'           ;FWidth:  50 ; FTxtCol : myBLUE;
     FColTitle :'Code'            ;FFontStyle : False                  ),       //  00
    (FName : 'Name_str'           ;FWidth: 100 ; FTxtCol : myMAIN;
     FColTitle :'Supplier Name'   ;FFontStyle : True                   ),       //  01
    (FName : 'ShortName_str'      ;FWidth: 110 ; FTxtCol : myBLUE;
     FColTitle :'Short name'      ;FFontStyle : False                  ),       //  02
    (FName : 'Address1_str'       ;FWidth: ADDW; FTxtCol : myOTHER;
     FColTitle :'Address'         ;FFontStyle : False                  ),       //  03
    (FName : 'Address2_str'       ;FWidth: SUBW; FTxtCol : myNORM;
     FColTitle :'Suburb'          ;FFontStyle : False                  ),       //  04
    (FName : 'Address3_str'       ;FWidth: CITW; FTxtCol : myNORM;
     FColTitle :'City'            ;FFontStyle : False                  ),       //  05
    (FName : 'Address4_str'       ;FWidth: CNTW; FTxtCol : myNORM;
     FColTitle :'Country'         ;FFontStyle : False                  ),       //  06
    (FName : 'PostalCode_str'     ;FWidth: PSTW; FTxtCol : myNORM;
     FColTitle :'Post Code'       ;FFontStyle : False                  ),       //  07
    (FName : 'Phone_str'          ;FWidth:  75 ; FTxtCol : myOTHER;
     FColTitle :'Phone No.'       ;FFontStyle : False                  ),       //  08
    (FName : 'Status_str'         ;FWidth:  75 ; FTxtCol : myNORM;
     FColTitle :'Status'          ;FFontStyle : False                  ),       //  09
    (FName : 'Pay_str'            ;FWidth:  75 ; FTxtCol : myNORM;
     FColTitle :'Pay'             ;FFontStyle : False                  ),       //  10
    (FName : 'PayAddress1_str'    ;FWidth: ADDW; FTxtCol : myOTHER;
     FColTitle :'Address'         ;FFontStyle : False                  ),       //  11
    (FName : 'PayAddress2_str'    ;FWidth: SUBW; FTxtCol : myNORM;
     FColTitle :'Suburb'          ;FFontStyle : False                  ),       //  12
    (FName : 'PayAddress3_str'    ;FWidth: CITW; FTxtCol : myNORM;
     FColTitle :'City'            ;FFontStyle : False                  ),       //  13
    (FName : 'PayAddress4_str'    ;FWidth: CNTW; FTxtCol : myNORM;
     FColTitle :'Country'         ;FFontStyle : False                  ),       //  14
    (FName : 'PayPostalCode_str'  ;FWidth: PSTW; FTxtCol : myNORM;
     FColTitle :'Post Code'       ;FFontStyle : False                  ),       //  15
    (FName : 'Edi_str'            ;FWidth:  25 ; FTxtCol : myNORM;
     FColTitle :'EDI'             ;FFontStyle : False                  ),       //  16
    (FName : 'Fax_str'            ;FWidth:  75 ; FTxtCol : myNORM;
     FColTitle :'Fax'             ;FFontStyle : False                  ),       //  17
    (FName : 'Contact_str'        ;FWidth: 150 ; FTxtCol : myOTHER;
     FColTitle :'Contact'         ;FFontStyle : True                   ),       //  18
    (FName : 'PhysAddress1_str'   ;FWidth: ADDW; FTxtCol : myOTHER;
     FColTitle :'Address'         ;FFontStyle : False                  ),       //  19
    (FName : 'PhysAddress2_str'   ;FWidth: SUBW; FTxtCol : myNORM;
     FColTitle :'Suburb'          ;FFontStyle : False                  ),       //  20
    (FName : 'PhysAddress3_str'   ;FWidth: CITW; FTxtCol : myNORM;
     FColTitle :'City'            ;FFontStyle : False                  ),       //  21
    (FName : 'PhysAddress4_str'   ;FWidth: CNTW; FTxtCol : myNORM;
     FColTitle :'Country'         ;FFontStyle : False                  ),       //  22
    (FName : 'PhysPostalCode_str' ;FWidth: PSTW; FTxtCol : myNORM;
     FColTitle :'Post Code'       ;FFontStyle : False                  ),       //  23
    (FName : 'BankAccount_str'    ;FWidth: 100 ; FTxtCol : myOTHER;
     FColTitle :'Bank Account'    ;FFontStyle : False                  ),       //  24
    (FName : 'BankBranch_str'     ;FWidth: 100 ; FTxtCol : myNORM;
     FColTitle :'Branch'          ;FFontStyle : False                  ),       //  25
    (FName : 'BankAccountType_str';FWidth:  50 ; FTxtCol : myNORM;
     FColTitle :'Type'            ;FFontStyle : False                  ));      //  26
  (*......................................................................END.*)(*===========================================*)

type
  TSupplierDm = class(TDataModule)
    adoQrySuppliers: TADOQuery;
    ADOSuppliersConnection: TADOConnection;
    tblSupplierContacts: TADOTable;
    dsadoQrySuppliers: TDataSource;
    dstblSupplierContacts: TDataSource;
    dsstpSupplierReceipts: TDataSource;
    dsstpSupplierOutStanding: TDataSource;
    adoQrySuppliersSupplier_ID: TAutoIncField;
    adoQrySuppliersCode_str: TWideStringField;
    adoQrySuppliersName_str: TWideStringField;
    adoQrySuppliersShortName_str: TWideStringField;
    adoQrySuppliersAddress1_str: TWideStringField;
    adoQrySuppliersAddress2_str: TWideStringField;
    adoQrySuppliersAddress3_str: TWideStringField;
    adoQrySuppliersAddress4_str: TWideStringField;
    adoQrySuppliersPostalCode_str: TWideStringField;
    adoQrySuppliersPhone_str: TWideStringField;
    adoQrySuppliersStatus_str: TWideStringField;
    adoQrySuppliersPay_str: TWideStringField;
    adoQrySuppliersPayAddress1_str: TWideStringField;
    adoQrySuppliersPayAddress2_str: TWideStringField;
    adoQrySuppliersPayAddress3_str: TWideStringField;
    adoQrySuppliersPayAddress4_str: TWideStringField;
    adoQrySuppliersPayPostalCode_str: TWideStringField;
    adoQrySuppliersEdi_str: TWideStringField;
    adoQrySuppliersFax_str: TWideStringField;
    adoQrySuppliersContact_str: TWideStringField;
    adoQrySuppliersPhysAddress1_str: TWideStringField;
    adoQrySuppliersPhysAddress2_str: TWideStringField;
    adoQrySuppliersPhysAddress3_str: TWideStringField;
    adoQrySuppliersPhysAddress4_str: TWideStringField;
    adoQrySuppliersPhysPostalCode_str: TWideStringField;
    adoQrySuppliersBankAccount_str: TWideStringField;
    adoQrySuppliersBankBranch_str: TWideStringField;
    adoQrySuppliersBankAccountType_str: TWideStringField;
    adoQrySuppliersActive_bol: TBooleanField;
    adoQrySuppliersE_mail_str: TWideStringField;
    adoQrySuppliersWebSite_str: TWideStringField;
    tblSupplierContactsSupplierUser_ID: TAutoIncField;
    tblSupplierContactsSupplier_ID: TIntegerField;
    tblSupplierContactsFirstName_str: TWideStringField;
    tblSupplierContactsLastName_str: TWideStringField;
    tblSupplierContactsInitials_str: TWideStringField;
    tblSupplierContactsPosition_str: TWideStringField;
    tblSupplierContactsUserLevel_str: TWideStringField;
    tblSupplierContactsLastUpdated_dat: TDateTimeField;
    tblSupplierContactsCellPhone: TWideStringField;
    tblSupplierContactsEmail: TWideStringField;
    tblSupplierContactsPhone: TWideStringField;
    tblSupplierContactsFax: TWideStringField;
    DatabaseUpdater: TADOCommand;
    DatabaseCleaner: TADOCommand;
    adoQrySuppliersSupplier_mem: TMemoField;
    ppDBSuppliersList: TppDBPipeline;
    ppSupplierList: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSuppliersDetail: TppReport;
    ppTitleBand2: TppTitleBand;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppLabel28: TppLabel;
    ppLabel35: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel39: TppLabel;
    ppDBText38: TppDBText;
    ppLabel40: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel44: TppLabel;
    ppDBText43: TppDBText;
    ppLabel45: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel49: TppLabel;
    ppDBText50: TppDBText;
    ppLabel52: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel55: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppFooterBand2: TppFooterBand;
    ppDBSuppliersDetail: TppDBPipeline;
    stpSupplierReceiptsFiltered: TADOStoredProc;
    stpSupplierOutstandingFiltered: TADOStoredProc;
    stpSupplierOutstandingFilteredSupplier_ID: TAutoIncField;
    stpSupplierOutstandingFilteredDescription_str: TStringField;
    stpSupplierOutstandingFilteredQtyOutStanding: TIntegerField;
    stpSupplierOutstandingFilteredQtyOrdered_int: TIntegerField;
    stpSupplierOutstandingFilteredQtyReceivedCum_int: TIntegerField;
    stpSupplierOutstandingFilteredTotalCost: TBCDField;
    stpSupplierOutstandingFilteredCost_mon: TBCDField;
    stpSupplierOutstandingFilteredICN_str: TWideStringField;
    stpSupplierOutstandingFilteredECN_str: TWideStringField;
    stpSupplierOutstandingFilteredOrderNo_str: TWideStringField;
    adoQrySuppliersCountryCurrency_str: TWideStringField;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine5: TppLine;

    procedure DataModuleCreate(Sender: TObject);
    procedure adoQrySuppliersAfterScroll(DataSet: TDataSet);
    procedure tblSupplierContactsNewRecord(DataSet: TDataSet);
    procedure adoQrySuppliersNewRecord(DataSet: TDataSet);

  (*...................................................................REMOVED*)(*...........................................*)
                                                                                // REMOVED: 2002.05.20 (Deane Putzier)
  (*procedure DataModuleCreate(Sender: TObject);*)

  private
    { private declarations4 }

  CurrentSupplierID : Double;
  IsLoading         : Boolean;
  dateStart,
  dateEnd             :TDateTime;



    function ConnectDataSource: Boolean;
    procedure UpdateDB;
    procedure SetupDataLinks;

  public
    { public declarations }


  (*......................................................................NEW.*)(*...........................................*)
                                                                                // ADDED: 2002.05.20 (Deane Putzier)
    function GetSupplierDataState : Boolean;
                                                                                // ADDED: 2002.05.21 (Deane Putzier)
    function DeleteSupplier       : Boolean;
                                                                                // ADDED: 2002.05.22 (Deane Putzier)
    function ChangeSortOrder( const DisplayList, Index: integer;
                              const SortDirection:Boolean): Boolean;            // Changed 2002.05.23. Added SortDirection.

    (*function SearchDatabase(const Index: integer;                             // Search according to index for a record;
                  SearchText :string): Boolean;*)                               // REMOVED 2002.05.23 (Using infopower component)
    function IsDataAvailable      : Boolean;

                                                                                // ADDED: 2002.05.24 (Deane Putzier)
    function DisplayListSetComboBox(var ComboList:TComboBox): Boolean;
    function DisplayListSetGrid(const Index:integer;
                              var UpDateGrid : TDBGrid): Boolean;
    procedure FilterSuppliers(const vFilter: integer);
    procedure GotoPageDown;
    procedure GotoPageUp;
    procedure PrintSupplierList;
    procedure PrintSupplierDetail;
    procedure SetSupplierTransactionFilter(pDateStart, pDateEnd :TDateTime);


  end;

implementation


uses
  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  MyApplicationUtilities,
  {$ELSE}
  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  {$ENDIF}

  MainUDM;

{$R *.DFM}


procedure TSupplierDm.DataModuleCreate(Sender: TObject); (*:::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:DataModuleCreate-----------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  MainDM.GetFinancialYear(dateStart,dateEnd);
  CurrentSupplierID := 0;

//  UpdateDB;

  ConnectDataSource;
  IsLoading := True;
//  SetupDataLinks;

end; (*................................................................*)(*end*)(*...........................................*)



function TSupplierDm.ConnectDataSource: Boolean; (*::::::::::::::::START:*)(*===========================================*)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  IsLoading := True;
  aAllDataSetsOpened    := True;                                                // If datasets could not be opened, set this to false
  Connections[0]        := ADOSuppliersConnection;

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
            DataSets[j].Active := True;                                           // Activate the datastores.
                                                                                // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;

  IsLoading := False;
  Result := aAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)







function TSupplierDm.GetSupplierDataState: Boolean; (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetSupplierDataState--------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := False;                                                              // Return a default result;
  with adoQrySuppliers do
    if Active then
      if (State in [dsInsert, dsEdit]) then Result := True;                     // The dataset is in edit mode or has updates pending (**)(*end*)(*...........................................*)
end; (*................................................................*)(*end*)(*...........................................*)




function TSupplierDm.DeleteSupplier: Boolean; (*::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:DeleteSupplier--------------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vDescription, MsgStr        : String;                                                              // Temp holder for message string
  vCanDelete    : boolean;

const                                                                  (*const*)(*...........................................*)
  DELETEMSG = 'Do you want to delete the current supplier?'+ #13 + '%s';

begin (*.............................................................*)(*begin*)(*...........................................*)

  vCanDelete := True;

  with adoQrySuppliers do                                                           // Work on the QrySupplier query
    begin
    MsgStr := '(' + FieldByName('Code_Str').AsString + ') ' +                 // Get supplier name from current rec.
                FieldByName('Name_Str').AsString;
//    MsgStr := Format( DELETEMSG, [MsgStr]);                                   // Prepare the display string.
    end;
  vDescription := SItemsHaveAlreadyBeenIssuedO;


  with stpSupplierReceiptsFiltered do
    if RecordCount > 0 then
      vCanDelete := False;

  with stpSupplierOutStandingFiltered do
    if RecordCount > 0 then
      vCanDelete := False;


  if vCanDelete then
    begin

    if MessageDlg(SDELETESUPPLIER + #13 + MsgStr, mtWarning, [mbYes, mbNo],0)= mrYes then
      begin

      with tblSupplierContacts do
        begin
        First;
        while not eof do
          begin
          Delete;
//          vCurID  := FieldByName('DemanderItems_ID').AsFloat;
//          stpDeleteAuthorisedItem.Parameters.ParamByName('DemanderItemsID').Value := vCurID;
//          stpDeleteAuthorisedItem.Prepared := True;
//          stpDeleteAuthorisedItem.Execute;
//          Next;
          end;
        end;

      adoQrySuppliers.Delete;
      end;

    end
  else
    MessageDlg(SCannotDeleteSupplier + #13 + MsgStr + #13 + vDescription ,mtWarning, [mbOK],0);



end; (*................................................................*)(*end*)(*...........................................*)



function TSupplierDm.ChangeSortOrder(const DisplayList, Index: integer; (*START:*)(*===========================================*)
                          const SortDirection:Boolean): Boolean;                (*function:ChangeSortOrder-------------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
                                                                                //  (1) Added a sort direction.
                                                                                //  (2) Changed the sort to read CFields for
                                                                                //      field based on index sort.
var (*.................................................................*)(*var*)(*...........................................*)
  Str1, Str2    : String;

const                                                                  (*const*)(*...........................................*)
  SQLString     = 'SELECT * FROM tblSupplier ORDER BY %s %s';
  DefSQLString  = 'SELECT * FROM tblSupplier';

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := False;

    with adoQrySuppliers do                                                     // Work on the QrySupplier query
      if Active then
        begin
          try
          Close;                                                                // Make sure the query is closed.
          SQL.Clear;                                                            // Clear any previous SQL statement.

          Str1 := CFields[CSupplierFList[DisplayList].ListCols[Index]].FName;   // Get the sorting field
          if (not SortDirection) then Str2 := 'DESC' else Str2 := '';           // Set the sort order

          SQL.Add(Format(SQLString, [Str1, Str2]));                             // Apply SQL string

          Open;                                                                 // Now open Query
          except
                (*AddLogging*)
          end; (*try..except..end*)
        end; (*if Active then*)
end; (*................................................................*)(*end*)(*...........................................*)



function TSupplierDm.IsDataAvailable: Boolean; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:IsDataAvailable-------------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  with adoQrySuppliers do                                                       // Work on the QrySupplier query
    Result := Active;
end; (*................................................................*)(*end*)(*...........................................*)



function TSupplierDm.DisplayListSetComboBox( (*:::::::::::::::::::::::::START:*)(*===========================================*)
  var ComboList: TComboBox): Boolean;                                           (*function:DisplayListSetComboBox------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i : Integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with ComboList do
    begin
    Items.Clear;                                                                // Clear the combo.
    for i:= low(CSupplierFList) to high(CSupplierFList) do                      // Fill the combo box with the constant lists
      Items.Add(CSupplierFList[i].ListName);                                    // Add the description
    ItemIndex := 0;                                                             // Set it to the default value
    end; (*with ComboList do*)
end; (*................................................................*)(*end*)(*...........................................*)


function TSupplierDm.DisplayListSetGrid(const Index: integer; (*::::::::START:*)(*===========================================*)
  var UpDateGrid: TDBGrid): Boolean;                                            (*function:DisplayListSetGrid----------------*)
                                                                                (*===========================================*)
                                                                   (*14.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i   :integer;

begin

  with CSupplierFList[Index], UpDateGrid do                                     // CSupplierFList is constant array set in DM
    begin
    Columns.Clear;                                                              // Clear the existing columns

    for i:=low(ListCols) to high(ListCols) do                                   // Cycle through the column list & add to grid
      if ListCols[i] <> -1 then
        begin

        Columns.Add;                                                            // Add a column to the grid
        with Columns[i], CFields[ListCols[i]] do                                // Update the properties  (CFields declared in DM)
          begin                                                                 // Set column properties from array
          FieldName     := FName;
          Width         := FWidth;
          Font.Color    := FTxtCol;
          Title.Caption := FColTitle;
          if FFontStyle then Font.Style  := [fsBold];
          end; (*with Columns[i], CFields[ListCols[i]] do*)

      end; (*if ListCols[i] <> -1 then*)

    end; (*with CSupplierFList[Index], UpDateGrid do*)
end; (*................................................................*)(*end*)(*...........................................*)

procedure TSupplierDm.adoQrySuppliersAfterScroll(DataSet: TDataSet);
begin

  CurrentSupplierID := DataSet.FieldByName('Supplier_ID').AsFloat;
  if not IsLoading then SetupDataLinks;
end;

procedure TSupplierDm.tblSupplierContactsNewRecord(DataSet: TDataSet);
var
  vSuppID :double;
begin

  vSuppID := adoQrySuppliers.fieldByName('Supplier_ID').AsFloat;

  if vSuppID <> 0 then
    DataSet.FieldByName('Supplier_ID').AsFloat :=
      adoQrySuppliers.fieldByName('Supplier_ID').AsFloat
    else
    Abort;

end;

procedure TSupplierDm.FilterSuppliers(const vFilter:integer);

begin (*.............................................................*)(*begin*)(*...........................................*)

  with adoQrySuppliers do
    if Active then
      begin
        case vFilter of
        0: Filter := '';
        1: Filter := 'Active_bol = TRUE';
        2: Filter := 'Active_bol = FALSE';
        end;
      Filtered := True;
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TSupplierDm.GotoPageDown;
var
  FDataPage : integer;

begin
  FDataPage := 10;
  adoQrySuppliers.MoveBy(FDataPage);
end;

procedure TSupplierDm.GotoPageUp;
var
  FDataPage : integer;
begin
  FDataPage := 10;
  adoQrySuppliers.MoveBy(-FDataPage);
end;

procedure TSupplierDm.UpdateDB;
begin

  try
  if Assigned(MainDM) then
    with MainDM do
      begin
      ADOSuppliersConnection.Connected          := False;
      ADOSuppliersConnection.ConnectionString   := ADOMainDBConnection.ConnectionString;
      ADOSuppliersConnection.Connected          := True;
      DatabaseCleaner.Execute;
      DatabaseUpdater.Execute;
      ADOSuppliersConnection.Connected          := False;
      end;
  except
  end;
end;

procedure TSupplierDm.PrintSupplierList;
begin
  ppSupplierList.Print;
  // TODO -cMM: TSupplierDm.PrintSupplierList default body inserted
end;

procedure TSupplierDm.PrintSupplierDetail;
begin
  ppSuppliersDetail.Print;
  // TODO -cMM: TSupplierDm.PrintSupplierDetail default body inserted
end;

procedure TSupplierDm.SetSupplierTransactionFilter(pDateStart, pDateEnd
    :TDateTime);
begin
dateStart := pDateStart;
dateEnd := pDateEnd;
IsLoading := False;
SetupDataLinks;
  // TODO -cMM: TSupplierDm.SetSupplierTransactionFilter default body inserted
end;

procedure TSupplierDm.SetupDataLinks;
                                                                                (*procedure:SetupDataLinks-------------------*)
                                                                                (*===========================================*)
                                                                   (*10.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i                 :Integer;
  LinkedQryList     :array[1..2] of TADOStoredProc;                              // List of Stored procs to update
begin (*.............................................................*)(*begin*)(*...........................................*)
  LinkedQryList[1] := stpSupplierReceiptsFiltered;
  LinkedQryList[2] := stpSupplierOutstandingFiltered;
//LinkedQryList[3] := adoSP_DemandersRemarks;
  if not IsLoading then
    for i := Low(LinkedQryList) to high(LinkedQryList) do
      with LinkedQryList[i] do
        begin
        if State in [dsEdit, dsInsert] then Post;                               // Always check if the dataset is in edit mode
          try
            Close;
            Prepared := False;
            Parameters.ParamByName('SupplierID').Value  := CurrentSupplierID;    // All stored procs have same param name
            Parameters.ParamByName('DateStart').Value   := dateStart;           // All stored procs have same param name
            Parameters.ParamByName('DateEnd').Value     := dateEnd;             // All stored procs have same param name
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

procedure TSupplierDm.adoQrySuppliersNewRecord(DataSet: TDataSet);
begin
 with adoQrySuppliers do
  begin
  FieldByName('Active_bol').AsBoolean := True;
  end;
end;

end.





{
procedure TForm1.Button1Click(Sender: TObject);
var
  sql : TSQLBuilder;
  myi : integer;
begin

  myi := 55;
  sql := TSQLBuilder.Create('tblLookup', stSelect);

  sql.AddFields(['lookup_ID', 'description_str', 'num_int']);

  sql.SQLField['num_int'].AddParameters([0,myi], ['=', '<']);
  sql.SQLField['num_int'].SortIndex := 1;
  sql.SQLField['num_int'].SortOrder := 'Desc';

  RzMemo1.Lines.Clear;
  RzMemo1.Lines.Add(sql.ToString);

  sqL.SQLType := stDelete;
  sql.AddFields(['another_Lookup']);
  sql.Clear_Parameters;
  sql.Clear_SortOrder;
  sql.SQLField['another_Lookup'].AddParameters([myi], ['>=']);


  RzRichEdit1.Lines.Clear;
  RzRichEdit1.Lines.Add(sql.ToString);


  sql.Free;

end;
}

{

  str := 'SELECT TOP 100 PERCENT dbo.tblDRRoute.routeName_str + dbo.tblClinic.clinicName_str AS Deane''s, dbo.tblDRRouteSchedule.deliveryDate_dat, ';
  str := str + 'dbo.tblClinic.clinicName_str, COUNT(dbo.TblPrescription.patientName_Str) AS PatientCount, ';
  str := str + 'AVG(dbo.TblPrescription.prescriptionItemsCount_Int * dbo.TblPrescription.prescriptionCost_Mon) AS RxAverage, ';
  str := str + 'SUM(dbo.TblPrescription.prescriptionCost_Mon) AS RxCostTotal, SUM(dbo.TblPrescription.prescriptionItemsCount_Int) AS RxItemsCount ';
  str := str + 'FROM dbo.tblDRRouteSchedule INNER JOIN dbo.tblDRRoute ON dbo.tblDRRouteSchedule.downRefRoute_ID = dbo.tblDRRoute.downRefRoute_ID RIGHT OUTER JOIN ';
  str := str + 'dbo.tblPersonPosition INNER JOIN dbo.tblClinic ON dbo.tblPersonPosition.clinic_ID = dbo.tblClinic.clinic_ID INNER JOIN ';
  str := str + 'dbo.TblPrescription ON dbo.tblPersonPosition.person_ID = dbo.TblPrescription.patient_ID ON dbo.tblDRRouteSchedule.downRefRouteSchedule_ID = dbo.TblPrescription.downRefRouteSchedule_ID ';
  str := str + 'WHERE (dbo.TblPrescription.batchIsBatched_bol = ''1'') ';
  str := str + 'GROUP BY dbo.tblDRRoute.routeName_str + dbo.tblClinic.clinicName_str, dbo.tblDRRouteSchedule.deliveryDate_dat, dbo.tblClinic.clinicName_str ';
  str := str + 'HAVING      (AVG(dbo.TblPrescription.prescriptionItemsCount_Int * dbo.TblPrescription.prescriptionCost_Mon) = 1) ';
  str := str + 'ORDER BY dbo.tblDRRoute.routeName_str + dbo.tblClinic.clinicName_str, dbo.tblDRRouteSchedule.deliveryDate_dat, AVG(dbo.TblPrescription.prescriptionItemsCount_Int * dbo.TblPrescription.prescriptionCost_Mon) ';

  sql := TSQLBuilder.Create('tblLookup', stSelect);
  sql.AddSQL(str);

  sql.SQLField['clinicName_str'].AddParameters(['Amabele'],['=']);
  sql.AddField('tblDRRoute', 'myNewField_str', '' , [], [], cNone, False );
  sql.SQLField['myNewField_str'].AddParameters(['NewParam'],['>=']);

  RzMemo1.Lines.Clear;
  RzMemo1.Lines.Add(sql.ToString);
  sql.Free;
}

(*
  ses := TSQLSession.Create('RxDispensing','tiger','sa', 'lvr8');

  FLists := TListOfLists.Create(ses.ThisConnection.ConnectionString);
  FLists.ListCreate('GenericNames', 1,'tblGenericName','genericName_str','genericName_str','','genericName_str');
//  FLists.AddComponent(RzComboBox1, FLists.ListByName['GenericNames']);

  grp := TTestSet.Create(ses, 'tblPrescriptionItem', 'prescriptionItem_ID', 'prescription_ID', '{DCB1297F-9A8A-487F-9C21-7E996926254A}' );

  grp.BindingContextAddControl('ObjectID', Edit1, RzLabel1, RzLabel6);
  grp.BindingContextAddControl('Generic', RzComboBox1, RzLabel2, RzLabel7, FLists.ListByName['GenericNames'] ) ;
  grp.BindingContextAddControl('Dose', RzNumericEdit1, RzLabel3, RzLabel8) ;
  grp.BindingContextAddControl('DoseUnit', RzEdit1, RzLabel4, RzLabel9) ;
  grp.BindingContextAddControl('EmptyProp', RzEdit3, RzLabel5, Nil);

  grp.DisplayComponent := StringGrid1;
  grp.BindingContextAddGridColumns(['Generic','Dose','DoseUnit']);

  grp.BindingContextLinkActions([btnNew, btnRefresh, btnSave, btnUndo, btnDelete, btnUndelete]);

  grp.Load;

*)


unit dmpDataObjectBaseModule;

interface

uses Windows, Messages, SysUtils, Classes, DB, ADODB, Variants, StrUtils,
	ComCtrls, StdCtrls, ExtCtrls, ComObj, Mask, Graphics, Controls, Forms,
  Dialogs, Grids, ActnList,

  RzButton, RzListVw, RzTreeVw, RzCmboBx, RzTrkBar, RzSpnEdt, RzEdit, RzBtnEdt,
  RzLstBox, RzLabel, RzRadChk,

  RxSolutionSecurityEncryption;
{$ASSERTIONS ON}


const
	DEBUGING = TRUE;

  SAPPLICATIONERRORIndexOutOfBounds = 'APPLICATION ERROR: Index Out Of Bounds TSQLBuilderField.GetOperator';

  PARAM_PREFIX  = 'prm';
  UPDATE_PREFIX = 'updte';
  SELECT_PREFIX = 'sel';
  INSERT_PREFIX = 'ins';

  SQLEXT        = 'dbo.';
  SQLTOP        = 'TOP 100 PERCENT';

  SQLSEL        = 'SELECT';
  SQLFRM        = 'FROM';
  SQLGRP        = 'GROUP BY';
  SQLWHR        = 'WHERE';
  SQLHAV        = 'HAVING';
  SQLORD        = 'ORDER BY';

  SQLRAWNUM     = 0;
  SQLSELNUM     = 1;
  SQLFRMNUM     = 2;
  SQLGRPNUM     = 3;
  SQLWHRNUM     = 4;
  SQLHAVNUM     = 5;
  SQLORDNUM     = 6;


  TOSTRING_GROUPBY  = 1;
  TOSTRING_HAVING   = 2;
  TOSTRING_SELECT   = 3;
  TOSTRING_SORT     = 4;
  TOSTRING_WHERE    = 5;
  TOSTRING_UPDATE   = 6;
  TOSTRING_INSERT   = 7;


type

  // Sets
	EObjectState = (osCreated, osNew, osLoaded, osEdited, osSaved, osDeleted);
  EObjectSecurity = (esNone, esLocked, esUnlocked, esUnlimited);
	EPropertyState = (psCreated, psBindingProperty, psBindingComponent);
	ESQLType = (stSelect, stUpdate, stDelete, stInsert);
	ECalculation = (cNone, cSum, cAverage, cCount, cMin, cMax, cGroupBy);

  // Classes
	TdmpStringProperty = class;
	TdmpIntegerProperty = class;
	TdmpDateTimeProperty = class;
	TdmpCurrencyProperty = class;
	TdmpBooleanProperty = class;
	TdmpGUIDProperty = class;
	TdmpMemoProperty = class;
  TdmpDoubleProperty = class;
  TdmpIndexerBase = class;
  TSQLBuilderField = class;
  TSQLBuilder = class;
  TPropertyQrySQLBuilder = class;
  TSessionBase = class;
  TSQLSession = class;
  TListOfLists = class;
  TListOfItems = class;
	TdmpPropertyBase = class;


  // Events, Delegates
  TPropertyChangedEvent = procedure(Sender : TObject ; evPropertyName : string)
      of object;
	TPropertyKeyUpEvent = procedure (Sender: TObject; var Key: Word; Shift: TShiftState) of object;
  TObjectBeforeScroll = procedure (Index: Integer) of Object;
  TObjectAfterScroll = procedure (Index: Integer) of Object;
  TListOfChanged = procedure(Sender: TObject ; msgListName : string) of object;

  // Declarations
	ListOfFields = array of TdmpPropertyBase;
	TListOfGuid = array of string;

  // Records
  RBindingList = record
    Caption: TComponent;
    Display: TComponent;
    Edit: TComponent;
    Lookup: TListOfItems;
    Name: string;
  end;

  RFieldDefs = record
    rAlias: string;
    rCalc: ECalculation;
    rDisplay: Boolean;
    rField: string;
    rFieldOrder: Integer;
    rOperator: array of string;
    rParameter: array of Variant;
    rSortDesc: Boolean;
    rTable: string;
    rSort: Integer;
  end;


  // Classes
  TdmpObjectBase = class(TObject)
  private
    FBusyChanging: Boolean;
    FFormerState: EObjectState;
    FIsDeleted: Boolean;
    FIsNew: Boolean;
    FOID: TdmpGUIDProperty;
    FTableName: string;
    FOnChanged: TPropertyChangedEvent;
    FOnAfterSave: TNotifyEvent;
    FPropertyCount: Integer;
    FSession: TSQLSession;
    FState: EObjectState;
    FTableFields: ListOfFields;
    procedure Data_Commit;
    procedure Data_Fetch;
    procedure ForcePropertyChangedValue(prmEditedValue : boolean);
    function GetIsEdited: Boolean;
    function GetPropertyByFieldName(Index : string): TdmpPropertyBase;
    function GetPropertyByName(Index : string): TdmpPropertyBase;
    function GetPropertyByIndex(Index: Integer): TdmpPropertyBase;
    procedure PropertiesFreeze;
    procedure PropertiesUnfreeze;
    procedure SetPropertyByFieldName(Index : string; const Value: TdmpPropertyBase);
    procedure SetPropertyByName(Index : string; const Value: TdmpPropertyBase);
    procedure SetPropertyByIndex(Index: Integer; const Value: TdmpPropertyBase);
  protected
    procedure CalculateObjectValue(const prmPropertyName : string); virtual;
    procedure Changed_Value(Sender : TObject ; prmFieldName : string);
    procedure Saved(Sender : TObject);
  public
    constructor Create(prmSession : TSQLSession ; prmTableName : string); overload;
    destructor Destroy; override;
    procedure Undo;
    procedure Delete;
    procedure Display_Refresh(prmPropertyDontRefresh : string = '');
    procedure Load;
    procedure New;
    procedure PropertiesAdd(prmProperty : TdmpPropertyBase);
    procedure RemoveBinding;
    procedure Save;
    procedure UnDelete;
    property IsDeleted: Boolean read FIsDeleted;
    property IsEdited: Boolean read GetIsEdited;
    property IsNew: Boolean read FIsNew;
    property OID: TdmpGUIDProperty read FOID write FOID;
    property TableName: string read FTableName write FTableName;
    property PropertyByFieldName[Index : string]: TdmpPropertyBase read
        GetPropertyByFieldName write SetPropertyByFieldName;
    property PropertyByName[Index : string]: TdmpPropertyBase read
        GetPropertyByName write SetPropertyByName;
    property PropertyByIndex[Index: Integer]: TdmpPropertyBase read
        GetPropertyByIndex write SetPropertyByIndex;
    property PropertyCount: Integer read FPropertyCount;
    property State: EObjectState read FState;
  published
    property OnChanged: TPropertyChangedEvent read FOnChanged write FOnChanged;
    property OnAfterSave: TNotifyEvent read FOnAfterSave write FOnAfterSave;
  end;

  TdmpPropertyBase = class(TObject)
  private
    DataBindComponent: TComponent;
    DataBindComponentDisplay: TComponent;
    DataBindComponentDisplayType: string;
    DataBindComponentLabel: TComponent;
    DataBindComponentLabelType: string;
    DataBindComponentType: string;
    FAlignment: TAlignment;
    FCaption: string;
    FChanged: Boolean;
    FDefault: Variant;
    FDisplayFormat: string;
    FEncrypt: Boolean;
    FFieldName: string;
    FFieldType: TVarType;
    FFreezeEvents: Boolean;
    FHint: string;
    FLookupList: TListOfItems;
    FName: string;
    FOnChanged: TPropertyChangedEvent;
    FParameter: Variant;
    FSecurityAccessLevel: Integer;
    FSecurityComponent: TLabel;
    FSecurityCurrentAccess: Integer;
    FStringListValue: TStringList;
    FValue: Variant;
    procedure BindComponentToProperty;
    procedure BindLookupListToProperty;
    procedure BindPropertyToComponent;
    procedure ComponentEventsBind;
    procedure ComponentEventsUnBind;
    procedure Display_Access;
    procedure Display_Caption;
    procedure Display_Label;
    function GetComponentClass: string;
    function GetSecurityText: string;
    procedure SetupSecurityComponent(const prmComponent : TComponent);
  protected
    procedure Changed_ComponentValue(Sender : TObject);
    procedure Changed_KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Changed_PropertyValue;
  public
    constructor Create;
    destructor Destroy; override;
    procedure DataBinding(prmComponent : TComponent); overload;
    procedure DataBinding(prmComponent : TComponent ; prmLabelComponent :
        TComponent); overload;
    procedure DataBinding(prmComponent : TComponent ; prmLabelComponent :
        TComponent ; prmDisplayComponent : TComponent ; prmLookList : TListOfItems
        = nil); overload;
    procedure DataBindingClear;
    procedure Load(const prmValue : variant);
    procedure LoadDefault; virtual;
    procedure RefreshDisplay; virtual;
    procedure RefreshDisplayLabel;
    function Save: Variant;
    procedure SetSecurity(const prmAreaName : string ; const prmSecurityLevel :
        integer);
    function ToString: string; virtual;
    property Alignment: TAlignment read FAlignment write FAlignment;
    property Caption: string read FCaption write FCaption;
    property Changed: Boolean read FChanged write FChanged;
    property ComponentClass: string read GetComponentClass;
    property Default: Variant read FDefault write FDefault;
    property DisplayFormat: string read FDisplayFormat write FDisplayFormat;
    property Encrypt: Boolean read FEncrypt write FEncrypt;
    property FieldName: string read FFieldName write FFieldName;
    property FieldType: TVarType read FFieldType write FFieldType;
    property FreezeEvents: Boolean read FFreezeEvents write FFreezeEvents;
    property Hint: string read FHint write FHint;
    property LookupList: TListOfItems read FLookupList write FLookupList;
    property Name: string read FName write FName;
    property Parameter: Variant read FParameter write FParameter;
    property SecurityAccessLevel: Integer read FSecurityAccessLevel write
        FSecurityAccessLevel;
    property SecurityCurrentAccess: Integer read FSecurityCurrentAccess write
        FSecurityCurrentAccess;
    property Value: Variant read FValue write FValue;
  published
    property OnChanged: TPropertyChangedEvent read FOnChanged write FOnChanged;
  end;

  TdmpStringProperty = class(TdmpPropertyBase)
  private
    function GetValue: string; virtual;
    procedure SetValue(const Value: string); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string); overload;
    property Value: string read GetValue write SetValue;
  end;

  TdmpIntegerProperty = class(TdmpPropertyBase)
  private
    function GetValue: Integer; virtual;
    procedure SetValue(const Value: Integer); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string ; prmDefValue :
        integer = 0); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string ; prmDefValue : integer = 0); overload;
    property Value: Integer read GetValue write SetValue;
  end;

  TdmpDateTimeProperty = class(TdmpPropertyBase)
  private
    function GetValue: TDateTime; virtual;
    procedure SetValue(const Value: TDateTime); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string); overload;
    property Value: TDateTime read GetValue write SetValue;
  end;

  TdmpCurrencyProperty = class(TdmpPropertyBase)
  private
    function GetValue: Double; virtual;
    procedure SetValue(const Value: Double); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string ; prmDefValue :
        Double = 0); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string ; prmDefValue : double = 0); overload;
    property Value: Double read GetValue write SetValue;
  end;

  TdmpDoubleProperty = class(TdmpPropertyBase)
  private
    function GetValue: Double; virtual;
    procedure SetValue(const Value: Double); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string ; prmDefValue :
        Double = 0); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string ; prmDefValue : double = 0); overload;
    property Value: Double read GetValue write SetValue;
  end;

  TdmpBooleanProperty = class(TdmpPropertyBase)
  private
    function GetValue: Boolean; virtual;
    procedure SetValue(const Value: Boolean); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string ; prmDefValue :
        boolean = false); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string ; prmDefValue : boolean = false); overload;
    property Value: Boolean read GetValue write SetValue;
  end;

  TdmpGUIDProperty = class(TdmpPropertyBase)
  private
    function GetValue: string; virtual;
    procedure SetValue(const Value: string); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string); overload;
    procedure LoadDefault; override;
    property Value: string read GetValue write SetValue;
  end;

  TdmpMemoProperty = class(TdmpPropertyBase)
  private
    function GetValue: TStringList; virtual;
    procedure SetValue(const Value: TStringList); virtual;
  public
    constructor Create(prmName : string ; prmFieldName : string); overload;
    constructor Create(prmName : string ; prmFieldName : string ; prmCaption :
        string); overload;
    property Value: TStringList read GetValue write SetValue;
  end;

  TdmpIndexerBase = class(TObject)
  private
    FActionList: TActionList;
    FAddingRecord: Boolean;
    FBindingList: array of RBindingList;
    FBoundColumns: array of String;
    FColor_AlternateRow: TColor;
    FRecordsCount: Integer;
    FRecordsCurrent: Integer;
    FColor_FontDeleteRow: TColor;
    FDisplayComponent: TComponent;
    FForeignKey: string;
    FForeignKeyValue: Variant;
    FLoading: Boolean;
    FRecordActions: array of TAction;
    FOnScroll: TObjectAfterScroll;
    FPrimaryKey: string;
    FRecordID: array of Variant;
    FRecords: array of TdmpObjectBase;
    FSession: TSQLSession;
    FTable: string;
    procedure vAction_Execute(Sender : TObject);
    procedure BindingContext_Bind;
    procedure Action_CreateAll;
    procedure Action_UpdateDisplayText;
    procedure Action_FreeAll;
    procedure vGrid_DrawTheCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
        State: TGridDrawState);
    function GetIsDeleted(prmRecordNumber : integer): Boolean;
    function GetIsEdited: Boolean;
    function GetRecords(Index: Integer): TdmpObjectBase;
    procedure Record_New(prmObject : TdmpObjectBase ; prmInitializeNew : boolean =
        False);
    procedure Records_FetchFromDB;
    procedure Record_Refresh(prmRecord : integer = -1);
    procedure vGrid_SelectTheCell(Sender: TObject; ACol, ARow: Integer; var
        CanSelect: Boolean);
    procedure SetDisplayComponent(const Value: TComponent);
    procedure SetForeignKeyValue(const Value: Variant);
    procedure SetRecords(Index: Integer; const Value: TdmpObjectBase);
    procedure SetTable(const Value: string);
    procedure Action_Update;
    procedure BindingContext_UnBindAll;
    procedure Grid_DisplayUpdate;
    procedure Grid_DisplayUpdateSingleRow(prmRow : integer);
    procedure vRecord_Changed(Sender : TObject ; evFieldName : string);
    procedure Records_Clear;
    procedure vRecord_Scrolled(Index : integer);
  protected
  public
    constructor Create(prmSession : TSQLSession ; prmTableName : string ; prmPKey :
        string ; prmFKey : string ; prmValue : variant); overload;
    destructor Destroy; override;
    procedure RecordAdd; reintroduce;
    procedure BindingContextAddControl(prmName : String ; prmEdit : TComponent ;
        prmCaption : TComponent ; prmDisplay : TComponent ; prmLookup :
        TListOfItems = nil);
    procedure BindingContextLinkActions(FButtons : array of TRzButton ; prmType :
        integer = 0);
    procedure BindingContextAddGridColumns(prmColumns : Array of String);
    procedure BindingContextUnbind;
    function GetNewObject: TdmpObjectBase; virtual;
    procedure Load;
    procedure RefreshAll;
    procedure RefreshDisplay;
    property Color_AlternateRow: TColor read FColor_AlternateRow write
        FColor_AlternateRow;
    property RecordsCount: Integer read FRecordsCount;
    property RecordsCurrent: Integer read FRecordsCurrent;
    property Color_FontDeleteRow: TColor read FColor_FontDeleteRow write
        FColor_FontDeleteRow;
    property DisplayComponent: TComponent read FDisplayComponent write
        SetDisplayComponent;
    property ForeignKey: string read FForeignKey write FForeignKey;
    property ForeignKeyValue: Variant read FForeignKeyValue write
        SetForeignKeyValue;
    property PrimaryKey: string read FPrimaryKey write FPrimaryKey;
    property Records[Index: Integer]: TdmpObjectBase read GetRecords write
        SetRecords;
    property Session: TSQLSession read FSession write FSession;
    property Table: string read FTable write SetTable;
  published
    property OnScroll: TObjectAfterScroll read FOnScroll write FOnScroll;
  end;

  TSQLBuilderField = class(TObject)
  private
    FAlias: string;
    FCalculation: ECalculation;
    FDisplayInQuery: Boolean;
    FFieldName: string;
    FOperatorCount: Integer;
    FOperators: array of string;
    FParameterCount: Integer;
    FParameterNames: array of string;
    FParameters: array of Variant;
    FSortDesc: Boolean;
    FSortIndex: Integer;
    FSQLOrder: Integer;
    FTable: string;
    FValue: Variant;
    procedure AddOperator(prvOperator : string);
    procedure AddParameter(prvParam : Variant);
    function GetOperator(Index: Integer): string;
    function GetParameter(Index: Integer): Variant;
    function GetParameterName(Index: Integer): string;
    procedure SetOperator(Index: Integer; const Value: string);
    procedure SetParameter(Index: Integer; const Value: Variant);
    procedure SetParameterName(Index: Integer; const Value: string);
    function ToStringGroupBy: string;
    function ToStringHaving: string;
    function ToStringSelect: string;
    function ToStringSort: string;
    function ToStringWhere: string;
    function ToStringUpdate: string;
    function ToStringInsert: string;
  public
    constructor Create(prmTableName : string ; prmFieldName : string ;  prmAlias :
        string ; prmParameter : array of Variant ; prmOperator : array of string  ;
        prmCalculation : ECalculation ; prmDisplay : Boolean); overload;
    procedure AddParameters(prmParameter : array of Variant ; prmOperator : array
        of string);
    procedure Clear;
    function ToString(prmTypeOfString : integer = 0): string;
    property Alias: string read FAlias write FAlias;
    property Calculation: ECalculation read FCalculation write FCalculation;
    property DisplayInQuery: Boolean read FDisplayInQuery write FDisplayInQuery;
    property FieldName: string read FFieldName write FFieldName;
    property Operator[Index: Integer]: string read GetOperator write SetOperator;
    property OperatorCount: Integer read FOperatorCount;
    property Parameter[Index: Integer]: Variant read GetParameter write
        SetParameter;
    property ParameterCount: Integer read FParameterCount;
    property ParameterName[Index: Integer]: string read GetParameterName write
        SetParameterName;
    property SortDesc: Boolean read FSortDesc write FSortDesc;
    property SortIndex: Integer read FSortIndex write FSortIndex;
    property SQLOrder: Integer read FSQLOrder write FSQLOrder;
    property Table: string read FTable write FTable;
    property Value: Variant read FValue write FValue;
  end;

  TSQLBuilder = class(TObject)
  private
    FFieldCount: Integer;
    FFieldList: array of TSQLBuilderField ;
    FParameterPrefix: string;
    FPreBuildSQL: string;
    FprivateFields: array of RFieldDefs;
    FSQLGroup: array[0..6] of string;
    FSQLType: ESQLType;
    FTable: string;
    FToString: string;
    function BuildSQL: string;
    function GetFieldList: string;
    function GetFieldInsertParameters: string;
    function GetFieldUpdateList: string;
    function GetFieldSortList: string;
    function GetGroupByList: string;
    function GetParameterList(const prmType : integer): string;
    function GetSQLField(Index : string): TSQLBuilderField; virtual;
    procedure InsertField(prmNewField : TSQLBuilderField);
    procedure ParseFieldName(const prmFieldName : string ; var prmField :
        RFieldDefs);
    procedure ParseSQL;
    procedure SetSQLField(Index : string; const Value: TSQLBuilderField); virtual;
  public
    constructor Create(prmTableName : string ; prmSQLType : ESQLType = stSelect);
    destructor Destroy; override;
    procedure AddField(prmTableName : string ;  prmFieldName : string ;  prmAlias :
        string ; prmParameter : array of Variant ; prmOperator : array of string  ;
        prmCalculation : ECalculation ; prmParamOnly : Boolean); overload;
    procedure AddFields(prmFieldList : array of string);
    procedure AddSQL(prmSQL : string);
    procedure Clear;
    procedure Clear_Parameters;
    procedure Clear_FieldValues;
    procedure Clear_SortOrder;
    function ToString: string;
    property FieldCount: Integer read FFieldCount;
    property ParameterPrefix: string read FParameterPrefix;
    property SQLField[Index : string]: TSQLBuilderField read GetSQLField write
        SetSQLField;
    property SQLType: ESQLType read FSQLType write FSQLType;
    property Table: string read FTable write FTable;
  end;

  TPropertyQrySQLBuilder = class(TSQLBuilder)

  private
    FADOQuery: TADOQuery;
    FProperties: ListOfFields;
    function GetFieldIndex(const prmFieldName : string): Integer;
  public
    constructor Create(const prmSQLSession : TSQLSession ; const prmTableName :
        string; var prmFields : ListOfFields ; prmSQLType : ESQLType = stSelect);
    destructor Destroy; override;
    procedure AddProperties(const prmProperties : ListOfFields);
    function Execute: Integer;
  end;

  TSessionBase = class(TObject)
  private
    ConnectionObject: TADOConnection;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TSQLSession = class(TSessionBase)
  private
    FDB: string;
    FPassword: string;
    FServer: string;
    FUsername: string;
    function GetThisConnection: TADOConnection;
    procedure SetDB(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetServer(const Value: string);
    procedure SetupConnection;
    procedure SetUsername(const Value: string);
  public
    constructor Create(const prmDB : string ; const prmServer : string ; const
        prmUser : string = '' ; const prmPassword : string = ''); overload;
    destructor Destroy; override;
    function GetConnectionStringSQL: string;
    function GetConnectionStringSSPI: string;
    property DB: string read FDB write SetDB;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property ThisConnection: TADOConnection read GetThisConnection;
    property Username: string read FUsername write SetUsername;
  end;

  TListOfLists = class(TObject)
  private
    FDBConnectionString: string;
    FListCount: Integer;
    FLists: array of TListOfItems;
    function GetListByName(Index : string): TListOfItems;
    function GetListByNumber(Index: Integer): TListOfItems;
    procedure SetListByName(Index : string; const Value: TListOfItems);
    procedure SetListByNumber(Index: Integer; const Value: TListOfItems);
  protected
  public
    constructor Create(prmDBConnection : string);
    destructor Destroy; override;
    procedure ListCreate(const prmName : string ; prmGroup : integer ; prmTableName
        : string = ''; prmFieldName : string =''; prmKeyField : string = '' ;
        prmWhere : string = '' ; prmSortBy : string = '' ; prmDistinct : boolean =
        False); overload;
    procedure Refresh;
    property DBConnectionString: string read FDBConnectionString write
        FDBConnectionString;
    property ListByName[Index : string]: TListOfItems read GetListByName write
        SetListByName;
    property ListByNumber[Index: Integer]: TListOfItems read GetListByNumber write
        SetListByNumber;
    property ListCount: Integer read FListCount;
  end;

  TListOfItems = class(TObject)
  private
    FConnection: string;
    FDBList: Boolean;
    FDistinct: Boolean;
    FFieldName: string;
    FGroup: Integer;
    FKeyField: string;
    FKeyList: array of Variant;
    FListOf: TStringList;
    FLoading: Boolean;
    FName: string;
    FOnRefresh: TListOfChanged;
    FSortBy: string;
    FTableName: string;
    FWhere: string;
    procedure AddKeyItem(const prmKeyItem : variant);
    procedure GetDBListOf;
    function GetSQL: string;
  public
    constructor Create(const prmName : string ; prmGroup : integer ;
        prmConnectionString : string = ''; prmTableName : string = ''; prmFieldName
        : string =''; prmKeyField : string = '' ; prmWhere : string = '' ;
        prmSortBy : string = '' ; prmDistinct : boolean = False);
    destructor Destroy; override;
    procedure Clear;
    function DisplayValueGet(const prmKeyValue : Variant): string;
    function DisplayValueIndex(const prmDisplayValue : string): Integer;
    function KeyValueGet(const prmFieldValue : string): Variant; overload;
    function KeyValueGet(const prmFieldIndex : integer): Variant; overload;
    function KeyValueIndex(const prmKeyValue : Variant): Integer;
    procedure ListAddValue(prmValues : array of Variant; prmDisplay : array of
        string);
    procedure Refresh;
    property DBList: Boolean read FDBList;
    property Group: Integer read FGroup;
    property ListOf: TStringList read FListOf;
    property Name: string read FName;
    property SQL: string read GetSQL;
  published
    property OnRefresh: TListOfChanged read FOnRefresh write FOnRefresh;
  end;


implementation


  function StringContains(const AText, ASubText: string): Boolean;
  begin
    Result := AnsiPos(ASubText, AText) > 0;
  end;

  function StringStartPointOf(const AText, ASubText: string): Integer;
  begin
    Result := AnsiPos(ASubText, AText);
  end;

  function GetFirstPositionOfStr(const sTypeOf : string; const sStr : string):
      Integer;
  begin
  Result := 0;
  if StringContains(sTypeOf , sStr) then
      Result := StringStartPointOf(sTypeOf, sStr);
  end;

  function GetString(const pString : string;  pStart, pEnd : integer): string;
  begin
    Result := Copy(pString, pStart, (pEnd - pStart) );
  end;

  function GetLastPositionOfStr(const sTypeOf : string; const sStr : string):
      Integer;
  var
    newLine : string;
    k       : integer;
    counter : integer;

  begin
  newLine := sTypeOf;
  k := StringStartPointOf(newLine, sStr);
  counter := 0;
  while k > 0 do
    begin
    counter := counter + k + Length(sStr);
    newLine   := GetString(newLine, k + Length(sStr), Length(newLine)+1);
    k := StringStartPointOf(newLine, sStr);
    end;
  if counter > 0 then counter := counter - Length(sStr);
  Result := counter;
  end;

  function StringOccurs(const AText, ASubText: string): Integer;
  var
    newLine : string;
    i, counter,prvStrLen       : integer;
  begin
  counter   := 0;
  newLine := AText;
  prvStrLen := Length(newLine) + 1;
  if GetFirstPositionOfStr(newLine, ASubText) <> 0 then
    begin
    while i > 0 do
      begin
      newLine   := GetString(newLine, i + Length(ASubText), prvStrLen);
      prvStrLen := Length(newLine) + 1;
      i := GetFirstPositionOfStr(newLine, ASubText); // repeat until all fields have been assessed
      inc(counter);
      end;
    end;
  Result := counter;
  end;

procedure AddStr(var prmExist : string ; const prmNew : string; const
    prmSeperator : string = ' ');
begin
  prmExist := prmExist + prmSeperator + prmNew;
end;

constructor TdmpObjectBase.Create(prmSession : TSQLSession ; prmTableName :
    string);
begin
  inherited Create;
  FTableName  := prmTableName;
  FSession          := prmSession;
  FPropertyCount    := 0;
  FState            := osCreated;
  FBusyChanging     := False;
//  FObjectAutoSave   := True;
  FIsDeleted        := False;
  FIsNew            := True;

  FOID := TdmpGUIDProperty.Create('ID','ID'); // Child must override
  PropertiesAdd(FOID);

end;

destructor TdmpObjectBase.Destroy;
var
  i :integer;
begin
  if Assigned(FTableFields) then
    for i := low(FTableFields) to high(FtableFields) do
      begin
      FTableFields[i].OnChanged := nil;
      FTableFields[i].Free;
      end;
  FTableFields := nil;
  inherited Destroy;
end;

procedure TdmpObjectBase.CalculateObjectValue(const prmPropertyName : string);
begin
  // TODO -cMM: TdmpObjectBase.CalculateObjectValue default body inserted
end;

procedure TdmpObjectBase.Undo;
begin

  //  User canceled, fetch original values
  Data_Fetch;

  // Force the object into edit mode
  ForcePropertyChangedValue(False);

  PropertiesFreeze;
  CalculateObjectValue('');// Throw the event before updating any display
  if Assigned(FOnChanged) then FOnChanged(self, '');
  PropertiesUnfreeze;

end;

procedure TdmpObjectBase.Changed_Value(Sender : TObject ; prmFieldName :
    string);
begin


  PropertiesFreeze;
  CalculateObjectValue(prmFieldName);// Throw the event before updating any display
  FState := osEdited;
  if Assigned(FOnChanged) then FOnChanged(self, prmFieldName);
  PropertiesUnfreeze;
  Display_Refresh(prmFieldName);


//    raise Exception.Create('Changes have been made');
end;

procedure TdmpObjectBase.Data_Commit;
var
  SQL         : TPropertyQrySQLBuilder;
begin

  try
    try

    if FIsNew then
      SQL := TPropertyQrySQLBuilder.Create(FSession, FTableName, FTableFields, stInsert)
      else
      SQL := TPropertyQrySQLBuilder.Create(FSession, FTableName, FTableFields, stUpdate);
    if FIsDeleted then
      SQL := TPropertyQrySQLBuilder.Create(FSession, FTableName, FTableFields, stDelete);

    SQL.Execute;
    SQL.Free;
    FIsNew  := False;
    FState      := osSaved;
    ForcePropertyChangedValue(False);
    Saved(Self);
    except
      on E : Exception do raise Exception.Create(E.Message);
    end;
  finally
    Display_Refresh;
  end;
end;

procedure TdmpObjectBase.Data_Fetch;
var
  SQL         : TPropertyQrySQLBuilder;
  i : integer;
begin

  try
    try
    if FTableFields = nil then raise Exception.Create('APPLICATION ERROR: No fields to perform query on.');
    SQL := TPropertyQrySQLBuilder.Create(FSession, FTableName, FTableFields);
    FIsNew := SQL.Execute = 0;
    if FIsNew then FState := osNew else FState := osLoaded;
    if FIsNew then FOID.Changed := True;
    FIsDeleted := False;
    SQL.Free;
    if FIsNew then
      for i := 0 to FPropertyCount - 1 do
        FTableFields[i].LoadDefault;  
    except
      on E : Exception do raise Exception.Create(E.Message);
    end;
  finally
    Display_Refresh;
  end;
end;

procedure TdmpObjectBase.Delete;
begin

  // Stop events from firing.
  PropertiesFreeze;


  FIsDeleted     := True;
  FFormerState      := FState;
  FState            := osDeleted;
  ForcePropertyChangedValue(True);

  //  CalculateObjectValue('');// Throw the event before updating any display
  //
  if Assigned(FOnChanged) then FOnChanged(self, '');

  // Restart events
  PropertiesUnfreeze;

end;

procedure TdmpObjectBase.Display_Refresh(prmPropertyDontRefresh : string = '');
var
  i :integer;
begin

  if FTableFields <> nil then
    if High(FTableFields) > 0 then
      for i := low(FTableFields) to high(FTableFields) do
        begin
        // Do  this seperatly to stop updating the edit erea while updating
        // alternate displays
        if prmPropertyDontRefresh <> FTableFields[i].FieldName then
          FTableFields[i].RefreshDisplay;
        FTableFields[i].RefreshDisplayLabel;
        end;
end;

procedure TdmpObjectBase.ForcePropertyChangedValue(prmEditedValue : boolean);
var
  i: integer;
begin
  if FTableFields <> nil then
    if High(FTableFields) > 0 then
      for i := low(FTableFields) to high(FTableFields) do
        FTableFields[i].Changed := prmEditedValue;
end;

function TdmpObjectBase.GetIsEdited: Boolean;
var
  i :integer;
begin

  Result := False;
  for i := low(FTableFields) to high(FTableFields) do
    if FTableFields[i].Changed then Result := True;

end;

function TdmpObjectBase.GetPropertyByFieldName(Index : string):
    TdmpPropertyBase;
const                                                                  (*const*)(*...........................................*)
  ERR01 = 'APPLICATION ERROR : No property available.' + #13;
  ERR02 = 'APPLICATION ERROR : Property FieldName %s not found.' + #13;
var (*.................................................................*)(*var*)(*...........................................*)
  i       : integer;
  found   : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  for i := 0 to FPropertyCount - 1 do
    if FTableFields[i].FieldName = Index then
      found := i;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));               // Passed variable was not found, raise exception.
  Result := FTableFields[found];

end; (*................................................................*)(*end*)(*...........................................*)

function TdmpObjectBase.GetPropertyByName(Index : string): TdmpPropertyBase;
const                                                                  (*const*)(*...........................................*)
  ERR01 = 'APPLICATION ERROR : No property available.' + #13;
  ERR02 = 'APPLICATION ERROR : Property FieldName %s not found.' + #13;
var (*.................................................................*)(*var*)(*...........................................*)
  i       : integer;
  found   : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  for i := 0 to FPropertyCount - 1 do
    if FTableFields[i].Name = Index then
      found := i;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));               // Passed variable was not found, raise exception.
  Result := FTableFields[found];

end; (*................................................................*)(*end*)(*...........................................*)

function TdmpObjectBase.GetPropertyByIndex(Index: Integer): TdmpPropertyBase;
const                                                                  (*const*)(*...........................................*)
  ERR01 = 'APPLICATION ERROR : No property available.' + #13;
  ERR02 = 'APPLICATION ERROR : Property FieldName %s not found.' + #13;
var (*.................................................................*)(*var*)(*...........................................*)
  found   : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  if (Index <= FPropertyCount) or (Index > 0) then found := Index;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));               // Passed variable was not found, raise exception.
  Result := FTableFields[found - 1];

end; (*................................................................*)(*end*)(*...........................................*)

procedure TdmpObjectBase.Load;
begin
  Data_Fetch;
end;

procedure TdmpObjectBase.New;
var
  i: Integer;
begin

  if FTableFields <> nil then
    if High(FTableFields) > 0 then
      for i := low(FTableFields) to high(FTableFields) do
        FTableFields[i].LoadDefault;
  FOID.Parameter := FOID.Value;
  FIsNew := True;
  Display_Refresh;

end;

procedure TdmpObjectBase.PropertiesAdd(prmProperty : TdmpPropertyBase);
begin

  SetLength(FTableFields, FPropertyCount + 1);
  FTableFields[ FPropertyCount ] := prmProperty;
  prmProperty.OnChanged := Changed_Value;
  inc(FPropertyCount);

end;

procedure TdmpObjectBase.PropertiesFreeze;
var
  i :integer;
begin
  if FTableFields <> nil then
    if High(FTableFields) > 0 then
      for i := low(FTableFields) to high(FTableFields) do
        FTableFields[i].FreezeEvents := True;
end;

procedure TdmpObjectBase.PropertiesUnfreeze;
var
  i :integer;
begin
  if FTableFields <> nil then
    if High(FTableFields) > 0 then
      for i := low(FTableFields) to high(FTableFields) do
        FTableFields[i].FreezeEvents := False;
end;

procedure TdmpObjectBase.RemoveBinding;
var
  i: Integer;
begin

  if Assigned(FTableFields) then
    if FTableFields <> nil then
      if High(FTableFields) > 0 then
        for i := low(FTableFields) to high(FTableFields) do
          FTableFields[i].DataBindingClear;
          
end;

procedure TdmpObjectBase.Save;
begin
  Data_Commit;
end;

procedure TdmpObjectBase.Saved(Sender : TObject);
begin
  if Assigned(FOnAfterSave) then FOnAfterSave(Sender);
end;

procedure TdmpObjectBase.SetPropertyByFieldName(Index : string; const Value:
    TdmpPropertyBase);
const
  ERR01 = 'APPLICATION ERROR : No fields available.' + #13;
  ERR02 = 'APPLICATION ERROR : FieldName %s not found.' + #13;
var
  i       : integer;
  found   : integer;
begin

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an

  found := -1;
  for i := 0 to FPropertyCount - 1 do
    if FTableFields[i].FieldName = Index then
      found := i;

  if found = -1 then raise Exception.Create(Format(ERR02, [Index]));
  FTableFields[found] := Value;

end;

procedure TdmpObjectBase.SetPropertyByName(Index : string; const Value:
    TdmpPropertyBase);
const
  ERR01 = 'APPLICATION ERROR : No fields available.' + #13;
  ERR02 = 'APPLICATION ERROR : FieldName %s not found.' + #13;
var
  i       : integer;
  found   : integer;
begin

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an

  found := -1;
  for i := 0 to FPropertyCount - 1 do
    if FTableFields[i].Name = Index then
      found := i;

  if found = -1 then raise Exception.Create(Format(ERR02, [Index]));
  FTableFields[found] := Value;

end;

procedure TdmpObjectBase.SetPropertyByIndex(Index: Integer; const Value:
    TdmpPropertyBase);
const
  ERR01 = 'APPLICATION ERROR : No fields available.' + #13;
  ERR02 = 'APPLICATION ERROR : FieldName %s not found.' + #13;
var
  found   : integer;
begin

  if FPropertyCount = 0 then raise Exception.Create(ERR01);                     // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  if (Index <= FPropertyCount) or (Index > 0) then found := Index;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));           // Passed variable was not found, raise exception.
  FTableFields[found - 1 ] := Value;

end;

procedure TdmpObjectBase.UnDelete;
begin

  PropertiesFreeze;

  // Force the object into edit mode
//  ForcePropertyChangedValue(True);
  FIsDeleted := False;
  FState        := FFormerState;
  if Assigned(FOnChanged) then FOnChanged(self, '');
  PropertiesUnfreeze;
end;

constructor TdmpPropertyBase.Create;
begin
  inherited Create;
  FFreezeEvents     := False;
  FChanged          := False;
  FStringListValue  := TStringList.Create;
  FCaption          := '';
  FAlignment        := taLeftJustify;
  FEncrypt          := False;
//  FSecurityUse      := True;
  // How secure must this property be [0 low ..3 high]
  FSecurityCurrentAccess  := 2;
  FSecurityAccessLevel    := 2; //Max Level, so nobody gets in by mistake
//  FSecurityComponent
end;

destructor TdmpPropertyBase.Destroy;
begin
  if Assigned(FSecurityComponent) then FSecurityComponent.Free;
  FStringListValue.Free;
  inherited;
end;

procedure TdmpPropertyBase.BindComponentToProperty;
var
  i: Integer;
begin

//  FState := psBindingComponent;

  ComponentEventsUnBind; // dont want the compponent to fire another event
  BindLookupListToProperty; // Assign any lookuplist fields

  Display_Label;
  Display_Access;

  if DataBindComponentType = 'TEdit' then
    (DataBindComponent as TEdit).Text := VarToStrDef(FValue, '');

  if DataBindComponentType = 'TRzEdit' then
    (DataBindComponent as TRzEdit).Text := VarToStrDef(FValue, '');
  if DataBindComponentType = 'TRzMaskEdit' then
    (DataBindComponent as TRzMaskEdit).Text := VarToStrDef(FValue, '');
  if DataBindComponentType = 'TRzButtonEdit' then
    (DataBindComponent as TRzButtonEdit).Text := VarToStrDef(FValue, '');
  if DataBindComponentType = 'TRzDateTimeEdit' then
    (DataBindComponent as TRzDateTimeEdit).Date := FValue;
  if DataBindComponentType = 'TDateTimePicker' then
    (DataBindComponent as TDateTimePicker).DateTime := FValue;
  if DataBindComponentType = 'TRzNumericEdit' then
    (DataBindComponent as TRzNumericEdit).Value := FValue;
  if DataBindComponentType = 'TRzSpinEdit' then
    (DataBindComponent as TRzSpinEdit).Value := FValue;
  if DataBindComponentType = 'TRzSpinner' then
    (DataBindComponent as TRzSpinner).Value := FValue;
  if DataBindComponentType = 'TRzTrackBar' then
    (DataBindComponent as TRzTrackBar).Position := FValue;
  if DataBindComponentType = 'TRzCheckBox' then
    (DataBindComponent as TRzCheckBox).Checked := FValue;
  if DataBindComponentType = 'TRzMemo' then
    (DataBindComponent as TRzMemo).Text := FValue;


  if DataBindComponentType = 'TListBox' then
    begin
    i := -1;
    if Assigned(FLookupList) then i := FLookupList.KeyValueIndex(FValue);
//    i := (DataBindComponent as TListBox).Items.IndexOf(VarToStrDef(FValue,''));
    if i <> -1 then
      (DataBindComponent as TListBox).ItemIndex := i
      else
      (DataBindComponent as TListBox).ItemIndex := 0;
    end;

  if DataBindComponentType = 'TRzListBox' then
    begin
    i := -1;
    if Assigned(FLookupList) then i := FLookupList.KeyValueIndex(FValue);
//    i := (DataBindComponent as TRzListBox).Items.IndexOf(VarToStrDef(FValue,''));
    if i <> -1 then
      (DataBindComponent as TRzListBox).ItemIndex := i
      else
      (DataBindComponent as TRzListBox).ItemIndex := 0;
    end;

  if DataBindComponentType = 'TRzComboBox' then
    begin
//    i := (DataBindComponent as TRzComboBox).Items.IndexOf(VarToStrDef(FValue,''));
    i := -1;
    if Assigned(FLookupList) then i := FLookupList.KeyValueIndex(FValue);
    if i <> -1 then
      (DataBindComponent as TRzComboBox).ItemIndex := i
      else
      (DataBindComponent as TRzComboBox).ItemIndex := 0;
    end;

  if DataBindComponentType = 'TComboBox' then
    begin
//    i := (DataBindComponent as TRzComboBox).Items.IndexOf(VarToStrDef(FValue,''));
    i := -1;
    if Assigned(FLookupList) then i := FLookupList.KeyValueIndex(FValue);
    if i <> -1 then
      (DataBindComponent as TComboBox).ItemIndex := i
      else
      (DataBindComponent as TComboBox).ItemIndex := 0;
    end;

  ComponentEventsBind;
//  FState := psCreated;

end;

procedure TdmpPropertyBase.BindLookupListToProperty;
begin

  if Assigned(FLookupList) then
    begin

    if DataBindComponentType = 'TRzListBox' then
      begin
      (DataBindComponent as TRzListBox).Items.Clear;
      (DataBindComponent as TRzListBox).Items.Assign(FLookupList.ListOf);
      end;

    if DataBindComponentType = 'TListBox' then
      begin
      (DataBindComponent as TListBox).Items.Clear;
      (DataBindComponent as TListBox).Items.Assign(FLookupList.ListOf);
      end;

    if DataBindComponentType = 'TRzComboBox' then
      begin
      (DataBindComponent as TRzComboBox).Items.Clear;
      (DataBindComponent as TRzComboBox).Items.Assign(FLookupList.ListOf);
      end;

    if DataBindComponentType = 'TComboBox' then
      begin
      (DataBindComponent as TComboBox).Items.Clear;
      (DataBindComponent as TComboBox).Items.Assign(FLookupList.ListOf);
      end;

    end;

end;

procedure TdmpPropertyBase.BindPropertyToComponent;
var
  i: Integer;
begin


  ComponentEventsUnBind;

  // in descendant  if DataBindComponentType = 'TRzMemo' then
  try

  if DataBindComponentType = 'TEdit' then
    begin
    if FFieldType = varString then FValue := Trim((DataBindComponent as TEdit).Text);
    if FFieldType = varInteger then FValue := StrToInt((DataBindComponent as TEdit).Text);
    if FFieldType = varDouble then FValue := StrToFloat((DataBindComponent as TEdit).Text);
    if FFieldType = varCurrency then FValue := StrToFloat((DataBindComponent as TEdit).Text);
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TListBox' then
    begin
    i := (DataBindComponent as TListBox).ItemIndex;
    FValue := (DataBindComponent as TListBox).Items[i];
    if FFieldType = varInteger then FValue := StrToInt(FValue);
    if FFieldType = varDouble then FValue := StrToFloat(FValue);
    if FFieldType = varCurrency then FValue := StrToFloat(FValue);
    Changed_PropertyValue;
    end;

  if (DataBindComponentType = 'TRzComboBox') or
     (DataBindComponentType = 'TComboBox') then
    begin
    if (DataBindComponentType = 'TRzComboBox') then
      i := (DataBindComponent as TRzComboBox).ItemIndex
      else if (DataBindComponentType = 'TComboBox') then
      i := (DataBindComponent as TComboBox).ItemIndex;

    FValue := FLookupList.KeyValueGet(i);
    Changed_PropertyValue;
    end;


  if DataBindComponentType = 'TRzEdit' then
    begin
    if FFieldType = varString then FValue := Trim((DataBindComponent as TRzEdit).Text);
    if FFieldType = varInteger then FValue := StrToInt((DataBindComponent as TRzEdit).Text);
    if FFieldType = varDouble then FValue := StrToFloat((DataBindComponent as TRzEdit).Text);
    if FFieldType = varCurrency then FValue := StrToFloat((DataBindComponent as TRzEdit).Text);
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzMemo' then
    begin
    if FFieldType = varString then FValue := (DataBindComponent as TRzMemo).Text;
    Changed_PropertyValue;
    end;


  if DataBindComponentType = 'TRzMaskEdit' then
    begin
    if FFieldType = varString then FValue := (DataBindComponent as TRzMaskEdit).Text;
    if FFieldType = varInteger then FValue := StrToInt((DataBindComponent as TRzMaskEdit).Text);
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzButtonEdit' then
    begin
    if FFieldType = varString then FValue := (DataBindComponent as TRzButtonEdit).Text;
    if FFieldType = varInteger then FValue := StrToInt((DataBindComponent as TRzButtonEdit).Text);
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzDateTimeEdit' then
    begin
    if FFieldType = varDate then FValue := (DataBindComponent as TRzDateTimeEdit).Date;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TDateTimePicker' then
    begin
    if FFieldType = varDate then FValue := (DataBindComponent as TDateTimePicker).DateTime;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzNumericEdit' then
    begin
    if FFieldType = varInteger then FValue := (DataBindComponent as TRzNumericEdit).IntValue;
    if FFieldType = varDouble then FValue := (DataBindComponent as TRzNumericEdit).Value;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzSpinEdit' then
    begin
    if FFieldType = varInteger then FValue := (DataBindComponent as TRzSpinEdit).IntValue;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzSpinner' then
    begin
    if FFieldType = varInteger then FValue := (DataBindComponent as TRzSpinner).Value;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzTrackBar' then
    begin
    if FFieldType = varDouble then FValue := (DataBindComponent as TRzTrackBar).Position;
    if FFieldType = varInteger then FValue := (DataBindComponent as TRzTrackBar).Position;
    Changed_PropertyValue;
    end;

  if DataBindComponentType = 'TRzCheckBox' then
    begin
    if FFieldType = varBoolean then FValue := (DataBindComponent as TRzCheckBox).Checked;
    Changed_PropertyValue;
    end;

  except

  end;

  ComponentEventsBind;
//  FState := psCreated;

end;

procedure TdmpPropertyBase.Changed_ComponentValue(Sender : TObject);
begin
//  if FState <> psBindingProperty then BindPropertyToComponent;
  Inherited;
  BindPropertyToComponent;
  if FFieldName <> '' then FChanged := True;
end;

procedure TdmpPropertyBase.Changed_KeyUp(Sender: TObject; var Key: Word; Shift:
    TShiftState);
begin
//  if FState <> psBindingProperty then BindPropertyToComponent;
  Inherited;
  BindPropertyToComponent;
  if FFieldName <> '' then FChanged := True;
end;

procedure TdmpPropertyBase.Changed_PropertyValue;
begin

  if FFieldName <> '' then FChanged := True;
  if Assigned(FOnChanged) then FOnChanged(self, FName);

end;

procedure TdmpPropertyBase.ComponentEventsBind;
begin

  if DataBindComponentType = 'TEdit' then
    (DataBindComponent as TEdit).OnChange := Changed_ComponentValue;

  if DataBindComponentType = 'TRzComboBox' then
    (DataBindComponent as TRzComboBox).OnChange := Changed_ComponentValue;

  if DataBindComponentType = 'TRzEdit' then
    (DataBindComponent as TRzEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzMaskEdit' then
    (DataBindComponent as TRzMaskEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzButtonEdit' then
    (DataBindComponent as TRzButtonEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzDateTimeEdit' then
    (DataBindComponent as TRzDateTimeEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TDateTimePicker' then
    (DataBindComponent as TDateTimePicker).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzNumericEdit' then
    (DataBindComponent as TRzNumericEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzSpinEdit' then
    (DataBindComponent as TRzSpinEdit).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzSpinner' then
    (DataBindComponent as TRzSpinner).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzTrackBar' then
    (DataBindComponent as TRzTrackBar).OnChange := Changed_ComponentValue;
  if DataBindComponentType = 'TRzCheckBox' then
    (DataBindComponent as TRzCheckBox).OnClick := Changed_ComponentValue;
  if DataBindComponentType = 'TRzMemo' then
    (DataBindComponent as TRzMemo).OnClick := Changed_ComponentValue;
  if DataBindComponentType = 'TRzMemo' then
    (DataBindComponent as TRzMemo).OnKeyUp := Changed_KeyUp;
  if DataBindComponentType = 'TListBox' then
    (DataBindComponent as TListBox).OnClick := Changed_ComponentValue;
  if DataBindComponentType = 'TListBox' then
    (DataBindComponent as TListBox).OnKeyUp := Changed_KeyUp;

end;

procedure TdmpPropertyBase.ComponentEventsUnBind;
begin

  if DataBindComponentType = 'TEdit' then
    (DataBindComponent as TEdit).OnChange := Nil;

  if DataBindComponentType = 'TRzComboBox' then
    (DataBindComponent as TRzComboBox).OnChange := Nil;
  if DataBindComponentType = 'TRzEdit' then
    (DataBindComponent as TRzEdit).OnChange := Nil;
  if DataBindComponentType = 'TRzMaskEdit' then
    (DataBindComponent as TRzMaskEdit).OnChange := Nil;
  if DataBindComponentType = 'TRzButtonEdit' then
    (DataBindComponent as TRzButtonEdit).OnChange := Nil;
  if DataBindComponentType = 'TRzDateTimeEdit' then
    (DataBindComponent as TRzDateTimeEdit).OnChange := Nil;
  if DataBindComponentType = 'TDateTimePicker' then
    (DataBindComponent as TDateTimePicker).OnChange := Nil;
  if DataBindComponentType = 'TRzNumericEdit' then
    (DataBindComponent as TRzNumericEdit).OnChange := Nil;
  if DataBindComponentType = 'TRzSpinEdit' then
    (DataBindComponent as TRzSpinEdit).OnChange := Nil;
  if DataBindComponentType = 'TRzSpinner' then
    (DataBindComponent as TRzSpinner).OnChange := Nil;
  if DataBindComponentType = 'TRzTrackBar' then
    (DataBindComponent as TRzTrackBar).OnChange := Nil;
  if DataBindComponentType = 'TRzCheckBox' then
    (DataBindComponent as TRzCheckBox).OnClick := Nil;
  if DataBindComponentType = 'TRzCheckBox' then
    (DataBindComponent as TRzCheckBox).OnKeyUp := Nil;
  if DataBindComponentType = 'TRzMemo' then
    (DataBindComponent as TRzMemo).OnClick := Nil;
  if DataBindComponentType = 'TRzMemo' then
    (DataBindComponent as TRzMemo).OnKeyUp := Nil;
  if DataBindComponentType = 'TListBox' then
    (DataBindComponent as TListBox).OnClick := Nil;
  if DataBindComponentType = 'TListBox' then
    (DataBindComponent as TListBox).OnKeyUp := Nil;

end;

procedure TdmpPropertyBase.DataBinding(prmComponent : TComponent);
begin


  SetupSecurityComponent(prmComponent);
  DataBindComponent             := prmComponent;
  DataBindComponentType         := prmComponent.ClassName;
  DataBindComponentLabel        := nil;
  DataBindComponentLabelType    := '';
  DataBindComponentDisplay      := nil;
  DataBindComponentDisplayType  := '';

  BindComponentToProperty;
  ComponentEventsBind;
  Display_Caption;

end;

procedure TdmpPropertyBase.DataBinding(prmComponent : TComponent ;
    prmLabelComponent : TComponent);
begin

  SetupSecurityComponent(prmComponent);
  DataBindComponent             := prmComponent;
  DataBindComponentType         := prmComponent.ClassName;

  if Assigned(prmLabelComponent) then
    begin
    DataBindComponentLabel        := prmLabelComponent;
    DataBindComponentLabelType    := prmLabelComponent.ClassName;
    end;

  DataBindComponentDisplay      := nil;
  DataBindComponentDisplayType  := '';

  BindComponentToProperty;
  ComponentEventsBind;
  Display_Caption;

end;

procedure TdmpPropertyBase.DataBinding(prmComponent : TComponent ;
    prmLabelComponent : TComponent ; prmDisplayComponent : TComponent ;
    prmLookList : TListOfItems = nil);
begin

  SetupSecurityComponent(prmComponent);
  DataBindComponent             := prmComponent;
  DataBindComponentType         := prmComponent.ClassName;
  FLookupList                   := prmLookList;

  if Assigned(prmLabelComponent) then
    begin
    DataBindComponentLabel        := prmLabelComponent;
    DataBindComponentLabelType    := prmLabelComponent.ClassName;
    end;

  if Assigned(prmDisplayComponent) then
    begin
    DataBindComponentDisplay      := prmDisplayComponent;
    DataBindComponentDisplayType  := prmDisplayComponent.ClassName;
    end;

  BindComponentToProperty;
  ComponentEventsBind;
  Display_Caption;

end;

procedure TdmpPropertyBase.DataBindingClear;
begin

  ComponentEventsUnBind;
  DataBindComponent             := nil;
  DataBindComponentType         := '';
  DataBindComponentLabel        := nil;
  DataBindComponentLabelType    := '';
  DataBindComponentDisplay      := nil;
  DataBindComponentDisplayType  := '';


end;

procedure TdmpPropertyBase.Display_Access;
begin

  if Assigned(FSecurityComponent) then
    begin
    FSecurityComponent.Caption    := VarToStrDef(FValue, '');
    FSecurityComponent.Alignment  := FAlignment;

    case FSecurityCurrentAccess of
      0:  begin
        FSecurityComponent.Caption := '<No Access>';
        FSecurityComponent.Visible := True;
        end;
      1:  begin
        if FSecurityAccessLevel = 4 then
          begin
          FSecurityComponent.Caption := '<No Access>';
          FSecurityComponent.Visible := True;
          end else
          FSecurityComponent.Visible := True;
        end;
      2:  begin
        if FSecurityAccessLevel = 4 then
          begin
          FSecurityComponent.Caption := '<No Access>';
          FSecurityComponent.Visible := True;
          end else
          if FSecurityAccessLevel > 2 then
            FSecurityComponent.Visible := True
            else
            FSecurityComponent.Visible := False;
        end;
      3:  begin
          FSecurityComponent.Visible := False;
        end;
      end;
    TWinControl(DataBindComponent).Visible := not FSecurityComponent.Visible;
    end;
end;

procedure TdmpPropertyBase.Display_Caption;
begin
  if DataBindComponentLabelType = 'TRzLabel' then
    (DataBindComponentLabel as TRzLabel).Caption := FCaption;
  if DataBindComponentLabelType = 'TLabel' then
    (DataBindComponentLabel as TLabel).Caption := FCaption;
end;

procedure TdmpPropertyBase.Display_Label;
var
  prvSecurityDisplay: string;
begin

  prvSecurityDisplay := VarToStrDef(FValue, '');

  case FSecurityCurrentAccess of
    0:  begin
        prvSecurityDisplay := '<No Access>';
        end;
    1:  begin
        if FSecurityAccessLevel = 4 then
          prvSecurityDisplay := '<No Access>';
        end;
    2:  begin
        if FSecurityAccessLevel = 4 then
          prvSecurityDisplay := '<No Access>';
        end;
    3:  begin
        end;
    end;

  if DataBindComponentDisplayType = 'TRzLabel' then
    with (DataBindComponentDisplay as TRzLabel) do
      begin
//      Alignment := FAlignment;
      Caption   := prvSecurityDisplay;
      end;
  if DataBindComponentDisplayType = 'TLabel' then
    with (DataBindComponentDisplay as TLabel) do
      begin
//      Alignment := FAlignment;
      Caption   := prvSecurityDisplay;
      end;
end;

function TdmpPropertyBase.GetComponentClass: string;
begin
  Result := DataBindComponentType;
end;

function TdmpPropertyBase.GetSecurityText: string;
begin
  // TODO -cMM: TdmpPropertyBase.GetSecurityText default body inserted
  Result := '';
end;

procedure TdmpPropertyBase.Load(const prmValue : variant);
var
  prvStr: string;
  encrpt: THashCode_1_0_0;
begin

  if FFieldType = varString then
    begin
    if FEncrypt then
      begin
      encrpt  := THashCode_1_0_0.Create;
      prvStr  := Trim(VarToStrDef(prmValue, ''));
      FValue  := encrpt.Decode(prvStr);
      encrpt.Free;
      end else
      FValue  := Trim(VarToStrDef(prmValue, ''));
    end else
    FValue := prmValue;

  FChanged := False;
end;

procedure TdmpPropertyBase.LoadDefault;
begin
  FValue := FDefault;  
end;

procedure TdmpPropertyBase.RefreshDisplay;
begin
  BindComponentToProperty;
end;

procedure TdmpPropertyBase.RefreshDisplayLabel;
begin
  Display_Label;
end;

function TdmpPropertyBase.Save: Variant;
var
  prvStr: string;
  encrpt: THashCode_1_0_0;
begin

  Result    := FValue;

  if FFieldType = varString then
    begin
    if FEncrypt then
      begin
      encrpt  := THashCode_1_0_0.Create;
      prvStr  := Trim(VarToStrDef(FValue, ''));
      prvStr  := encrpt.Encode(prvStr);
      Result  := prvStr;
      encrpt.Free;
      end else
      Result  := VarToStrDef(FValue, '');
    end else
    Result := FValue;


  FChanged  := False;
end;

procedure TdmpPropertyBase.SetSecurity(const prmAreaName : string ; const
    prmSecurityLevel : integer);
begin
  // TODO -cMM: TdmpPropertyBase.SetSecurity default body inserted
end;

procedure TdmpPropertyBase.SetupSecurityComponent(const prmComponent :
    TComponent);
begin
  FSecurityComponent := TLabel.Create(prmComponent.GetParentComponent);
  FSecurityComponent.Parent := TWinControl(prmComponent).Parent;
  FSecurityComponent.BringToFront;
  FSecurityComponent.AutoSize := False;
  FSecurityComponent.Visible := False;
  FSecurityComponent.Top := TWinControl(prmComponent).Top;
  FSecurityComponent.Left := TWinControl(prmComponent).Left;
  FSecurityComponent.Height := TWinControl(prmComponent).Height;
  FSecurityComponent.Width := TWinControl(prmComponent).Width;

end;

function TdmpPropertyBase.ToString: string;
begin
  Result := VarToStrDef(FValue, '<Null>');
end;

constructor TdmpStringProperty.Create(prmName : string ; prmFieldName : string
    ; prmCaption : string);
begin
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varString;
  FDefault      := 'New String';
  FName         := prmName;
end;

constructor TdmpStringProperty.Create(prmName : string ; prmFieldName : string);
begin
  inherited Create;
  FCaption      := prmFieldName;
  FFieldName    := prmFieldName;
  FDefault      := 'New String';
  FFieldType    := varString;
  FName         := prmName;
end;

function TdmpStringProperty.GetValue: string;
begin
  Result := VarToStrDef(FValue, '');
end;

procedure TdmpStringProperty.SetValue(const Value: string);
begin

  if FValue <> Value then
    begin
    FValue := Trim(Value);

    if not FFreezeEvents then
      begin
      RefreshDisplay;
      Changed_PropertyValue;
      end;
      
    end;

end;

constructor TdmpIntegerProperty.Create(prmName : string ; prmFieldName : string
    ; prmCaption : string ; prmDefValue : integer = 0);
begin
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varInteger;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;
end;

constructor TdmpIntegerProperty.Create(prmName : string ; prmFieldName : string
    ; prmDefValue : integer = 0);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmFieldName;
  FFieldType    := varInteger;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;

end;

function TdmpIntegerProperty.GetValue: Integer;
begin
  Result := FValue;
end;

procedure TdmpIntegerProperty.SetValue(const Value: Integer);
begin
  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;
end;

constructor TdmpDateTimeProperty.Create(prmName : string ; prmFieldName :
    string ; prmCaption : string);
begin
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varDate;
  FDefault      := Date;
  FName         := prmName;
  FValue        := FDefault;
end;

constructor TdmpDateTimeProperty.Create(prmName : string ; prmFieldName :
    string);
begin
  inherited Create;
  FCaption      := prmFieldName;
  FFieldName    := prmFieldName;
  FFieldType    := varDate;
  FDefault      := Date;
  FName         := prmName;
  FValue        := FDefault;
end;

function TdmpDateTimeProperty.GetValue: TDateTime;
begin
  Result := FValue;
end;

procedure TdmpDateTimeProperty.SetValue(const Value: TDateTime);
begin

  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;

end;

constructor TdmpCurrencyProperty.Create(prmName : string ; prmFieldName :
    string ; prmCaption : string ; prmDefValue : double = 0);
begin
  // TODO -cMM: TdmpStringProperty.Create default body inserted
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varCurrency;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;
end;

constructor TdmpCurrencyProperty.Create(prmName : string ; prmFieldName :
    string ; prmDefValue : Double = 0);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmFieldName;
  FFieldType    := varCurrency;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;
end;

function TdmpCurrencyProperty.GetValue: Double;
begin
  Result := FValue;
end;

procedure TdmpCurrencyProperty.SetValue(const Value: Double);
begin
  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;
end;

constructor TdmpDoubleProperty.Create(prmName : string ; prmFieldName : string
    ; prmDefValue : Double = 0);
begin
  // TODO -cMM: TdmpStringProperty.Create default body inserted
  inherited Create;
  FCaption      := prmFieldName;
  FFieldName    := prmFieldName;
  FFieldType    := varDouble;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;
end;

constructor TdmpDoubleProperty.Create(prmName : string ; prmFieldName : string
    ; prmCaption : string ; prmDefValue : double = 0);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmCaption;
  FFieldType    := varDouble;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taRightJustify;
end;

function TdmpDoubleProperty.GetValue: Double;
begin
  Result := FValue;
end;

procedure TdmpDoubleProperty.SetValue(const Value: Double);
begin
  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;
end;

constructor TdmpBooleanProperty.Create(prmName : string ; prmFieldName : string
    ; prmCaption : string ; prmDefValue : boolean = false);
begin
  // TODO -cMM: TdmpStringProperty.Create default body inserted
  inherited Create;
  FFieldName    := prmFieldName;
  FFieldType    := varBoolean;
  FDefault      := prmDefValue;
  FCaption      := prmCaption;
  FName         := prmName;
  FAlignment    := taCenter;
end;

constructor TdmpBooleanProperty.Create(prmName : string ; prmFieldName : string
    ; prmDefValue : boolean = false);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmFieldName;
  FFieldType    := varBoolean;
  FDefault      := prmDefValue;
  FName         := prmName;
  FAlignment    := taCenter;
end;

function TdmpBooleanProperty.GetValue: Boolean;
begin
  Result := FValue;
end;

procedure TdmpBooleanProperty.SetValue(const Value: Boolean);
begin
  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;
end;

constructor TdmpGUIDProperty.Create(prmName : string ; prmFieldName : string ;
    prmCaption : string);
begin
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varString;
  FDefault      := CreateClassID;
  FName         := prmName;
end;

constructor TdmpGUIDProperty.Create(prmName : string ; prmFieldName : string);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmFieldName;
  FFieldType    := varString;
  FDefault      := CreateClassID;
  FName         := prmName;
end;

function TdmpGUIDProperty.GetValue: string;
begin
  Result := FValue;
end;

procedure TdmpGUIDProperty.LoadDefault;
begin
  FValue   := CreateClassID;
end;

procedure TdmpGUIDProperty.SetValue(const Value: string);
begin

  if FValue <> Value then
    begin
    FValue := Value;
    if not FFreezeEvents then Changed_PropertyValue;
    end;

end;

constructor TdmpMemoProperty.Create(prmName : string ; prmFieldName : string ;
    prmCaption : string);
begin
  inherited Create;
  FCaption      := prmCaption;
  FFieldName    := prmFieldName;
  FFieldType    := varString;
  FDefault      := '';
  FName         := prmName;
end;

constructor TdmpMemoProperty.Create(prmName : string ; prmFieldName : string);
begin
  inherited Create;
  FFieldName    := prmFieldName;
  FCaption      := prmFieldName;
  FFieldType    := varString;
  FDefault      := '';
  FName         := prmName;
end;

function TdmpMemoProperty.GetValue: TStringList;
begin
  Result := FStringListValue;
end;

procedure TdmpMemoProperty.SetValue(const Value: TStringList);
begin

  if FStringListValue <> Value then
    begin
    FValue := FStringListValue.Text;
    if not FFreezeEvents then Changed_PropertyValue;
    end;

end;




constructor TdmpIndexerBase.Create(prmSession : TSQLSession ; prmTableName :
    string ; prmPKey : string ; prmFKey : string ; prmValue : variant);
begin
  inherited Create;
  FForeignKey       := prmFKey;
  FPrimaryKey       := prmPKey;
  FForeignKeyValue  := prmValue;
  FTable            := prmTableName;
  FSession          := prmSession;
  FLoading          := False;
  FAddingRecord     := False;
  FRecordsCurrent    := -1;
  FColor_AlternateRow:= clInActiveCaptionText;
  FColor_FontDeleteRow := clBlack;
  Action_CreateAll; // Creates actions
  Records_FetchFromDB;
  
end;

destructor TdmpIndexerBase.Destroy;
begin

  Action_FreeAll;

  //TODO Cleanup events before freeing objects
  // Clear does a cleanup.  Frees objects, nils arrays etc.
  Records_Clear;

  inherited;

end;

procedure TdmpIndexerBase.vAction_Execute(Sender : TObject);
var
  i: Integer;
begin

  i := FRecordsCurrent;

  case (Sender as TAction).Tag of
        0: RecordAdd;
        1: FRecords[i].Load;
        2: FRecords[i].Save;
        3: FRecords[i].Undo;
        4: FRecords[i].Delete;
        5: FRecords[i].UnDelete;
//        6: Caption := '&Save All';
//        7: Caption := '&Refresh All';
//        8: Caption := '&Undo All';
//        9: Caption := '&Delete All';
//       10: Caption := '&Undelete All';
        end;
  Grid_DisplayUpdateSingleRow(i);
  Action_Update;
end;

procedure TdmpIndexerBase.RecordAdd;
begin
  //  Must wrap the add new in an adding else the display does not update properly
  FAddingRecord := True;
  Record_New(GetNewObject); // Also sets current record property
  Grid_DisplayUpdate;
  FAddingRecord := False;
end;

procedure TdmpIndexerBase.BindingContextAddControl(prmName : String ;
    prmEdit : TComponent ; prmCaption : TComponent ; prmDisplay : TComponent ;
    prmLookup : TListOfItems = nil);
var
  i: Integer;
begin

  i := Length(FBindingList);
  SetLength(FBindingList, i +1);
  FBindingList[i].Name    := prmName;
  FBindingList[i].Edit    := prmEdit;
  FBindingList[i].Caption := prmCaption;
  FBindingList[i].Display := prmDisplay;
  FBindingList[i].Lookup  := prmLookup;

end;

procedure TdmpIndexerBase.BindingContextAddGridColumns(prmColumns : Array
    of String);
var
  i: Integer;
begin

  SetLength(FBoundColumns, Length(prmColumns));
  for i := low(prmColumns) to high(prmColumns) do
    FBoundColumns[i] := prmColumns[i];


//  FBoundColumns
  // DONE -cMM: TdmpObjectIndexerBase.AddBoundColumns default body inserted
end;

procedure TdmpIndexerBase.BindingContext_Bind;
var
  j: Integer;
  i: Integer;
begin

  if FRecordsCount <> - 1 then
    begin

    i := FRecordsCurrent;

    for j := low(FRecords) to high(FRecords) do
      begin
      FRecords[j].RemoveBinding;
      FRecords[j].OnChanged := nil;
     end;

    for j := low(FBindingList) to high(FBindingList) do
      begin
      FRecords[i].PropertyByName[FBindingList[j].Name].DataBinding(
        FBindingList[j].Edit,
        FBindingList[j].Caption,
        FBindingList[j].Display,
        FBindingList[j].Lookup);
      FRecords[i].OnChanged := vRecord_Changed;
      end;
    end;

  Action_Update;

end;

procedure TdmpIndexerBase.Records_Clear;
var
  i: Integer;
begin

  for i := low(FRecords) to high(FRecords) do
    FRecords[i].Free;
  SetLength(FRecords, 0);
  SetLength(FRecordID, 0);
  FRecordsCount := 0;

end;

procedure TdmpIndexerBase.Action_CreateAll;
var
  i: Integer;
begin

  FActionList := TActionList.Create(nil);
  SetLength(FRecordActions, 11);

  for i := low(FRecordActions) to high(FRecordActions) do
    FRecordActions[i] := TAction.Create(nil);

  for i := low(FRecordActions) to high(FRecordActions) do
    with FRecordActions[i] do
      begin
      ActionList := FActionList;
      Tag := i;
      ImageIndex := i;
      OnExecute := vAction_Execute;
      end; // case
  Action_UpdateDisplayText;

end;

procedure TdmpIndexerBase.Action_UpdateDisplayText;
var
  prvDeleted: Boolean;
  i: Integer;
begin

  if FRecordsCurrent > -1 then
    prvDeleted := FRecords[FRecordsCurrent].IsDeleted
    else
    prvDeleted := False; 

  for i := low(FRecordActions) to high(FRecordActions) do
    with FRecordActions[i] do
      begin
      case i of
        0: Caption := '&New';
        1: Caption := '&Refresh';
        2: if not prvDeleted then Caption := '&Save' else Caption := '&Confirm';
        3: Caption := '&Undo';
        4: Caption := '&Delete';
        5: Caption := '&Undelete';
        6: Caption := '&Save All';
        7: Caption := '&Refresh All';
        8: Caption := '&Undo All';
        9: Caption := '&Delete All';
       10: Caption := '&Undelete All';
        end;
      case i of
        0: Hint := 'New record|Creates a new record with default values.';
        1: Hint := 'Refresh record|Refresh the currently selected record from the database.';
        2: Hint := 'Save|Saves the currently selected record to the database.';
        3: Hint := 'Undo|Undo current edits and reverts to the originally loaded record.';
        4: Hint := 'Delete|Delete currently selected record.';
        5: Hint := 'Undelete|Undelete';
        6: Hint := 'Save All';
        7: Hint := 'Refresh All';
        8: Hint := 'Undo All';
        9: Hint := 'Delete All';
       10: Hint := 'Undelete All';
        end;
      end; // case
end;

procedure TdmpIndexerBase.Action_FreeAll;
var
  i: Integer;
begin

  for i := low(FRecordActions) to high(FRecordActions) do FRecordActions[i].Free;
  FRecordActions := nil;
  FActionList.Free;

end;

procedure TdmpIndexerBase.BindingContextLinkActions(FButtons : array of
    TRzButton ; prmType : integer = 0);
var
  i: Integer;
begin

  for i := low(FButtons) to high(FButtons) do
    FButtons[i].Action := FRecordActions[i];
  // TODO -cMM: TdmpObjectIndexerBase.AddBoundActions default body inserted
end;

procedure TdmpIndexerBase.vGrid_DrawTheCell(Sender: TObject; ACol, ARow:
    Integer; Rect: TRect; State: TGridDrawState);
var
  iRow: Integer;
  iCol: Integer;
  prvAlignment: TAlignment;
  strWid: Integer;
  strTxt: string;
  prvOrigFontColor: TColor;
const
  TOS = 3; //Text Off Set

begin
  Inherited;

  with (Sender as TStringGrid) do
    begin
    with Canvas do
      begin

      // Store the original font color for restore purposes
      prvOrigFontColor := Font.Color;
      if gdFixed in State then
        begin
        Pen.Color   := FixedColor;
        Brush.Color := FixedColor;
        end else
        begin
        Pen.Color   := Color;
        if gdSelected in State then
          begin
          Brush.Color := clHighlight
          end else
          begin
          if (ARow mod 2) <> 0 then
            Brush.Color := FColor_AlternateRow
            else
            Brush.Color := Color
          end;
        end;


      if GetIsDeleted(ARow - FixedRows) then
        begin
        Font.Style := Font.Style + [fsStrikeOut];
        Font.Color := FColor_FontDeleteRow;
        end else
        Font.Style := Font.Style - [fsStrikeOut];

      // Get Allignment from property
      prvAlignment := taLeftJustify;
      iRow := ARow - FixedRows;
      iCol := ACol - FixedCols;
      if (iRow >= low(FRecords)) and (iRow <= High(FRecords)) then
        if (iCol >= low(FBoundColumns)) and (iCol <= High(FBoundColumns)) then
          prvAlignment := FRecords[iRow].PropertyByName[FBoundColumns[iCol]].Alignment;

        
      strTxt := Cells[ACol, ARow];
      strWid := TextWidth(strTxt);
      FillRect(Rect);

      if prvAlignment=taLeftJustify then
        TextRect(Rect, Rect.Left + TOS, Rect.Top + TOS, Cells[ACol, ARow]);
      if prvAlignment=taRightJustify then
        TextRect(Rect, Rect.Right - TOS - strWid , Rect.Top + TOS, Cells[ACol, ARow]);
      if prvAlignment=taCenter then
        TextRect(Rect, Rect.Right - TOS - (strWid div 2), Rect.Top + TOS, Cells[ACol, ARow]);

      // Restore default values
      Font.Color := prvOrigFontColor;


      end;
    end;
end;

function TdmpIndexerBase.GetIsDeleted(prmRecordNumber : integer): Boolean;
begin

  Result := False;

  if FRecordsCount > 0 then
    if (prmRecordNumber > -1) and (prmRecordNumber < FRecordsCount) then
      Result := FRecords[prmRecordNumber].IsDeleted;
end;

function TdmpIndexerBase.GetIsEdited: Boolean;
var
  i: Integer;
begin
  {
   Gets wether a user has edited any one of the records in the array.
   Can be used for a save button overall.
  }
  Result := False;

  // Only need one field to make it true
  for i := low(FRecords) to high(FRecords) do
    if FRecords[i].IsEdited then Result := True;

end;

function TdmpIndexerBase.GetNewObject: TdmpObjectBase;

begin
  Result := TdmpObjectBase.Create(FSession, FTable);
end;

function TdmpIndexerBase.GetRecords(Index: Integer): TdmpObjectBase;
begin

  // Array index starts at 0, property access starts at 0.
  Result := nil;
  if FRecordsCount > 0 then
    if (Index > -1) and (Index < FRecordsCount) then
      Result := FRecords[Index];
end;

procedure TdmpIndexerBase.Load;
begin

  // Check for saving first.
  Records_FetchFromDB;
  BindingContext_Bind;
  Grid_DisplayUpdateSingleRow(FRecordsCurrent);

end;

procedure TdmpIndexerBase.vRecord_Changed(Sender : TObject ; evFieldName
    : string);
begin
  Grid_DisplayUpdate;
  Action_Update;
end;

procedure TdmpIndexerBase.vRecord_Scrolled(Index : integer);
begin

  BindingContext_Bind;
  if Assigned(FOnScroll) then FOnScroll(Index);

end;

procedure TdmpIndexerBase.Record_New(prmObject : TdmpObjectBase ;
    prmInitializeNew : boolean = False);
var
  i: Integer;
begin

  // Loading up, set flag.
  FLoading := True;

  // Increase object holders etc.
  if FRecordsCount = -1 then FRecordsCount := 0;
  Inc(FRecordsCount);
  SetLength(FRecords, FRecordsCount);
  SetLength(FRecordID, FRecordsCount);

  // Work with the objects and arrays.
  i := FRecordsCount - 1; // Easier to use i
  FRecords[i] := prmObject; // Add the newly passed object
  // If the records is new or an insert, use the new method to initialise
  FRecords[i].New;
  FRecordID[i] := FRecords[i].OID.Value;
  FRecords[i].OID.Parameter := FRecordID[i];
  FRecords[i].Load;

  //make sure any fk value is auto inserted
  if FForeignKey <> '' then
    FRecords[i].PropertyByFieldName[FForeignKey].Value := FForeignKeyValue;
  FRecordsCurrent := i;
  vRecord_Scrolled(i);
  FLoading := False;

end;

procedure TdmpIndexerBase.RefreshAll;
begin
  Load;
end;

procedure TdmpIndexerBase.Records_FetchFromDB;
var
  i: Integer;
  FQuery: TADOQuery;
begin


  FQuery := TADOQuery.Create(nil);
  try
  with FQuery do
    try

    Connection := FSession.ThisConnection;
    FQuery.SQL.Add('SELECT ' + FPrimaryKey + ' FROM ' + FTable);
    if FForeignKey <> '' then
      if not VarIsNull(FForeignKeyValue) then
        begin
        FQuery.SQL.Add(' WHERE ' + FForeignKey + ' = :' + FForeignKey);
        FQuery.Parameters.ParamByName(FForeignKey).Value := FForeignKeyValue;
        end;

    FRecordsCount   := -1;
    FRecordsCurrent := -1;
    Records_Clear;

    Open;
    if RecordCount > 0 then
      begin
      FRecordsCount   := 0;
      FRecordsCurrent := 0;
      end;

    while not EOF do
      begin
      inc(FRecordsCount);
      SetLength(FRecordID, FRecordsCount);
      SetLength(FRecords, FRecordsCount);
      i := FRecordsCount - 1;
      FRecordID[i]  := FieldByName(PrimaryKey).AsVariant;
      FRecords[i]   := GetNewObject;
      FRecords[i].OID.Parameter := FRecordID[i];
      FRecords[i].Load;
      Next;
      end;
    finally
      Close; //
      FQuery.Free;
    end;
  except
    on E : Exception do Exception.Create(E.message);
  end;

end;

procedure TdmpIndexerBase.Record_Refresh(prmRecord : integer = -1);
var
  i: Integer;
begin

  // -1[this is the default]  Refreshes all. (reloads only existing objects. does not check for new objects
  // on the foriegn key relations)  this is the default
  if prmRecord = -1 then
    begin
    for i := low(FRecords) to high(FRecords) do FRecords[i].Load
    end else
    begin
    if prmRecord >= Low(FRecords) then
      if prmRecord <= High(FRecords) then
        FRecords[prmRecord].Load;
    end;
end;

procedure TdmpIndexerBase.vGrid_SelectTheCell(Sender: TObject; ACol,
    ARow: Integer; var CanSelect: Boolean);
var
  mr: Word;
begin

  //

  if (Records[FRecordsCurrent].IsDeleted) or (Records[FRecordsCurrent].IsEdited) or (Records[FRecordsCurrent].IsNew) then
    begin
    mr := MessageDlg('Save changes', mtWarning, [mbYes, mbNo, mbCancel], 0);
    case mr of
      mrYes     : Records[FRecordsCurrent].Save;
      mrNo      : Records[FRecordsCurrent].Undo;
      mrCancel  : begin CanSelect := False ; Exit; end;
      end;
    end;



  if not FLoading then
    with (Sender as TStringGrid) do
      if ARow - FixedRows <> FRecordsCurrent then
        begin
        if not FAddingRecord then
          begin
          FRecordsCurrent := ARow - FixedRows;
//          (Sender as TStringGrid).Cells[0,0] := IntToStr(FRecordsCurrent);
          vRecord_Scrolled(FRecordsCurrent);
          end;
        end;

end;

procedure TdmpIndexerBase.SetDisplayComponent(const Value: TComponent);
begin

  FDisplayComponent := Value;

  if FDisplayComponent.ClassName = 'TStringGrid' then
    begin
    (FDisplayComponent as TStringGrid).OnDrawCell := vGrid_DrawTheCell;
    (FDisplayComponent as TStringGrid).OnSelectCell := vGrid_SelectTheCell;
    end;
  // TODO -cMM: TTestSet.SetDisplayComponent default body inserted
end;

procedure TdmpIndexerBase.SetForeignKeyValue(const Value: Variant);
begin
  if FForeignKeyValue <> Value then
  begin
    FForeignKeyValue := Value;
  end;
end;

procedure TdmpIndexerBase.SetRecords(Index: Integer; const Value:
    TdmpObjectBase);
begin
  FRecords[Index] := Value;
end;

procedure TdmpIndexerBase.SetTable(const Value: string);
begin
  if FTable <> Value then
  begin
    FTable := Value;
  end;
end;

procedure TdmpIndexerBase.Action_Update;
begin

  Grid_DisplayUpdate;
  Action_UpdateDisplayText;
  
  with Records[FRecordsCurrent] do
    begin
    FRecordActions[0].Enabled := True;
    FRecordActions[1].Enabled := not IsDeleted;
    FRecordActions[2].Enabled := IsEdited;
    FRecordActions[3].Enabled := (IsEdited) and not (IsDeleted);
    FRecordActions[4].Enabled := not IsDeleted;
    FRecordActions[5].Enabled := IsDeleted;

    FRecordActions[6].Enabled := False;
    FRecordActions[7].Enabled := False;
    FRecordActions[8].Enabled := False;
    FRecordActions[9].Enabled := False;
    FRecordActions[10].Enabled := False;
    end;

end;

procedure TdmpIndexerBase.BindingContextUnbind;
begin
  BindingContext_UnBindAll;
  
end;

procedure TdmpIndexerBase.BindingContext_UnBindAll;
var
  j: Integer;
  i: Integer;
begin

  if FRecordsCount <> - 1 then
    begin

    for j := low(FRecords) to high(FRecords) do
      begin
      FRecords[j].RemoveBinding;
      FRecords[j].OnChanged := nil;
     end;

    FBindingList := nil;

    end;

  Action_Update;

end;

procedure TdmpIndexerBase.Grid_DisplayUpdate;
var
  m: Integer;
  k: Integer;
  j: Integer;
  myRect: TGridRect;
begin

  if Assigned(FDisplayComponent) then
    if FDisplayComponent.ClassName = 'TStringGrid' then
      with (FDisplayComponent as TStringGrid) do
        begin
        RowCount  := FRecordsCount + FixedRows;

        if FRecordsCurrent <> Selection.Top - FixedRows then
          begin
          myRect.Top := FRecordsCurrent + FixedRows;
          myRect.Bottom := FRecordsCurrent + FixedRows;
          myRect.Left := 0;
          myRect.Right := ColCount;
          Selection := myRect;
          end;


        for j := 0 to FRecordsCount - 1 do
          begin
          m := j + FixedRows;
          for k := low(FBoundColumns) to high(FBoundColumns) do
            Cells[k, m] := FRecords[j].PropertyByName[FBoundColumns[k]].ToString;
          end;

        end;
end;

procedure TdmpIndexerBase.Grid_DisplayUpdateSingleRow(prmRow : integer);
var
  m: Integer;
  k: Integer;
begin

  if Assigned(FDisplayComponent) then
    if FDisplayComponent.ClassName = 'TStringGrid' then
      with (FDisplayComponent as TStringGrid) do
        begin
        m := prmRow + FixedRows;
        for k := low(FBoundColumns) to high(FBoundColumns) do
          Cells[k, m] := FRecords[prmRow].PropertyByName[FBoundColumns[k]].ToString;
        end;
end;

procedure TdmpIndexerBase.RefreshDisplay;
begin
  Grid_DisplayUpdate;
end;

constructor TSQLBuilderField.Create(prmTableName : string ; prmFieldName :
    string ;  prmAlias : string ; prmParameter : array of Variant ; prmOperator
    : array of string  ; prmCalculation : ECalculation ; prmDisplay : Boolean);
begin
  inherited Create;

  try

    FSQLOrder       := -1;
    FCalculation    := prmCalculation;
    FFieldName      := prmFieldName;
    FAlias          := prmAlias;
    FSortIndex      := -1;
    FSortDesc       := False;
    FDisplayInQuery := prmDisplay;
    FOperatorCount  := 0;
    FParameterCount := 0;
    if prmTableName <> '' then FTable := prmTableName;
//    TSQLBuilderHelper.ParseFieldName(prmFieldName, FAlias, FCalculation, FFieldName, FTable);
    if Length(prmParameter) > 0 then
      AddParameters(prmParameter, prmOperator );
  except
    on E : Exception do raise Exception.Create(E.Message);
  end;

end;

procedure TSQLBuilderField.AddOperator(prvOperator : string);
begin
  SetLength(FOperators, Length(FOperators) + 1);
  FOperators[High(FOperators)] := prvOperator;
  Inc(FOperatorCount);
end;

procedure TSQLBuilderField.AddParameter(prvParam : Variant);
begin
  Inc(FParameterCount);
  SetLength(FParameters, FParameterCount);
  FParameters[High(FParameters)] := prvParam;
  SetLength(FParameterNames, FParameterCount);
  if FAlias = '' then
    FParameterNames[High(FParameterNames)] := PARAM_PREFIX + IntToStr(FParameterCount) + FFieldName
    else
    FParameterNames[High(FParameterNames)] := PARAM_PREFIX + IntToStr(FParameterCount) + FAlias;
end;

procedure TSQLBuilderField.AddParameters(prmParameter : array of Variant ;
    prmOperator : array of string);
var (*.................................................................*)(*var*)(*...........................................*)
  i : integer;
begin
  for i:=Low(prmParameter) to High(prmParameter) do
    if not VarIsNull(prmParameter[i]) then
      if not VarIsEmpty(prmParameter[i]) then
        begin
        AddParameter(prmParameter[i]);
        AddOperator(prmOperator[i]);
        end;
end;

procedure TSQLBuilderField.Clear;
begin
  FParameters     := nil;
  FParameterCount := 0;
  FOperators      := nil;
  FOperatorCount  := 0;
  FParameterNames := nil;
end;

function TSQLBuilderField.GetOperator(Index: Integer): string;
begin
  if (Index < 0) or (Index > FOperatorCount -1) then
    raise Exception.Create(SAPPLICATIONERRORIndexOutOfBounds);
  Result := FOperators[Index];
end;

function TSQLBuilderField.GetParameter(Index: Integer): Variant;
begin
  Result := FParameters[Index];
end;

function TSQLBuilderField.GetParameterName(Index: Integer): string;
begin
  Result := FParameterNames[Index];
end;

procedure TSQLBuilderField.SetOperator(Index: Integer; const Value: string);
begin
  FOperators[Index] := Value;
end;

procedure TSQLBuilderField.SetParameter(Index: Integer; const Value: Variant);
begin
  FParameters[Index] := Value;
end;

procedure TSQLBuilderField.SetParameterName(Index: Integer; const Value:
    string);
begin
  FParameterNames[Index] := Value;
end;

function TSQLBuilderField.ToString(prmTypeOfString : integer = 0): string;
begin

  case prmTypeOfString of    //
    0                 : Result := '';
    TOSTRING_GROUPBY  : Result := ToStringGroupBy;
    TOSTRING_HAVING   : Result := ToStringHaving;
    TOSTRING_SELECT   : Result := ToStringSelect;
    TOSTRING_SORT     : Result := ToStringSort;
    TOSTRING_WHERE    : Result := ToStringWhere;
    TOSTRING_UPDATE   : Result := ToStringUpdate;
    TOSTRING_INSERT   : Result := ToStringInsert;
    end;    // case
end;

function TSQLBuilderField.ToStringGroupBy: string;
var
  retStr :string;
begin

  retStr := '';
  if FCalculation = cGroupBy then
    begin

    if FTable <> '' then
      retStr := FTable + '.' + FFieldName
    else
      retStr := FFieldName;
    end;

  Result := retStr;
end;

function TSQLBuilderField.ToStringHaving: string;
var
  retStr :string;
  i       : integer;
begin

  retStr := '';

  for i := low(FParameterNames) to high(FParameterNames) do
    if FCalculation <> cNone then
      begin

      if retStr <> '' then retStr := retStr + ' AND (';
      if retStr = '' then retStr := retStr + '(';

      if FTable <> '' then
        retStr := FTable + '.' + FFieldName
      else
        retStr := FFieldName;

      case FCalculation of
        cSum: retStr := 'SUM(' + retStr + ')';
        cAverage: retStr := 'AVG(' + retStr + ')';
        cCount:retStr := 'COUNT(' + retStr + ')';
        cMin:retStr := 'MIN(' + retStr + ')';
        cMax:retStr := 'MAX(' + retStr + ')';
        end;

      retStr := retStr + ' ' + FOperators[i] + ' :' + FParameterNames[i];
//      retStr := retStr + ' [' + VarToStrDef(FParameters[i], '') + ']';
      retStr := retStr + ')';
      end;

  if retStr <> '' then retStr := '(' + retStr + ')';
  Result := retStr;
end;

function TSQLBuilderField.ToStringInsert: string;
var
  retStr :string;
begin

  retStr := '';

  if FDisplayInQuery then
    begin

    retStr := retStr + ':' + INSERT_PREFIX + FFieldName;

    end;
  Result := retStr;

end;

function TSQLBuilderField.ToStringSelect: string;
var
  retStr :string;
begin

  retStr := '';

  if FDisplayInQuery then
    begin

    if FTable <> '' then
      retStr := FTable + '.' + FFieldName
    else
      retStr := FFieldName;

    case FCalculation of
      cSum: retStr := 'SUM(' + retStr + ')';
      cAverage: retStr := 'AVG(' + retStr + ')';
      cCount:retStr := 'COUNT(' + retStr + ')';
      cMin:retStr := 'MIN(' + retStr + ')';
      cMax:retStr := 'MAX(' + retStr + ')';
      end;

    if FAlias <> '' then retStr := retStr + ' AS ' + FAlias;
    end;
  Result := retStr;
end;

function TSQLBuilderField.ToStringSort: string;
var
  retStr :string;
begin

  retStr := '';

  if FSortIndex > -1 then
    begin
    if FTable <> '' then
      retStr := FTable + '.' + FFieldName
    else
      retStr := FFieldName;
    case FCalculation of
      cSum: retStr := 'SUM(' + retStr + ')';
      cAverage: retStr := 'AVG(' + retStr + ')';
      cCount:retStr := 'COUNT(' + retStr + ')';
      cMin:retStr := 'MIN(' + retStr + ')';
      cMax:retStr := 'MAX(' + retStr + ')';
      end;

    if FSortDesc then retStr := retStr + ' DESC';
    end;
  Result := retStr;
end;

function TSQLBuilderField.ToStringUpdate: string;
var
  retStr :string;
begin

  retStr := '';

  if FDisplayInQuery then
    begin

    if FTable <> '' then
      retStr := FTable + '.' + FFieldName
    else
      retStr := FFieldName;

    retStr := retStr + ' = :' + UPDATE_PREFIX + FFieldName;

    end;
  Result := retStr;

end;

function TSQLBuilderField.ToStringWhere: string;
var
  retStr :string;
  i       : integer;
begin

  retStr := '';

  for i := low(FParameterNames) to high(FParameterNames) do
    if FCalculation = cNone then
      begin

      if retStr <> '' then retStr := retStr + ' AND (';
      if retStr = '' then retStr := retStr + '(';

      if FTable <> '' then
        retStr := retStr + FTable + '.' + FFieldName
      else
        retStr := retStr + FFieldName;

      retStr := retStr + ' ' + FOperators[i] + ' :' + FParameterNames[i];
//      retStr := retStr + ' [' + VarToStrDef(FParameters[i], '') + ']';
      retStr := retStr + ')';
      end;

  if retStr <> '' then retStr := '(' + retStr + ')';
  Result := retStr;
end;

constructor TSQLBuilder.Create(prmTableName : string ; prmSQLType : ESQLType =
    stSelect);
                                                                                (*===========================================*)
                                                                   (*15.4.2005*)(* Orig::Deane Putzier                       *)

begin (*.............................................................*)(*begin*)(*...........................................*)

  inherited Create;
  FFieldCount := 0;
  FSQLType    := prmSQLType;
  FToString   := '';
  FTable      := prmTableName;
  FPreBuildSQL:= '';

end; (*................................................................*)(*end*)(*...........................................*)

destructor TSQLBuilder.Destroy;
begin
  Clear;
  FprivateFields := nil;
  inherited;
end;

procedure TSQLBuilder.AddField(prmTableName : string ;  prmFieldName : string ;
    prmAlias : string ; prmParameter : array of Variant ; prmOperator : array
    of string  ; prmCalculation : ECalculation ; prmParamOnly : Boolean);
var (*.................................................................*)(*var*)(*...........................................*)
  prvField      : TSQLBuilderField;
begin (*.............................................................*)(*begin*)(*...........................................*)


  try
    prvField := TSQLBuilderField.Create(FTable, prmFieldName,prmAlias,prmParameter,
                                        prmOperator,prmCalculation,prmParamOnly);
    InsertField(prvField);
  except
    on E : Exception do raise Exception.Create(E.Message);
  end;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TSQLBuilder.AddFields(prmFieldList : array of string);
var (*.................................................................*)(*var*)(*...........................................*)
  prvField      : TSQLBuilderField;
  i : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  for i := low(prmFieldList) to high(prmFieldList) do
    begin
    prvField := TSQLBuilderField.Create(FTable, prmFieldList[i],'',[],[], cNone, True);
    InsertField(prvField);
    end;

end;

procedure TSQLBuilder.AddSQL(prmSQL : string);
begin
  FSQLGroup[SQLRAWNUM] := prmSQL;
  ParseSQL;
end;

function TSQLBuilder.BuildSQL: string;
var
  ParamList: string;
  SQLStr : String;
  WhereListStr : string;
  HavingListStr : string;
  GroupByListStr : string;
  SortListStr : string;
  FieldListStr : string;
  FieldUpdateListStr : string;
begin

  case FSQLType of
    stSelect :
      begin
      FieldListStr  := GetFieldList;
      WhereListStr  := GetParameterList(1);
      HavingListStr := GetParameterList(2);
      GroupByListStr:= GetGroupByList;
      SortListStr   := GetFieldSortList;
      SQLStr        := Format('SELECT %s FROM %s', [FieldListStr, FTable]);
      if WhereListStr <> '' then SQLStr := SQLStr + ' WHERE ' + WhereListStr;
      if GroupByListStr <> '' then SQLStr := SQLStr + ' GROUP BY ' + GroupByListStr;
      if HavingListStr <> '' then SQLStr := SQLStr + ' HAVING ' + HavingListStr;
      if SortListStr <> '' then SQLStr := SQLStr + ' ORDER BY ' + SortListStr;
      end;

    stDelete :
      begin
      WhereListStr  := GetParameterList(1);
      SQLStr        := Format('DELETE FROM %s', [FTable]);
      if WhereListStr <> '' then SQLStr := SQLStr + ' WHERE ' + WhereListStr;
      end;

    stUpdate :
      begin
      FieldUpdateListStr := GetFieldUpdateList;
      WhereListStr  := GetParameterList(1);
      SQLStr        := Format('UPDATE %s ', [FTable]);
      if FieldUpdateListStr <> '' then SQLStr := SQLStr + 'SET ' + FieldUpdateListStr;
      if WhereListStr <> '' then SQLStr := SQLStr + ' WHERE ' + WhereListStr;
      end;

    stInsert :
      begin
      FieldListStr  := GetFieldList;
      ParamList     := GetFieldInsertParameters;
      SQLStr        := Format('INSERT INTO %s (%s) VALUES (%s)', [FTable,FieldListStr,ParamList]);
      end;

  end;
  Result := SQLStr;

end;

procedure TSQLBuilder.Clear;
var
  i : integer;
begin
  for i := low(FFieldList) to high(FFieldList) do
    FFieldList[i].Free;
  FFieldList := nil;
end;

procedure TSQLBuilder.Clear_FieldValues;
var
  i, j, k : integer;
begin

if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do FFieldList[i].Value := null;
  end;

end;

procedure TSQLBuilder.Clear_Parameters;
var
  i, j, k : integer;
begin

if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do FFieldList[i].Clear;
  end;

end;

procedure TSQLBuilder.Clear_SortOrder;
var
  i, j, k : integer;
begin

if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    FFieldList[i].SortIndex := -1;
    FFieldList[i].SortDesc  := False;
    end;
  end;

end;

function TSQLBuilder.GetFieldInsertParameters: string;
var
  i, j, k : integer;
  prvRetStr, prvNewStr  : string;
begin

prvRetStr := '';
if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    prvNewStr := FFieldList[i].ToString(TOSTRING_INSERT);
    if prvNewStr <> '' then
      if prvRetStr <> '' then
        prvRetStr := prvRetStr + ', ' + prvNewStr
      else
        prvRetStr := prvNewStr;
    end;
  end;

Result := prvRetStr;

end;

function TSQLBuilder.GetFieldList: string;
var
  i, j, k : integer;
  prvRetStr, prvNewStr  : string;
begin

prvRetStr := '';
if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    prvNewStr := FFieldList[i].ToString(TOSTRING_SELECT);
    if prvNewStr <> '' then
      if prvRetStr <> '' then
        prvRetStr := prvRetStr + ', ' + prvNewStr
      else
        prvRetStr := prvNewStr;
    end;
  end;

Result := prvRetStr;

end;

function TSQLBuilder.GetFieldSortList: string;
var
  i, j, k, l : integer;
  prvList :array of integer;
  retStr  : string;
begin

retStr := '';
if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    if FFieldList[i].SortIndex <> -1 then
      begin
      if (high(prvList) + 1) < FFieldList[i].SortIndex then
        SetLength(prvList, FFieldList[i].SortIndex);
      prvList[FFieldList[i].SortIndex -1] := i;
      end;

  j := Low(prvList);
  k := High(prvList);
  for i := j to k do
    begin
    l := prvList[i];
    if retStr <> '' then retStr := retStr + ', ';
    retStr := retStr + FFieldList[l].ToString(TOSTRING_SORT);
    end;
  end;

Result := retStr;

end;

function TSQLBuilder.GetFieldUpdateList: string;
var
  i, j, k : integer;
  prvRetStr, prvNewStr  : string;
begin

prvRetStr := '';
if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    prvNewStr := FFieldList[i].ToString(TOSTRING_UPDATE);
    if prvNewStr <> '' then
      if prvRetStr <> '' then
        prvRetStr := prvRetStr + ', ' + prvNewStr
      else
        prvRetStr := prvNewStr;
    end;
  end;

Result := prvRetStr;

end;

function TSQLBuilder.GetGroupByList: string;
var
  i, j, k : integer;
  prvRetStr, prvNewStr  : string;
begin

prvRetStr := '';
if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    prvNewStr := FFieldList[i].ToString(TOSTRING_GROUPBY);
    if prvNewStr <> '' then
      if prvRetStr <> '' then
        prvRetStr := prvRetStr + ', ' + prvNewStr
      else
        prvRetStr := prvNewStr;
    end;
  end;

Result := prvRetStr;

end;

function TSQLBuilder.GetParameterList(const prmType : integer): string;
var
  i, j, k  : integer;
  retStr    : string;
  curParam  : string;

begin


retStr := '';


if Assigned(FFieldList) then
  begin
  j := Low(FFieldList);
  k := High(FFieldList);
  for i := j to k do
    begin
    case prmType of
      1: curParam := FFieldList[i].ToString(TOSTRING_WHERE);
      2: curParam := FFieldList[i].ToString(TOSTRING_HAVING);
      end;

    if curParam <> '' then
      if retStr <> '' then
        retStr := retStr + ' AND ' + curParam
      else
        retStr := curParam;
    end;
  end;
//if retStr <> '' then retStr
Result := retStr;

end;

function TSQLBuilder.GetSQLField(Index : string): TSQLBuilderField;
const                                                                  (*const*)(*...........................................*)
  ERR01 = 'APPLICATION ERROR : No fields available.' + #13;
  ERR02 = 'APPLICATION ERROR : FieldName %s not found.' + #13;
var (*.................................................................*)(*var*)(*...........................................*)
  i       : integer;
  found   : integer;
begin (*.............................................................*)(*begin*)(*...........................................*)

  if FFieldCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an
                                                                                // exception. (No Fields were created)

  found := -1;
  for i := 0 to FieldCount - 1 do
    if FFieldList[i].FieldName = Index then
      found := i;

  if found = -1 then raise Exception.Create (Format(ERR02, [Index]));               // Passed variable was not found, raise exception.
  Result := FFieldList[found];

end; (*................................................................*)(*end*)(*...........................................*)

procedure TSQLBuilder.InsertField(prmNewField : TSQLBuilderField); (*:::START:*)(*===========================================*)
                                                                                (*procedure:InsertField----------------------*)
                                                                                (*===========================================*)
                                                                   (*13.4.2005*)(* Orig::Deane Putzier                       *)
const
    ERR = 'APPLICATION ERROR : Cannot add FieldName [%s].' + #13;
begin (*.............................................................*)(*begin*)(*...........................................*)
  try
    inc(FFieldCount);
    Setlength(FFieldList, FFieldCount);
    FFieldList[FFieldCount - 1] := prmNewField;
  except
    on E : Exception do raise Exception.Create(Format(ERR, [prmNewField.FieldName])
        + E.Message);
  end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TSQLBuilder.ParseFieldName(const prmFieldName : string ; var prmField
    : RFieldDefs);
var
    prvFieldLen : integer;
    newLine, curField, curTable, curOperator, curValue : string;
    prvDot, i,j,k : integer;
    multiField : boolean;
//    paramValue : variant;


begin

  newLine     := prmFieldName;
  prvFieldLen := Length(newLine) + 1;

//  i := GetFirstPositionOfStr(newLine, '(');
//  j := GetLastPositionOfStr(newLine, ')');
//  newLine := GetString(newLine, i, j);



  // Find out if the field has an alias and set accordingly
  i := GetFirstPositionOfStr(newLine, 'AS');
  if i <> 0 then
    begin
    prmField.rAlias  := Trim(GetString(newLine, i + 2, prvFieldLen));
    newLine   := GetString(newLine, 1, i);
    end;

  // get parameter values
  curOperator := '';
  if GetFirstPositionOfStr(newLine, '>=') <> 0 then
    curOperator := '>='
  else if GetFirstPositionOfStr(newLine, '<=') <> 0 then
    curOperator := '<='
  else if GetFirstPositionOfStr(newLine, '>') <> 0 then
    curOperator := '>'
  else if GetFirstPositionOfStr(newLine, '<') <> 0 then
    curOperator := '<'
  else if GetFirstPositionOfStr(newLine, '=') <> 0 then
    curOperator := '=';

  if curOperator <> '' then
    begin
    k := GetFirstPositionOfStr(newLine, '(');
    if k = 1 then newLine := GetString(newLine, 2, Length(newLine) + 1);

    k := GetFirstPositionOfStr(newLine, curOperator);

    curValue  := GetString(newLine, k + Length(curOperator), length(newLine));
    newLine   := GetString(newLine, 1, k);
    k := GetFirstPositionOfStr(curValue, '''');

    // Integer value
    if k = 0 then
      begin
      SetLength(prmField.rParameter, 1);
      prmField.rParameter[0] := StrToInt(curValue);
      SetLength(prmField.rOperator, 1);
      prmField.rOperator[0] := curOperator;
      end;

    if k <> 0 then
      begin

//      while GetFirstPositionOfStr(curValue, '''''') > 0 do
//        curValue := AnsiReplaceText(curValue, '''''', '''');

      k := GetFirstPositionOfStr(curValue, 'N''');
      curValue   := GetString(curValue, k + 2 , Length(curValue) + 1);
      k := GetLastPositionOfStr(curValue, '''') - 1;
      curValue   := Trim(GetString(curValue, 1 , k));
      SetLength(prmField.rParameter, 1);
      prmField.rParameter[0] := curValue;
      SetLength(prmField.rOperator, 1);
      prmField.rOperator[0] := curOperator;
      end;




    end;

  // now find out if the field has a calc in it
  i       := GetFirstPositionOfStr(newLine, '(');
  if i <> 0 then
    begin
    if GetFirstPositionOfStr(newLine, 'COUNT') <> 0 then
      prmField.rCalc := cCount
    else if GetFirstPositionOfStr(newLine, 'AVG') <> 0 then
      prmField.rCalc := cAverage
    else if GetFirstPositionOfStr(newLine, 'SUM') <> 0 then
      prmField.rCalc := cSum
    else if GetFirstPositionOfStr(newLine, 'MAX') <> 0 then
      prmField.rCalc := cMax
    else if GetFirstPositionOfStr(newLine, 'MIN') <> 0 then
      prmField.rCalc := cMin;
    j           := GetFirstPositionOfStr(newLine, ')');
    newLine     := GetString(newLine, i + 1, j);
    end;

  // Finalise field names
  multiField  := False;
  if GetFirstPositionOfStr(newLine, '*') <> 0 then
    multiField := True
  else if GetFirstPositionOfStr(newLine, '/') <> 0 then
    multiField := True
  else if GetFirstPositionOfStr(newLine, '+') <> 0 then
    multiField := True
  else if GetFirstPositionOfStr(newLine, '-') <> 0 then
    multiField := True;



  if not multiField then
    begin
    prvFieldLen := Length(newLine) + 1;
    prvDot    := GetFirstPositionOfStr(newLine, '.');
    if prvDot > 0 then
      begin
      curField  := GetString(newLine, prvDot + 1, prvFieldLen);
      curTable  := GetString(newLine, 1, prvDot);
      end else begin
      curField  := newLine;
      curTable  := prmField.rTable;
      end;

    end else
    begin
    curTable := '';
    curField := newLine;
    end;
  prmField.rField := curField;
  prmField.rTable := curTable;



end;

procedure TSQLBuilder.ParseSQL;
var
  i, pEnd, pLength                    : integer;
  iSel, iFrm, iWhr, iGrp, iHav, iOrd  : integer;
  SQLStr                              : string;
  prvField                            : TSQLBuilderField;

  procedure SplitLine(const prmLine : string ; const prmType : integer );
  var
    newLine, curField : string;
    i, j, k           : integer;
    e                 : integer;
    prvStrLen         : integer;
    curRec            : RFieldDefs;
    fieldOrder        : integer;


  begin


    newLine   := prmLine;
    prvStrLen := Length(newLine) + 1;

    if GetFirstPositionOfStr(newLine, ',') <> 0 then
      i := GetFirstPositionOfStr(newLine, ',')
    else if GetFirstPositionOfStr(newLine, 'AND') <> 0 then
      i := GetFirstPositionOfStr(newLine, 'AND')
    else if GetFirstPositionOfStr(newLine, 'OR') <> 0 then
      i := GetFirstPositionOfStr(newLine, 'OR');

    fieldOrder:= 0;

    k := StringOccurs(newLine, ',');

    while k >= 0 do
      begin
      curRec.rDisplay   := False;
      curRec.rFieldOrder:= -1;
      curRec.rAlias     := '';
      curRec.rCalc      := cNone;
      curRec.rField     := '';
      curRec.rTable     := '';
      curRec.rParameter := nil;
      curRec.rOperator  := nil;
      curRec.rSortDesc  := False;
      curRec.rSort      := -1;
      dec(k);
      inc(fieldOrder);
      if i <> 0 then
        begin
        curField  := Trim(GetString(newLine, 1, i));
        newLine   := GetString(newLine, i + 1, prvStrLen);
        end else
        begin
        curField  := Trim(GetString(newLine, 1, Length(newLine)));
        newLine   := GetString(newLine, 1, prvStrLen);
        end;
      ParseFieldName(curField, curRec);

      e := -1;
      for j:= low(FprivateFields) to high(FprivateFields) do
        if Trim(LowerCase(curRec.rField)) = Trim(LowerCase(FprivateFields[j].rField)) then
          e := j;

      if e = -1 then
        begin
        j := Length(FprivateFields) + 1;
        SetLength(FprivateFields, j);
        e := j - 1;
        FprivateFields[e].rDisplay   := False;
        FprivateFields[e].rFieldOrder:= -1;
        FprivateFields[e].rAlias     := '';
        FprivateFields[e].rCalc      := cNone;
        FprivateFields[e].rField     := '';
        FprivateFields[e].rTable     := '';
        FprivateFields[e].rParameter := nil;
        FprivateFields[e].rOperator  := nil;
        FprivateFields[e].rSortDesc  := False;
        FprivateFields[e].rSort      := -1;
        end;

        case prmType of
        1 : // Fields list
            begin
            FprivateFields[e].rField     := curRec.rField;
            FprivateFields[e].rTable     := curRec.rTable;
            FprivateFields[e].rDisplay   := True;
            FprivateFields[e].rFieldOrder:= fieldOrder;
            FprivateFields[e].rAlias     := curRec.rAlias;
            FprivateFields[e].rCalc      := curRec.rCalc;
            end;
        2 : // Parameters
            begin
            FprivateFields[e].rField     := curRec.rField;
            FprivateFields[e].rTable     := curRec.rTable;
            FprivateFields[e].rParameter := curRec.rParameter;
            FprivateFields[e].rOperator  := curRec.rOperator;
//            FprivateFields[e].rCalc      := curRec.rCalc;
            end;
        3 : // Sorting
            begin
            FprivateFields[e].rField     := curRec.rField;
            FprivateFields[e].rTable     := curRec.rTable;
            FprivateFields[e].rSort      := fieldOrder;
            FprivateFields[e].rSortDesc  := curRec.rSortDesc;
//            FprivateFields[e].rCalc      := curRec.rCalc;
            end;
        4 : // Grouping
            begin
            FprivateFields[e].rCalc      := cGroupBy;
            end;
        end;

      i := GetFirstPositionOfStr(newLine, ','); // repeat until all fields have been assessed
      end;

  end;

begin


  // Clear without deleting the raw sql at position SQLRAWNUM
  SQLStr := FSQLGroup[SQLRAWNUM];
  for i := SQLSELNUM to SQLORDNUM do FSQLGroup[i] := '';

  // Remove the dbo. extension from the string.
  while GetFirstPositionOfStr(SQLStr, SQLEXT) > 0 do
    SQLStr := AnsiReplaceText(SQLStr, SQLEXT, '');

  // Remove 'TOP 100 PERCENT' from string.
  SQLStr := AnsiReplaceText(SQLStr, SQLTOP, '');

  pLength := Length(SQLStr) + 1;
  iSel  := GetFirstPositionOfStr(SQLStr, SQLSEL);
  iFrm  := GetFirstPositionOfStr(SQLStr, SQLFRM);
  iWhr  := GetFirstPositionOfStr(SQLStr, SQLWHR);
  iGrp  := GetFirstPositionOfStr(SQLStr, SQLGRP);
  iHav  := GetFirstPositionOfStr(SQLStr, SQLHAV);
  iOrd  := GetFirstPositionOfStr(SQLStr, SQLORD);

  // Select
  if iSel > 0 then FSQLGroup[SQLSELNUM] := GetString(SQLStr, iSel, iFrm);
  FSQLGroup[SQLSELNUM] := AnsiReplaceText(FSQLGroup[SQLSELNUM], SQLSEL, '');

  // From
  pEnd := pLength;
  if iWhr <> 0 then pEnd := iWhr
    else if iGrp <> 0 then pEnd := iGrp
      else if iOrd <> 0 then pEnd := iOrd;
  if iFrm > 0 then FSQLGroup[SQLFRMNUM] := GetString(SQLStr, iFrm, pEnd);
  FSQLGroup[SQLFRMNUM] := AnsiReplaceText(FSQLGroup[SQLFRMNUM], SQLFRM, '');
  FTable := FSQLGroup[SQLFRMNUM]; // do this to collect inner joins etc.

  // Where
  pEnd := pLength;
  if iGrp <> 0 then pEnd := iGrp
    else if iOrd <> 0 then pEnd := iOrd;
  if iWhr > 0 then FSQLGroup[SQLWHRNUM] := GetString(SQLStr, iWhr, pEnd);
  FSQLGroup[SQLWHRNUM] := AnsiReplaceText(FSQLGroup[SQLWHRNUM], SQLWHR, '');

  // Group
  pEnd := pLength;
  if iHav <> 0 then pEnd := iHav
    else if iOrd <> 0 then pEnd := iOrd;
  if iGrp > 0 then FSQLGroup[SQLGRPNUM] := GetString(SQLStr, iGrp, pEnd);
  FSQLGroup[SQLGRPNUM] := AnsiReplaceText(FSQLGroup[SQLGRPNUM], SQLGRP, '');

  // Having
  pEnd := pLength;
  if iOrd <> 0 then pEnd := iOrd;
  if iHav > 0 then FSQLGroup[SQLHAVNUM] := GetString(SQLStr, iHav, pEnd);
  FSQLGroup[SQLHAVNUM] := AnsiReplaceText(FSQLGroup[SQLHAVNUM], SQLHAV, '');

  // Order By
  pEnd := pLength;
  if iOrd > 0 then FSQLGroup[SQLORDNUM] := GetString(SQLStr, iOrd, pEnd);
  FSQLGroup[SQLORDNUM] := AnsiReplaceText(FSQLGroup[SQLORDNUM], SQLORD, '');


  SetLength(FprivateFields, 0);
  FprivateFields := nil;

  SplitLine(FSQLGroup[SQLSELNUM], 1);
  SplitLine(FSQLGroup[SQLWHRNUM], 2);
  SplitLine(FSQLGroup[SQLHAVNUM], 2);
  SplitLine(FSQLGroup[SQLORDNUM], 3);
  SplitLine(FSQLGroup[SQLGRPNUM], 4);

  Clear; // Clear fields
  for i := low(FprivateFields) to high(FprivateFields) do
    begin
    prvField := TSQLBuilderField.Create(  FprivateFields[i].rTable,
                                          FprivateFields[i].rField,
                                          FprivateFields[i].rAlias,
                                          FprivateFields[i].rParameter,
                                          FprivateFields[i].rOperator,
                                          FprivateFields[i].rCalc,
                                          FprivateFields[i].rDisplay);
    if FprivateFields[i].rSort > -1 then
      begin
      prvField.SortIndex := FprivateFields[i].rSort;
      prvField.SortDesc := FprivateFields[i].rSortDesc;
      end;
//    prvField := TSQLBuilderField.Create(curRec.  FTable, curField,'',[],[], cNone, false);
    InsertField(prvField)
    end;



end;

procedure TSQLBuilder.SetSQLField(Index : string; const Value:
    TSQLBuilderField);
const
  ERR01 = 'APPLICATION ERROR : No fields available.' + #13;
  ERR02 = 'APPLICATION ERROR : FieldName %s not found.' + #13;
var
  i       : integer;
  found   : integer;
begin

  if FFieldCount = 0 then raise Exception.Create(ERR01);                              // Instead of returning an HRESULT, raise an

  found := -1;
  for i := 0 to FieldCount - 1 do
    if FFieldList[i].FieldName = Index then
      found := i;

  if found = -1 then raise Exception.Create(Format(ERR02, [Index]));
  FFieldList[found] := Value;

end;

function TSQLBuilder.ToString: string;
begin
  result := BuildSQL;  // Build the SQL string, or passed TADOQuery;
end;

constructor TPropertyQrySQLBuilder.Create(const prmSQLSession : TSQLSession ; const
    prmTableName : string; var prmFields : ListOfFields ; prmSQLType : ESQLType
    = stSelect);
begin
  inherited Create(prmTableName, prmSQLType);
  FADOQuery := TADOQuery.Create(nil);
  FADOQuery.Connection := prmSQLSession.ThisConnection;
  FProperties := prmFields;
  AddProperties(FProperties);
end;

destructor TPropertyQrySQLBuilder.Destroy;
begin
  FADOQuery.Free;
  inherited;
end;

procedure TPropertyQrySQLBuilder.AddProperties(const prmProperties :
    ListOfFields);
var
  i, j, k : integer;
begin

  j := Low(prmProperties);
  k := High(prmProperties);
  for i := j to k do
    if prmProperties[i].FieldName <> '' then
      begin
      case FSQLType of
        stUpdate :  AddField(   FTable, prmProperties[i].FieldName , '',
                                [prmProperties[i].Parameter],['='], cNone,
                                prmProperties[i].Changed);
        else
                    AddField(   FTable, prmProperties[i].FieldName , '',
                                [prmProperties[i].Parameter],['='], cNone, True);
        end;//case
      end;

end;

function TPropertyQrySQLBuilder.Execute: Integer;
var
  myStr: string;
  myVar: Variant;
  i, j, k, l, curProp   : integer;
  curParam  :string;
  execSQL   : boolean;

begin

  try
  Result := 0;
  FADOQuery.Close;
  FADOQuery.SQL.Clear;
  FADOQuery.SQL.Add(BuildSQL);
  execSQL := False;

  case FSQLType of
    stUpdate :
      begin
      j := Low(FFieldList);
      k := High(FFieldList);
      for i := j to k do
        begin
        if FFieldList[i].DisplayInQuery then
          begin
          execSQL   := True;
          curProp   := GetFieldIndex(FFieldList[i].FieldName);
          curParam  := UPDATE_PREFIX + FFieldList[i].FieldName;
          // Update Value;
//          FADOQuery.Parameters.ParamByName(curParam).Value := FProperties[curProp].Value;
          myVar := FProperties[curProp].Save;
          if VarIsStr(myVar) then
            begin
            myStr := Trim(myVar);
            FADOQuery.Parameters.ParamByName(curParam).Value := myStr;
            end else
            FADOQuery.Parameters.ParamByName(curParam).Value := myVar;

//          FProperties[curProp].Save;
          end;
        // Parameter
        if FFieldList[i].ParameterCount > 0 then
          for l := 0 to FFieldList[i].ParameterCount -1 do
            FADOQuery.Parameters.ParamByName( FFieldList[i].ParameterName[l]).Value := FFieldList[i].Parameter[l];
        end;
      if execSQL then Result := FADOQuery.ExecSQL;
      end;

    stInsert :
      begin
      j := Low(FFieldList);
      k := High(FFieldList);
      for i := j to k do
        begin
        if FFieldList[i].DisplayInQuery then
          begin
          execSQL   := True;
          curProp   := GetFieldIndex(FFieldList[i].FieldName);
          curParam  := INSERT_PREFIX + FFieldList[i].FieldName;
          // Update Value;
          FADOQuery.Parameters.ParamByName(curParam).Value := FProperties[curProp].Save;
//          FProperties[curProp].Save;
          end;
        end;
      if execSQL then Result := FADOQuery.ExecSQL;
      end;

    stDelete :
      begin
      j := Low(FFieldList);
      k := High(FFieldList);
      for i := j to k do
        begin
        if FFieldList[i].ParameterCount > 0 then
          for l := 0 to FFieldList[i].ParameterCount -1 do
            FADOQuery.Parameters.ParamByName( FFieldList[i].ParameterName[l]).Value := FFieldList[i].Parameter[l];
        end;
//     MessageDlg(FADOQuery.SQL.Text, mtInformation, [mbok], 0);
      Result := FADOQuery.ExecSQL;
      end;

    stSelect :
      begin
      j := Low(FFieldList);
      k := High(FFieldList);
      for i := j to k do
        if FFieldList[i].ParameterCount > 0 then
          for l := 0 to FFieldList[i].ParameterCount -1 do
            FADOQuery.Parameters.ParamByName( FFieldList[i].ParameterName[l]).Value := FFieldList[i].Parameter[l];

      FADOQuery.Open;
      if FADOQuery.RecordCount > 0 then
        begin
        j := Low(FFieldList);
        k := High(FFieldList);
        for i := j to k do
          if FFieldList[i].DisplayInQuery then
            FProperties[GetFieldIndex(FFieldList[i].FieldName)].Load
            (FADOQuery.FieldByName(FFieldList[i].FieldName).AsVariant);
        end;
      Result := FADOQuery.RecordCount;
      FADOQuery.Close;
      end;


    end;//case


  except
    on E : Exception do raise Exception.Create(E.Message);
  end;

end;

function TPropertyQrySQLBuilder.GetFieldIndex(const prmFieldName : string):
    Integer;
var
  i : integer;
begin
  Result := -1;
  for i := Low(FProperties) to high(FProperties) do
    if FProperties[i].FieldName = prmFieldName then
      Result := i;
end;

constructor TSessionBase.Create;
begin
  inherited Create;
  ConnectionObject := TADOConnection.Create(nil);
end;

destructor TSessionBase.Destroy;
begin
  ConnectionObject.Free;
  inherited;
end;

constructor TSQLSession.Create(const prmDB : string ; const prmServer : string
    ; const prmUser : string = '' ; const prmPassword : string = '');
begin

  inherited Create;
  FDB       := prmDB;
  FServer   := prmServer;
  FUsername := prmUser;
  FPassword := prmPassword;
  SetupConnection;

end;

destructor TSQLSession.Destroy;
begin
  inherited;
end;

function TSQLSession.GetConnectionStringSQL: string;
const
  SQLSTR = 'Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';
begin
  Result := Format(SQLSTR, [FPassword, FUsername, FDB, FServer]);
end;

function TSQLSession.GetConnectionStringSSPI: string;
const
  SQLSTR = 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=%s;Data Source=%s';
begin
  Result := Format(SQLSTR, [FDB, FServer]);
end;

function TSQLSession.GetThisConnection: TADOConnection;
begin
  Result := ConnectionObject;
end;

procedure TSQLSession.SetDB(const Value: string);
begin

  if FDB <> Value then
  begin
    FDB := Value;
    SetupConnection;
  end;
  
end;

procedure TSQLSession.SetPassword(const Value: string);
begin
  if FPassword <> Value then
  begin
    FPassword := Value;
    SetupConnection;
  end;
end;

procedure TSQLSession.SetServer(const Value: string);
begin
  if FServer <> Value then
  begin
    FServer := Value;
    SetupConnection;
  end;
end;

procedure TSQLSession.SetupConnection;
var
        str : string;
begin

  try
  ConnectionObject.Close;
//  str := GetConnectionString;
  if FUsername <> '' then
    ConnectionObject.ConnectionString := GetConnectionStringSQL
    else
    ConnectionObject.ConnectionString := GetConnectionStringSSPI;
  ConnectionObject.LoginPrompt := False;
  ConnectionObject.Open;
  ConnectionObject.Close;
  except
//SMEEEE    on E : Exception do Exception.Create(E.Message);
  end;
  
end;

procedure TSQLSession.SetUsername(const Value: string);
begin

  if FUsername <> Value then
  begin
    FUsername := Value;
    SetupConnection;
  end;
  
end;

constructor TListOfLists.Create(prmDBConnection : string);
begin
  inherited Create;
  FListCount  := 0;
  FDBConnectionString := prmDBConnection;
end;

destructor TListOfLists.Destroy;
var
  i : integer;
begin
  for i := low(FLists) to high(FLists) do
    FLists[i].Free;
  Setlength(FLists, 0);
  inherited;
end;

function TListOfLists.GetListByName(Index : string): TListOfItems;
const
  ERR = 'Class : TLists' +  #13 +
        'Method: GetListByName' + #13 +
        'Name : ';
var
  i       : integer;
  found   : integer;
begin

  try
  if FListCount = 0 then raise Exception.Create('No Lists Available');
  found := -1;
  for i := 0 to FListCount - 1 do
    if FLists[i].Name = Index then
      found := i;

  if found = -1 then raise Exception.Create ('No Lists Available');
  Result := FLists[found];
  except
    on E:Exception do raise Exception.Create(ERR + Index + #13 + e.Message);
  end;

end;

function TListOfLists.GetListByNumber(Index: Integer): TListOfItems;
const
  ERR = 'Class  : TLists' +  #13 +
        'Method : GetListByNumber' + #13 +
        'Number : ';
begin

  try
  if FListCount = 0 then raise Exception.Create('No Lists Available');
  if (Index > FListCount -1) or (Index < 0 ) then raise Exception.Create( IntToStr(Index) +  ' not in range');
  Result := FLists[Index];
  except
    on E:Exception do raise Exception.Create(ERR + IntToStr(Index) + #13 + e.Message);
  end;

end;

procedure TListOfLists.ListCreate(const prmName : string ; prmGroup : integer ;
    prmTableName : string = ''; prmFieldName : string =''; prmKeyField : string
    = '' ; prmWhere : string = '' ; prmSortBy : string = '' ; prmDistinct :
    boolean = False);
begin
  Inc(FListCount);
  SetLength(FLists, FListCount);
  FLists[FListCount -1] := TListOfItems.Create(prmName, prmGroup, FDBConnectionString,
                                      prmTableName,
                                      prmFieldName, prmKeyField, prmWhere,
                                      prmSortBy, prmDistinct);
end;

procedure TListOfLists.Refresh;
var
  i : integer;
begin

  for i := low(FLists) to high(FLists) do
    FLists[i].Refresh;

end;

procedure TListOfLists.SetListByName(Index : string; const Value: TListOfItems);
const
  ERR = 'Class : TLists' +  #13 +
        'Method: SetListByName' + #13 +
        'Name : ';
var
  i       : integer;
  found   : integer;
begin

  try
  if FListCount = 0 then raise Exception.Create('No Lists Available');

  found := -1;
  for i := 0 to FListCount - 1 do
    if FLists[i].Name = Index then
      found := i;

  if found = -1 then raise Exception.Create ('No Lists Available');
  FLists[found] := Value;
  except
    on E:Exception do raise Exception.Create(ERR + Index + #13 + e.Message);
  end;
end;

procedure TListOfLists.SetListByNumber(Index: Integer; const Value: TListOfItems);
const
  ERR = 'Class  : TLists' +  #13 +
        'Method : SetListByNumber' + #13 +
        'Number : ';
begin

  try
  if FListCount = 0 then raise Exception.Create('No Lists Available');
  if (Index > FListCount -1) or (Index < 0 ) then raise Exception.Create( IntToStr(Index) +  ' not in range');
  FLists[Index] := Value;
  except
    on E:Exception do raise Exception.Create(ERR + IntToStr(Index) + #13 + e.Message);
  end;
end;

constructor TListOfItems.Create(const prmName : string ; prmGroup : integer ;
    prmConnectionString : string = ''; prmTableName : string = ''; prmFieldName
    : string =''; prmKeyField : string = '' ; prmWhere : string = '' ;
    prmSortBy : string = '' ; prmDistinct : boolean = False);
begin
  // TODO -cMM: TListOf.Create default body inserted
  FLoading      := True;
  inherited Create;
  FName         := prmName;
  FConnection   := prmConnectionString;
  FTableName    := prmTableName;
  FFieldName    := prmFieldName;
  FKeyField     := prmKeyField;
  FSortBy       := prmSortBy;
  FDistinct     := prmDistinct;
  FWhere        := prmWhere;
  FGroup        := prmGroup;
  FListOf       := TStringList.Create;
//  FListOfKey    := TStringList.Create;
  FDBList       := FTableName <> '';
  if FDBList then GetDBListOf;
  FLoading      := False;
end;

destructor TListOfItems.Destroy;
begin
  Clear;
  inherited;
end;

procedure TListOfItems.AddKeyItem(const prmKeyItem : variant);
var
  i: Integer;
begin
  i := Length(FKeyList) + 1;
  SetLength(FKeyList, i);
  FKeyList[i -1] := prmKeyItem;
end;

procedure TListOfItems.Clear;
begin
  FListOf.Clear;
  FKeyList := nil;
end;

function TListOfItems.DisplayValueGet(const prmKeyValue : Variant): string;
begin
  Result := '';
end;

function TListOfItems.DisplayValueIndex(const prmDisplayValue : string):
    Integer;
begin
  // TODO -cMM: TListOfItems.DisplayValueIndex default body inserted
  Result := -1;
end;

procedure TListOfItems.GetDBListOf;
var
  prvQry      : TADOQuery;
  prvCon      : TADOConnection;
  prvSQL      : string;
begin

  try

  Clear;

  prvSQL := 'SELECT';
  if FDistinct then AddStr(prvSQL, 'DISTINCT');
  AddStr(prvSQL, FFieldName);
  if FKeyField <> '' then AddStr(prvSQL, FKeyField, ',');
  AddStr(prvSQL, 'FROM');
  AddStr(prvSQL, FTableName);
  if FWhere <> '' then AddStr(prvSQL, FWhere, ' WHERE ');
  if FSortBy <> '' then AddStr(prvSQL, FSortBy, ' ORDER BY ');

  prvCon := TADOConnection.Create(nil);
  prvCon.ConnectionString := FConnection;
  prvCon.LoginPrompt := False;
  prvQry := TADOQuery.Create(nil);
  with prvQry do
    try
    Connection := prvCon;
    prvCon.Open;
    prvQry.SQL.Add(prvSQL);
    Open;

    FListOf.Add('<Empty>');
    AddKeyItem(Null);

    if RecordCount > 0 then
      while not EOF do
        begin
        FListOf.Add(prvQry.FieldByName(FFieldName).AsString);
        if FKeyField <> '' then
          AddKeyItem(prvQry.FieldByName(FKeyField).AsVariant)
          else
          AddKeyItem(prvQry.FieldByName(FFieldName).AsVariant);
        Next;
        end;

    prvCon.Close;
    finally
    prvQry.Free;
    prvCon.Free;

    if not FLoading then
      if Assigned(FOnRefresh) then
        FOnRefresh(Self, FName); // Fire event

    end;
  except
    on E:Exception do raise Exception.Create( 'Class : TListOf' +  #13 +
                                              'Method: GetListOf' + #13 +
                                              'Table : ' + FTableName + #13 +
                                              e.Message);
  end;

end;

function TListOfItems.GetSQL: string;
begin
  // TODO -cMM: TListOfItems.GetSQL default body inserted
  Result := '';
end;

function TListOfItems.KeyValueGet(const prmFieldIndex : integer): Variant;
var
  i: Integer;
begin

  i := prmFieldIndex;
  if i <> -1 then Result := FKeyList[i] else Result := Null;

end;

function TListOfItems.KeyValueGet(const prmFieldValue : string): Variant;
var
  i : integer;
begin

  i := FListOf.IndexOf(prmFieldValue);
  if i <> -1 then Result := FKeyList[i] else Result := Null;

end;

function TListOfItems.KeyValueIndex(const prmKeyValue : Variant): Integer;
var
  prvStr2: string;
  prvStr1: string;
  j: Integer;
  i: Integer;
begin
  j := -1;
  for i := low(FKeyList) to high(FKeyList) do
    if VarIsStr(FKeyList[i]) then
      begin
      prvStr1 := VarToStrDef(FKeyList[i], '');
      prvStr1 := LowerCase(Trim(prvStr1));
      prvStr2 := VarToStrDef(prmKeyValue, '');
      prvStr2 := LowerCase(Trim(prvStr2));
      if prvStr1 = prvStr2 then j := i;
      end else
      if FKeyList[i] = prmKeyValue then j := i;

  Result := j;
end;

procedure TListOfItems.ListAddValue(prmValues : array of Variant; prmDisplay :
    array of string);
begin
  // TODO -cMM: TListOf.ListAddValue default body inserted
end;

procedure TListOfItems.Refresh;
begin
  if FDBList then GetDBListOf;
end;












initialization
  begin
  end;
end.


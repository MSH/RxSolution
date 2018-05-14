unit PrescriptionClasses;

interface

type
  TFormulation = class;
  TProduct = class;

  TProduct = class(TObject)
  private
    FAutomaticDirections: Boolean;
    FBatch: string;
    FBreakPack: Boolean;
    FDescription: string;
    FDirections: string;
    FInterventionOutcome: string;
    FInterventionProblem: string;
    FItemPreview: string;
    FNotDispensed: Boolean;
    FProduct: string;
    FProductCost: Double;
    FProductID: string;
    FSKUActual: Double;
    FSKUCalculated: Double;
    FSKUCost: Double;
    FWarning: string;
  public
    constructor Create;
    property AutomaticDirections: Boolean read FAutomaticDirections write
        FAutomaticDirections;
    property Batch: string read FBatch write FBatch;
    property BreakPack: Boolean read FBreakPack write FBreakPack;
    property Description: string read FDescription write FDescription;
    property Directions: string read FDirections write FDirections;
    property InterventionOutcome: string read FInterventionOutcome write
        FInterventionOutcome;
    property InterventionProblem: string read FInterventionProblem write
        FInterventionProblem;
    property ItemPreview: string read FItemPreview write FItemPreview;
    property NotDispensed: Boolean read FNotDispensed write FNotDispensed;
    property Product: string read FProduct write FProduct;
    property ProductCost: Double read FProductCost write FProductCost;
    property ProductID: string read FProductID write FProductID;
    property SKUActual: Double read FSKUActual write FSKUActual;
    property SKUCalculated: Double read FSKUCalculated write FSKUCalculated;
    property SKUCost: Double read FSKUCost write FSKUCost;
    property Warning: string read FWarning write FWarning;
  end;

  TFormulation = class(TObject)
  private
    FAdministration: string;
    FAdministrationUnit: string;
    FDoseCalculated: Double;
    FDailyDoseCalculated: Double;
    FDescription: string;
    FDirections: string;
    FDuration: Double;
    FFormulation: string;
    FICDCode: string;
    FInterval: string;
    FProtocolID: string;
    FRepeatNumber: Double;
    FSKU: Double;
    FSKUTotal: Double;
  public
    constructor Create;
    property Administration: string read FAdministration write FAdministration;
    property AdministrationUnit: string read FAdministrationUnit write
        FAdministrationUnit;
    property DoseCalculated: Double read FDoseCalculated write FDoseCalculated;
    property DailyDoseCalculated: Double read FDailyDoseCalculated write
        FDailyDoseCalculated;
    property Description: string read FDescription write FDescription;
    property Directions: string read FDirections write FDirections;
    property Duration: Double read FDuration write FDuration;
    property Formulation: string read FFormulation write FFormulation;
    property ICDCode: string read FICDCode write FICDCode;
    property Interval: string read FInterval write FInterval;
    property ProtocolID: string read FProtocolID write FProtocolID;
    property RepeatNumber: Double read FRepeatNumber write FRepeatNumber;
    property SKU: Double read FSKU write FSKU;
    property SKUTotal: Double read FSKUTotal write FSKUTotal;
  end;

  TRXItem = class(TObject)
  private
    FFormulation: TFormulation;
    FId: string;
    FProduct: TProduct;
    FRxId: string;
  public
    constructor Create;
    destructor Destroy; override;
    property Formulation: TFormulation read FFormulation write FFormulation;
    property Id: string read FId write FId;
    property Product: TProduct read FProduct write FProduct;
    property RxId: string read FRxId write FRxId;
  end;

implementation

constructor TRXItem.Create;
begin
  inherited;
  FFormulation := TFormulation.Create;
  FProduct := TProduct.Create;
end;

destructor TRXItem.Destroy;
begin
  FFormulation.Free;
  FProduct.Free;
  inherited;
end;

constructor TFormulation.Create;
begin
  inherited Create;
end;

constructor TProduct.Create;
begin
  inherited Create;
end;



end.

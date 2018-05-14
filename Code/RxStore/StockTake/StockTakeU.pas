unit StockTakeU;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TStockTakeDM = class(TDataModule)
    AdoStockTakeConn: TADOConnection;
    qryStockTakeCatalog: TADOQuery;
    dsStockTakeCatalog: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockTakeDM: TStockTakeDM;

implementation

{$R *.dfm}

end.

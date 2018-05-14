object StockTakeDM: TStockTakeDM
  OldCreateOrder = False
  Left = 372
  Top = 241
  Height = 342
  Width = 424
  object AdoStockTakeConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxSolution_Merged;Data Source=sifisom'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object qryStockTakeCatalog: TADOQuery
    Connection = AdoStockTakeConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblStockTake.StockTake_dat, tblStockTake.Activated_bol, t' +
        'blStockTake.StockTake_str, tblStockTake.StockTake_ID, tblStockTa' +
        'ke.SystemStore_ID, '
      ' tblStockTake.AuthorizedBy_str, tblStockTake.Authorized_Dat,'
      
        ' tblStockTake.ItemsNo_int, tblStockTake.ActivatedBy_str, tblStoc' +
        'kTake.Activated_dat,  '
      'tblStockTake.LastUpdate_dat, '
      'tblStockTake.SystemStore_str, '
      
        'tblStockTake.CheckedOutBy_ID, tblStockTake.CheckedOutName_str, t' +
        'blStockTake.CheckedOut_bol, tblStockTake.CheckedOut_dat'
      'FROM tblStockTake'
      ''
      
        'ORDER BY tblStockTake.StockTake_dat DESC , tblStockTake.Activate' +
        'd_bol DESC , tblStockTake.StockTake_str;')
    Left = 48
    Top = 88
  end
  object dsStockTakeCatalog: TDataSource
    DataSet = qryStockTakeCatalog
    Left = 184
    Top = 88
  end
end

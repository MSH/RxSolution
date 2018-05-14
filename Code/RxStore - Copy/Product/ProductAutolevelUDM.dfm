object ProductAutoLevelDM: TProductAutoLevelDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 418
  Top = 156
  Height = 565
  Width = 514
  object ADOProductLevelConnection: TADOConnection
    CommandTimeout = 120
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=rxnew;Data Source=(local)'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 16
  end
  object tblProductCatalog: TADOTable
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    Filtered = True
    BeforePost = tblProductCatalogBeforePost
    TableName = 'strdprc_ProductAutoLevel'
    Left = 64
    Top = 112
    object tblProductCatalogGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object tblProductCatalogStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object tblProductCatalogForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object tblProductCatalogRoute_str: TWideStringField
      FieldName = 'Route_str'
      Size = 50
    end
    object tblProductCatalogPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object tblProductCatalogPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object tblProductCatalogLeadTime_str: TWideStringField
      FieldName = 'LeadTime_str'
      Size = 1
    end
    object tblProductCatalogSupplement_str: TWideStringField
      FieldName = 'Supplement_str'
      Size = 100
    end
    object tblProductCatalogSupplement_bol: TBooleanField
      FieldName = 'Supplement_bol'
    end
    object tblProductCatalogShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object tblProductCatalogLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object tblProductCatalogAvgDailyConsumption_int: TFloatField
      FieldName = 'AvgDailyConsumption_int'
    end
    object tblProductCatalogProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object tblProductCatalogLastReview_dat: TDateTimeField
      FieldName = 'LastReview_dat'
    end
    object tblProductCatalogDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object tblProductCatalogMaxStockSet_int: TIntegerField
      FieldName = 'MaxStockSet_int'
    end
    object tblProductCatalogMinStockSet_int: TIntegerField
      FieldName = 'MinStockSet_int'
    end
    object tblProductCatalogMaxStockCalc_int: TIntegerField
      FieldName = 'MaxStockCalc_int'
    end
    object tblProductCatalogMinStockCalc_int: TIntegerField
      FieldName = 'MinStockCalc_int'
    end
    object tblProductCatalogSafetyStockSet_int: TIntegerField
      FieldName = 'SafetyStockSet_int'
    end
    object tblProductCatalogSafetyStockCalc_Int: TIntegerField
      FieldName = 'SafetyStockCalc_Int'
    end
    object tblProductCatalogReviewLevel_bol: TBooleanField
      FieldName = 'ReviewLevel_bol'
    end
    object tblProductCatalogProcurementPeriod_str: TWideStringField
      FieldName = 'ProcurementPeriod_str'
      Size = 1
    end
    object tblProductCatalogReOrderStatus_str: TWideStringField
      FieldName = 'ReOrderStatus_str'
      Size = 1
    end
    object tblProductCatalogOrderType_str: TWideStringField
      FieldName = 'OrderType_str'
      Size = 1
    end
    object tblProductCatalogInstitutionEDL_bol: TBooleanField
      FieldName = 'InstitutionEDL_bol'
    end
    object tblProductCatalogDDDValue_int: TSmallintField
      FieldName = 'DDDValue_int'
    end
    object tblProductCatalogDDDUnit_str: TWideStringField
      FieldName = 'DDDUnit_str'
      Size = 6
    end
    object tblProductCatalogItemBugdet_mon: TBCDField
      FieldName = 'ItemBugdet_mon'
      Precision = 19
    end
    object tblProductCatalogMaxStockAvailableInBudget_int: TIntegerField
      FieldName = 'MaxStockAvailableInBudget_int'
    end
    object tblProductCatalogCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object tblProductCatalogQtyOnOrder_int: TIntegerField
      FieldName = 'QtyOnOrder_int'
    end
    object tblProductCatalogQtyOnHold_int: TIntegerField
      FieldName = 'QtyOnHold_int'
    end
    object tblProductCatalogProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object tblProductCatalogAvg_Lag_dbl: TFloatField
      FieldName = 'Avg_Lag_dbl'
    end
    object tblProductCatalogICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object tblProductCatalogECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
  end
  object stpProductLeadTime: TADOStoredProc
    Tag = 1
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    EnableBCD = False
    ProcedureName = 'strdprc_ProductLeadTime;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 64
    Top = 184
  end
  object stpProductConsumption: TADOStoredProc
    Tag = 1
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    OnCalcFields = stpProductConsumptionCalcFields
    ProcedureName = 'strdprc_ProductConsumption;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TypeA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@TypeB'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 64
    Top = 232
    object stpProductConsumptionProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpProductConsumptionProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 9
    end
    object stpProductConsumptionDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object stpProductConsumptionType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 2
    end
    object stpProductConsumptionDayQuantity_int: TFloatField
      FieldName = 'DayQuantity_int'
    end
    object stpProductConsumptionAccumDay_int: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AccumDay_int'
      Calculated = True
    end
    object stpProductConsumptionAccumDayQuantity_int: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AccumDayQuantity_int'
      Calculated = True
    end
    object stpProductConsumptionDayMinQOH_int: TIntegerField
      FieldName = 'DayMinQOH_int'
    end
  end
  object DataSource1: TDataSource
    DataSet = tblProductCatalog
    Left = 240
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = stpProductLeadTime
    Left = 240
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = stpProductConsumption
    Left = 240
    Top = 232
  end
  object stpProductFYTDExpenditures: TADOStoredProc
    Tag = 1
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductFYTDExpenditures;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 64
    Top = 280
  end
  object stpProductCurrentOnHold: TADOStoredProc
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductCurrentOnHold;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 64
    Top = 328
  end
  object stpProductCurrentOnOrder: TADOStoredProc
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductCurrentOnOrder;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 64
    Top = 384
  end
  object qrySystemLeadtime: TADOQuery
    Tag = 1
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT LeadTimeA_int FROM TblSystem')
    Left = 64
    Top = 440
  end
  object tblProductCatalogStatus: TADOTable
    Connection = ADOProductLevelConnection
    BeforePost = tblProductCatalogStatusBeforePost
    TableName = 'strdprc_ProductAutoLevelStatus'
    Left = 360
    Top = 112
  end
end

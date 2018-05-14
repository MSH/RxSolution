object DemanderLevelDM: TDemanderLevelDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 834
  Top = 189
  Height = 475
  Width = 385
  object ADOProductLevelConnection: TADOConnection
    CommandTimeout = 180
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxNew;Data Source=sifisom'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 16
  end
  object stpProductLeadTime: TADOStoredProc
    Tag = 1
    Connection = ADOProductLevelConnection
    ProcedureName = 'strdprc_ProductLeadTime'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@DateA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@DateB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 64
    Top = 152
  end
  object stpProductConsumption: TADOStoredProc
    Tag = 1
    Connection = ADOProductLevelConnection
    ProcedureName = 'strdprc_ProductConsumptionPerDemander;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@DateA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@DateB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@TypeA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = 'A'
      end
      item
        Name = '@TypeB'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = 'A'
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 64
    Top = 208
    object stpProductConsumptionDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object stpProductConsumptionProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpProductConsumptionDayQuantity_int: TFloatField
      FieldName = 'DayQuantity_int'
      ReadOnly = True
    end
    object stpProductConsumptionDayMinQOH_int: TIntegerField
      FieldName = 'DayMinQOH_int'
      ReadOnly = True
    end
    object stpProductConsumptionProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpProductConsumptionDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object stpProductConsumptionType_str: TStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpProductConsumptionAccumDay_Int: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AccumDay_Int'
      Calculated = True
    end
    object stpProductConsumptionAccumDayQuantity_Int: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AccumDayQuantity_Int'
      Calculated = True
    end
  end
  object qrySystemLeadtime: TADOQuery
    Tag = 1
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT LeadTimeA_int FROM TblSystem')
    Left = 56
    Top = 280
    object qrySystemLeadtimeLeadTimeA_int: TIntegerField
      FieldName = 'LeadTimeA_int'
    end
  end
  object qryDemander: TADOQuery
    Connection = ADOProductLevelConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM tblDemander'
      'WHERE Demander_ID =:DemanderID')
    Left = 56
    Top = 344
    object qryDemanderDemander_ID: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
    object qryDemanderCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object qryDemanderName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object qryDemanderAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 50
    end
    object qryDemanderAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 50
    end
    object qryDemanderAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 50
    end
    object qryDemanderCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 50
    end
    object qryDemanderPostalCode_str: TWideStringField
      FieldName = 'PostalCode_str'
    end
    object qryDemanderHealthDistrict_str: TWideStringField
      FieldName = 'HealthDistrict_str'
      Size = 50
    end
    object qryDemanderMagisterialDistrict: TWideStringField
      FieldName = 'MagisterialDistrict'
      Size = 50
    end
    object qryDemanderRegion_str: TWideStringField
      FieldName = 'Region_str'
      Size = 50
    end
    object qryDemanderType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 50
    end
    object qryDemanderBeds_int: TIntegerField
      FieldName = 'Beds_int'
    end
    object qryDemanderAuthority_str: TWideStringField
      FieldName = 'Authority_str'
      Size = 50
    end
    object qryDemanderContact1_str: TWideStringField
      FieldName = 'Contact1_str'
      Size = 50
    end
    object qryDemanderContact2_str: TWideStringField
      FieldName = 'Contact2_str'
      Size = 50
    end
    object qryDemanderPhone_str: TWideStringField
      FieldName = 'Phone_str'
      Size = 50
    end
    object qryDemanderFax_str: TWideStringField
      FieldName = 'Fax_str'
    end
    object qryDemanderPopulation_int: TIntegerField
      FieldName = 'Population_int'
    end
    object qryDemanderInPatients_int: TIntegerField
      FieldName = 'InPatients_int'
    end
    object qryDemanderOutPatients_int: TIntegerField
      FieldName = 'OutPatients_int'
    end
    object qryDemanderLevy_str: TWideStringField
      FieldName = 'Levy_str'
      Size = 1
    end
    object qryDemanderDeliveryRoute_str: TWideStringField
      FieldName = 'DeliveryRoute_str'
      Size = 50
    end
    object qryDemanderAccount_str: TWideStringField
      FieldName = 'Account_str'
      Size = 50
    end
    object qryDemanderActive_bol: TBooleanField
      FieldName = 'Active_bol'
    end
    object qryDemanderBudget_mon: TBCDField
      FieldName = 'Budget_mon'
      Precision = 19
    end
    object qryDemanderBudgetBalance_mon: TBCDField
      FieldName = 'BudgetBalance_mon'
      Precision = 19
    end
    object qryDemanderItemsLevel_str: TWideStringField
      FieldName = 'ItemsLevel_str'
      Size = 50
    end
    object qryDemanderRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryDemanderPostalAddress1_str: TWideStringField
      FieldName = 'PostalAddress1_str'
      Size = 100
    end
    object qryDemanderPostalAddress2_str: TWideStringField
      FieldName = 'PostalAddress2_str'
      Size = 100
    end
    object qryDemanderPostalAddress3_str: TWideStringField
      FieldName = 'PostalAddress3_str'
      Size = 100
    end
    object qryDemanderPostalLocation_str: TWideStringField
      FieldName = 'PostalLocation_str'
      Size = 100
    end
    object qryDemanderPostalPostalCode_str: TWideStringField
      FieldName = 'PostalPostalCode_str'
      Size = 50
    end
    object qryDemanderShipAddress1_str: TWideStringField
      FieldName = 'ShipAddress1_str'
      Size = 100
    end
    object qryDemanderShipAddress2_str: TWideStringField
      FieldName = 'ShipAddress2_str'
      Size = 100
    end
    object qryDemanderShipAddress3_str: TWideStringField
      FieldName = 'ShipAddress3_str'
      Size = 100
    end
    object qryDemanderShipLocation_str: TWideStringField
      FieldName = 'ShipLocation_str'
      Size = 100
    end
    object qryDemanderShipPostalCode_str: TWideStringField
      FieldName = 'ShipPostalCode_str'
    end
    object qryDemanderOpenOrMaxDriven: TBooleanField
      FieldName = 'OpenOrMaxDriven'
    end
    object qryDemanderLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryDemanderLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryDemanderProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object qryDemanderLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object qryDemanderProvince_str: TWideStringField
      FieldName = 'Province_str'
      Size = 50
    end
    object qryDemandereMail_str: TWideStringField
      FieldName = 'eMail_str'
      Size = 50
    end
    object qryDemanderCanDispense_bol: TBooleanField
      FieldName = 'CanDispense_bol'
    end
    object qryDemanderDemanderUnique_ID: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
  end
  object stpProductList: TADOStoredProc
    Connection = ADOProductLevelConnection
    ProcedureName = 'strdprc_DemanderProductList;1'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 1
      end>
    Left = 64
    Top = 88
    object stpProductListDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object stpProductListAvgConsumption_dbl: TFloatField
      FieldName = 'AvgConsumption_dbl'
    end
    object stpProductListProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object stpProductListLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object stpProductListMaxStockSet_int: TIntegerField
      FieldName = 'MaxStockSet_int'
    end
    object stpProductListMinStockSet_int: TIntegerField
      FieldName = 'MinStockSet_int'
    end
    object stpProductListQtyAuthorized_int: TIntegerField
      FieldName = 'QtyAuthorized_int'
    end
    object stpProductListLeadTime_str: TWideStringField
      FieldName = 'LeadTime_str'
      Size = 1
    end
    object stpProductListProcurementPeriod_str: TWideStringField
      FieldName = 'ProcurementPeriod_str'
      Size = 1
    end
    object stpProductListDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object stpProductListProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpProductListDDDValue_int: TSmallintField
      FieldName = 'DDDValue_int'
    end
    object stpProductListProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object stpProductListProductMin: TIntegerField
      FieldName = 'ProductMin'
    end
    object stpProductListProductMax: TIntegerField
      FieldName = 'ProductMax'
    end
  end
end

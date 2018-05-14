object BudgetDM: TBudgetDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 332
  Top = 175
  Height = 430
  Width = 459
  object ADOConnectionBudget: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=(local)'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 73
    Top = 40
  end
  object tblBudgetProducts: TADOTable
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    TableName = 'strdprc_BudgetProducts'
    Left = 72
    Top = 96
    object tblBudgetProductsProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 13
    end
    object tblBudgetProductsReviewedItemBudget_mon: TBCDField
      FieldName = 'ReviewedItemBudget_mon'
      currency = True
      Precision = 19
    end
    object tblBudgetProductsItemBugdet_mon: TBCDField
      FieldName = 'ItemBugdet_mon'
      Precision = 19
    end
    object tblBudgetProductsGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 120
    end
    object tblBudgetProductsStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object tblBudgetProductsForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object tblBudgetProductsATC_str: TWideStringField
      FieldName = 'ATC_str'
      Size = 7
    end
    object tblBudgetProductsInstLevelOfUse_str: TWideStringField
      FieldName = 'InstLevelOfUse_str'
      Size = 3
    end
    object tblBudgetProductsVEN_str: TWideStringField
      FieldName = 'VEN_str'
      Size = 1
    end
    object tblBudgetProductsProvincialEDL_bol: TBooleanField
      FieldName = 'ProvincialEDL_bol'
    end
    object tblBudgetProductsPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object tblBudgetProductsPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object tblBudgetProductsPackSizeCode_str: TWideStringField
      FieldName = 'PackSizeCode_str'
      Size = 1
    end
    object tblBudgetProductsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object tblBudgetProductsGroup1_str: TWideStringField
      FieldName = 'Group1_str'
    end
    object tblBudgetProductsGroup2_str: TWideStringField
      FieldName = 'Group2_str'
    end
    object tblBudgetProductsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object tblBudgetProductsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
  end
  object tblBudgetTotalEDL: TADOTable
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    TableName = 'strdprc_BudgetTotalEDL'
    Left = 72
    Top = 144
  end
  object stpBudgetUPDATEItemBudget: TADOStoredProc
    Tag = 1
    Connection = ADOConnectionBudget
    ProcedureName = 'strdprc_BudgetUPDATEItemBudget'
    Parameters = <
      item
        Name = 'BudgetPeriod'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'Period'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'InflationRate'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 18
        Value = Null
      end
      item
        Name = 'DateStart'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'DateEnd'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 232
    Top = 104
  end
  object stpBudgetTenderInflation: TADOStoredProc
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    ProcedureName = 'strdprc_BudgetTenderInflation'
    Parameters = <
      item
        Name = 'FYContract'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 1
        Value = Null
      end
      item
        Name = 'LFYContract'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 1
        Value = Null
      end>
    Left = 232
    Top = 152
  end
  object stpBudgetUPDATEItemBudgetFromReviewed: TADOStoredProc
    Tag = 1
    Connection = ADOConnectionBudget
    ProcedureName = 'strdprc_BudgetUPDATEItemBudgetFromReviewed'
    Parameters = <>
    Left = 232
    Top = 200
  end
  object stpBudgetUPDATEResetItemBudget: TADOStoredProc
    Tag = 1
    Connection = ADOConnectionBudget
    ProcedureName = 'strdprc_BudgetUPDATEResetItemBudget'
    Parameters = <>
    Left = 232
    Top = 248
  end
  object tblBudgetVEN: TADOTable
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    TableName = 'strdprc_BudgetVEN'
    Left = 72
    Top = 200
  end
  object tblBudgetLevelOfUse: TADOTable
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    TableName = 'strdprc_BudgetLevelOfUse'
    Left = 72
    Top = 248
  end
  object tblBudgetAccounts: TADOTable
    Connection = ADOConnectionBudget
    CursorType = ctStatic
    TableName = 'strdprc_BudgetAccounts'
    Left = 72
    Top = 296
    object tblBudgetAccountsSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object tblBudgetAccountsDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object tblBudgetAccountsFinancialYear_str: TWideStringField
      FieldName = 'FinancialYear_str'
      Size = 4
    end
    object tblBudgetAccountsFYStart_dat: TDateTimeField
      FieldName = 'FYStart_dat'
    end
    object tblBudgetAccountsFYEnd_dat: TDateTimeField
      FieldName = 'FYEnd_dat'
    end
    object tblBudgetAccountsDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object tblBudgetAccountsType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 10
    end
    object tblBudgetAccountsMainDepot_str: TWideStringField
      FieldName = 'MainDepot_str'
      Size = 7
    end
    object tblBudgetAccountsProcurementPeriodA_int: TIntegerField
      FieldName = 'ProcurementPeriodA_int'
    end
    object tblBudgetAccountsProcurementPeriodB_int: TIntegerField
      FieldName = 'ProcurementPeriodB_int'
    end
    object tblBudgetAccountsProcurementPeriodC_int: TIntegerField
      FieldName = 'ProcurementPeriodC_int'
    end
    object tblBudgetAccountsProcurementPeriodD_int: TIntegerField
      FieldName = 'ProcurementPeriodD_int'
    end
    object tblBudgetAccountsLeadTimeA_int: TIntegerField
      FieldName = 'LeadTimeA_int'
    end
    object tblBudgetAccountsLeadTimeB_int: TIntegerField
      FieldName = 'LeadTimeB_int'
    end
    object tblBudgetAccountsLeadTimeC_int: TIntegerField
      FieldName = 'LeadTimeC_int'
    end
    object tblBudgetAccountsLeadTimeD_int: TIntegerField
      FieldName = 'LeadTimeD_int'
    end
    object tblBudgetAccountsA_int: TIntegerField
      FieldName = 'A_int'
    end
    object tblBudgetAccountsB_int: TIntegerField
      FieldName = 'B_int'
    end
    object tblBudgetAccountsVAT_int: TIntegerField
      FieldName = 'VAT_int'
    end
    object tblBudgetAccountsInflationRate_int: TIntegerField
      FieldName = 'InflationRate_int'
    end
  end
end

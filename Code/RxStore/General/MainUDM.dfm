object MainDm: TMainDm
  OldCreateOrder = False
  Left = 404
  Top = 84
  Height = 910
  Width = 1280
  object SupplierADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=RPMSA3'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 56
  end
  object DemanderADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=RPMSA3'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 152
    Top = 8
  end
  object ADOMainDBConnection: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=RxBarCoding;Data Source=.\SQLEXPRE' +
      'SS;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=ZA-SMAHLABA;Use Encryption for Data=False;Tag' +
      ' with column collation when possible=False'
    ConnectionTimeout = 180
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 138
  end
  object ADOSecurityConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=RPMSA3'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 7
  end
  object tblMainSystem: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = tblMainSystemBeforePost
    TableName = 'TblSystem'
    Left = 64
    Top = 200
    object tblMainSystemSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object tblMainSystemDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object tblMainSystemFinancialYear_str: TWideStringField
      FieldName = 'FinancialYear_str'
      Size = 4
    end
    object tblMainSystemFYStart_dat: TDateTimeField
      FieldName = 'FYStart_dat'
    end
    object tblMainSystemFYEnd_dat: TDateTimeField
      FieldName = 'FYEnd_dat'
    end
    object tblMainSystemDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object tblMainSystemAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 150
    end
    object tblMainSystemAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 150
    end
    object tblMainSystemAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 150
    end
    object tblMainSystemCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 150
    end
    object tblMainSystemPostalCode_str: TWideStringField
      FieldName = 'PostalCode_str'
      Size = 15
    end
    object tblMainSystemPhone_str: TWideStringField
      FieldName = 'Phone_str'
      Size = 25
    end
    object tblMainSystemFax_str: TWideStringField
      FieldName = 'Fax_str'
      Size = 25
    end
    object tblMainSystemDistrict_str: TWideStringField
      FieldName = 'District_str'
      Size = 150
    end
    object tblMainSystemRegion_str: TWideStringField
      FieldName = 'Region_str'
      Size = 150
    end
    object tblMainSystemContact_str: TWideStringField
      FieldName = 'Contact_str'
      Size = 150
    end
    object tblMainSystemProvince_str: TWideStringField
      FieldName = 'Province_str'
      Size = 150
    end
    object tblMainSystemType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 150
    end
    object tblMainSystemVAT_int: TFloatField
      FieldName = 'VAT_int'
    end
    object tblMainSystemMainDepot_str: TWideStringField
      FieldName = 'MainDepot_str'
      Size = 7
    end
    object tblMainSystemBudget_mon: TBCDField
      FieldName = 'Budget_mon'
      Precision = 19
    end
    object tblMainSystemBudgetBalance_mon: TBCDField
      FieldName = 'BudgetBalance_mon'
      Precision = 19
    end
    object tblMainSystemLevyToRequisition_bol: TBooleanField
      FieldName = 'LevyToRequisition_bol'
    end
    object tblMainSystemLevyRequisition_int: TFloatField
      FieldName = 'LevyRequisition_int'
    end
    object tblMainSystemLevyToOrder_bol: TBooleanField
      FieldName = 'LevyToOrder_bol'
    end
    object tblMainSystemLevyOrder_int: TFloatField
      FieldName = 'LevyOrder_int'
    end
    object tblMainSystemLevyToReceipt_bol: TBooleanField
      FieldName = 'LevyToReceipt_bol'
    end
    object tblMainSystemLevyReceipt_int: TFloatField
      FieldName = 'LevyReceipt_int'
    end
    object tblMainSystemInflationRate_int: TIntegerField
      FieldName = 'InflationRate_int'
    end
    object tblMainSystemProcurementPeriodA_int: TIntegerField
      FieldName = 'ProcurementPeriodA_int'
    end
    object tblMainSystemProcurementPeriodB_int: TIntegerField
      FieldName = 'ProcurementPeriodB_int'
    end
    object tblMainSystemProcurementPeriodC_int: TIntegerField
      FieldName = 'ProcurementPeriodC_int'
    end
    object tblMainSystemProcurementPeriodD_int: TIntegerField
      FieldName = 'ProcurementPeriodD_int'
    end
    object tblMainSystemLeadTimeA_int: TIntegerField
      FieldName = 'LeadTimeA_int'
    end
    object tblMainSystemLeadTimeB_int: TIntegerField
      FieldName = 'LeadTimeB_int'
    end
    object tblMainSystemLeadTimeC_int: TIntegerField
      FieldName = 'LeadTimeC_int'
    end
    object tblMainSystemLeadTimeD_int: TIntegerField
      FieldName = 'LeadTimeD_int'
    end
    object tblMainSystemA_int: TIntegerField
      FieldName = 'A_int'
    end
    object tblMainSystemB_int: TIntegerField
      FieldName = 'B_int'
    end
    object tblMainSystemAutoProductCode_bol: TBooleanField
      FieldName = 'AutoProductCode_bol'
    end
    object tblMainSystemRxCosting: TWideStringField
      FieldName = 'RxCosting'
      FixedChar = True
      Size = 1
    end
    object tblMainSystemReportBuilderFile: TStringField
      FieldName = 'ReportBuilderFile'
      Size = 255
    end
    object tblMainSystemSupplierDef_ID: TIntegerField
      FieldName = 'SupplierDef_ID'
    end
    object tblMainSystemAccountDef_ID: TIntegerField
      FieldName = 'AccountDef_ID'
    end
    object tblMainSystemDemanderDef_ID: TIntegerField
      FieldName = 'DemanderDef_ID'
    end
    object tblMainSystemReportStart_dat: TDateTimeField
      FieldName = 'ReportStart_dat'
    end
    object tblMainSystemReportEnd_dat: TDateTimeField
      FieldName = 'ReportEnd_dat'
    end
    object tblMainSystemLevel_01Description_str: TWideStringField
      FieldName = 'Level_01Description_str'
      Size = 50
    end
    object tblMainSystemLevel_02Description_str: TWideStringField
      FieldName = 'Level_02Description_str'
      Size = 50
    end
    object tblMainSystemLevel_03Description_str: TWideStringField
      FieldName = 'Level_03Description_str'
      Size = 50
    end
    object tblMainSystemLevel_04Description_str: TWideStringField
      FieldName = 'Level_04Description_str'
      Size = 50
    end
    object tblMainSystemBatchDispensingReducesStock_Bol: TBooleanField
      FieldName = 'BatchDispensingReducesStock_Bol'
    end
    object tblMainSystemAllowLessThanZeroStock_Bol: TBooleanField
      FieldName = 'AllowLessThanZeroStock_Bol'
    end
    object tblMainSystemprovincialLogo_img: TBlobField
      FieldName = 'provincialLogo_img'
    end
    object tblMainSystembatchManagement_bol: TBooleanField
      FieldName = 'batchManagement_bol'
    end
    object tblMainSystemShortDatedDays_int: TIntegerField
      FieldName = 'ShortDatedDays_int'
    end
    object tblMainSystemAvgWeighedPricing_bol: TBooleanField
      FieldName = 'AvgWeighedPricing_bol'
    end
    object tblMainSystemTemp01: TWideStringField
      FieldName = 'Temp01'
      Size = 10
    end
    object tblMainSystemTemp02: TWideStringField
      FieldName = 'Temp02'
      Size = 10
    end
    object tblMainSystemTemp03: TWideStringField
      FieldName = 'Temp03'
      Size = 10
    end
    object tblMainSystemTemp04: TWideStringField
      FieldName = 'Temp04'
      Size = 10
    end
    object tblMainSystemTemp05: TWideStringField
      FieldName = 'Temp05'
      Size = 50
    end
    object tblMainSystemCohortInterval: TIntegerField
      FieldName = 'CohortInterval'
    end
    object tblMainSystemCohortLength: TIntegerField
      FieldName = 'CohortLength'
    end
    object tblMainSystemVersion_str: TWideStringField
      FieldName = 'Version_str'
      Size = 10
    end
    object tblMainSystemCheckDispensingStock_bol: TBooleanField
      FieldName = 'CheckDispensingStock_bol'
    end
    object tblMainSystemEditableExitProductPrice_bol: TBooleanField
      FieldName = 'EditableExitProductPrice_bol'
    end
    object tblMainSystemdoNotShowDailyDefinedDose_bol: TBooleanField
      FieldName = 'doNotShowDailyDefinedDose_bol'
    end
    object tblMainSystempostRxBeforePrint_bol: TBooleanField
      FieldName = 'postRxBeforePrint_bol'
    end
    object tblMainSystemrequestPinBeforePostRx_bol: TBooleanField
      FieldName = 'requestPinBeforePostRx_bol'
    end
    object tblMainSystemuseExactDayForExpiryDate_bol: TBooleanField
      FieldName = 'useExactDayForExpiryDate_bol'
    end
    object tblMainSystemdelta9PatientIntegration_bol: TBooleanField
      FieldName = 'delta9PatientIntegration_bol'
    end
    object tblMainSystemuseBarCoding_bol: TBooleanField
      FieldName = 'useBarCoding_bol'
    end
    object tblMainSystemISOStdNumber_str: TWideStringField
      FieldName = 'ISOStdNumber_str'
      Size = 50
    end
    object tblMainSystemuseBiometricMachine_bol: TBooleanField
      FieldName = 'useBiometricMachine_bol'
    end
    object tblMainSystemnonEditableRxDate_bol: TBooleanField
      FieldName = 'nonEditableRxDate_bol'
    end
    object tblMainSystemExpiringPassword_bol: TBooleanField
      FieldName = 'ExpiringPassword_bol'
    end
    object tblMainSystemPasswordActiveDays_int: TIntegerField
      FieldName = 'PasswordActiveDays_int'
    end
    object tblMainSystemrequestPinBeforePost_bol: TBooleanField
      FieldName = 'requestPinBeforePost_bol'
    end
    object tblMainSystemSystemStoreUnique_ID: TGuidField
      FieldName = 'SystemStoreUnique_ID'
      FixedChar = True
      Size = 38
    end
    object tblMainSystemPAABPatientIntegration_bol: TBooleanField
      FieldName = 'PAABPatientIntegration_bol'
    end
    object tblMainSystemOrdersAuthorisation_bol: TBooleanField
      FieldName = 'OrdersAuthorisation_bol'
    end
    object tblMainSystememail_str: TWideStringField
      FieldName = 'email_str'
      Size = 40
    end
    object tblMainSystemnonEditableScriptDropDowns_bol: TBooleanField
      FieldName = 'nonEditableScriptDropDowns_bol'
    end
    object tblMainSystemPasswordLength_int: TIntegerField
      FieldName = 'PasswordLength_int'
    end
    object tblMainSystemprojectlogo_img: TBlobField
      FieldName = 'projectlogo_img'
    end
  end
  object dstblMainSystem: TDataSource
    DataSet = tblMainSystem
    Left = 224
    Top = 200
  end
  object tblGeneralProductDescription: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'strdprc_GeneralProductDescription'
    Left = 64
    Top = 248
    object tblGeneralProductDescriptionProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object tblGeneralProductDescriptionDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 470
    end
    object tblGeneralProductDescriptionPackSize: TWideStringField
      FieldName = 'PackSize'
      ReadOnly = True
      Size = 101
    end
    object tblGeneralProductDescriptionProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object tblGeneralProductDescriptionCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object tblGeneralProductDescriptionNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object tblGeneralProductDescriptionICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object tblGeneralProductDescriptionECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object tblGeneralProductDescriptionInstitutionEDL_bol: TBooleanField
      FieldName = 'InstitutionEDL_bol'
    end
    object tblGeneralProductDescriptionNationalEDL_bol: TBooleanField
      FieldName = 'NationalEDL_bol'
    end
    object tblGeneralProductDescriptionProvincialEDL_bol: TBooleanField
      FieldName = 'ProvincialEDL_bol'
    end
    object tblGeneralProductDescriptionQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object tblGeneralProductDescriptionDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object tblGeneralProductDescriptionGroup1_str: TWideStringField
      FieldName = 'Group1_str'
      Size = 50
    end
    object tblGeneralProductDescriptionGroup2_str: TWideStringField
      FieldName = 'Group2_str'
      Size = 50
    end
    object tblGeneralProductDescriptionSupplement_str: TWideStringField
      FieldName = 'Supplement_str'
      Size = 100
    end
    object tblGeneralProductDescriptionBin_str: TWideStringField
      FieldName = 'Bin_str'
      Size = 30
    end
  end
  object dstblGeneralProductDescription: TDataSource
    DataSet = tblGeneralProductDescription
    Left = 224
    Top = 256
  end
  object StockControlADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=RPMSA3'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 264
    Top = 57
  end
  object UPDATESQL_ProductStockControl: TADOStoredProc
    Connection = StockControlADOConnection
    CursorLocation = clUseServer
    ProcedureName = 'strdprc_ProductUPDATE_StockRequests'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 0
      end
      item
        Name = 'ItemsRequested'
        DataType = ftLargeint
        Value = '0'
      end
      item
        Name = 'ItemsIssued'
        DataType = ftLargeint
        Value = '0'
      end
      item
        Name = 'ItemsPosted'
        DataType = ftLargeint
        Value = '0'
      end
      item
        Name = 'ItemsOrdered'
        DataType = ftLargeint
        Value = '0'
      end
      item
        Name = 'ItemsReceived'
        DataType = ftLargeint
        Value = '0'
      end>
    Left = 480
    Top = 383
  end
  object NumberingADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution_Latest;Data Sourc' +
      'e=RPMSA3'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 288
    Top = 8
  end
  object tblRecordNumbering1: TADOTable
    Tag = 1
    Connection = NumberingADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    TableName = 'tblSystemRecordNumbering'
    Left = 328
    Top = 426
  end
  object tblStockStartup: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = tblStockStartupBeforePost
    TableName = 'strdprc_ProductCatalogStartup'
    Left = 64
    Top = 408
  end
  object dstblStockStartup: TDataSource
    DataSet = tblStockStartup
    Left = 224
    Top = 408
  end
  object stpGeneralProductLookup: TADOStoredProc
    Connection = ADOMainDBConnection
    CursorLocation = clUseServer
    CursorType = ctDynamic
    ProcedureName = 'strdprc_GeneralProductLookup'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 64
    Top = 312
  end
  object stpStockControlRequisitionAudit: TADOStoredProc
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlRequisitionAudit'
    Parameters = <
      item
        Name = 'ReferanceStr'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 64
    Top = 360
  end
  object TlkProductPackSizeGroup1: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkProductPackSizeGroup1'
    Left = 64
    Top = 480
    object TlkProductPackSizeGroup1Group1_ID: TAutoIncField
      FieldName = 'Group1_ID'
      ReadOnly = True
    end
    object TlkProductPackSizeGroup1Code_str: TWideStringField
      FieldName = 'Code_str'
      Size = 50
    end
    object TlkProductPackSizeGroup1Description_str: TWideStringField
      FieldName = 'Description_str'
      Size = 120
    end
    object TlkProductPackSizeGroup1Budget_mon: TBCDField
      FieldName = 'Budget_mon'
      currency = True
      Precision = 19
    end
  end
  object TlkProductPackSizeGroup2: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkProductPackSizeGroup2'
    Left = 64
    Top = 536
    object TlkProductPackSizeGroup2Group2_ID: TAutoIncField
      FieldName = 'Group2_ID'
      ReadOnly = True
    end
    object TlkProductPackSizeGroup2Code_str: TWideStringField
      FieldName = 'Code_str'
      Size = 50
    end
    object TlkProductPackSizeGroup2Description_str: TWideStringField
      FieldName = 'Description_str'
      Size = 120
    end
    object TlkProductPackSizeGroup2Budget_mon: TBCDField
      FieldName = 'Budget_mon'
      currency = True
      Precision = 19
    end
  end
  object dsTlkProductPackSizeGroup1: TDataSource
    DataSet = TlkProductPackSizeGroup1
    Left = 224
    Top = 480
  end
  object dsTlkProductPackSizeGroup2: TDataSource
    DataSet = TlkProductPackSizeGroup2
    Left = 224
    Top = 536
  end
  object TblBin: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = TblBinBeforePost
    TableName = 'TblBin'
    Left = 64
    Top = 592
    object TblBinCode_str: TWideStringField
      DisplayWidth = 30
      FieldName = 'Code_str'
      Size = 30
    end
    object TblBinDescription_str: TWideStringField
      DisplayWidth = 50
      FieldName = 'Description_str'
      Size = 50
    end
    object TblBinSortorder: TIntegerField
      FieldName = 'Sortorder'
    end
  end
  object dsTblBin: TDataSource
    DataSet = TblBin
    Left = 224
    Top = 592
  end
  object stpProductUPDATE_StockPrice: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ProductUPDATE_StockPrice'
    CommandType = cmdStoredProc
    Connection = StockControlADOConnection
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = Null
      end
      item
        Name = 'NewPrice'
        DataType = ftFloat
        Value = Null
      end>
    Left = 472
    Top = 328
  end
  object tblMainSystemAccounts: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = tblMainSystemAccountsBeforePost
    OnNewRecord = tblMainSystemAccountsNewRecord
    IndexFieldNames = 'SystemStore_ID'
    MasterFields = 'SystemStore_ID'
    MasterSource = dstblMainSystem
    TableName = 'TblSystemAccounts'
    Left = 360
    Top = 128
  end
  object stpProductOnhand: TADOTable
    Connection = ADOMainDBConnection
    TableName = 'strdprc_ProductOnhand'
    Left = 224
    Top = 144
  end
  object ADOCommand1: TADOCommand
    CommandText = 
      'INSERT INTO TblAudit ( SystemStore_ID, ProductCode_ID, Demander_' +
      'ID, Supplier_ID, Item_ID, Type_str, Reference_str, DemanderSuppl' +
      'ier_str, ProductCode_str, VoucherNo_str, Date_dat, Quantity_int,' +
      ' Value_mon, QuantityOnHand_int, User_str, ICN_str, ECN_str, NSN_' +
      'Str )'#13#10'SELECT :SystemStoreID AS Expr1, :ProductCodeID AS Expr2, ' +
      ':DemanderID AS Expr3, :SupplierID AS Expr4, :ItemID AS Expr5, :T' +
      'ype AS Expr6, :Reference AS Expr7, :DemanderSupplier AS Expr8, :' +
      'ProductCode AS Expr9, :VoucherNo AS Expr10, :Date AS Expr11, :Qu' +
      'antity AS Expr12, :Value AS Expr13, :QuantityOnHand AS Expr14, :' +
      'User AS Expr15, :ICN AS Expr16, :ECN AS Expr17, :NSN AS Expr18;'
    Connection = StockControlADOConnection
    Parameters = <
      item
        Name = 'SystemStoreID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'SupplierID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Reference'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'DemanderSupplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ' '
      end
      item
        Name = 'ProductCode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'VoucherNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Quantity'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Value'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'QuantityOnHand'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'User'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ICN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ECN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'NSN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 472
    Top = 256
  end
  object qryADOProductMonthEnd: TADOQuery
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblProductMonthEnd'
      'ORDER by Year_str,Month_str')
    Left = 664
    Top = 528
  end
  object cmdDeleteProductMonthEnd: TADOCommand
    CommandText = 
      'DELETE tblProductMonthEnd'#13#10'WHERE TblProductMonthEnd.Month_str=:M' +
      'onth_str'#13#10'AND TblProductMonthEnd.Year_str=:Year_str'
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'Month_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Year_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    Left = 664
    Top = 584
  end
  object cmdUpdateProductMonthEnd: TADOCommand
    CommandText = 
      'INSERT INTO TblProductMonthEnd ( ProductCode_ID, ProductCode_str' +
      ', Quantity_int, Value_mon, Type_str, Year_str, Month_str )'#13#10'SELE' +
      'CT TblAudit.ProductCode_ID, TblAudit.ProductCode_str, Sum(TblAud' +
      'it.Quantity_int) AS TotalQty, Sum(TblAudit.Value_mon) AS TotalVa' +
      'lue, TblAudit.Type_str, :Year_str AS CurYear, :Month_str AS CurM' +
      'onth'#13#10'FROM TblAudit'#13#10'WHERE (((TblAudit.Date_dat)>=:@BeginDate An' +
      'd (TblAudit.Date_dat) < :@EndDate ))'#13#10'GROUP BY TblAudit.ProductC' +
      'ode_ID, TblAudit.ProductCode_str, TblAudit.Type_str;'#13#10#13#10
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'Year_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Month_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = '@BeginDate'
        Size = -1
        Value = Null
      end
      item
        Name = '@EndDate'
        Size = -1
        Value = Null
      end>
    Left = 664
    Top = 640
  end
  object stpAccountList: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'strdprc_AccountList'
    Left = 64
    Top = 736
  end
  object dsstpSupplierList: TDataSource
    DataSet = stpSupplierList
    Left = 224
    Top = 640
  end
  object dsstpDemanderList: TDataSource
    DataSet = stpDemanderList
    Left = 224
    Top = 688
  end
  object dsstpAccountList: TDataSource
    DataSet = stpAccountList
    Left = 224
    Top = 736
  end
  object tblATC: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblATC'
    Left = 501
    Top = 16
  end
  object tblComparisonUnit: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblComparisonUnit'
    Left = 501
    Top = 64
  end
  object tblProductRestriction: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblProductRestriction'
    Left = 669
    Top = 112
  end
  object tblTradeName: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblTradeName'
    Left = 573
    Top = 168
  end
  object tblForm: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblForm'
    Left = 573
    Top = 16
  end
  object tblLevelOfUse: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblLevelOf Use'
    Left = 669
    Top = 64
  end
  object tblStrengthRange: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblStrengthRange'
    Left = 501
    Top = 168
  end
  object tblGenericName: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblGenericName'
    Left = 669
    Top = 16
  end
  object tblProductTrade: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblTradeName'
    Left = 573
    Top = 112
  end
  object tlkRegion: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TLKRegion'
    Left = 501
    Top = 280
  end
  object tlkHealthDistrict: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkHealthDistrict'
    Left = 573
    Top = 224
  end
  object tlkMagisterialDistrict: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkMagisterialDistrict'
    Left = 677
    Top = 224
  end
  object tlkDemanderType: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TLKDemanderType'
    Left = 616
    Top = 410
  end
  object tlkDemanderAuthority: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TLKDemanderAuthority'
    Left = 616
    Top = 456
  end
  object tblPackSizeRange: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblPackSizeRange'
    Left = 501
    Top = 112
  end
  object tblFormRange: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblFormRange'
    Left = 573
    Top = 64
  end
  object tlkRoute: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkRoute'
    Left = 573
    Top = 280
  end
  object tblSystemRecordNumbering: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblSystemRecordNumbering'
    Left = 677
    Top = 280
  end
  object TLKProvince: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TLKProvince'
    Left = 381
    Top = 22
  end
  object dsDemanderType: TDataSource
    DataSet = tlkDemanderType
    Left = 712
    Top = 408
  end
  object dsDemanderAuthority: TDataSource
    DataSet = tlkDemanderAuthority
    Left = 712
    Top = 464
  end
  object Timer1: TTimer
    Left = 320
    Top = 224
  end
  object stpProductCurrentOnHold: TADOStoredProc
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductCurrentOnHold'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 10
        Value = 0
      end>
    Left = 320
    Top = 372
  end
  object stpProductCurrentOnOrder: TADOStoredProc
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductCurrentOnOrder'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 10
        Value = 0
      end>
    Left = 824
    Top = 583
  end
  object stpAuditAPPEND: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'strdprc_AuditAPPEND'
    Parameters = <
      item
        Name = 'SystemStoreID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'SupplierID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 1
        Value = Null
      end
      item
        Name = 'Reference'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 25
        Value = Null
      end
      item
        Name = 'DemanderSupplier'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'ProductCode'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'VoucherNo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'Quantity'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'Value'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = 'QuantityOnHand'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'User'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'NSN'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'ICN'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'ECN'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'BatchNumber_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = 'ExpiryDate_dat'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 408
    Top = 200
  end
  object TlkAdministrationUnits: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TlkAdministrationUnit'
    Left = 384
    Top = 290
  end
  object tblBatchRoute: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblDRRoute'
    Left = 789
    Top = 280
  end
  object tblPositionPosts: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    OnNewRecord = tblPositionPostsNewRecord
    IndexFieldNames = 'personPositionPostDescription_str'
    TableName = 'tblPersonPositionPost'
    Left = 488
    Top = 690
    object tblPositionPostspersonPositionPost_ID: TGuidField
      FieldName = 'personPositionPost_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionPostspersonPositionPostDescription_str: TWideStringField
      FieldName = 'personPositionPostDescription_str'
      Size = 100
    end
    object tblPositionPostspersonPositionPostArea_str: TWideStringField
      FieldName = 'personPositionPostArea_str'
      Size = 50
    end
    object tblPositionPostsnumberPrefix_str: TWideStringField
      FieldName = 'numberPrefix_str'
      Size = 5
    end
    object tblPositionPostslastNumber_int: TIntegerField
      FieldName = 'lastNumber_int'
    end
    object tblPositionPostsdefaultRxLevel_id: TGuidField
      FieldName = 'defaultRxLevel_id'
      FixedChar = True
      Size = 38
    end
    object tblPositionPostsdefaultRxLevel_str: TWideStringField
      FieldName = 'defaultRxLevel_str'
      Size = 15
    end
  end
  object tblPositionTitle: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblPersonPositionTitle'
    Left = 368
    Top = 602
  end
  object tblDRPProblem: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblDRPProblem'
    Left = 464
    Top = 514
  end
  object tblDRPOutcome: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblDRPOutcome'
    Left = 464
    Top = 570
  end
  object qryADODispUnits: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = qryADODispUnitsBeforePost
    OnNewRecord = qryADODispUnitsNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'Select * from TblAbbreviations where AbbreviationType_str = '#39'Uni' +
        't'#39)
    Left = 789
    Top = 16
  end
  object qryADODispInterval: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    OnNewRecord = qryADODispIntervalNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'Select * from TblAbbreviations where AbbreviationType_str = '#39'Int' +
        'erval'#39)
    Left = 789
    Top = 72
  end
  object qryADODispInstructions: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    OnNewRecord = qryADODispInstructionsNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'Select * from TblAbbreviations where AbbreviationType_str = '#39'Add' +
        'itional Directions'#39)
    Left = 789
    Top = 128
  end
  object stpClearRecordLocks: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'strdprc_UserClearRecordLocking;1'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 368
    Top = 482
  end
  object qryHealthCareReg: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = qryHealthCareRegBeforePost
    AfterPost = qryHealthCareRegAfterPost
    Parameters = <>
    SQL.Strings = (
      'Select * from TblHealthCareRegister')
    Left = 781
    Top = 216
  end
  object dsqryHealthCareReg: TDataSource
    DataSet = qryHealthCareReg
    Left = 882
    Top = 216
  end
  object tblRace: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkSystemRace'
    Left = 677
    Top = 344
  end
  object tblLanguage: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkSystemLanguage'
    Left = 789
    Top = 344
  end
  object tblDepartments: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblComplexSiteDepartment'
    Left = 861
    Top = 344
  end
  object tblContracts: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'TblContract'
    Left = 789
    Top = 408
  end
  object tblRxLevels: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblRxLevel'
    Left = 861
    Top = 408
  end
  object tblSpecialisation: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblSpecialisation'
    Left = 789
    Top = 464
  end
  object tblAllergy: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblAllergy'
    Left = 869
    Top = 480
  end
  object tlkLabTests: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkLabTests'
    Left = 832
    Top = 640
    object tlkLabTeststestCode_str: TWideStringField
      FieldName = 'testCode_str'
      Size = 50
    end
    object tlkLabTeststestName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 50
    end
    object tlkLabTeststestDescription_str: TWideStringField
      FieldName = 'testDescription_str'
      Size = 100
    end
  end
  object tblRecordNumbering: TADOTable
    Connection = NumberingADOConnection
    TableName = 'tblSystemRecordNumbering'
    Left = 480
    Top = 448
  end
  object tblICD10: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tblICD10'
    Left = 669
    Top = 712
  end
  object tblReasons: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkReason'
    Left = 829
    Top = 704
  end
  object tblOIs: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkOIs'
    Left = 933
    Top = 708
  end
  object tblPatientClassification: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkPatientClassification'
    Left = 669
    Top = 768
    object tblPatientClassificationClassification_ID: TAutoIncField
      FieldName = 'Classification_ID'
      ReadOnly = True
    end
    object tblPatientClassificationCode_Str: TWideStringField
      FieldName = 'Code_Str'
      Size = 10
    end
    object tblPatientClassificationDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 200
    end
  end
  object stp_LockProductforIssuing: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'stp_LockProduct;1'
    Parameters = <
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 368
    Top = 680
  end
  object stp_UnLockProduct: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'stp_UnLockProduct;1'
    Parameters = <
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 368
    Top = 736
  end
  object stp_IsProductLocked: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'stp_IsProductLockedforIssuing;1'
    Parameters = <
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 488
    Top = 736
  end
  object dsPostions: TDataSource
    DataSet = tblPositionPosts
    Left = 576
    Top = 696
  end
  object qryADOAbbreviationsUnits: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblAbbreviations'
      'WHERE (abbreviationType_Str = '#39'Unit'#39')')
    Left = 912
    Top = 36
  end
  object dsqryAbbreviations: TDataSource
    DataSet = qryADOAbbreviationsUnits
    Left = 1032
    Top = 36
  end
  object stpCorrectProductPAckSizes: TADOQuery
    Connection = ADOMainDBConnection
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'UPDATE tblProductPAckSize'
      'SET PackSizeValue_dbl = 1'
      'WHERE PackSizeValue_dbl = 0'
      'OR PackSizeValue_dbl is NULL')
    Left = 952
    Top = 576
  end
  object stpDemanderList: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = qryADODispUnitsBeforePost
    OnNewRecord = qryADODispUnitsNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT     Demander_ID, Code_str, Name_str, DemanderUnique_ID'
      'FROM         dbo.tblDemander'
      'ORDER BY Name_str')
    Left = 109
    Top = 688
  end
  object stpSupplierList: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    BeforePost = qryADODispUnitsBeforePost
    OnNewRecord = qryADODispUnitsNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT     Supplier_ID, Code_str, Name_str'
      'FROM         dbo.TblSupplier'
      'ORDER BY  Name_str')
    Left = 45
    Top = 649
  end
  object qrySupportMeasures: TADOQuery
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tlkAdherenceSupportMeasures'
      'ORDER BY Code_str')
    Left = 992
    Top = 272
    object qrySupportMeasuresSupportMeasure_ID: TAutoIncField
      FieldName = 'SupportMeasure_ID'
      ReadOnly = True
    end
    object qrySupportMeasuresCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 10
    end
    object qrySupportMeasuresTreatment_str: TWideStringField
      FieldName = 'Treatment_str'
      Size = 50
    end
  end
  object tblAdhrenceSupportMeasures: TADOTable
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    TableName = 'tlkAdherenceSupportMeasures'
    Left = 997
    Top = 408
  end
  object qryProductBarCodes: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    OnNewRecord = qryProductBarCodesNewRecord
    DataSource = dstblStockStartup
    Parameters = <
      item
        Name = 'productPackSize_ID'
        DataType = ftString
        Size = 38
        Value = '{00f7fdbd-1630-4742-9b34-003ef8aef2a5}'
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblProductBarCodes'
      'WHERE productPackSize_ID=:productPackSize_ID')
    Left = 1032
    Top = 712
  end
  object dsBarcode: TDataSource
    DataSet = stpProductIDByBarcode
    Left = 968
    Top = 768
  end
  object qryProductCodeIDByBarcode: TADOQuery
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'barCode1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'barCode'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'IF('
      'SELECT COUNT(*)'
      
        'FROM tblProductPackSize INNER JOIN tblProductBarCodes ON tblProd' +
        'uctPackSize.ProductPackSize_ID = tblProductBarCodes.ProductPackS' +
        'ize_ID'
      'WHERE tblProductBarCodes.barCode_str =:barCode1'
      ') > 0'
      #9'BEGIN'
      
        #9#9'SELECT tblProductPackSize.ProductPackSize_ID,  tblProductPackS' +
        'ize.ProductCode_ID, tblProductPackSize.packDescription_Str, tblP' +
        'roductPackSize.Cost_mon'
      
        #9#9'FROM tblProductPackSize INNER JOIN tblProductBarCodes ON tblPr' +
        'oductPackSize.ProductPackSize_ID = tblProductBarCodes.ProductPac' +
        'kSize_ID'
      #9#9'WHERE tblProductBarCodes.barCode_str =:barCode'
      #9'END'
      'ELSE'
      #9'BEGIN '
      
        #9#9'SELECT '#39'00000000-2ac4-47b8-907a-000d37e20f73'#39' AS ProductPackSi' +
        'ze_ID, -1 AS ProductCode_ID, '#39'Product Not Found'#39' AS packDescript' +
        'ion_Str, 0.00 AS Cost_mon'
      #9'END')
    Left = 1112
    Top = 768
    object GuidField1: TGuidField
      FieldName = 'ProductPackSize_ID'
      FixedChar = True
      Size = 38
    end
    object WideStringField1: TWideStringField
      FieldName = 'packDescription_Str'
      Size = 150
    end
    object IntegerField1: TIntegerField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object BCDField1: TBCDField
      FieldName = 'Cost_mon'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
  end
  object stpProductIDByBarcode: TADOStoredProc
    Connection = ADOMainDBConnection
    ProcedureName = 'stp_ProductDetailByBarcodes;1'
    Parameters = <
      item
        Name = '@barCode'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 14
        Value = '123'
      end>
    Left = 832
    Top = 768
    object stpProductIDByBarcodeProductPackSize_ID: TStringField
      FieldName = 'ProductPackSize_ID'
      ReadOnly = True
      Size = 36
    end
    object stpProductIDByBarcodeProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object stpProductIDByBarcodepackDescription_Str: TStringField
      FieldName = 'packDescription_Str'
      ReadOnly = True
      Size = 200
    end
    object stpProductIDByBarcodeCost_mon: TBCDField
      FieldName = 'Cost_mon'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
  end
  object qryClinicName: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'userNo_int'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT tblClinic.clinicName_str, tblClinic.clinic_ID'
      'FROM tblClinic, tblSystem_User'
      'WHERE tblClinic.clinic_ID = tblSystem_User.clinic_ID'
      'AND tblSystem_User.userNo_int=:userNo_int')
    Left = 1000
    Top = 472
  end
  object qryUserDetails: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'userNoint'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    UserID, userName_str, userPin_str,  lastName_str +'#39', '#39 +
        '+firstName_str AS Fullname, '
      'dispenser_ID, prescriber_ID, passwordSet_dat'
      'FROM         tblSystem_User'
      'WHERE userNo_int=:userNoint')
    Left = 1104
    Top = 472
  end
  object qrySystemSettings: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT postRxBeforePrint_bol, requestPinBeforePostRx_bol'
      'FROM tblSystem')
    Left = 1024
    Top = 656
  end
  object tblActiveDemanders: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tblDemander '
      'WHERE Active_bol = 1 AND CanDispense_bol = 1'
      'ORDER BY Name_Str')
    Left = 936
    Top = 121
  end
  object dsActiveDemanders: TDataSource
    DataSet = tblActiveDemanders
    Left = 1056
    Top = 122
  end
  object qryDemanderDetail: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Name_str, Code_str'
      'FROM tblDemander'
      'WHERE DemanderUnique_ID=:DemanderID')
    Left = 1104
    Top = 552
  end
  object tblVersionLog: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tblVersionChangeLog'
      'ORDER BY updated_dat DESC')
    Left = 1056
    Top = 184
  end
  object tblSystemDetailsEditHistory: TADOQuery
    Tag = 1
    Connection = ADOMainDBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tblSystemDetailsEditHistory'
      'ORDER BY ChangeDate_dat')
    Left = 992
    Top = 336
  end
  object qryUseUserPin: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT requestPinBeforePost_bol '
      'FROM tblSystem')
    Left = 1112
    Top = 632
  end
  object QryServerTime: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT GETDate() as ServerDat')
    Left = 1184
    Top = 40
  end
  object qrySupplierNameCode: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'supplier_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(Name_str, '#39#39') + '#39' '#39' + ISNULL(Code_str, '#39#39') AS Supp' +
        'lier'
      'FROM tblSupplier'
      'WHERE supplier_ID=:supplier_ID')
    Left = 672
    Top = 816
  end
  object qryClinicNameByID: TADOQuery
    Connection = ADOMainDBConnection
    Parameters = <
      item
        Name = 'Clinic_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT tblClinic.clinicName_str'
      'FROM tblClinic'
      'WHERE tblClinic.Clinic_ID=:Clinic_ID')
    Left = 1152
    Top = 304
  end
end

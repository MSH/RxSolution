object ProductDm: TProductDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 321
  Top = 37
  Height = 964
  Width = 1388
  object ADOProductConnection: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=RxBarCoding;Data Source=.\sqlexpre' +
      'ss;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=ZA-SMAHLABA;Use Encryption for Data=False;Tag' +
      ' with column collation when possible=False'
    ConnectionTimeout = 180
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 16
  end
  object dstblProductCatalog: TDataSource
    DataSet = tblProductCatalog
    Left = 240
    Top = 16
  end
  object dstblProductLedger: TDataSource
    DataSet = stpProductLedger
    Left = 352
    Top = 136
  end
  object stpProductLedger: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    Filtered = True
    CommandTimeout = 180
    ProcedureName = 'strdprc_ProductLedger'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 1395
      end>
    Left = 176
    Top = 80
  end
  object stpProductVariance: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    ProcedureName = 'strdprc_ProductVariance'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 192
      end>
    Left = 176
    Top = 136
    object stpProductVarianceProductVariance_ID: TAutoIncField
      FieldName = 'ProductVariance_ID'
      ReadOnly = True
    end
    object stpProductVarianceProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpProductVarianceType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpProductVarianceOldQty_int: TIntegerField
      FieldName = 'OldQty_int'
    end
    object stpProductVarianceNewQty_int: TIntegerField
      FieldName = 'NewQty_int'
    end
    object stpProductVariancePackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object stpProductVarianceExpiryDate_dat: TDateTimeField
      FieldName = 'ExpiryDate_dat'
    end
    object stpProductVarianceDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object stpProductVarianceUserName_str: TWideStringField
      FieldName = 'UserName_str'
      Size = 50
    end
    object stpProductVarianceLastUpDated_dat: TDateTimeField
      FieldName = 'LastUpDated_dat'
    end
    object stpProductVarianceLastUpdatedBy_int: TIntegerField
      FieldName = 'LastUpdatedBy_int'
    end
    object stpProductVarianceReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 255
    end
    object stpProductVarianceBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object stpProductVarianceAdjQty_int: TIntegerField
      FieldName = 'AdjQty_int'
      ReadOnly = True
    end
    object stpProductVarianceAdjCost_mon: TBCDField
      FieldName = 'AdjCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpProductVarianceUnitCost_mon: TBCDField
      FieldName = 'UnitCost_mon'
      Precision = 19
    end
  end
  object dsstpProductVariance: TDataSource
    DataSet = stpProductVariance
    Left = 352
    Top = 192
  end
  object stpProductLeadTime: TADOStoredProc
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    CommandTimeout = 120
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
    Left = 176
    Top = 192
  end
  object stpProductConsumption: TADOStoredProc
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    OnCalcFields = stpProductConsumptionCalcFields
    CommandTimeout = 120
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
    Left = 176
    Top = 248
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
  object qryADOBin: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM tblBin'
      'ORDER BY Code_str')
    Left = 656
    Top = 24
  end
  object stpProductFYTDExpenditures: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    CommandTimeout = 120
    ProcedureName = 'strdprc_ProductFYTDExpenditures'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 1395
      end>
    Left = 176
    Top = 295
  end
  object stpProductMonthlyExpenditures: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    CommandTimeout = 120
    ProcedureName = 'strdprc_ProductMonthlyExpenditures'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 1395
      end>
    Left = 176
    Top = 351
  end
  object dsqryADOBin: TDataSource
    DataSet = qryADOBin
    Left = 772
    Top = 24
  end
  object dsstpProductFYTDExpenditures: TDataSource
    DataSet = stpProductFYTDExpenditures
    Left = 344
    Top = 295
  end
  object dsSystem: TDataSource
    DataSet = MainDm.tblMainSystem
    Left = 528
    Top = 656
  end
  object dsstpProductMonthlyExpenditures: TDataSource
    DataSet = stpProductMonthlyExpenditures
    Left = 344
    Top = 351
  end
  object qryADOGenericName: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    OnNewRecord = qryADOGenericNameNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblGenericName'
      'ORDER BY Genericname_str')
    Left = 656
    Top = 80
  end
  object qryADOStrengthRange: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    BeforePost = qryADOStrengthRangeBeforePost
    OnNewRecord = qryADOStrengthRangeNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblStrengthRange'
      'ORDER BY Description_str')
    Left = 656
    Top = 136
  end
  object qryADOComparisonUnit: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblComparisonUnit'
      'ORDER BY Unit_str')
    Left = 656
    Top = 184
  end
  object qryADOFormRange: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblFormRange'
      'ORDER BY Description_str')
    Left = 656
    Top = 232
    object qryADOFormRangeCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 2
    end
    object qryADOFormRangeDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 40
    end
    object qryADOFormRangeInjectable_bol: TBooleanField
      FieldName = 'Injectable_bol'
    end
    object qryADOFormRangedispensingForm_str: TWideStringField
      FieldName = 'dispensingForm_str'
      Size = 50
    end
    object qryADOFormRangeAdministration_str: TWideStringField
      FieldName = 'Administration_str'
      Size = 50
    end
    object qryADOFormRangeAdministrationCode_str: TWideStringField
      FieldName = 'AdministrationCode_str'
      Size = 10
    end
  end
  object qryADOTradeName: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblTradeName '
      'ORDER BY TradeName_Str')
    Left = 656
    Top = 464
  end
  object qryADOContractCode: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblContract '
      'ORDER BY Code_str')
    Left = 656
    Top = 520
  end
  object stpProductContract: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductContract'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 1395
      end>
    Left = 176
    Top = 407
  end
  object dsstpProductContract: TDataSource
    DataSet = stpProductContract
    Left = 344
    Top = 407
  end
  object qryADOATC: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblATC'
      'ORDER BY Code_str')
    Left = 656
    Top = 576
  end
  object qryADOLevelOfUse: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [TblLevelOf Use].*'
      'FROM [TblLevelOf Use]'
      'ORDER BY [TblLevelOf Use].[Code_str];')
    Left = 656
    Top = 624
  end
  object stpProductVarianceTotals: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductVarianceTotals'
    Parameters = <
      item
        Name = 'ProductID'
        DataType = ftFloat
        Value = 192
      end>
    Left = 176
    Top = 463
  end
  object dsstpProductVarianceTotals: TDataSource
    DataSet = stpProductVarianceTotals
    Left = 344
    Top = 463
  end
  object TlkProductPackSizeGroup2: TADOTable
    Connection = ADOProductConnection
    CursorType = ctStatic
    TableName = 'TlkProductPackSizeGroup2'
    Left = 176
    Top = 605
  end
  object TlkProductPackSizeGroup1: TADOTable
    Connection = ADOProductConnection
    CursorType = ctStatic
    TableName = 'TlkProductPackSizeGroup1'
    Left = 176
    Top = 557
  end
  object stpProductVarianceAPPEND: TADOStoredProc
    Tag = 1
    Connection = ADOProductConnection
    ProcedureName = 'strdprc_ProductVarianceAPPEND'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'OldQty'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'NewQty'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'Cost'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = 'ExpiryDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'Batchnumber'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end
      item
        Name = 'Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'Reason'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'UserName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 480
    Top = 192
  end
  object dsGenericName: TDataSource
    DataSet = qryADOGenericName
    Left = 774
    Top = 80
  end
  object dsFormRange: TDataSource
    DataSet = qryADOFormRange
    Left = 774
    Top = 232
  end
  object dsStrengthRange: TDataSource
    DataSet = qryADOStrengthRange
    Left = 774
    Top = 136
  end
  object dsComparisonUnit: TDataSource
    DataSet = qryADOComparisonUnit
    Left = 774
    Top = 184
  end
  object dsContractCode: TDataSource
    DataSet = qryADOContractCode
    Left = 774
    Top = 520
  end
  object dsATC: TDataSource
    DataSet = qryADOATC
    Left = 776
    Top = 576
  end
  object dsLevelOfUse: TDataSource
    DataSet = qryADOLevelOfUse
    Left = 774
    Top = 624
  end
  object qryADORoute: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [TlkRoute]'
      'ORDER BY [TlkRoute].[Code_str];')
    Left = 656
    Top = 680
  end
  object dsRoute: TDataSource
    DataSet = qryADORoute
    Left = 776
    Top = 680
  end
  object ppProductList: TppReport
    AutoStop = False
    DataPipeline = DBProductList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 11430
    PrinterSetup.mmMarginRight = 11430
    PrinterSetup.mmMarginTop = 3810
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppProductPrintPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 558
    Top = 72
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'DBProductList'
    object ppTitleBand1: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Product List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5821
        mmLeft = 79640
        mmTop = 26194
        mmWidth = 27781
        BandType = 1
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 32279
        mmWidth = 187219
        BandType = 1
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address1_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 9260
        mmWidth = 12965
        BandType = 1
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address2_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 13494
        mmWidth = 13758
        BandType = 1
      end
      object ppDBText99: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'City_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 17992
        mmWidth = 11906
        BandType = 1
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 22225
        mmWidth = 4233
        BandType = 1
      end
      object ppDBText101: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 5292
        mmWidth = 22754
        BandType = 1
      end
      object ppDBImage2: TppDBImage
        UserName = 'DBImage2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'provincialLogo_img'
        DataPipeline = ppDBPipelineSystem
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 25929
        mmLeft = 80433
        mmTop = 529
        mmWidth = 26194
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Save = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 0
        mmTop = 0
        mmWidth = 4995
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 17992
        mmTop = 0
        mmWidth = 6117
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label302'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 265
        mmTop = 5027
        mmWidth = 15960
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NSN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 35983
        mmTop = 0
        mmWidth = 6117
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bugdet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 103188
        mmTop = 0
        mmWidth = 10012
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ordered'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4001
        mmLeft = 124090
        mmTop = 0
        mmWidth = 11282
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4001
        mmLeft = 152443
        mmTop = 5027
        mmWidth = 7895
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On Hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4001
        mmLeft = 148961
        mmTop = 0
        mmWidth = 11303
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock Value'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4001
        mmLeft = 170107
        mmTop = 5027
        mmWidth = 16425
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label203'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cost Price'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4001
        mmLeft = 172467
        mmTop = 0
        mmWidth = 14330
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clBackground
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 529
        mmLeft = 265
        mmTop = 9525
        mmWidth = 186532
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BatchNumber_str'
        DataPipeline = DBProductList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBProductList'
        mmHeight = 3969
        mmLeft = 68792
        mmTop = 0
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Expiry_Dat'
        DataPipeline = DBProductList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBProductList'
        mmHeight = 3969
        mmLeft = 104775
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Price_mon'
        DataPipeline = DBProductList
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProductList'
        mmHeight = 3969
        mmLeft = 169334
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Batch:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3239
        mmLeft = 61119
        mmTop = 0
        mmWidth = 7197
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 187219
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 132821
        mmTop = 2646
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 177536
        mmTop = 5556
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 177271
        mmTop = 8996
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Save = True
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StockValue_mon'
        DataPipeline = DBProductList
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProductList'
        mmHeight = 4995
        mmLeft = 150718
        mmTop = 1058
        mmWidth = 35814
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ProductCode_ID'
      DataPipeline = DBProductList
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBProductList'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ECN_str'
          DataPipeline = DBProductList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 17992
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ICN_str'
          DataPipeline = DBProductList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 265
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Description_str'
          DataPipeline = DBProductList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 265
          mmTop = 4498
          mmWidth = 137054
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'NSN_str'
          DataPipeline = DBProductList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 35983
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QtyOrdered_int'
          DataPipeline = DBProductList
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 118269
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CalcQtyOnHold_int'
          DataPipeline = DBProductList
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 143140
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cost_mon'
          DataPipeline = DBProductList
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 169334
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText46: TppDBText
          UserName = 'DBText201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'StockValue_mon'
          DataPipeline = DBProductList
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 169334
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText55: TppDBText
          UserName = 'DBText55'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CalcQtyOnHand_int'
          DataPipeline = DBProductList
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 143140
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ItemBugdet_mon'
          DataPipeline = DBProductList
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBProductList'
          mmHeight = 3969
          mmLeft = 96044
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Color = clBackground
          Weight = 1
          mmHeight = 529
          mmLeft = 265
          mmTop = 0
          mmWidth = 186532
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppProductDetail: TppReport
    AutoStop = False
    DataPipeline = ppDBProductDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppProductPrintPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 558
    Top = 136
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProductDetail'
    object ppTitleBand2: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 28
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 11345
        mmLeft = 0
        mmTop = 0
        mmWidth = 59415
        BandType = 1
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 11377
        mmWidth = 284300
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 158486
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 40
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 0
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 134
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ProductCode'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 49
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 4763
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 65
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 4763
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 62
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NSN_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 10319
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 66
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NSN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 10319
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 15875
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 67
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 15875
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackSizeCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 21431
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        SaveOrder = 68
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PackSize Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 21431
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GenericName_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 26988
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 69
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Generic Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 26988
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Strength_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 32544
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        SaveOrder = 70
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Strength'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 32544
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Form_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 38100
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        SaveOrder = 71
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Form'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 38100
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Route_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 43656
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        SaveOrder = 72
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Route'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 43656
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Cost_mon'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 49213
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        SaveOrder = 73
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 49213
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackSize_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 54769
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        SaveOrder = 74
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PackSize'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 54769
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackSizeUnit_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 60325
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        SaveOrder = 75
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PackSize Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 60325
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TradeName_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 65881
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        SaveOrder = 76
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Trade Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 65881
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bin_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 71438
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        SaveOrder = 77
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 71438
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Status_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 76994
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        SaveOrder = 78
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 76994
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ContractCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 82550
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        SaveOrder = 79
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contract Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 82550
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EarliestExpiry_dat'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35000
        mmTop = 88106
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 80
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Earliest Expiry'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 88106
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CalcQtyOnHand_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 34925
        mmTop = 93134
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 81
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On Hand'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 93663
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyOrdered_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 99219
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        SaveOrder = 82
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On Order'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 99219
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CalcQtyOnHold_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 104775
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 83
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On Hold (Requisitions)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 104775
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MaxStockSet_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 114829
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 84
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Max StockSet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 114829
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MinStockSet_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 120386
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        SaveOrder = 85
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Min StockSet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 120386
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MaxStockCalc_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 125942
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        SaveOrder = 86
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Max StockCalc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 125942
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MinStockCalc_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 131498
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        SaveOrder = 87
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Min StockCalc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 131498
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SafetyStockSet_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 137054
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        SaveOrder = 88
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Safety StockSet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 136790
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SafetyStockCalc_Int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 145786
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        SaveOrder = 89
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Safety StockCalc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 145521
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ForecastingPeriod_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 98954
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 90
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Forecasting Period'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 98954
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GenericCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 104511
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        SaveOrder = 91
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Generic Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 104511
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Supplement_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 110067
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        SaveOrder = 92
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supplement'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 110067
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StrengthCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 82021
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        SaveOrder = 93
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Strength Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 82021
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FormCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 87577
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        SaveOrder = 94
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Form Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 87577
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FMSCode_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 93134
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        SaveOrder = 95
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FIN Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 93134
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        SaveOrder = 96
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paediatric'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ATC_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 4498
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        SaveOrder = 97
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 4498
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'InstLevelOfUse_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 10054
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        SaveOrder = 98
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Inst Level Of Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 10054
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LevelOfUse_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 15610
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        SaveOrder = 99
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Level Of Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 15610
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        SaveOrder = 32
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Restriction_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 21167
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        SaveOrder = 100
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Restriction'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 21167
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 33
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WHOClassification_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 26723
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        SaveOrder = 101
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WHO Classification'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 26723
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        SaveOrder = 34
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WHOLevel_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 32279
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        SaveOrder = 102
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WHO Level'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 32279
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkColor = clBlue
        SaveOrder = 35
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DDDValue_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3239
        mmLeft = 125000
        mmTop = 37835
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        SaveOrder = 103
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DDD Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 37835
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        SaveOrder = 36
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DDDUnit_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 43392
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        SaveOrder = 104
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DDD Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 43392
        mmWidth = 17992
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        SaveOrder = 105
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Injectable'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 48948
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        SaveOrder = 106
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Refrigerated'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 54504
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkColor = clBlue
        SaveOrder = 37
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Schedule_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3239
        mmLeft = 125000
        mmTop = 60061
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        SaveOrder = 107
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Schedule'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 60061
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        SaveOrder = 38
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StorageTemp_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 65617
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        SaveOrder = 108
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Storage Temp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 65617
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        SaveOrder = 39
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StorageConditions_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 71173
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        SaveOrder = 109
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Storage Conditions'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 71173
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        SaveOrder = 41
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BasicUnit_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3239
        mmLeft = 125000
        mmTop = 76729
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        SaveOrder = 110
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Basic Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 76729
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        SaveOrder = 42
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DispensingUnit_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 82286
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        SaveOrder = 111
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dispensing Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 82286
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        SaveOrder = 43
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StrengthValue_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3239
        mmLeft = 125000
        mmTop = 87842
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 112
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Strength Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 87842
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        HyperlinkColor = clBlue
        SaveOrder = 63
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StockValue_mon'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 153988
        mmWidth = 32808
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        SaveOrder = 136
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 153723
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        HyperlinkColor = clBlue
        SaveOrder = 64
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyAvailable_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 150019
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        SaveOrder = 137
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Available Stock'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 149490
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        HyperlinkColor = clBlue
        SaveOrder = 44
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StrenghtUnit_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 93927
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        SaveOrder = 113
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Strenght Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 93927
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        HyperlinkColor = clBlue
        SaveOrder = 45
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VEN_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 98954
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        SaveOrder = 114
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VEN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 98954
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        SaveOrder = 46
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ABC_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 104511
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 115
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ABC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 104511
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        SaveOrder = 47
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DMO_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 110067
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 116
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 110067
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        HyperlinkColor = clBlue
        SaveOrder = 48
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICD10Code_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 114829
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        SaveOrder = 117
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICD10 Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 114829
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        SaveOrder = 118
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Institution EDL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 120386
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        SaveOrder = 119
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'National EDL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 125942
        mmWidth = 23813
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        SaveOrder = 120
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Provincial EDL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 131498
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        SaveOrder = 50
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OrderType_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 137054
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        SaveOrder = 121
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 137054
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText72'
        HyperlinkColor = clBlue
        SaveOrder = 51
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ItemBugdet_mon'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3239
        mmLeft = 125000
        mmTop = 142611
        mmWidth = 50000
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        SaveOrder = 122
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bugdet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 142611
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        SaveOrder = 52
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReOrderStatus_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 125000
        mmTop = 147373
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        SaveOrder = 123
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ReOrder Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 146844
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        SaveOrder = 124
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Review Level'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 151607
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText75'
        HyperlinkColor = clBlue
        SaveOrder = 53
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Group1_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 48948
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        SaveOrder = 125
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Group 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 48948
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        SaveOrder = 54
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Group2_str'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 54504
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        SaveOrder = 126
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Group 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 54504
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        HyperlinkColor = clBlue
        SaveOrder = 55
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReviewedItemBudget_mon'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 60061
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        SaveOrder = 127
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reviewed Item Budget'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 60061
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        HyperlinkColor = clBlue
        SaveOrder = 56
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShippingPack_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 71173
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        SaveOrder = 128
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Pack'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 71173
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        HyperlinkColor = clBlue
        SaveOrder = 57
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AvgDailyConsumption_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 76729
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        SaveOrder = 129
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Avg Daily Consumption'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 76729
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        HyperlinkColor = clBlue
        SaveOrder = 58
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LeadTime_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 265
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        SaveOrder = 130
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lead Time'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkColor = clBlue
        SaveOrder = 59
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProcurementPeriod_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 5292
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        SaveOrder = 131
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Procurement Period'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 5292
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        HyperlinkColor = clBlue
        SaveOrder = 60
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LastReview_dat'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 10848
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        SaveOrder = 132
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Last Review'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 10848
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        SaveOrder = 61
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MaxStockAvailableInBudget_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 227000
        mmTop = 16404
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        SaveOrder = 133
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MaxStock Available In Budget'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 16404
        mmWidth = 46302
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        SaveOrder = 135
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Monthly Budget'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 38629
        mmWidth = 31221
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'Paediatric_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'Injectable_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 48419
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'Refrigerated_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 53446
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'InstitutionEDL_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 119327
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox5'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'NationalEDL_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 124619
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox6'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'ProvincialEDL_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 130704
        mmWidth = 5556
        BandType = 4
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBProductDetail
        DataField = 'ReviewLevel_bol'
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5292
        mmLeft = 125000
        mmTop = 151077
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 138
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReturnsOnHold_int'
        DataPipeline = ppDBProductDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 110067
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 139
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On Hold(Returns) '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 1323
        mmTop = 110067
        mmWidth = 24194
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        AutoSize = True
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 11642
        mmLeft = 3969
        mmTop = 2646
        mmWidth = 79904
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 222250
        mmTop = 2381
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 266965
        mmTop = 5556
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 266701
        mmTop = 8996
        mmWidth = 10319
        BandType = 8
      end
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBProductDetail: TppDBPipeline
    DataSource = dstblProductCatalog
    OpenDataSource = False
    RangeEnd = reCount
    RangeEndCount = 1
    RangeBegin = rbCurrentRecord
    UserName = 'DBProductDetail'
    Left = 462
    Top = 136
    object ppDBProductDetailppField1: TppField
      FieldAlias = 'productPackSize_ID'
      FieldName = 'productPackSize_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField2: TppField
      FieldAlias = 'genericName_ID'
      FieldName = 'genericName_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField3: TppField
      FieldAlias = 'ProductCode_ID'
      FieldName = 'ProductCode_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField4: TppField
      FieldAlias = 'ProductCode_str'
      FieldName = 'ProductCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField5: TppField
      FieldAlias = 'GenericName_str'
      FieldName = 'GenericName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField6: TppField
      FieldAlias = 'StrengthUnit_Str'
      FieldName = 'StrengthUnit_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField7: TppField
      FieldAlias = 'Form_str'
      FieldName = 'Form_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField8: TppField
      FieldAlias = 'Route_str'
      FieldName = 'Route_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField9: TppField
      FieldAlias = 'PackSizeUnit_str'
      FieldName = 'PackSizeUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField10: TppField
      FieldAlias = 'DispensingUnit_str'
      FieldName = 'DispensingUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField11: TppField
      FieldAlias = 'StrengthValue_dbl'
      FieldName = 'StrengthValue_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField12: TppField
      FieldAlias = 'InstitutionEDL_bol'
      FieldName = 'InstitutionEDL_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField13: TppField
      FieldAlias = 'Description_str'
      FieldName = 'Description_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField14: TppField
      FieldAlias = 'PackSizeValue_dbl'
      FieldName = 'PackSizeValue_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField15: TppField
      FieldAlias = 'DispensingValue_dbl'
      FieldName = 'DispensingValue_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField16: TppField
      FieldAlias = 'Combinations_int'
      FieldName = 'Combinations_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField17: TppField
      FieldAlias = 'packDescription_Str'
      FieldName = 'packDescription_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField18: TppField
      FieldAlias = 'dispensingForm_str'
      FieldName = 'dispensingForm_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField19: TppField
      FieldAlias = 'canBreakUnit'
      FieldName = 'canBreakUnit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField20: TppField
      FieldAlias = 'dispensedUnit_str'
      FieldName = 'dispensedUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField21: TppField
      FieldAlias = 'dispensedValue_dbl'
      FieldName = 'dispensedValue_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField22: TppField
      FieldAlias = 'rxLevel_str'
      FieldName = 'rxLevel_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField23: TppField
      FieldAlias = 'strengthExtraDescription_str'
      FieldName = 'strengthExtraDescription_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField24: TppField
      FieldAlias = 'ICN_str'
      FieldName = 'ICN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField25: TppField
      FieldAlias = 'ECN_str'
      FieldName = 'ECN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField26: TppField
      FieldAlias = 'NSN_str'
      FieldName = 'NSN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField27: TppField
      FieldAlias = 'FMSCode_str'
      FieldName = 'FMSCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField28: TppField
      FieldAlias = 'Status_str'
      FieldName = 'Status_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField29: TppField
      FieldAlias = 'MinStockSet_int'
      FieldName = 'MinStockSet_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField30: TppField
      FieldAlias = 'Bin_str'
      FieldName = 'Bin_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField31: TppField
      FieldAlias = 'Refrigerated_bol'
      FieldName = 'Refrigerated_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField32: TppField
      FieldAlias = 'StrengthValue_int'
      FieldName = 'StrengthValue_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField33: TppField
      FieldAlias = 'TradeName_str'
      FieldName = 'TradeName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField34: TppField
      FieldAlias = 'StockLevel_int'
      FieldName = 'StockLevel_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField35: TppField
      FieldAlias = 'VEN_str'
      FieldName = 'VEN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField36: TppField
      FieldAlias = 'Supplement_bol'
      FieldName = 'Supplement_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField37: TppField
      FieldAlias = 'Injectable_bol'
      FieldName = 'Injectable_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField38: TppField
      FieldAlias = 'LastUpdate_dat'
      FieldName = 'LastUpdate_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField39: TppField
      FieldAlias = 'LevelOfUse_str'
      FieldName = 'LevelOfUse_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField40: TppField
      FieldAlias = 'MinStockCalc_int'
      FieldName = 'MinStockCalc_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField41: TppField
      FieldAlias = 'LastReceipt_dat'
      FieldName = 'LastReceipt_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField42: TppField
      FieldAlias = 'DDDValue_int'
      FieldName = 'DDDValue_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField43: TppField
      FieldAlias = 'LastUpdateBy_str'
      FieldName = 'LastUpdateBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField44: TppField
      FieldAlias = 'BarCode_str'
      FieldName = 'BarCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField45: TppField
      FieldAlias = 'AvgDailyConsumption_int'
      FieldName = 'AvgDailyConsumption_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField46: TppField
      FieldAlias = 'InstLevelOfUse_str'
      FieldName = 'InstLevelOfUse_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField47: TppField
      FieldAlias = 'FormCode_str'
      FieldName = 'FormCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField48: TppField
      FieldAlias = 'ForecastingPeriod_str'
      FieldName = 'ForecastingPeriod_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField49: TppField
      FieldAlias = 'ReOrderStatus_str'
      FieldName = 'ReOrderStatus_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField50: TppField
      FieldAlias = 'Group1_str'
      FieldName = 'Group1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField51: TppField
      FieldAlias = 'PackSize_str'
      FieldName = 'PackSize_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField52: TppField
      FieldAlias = 'ReviewLevel_bol'
      FieldName = 'ReviewLevel_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField53: TppField
      FieldAlias = 'Recurrent_bol'
      FieldName = 'Recurrent_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField54: TppField
      FieldAlias = 'Schedule_int'
      FieldName = 'Schedule_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField55: TppField
      FieldAlias = 'UseGenericNameInDescription_bol'
      FieldName = 'UseGenericNameInDescription_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField56: TppField
      FieldAlias = 'MaxStockSet_int'
      FieldName = 'MaxStockSet_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField57: TppField
      FieldAlias = 'ShippingPack_int'
      FieldName = 'ShippingPack_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField58: TppField
      FieldAlias = 'OrderType_str'
      FieldName = 'OrderType_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField59: TppField
      FieldAlias = 'ATC_str'
      FieldName = 'ATC_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField60: TppField
      FieldAlias = 'WHOClassification_str'
      FieldName = 'WHOClassification_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField61: TppField
      FieldAlias = 'OldProductCode'
      FieldName = 'OldProductCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField62: TppField
      FieldAlias = 'StrenghtUnit_str'
      FieldName = 'StrenghtUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField63: TppField
      FieldAlias = 'ProcurementPeriod_str'
      FieldName = 'ProcurementPeriod_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField64: TppField
      FieldAlias = 'ICD10Code_str'
      FieldName = 'ICD10Code_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField65: TppField
      FieldAlias = 'Supplement_str'
      FieldName = 'Supplement_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField66: TppField
      FieldAlias = 'OldICN_str'
      FieldName = 'OldICN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField67: TppField
      FieldAlias = 'PTCDeleted_dat'
      FieldName = 'PTCDeleted_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField68: TppField
      FieldAlias = 'GenericCode_str'
      FieldName = 'GenericCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField69: TppField
      FieldAlias = 'StorageTemp_str'
      FieldName = 'StorageTemp_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField70: TppField
      FieldAlias = 'PTCIncluded_dat'
      FieldName = 'PTCIncluded_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField71: TppField
      FieldAlias = 'MaxStockCalc_int'
      FieldName = 'MaxStockCalc_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField72: TppField
      FieldAlias = 'StorageConditions_str'
      FieldName = 'StorageConditions_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField73: TppField
      FieldAlias = 'LeadTime_str'
      FieldName = 'LeadTime_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField74: TppField
      FieldAlias = 'SafetyStockSet_int'
      FieldName = 'SafetyStockSet_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField75: TppField
      FieldAlias = 'ATC3_str'
      FieldName = 'ATC3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField76: TppField
      FieldAlias = 'PTCDecision_mem'
      FieldName = 'PTCDecision_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField77: TppField
      FieldAlias = 'ItemBugdet_mon'
      FieldName = 'ItemBugdet_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField78: TppField
      FieldAlias = 'Strength_str'
      FieldName = 'Strength_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField79: TppField
      FieldAlias = 'LastUpdateBy_dbl'
      FieldName = 'LastUpdateBy_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField80: TppField
      FieldAlias = 'SafetyStockCalc_Int'
      FieldName = 'SafetyStockCalc_Int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField81: TppField
      FieldAlias = 'Group2_str'
      FieldName = 'Group2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField82: TppField
      FieldAlias = 'BasicUnit_int'
      FieldName = 'BasicUnit_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField83: TppField
      FieldAlias = 'DDDUnit_str'
      FieldName = 'DDDUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField84: TppField
      FieldAlias = 'WHOLevel_str'
      FieldName = 'WHOLevel_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField85: TppField
      FieldAlias = 'ABC_str'
      FieldName = 'ABC_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField86: TppField
      FieldAlias = 'StockLevelPot_int'
      FieldName = 'StockLevelPot_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField87: TppField
      FieldAlias = 'ProcurementPeriod_int'
      FieldName = 'ProcurementPeriod_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField88: TppField
      FieldAlias = 'ProductCode7_str'
      FieldName = 'ProductCode7_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField89: TppField
      FieldAlias = 'LastOrder_dat'
      FieldName = 'LastOrder_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField90: TppField
      FieldAlias = 'LastIssue_dat'
      FieldName = 'LastIssue_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField91: TppField
      FieldAlias = 'LeadTime_int'
      FieldName = 'LeadTime_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField92: TppField
      FieldAlias = 'DMO_str'
      FieldName = 'DMO_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField93: TppField
      FieldAlias = 'Restriction_str'
      FieldName = 'Restriction_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField94: TppField
      FieldAlias = 'AutoOrder_bol'
      FieldName = 'AutoOrder_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField95: TppField
      FieldAlias = 'ProvincialEDL_bol'
      FieldName = 'ProvincialEDL_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField96: TppField
      FieldAlias = 'ContractCode_str'
      FieldName = 'ContractCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField97: TppField
      FieldAlias = 'MaxStockAvailableInBudget_int'
      FieldName = 'MaxStockAvailableInBudget_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField98: TppField
      FieldAlias = 'NationalEDL_bol'
      FieldName = 'NationalEDL_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField99: TppField
      FieldAlias = 'PackSizeCode_str'
      FieldName = 'PackSizeCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField100: TppField
      FieldAlias = 'ReviewedItemBudget_mon'
      FieldName = 'ReviewedItemBudget_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField101: TppField
      FieldAlias = 'EarliestExpiry_dat'
      FieldName = 'EarliestExpiry_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField102: TppField
      FieldAlias = 'LastReview_dat'
      FieldName = 'LastReview_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField103: TppField
      FieldAlias = 'Paediatric_bol'
      FieldName = 'Paediatric_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField104: TppField
      FieldAlias = 'StrengthCode_str'
      FieldName = 'StrengthCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField105: TppField
      FieldAlias = 'UnitsOnHand_dbl'
      FieldName = 'UnitsOnHand_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField106: TppField
      FieldAlias = 'PackContainer_str'
      FieldName = 'PackContainer_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField107: TppField
      FieldAlias = 'PrescriberUnits_ID'
      FieldName = 'PrescriberUnits_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField108: TppField
      FieldAlias = 'ManageStockLevel_bol'
      FieldName = 'ManageStockLevel_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField109: TppField
      FieldAlias = 'Administration_str'
      FieldName = 'Administration_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField110: TppField
      FieldAlias = 'StrengthRangePackCoefficient_dbl'
      FieldName = 'StrengthRangePackCoefficient_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField111: TppField
      FieldAlias = 'IsAvailableForDispensing_Bol'
      FieldName = 'IsAvailableForDispensing_Bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField112: TppField
      FieldAlias = 'Avg_Lag_dbl'
      FieldName = 'Avg_Lag_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField113: TppField
      FieldAlias = 'Cost_mon'
      FieldName = 'Cost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField114: TppField
      FieldAlias = 'StockValue_mon'
      FieldName = 'StockValue_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField115: TppField
      FieldAlias = 'QtyOrdered_int'
      FieldName = 'QtyOrdered_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField116: TppField
      FieldAlias = 'QtyRequest_int'
      FieldName = 'QtyRequest_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField117: TppField
      FieldAlias = 'CalcQtyOnHand_int'
      FieldName = 'CalcQtyOnHand_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField118: TppField
      FieldAlias = 'CalcQtyOnHold_int'
      FieldName = 'CalcQtyOnHold_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField119: TppField
      FieldAlias = 'SellingPrice'
      FieldName = 'SellingPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField120: TppField
      FieldAlias = 'PercMarkup_dbl'
      FieldName = 'PercMarkup_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField121: TppField
      FieldAlias = 'ReturnsOnHold_int'
      FieldName = 'ReturnsOnHold_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object ppDBProductDetailppField122: TppField
      FieldAlias = 'ReqRetOnHold_int'
      FieldName = 'ReqRetOnHold_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
  end
  object stpProductStoreTotals: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductStoreTotals'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 176
    Top = 511
  end
  object dsstpProductStoreTotals: TDataSource
    DataSet = stpProductStoreTotals
    Left = 344
    Top = 511
  end
  object tblProductCatalog: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeClose = tblProductCatalogBeforeClose
    BeforePost = tblProductCatalogBeforePost
    AfterPost = tblProductCatalogAfterPost
    AfterScroll = tblProductCatalogAfterScroll
    OnFilterRecord = tblProductCatalogFilterRecord
    OnNewRecord = tblProductCatalogNewRecord
    CommandTimeout = 120
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM view_ProductCatalog'
      'ORDER BY Description_str')
    Left = 144
    Top = 16
    object tblProductCatalogproductPackSize_ID: TGuidField
      FieldName = 'productPackSize_ID'
      FixedChar = True
      Size = 38
    end
    object tblProductCataloggenericName_ID: TGuidField
      FieldName = 'genericName_ID'
      FixedChar = True
      Size = 38
    end
    object tblProductCatalogProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object tblProductCatalogProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object tblProductCatalogGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object tblProductCatalogStrengthUnit_Str: TWideStringField
      FieldName = 'StrengthUnit_Str'
      Size = 50
    end
    object tblProductCatalogForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object tblProductCatalogRoute_str: TWideStringField
      FieldName = 'Route_str'
      Size = 10
    end
    object tblProductCatalogPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object tblProductCatalogDispensingUnit_str: TWideStringField
      FieldName = 'DispensingUnit_str'
      Size = 50
    end
    object tblProductCatalogStrengthValue_dbl: TFloatField
      FieldName = 'StrengthValue_dbl'
    end
    object tblProductCatalogInstitutionEDL_bol: TBooleanField
      FieldName = 'InstitutionEDL_bol'
    end
    object tblProductCatalogDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object tblProductCatalogPackSizeValue_dbl: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object tblProductCatalogDispensingValue_dbl: TFloatField
      FieldName = 'DispensingValue_dbl'
    end
    object tblProductCatalogCombinations_int: TIntegerField
      FieldName = 'Combinations_int'
    end
    object tblProductCatalogpackDescription_Str: TWideStringField
      FieldName = 'packDescription_Str'
      Size = 150
    end
    object tblProductCatalogdispensingForm_str: TWideStringField
      FieldName = 'dispensingForm_str'
      Size = 50
    end
    object tblProductCatalogcanBreakUnit: TBooleanField
      FieldName = 'canBreakUnit'
    end
    object tblProductCatalogdispensedUnit_str: TWideStringField
      FieldName = 'dispensedUnit_str'
      Size = 50
    end
    object tblProductCatalogdispensedValue_dbl: TFloatField
      FieldName = 'dispensedValue_dbl'
    end
    object tblProductCatalogrxLevel_str: TWideStringField
      FieldName = 'rxLevel_str'
      Size = 5
    end
    object tblProductCatalogstrengthExtraDescription_str: TWideStringField
      FieldName = 'strengthExtraDescription_str'
      Size = 250
    end
    object tblProductCatalogICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object tblProductCatalogECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object tblProductCatalogNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object tblProductCatalogFMSCode_str: TWideStringField
      FieldName = 'FMSCode_str'
      Size = 4
    end
    object tblProductCatalogStatus_str: TWideStringField
      FieldName = 'Status_str'
      Size = 3
    end
    object tblProductCatalogMinStockSet_int: TIntegerField
      FieldName = 'MinStockSet_int'
    end
    object tblProductCatalogBin_str: TWideStringField
      DisplayWidth = 10
      FieldName = 'Bin_str'
      Size = 10
    end
    object tblProductCatalogRefrigerated_bol: TBooleanField
      FieldName = 'Refrigerated_bol'
    end
    object tblProductCatalogStrengthValue_int: TIntegerField
      FieldName = 'StrengthValue_int'
    end
    object tblProductCatalogTradeName_str: TWideStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object tblProductCatalogStockLevel_int: TIntegerField
      FieldName = 'StockLevel_int'
    end
    object tblProductCatalogVEN_str: TWideStringField
      FieldName = 'VEN_str'
      Size = 1
    end
    object tblProductCatalogSupplement_bol: TBooleanField
      FieldName = 'Supplement_bol'
    end
    object tblProductCatalogInjectable_bol: TBooleanField
      FieldName = 'Injectable_bol'
    end
    object tblProductCatalogLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object tblProductCatalogLevelOfUse_str: TWideStringField
      FieldName = 'LevelOfUse_str'
      Size = 3
    end
    object tblProductCatalogMinStockCalc_int: TIntegerField
      FieldName = 'MinStockCalc_int'
    end
    object tblProductCatalogLastReceipt_dat: TDateTimeField
      FieldName = 'LastReceipt_dat'
    end
    object tblProductCatalogDDDValue_int: TSmallintField
      FieldName = 'DDDValue_int'
    end
    object tblProductCatalogLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object tblProductCatalogBarCode_str: TWideStringField
      FieldName = 'BarCode_str'
      Size = 12
    end
    object tblProductCatalogAvgDailyConsumption_int: TFloatField
      FieldName = 'AvgDailyConsumption_int'
    end
    object tblProductCatalogInstLevelOfUse_str: TWideStringField
      FieldName = 'InstLevelOfUse_str'
      Size = 3
    end
    object tblProductCatalogFormCode_str: TWideStringField
      FieldName = 'FormCode_str'
      Size = 4
    end
    object tblProductCatalogForecastingPeriod_str: TWideStringField
      FieldName = 'ForecastingPeriod_str'
      Size = 1
    end
    object tblProductCatalogReOrderStatus_str: TWideStringField
      FieldName = 'ReOrderStatus_str'
      Size = 1
    end
    object tblProductCatalogGroup1_str: TWideStringField
      FieldName = 'Group1_str'
      Size = 50
    end
    object tblProductCatalogPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object tblProductCatalogReviewLevel_bol: TBooleanField
      FieldName = 'ReviewLevel_bol'
    end
    object tblProductCatalogRecurrent_bol: TBooleanField
      FieldName = 'Recurrent_bol'
    end
    object tblProductCatalogSchedule_int: TIntegerField
      FieldName = 'Schedule_int'
    end
    object tblProductCatalogUseGenericNameInDescription_bol: TBooleanField
      FieldName = 'UseGenericNameInDescription_bol'
    end
    object tblProductCatalogMaxStockSet_int: TIntegerField
      FieldName = 'MaxStockSet_int'
    end
    object tblProductCatalogShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object tblProductCatalogOrderType_str: TWideStringField
      FieldName = 'OrderType_str'
      Size = 1
    end
    object tblProductCatalogATC_str: TWideStringField
      FieldName = 'ATC_str'
      Size = 7
    end
    object tblProductCatalogWHOClassification_str: TWideStringField
      FieldName = 'WHOClassification_str'
      Size = 8
    end
    object tblProductCatalogOldProductCode: TWideStringField
      FieldName = 'OldProductCode'
      Size = 8
    end
    object tblProductCatalogStrenghtUnit_str: TWideStringField
      FieldName = 'StrenghtUnit_str'
      Size = 50
    end
    object tblProductCatalogProcurementPeriod_str: TWideStringField
      FieldName = 'ProcurementPeriod_str'
      Size = 1
    end
    object tblProductCatalogICD10Code_str: TWideStringField
      FieldName = 'ICD10Code_str'
      Size = 15
    end
    object tblProductCatalogSupplement_str: TWideStringField
      FieldName = 'Supplement_str'
      Size = 100
    end
    object tblProductCatalogOldICN_str: TWideStringField
      FieldName = 'OldICN_str'
      Size = 9
    end
    object tblProductCatalogPTCDeleted_dat: TDateTimeField
      FieldName = 'PTCDeleted_dat'
    end
    object tblProductCatalogGenericCode_str: TWideStringField
      FieldName = 'GenericCode_str'
      Size = 4
    end
    object tblProductCatalogStorageTemp_str: TWideStringField
      FieldName = 'StorageTemp_str'
      Size = 2
    end
    object tblProductCatalogPTCIncluded_dat: TDateTimeField
      FieldName = 'PTCIncluded_dat'
    end
    object tblProductCatalogMaxStockCalc_int: TIntegerField
      FieldName = 'MaxStockCalc_int'
    end
    object tblProductCatalogStorageConditions_str: TWideStringField
      FieldName = 'StorageConditions_str'
      Size = 255
    end
    object tblProductCatalogLeadTime_str: TWideStringField
      FieldName = 'LeadTime_str'
      Size = 1
    end
    object tblProductCatalogSafetyStockSet_int: TIntegerField
      FieldName = 'SafetyStockSet_int'
    end
    object tblProductCatalogATC3_str: TWideStringField
      FieldName = 'ATC3_str'
      Size = 3
    end
    object tblProductCatalogPTCDecision_mem: TMemoField
      FieldName = 'PTCDecision_mem'
      BlobType = ftMemo
    end
    object tblProductCatalogItemBugdet_mon: TBCDField
      FieldName = 'ItemBugdet_mon'
      Precision = 19
    end
    object tblProductCatalogStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object tblProductCatalogLastUpdateBy_dbl: TFloatField
      FieldName = 'LastUpdateBy_dbl'
    end
    object tblProductCatalogSafetyStockCalc_Int: TIntegerField
      FieldName = 'SafetyStockCalc_Int'
    end
    object tblProductCatalogGroup2_str: TWideStringField
      FieldName = 'Group2_str'
      Size = 50
    end
    object tblProductCatalogBasicUnit_int: TSmallintField
      FieldName = 'BasicUnit_int'
    end
    object tblProductCatalogDDDUnit_str: TWideStringField
      FieldName = 'DDDUnit_str'
      Size = 6
    end
    object tblProductCatalogWHOLevel_str: TWideStringField
      FieldName = 'WHOLevel_str'
      Size = 1
    end
    object tblProductCatalogABC_str: TWideStringField
      FieldName = 'ABC_str'
      Size = 1
    end
    object tblProductCatalogStockLevelPot_int: TIntegerField
      FieldName = 'StockLevelPot_int'
    end
    object tblProductCatalogProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object tblProductCatalogProductCode7_str: TWideStringField
      FieldName = 'ProductCode7_str'
      Size = 7
    end
    object tblProductCatalogLastOrder_dat: TDateTimeField
      FieldName = 'LastOrder_dat'
    end
    object tblProductCatalogLastIssue_dat: TDateTimeField
      FieldName = 'LastIssue_dat'
    end
    object tblProductCatalogLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object tblProductCatalogDMO_str: TWideStringField
      FieldName = 'DMO_str'
      Size = 1
    end
    object tblProductCatalogRestriction_str: TWideStringField
      FieldName = 'Restriction_str'
    end
    object tblProductCatalogAutoOrder_bol: TBooleanField
      FieldName = 'AutoOrder_bol'
    end
    object tblProductCatalogProvincialEDL_bol: TBooleanField
      FieldName = 'ProvincialEDL_bol'
    end
    object tblProductCatalogContractCode_str: TWideStringField
      FieldName = 'ContractCode_str'
      Size = 13
    end
    object tblProductCatalogMaxStockAvailableInBudget_int: TIntegerField
      FieldName = 'MaxStockAvailableInBudget_int'
    end
    object tblProductCatalogNationalEDL_bol: TBooleanField
      FieldName = 'NationalEDL_bol'
    end
    object tblProductCatalogPackSizeCode_str: TWideStringField
      FieldName = 'PackSizeCode_str'
      Size = 4
    end
    object tblProductCatalogReviewedItemBudget_mon: TBCDField
      FieldName = 'ReviewedItemBudget_mon'
      Precision = 19
    end
    object tblProductCatalogEarliestExpiry_dat: TDateTimeField
      FieldName = 'EarliestExpiry_dat'
    end
    object tblProductCatalogLastReview_dat: TDateTimeField
      FieldName = 'LastReview_dat'
    end
    object tblProductCatalogPaediatric_bol: TBooleanField
      FieldName = 'Paediatric_bol'
    end
    object tblProductCatalogStrengthCode_str: TWideStringField
      FieldName = 'StrengthCode_str'
      Size = 4
    end
    object tblProductCatalogUnitsOnHand_dbl: TFloatField
      FieldName = 'UnitsOnHand_dbl'
    end
    object tblProductCatalogPackContainer_str: TWideStringField
      FieldName = 'PackContainer_str'
      Size = 50
    end
    object tblProductCatalogPrescriberUnits_ID: TIntegerField
      FieldName = 'PrescriberUnits_ID'
    end
    object tblProductCatalogManageStockLevel_bol: TBooleanField
      FieldName = 'ManageStockLevel_bol'
    end
    object tblProductCatalogAdministration_str: TWideStringField
      FieldName = 'Administration_str'
      Size = 25
    end
    object tblProductCatalogStrengthRangePackCoefficient_dbl: TFloatField
      FieldName = 'StrengthRangePackCoefficient_dbl'
    end
    object tblProductCatalogIsAvailableForDispensing_Bol: TBooleanField
      FieldName = 'IsAvailableForDispensing_Bol'
    end
    object tblProductCatalogAvg_Lag_dbl: TFloatField
      FieldName = 'Avg_Lag_dbl'
    end
    object tblProductCatalogCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object tblProductCatalogStockValue_mon: TBCDField
      FieldName = 'StockValue_mon'
      ReadOnly = True
      Precision = 19
    end
    object tblProductCatalogQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object tblProductCatalogQtyRequest_int: TIntegerField
      FieldName = 'QtyRequest_int'
    end
    object tblProductCatalogCalcQtyOnHand_int: TIntegerField
      FieldName = 'CalcQtyOnHand_int'
      ReadOnly = True
    end
    object tblProductCatalogCalcQtyOnHold_int: TIntegerField
      FieldName = 'CalcQtyOnHold_int'
      ReadOnly = True
    end
    object tblProductCatalogSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      ReadOnly = True
    end
    object tblProductCatalogPercMarkup_dbl: TFloatField
      FieldName = 'PercMarkup_dbl'
    end
    object tblProductCatalogReturnsOnHold_int: TIntegerField
      FieldName = 'ReturnsOnHold_int'
      ReadOnly = True
    end
    object tblProductCatalogReqRetOnHold_int: TIntegerField
      FieldName = 'ReqRetOnHold_int'
      ReadOnly = True
    end
  end
  object qryADOAbbreviationsUnits: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblAbbreviations'
      'WHERE (abbreviationType_Str = '#39'Unit'#39')')
    Left = 656
    Top = 748
  end
  object dsqryAbbreviations: TDataSource
    DataSet = qryADOAbbreviationsUnits
    Left = 776
    Top = 748
  end
  object vw_ProductDispensingledger: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM view_v01_Audit_Dispensing WHERE ProductCode_ID = :' +
        'ProductID')
    Left = 176
    Top = 653
  end
  object dsvw_ProductDispensingledger: TDataSource
    DataSet = vw_ProductDispensingledger
    Left = 352
    Top = 653
  end
  object qryADOPackSizeRange: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblPackSizeRange'
      'ORDER BY Description_str')
    Left = 656
    Top = 288
  end
  object dsPackSizeRange: TDataSource
    DataSet = qryADOPackSizeRange
    Left = 774
    Top = 288
  end
  object qryADOPackSizeContainer: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblPackSizeContainer'
      'ORDER BY Description_str')
    Left = 656
    Top = 336
  end
  object dsPackSizeContainer: TDataSource
    DataSet = qryADOPackSizeContainer
    Left = 774
    Top = 336
  end
  object qryADOAdministrationUnits: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    OnNewRecord = qryADOAdministrationUnitsNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TlkAdministrationUnit'
      'ORDER BY AdminUnit_Type')
    Left = 656
    Top = 384
  end
  object dsAdministrationUnits: TDataSource
    DataSet = qryADOAdministrationUnits
    Left = 774
    Top = 384
  end
  object qryProductBatch: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    OnNewRecord = qryProductBatchNewRecord
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   tblProductBatch.*'
      'FROM         tblProductBatch '
      'WHERE     ( tblProductBatch.ProductCode_ID = :ProductID)'
      
        'ORDER BY tblProductBatch.Expiry_dat,  tblProductBatch.BatchNumbe' +
        'r_str'
      '')
    Left = 176
    Top = 713
  end
  object dsqryProductBatch: TDataSource
    DataSet = qryProductBatch
    Left = 352
    Top = 713
  end
  object dsqryADOTradeName: TDataSource
    DataSet = qryADOTradeName
    Left = 760
    Top = 464
  end
  object qryProduct_Worker: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    BeforePost = qryProduct_WorkerBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from tblProductPackSize')
    Left = 40
    Top = 176
  end
  object qryProductAddCopyItem: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    Parameters = <
      item
        Name = 'currProductID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Insert INTO tblProductPackSize'
      
        '(GenericName_str, StrengthUnit_Str, Form_str, Route_str, Dispens' +
        'ingUnit_str, StrengthValue_dbl, Description_str, dispensingForm_' +
        'str, canBreakUnit, '
      
        '                      dispensedUnit_str, dispensedValue_dbl, rxL' +
        'evel_str, strengthExtraDescription_str, packDescription_Str, FMS' +
        'Code_str, Status_str, Bin_str, '
      
        '                      Refrigerated_bol, StrengthValue_int, Trade' +
        'Name_str, Injectable_bol, Supplement_bol, LevelOfUse_str, FormCo' +
        'de_str, Group1_str, '
      
        '                      UseGenericNameInDescription_bol, ATC_str, ' +
        'WHOClassification_str, StrenghtUnit_str, ICD10Code_str, GenericC' +
        'ode_str, StorageConditions_str, '
      
        '                      PTCIncluded_dat, StorageTemp_str, ATC3_str' +
        ', Strength_str, Group2_str, BasicUnit_int, DDDUnit_str, WHOLevel' +
        '_str, ABC_str, StockLevelPot_int, '
      
        '                      ProcurementPeriod_int, ProductCode7_str, D' +
        'MO_str, Restriction_str, AutoOrder_bol, ProvincialEDL_bol, Natio' +
        'nalEDL_bol, ReviewedItemBudget_mon, '
      
        '                      Paediatric_bol, StrengthRangePackCoefficie' +
        'nt_dbl, IsAvailableForDispensing_Bol, DispensingValue_dbl, Insti' +
        'tutionEDL_bol, Administration_str, '
      
        '                      VEN_str, StrengthCode_str, LastUpdate_dat,' +
        ' QtyOnRequest_int, QtyOnOrder_int, QtyOnHold_int, UnitsOnHand_db' +
        'l)'
      
        '(SELECT     GenericName_str, StrengthUnit_Str, Form_str, Route_s' +
        'tr, DispensingUnit_str, StrengthValue_dbl, Description_str, disp' +
        'ensingForm_str, canBreakUnit, '
      
        '                      dispensedUnit_str, dispensedValue_dbl, rxL' +
        'evel_str, strengthExtraDescription_str, packDescription_Str, FMS' +
        'Code_str, Status_str, Bin_str, '
      
        '                      Refrigerated_bol, StrengthValue_int, Trade' +
        'Name_str, Injectable_bol, Supplement_bol, LevelOfUse_str, FormCo' +
        'de_str, Group1_str, '
      
        '                      UseGenericNameInDescription_bol, ATC_str, ' +
        'WHOClassification_str, StrenghtUnit_str, ICD10Code_str, GenericC' +
        'ode_str, StorageConditions_str, '
      
        '                      PTCIncluded_dat, StorageTemp_str, ATC3_str' +
        ', Strength_str, Group2_str, BasicUnit_int, DDDUnit_str, WHOLevel' +
        '_str, ABC_str, StockLevelPot_int, '
      
        '                      ProcurementPeriod_int, ProductCode7_str, D' +
        'MO_str, Restriction_str, AutoOrder_bol, ProvincialEDL_bol, Natio' +
        'nalEDL_bol, ReviewedItemBudget_mon, '
      
        '                      Paediatric_bol, StrengthRangePackCoefficie' +
        'nt_dbl, IsAvailableForDispensing_Bol, DispensingValue_dbl, Insti' +
        'tutionEDL_bol, Administration_str, '
      
        '                      VEN_str, StrengthCode_str, GETDATE(), 0, 0' +
        ', 0, 0'
      'FROM         dbo.tblProductPackSize'
      'where ProductCode_ID=:currProductID)')
    Left = 176
    Top = 769
  end
  object qryLastProductAdded: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    Parameters = <>
    SQL.Strings = (
      'Select productCode_id from tblproductpacksize'
      'where LastUpdate_dat =( '
      'Select max(LastUpdate_dat) from tblproductpacksize)')
    Left = 352
    Top = 769
  end
  object strdprc_ProductMonthly_Receipts: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductMonthlyExpenditures_Receipts'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1935
      end>
    Left = 928
    Top = 120
  end
  object strdprc_ProductMonthly_Issues: TADOStoredProc
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ProductMonthlyExpenditures_Issues'
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1395
      end>
    Left = 920
    Top = 40
  end
  object dsMonthly_Issues: TDataSource
    DataSet = strdprc_ProductMonthly_Issues
    Left = 1080
    Top = 40
  end
  object dsMotnhly_Receipts: TDataSource
    DataSet = strdprc_ProductMonthly_Receipts
    Left = 1080
    Top = 120
  end
  object ado_updateBatch: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BatchNumber'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Expiry'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.TblReceiptItems.Expiry_dat, dbo.TblReceiptItems.B' +
        'atchQty_int, dbo.TblReceiptItems.ProductCode_ID, TblReceiptItems' +
        '.BatchNumber_str'
      'FROM         dbo.TblReceiptItems INNER JOIN'
      
        '                      dbo.tblProductPackSize ON dbo.TblReceiptIt' +
        'ems.ProductCode_ID = dbo.tblProductPackSize.ProductCode_ID'
      
        'WHERE    (dbo.TblReceiptItems.BatchNumber_str + CONVERT(varchar,' +
        ' dbo.TblReceiptItems.Expiry_dat, 107) '
      
        '                      IS NOT NULL) AND (dbo.tblProductPackSize.P' +
        'roductCode_ID = :ProductID) '
      'AND (TblReceiptItems.BatchNumber_str =:BatchNumber)'
      'AND (TblReceiptItems.Expiry_dat =:Expiry)')
    Left = 1032
    Top = 640
    object ado_updateBatchExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object ado_updateBatchBatchQty_int: TIntegerField
      FieldName = 'BatchQty_int'
    end
    object ado_updateBatchProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object ado_updateBatchBatchNumber_str: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
  end
  object CalcSiglSL: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from CalcSigl'
      'Where ProductCode_ID=:@ProductCode_ID')
    Left = 1176
    Top = 640
    object CalcSiglSLIss: TIntegerField
      FieldName = 'Iss'
    end
    object CalcSiglSLPC: TIntegerField
      FieldName = 'PC'
    end
    object CalcSiglSLICN: TWideStringField
      FieldName = 'ICN'
      Size = 13
    end
    object CalcSiglSLMonth: TIntegerField
      FieldName = 'Month'
    end
    object CalcSiglSLYear: TIntegerField
      FieldName = 'Year'
    end
    object CalcSiglSLMonthCount: TIntegerField
      FieldName = 'MonthCount'
    end
    object CalcSiglSLAMU: TIntegerField
      FieldName = 'AMU'
    end
    object CalcSiglSLLT: TIntegerField
      FieldName = 'LT'
    end
    object CalcSiglSLPP: TIntegerField
      FieldName = 'PP'
    end
    object CalcSiglSLSS: TBCDField
      FieldName = 'SS'
      Precision = 31
      Size = 7
    end
    object CalcSiglSLSMin: TBCDField
      FieldName = 'SMin'
      Precision = 32
      Size = 7
    end
    object CalcSiglSLSMax: TBCDField
      FieldName = 'SMax'
      Precision = 32
      Size = 13
    end
    object CalcSiglSLProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
  end
  object CheckItemIfUnposted: TADOQuery
    Connection = ADOProductConnection
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  tblrequisitionitems.requisition_id'
      'FROM tblrequisitionitems'
      
        'INNER JOIN tblrequisition ON tblrequisitionitems.requisition_id ' +
        '= tblrequisition.requisition_ID '
      
        'WHERE  tblrequisition.activated_bol = 0 AND tblrequisitionitems.' +
        'Productcode_ID =:ProductCodeID AND tblrequisitionitems.QtyIssued' +
        '_int >0')
    Left = 1072
    Top = 520
  end
  object tblEditHistory: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblProductEditHistory.*, tblProductPackSize.Description_s' +
        'tr'
      
        'FROM tblProductEditHistory LEFT JOIN tblProductPackSize ON tblPr' +
        'oductEditHistory.ProductCode_ID = tblProductPackSize.ProductCode' +
        '_ID'
      'ORDER BY ChangeDate_dat DESC')
    Left = 1048
    Top = 760
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 3.00'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    RTF.PixelFormat = pf8bit
    RTF.PixelsPerInch = 96
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.RichEditPixelFormat = pf1bit
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.ViewerPreferences = []
    PDF.AutoEmbedFonts = True
    PDF.ImageFormat = riBitmap
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    DotMatrix.PrinterType = ptEpson
    Left = 480
    Top = 256
  end
  object CheckItemifOnReturnsUnposted: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  tblReturnsItems.Returns_ID'
      'FROM tblReturnsItems'
      
        'INNER JOIN tblReturns ON tblReturnsItems.Returns_ID = tblReturns' +
        '.Returns_ID '
      
        'WHERE  tblReturns.Posted_bol = 0 AND tblReturnsItems.Productcode' +
        '_ID =:ProductCodeID AND tblReturnsItems.QtyReturned_int >0')
    Left = 1080
    Top = 568
  end
  object tblVariances: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblProductVariance'
      'ORDER BY ProductVariance_ID')
    Left = 1064
    Top = 472
  end
  object stpUpdateBatchPrice: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    Parameters = <
      item
        Name = 'ProductCodeID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE tblProductBatch'
      'SET tblProductBatch.Price_mon = tblProductPackSize.Cost_mon'
      'FROM tblProductPackSize'
      
        'WHERE tblProductBatch.ProductCode_ID=tblProductPackSize.ProductC' +
        'ode_ID'
      'AND tblProductPackSize.ProductCode_ID=:ProductCodeID')
    Left = 1088
    Top = 184
  end
  object qryProductCatalogBatches: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT view_ProductCatalog.*, tblProductBatch.BatchNumber_str, t' +
        'blProductBatch.Expiry_Dat, tblProductBatch.Price_mon, tblProduct' +
        'Batch.ProductBatch_ID'
      'FROM view_ProductCatalog'
      
        'LEFT OUTER JOIN tblProductBatch ON view_ProductCatalog.ProductCo' +
        'de_ID = tblProductBatch.ProductCode_ID'
      
        'ORDER BY view_ProductCatalog.Description_str, tblProductBatch.Ex' +
        'piry_Dat')
    Left = 360
    Top = 16
    object qryProductCatalogBatchesproductPackSize_ID: TGuidField
      FieldName = 'productPackSize_ID'
      FixedChar = True
      Size = 38
    end
    object qryProductCatalogBatchesgenericName_ID: TGuidField
      FieldName = 'genericName_ID'
      FixedChar = True
      Size = 38
    end
    object qryProductCatalogBatchesProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object qryProductCatalogBatchesProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryProductCatalogBatchesGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object qryProductCatalogBatchesStrengthUnit_Str: TWideStringField
      FieldName = 'StrengthUnit_Str'
      Size = 50
    end
    object qryProductCatalogBatchesForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object qryProductCatalogBatchesRoute_str: TWideStringField
      FieldName = 'Route_str'
      Size = 10
    end
    object qryProductCatalogBatchesPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object qryProductCatalogBatchesDispensingUnit_str: TWideStringField
      FieldName = 'DispensingUnit_str'
      Size = 50
    end
    object qryProductCatalogBatchesStrengthValue_dbl: TFloatField
      FieldName = 'StrengthValue_dbl'
    end
    object qryProductCatalogBatchesInstitutionEDL_bol: TBooleanField
      FieldName = 'InstitutionEDL_bol'
    end
    object qryProductCatalogBatchesDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryProductCatalogBatchesPackSizeValue_dbl: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object qryProductCatalogBatchesDispensingValue_dbl: TFloatField
      FieldName = 'DispensingValue_dbl'
    end
    object qryProductCatalogBatchesCombinations_int: TIntegerField
      FieldName = 'Combinations_int'
    end
    object qryProductCatalogBatchespackDescription_Str: TWideStringField
      FieldName = 'packDescription_Str'
      Size = 150
    end
    object qryProductCatalogBatchesdispensingForm_str: TWideStringField
      FieldName = 'dispensingForm_str'
      Size = 50
    end
    object qryProductCatalogBatchescanBreakUnit: TBooleanField
      FieldName = 'canBreakUnit'
    end
    object qryProductCatalogBatchesdispensedUnit_str: TWideStringField
      FieldName = 'dispensedUnit_str'
      Size = 50
    end
    object qryProductCatalogBatchesdispensedValue_dbl: TFloatField
      FieldName = 'dispensedValue_dbl'
    end
    object qryProductCatalogBatchesrxLevel_str: TWideStringField
      FieldName = 'rxLevel_str'
      Size = 5
    end
    object qryProductCatalogBatchesstrengthExtraDescription_str: TWideStringField
      FieldName = 'strengthExtraDescription_str'
      Size = 250
    end
    object qryProductCatalogBatchesICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object qryProductCatalogBatchesECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object qryProductCatalogBatchesNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object qryProductCatalogBatchesFMSCode_str: TWideStringField
      FieldName = 'FMSCode_str'
      Size = 4
    end
    object qryProductCatalogBatchesStatus_str: TWideStringField
      FieldName = 'Status_str'
      Size = 3
    end
    object qryProductCatalogBatchesMinStockSet_int: TIntegerField
      FieldName = 'MinStockSet_int'
    end
    object qryProductCatalogBatchesBin_str: TWideStringField
      FieldName = 'Bin_str'
    end
    object qryProductCatalogBatchesRefrigerated_bol: TBooleanField
      FieldName = 'Refrigerated_bol'
    end
    object qryProductCatalogBatchesStrengthValue_int: TIntegerField
      FieldName = 'StrengthValue_int'
    end
    object qryProductCatalogBatchesTradeName_str: TWideStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object qryProductCatalogBatchesStockLevel_int: TIntegerField
      FieldName = 'StockLevel_int'
    end
    object qryProductCatalogBatchesVEN_str: TWideStringField
      FieldName = 'VEN_str'
      Size = 1
    end
    object qryProductCatalogBatchesSupplement_bol: TBooleanField
      FieldName = 'Supplement_bol'
    end
    object qryProductCatalogBatchesInjectable_bol: TBooleanField
      FieldName = 'Injectable_bol'
    end
    object qryProductCatalogBatchesLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryProductCatalogBatchesLevelOfUse_str: TWideStringField
      FieldName = 'LevelOfUse_str'
      Size = 5
    end
    object qryProductCatalogBatchesMinStockCalc_int: TIntegerField
      FieldName = 'MinStockCalc_int'
    end
    object qryProductCatalogBatchesLastReceipt_dat: TDateTimeField
      FieldName = 'LastReceipt_dat'
    end
    object qryProductCatalogBatchesDDDValue_int: TSmallintField
      FieldName = 'DDDValue_int'
    end
    object qryProductCatalogBatchesLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryProductCatalogBatchesBarCode_str: TWideStringField
      FieldName = 'BarCode_str'
      Size = 12
    end
    object qryProductCatalogBatchesAvgDailyConsumption_int: TFloatField
      FieldName = 'AvgDailyConsumption_int'
    end
    object qryProductCatalogBatchesInstLevelOfUse_str: TWideStringField
      FieldName = 'InstLevelOfUse_str'
      Size = 5
    end
    object qryProductCatalogBatchesFormCode_str: TWideStringField
      FieldName = 'FormCode_str'
      Size = 4
    end
    object qryProductCatalogBatchesForecastingPeriod_str: TWideStringField
      FieldName = 'ForecastingPeriod_str'
      Size = 1
    end
    object qryProductCatalogBatchesReOrderStatus_str: TWideStringField
      FieldName = 'ReOrderStatus_str'
      Size = 1
    end
    object qryProductCatalogBatchesGroup1_str: TWideStringField
      FieldName = 'Group1_str'
      Size = 50
    end
    object qryProductCatalogBatchesPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object qryProductCatalogBatchesReviewLevel_bol: TBooleanField
      FieldName = 'ReviewLevel_bol'
    end
    object qryProductCatalogBatchesRecurrent_bol: TBooleanField
      FieldName = 'Recurrent_bol'
    end
    object qryProductCatalogBatchesSchedule_int: TIntegerField
      FieldName = 'Schedule_int'
    end
    object qryProductCatalogBatchesUseGenericNameInDescription_bol: TBooleanField
      FieldName = 'UseGenericNameInDescription_bol'
    end
    object qryProductCatalogBatchesMaxStockSet_int: TIntegerField
      FieldName = 'MaxStockSet_int'
    end
    object qryProductCatalogBatchesShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object qryProductCatalogBatchesOrderType_str: TWideStringField
      FieldName = 'OrderType_str'
      Size = 1
    end
    object qryProductCatalogBatchesATC_str: TWideStringField
      FieldName = 'ATC_str'
      Size = 7
    end
    object qryProductCatalogBatchesWHOClassification_str: TWideStringField
      FieldName = 'WHOClassification_str'
      Size = 8
    end
    object qryProductCatalogBatchesOldProductCode: TWideStringField
      FieldName = 'OldProductCode'
      Size = 8
    end
    object qryProductCatalogBatchesStrenghtUnit_str: TWideStringField
      FieldName = 'StrenghtUnit_str'
      Size = 50
    end
    object qryProductCatalogBatchesProcurementPeriod_str: TWideStringField
      FieldName = 'ProcurementPeriod_str'
      Size = 1
    end
    object qryProductCatalogBatchesICD10Code_str: TWideStringField
      FieldName = 'ICD10Code_str'
      Size = 15
    end
    object qryProductCatalogBatchesSupplement_str: TWideStringField
      FieldName = 'Supplement_str'
      Size = 100
    end
    object qryProductCatalogBatchesOldICN_str: TWideStringField
      FieldName = 'OldICN_str'
      Size = 9
    end
    object qryProductCatalogBatchesPTCDeleted_dat: TDateTimeField
      FieldName = 'PTCDeleted_dat'
    end
    object qryProductCatalogBatchesGenericCode_str: TWideStringField
      FieldName = 'GenericCode_str'
      Size = 5
    end
    object qryProductCatalogBatchesStorageTemp_str: TWideStringField
      FieldName = 'StorageTemp_str'
      Size = 2
    end
    object qryProductCatalogBatchesPTCIncluded_dat: TDateTimeField
      FieldName = 'PTCIncluded_dat'
    end
    object qryProductCatalogBatchesMaxStockCalc_int: TIntegerField
      FieldName = 'MaxStockCalc_int'
    end
    object qryProductCatalogBatchesStorageConditions_str: TWideStringField
      FieldName = 'StorageConditions_str'
      Size = 255
    end
    object qryProductCatalogBatchesLeadTime_str: TWideStringField
      FieldName = 'LeadTime_str'
      Size = 1
    end
    object qryProductCatalogBatchesSafetyStockSet_int: TIntegerField
      FieldName = 'SafetyStockSet_int'
    end
    object qryProductCatalogBatchesATC3_str: TWideStringField
      FieldName = 'ATC3_str'
      Size = 3
    end
    object qryProductCatalogBatchesPTCDecision_mem: TMemoField
      FieldName = 'PTCDecision_mem'
      BlobType = ftMemo
    end
    object qryProductCatalogBatchesItemBugdet_mon: TBCDField
      FieldName = 'ItemBugdet_mon'
      Precision = 19
    end
    object qryProductCatalogBatchesStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object qryProductCatalogBatchesLastUpdateBy_dbl: TFloatField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryProductCatalogBatchesSafetyStockCalc_Int: TIntegerField
      FieldName = 'SafetyStockCalc_Int'
    end
    object qryProductCatalogBatchesGroup2_str: TWideStringField
      FieldName = 'Group2_str'
      Size = 50
    end
    object qryProductCatalogBatchesBasicUnit_int: TSmallintField
      FieldName = 'BasicUnit_int'
    end
    object qryProductCatalogBatchesDDDUnit_str: TWideStringField
      FieldName = 'DDDUnit_str'
      Size = 6
    end
    object qryProductCatalogBatchesWHOLevel_str: TWideStringField
      FieldName = 'WHOLevel_str'
      Size = 1
    end
    object qryProductCatalogBatchesABC_str: TWideStringField
      FieldName = 'ABC_str'
      Size = 1
    end
    object qryProductCatalogBatchesStockLevelPot_int: TIntegerField
      FieldName = 'StockLevelPot_int'
    end
    object qryProductCatalogBatchesProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object qryProductCatalogBatchesProductCode7_str: TWideStringField
      FieldName = 'ProductCode7_str'
      Size = 7
    end
    object qryProductCatalogBatchesLastOrder_dat: TDateTimeField
      FieldName = 'LastOrder_dat'
    end
    object qryProductCatalogBatchesLastIssue_dat: TDateTimeField
      FieldName = 'LastIssue_dat'
    end
    object qryProductCatalogBatchesLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object qryProductCatalogBatchesDMO_str: TWideStringField
      FieldName = 'DMO_str'
      Size = 1
    end
    object qryProductCatalogBatchesRestriction_str: TWideStringField
      FieldName = 'Restriction_str'
    end
    object qryProductCatalogBatchesAutoOrder_bol: TBooleanField
      FieldName = 'AutoOrder_bol'
    end
    object qryProductCatalogBatchesProvincialEDL_bol: TBooleanField
      FieldName = 'ProvincialEDL_bol'
    end
    object qryProductCatalogBatchesContractCode_str: TWideStringField
      FieldName = 'ContractCode_str'
      Size = 13
    end
    object qryProductCatalogBatchesMaxStockAvailableInBudget_int: TIntegerField
      FieldName = 'MaxStockAvailableInBudget_int'
    end
    object qryProductCatalogBatchesNationalEDL_bol: TBooleanField
      FieldName = 'NationalEDL_bol'
    end
    object qryProductCatalogBatchesPackSizeCode_str: TWideStringField
      FieldName = 'PackSizeCode_str'
      Size = 4
    end
    object qryProductCatalogBatchesReviewedItemBudget_mon: TBCDField
      FieldName = 'ReviewedItemBudget_mon'
      Precision = 19
    end
    object qryProductCatalogBatchesEarliestExpiry_dat: TDateTimeField
      FieldName = 'EarliestExpiry_dat'
    end
    object qryProductCatalogBatchesLastReview_dat: TDateTimeField
      FieldName = 'LastReview_dat'
    end
    object qryProductCatalogBatchesPaediatric_bol: TBooleanField
      FieldName = 'Paediatric_bol'
    end
    object qryProductCatalogBatchesStrengthCode_str: TWideStringField
      FieldName = 'StrengthCode_str'
      Size = 4
    end
    object qryProductCatalogBatchesUnitsOnHand_dbl: TFloatField
      FieldName = 'UnitsOnHand_dbl'
    end
    object qryProductCatalogBatchesPackContainer_str: TWideStringField
      FieldName = 'PackContainer_str'
      Size = 50
    end
    object qryProductCatalogBatchesPrescriberUnits_ID: TIntegerField
      FieldName = 'PrescriberUnits_ID'
    end
    object qryProductCatalogBatchesManageStockLevel_bol: TBooleanField
      FieldName = 'ManageStockLevel_bol'
    end
    object qryProductCatalogBatchesAdministration_str: TWideStringField
      FieldName = 'Administration_str'
      Size = 25
    end
    object qryProductCatalogBatchesStrengthRangePackCoefficient_dbl: TFloatField
      FieldName = 'StrengthRangePackCoefficient_dbl'
    end
    object qryProductCatalogBatchesIsAvailableForDispensing_Bol: TBooleanField
      FieldName = 'IsAvailableForDispensing_Bol'
    end
    object qryProductCatalogBatchesAvg_Lag_dbl: TFloatField
      FieldName = 'Avg_Lag_dbl'
    end
    object qryProductCatalogBatchesCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object qryProductCatalogBatchesPercMarkup_dbl: TFloatField
      FieldName = 'PercMarkup_dbl'
    end
    object qryProductCatalogBatchesStockValue_mon: TBCDField
      FieldName = 'StockValue_mon'
      ReadOnly = True
      Precision = 19
    end
    object qryProductCatalogBatchesCalcQtyOnHand_int: TIntegerField
      FieldName = 'CalcQtyOnHand_int'
      ReadOnly = True
    end
    object qryProductCatalogBatchesCalcQtyOnHold_int: TIntegerField
      FieldName = 'CalcQtyOnHold_int'
      ReadOnly = True
    end
    object qryProductCatalogBatchesQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
      ReadOnly = True
    end
    object qryProductCatalogBatchesQtyRequest_int: TIntegerField
      FieldName = 'QtyRequest_int'
    end
    object qryProductCatalogBatchesSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      ReadOnly = True
    end
    object qryProductCatalogBatchesReturnsOnHold_int: TIntegerField
      FieldName = 'ReturnsOnHold_int'
      ReadOnly = True
    end
    object qryProductCatalogBatchesReqRetOnHold_int: TIntegerField
      FieldName = 'ReqRetOnHold_int'
      ReadOnly = True
    end
    object qryProductCatalogBatchesBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
    end
    object qryProductCatalogBatchesExpiry_Dat: TDateTimeField
      FieldName = 'Expiry_Dat'
    end
    object qryProductCatalogBatchesPrice_mon: TBCDField
      FieldName = 'Price_mon'
      Precision = 19
    end
    object qryProductCatalogBatchesProductBatch_ID: TAutoIncField
      FieldName = 'ProductBatch_ID'
      ReadOnly = True
    end
  end
  object dsProductCatalogBatches: TDataSource
    DataSet = qryProductCatalogBatches
    Left = 360
    Top = 80
  end
  object DBProductList: TppDBPipeline
    DataSource = dsProductCatalogBatches
    UserName = 'DBProductList'
    Left = 462
    Top = 72
  end
  object stp_StockStatusReport: TADOStoredProc
    Tag = 1
    Connection = ADOProductConnection
    CursorType = ctStatic
    ProcedureName = 'GetStockBalancesBetweenTwoDates;1'
    Parameters = <
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@EDL'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 888
    Top = 240
    object stp_StockStatusReportID: TIntegerField
      FieldName = 'ID'
    end
    object stp_StockStatusReportProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 150
    end
    object stp_StockStatusReportQtyStart: TFloatField
      FieldName = 'QtyStart'
    end
    object stp_StockStatusReportDateStart: TDateTimeField
      FieldName = 'DateStart'
    end
    object stp_StockStatusReportQtyEnd: TFloatField
      FieldName = 'QtyEnd'
    end
    object stp_StockStatusReportDateEnd: TDateTimeField
      FieldName = 'DateEnd'
    end
    object stp_StockStatusReportStockTake: TFloatField
      FieldName = 'StockTake'
    end
    object stp_StockStatusReportStockTakeCount: TIntegerField
      FieldName = 'StockTakeCount'
    end
    object stp_StockStatusReportVariance: TFloatField
      FieldName = 'Variance'
    end
    object stp_StockStatusReportVarianceCount: TIntegerField
      FieldName = 'VarianceCount'
    end
    object stp_StockStatusReportOrdered: TFloatField
      FieldName = 'Ordered'
    end
    object stp_StockStatusReportOrderedCount: TIntegerField
      FieldName = 'OrderedCount'
    end
    object stp_StockStatusReportRecieved: TFloatField
      FieldName = 'Recieved'
    end
    object stp_StockStatusReportRecievedCount: TIntegerField
      FieldName = 'RecievedCount'
    end
    object stp_StockStatusReportIssued: TFloatField
      FieldName = 'Issued'
    end
    object stp_StockStatusReportIssuedCount: TIntegerField
      FieldName = 'IssuedCount'
    end
    object stp_StockStatusReportTotalTransactions: TIntegerField
      FieldName = 'TotalTransactions'
    end
    object stp_StockStatusReportECN: TWideStringField
      FieldName = 'ECN'
    end
    object stp_StockStatusReportICN: TWideStringField
      FieldName = 'ICN'
    end
    object stp_StockStatusReportVEN: TWideStringField
      FieldName = 'VEN'
      Size = 1
    end
  end
  object ppReportStockStatus: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineStockStatus
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Stock Status Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 1270
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1016
    Top = 297
    Version = '11.03'
    mmColumnWidth = 284300
    DataPipelineName = 'ppDBPipelineStockStatus'
    object ppHeaderBand3: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Style = lsDouble
        Weight = 0.75
        mmHeight = 794
        mmLeft = 5292
        mmTop = 51065
        mmWidth = 276490
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 5292
        mmTop = 45773
        mmWidth = 6117
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label801'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 18521
        mmTop = 45773
        mmWidth = 4995
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4001
        mmLeft = 32279
        mmTop = 45773
        mmWidth = 16764
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Beginning Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 174445
        mmTop = 41804
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock take'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 190765
        mmTop = 41804
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Variance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4001
        mmLeft = 207169
        mmTop = 45773
        mmWidth = 12065
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ordered'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4001
        mmLeft = 222780
        mmTop = 45773
        mmWidth = 11282
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Received'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4001
        mmLeft = 238125
        mmTop = 45773
        mmWidth = 12721
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Issued'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 4001
        mmLeft = 256646
        mmTop = 45773
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ending Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 266436
        mmTop = 41804
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address1_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 11642
        mmWidth = 12996
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address2_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 15875
        mmWidth = 13843
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'City_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 20108
        mmWidth = 11832
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 24342
        mmWidth = 4318
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 7408
        mmWidth = 22881
        BandType = 0
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'provincialLogo_img'
        DataPipeline = ppDBPipelineSystem
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 25929
        mmLeft = 129117
        mmTop = 3704
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock Status Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5821
        mmLeft = 121179
        mmTop = 30163
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 4001
        mmLeft = 167217
        mmTop = 45773
        mmWidth = 5948
        BandType = 0
      end
      object pplblDateFilter: TppLabel
        UserName = 'lblDateFilter'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblDateFilter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3281
        mmLeft = 138377
        mmTop = 35983
        mmWidth = 15050
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductName'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 0
        mmWidth = 132821
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyStart'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 174625
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StockTake'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 189707
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Variance'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 205317
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText74'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Ordered'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 220928
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Recieved'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 236273
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText701'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Issued'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 251884
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyEnd'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 4064
        mmLeft = 267494
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 3704
        mmLeft = 18521
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VEN'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 3969
        mmLeft = 168540
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN'
        DataPipeline = ppDBPipelineStockStatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineStockStatus'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Style = lsDouble
        Weight = 0.75
        mmHeight = 794
        mmLeft = 5292
        mmTop = 0
        mmWidth = 276490
        BandType = 8
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 238125
        mmTop = 4763
        mmWidth = 12435
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 255122
        mmTop = 4763
        mmWidth = 26924
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 268776
        mmTop = 8731
        mmWidth = 13250
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 227278
        mmTop = 1323
        mmWidth = 54769
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object dsStockStatusReport: TDataSource
    DataSet = stp_StockStatusReport
    Left = 1016
    Top = 240
  end
  object ppDBPipelineStockStatus: TppDBPipeline
    DataSource = dsStockStatusReport
    UserName = 'DBPipelineStockStatus'
    Left = 888
    Top = 296
  end
  object ppDBPipelineSystem: TppDBPipeline
    DataSource = dsSystem
    UserName = 'DBPipelineSystem'
    Left = 888
    Top = 360
    object ppDBPipelineSystemppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SystemStore_ID'
      FieldName = 'SystemStore_ID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipelineSystemppField2: TppField
      FieldAlias = 'DemanderCode_str'
      FieldName = 'DemanderCode_str'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipelineSystemppField3: TppField
      FieldAlias = 'FinancialYear_str'
      FieldName = 'FinancialYear_str'
      FieldLength = 4
      DisplayWidth = 4
      Position = 2
    end
    object ppDBPipelineSystemppField4: TppField
      FieldAlias = 'FYStart_dat'
      FieldName = 'FYStart_dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppDBPipelineSystemppField5: TppField
      FieldAlias = 'FYEnd_dat'
      FieldName = 'FYEnd_dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDBPipelineSystemppField6: TppField
      FieldAlias = 'DemanderName_str'
      FieldName = 'DemanderName_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBPipelineSystemppField7: TppField
      FieldAlias = 'Address1_str'
      FieldName = 'Address1_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 6
    end
    object ppDBPipelineSystemppField8: TppField
      FieldAlias = 'Address2_str'
      FieldName = 'Address2_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 7
    end
    object ppDBPipelineSystemppField9: TppField
      FieldAlias = 'Address3_str'
      FieldName = 'Address3_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 8
    end
    object ppDBPipelineSystemppField10: TppField
      FieldAlias = 'City_str'
      FieldName = 'City_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 9
    end
    object ppDBPipelineSystemppField11: TppField
      FieldAlias = 'PostalCode_str'
      FieldName = 'PostalCode_str'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object ppDBPipelineSystemppField12: TppField
      FieldAlias = 'Phone_str'
      FieldName = 'Phone_str'
      FieldLength = 25
      DisplayWidth = 25
      Position = 11
    end
    object ppDBPipelineSystemppField13: TppField
      FieldAlias = 'Fax_str'
      FieldName = 'Fax_str'
      FieldLength = 25
      DisplayWidth = 25
      Position = 12
    end
    object ppDBPipelineSystemppField14: TppField
      FieldAlias = 'District_str'
      FieldName = 'District_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 13
    end
    object ppDBPipelineSystemppField15: TppField
      FieldAlias = 'Region_str'
      FieldName = 'Region_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 14
    end
    object ppDBPipelineSystemppField16: TppField
      FieldAlias = 'Contact_str'
      FieldName = 'Contact_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 15
    end
    object ppDBPipelineSystemppField17: TppField
      FieldAlias = 'Province_str'
      FieldName = 'Province_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 16
    end
    object ppDBPipelineSystemppField18: TppField
      FieldAlias = 'Type_str'
      FieldName = 'Type_str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 17
    end
    object ppDBPipelineSystemppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAT_int'
      FieldName = 'VAT_int'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipelineSystemppField20: TppField
      FieldAlias = 'MainDepot_str'
      FieldName = 'MainDepot_str'
      FieldLength = 7
      DisplayWidth = 7
      Position = 19
    end
    object ppDBPipelineSystemppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Budget_mon'
      FieldName = 'Budget_mon'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 20
    end
    object ppDBPipelineSystemppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'BudgetBalance_mon'
      FieldName = 'BudgetBalance_mon'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object ppDBPipelineSystemppField23: TppField
      FieldAlias = 'LevyToRequisition_bol'
      FieldName = 'LevyToRequisition_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 22
    end
    object ppDBPipelineSystemppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevyRequisition_int'
      FieldName = 'LevyRequisition_int'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipelineSystemppField25: TppField
      FieldAlias = 'LevyToOrder_bol'
      FieldName = 'LevyToOrder_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 24
    end
    object ppDBPipelineSystemppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevyOrder_int'
      FieldName = 'LevyOrder_int'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipelineSystemppField27: TppField
      FieldAlias = 'LevyToReceipt_bol'
      FieldName = 'LevyToReceipt_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 26
    end
    object ppDBPipelineSystemppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevyReceipt_int'
      FieldName = 'LevyReceipt_int'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipelineSystemppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'InflationRate_int'
      FieldName = 'InflationRate_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipelineSystemppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcurementPeriodA_int'
      FieldName = 'ProcurementPeriodA_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipelineSystemppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcurementPeriodB_int'
      FieldName = 'ProcurementPeriodB_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipelineSystemppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcurementPeriodC_int'
      FieldName = 'ProcurementPeriodC_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppDBPipelineSystemppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcurementPeriodD_int'
      FieldName = 'ProcurementPeriodD_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipelineSystemppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'LeadTimeA_int'
      FieldName = 'LeadTimeA_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppDBPipelineSystemppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'LeadTimeB_int'
      FieldName = 'LeadTimeB_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppDBPipelineSystemppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'LeadTimeC_int'
      FieldName = 'LeadTimeC_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDBPipelineSystemppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'LeadTimeD_int'
      FieldName = 'LeadTimeD_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppDBPipelineSystemppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'A_int'
      FieldName = 'A_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipelineSystemppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_int'
      FieldName = 'B_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipelineSystemppField40: TppField
      FieldAlias = 'AutoProductCode_bol'
      FieldName = 'AutoProductCode_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 39
    end
    object ppDBPipelineSystemppField41: TppField
      FieldAlias = 'RxCosting'
      FieldName = 'RxCosting'
      FieldLength = 1
      DisplayWidth = 1
      Position = 40
    end
    object ppDBPipelineSystemppField42: TppField
      FieldAlias = 'ReportBuilderFile'
      FieldName = 'ReportBuilderFile'
      FieldLength = 255
      DisplayWidth = 255
      Position = 41
    end
    object ppDBPipelineSystemppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'SupplierDef_ID'
      FieldName = 'SupplierDef_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object ppDBPipelineSystemppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccountDef_ID'
      FieldName = 'AccountDef_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 43
    end
    object ppDBPipelineSystemppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'DemanderDef_ID'
      FieldName = 'DemanderDef_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppDBPipelineSystemppField46: TppField
      FieldAlias = 'ReportStart_dat'
      FieldName = 'ReportStart_dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 45
    end
    object ppDBPipelineSystemppField47: TppField
      FieldAlias = 'ReportEnd_dat'
      FieldName = 'ReportEnd_dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 46
    end
    object ppDBPipelineSystemppField48: TppField
      FieldAlias = 'Level_01Description_str'
      FieldName = 'Level_01Description_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppDBPipelineSystemppField49: TppField
      FieldAlias = 'Level_02Description_str'
      FieldName = 'Level_02Description_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
    object ppDBPipelineSystemppField50: TppField
      FieldAlias = 'Level_03Description_str'
      FieldName = 'Level_03Description_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppDBPipelineSystemppField51: TppField
      FieldAlias = 'Level_04Description_str'
      FieldName = 'Level_04Description_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppDBPipelineSystemppField52: TppField
      FieldAlias = 'BatchDispensingReducesStock_Bol'
      FieldName = 'BatchDispensingReducesStock_Bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 51
    end
    object ppDBPipelineSystemppField53: TppField
      FieldAlias = 'AllowLessThanZeroStock_Bol'
      FieldName = 'AllowLessThanZeroStock_Bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 52
    end
    object ppDBPipelineSystemppField54: TppField
      FieldAlias = 'provincialLogo_img'
      FieldName = 'provincialLogo_img'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineSystemppField55: TppField
      FieldAlias = 'batchManagement_bol'
      FieldName = 'batchManagement_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 54
    end
    object ppDBPipelineSystemppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'ShortDatedDays_int'
      FieldName = 'ShortDatedDays_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppDBPipelineSystemppField57: TppField
      FieldAlias = 'AvgWeighedPricing_bol'
      FieldName = 'AvgWeighedPricing_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 56
    end
    object ppDBPipelineSystemppField58: TppField
      FieldAlias = 'Temp01'
      FieldName = 'Temp01'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppDBPipelineSystemppField59: TppField
      FieldAlias = 'Temp02'
      FieldName = 'Temp02'
      FieldLength = 10
      DisplayWidth = 10
      Position = 58
    end
    object ppDBPipelineSystemppField60: TppField
      FieldAlias = 'Temp03'
      FieldName = 'Temp03'
      FieldLength = 10
      DisplayWidth = 10
      Position = 59
    end
    object ppDBPipelineSystemppField61: TppField
      FieldAlias = 'Temp04'
      FieldName = 'Temp04'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object ppDBPipelineSystemppField62: TppField
      FieldAlias = 'Temp05'
      FieldName = 'Temp05'
      FieldLength = 50
      DisplayWidth = 50
      Position = 61
    end
    object ppDBPipelineSystemppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'CohortInterval'
      FieldName = 'CohortInterval'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppDBPipelineSystemppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'CohortLength'
      FieldName = 'CohortLength'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppDBPipelineSystemppField65: TppField
      FieldAlias = 'Version_str'
      FieldName = 'Version_str'
      FieldLength = 10
      DisplayWidth = 10
      Position = 64
    end
    object ppDBPipelineSystemppField66: TppField
      FieldAlias = 'CheckDispensingStock_bol'
      FieldName = 'CheckDispensingStock_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 65
    end
    object ppDBPipelineSystemppField67: TppField
      FieldAlias = 'EditableExitProductPrice_bol'
      FieldName = 'EditableExitProductPrice_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 66
    end
    object ppDBPipelineSystemppField68: TppField
      FieldAlias = 'doNotShowDailyDefinedDose_bol'
      FieldName = 'doNotShowDailyDefinedDose_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 67
    end
    object ppDBPipelineSystemppField69: TppField
      FieldAlias = 'postRxBeforePrint_bol'
      FieldName = 'postRxBeforePrint_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 68
    end
    object ppDBPipelineSystemppField70: TppField
      FieldAlias = 'requestPinBeforePostRx_bol'
      FieldName = 'requestPinBeforePostRx_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object ppDBPipelineSystemppField71: TppField
      FieldAlias = 'useExactDayForExpiryDate_bol'
      FieldName = 'useExactDayForExpiryDate_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 70
    end
    object ppDBPipelineSystemppField72: TppField
      FieldAlias = 'delta9PatientIntegration_bol'
      FieldName = 'delta9PatientIntegration_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 71
    end
    object ppDBPipelineSystemppField73: TppField
      FieldAlias = 'useBarCoding_bol'
      FieldName = 'useBarCoding_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 72
    end
    object ppDBPipelineSystemppField74: TppField
      FieldAlias = 'ISOStdNumber_str'
      FieldName = 'ISOStdNumber_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppDBPipelineSystemppField75: TppField
      FieldAlias = 'useBiometricMachine_bol'
      FieldName = 'useBiometricMachine_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 74
    end
    object ppDBPipelineSystemppField76: TppField
      FieldAlias = 'nonEditableRxDate_bol'
      FieldName = 'nonEditableRxDate_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 75
    end
    object ppDBPipelineSystemppField77: TppField
      FieldAlias = 'ExpiringPassword_bol'
      FieldName = 'ExpiringPassword_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 76
    end
    object ppDBPipelineSystemppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'PasswordActiveDays_int'
      FieldName = 'PasswordActiveDays_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppDBPipelineSystemppField79: TppField
      FieldAlias = 'requestPinBeforePost_bol'
      FieldName = 'requestPinBeforePost_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 78
    end
    object ppDBPipelineSystemppField80: TppField
      FieldAlias = 'SystemStoreUnique_ID'
      FieldName = 'SystemStoreUnique_ID'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 79
    end
    object ppDBPipelineSystemppField81: TppField
      FieldAlias = 'PAABPatientIntegration_bol'
      FieldName = 'PAABPatientIntegration_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 80
    end
  end
  object stpDeleteProduct: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'DELETE tblProductPackSize'
      'WHERE ProductCode_ID=:ProductCode_ID')
    Left = 1040
    Top = 704
  end
  object ppProductBarCodes: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 11430
    PrinterSetup.mmMarginRight = 11430
    PrinterSetup.mmMarginTop = 3810
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppProductPrintPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 1222
    Top = 296
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand3: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppLabel103: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Product List with barcodes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5556
        mmLeft = 66411
        mmTop = 26194
        mmWidth = 56356
        BandType = 1
      end
      object ppLine9: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 32279
        mmWidth = 187219
        BandType = 1
      end
      object ppDBText102: TppDBText
        UserName = 'DBText97'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address1_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 9260
        mmWidth = 593
        BandType = 1
      end
      object ppDBText103: TppDBText
        UserName = 'DBText98'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address2_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 13494
        mmWidth = 593
        BandType = 1
      end
      object ppDBText104: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'City_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 17992
        mmWidth = 593
        BandType = 1
      end
      object ppDBText105: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 22225
        mmWidth = 593
        BandType = 1
      end
      object ppDBText106: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 4149
        mmLeft = 2381
        mmTop = 5292
        mmWidth = 847
        BandType = 1
      end
      object ppDBImage3: TppDBImage
        UserName = 'DBImage2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'provincialLogo_img'
        DataPipeline = ppDBPipelineSystem
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 25929
        mmLeft = 80433
        mmTop = 0
        mmWidth = 26194
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      Save = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel104: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NSN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4149
        mmLeft = 0
        mmTop = 0
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4149
        mmLeft = 17992
        mmTop = 0
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label302'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 52652
        mmTop = 0
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4149
        mmLeft = 35983
        mmTop = 0
        mmWidth = 6181
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clBackground
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 529
        mmLeft = 0
        mmTop = 4763
        mmWidth = 186532
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Save = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'barCode_str'
        DataPipeline = ppDBPipeline1
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 12965
        mmLeft = 2381
        mmTop = 265
        mmWidth = 46567
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppFooterBand4: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 187219
        BandType = 8
      end
      object ppLabel115: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 132821
        mmTop = 2646
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 177536
        mmTop = 5556
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 177271
        mmTop = 8996
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Save = True
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'ProductCode_ID'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText108: TppDBText
          UserName = 'DBText108'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ICN_str'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 17992
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppDBText107: TppDBText
          UserName = 'DBText107'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'NSN_str'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppDBText109: TppDBText
          UserName = 'DBText109'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ECN_str'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppDBText110: TppDBText
          UserName = 'DBText110'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Description_str'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 52652
          mmTop = 0
          mmWidth = 124799
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine12: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Weight = 0.75
          mmHeight = 265
          mmLeft = 2381
          mmTop = 0
          mmWidth = 184680
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object DataSource1: TDataSource
    Left = 904
    Top = 432
  end
  object qryProductBarcodes: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblProductPackSize.ProductCode_ID, tblProductPackSize.NSN' +
        '_str, tblProductPackSize.ECN_str, tblProductPackSize.Description' +
        '_str, tblProductPackSize.ICN_str, tblProductBarCodes.barCode_str'
      'FROM tblProductPackSize'
      
        'INNER JOIN tblProductBarCodes ON tblProductBarCodes.ProductCode_' +
        'ID = tblProductPackSize.ProductCode_ID'
      'ORDER BY tblProductPackSize.NSN_str')
    Left = 1144
    Top = 240
    object qryProductBarcodesNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object qryProductBarcodesECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object qryProductBarcodesDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryProductBarcodesICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object qryProductBarcodesbarCode_str: TWideStringField
      FieldName = 'barCode_str'
      Size = 13
    end
    object qryProductBarcodesProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
  end
  object dsProductBarcodes: TDataSource
    DataSet = qryProductBarcodes
    Left = 1280
    Top = 248
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsProductBarcodes
    UserName = 'DBPipeline1'
    Left = 1128
    Top = 304
  end
  object ppReportProductDetailBartcode: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 50000
    PrinterSetup.mmPaperWidth = 85000
    PrinterSetup.PaperSize = 256
    Template.FileName = 
      'C:\Users\smahlaba.USMSHORG\Documents\Projects\RxSolutionCode - B' +
      'arCoding\Compiled\Distribute\labels\rx_barcode.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppProductPrintPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 1222
    Top = 456
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode2'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'barCode_str'
        DataPipeline = ppDBPipeline2
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 16933
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 68792
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 1058
        mmTop = 0
        mmWidth = 70644
        BandType = 4
      end
    end
    object daDataModule2: TdaDataModule
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 1216
    Top = 48
  end
  object qryProductBarcode: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    DataSource = dstblProductCatalog
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblProductPackSize.ProductCode_ID, tblProductPackSize.NSN' +
        '_str, tblProductPackSize.ECN_str, tblProductPackSize.Description' +
        '_str, tblProductPackSize.ICN_str, tblProductBarCodes.barCode_str'
      'FROM tblProductPackSize'
      
        'INNER JOIN tblProductBarCodes ON tblProductBarCodes.ProductCode_' +
        'ID = tblProductPackSize.ProductCode_ID'
      'WHERE tblProductPackSize.ProductCode_ID=:ProductCode_ID'
      'ORDER BY tblProductPackSize.NSN_str')
    Left = 1016
    Top = 368
  end
  object dsqryProductBarcode: TDataSource
    DataSet = qryProductBarcode
    Left = 1128
    Top = 368
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsqryProductBarcode
    UserName = 'DBPipeline2'
    Left = 1224
    Top = 368
  end
  object stpRemoveNonEDLItemsFromDemanders: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    DataSource = dstblProductCatalog
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'DELETE TBLDemanderItems '
      'WHERE TBLDemanderItems .ProductCode_ID =:ProductCode_ID')
    Left = 904
    Top = 496
  end
  object dstblEditHistory: TDataSource
    DataSet = qryProductEditHistory
    Left = 1248
    Top = 760
  end
  object qryProductEditHistory: TADOQuery
    Connection = ADOProductConnection
    DataSource = dstblProductCatalog
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblProductEditHistory.*, tblProductPackSize.Description_s' +
        'tr'
      
        'FROM tblProductEditHistory LEFT JOIN tblProductPackSize ON tblPr' +
        'oductEditHistory.ProductCode_ID = tblProductPackSize.ProductCode' +
        '_ID'
      'WHERE tblProductEditHistory.ProductCode_ID=:ProductCode_ID '
      'ORDER BY ChangeDate_dat DESC')
    Left = 1144
    Top = 760
  end
  object qryBarcodes: TADOQuery
    Connection = ADOProductConnection
    CursorType = ctStatic
    BeforePost = qryBarcodesBeforePost
    OnNewRecord = qryBarcodesNewRecord
    DataSource = dstblProductCatalog
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
    Left = 176
    Top = 824
    object qryBarcodesBarCode_ID: TAutoIncField
      FieldName = 'BarCode_ID'
      ReadOnly = True
    end
    object qryBarcodesproductPackSize_ID: TGuidField
      FieldName = 'productPackSize_ID'
      FixedChar = True
      Size = 38
    end
    object qryBarcodesProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryBarcodesbarCode_str: TWideStringField
      FieldName = 'barCode_str'
      Size = 13
    end
    object qryBarcodesShipperPackBarCode_str: TWideStringField
      FieldName = 'ShipperPackBarCode_str'
      Size = 14
    end
    object qryBarcodesSupplier_str: TWideStringField
      FieldName = 'Supplier_str'
      Size = 50
    end
    object qryBarcodesCapturedBy_str: TWideStringField
      FieldName = 'CapturedBy_str'
      Size = 50
    end
    object qryBarcodesModified_dat: TDateTimeField
      FieldName = 'Modified_dat'
    end
  end
  object dsBarcodes: TDataSource
    DataSet = qryBarcodes
    Left = 352
    Top = 824
  end
  object qryIsInStdRegimen: TADOQuery
    Tag = 1
    Connection = ADOProductConnection
    DataSource = dstblProductCatalog
    Parameters = <
      item
        Name = 'productPackSize_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM TblStdRegimen'
      'WHERE TblStdRegimen.DspProduct_ID=:productPackSize_ID')
    Left = 656
    Top = 824
    object qryIsInStdRegimenStdRegimen_ID: TGuidField
      FieldName = 'StdRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryIsInStdRegimenFrmFormulation_Str: TWideStringField
      FieldName = 'FrmFormulation_Str'
      Size = 250
    end
    object qryIsInStdRegimenFrmAdministration_Str: TWideStringField
      FieldName = 'FrmAdministration_Str'
      Size = 35
    end
    object qryIsInStdRegimenFrmSKU_Dbl: TFloatField
      FieldName = 'FrmSKU_Dbl'
    end
    object qryIsInStdRegimenFrmInterval_Str: TWideStringField
      FieldName = 'FrmInterval_Str'
    end
    object qryIsInStdRegimenFrmAdministrationUnit_Str: TWideStringField
      FieldName = 'FrmAdministrationUnit_Str'
      Size = 35
    end
    object qryIsInStdRegimenFrmDailyDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDailyDoseCalc_Dbl'
    end
    object qryIsInStdRegimenFrmDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDoseCalc_Dbl'
    end
    object qryIsInStdRegimenFrmSKUTotal_Dbl: TFloatField
      FieldName = 'FrmSKUTotal_Dbl'
    end
    object qryIsInStdRegimenFrmDuration_Dbl: TFloatField
      FieldName = 'FrmDuration_Dbl'
    end
    object qryIsInStdRegimenFrmRepeat_Dbl: TFloatField
      FieldName = 'FrmRepeat_Dbl'
    end
    object qryIsInStdRegimenFrmDirections_Str: TWideStringField
      FieldName = 'FrmDirections_Str'
      Size = 30
    end
    object qryIsInStdRegimenFrmICDCode_Str: TWideStringField
      FieldName = 'FrmICDCode_Str'
      Size = 30
    end
    object qryIsInStdRegimenFrmDescription_Str: TWideStringField
      FieldName = 'FrmDescription_Str'
      Size = 500
    end
    object qryIsInStdRegimenFrmProtocol_ID: TGuidField
      FieldName = 'FrmProtocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryIsInStdRegimenDspDescription_Str: TWideStringField
      FieldName = 'DspDescription_Str'
      Size = 500
    end
    object qryIsInStdRegimenDspProduct_ID: TGuidField
      FieldName = 'DspProduct_ID'
      FixedChar = True
      Size = 38
    end
    object qryIsInStdRegimenDspProduct_Str: TWideStringField
      FieldName = 'DspProduct_Str'
      Size = 250
    end
    object qryIsInStdRegimenDspSKUActual_Dbl: TFloatField
      FieldName = 'DspSKUActual_Dbl'
    end
    object qryIsInStdRegimenDspProductCalc_Dbl: TFloatField
      FieldName = 'DspProductCalc_Dbl'
    end
    object qryIsInStdRegimenDspProductBreakPack_Bol: TBooleanField
      FieldName = 'DspProductBreakPack_Bol'
    end
    object qryIsInStdRegimenDspWarning_Str: TWideStringField
      FieldName = 'DspWarning_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspDirections_Str: TWideStringField
      FieldName = 'DspDirections_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel01_Str: TWideStringField
      FieldName = 'DspLabel01_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel02_Str: TWideStringField
      FieldName = 'DspLabel02_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel03_Str: TWideStringField
      FieldName = 'DspLabel03_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel04_Str: TWideStringField
      FieldName = 'DspLabel04_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel05_Str: TWideStringField
      FieldName = 'DspLabel05_Str'
      Size = 150
    end
    object qryIsInStdRegimenDspLabel06_Str: TWideStringField
      FieldName = 'DspLabel06_Str'
      Size = 150
    end
    object qryIsInStdRegimenItemPreview_Str: TWideStringField
      FieldName = 'ItemPreview_Str'
      Size = 500
    end
    object qryIsInStdRegimenDspDirectionsAuto_Bol: TBooleanField
      FieldName = 'DspDirectionsAuto_Bol'
    end
  end
  object dsIsInStdRegimen: TDataSource
    DataSet = qryIsInStdRegimen
    Left = 784
    Top = 824
  end
  object ppDBProductRegimen: TppDBPipeline
    DataSource = dsIsInStdRegimen
    UserName = 'DBProductRegimen'
    Left = 960
    Top = 824
  end
  object ppReportProductRegimen: TppReport
    AutoStop = False
    DataPipeline = ppDBProductRegimen
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1136
    Top = 824
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProductRegimen'
    object ppHeaderBand6: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Regimen linked to product: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5715
        mmLeft = 0
        mmTop = 9525
        mmWidth = 56727
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 16404
        mmWidth = 284300
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label303'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Regimen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 18521
        mmWidth = 16510
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clBackground
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 23283
        mmWidth = 284300
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'packDescription_Str'
        DataPipeline = ppDBProductDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProductDetail'
        mmHeight = 5715
        mmLeft = 57150
        mmTop = 9525
        mmWidth = 172297
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 266701
        mmTop = 1588
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 10160
      mmPrintPosition = 0
      object ppDBText120: TppDBText
        UserName = 'DBText1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FrmDescription_Str'
        DataPipeline = ppDBProductRegimen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProductRegimen'
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 529
        mmWidth = 273580
        BandType = 4
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StdRegimen_ID'
        DataPipeline = ppDBProductRegimen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProductRegimen'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 635
        mmWidth = 5715
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DspDescription_Str'
        DataPipeline = ppDBProductRegimen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBProductRegimen'
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 5821
        mmWidth = 273580
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 11007
      mmPrintPosition = 0
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 226484
        mmTop = 1852
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 271463
        mmTop = 4498
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 270934
        mmTop = 8202
        mmWidth = 10319
        BandType = 8
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 1852
        mmWidth = 9790
        BandType = 8
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object qryDoesBarcodeExist: TADOQuery
    Connection = ADOProductConnection
    Parameters = <
      item
        Name = 'barcode'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblProductBarcodes '
      'WHERE Barcode_str =:barcode')
    Left = 176
    Top = 872
  end
end

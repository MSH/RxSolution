object ReturnsDm: TReturnsDm
  OldCreateOrder = False
  Left = 467
  Top = 209
  Height = 680
  Width = 932
  object qryReturnsItems: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    BeforePost = qryReturnsItemsBeforePost
    AfterScroll = qryReturnsItemsAfterScroll
    Parameters = <
      item
        Name = 'Returns_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      
        'FROM TblReturnsItems  LEFT JOIN tblProductBatch ON tblProductBat' +
        'ch.productBatch_id = TblReturnsItems.productBatch_id'
      'WHERE TblReturnsItems.Returns_ID=:Returns_ID')
    Left = 48
    Top = 213
    object qryReturnsItemsReturnsItem_ID: TAutoIncField
      FieldName = 'ReturnsItem_ID'
      ReadOnly = True
    end
    object qryReturnsItemsReturns_ID: TIntegerField
      FieldName = 'Returns_ID'
    end
    object qryReturnsItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryReturnsItemsProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryReturnsItemsQtyReturned_int: TIntegerField
      FieldName = 'QtyReturned_int'
      OnChange = qryReturnsItemsQtyReturned_intChange
    end
    object qryReturnsItemsOldQty_int: TIntegerField
      FieldName = 'OldQty_int'
    end
    object qryReturnsItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReturnsItemsExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryReturnsItemsUserName_str: TWideStringField
      FieldName = 'UserName_str'
      Size = 50
    end
    object qryReturnsItemsLastUpDated_dat: TDateTimeField
      FieldName = 'LastUpDated_dat'
    end
    object qryReturnsItemsUserID_int: TIntegerField
      FieldName = 'UserID_int'
    end
    object qryReturnsItemsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 50
    end
    object qryReturnsItemsNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 50
    end
    object qryReturnsItemsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 50
    end
    object qryReturnsItemsBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object qryReturnsItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReturnsItemsDiffQty_int: TIntegerField
      FieldName = 'DiffQty_int'
    end
    object qryReturnsItemsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryReturnsItemsBin_str: TWideStringField
      FieldName = 'Bin_str'
      Size = 50
    end
    object qryReturnsItemsProductBatch_ID: TIntegerField
      FieldName = 'ProductBatch_ID'
    end
    object qryReturnsItemsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
  end
  object qryReturnsCatalog: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    AfterScroll = qryReturnsCatalogAfterScroll
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblReturns'
      'WHERE tblReturns.Returns_dat >=:StartDate'
      'AND tblReturns.Returns_dat <=:EndDate')
    Left = 48
    Top = 96
    object qryReturnsCatalogReturns_ID: TAutoIncField
      FieldName = 'Returns_ID'
      ReadOnly = True
    end
    object qryReturnsCatalogSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryReturnsCatalogSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryReturnsCatalogReturnsNo_str: TStringField
      FieldName = 'ReturnsNo_str'
      Size = 50
    end
    object qryReturnsCatalogReturns_dat: TDateTimeField
      FieldName = 'Returns_dat'
    end
    object qryReturnsCatalogTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReturnsCatalogItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReturnsCatalogRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReturnsCatalogLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryReturnsCatalogLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryReturnsCatalogLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryReturnsCatalogPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReturnsCatalogPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReturnsCatalogPostedBy_str: TStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryReturnsCatalogCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryReturnsCatalogCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryReturnsCatalogCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryReturnsCatalogCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryReturnsCatalogReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryReturnsCatalogSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object qryReturnsCatalogSupplierName_str: TWideStringField
      FieldName = 'SupplierName_str'
      Size = 50
    end
    object qryReturnsCatalogStoreOfficer_str: TWideStringField
      FieldName = 'StoreOfficer_str'
      Size = 50
    end
    object qryReturnsCatalogFinanceOfficer_str: TWideStringField
      FieldName = 'FinanceOfficer_str'
      Size = 50
    end
    object qryReturnsCatalogReference_str: TWideStringField
      FieldName = 'Reference_str'
    end
    object qryReturnsCatalogCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object qryReturnsCatalogAuthorised_dat: TDateTimeField
      FieldName = 'Authorised_dat'
    end
    object qryReturnsCatalogStoreOfficer_ID: TGuidField
      FieldName = 'StoreOfficer_ID'
      FixedChar = True
      Size = 38
    end
    object qryReturnsCatalogFinanceOfficer_ID: TGuidField
      FieldName = 'FinanceOfficer_ID'
      OnChange = qryReturnsCatalogFinanceOfficer_IDChange
      FixedChar = True
      Size = 38
    end
    object qryReturnsCatalogType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 50
    end
  end
  object dsReturnsCatalog: TDataSource
    DataSet = qryReturnsCatalog
    Left = 168
    Top = 96
  end
  object dsReturnsItems: TDataSource
    DataSet = qryReturnsItems
    Left = 176
    Top = 221
  end
  object AdoReturnsConn: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=RxBarCoding;Data Source=.\sqlexpre' +
      'ss;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=AMD-XP2K-DVD;Use Encryption for Data=False;Ta' +
      'g with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object qryProductBatch: TADOQuery
    Tag = 1
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM tblProductBatch'
      'WHERE ProductCode_ID=:ProductCode_ID')
    Left = 352
    Top = 117
  end
  object dsqryProductBatch: TDataSource
    DataSet = qryProductBatch
    Left = 352
    Top = 165
  end
  object stpReturnsEditHistory: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM TblReturnsEditHistory'
      'WHERE Returns_ID=:@ReturnsID')
    Left = 56
    Top = 269
  end
  object stp_ReturnsITemsTotals: TADOStoredProc
    Connection = AdoReturnsConn
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlReturnsItemsTotals;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 352
    Top = 240
  end
  object ActionList1: TActionList
    Left = 536
    Top = 32
    object atnAddSingleItem: TAction
      Caption = 'Add Single &Item'
      ShortCut = 16457
      OnExecute = atnAddSingleItemExecute
    end
    object atnDeleteAllItems: TAction
      Caption = 'Remove All Items'
      OnExecute = atnDeleteAllItemsExecute
    end
    object atnPostItem: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsReturnsItems
    end
    object atnCancelItem: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsReturnsItems
    end
    object atnSaveandClose: TAction
      Caption = '&Close'
      OnExecute = atnSaveandCloseExecute
    end
    object atnPostandClose: TAction
      Caption = 'Post'
      OnExecute = atnPostandCloseExecute
    end
    object atnFirstItem: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = dsReturnsItems
    end
    object atnNextItem: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = dsReturnsItems
    end
    object atnPriorItem: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = dsReturnsItems
    end
    object atnLastItem: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = dsReturnsItems
    end
    object atnDeleteReturns: TAction
      Caption = 'Delete Returns Out'
      OnExecute = atnDeleteReturnsExecute
    end
    object atnSelectBatch: TAction
      Caption = 'Select Batch'
      ShortCut = 16450
      OnExecute = atnSelectBatchExecute
    end
    object atnDeleteSingleItem: TAction
      Caption = 'atnDeleteSingleItem'
      ShortCut = 16452
      OnExecute = atnDeleteSingleItemExecute
    end
    object atnAddAnotherBatchItem: TAction
      Caption = 'Add Another Batch Item'
      ShortCut = 113
      SecondaryShortCuts.Strings = (
        'F2')
      OnExecute = atnAddAnotherBatchItemExecute
    end
    object atnPrintReturnOutReport: TAction
      Caption = 'Print Returns to Supplier'
      OnExecute = atnPrintReturnOutReportExecute
    end
    object atnRefreshAll: TAction
      Caption = 'Refresh'
    end
    object atnSelectInvoice: TAction
      Caption = 'Select Invoice '
      OnExecute = atnSelectInvoiceExecute
    end
    object atnUnLockReturns: TAction
      Caption = 'UnLock Returns to supllier'
      OnExecute = atnUnLockReturnsExecute
    end
    object atnUnLockReturnsMain: TAction
      Caption = 'UnLock Returns to supplier'
      OnExecute = atnUnLockReturnsMainExecute
    end
  end
  object AdoAddSingleItem: TADOCommand
    CommandText = 'strdprc_ReturnsItemsADD_Single;1'
    CommandType = cmdStoredProc
    Connection = AdoReturnsConn
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LastUpdatedat'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 168
    Top = 24
  end
  object dsHistory: TDataSource
    DataSet = stpReturnsEditHistory
    Left = 176
    Top = 269
  end
  object tblSuppliers: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Supplier_ID, Code_str, Name_str'
      'FROM tblSupplier'
      'WHERE Active_bol=1'
      'ORDER BY Name_str')
    Left = 536
    Top = 128
  end
  object dsSuppliers: TDataSource
    DataSet = tblSuppliers
    Left = 536
    Top = 192
  end
  object tblSystemUsers: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') + N'#39'(' +
        ' '#39' + ISNULL(tblSystem_User.position_str, N'#39#39') + N'#39' )'#39' AS Descrip' +
        'tion'
      
        'FROM tblSystem_User INNER JOIN tblSystem_User_Access ON tblSyste' +
        'm_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 16) AND (tblSystem_' +
        'User_Access.accessLevel_int >2) AND (tblSystem_User.Active_bol =' +
        ' 1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 352
    Top = 32
  end
  object dsUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 440
    Top = 40
  end
  object stp_ReturnsMarkComplete: TADOStoredProc
    Connection = AdoReturnsConn
    ProcedureName = 'strdprc_Returns_MarkComplete;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PostedBy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@SupplierName_str'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 536
    Top = 264
  end
  object stpAddAnotherBatchItem: TADOStoredProc
    Connection = AdoReturnsConn
    ProcedureName = 'strdprc_ReturnsAddAnotherBatchItem;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Prepared = True
    Left = 536
    Top = 328
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReturnReport
    UserName = 'DBPipeline1'
    Left = 736
    Top = 96
  end
  object ppReportReturnOut: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    Template.FileName = 
      'C:\MyWorks\Dev-Files\Workspace\RxSolution_20_04_2010\Lang 2\Repo' +
      'rts\ReturnstoSupplierOutList.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 832
    Top = 96
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand2: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 83344
        BandType = 1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReturnsNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 23019
        mmTop = 16669
        mmWidth = 55033
        BandType = 1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Returns_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 23019
        mmTop = 26723
        mmWidth = 55033
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Items'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 32279
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 26723
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 16933
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 6879
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 10848
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 14817
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Captured By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 6350
        mmWidth = 16404
        BandType = 1
      end
      object ppDBText20: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'StoreOfficer_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239713
        mmTop = 6350
        mmWidth = 22077
        BandType = 1
      end
      object ppDBText21: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Captured_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239713
        mmTop = 10319
        mmWidth = 18711
        BandType = 1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'City_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119063
        mmTop = 20108
        mmWidth = 10795
        BandType = 1
      end
      object ppDBText25: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address1_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119063
        mmTop = 15610
        mmWidth = 18521
        BandType = 1
      end
      object ppDBText26: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119063
        mmTop = 11113
        mmWidth = 27390
        BandType = 1
      end
      object ppDBText27: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderCode_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119063
        mmTop = 7144
        mmWidth = 27072
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Verified By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 15346
        mmWidth = 16404
        BandType = 1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'FinanceOfficer_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239713
        mmTop = 14817
        mmWidth = 25633
        BandType = 1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Authorised_Dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239713
        mmTop = 19050
        mmWidth = 21611
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ItemsNo_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 32808
        mmWidth = 42069
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2910
        mmTop = 38629
        mmWidth = 281253
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2910
        mmTop = 39952
        mmWidth = 281253
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Return to Supplier'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 3440
        mmTop = 794
        mmWidth = 55457
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy @ (hh:mm)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 228071
        mmTop = 529
        mmWidth = 49213
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 10319
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 19050
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Institution Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 794
        mmWidth = 23019
        BandType = 1
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 32808
        mmWidth = 11642
        BandType = 1
      end
      object ppDBText63: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Reason_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 118534
        mmTop = 32808
        mmWidth = 15790
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 6879
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 10848
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 14817
        mmWidth = 15081
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address2_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 20108
        mmWidth = 18521
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address1_str_1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 15610
        mmWidth = 21738
        BandType = 1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Name_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 11113
        mmWidth = 13208
        BandType = 1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Code_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 7144
        mmWidth = 12573
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supplier Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 159809
        mmTop = 794
        mmWidth = 22013
        BandType = 1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address3_str_1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 24606
        mmWidth = 21738
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address4_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 28840
        mmWidth = 18521
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 21960
        mmWidth = 18785
        BandType = 1
      end
      object ppDBText10: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Reference_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 23019
        mmTop = 21696
        mmWidth = 55033
        BandType = 1
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'Posted_bol'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 222250
        mmTop = 25400
        mmWidth = 6350
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 228071
        mmTop = 26458
        mmWidth = 10605
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLabel43: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pack Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 164042
        mmTop = 529
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 50800
        mmTop = 529
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 4498
        mmTop = 529
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Batch Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 209815
        mmTop = 529
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 39688
        mmTop = 529
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 22225
        mmTop = 529
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Expiry Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 239713
        mmTop = 529
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Returned'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 188119
        mmTop = 529
        mmWidth = 13758
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 2910
        mmTop = 6085
        mmWidth = 280723
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 275696
        mmTop = 529
        mmWidth = 7673
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 50536
        mmTop = 0
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 159946
        mmTop = 0
        mmWidth = 18119
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bin_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4000
        mmLeft = 39423
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4000
        mmLeft = 22225
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyReturned_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 187590
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BatchNumber_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3450
        mmLeft = 209550
        mmTop = 0
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 259834
        mmTop = 265
        mmWidth = 23982
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Expiry_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 239713
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy @ (hh:mm)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 49213
        BandType = 8
      end
      object ppLabel68: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 1852
        mmWidth = 14023
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReturnsNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 76729
        mmTop = 1588
        mmWidth = 41540
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Color = 16383986
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 250561
        mmTop = 5027
        mmWidth = 33338
        BandType = 8
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 265272
        mmTop = 794
        mmWidth = 18627
        BandType = 8
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2910
        mmTop = 265
        mmWidth = 280723
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Save = True
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryReturnsReport: TADOStoredProc
    Connection = AdoReturnsConn
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReturnsReport;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 640
    Top = 32
    object qryReturnsReportOldQty_int: TIntegerField
      FieldName = 'OldQty_int'
    end
    object qryReturnsReportQtyReturned_int: TIntegerField
      FieldName = 'QtyReturned_int'
    end
    object qryReturnsReportPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReturnsReportExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryReturnsReportBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object qryReturnsReportLastUpDated_dat: TDateTimeField
      FieldName = 'LastUpDated_dat'
    end
    object qryReturnsReportReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryReturnsReportICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 50
    end
    object qryReturnsReportNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 50
    end
    object qryReturnsReportECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 50
    end
    object qryReturnsReportPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReturnsReportPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReturnsReportExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReturnsReportReturnsNo_str: TStringField
      FieldName = 'ReturnsNo_str'
      Size = 50
    end
    object qryReturnsReportReference_str: TWideStringField
      FieldName = 'Reference_str'
    end
    object qryReturnsReportReturns_dat: TDateTimeField
      FieldName = 'Returns_dat'
    end
    object qryReturnsReportFinanceOfficer_str: TWideStringField
      FieldName = 'FinanceOfficer_str'
      Size = 50
    end
    object qryReturnsReportAuthorised_Dat: TDateTimeField
      FieldName = 'Authorised_Dat'
    end
    object qryReturnsReportTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReturnsReportItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReturnsReportRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReturnsReportStoreOfficer_str: TWideStringField
      FieldName = 'StoreOfficer_str'
      Size = 50
    end
    object qryReturnsReportCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object qryReturnsReportDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryReturnsReportBin_str: TWideStringField
      FieldName = 'Bin_str'
      Size = 5
    end
    object qryReturnsReportGroup1_str: TWideStringField
      FieldName = 'Group1_str'
      Size = 50
    end
    object qryReturnsReportGroup2_str: TWideStringField
      FieldName = 'Group2_str'
      Size = 50
    end
    object qryReturnsReportDemanderCode_Str: TWideStringField
      FieldName = 'DemanderCode_Str'
      Size = 10
    end
    object qryReturnsReportDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object qryReturnsReportAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 150
    end
    object qryReturnsReportAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 150
    end
    object qryReturnsReportCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 150
    end
    object qryReturnsReportName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object qryReturnsReportCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object qryReturnsReportAddress1_str_1: TWideStringField
      FieldName = 'Address1_str_1'
      Size = 100
    end
    object qryReturnsReportAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 100
    end
    object qryReturnsReportAddress3_str_1: TWideStringField
      FieldName = 'Address3_str_1'
      Size = 100
    end
    object qryReturnsReportAddress4_str: TWideStringField
      FieldName = 'Address4_str'
      Size = 100
    end
    object qryReturnsReportProvincialLogo_img: TBlobField
      FieldName = 'ProvincialLogo_img'
    end
  end
  object dsReturnReport: TDataSource
    DataSet = qryReturnsReport
    Left = 640
    Top = 96
  end
  object stp_DeleteAllItems: TADOStoredProc
    Connection = AdoReturnsConn
    ProcedureName = 'strdprc_Returns_DeleteAllItems;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 648
    Top = 200
  end
  object qryBatchQty: TADOQuery
    Tag = 1
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductBatch_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM tblProductBatch'
      'WHERE ProductBatch_ID=:ProductBatch_ID')
    Left = 696
    Top = 317
  end
  object qryTotalQtyonHand: TADOQuery
    Tag = 1
    Connection = AdoReturnsConn
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
      
        'SELECT ISNULL(view_ProductQtyOnHand.TotalQtyOnHand_int, 0) AS Qt' +
        'yOnHand_int'
      'FROM view_ProductQtyOnHand '
      ''
      'WHERE view_ProductQtyOnHand.ProductCode_ID = :ProductCode_ID')
    Left = 816
    Top = 187
  end
  object tblReceipts: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Supplier_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TblReceipt.ReceiptNo_ID, TblReceipt.ReceiptDate_dat, TblR' +
        'eceipt.Activated_bol, TblReceipt.ReceiptNo_str, TblReceipt.Activ' +
        'ated_dat, TblReceipt.VoucherNo_str, TblReceipt.OrderNo_ID, TblRe' +
        'ceipt.Supplier_ID, TblReceipt.Charges_mon, TblReceipt.Ordered_da' +
        't, TblReceipt.Invoiced_dat, TblReceipt.InvoiceNo_str, TblReceipt' +
        '.Received_dat, TblReceipt.ReceivedBy_str, TblReceipt.LeadTime_in' +
        't, TblReceipt.TotalPaid_mon, TblReceipt.Boxes_int, TblReceipt.It' +
        'emsNo_int, TblReceipt.Checked_dat, TblReceipt.CheckedBy_str, Tbl' +
        'Receipt.ActivatedBy_str, TblReceipt.Type_str, TblReceipt.TotalCo' +
        'st_mon, TblReceipt.ItemsCost_mon, TblReceipt.OtherCharges_mon, T' +
        'blReceipt.LastUpdate_dat, TblReceipt.SystemStore_Str, TblReceipt' +
        '.Supplier_str, TblReceipt.OrderRef_Str, TblReceipt.ItemsComplete' +
        '_bol'
      'FROM TblReceipt'
      
        'WHERE ((TblReceipt.ReceiptDate_dat >= :StartDate)  AND (TblRecei' +
        'pt.ReceiptDate_dat <= :EndDate) AND (TblReceipt.Supplier_ID = :S' +
        'upplier_ID))'
      
        'ORDER BY TblReceipt.ReceiptDate_dat DESC , TblReceipt.Activated_' +
        'bol DESC , TblReceipt.ReceiptNo_str DESC;')
    Left = 56
    Top = 341
    object tblReceiptsReceiptNo_ID: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object tblReceiptsReceiptDate_dat: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object tblReceiptsActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object tblReceiptsReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object tblReceiptsActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object tblReceiptsVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object tblReceiptsOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object tblReceiptsSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object tblReceiptsCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object tblReceiptsOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object tblReceiptsInvoiced_dat: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object tblReceiptsInvoiceNo_str: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object tblReceiptsReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object tblReceiptsReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object tblReceiptsLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object tblReceiptsTotalPaid_mon: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object tblReceiptsBoxes_int: TIntegerField
      FieldName = 'Boxes_int'
    end
    object tblReceiptsItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblReceiptsChecked_dat: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object tblReceiptsCheckedBy_str: TStringField
      FieldName = 'CheckedBy_str'
      Size = 50
    end
    object tblReceiptsActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object tblReceiptsType_str: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object tblReceiptsTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object tblReceiptsItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object tblReceiptsOtherCharges_mon: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object tblReceiptsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object tblReceiptsSystemStore_Str: TStringField
      FieldName = 'SystemStore_Str'
      Size = 125
    end
    object tblReceiptsSupplier_str: TStringField
      FieldName = 'Supplier_str'
      Size = 125
    end
    object tblReceiptsOrderRef_Str: TStringField
      FieldName = 'OrderRef_Str'
      Size = 100
    end
    object tblReceiptsItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
  end
  object dsReceipts: TDataSource
    DataSet = tblReceipts
    Left = 168
    Top = 341
  end
  object qryReceiptItems: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    DataSource = dsReceipts
    Parameters = <
      item
        Name = 'ReceiptNo_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TblReceiptItems.* '
      'FROM TblReceiptItems'
      'WHERE TblReceiptItems.ReceiptNo_ID = :ReceiptNo_ID')
    Left = 48
    Top = 405
    object qryReceiptItemsReceiptItem_ID: TAutoIncField
      FieldName = 'ReceiptItem_ID'
      ReadOnly = True
    end
    object qryReceiptItemsReceiptNo_ID: TIntegerField
      FieldName = 'ReceiptNo_ID'
    end
    object qryReceiptItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryReceiptItemsOrderitemsNo_ID: TIntegerField
      FieldName = 'OrderitemsNo_ID'
    end
    object qryReceiptItemsOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object qryReceiptItemsQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object qryReceiptItemsQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object qryReceiptItemsQtyReceived_int: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object qryReceiptItemsQtyToFollow_int: TIntegerField
      FieldName = 'QtyToFollow_int'
    end
    object qryReceiptItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReceiptItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReceiptItemsBin_str: TStringField
      FieldName = 'Bin_str'
      Size = 15
    end
    object qryReceiptItemsBarCode_str: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object qryReceiptItemsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryReceiptItemsOrder_QtyOrdered: TIntegerField
      FieldName = 'Order_QtyOrdered'
    end
    object qryReceiptItemsOrder_QtyReceived: TIntegerField
      FieldName = 'Order_QtyReceived'
    end
    object qryReceiptItemsOrder_PackCost: TBCDField
      FieldName = 'Order_PackCost'
      Precision = 19
    end
    object qryReceiptItemsOrder_QtyOutstanding: TIntegerField
      FieldName = 'Order_QtyOutstanding'
    end
    object qryReceiptItemsTradeName_str: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object qryReceiptItemsReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 25
    end
    object qryReceiptItemsProductCode_str: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryReceiptItemsVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object qryReceiptItemsNSN_str: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryReceiptItemsICN_str: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryReceiptItemsECN_str: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryReceiptItemsOrderNo_str: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object qryReceiptItemsDuesOut_int: TIntegerField
      FieldName = 'DuesOut_int'
    end
    object qryReceiptItemsCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object qryReceiptItemsChargeCode_str: TStringField
      FieldName = 'ChargeCode_str'
      Size = 13
    end
    object qryReceiptItemsExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryReceiptItemsLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryReceiptItemsLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryReceiptItemsBatchNumber_str: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object qryReceiptItemsBatchQty_int: TIntegerField
      FieldName = 'BatchQty_int'
    end
    object qryReceiptItemsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object qryReceiptItemsQtyOnHold_int: TIntegerField
      FieldName = 'QtyOnHold_int'
    end
    object qryReceiptItemsCalc_PackCost_mon: TBCDField
      FieldName = 'Calc_PackCost_mon'
      Precision = 19
    end
  end
  object dsReceiptItems: TDataSource
    DataSet = qryReceiptItems
    Left = 176
    Top = 405
  end
  object qryIsRecordLocked: TADOQuery
    Connection = AdoReturnsConn
    Parameters = <
      item
        Name = 'Returns_ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOut_bol'
      'FROM TblReturns'
      'WHERE Returns_ID=:Returns_ID')
    Left = 696
    Top = 408
  end
  object dsReturnsWorker: TDataSource
    DataSet = qryReturnsWorker
    Left = 176
    Top = 160
  end
  object qryReturnsWorker: TADOQuery
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Returns_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblReturns'
      'WHERE TblReturns.Returns_ID=:Returns_ID')
    Left = 48
    Top = 152
    object qryReturnsWorkerReturns_ID: TAutoIncField
      FieldName = 'Returns_ID'
      ReadOnly = True
    end
    object qryReturnsWorkerSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryReturnsWorkerSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryReturnsWorkerReturnsNo_str: TStringField
      FieldName = 'ReturnsNo_str'
      Size = 50
    end
    object qryReturnsWorkerReturns_dat: TDateTimeField
      FieldName = 'Returns_dat'
    end
    object qryReturnsWorkerTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReturnsWorkerItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReturnsWorkerRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReturnsWorkerLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryReturnsWorkerLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryReturnsWorkerLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryReturnsWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReturnsWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReturnsWorkerPostedBy_str: TStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryReturnsWorkerCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryReturnsWorkerCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryReturnsWorkerCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryReturnsWorkerCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryReturnsWorkerReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryReturnsWorkerSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object qryReturnsWorkerSupplierName_str: TWideStringField
      FieldName = 'SupplierName_str'
      Size = 50
    end
    object qryReturnsWorkerStoreOfficer_str: TWideStringField
      FieldName = 'StoreOfficer_str'
      Size = 50
    end
    object qryReturnsWorkerFinanceOfficer_str: TWideStringField
      FieldName = 'FinanceOfficer_str'
      Size = 50
    end
    object qryReturnsWorkerReference_str: TWideStringField
      FieldName = 'Reference_str'
    end
    object qryReturnsWorkerCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object qryReturnsWorkerAuthorised_dat: TDateTimeField
      FieldName = 'Authorised_dat'
    end
    object qryReturnsWorkerStoreOfficer_ID: TGuidField
      FieldName = 'StoreOfficer_ID'
      OnChange = qryReturnsWorkerStoreOfficer_IDChange
      FixedChar = True
      Size = 38
    end
    object qryReturnsWorkerFinanceOfficer_ID: TGuidField
      FieldName = 'FinanceOfficer_ID'
      OnChange = qryReturnsWorkerFinanceOfficer_IDChange
      FixedChar = True
      Size = 38
    end
    object qryReturnsWorkerType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 50
    end
  end
  object qryBatchOnHold: TADOQuery
    Tag = 1
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductBatch_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT Sum(ISNULL(TblRequisitionItems.QtyIssued_int, 0)) AS SumQ' +
        'tyOrdered_int'
      
        'FROM TblRequisition INNER JOIN TblRequisitionItems ON TblRequisi' +
        'tion.Requisition_ID = TblRequisitionItems.Requisition_ID'
      
        'WHERE (TblRequisition.Activated_bol=0) AND (TblRequisitionItems.' +
        'ProductBatch_ID=:ProductBatch_ID)')
    Left = 434
    Top = 472
  end
  object qryBatchOnHoldReturnsTotal: TADOQuery
    Tag = 1
    Connection = AdoReturnsConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductBatch_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT Sum(ISNULL(TblReturnsItems.QtyReturned_int, 0)) AS SumQty' +
        'Returned_int'
      
        'FROM TblReturns INNER JOIN TblReturnsItems ON TblReturns.Returns' +
        '_ID = TblReturnsItems.Returns_ID'
      
        'WHERE (TblReturns.Posted_bol=0) AND (TblReturnsItems.ProductBatc' +
        'h_ID=:ProductBatch_ID)')
    Left = 436
    Top = 520
  end
  object stpAddBatchITem: TADOStoredProc
    Connection = AdoReturnsConn
    ProcedureName = 'strdprc_ReturnsAddAnotherBatchProduct;1'
    Parameters = <
      item
        Name = '@ReturnsID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@ProductBatchID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@batchNumber'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end
      item
        Name = '@expiryDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@QTY'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 520
  end
end

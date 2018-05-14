object QuotationDM: TQuotationDM
  OldCreateOrder = False
  Left = 383
  Top = 171
  Height = 624
  Width = 921
  object AdoQuotation: TADOConnection
    CommandTimeout = 180
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxNew;Data Source=(local);'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 40
  end
  object tblQuotations: TADOQuery
    Connection = AdoQuotation
    CursorType = ctStatic
    AfterScroll = tblQuotationsAfterScroll
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
      'FROM tblQuotation'
      'WHERE Created_dat>:StartDate'
      'AND Created_dat<:EndDate'
      'ORDER BY Created_dat')
    Left = 40
    Top = 112
  end
  object dsQuotations: TDataSource
    DataSet = tblQuotations
    Left = 168
    Top = 120
  end
  object qryQuotationWorker: TADOQuery
    Connection = AdoQuotation
    CursorType = ctStatic
    AfterScroll = qryQuotationWorkerAfterScroll
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblQuotation'
      'WHERE Quotation_ID=:QuotationID')
    Left = 48
    Top = 184
    object qryQuotationWorkerQuotation_ID: TAutoIncField
      FieldName = 'Quotation_ID'
      ReadOnly = True
    end
    object qryQuotationWorkerCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object qryQuotationWorkerQuotationRefNo_str: TWideStringField
      FieldName = 'QuotationRefNo_str'
    end
    object qryQuotationWorkerDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
      OnChange = qryQuotationWorkerDemander_IDChange
    end
    object qryQuotationWorkerDemander_str: TWideStringField
      FieldName = 'Demander_str'
      Size = 50
    end
    object qryQuotationWorkerRequestedBy_str: TWideStringField
      FieldName = 'RequestedBy_str'
      Size = 50
    end
    object qryQuotationWorkerRequested_dat: TDateTimeField
      FieldName = 'Requested_dat'
    end
    object qryQuotationWorkerTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryQuotationWorkerPreparedBy_str: TWideStringField
      FieldName = 'PreparedBy_str'
      Size = 50
    end
    object qryQuotationWorkerPrepared_dat: TDateTimeField
      FieldName = 'Prepared_dat'
    end
    object qryQuotationWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryQuotationWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryQuotationWorkerLastUpdatedBy_str: TWideStringField
      FieldName = 'LastUpdatedBy_str'
      Size = 50
    end
    object qryQuotationWorkerLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryQuotationWorkerItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryQuotationWorkerRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryQuotationWorkerCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryQuotationWorkerCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryQuotationWorkerCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryQuotationWorkerCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryQuotationWorkerSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryQuotationWorkerLastEditedBy_ID: TIntegerField
      FieldName = 'LastEditedBy_ID'
    end
    object qryQuotationWorkerAccount_ID: TIntegerField
      FieldName = 'Account_ID'
      OnChange = qryQuotationWorkerAccount_IDChange
    end
    object qryQuotationWorkerAccount_str: TWideStringField
      FieldName = 'Account_str'
      Size = 100
    end
    object qryQuotationWorkerStatus_str: TWideStringField
      FieldName = 'Status_str'
      Size = 15
    end
    object qryQuotationWorkerActive_bol: TBooleanField
      FieldName = 'Active_bol'
    end
    object qryQuotationWorkerValidUntil_dat: TDateTimeField
      FieldName = 'ValidUntil_dat'
    end
  end
  object dsQuotationWorker: TDataSource
    DataSet = qryQuotationWorker
    Left = 168
    Top = 184
  end
  object qryQuotationItems: TADOQuery
    Connection = AdoQuotation
    CursorType = ctStatic
    BeforePost = qryQuotationItemsBeforePost
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblQuotationItems.*, ISNULL(view_ProductQtyOnHand.TotalQt' +
        'yOnHand_int, 0) AS QtyOnHand_int '
      
        'FROM tblQuotationItems LEFT OUTER JOIN view_ProductQtyOnHand ON ' +
        'view_ProductQtyOnHand.ProductCode_ID=tblQuotationItems.ProductCo' +
        'de_ID'
      'WHERE tblQuotationItems.Quotation_ID=:QuotationID')
    Left = 48
    Top = 256
    object qryQuotationItemsQuotationItem_Id: TAutoIncField
      FieldName = 'QuotationItem_Id'
      ReadOnly = True
    end
    object qryQuotationItemsQuotation_ID: TIntegerField
      FieldName = 'Quotation_ID'
    end
    object qryQuotationItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryQuotationItemsNSN_str: TWideStringField
      FieldName = 'NSN_str'
    end
    object qryQuotationItemsECN_str: TWideStringField
      FieldName = 'ECN_str'
    end
    object qryQuotationItemsICN_str: TWideStringField
      FieldName = 'ICN_str'
    end
    object qryQuotationItemsDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryQuotationItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryQuotationItemsMarkUp_dbl: TFloatField
      FieldName = 'MarkUp_dbl'
    end
    object qryQuotationItemsVAT_dbl: TFloatField
      FieldName = 'VAT_dbl'
    end
    object qryQuotationItemsSellingPrice_mon: TBCDField
      FieldName = 'SellingPrice_mon'
      Precision = 19
    end
    object qryQuotationItemsQty_int: TIntegerField
      FieldName = 'Qty_int'
    end
    object qryQuotationItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryQuotationItemsLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryQuotationItemsLastUpdatedBy_str: TWideStringField
      FieldName = 'LastUpdatedBy_str'
    end
    object qryQuotationItemsQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
      ReadOnly = True
    end
    object qryQuotationItemsAccepted_bol: TBooleanField
      FieldName = 'Accepted_bol'
    end
  end
  object dsQuotationItems: TDataSource
    DataSet = qryQuotationItems
    Left = 168
    Top = 256
  end
  object dsDemanders: TDataSource
    DataSet = tblDemanders
    Left = 560
    Top = 128
  end
  object tblSystemUsers: TADOQuery
    Connection = AdoQuotation
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
    Left = 448
    Top = 64
  end
  object tblDemanders: TADOQuery
    Connection = AdoQuotation
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Demander_ID, Code_str, Name_str, DemanderUnique_ID'
      'FROM tblDemander'
      'ORDER BY Name_str')
    Left = 448
    Top = 128
    object tblDemandersDemander_ID: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
    object tblDemandersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object tblDemandersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object tblDemandersDemanderUnique_ID: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 560
    Top = 64
  end
  object qryItemsEditHistory: TADOQuery
    Connection = AdoQuotation
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tblQuotationEditHistory'
      'WHERE tblQuotationEditHistory.Quotation_ID=:QuotationID')
    Left = 48
    Top = 320
  end
  object dsEdithistory: TDataSource
    DataSet = qryItemsEditHistory
    Left = 168
    Top = 320
  end
  object ActionList1: TActionList
    Left = 712
    Top = 32
    object atnSaveandClose: TAction
      Caption = '&Close'
      OnExecute = atnSaveandCloseExecute
    end
    object atnAddSingleItem: TAction
      Caption = 'Add (Single Product) '
      ShortCut = 45
      OnExecute = atnAddSingleItemExecute
    end
    object atnAddEDLProducts: TAction
      Caption = 'Add (Institutional EDL)'
      ShortCut = 16453
      OnExecute = atnAddEDLProductsExecute
    end
    object atnPrintMainReport: TAction
      Caption = '&Print Quotation'
      ShortCut = 16464
      OnExecute = atnPrintMainReportExecute
    end
    object atnPost: TAction
      Caption = 'Post'
      OnExecute = atnPostExecute
    end
    object atnMakeRequisition: TAction
      Caption = 'Create Requisition from List'
      OnExecute = atnMakeRequisitionExecute
    end
    object atnDeleteItem: TAction
      Caption = '&Delete (selected Product)'
      ShortCut = 16452
      OnExecute = atnDeleteItemExecute
    end
    object atnDeleteallItems: TAction
      Caption = 'Dele&te (ALL Products from this Quotation)'
      ShortCut = 16468
      OnExecute = atnDeleteallItemsExecute
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = dsQuotationItems
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = dsQuotationItems
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = dsQuotationItems
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = dsQuotationItems
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsQuotationItems
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsQuotationItems
    end
    object atnCancelQuote: TAction
      Caption = 'Cancel Quote'
      OnExecute = atnCancelQuoteExecute
    end
    object atnAddDemanderAuthorisedItems: TAction
      Caption = 'Add Demander Items'
      OnExecute = atnAddDemanderAuthorisedItemsExecute
    end
  end
  object qryDemanderUsers: TADOStoredProc
    Connection = AdoQuotation
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemandersUsers;1'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 20
      end>
    Left = 448
    Top = 202
  end
  object dsDemanderUsers: TDataSource
    DataSet = qryDemanderUsers
    Left = 560
    Top = 192
  end
  object AdoAddSingleItem: TADOCommand
    CommandText = 'strdprc_QuotationADD_Single;1'
    CommandType = cmdStoredProc
    Connection = AdoQuotation
    Prepared = True
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 160
    Top = 40
  end
  object stp_addEDLProducts: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'strdprc_Quotation_AddInstitutionalEDLProducts;1'
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 440
    Top = 272
  end
  object stp_QuotationTotals: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'strdprc_StockControlQuotationItemsTotals;1'
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 560
    Top = 272
  end
  object qryReportMain: TADOStoredProc
    Connection = AdoQuotation
    CursorType = ctStatic
    ProcedureName = 'strdprc_QuotationReport;1'
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 12
      end>
    Left = 440
    Top = 328
    object qryReportMainQuotation_ID: TAutoIncField
      FieldName = 'Quotation_ID'
      ReadOnly = True
    end
    object qryReportMainCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object qryReportMainSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryReportMainQuotationRefNo_str: TWideStringField
      FieldName = 'QuotationRefNo_str'
    end
    object qryReportMainDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryReportMainDemander_str: TWideStringField
      FieldName = 'Demander_str'
      Size = 50
    end
    object qryReportMainAccount_ID: TIntegerField
      FieldName = 'Account_ID'
    end
    object qryReportMainAccount_str: TWideStringField
      FieldName = 'Account_str'
      Size = 100
    end
    object qryReportMainRequestedBy_str: TWideStringField
      FieldName = 'RequestedBy_str'
      Size = 50
    end
    object qryReportMainRequested_dat: TDateTimeField
      FieldName = 'Requested_dat'
    end
    object qryReportMainTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReportMainItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReportMainPreparedBy_str: TWideStringField
      FieldName = 'PreparedBy_str'
      Size = 50
    end
    object qryReportMainPrepared_dat: TDateTimeField
      FieldName = 'Prepared_dat'
    end
    object qryReportMainPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReportMainPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReportMainRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReportMainLastUpdatedBy_str: TWideStringField
      FieldName = 'LastUpdatedBy_str'
      Size = 50
    end
    object qryReportMainLastEditedBy_ID: TIntegerField
      FieldName = 'LastEditedBy_ID'
    end
    object qryReportMainLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryReportMainCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryReportMainCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryReportMainCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryReportMainCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryReportMainDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object qryReportMainDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object qryReportMainAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 150
    end
    object qryReportMainAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 150
    end
    object qryReportMainAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 150
    end
    object qryReportMainCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 150
    end
    object qryReportMainProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryReportMainNSN_str: TWideStringField
      FieldName = 'NSN_str'
    end
    object qryReportMainECN_str: TWideStringField
      FieldName = 'ECN_str'
    end
    object qryReportMainICN_str: TWideStringField
      FieldName = 'ICN_str'
    end
    object qryReportMainDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryReportMainPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReportMainMarkUp_dbl: TFloatField
      FieldName = 'MarkUp_dbl'
    end
    object qryReportMainVAT_dbl: TFloatField
      FieldName = 'VAT_dbl'
    end
    object qryReportMainSellingPrice_mon: TBCDField
      FieldName = 'SellingPrice_mon'
      Precision = 19
    end
    object qryReportMainQty_int: TIntegerField
      FieldName = 'Qty_int'
    end
    object qryReportMainExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReportMainVATAmount_dbl: TFloatField
      FieldName = 'VATAmount_dbl'
      ReadOnly = True
    end
    object qryReportMainAccepted_bol: TBooleanField
      FieldName = 'Accepted_bol'
    end
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
    Left = 560
    Top = 16
  end
  object ppReportMain: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
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
    Left = 560
    Top = 400
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
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
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6757
        mmLeft = 3440
        mmTop = 8996
        mmWidth = 83344
        BandType = 0
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
        DataField = 'QuotationRefNo_str'
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
        BandType = 0
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
        DataField = 'Prepared_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 23019
        mmTop = 22490
        mmWidth = 55033
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 3
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
        mmTop = 28046
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 4
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
        mmTop = 22490
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 5
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
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 6
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
        mmLeft = 101071
        mmTop = 7408
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        SaveOrder = 7
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
        mmLeft = 101071
        mmTop = 11377
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 8
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
        mmLeft = 101071
        mmTop = 15346
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prepared By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101336
        mmTop = 25929
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'PreparedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119856
        mmTop = 25929
        mmWidth = 21569
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Prepared_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 119856
        mmTop = 29898
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 12
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
        mmLeft = 119856
        mmTop = 20638
        mmWidth = 10795
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 13
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
        mmLeft = 119856
        mmTop = 16140
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 14
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
        mmLeft = 119856
        mmTop = 11642
        mmWidth = 27390
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        SaveOrder = 15
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
        mmLeft = 119856
        mmTop = 7673
        mmWidth = 27072
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 16
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
        mmTop = 28575
        mmWidth = 42069
        BandType = 0
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
        mmTop = 34396
        mmWidth = 281253
        BandType = 0
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
        mmTop = 35719
        mmWidth = 281253
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quotation'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 3440
        mmTop = 0
        mmWidth = 29951
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
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
        mmLeft = 234421
        mmTop = 529
        mmWidth = 42863
        BandType = 0
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
        mmLeft = 101336
        mmTop = 29898
        mmWidth = 6879
        BandType = 0
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
        mmLeft = 101071
        mmTop = 2646
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Price'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 174625
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 19
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
        mmTop = 38365
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 20
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
        mmTop = 38365
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 21
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
        mmTop = 38365
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 191823
        mmTop = 38365
        mmWidth = 11906
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2910
        mmTop = 43127
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
        mmTop = 38365
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Requested By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 11642
        mmWidth = 17727
        BandType = 0
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
        Color = 16311512
        DataField = 'RequestedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 217753
        mmTop = 11642
        mmWidth = 23855
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Requested_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 217753
        mmTop = 16933
        mmWidth = 20807
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
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
        mmLeft = 198438
        mmTop = 16933
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 7673
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Demander_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 217753
        mmTop = 7673
        mmWidth = 19495
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 222250
        mmTop = 529
        mmWidth = 10626
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 220398
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
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
        ParentDataPipeline = False
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
        SaveOrder = 1
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
        ParentDataPipeline = False
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
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SellingPrice_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 168117
        mmTop = 265
        mmWidth = 21061
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 3
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
        ParentDataPipeline = False
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
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Qty_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 191294
        mmTop = 0
        mmWidth = 12965
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
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3754
        mmLeft = 1323
        mmTop = 0
        mmWidth = 4233
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 259377
        mmTop = 265
        mmWidth = 23982
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VATAmount_dbl'
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
        mmLeft = 220398
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel68: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quotation Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 1852
        mmWidth = 41010
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'QuotationRefNo_str'
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
        mmLeft = 92869
        mmTop = 1852
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
        mmLeft = 250825
        mmTop = 8467
        mmWidth = 33338
        BandType = 8
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 3
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 265367
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
      object ppDBText7: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Remarks_mem'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8996
        mmLeft = 26988
        mmTop = 8467
        mmWidth = 241565
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VATAmount_dbl'
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
        mmLeft = 255990
        mmTop = 4763
        mmWidth = 27644
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsReportMain: TDataSource
    DataSet = qryReportMain
    Left = 568
    Top = 328
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReportMain
    UserName = 'DBPipeline1'
    Left = 448
    Top = 400
  end
  object stp_MarkQuotationComplete: TADOStoredProc
    Parameters = <>
    Left = 688
    Top = 336
  end
  object stp_RemoveallItems: TADOQuery
    Connection = AdoQuotation
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM tblQuotationItems'
      'WHERE Quotation_ID=:@QuotationID')
    Left = 288
    Top = 48
  end
  object stp_MakeRequisition: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'stp_Requisition_AddQuotationItems;1'
    Parameters = <
      item
        Name = '@Requisition_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Quotation_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 448
    Top = 472
  end
  object tblRequisition: TADOQuery
    Connection = AdoQuotation
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 * '
      'FROM tblRequisition')
    Left = 48
    Top = 400
    object tblRequisitionRequisition_ID: TAutoIncField
      FieldName = 'Requisition_ID'
      ReadOnly = True
    end
    object tblRequisitionDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object tblRequisitionDemander_Str: TStringField
      FieldName = 'Demander_Str'
      Size = 100
    end
    object tblRequisitionSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object tblRequisitionSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object tblRequisitionRequisition_str: TStringField
      FieldName = 'Requisition_str'
      Size = 50
    end
    object tblRequisitionRequisition_dat: TDateTimeField
      FieldName = 'Requisition_dat'
    end
    object tblRequisitionVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 50
    end
    object tblRequisitionOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object tblRequisitionOrderedBy_str: TStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object tblRequisitionAuthorizedBy_str: TStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object tblRequisitionAuthorized_Dat: TDateTimeField
      FieldName = 'Authorized_Dat'
    end
    object tblRequisitionCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object tblRequisitionTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object tblRequisitionItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblRequisitionRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object tblRequisitionActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object tblRequisitionActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object tblRequisitionActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object tblRequisitionIssuedBy_str: TStringField
      FieldName = 'IssuedBy_str'
      Size = 50
    end
    object tblRequisitionIssued_Dat: TDateTimeField
      FieldName = 'Issued_Dat'
    end
    object tblRequisitionReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object tblRequisitionReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object tblRequisitionLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object tblRequisitionCode_str: TStringField
      FieldName = 'Code_str'
      Size = 12
    end
    object tblRequisitionLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object tblRequisitionLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object tblRequisitionCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object tblRequisitionItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object tblRequisitionPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object tblRequisitionCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object tblRequisitionCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object tblRequisitionCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object tblRequisitionCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
  end
  object dsqryADOSystemWharehouse: TDataSource
    DataSet = stpSystemWharehouse
    Left = 195
    Top = 476
  end
  object stpSystemWharehouse: TADOTable
    Connection = AdoQuotation
    CursorType = ctStatic
    TableName = 'strdprc_SystemWharehouse'
    Left = 48
    Top = 480
    object stpSystemWharehouseSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseSystemAccount_ID: TAutoIncField
      FieldName = 'SystemAccount_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpSystemWharehouseDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpSystemWharehouseAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpSystemWharehouseAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpSystemWharehouseDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object stp_UpdateItemVat: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'strdprc_QuotationItemsUpdateVAT;1'
    Parameters = <
      item
        Name = '@Quotation_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@VAT'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 704
    Top = 144
  end
  object stp_UpdateSellingPrices: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'stp_UpdateQuotationItemsSellingPrice;1'
    Parameters = <
      item
        Name = '@Quotation_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 592
    Top = 464
  end
  object stp_AddDemanderItems: TADOStoredProc
    Connection = AdoQuotation
    ProcedureName = 'strdprc_QuotationAddDemanderItems;1'
    Parameters = <
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 704
    Top = 224
  end
  object qryIsRecordLocked: TADOQuery
    Connection = AdoQuotation
    Parameters = <
      item
        Name = 'Quotation_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOut_bol'
      'FROM tblQuotation'
      'WHERE Quotation_ID=:Quotation_ID')
    Left = 696
    Top = 408
  end
end

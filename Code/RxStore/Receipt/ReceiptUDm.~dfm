object ReceiptDm: TReceiptDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 304
  Top = 140
  Height = 861
  Width = 1279
  object ADOReceiptsConnection: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=RxBarCoding;Data Source=.\sqlexpre' +
      'ss;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=AMD-XP2K-DVD;Use Encryption for Data=False;Ta' +
      'g with column collation when possible=False'
    ConnectionTimeout = 180
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 63
    Top = 10
  end
  object dstblReceiptList: TDataSource
    DataSet = stpReceiptList
    Left = 208
    Top = 12
  end
  object dstblReceiptListReport: TDataSource
    DataSet = stpReceiptListReport
    Left = 436
    Top = 100
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dstblReceiptListReport
    OpenDataSource = False
    RefreshAfterPost = True
    UserName = 'DBPipeline1'
    Left = 584
    Top = 100
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DemanderCode_str'
      FieldName = 'DemanderCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'DemanderName_str'
      FieldName = 'DemanderName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ReceiptNo_ID'
      FieldName = 'ReceiptNo_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'ReceiptNo_str'
      FieldName = 'ReceiptNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ReceiptDate_dat'
      FieldName = 'ReceiptDate_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'VoucherNo_str'
      FieldName = 'VoucherNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Charges_mon'
      FieldName = 'Charges_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Ordered_dat'
      FieldName = 'Ordered_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Invoiced_dat'
      FieldName = 'Invoiced_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'InvoiceNo_str'
      FieldName = 'InvoiceNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Received_dat'
      FieldName = 'Received_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'ReceivedBy_str'
      FieldName = 'ReceivedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'LeadTime_int'
      FieldName = 'LeadTime_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'TotalPaid_mon'
      FieldName = 'TotalPaid_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Boxes_int'
      FieldName = 'Boxes_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'ItemsNo_int'
      FieldName = 'ItemsNo_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Checked_dat'
      FieldName = 'Checked_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'CheckedBy_str'
      FieldName = 'CheckedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Activated_bol'
      FieldName = 'Activated_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Activated_dat'
      FieldName = 'Activated_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ActivatedBy_str'
      FieldName = 'ActivatedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Type_str'
      FieldName = 'Type_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'TotalCost_mon'
      FieldName = 'TotalCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ItemsCost_mon'
      FieldName = 'ItemsCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'OtherCharges_mon'
      FieldName = 'OtherCharges_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'ProductCode_str'
      FieldName = 'ProductCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'NSN_str'
      FieldName = 'NSN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'ICN_str'
      FieldName = 'ICN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'ECN_str'
      FieldName = 'ECN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'QtyOnHand_int'
      FieldName = 'QtyOnHand_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'QtyOrdered_int'
      FieldName = 'QtyOrdered_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'QtyReceived_int'
      FieldName = 'QtyReceived_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'QtyToFollow_int'
      FieldName = 'QtyToFollow_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'PackCost_mon'
      FieldName = 'PackCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'ExtendedCost_mon'
      FieldName = 'ExtendedCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'Bin_str'
      FieldName = 'Bin_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'BarCode_str'
      FieldName = 'BarCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'LastUpdate_dat'
      FieldName = 'LastUpdate_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'BatchNumber_str'
      FieldName = 'BatchNumber_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'Expiry_dat'
      FieldName = 'Expiry_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Code_str'
      FieldName = 'Code_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Name_str'
      FieldName = 'Name_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Description'
      FieldName = 'Description'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'PackSize'
      FieldName = 'PackSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'ProductCode_str_1'
      FieldName = 'ProductCode_str_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'OrderNo_str'
      FieldName = 'OrderNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'SystemCode_str'
      FieldName = 'SystemCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'Account_str'
      FieldName = 'Account_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'AccountName_str'
      FieldName = 'AccountName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'IncludeVat_bol'
      FieldName = 'IncludeVat_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'Remarks_mem'
      FieldName = 'Remarks_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'ProvincialLogo_img'
      FieldName = 'ProvincialLogo_img'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'VATDiff'
      FieldName = 'VATDiff'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
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
      'C:\Users\smahlaba\Documents\Projects\RxSolutionCode - BarCoding\' +
      'Compiled\Distribute\tmp\Receipt.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 672
    Top = 100
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 55298
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 96573
        mmTop = 529
        mmWidth = 46736
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 264584
        mmTop = 794
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- Receiving Report'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 144198
        mmTop = 529
        mmWidth = 43688
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Receipt No.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 10848
        mmWidth = 20638
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReceiptNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 28840
        mmTop = 10848
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted by:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167217
        mmTop = 15610
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ActivatedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 15610
        mmWidth = 40481
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Activated_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 240507
        mmTop = 15610
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order No.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 15610
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Account:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 10848
        mmWidth = 15346
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Account_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 240507
        mmTop = 10848
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OrderNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 28840
        mmTop = 15610
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AccountName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 10848
        mmWidth = 28046
        BandType = 0
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProvincialLogo_img'
        DataPipeline = ppDBPipeline1
        GraphicType = 'Bitmap'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 38365
        mmLeft = 114829
        mmTop = 6879
        mmWidth = 39952
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'InvoiceNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 28840
        mmTop = 21960
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoice No.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Received by:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 26723
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReceivedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 28840
        mmTop = 26723
        mmWidth = 24469
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Checked by:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 33073
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CheckedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 28840
        mmTop = 33073
        mmWidth = 23791
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Activated_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 28840
        mmTop = 38629
        mmWidth = 21675
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Received_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 28840
        mmTop = 43921
        mmWidth = 21759
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Checked_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 28840
        mmTop = 49213
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date Activated:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 2381
        mmTop = 38629
        mmWidth = 25485
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date Received:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 2646
        mmTop = 43921
        mmWidth = 25188
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date Checked:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 3440
        mmTop = 49213
        mmWidth = 24426
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supplied by:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 26723
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Code_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 26723
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 213519
        mmTop = 26723
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. of Items:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 21960
        mmWidth = 21431
        BandType = 0
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        LookAhead = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 185738
        mmTop = 21960
        mmWidth = 38185
        BandType = 0
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        LookAhead = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 242623
        mmTop = 21960
        mmWidth = 40809
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Cost:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 222780
        mmTop = 21960
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'InvoiceNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 31485
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Voucher:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 31485
        mmWidth = 15346
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 16669
        mmTop = 794
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 36777
        mmTop = 794
        mmWidth = 17568
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyReceived_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 204523
        mmTop = 794
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 224896
        mmTop = 794
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 247025
        mmTop = 794
        mmWidth = 31052
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ResetGroup = ppGroup1
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 794
        mmWidth = 15346
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 529
        mmTop = 5291
        mmWidth = 277813
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Expiry_dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 187590
        mmTop = 794
        mmWidth = 16679
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BatchNumber_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 156983
        mmTop = 794
        mmWidth = 27432
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4106
        mmLeft = 2540
        mmTop = 1058
        mmWidth = 18542
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ReceiptNo_str'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel5: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Received'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4128
          mmLeft = 209465
          mmTop = 265
          mmWidth = 15494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Unit Cost'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4128
          mmLeft = 230124
          mmTop = 265
          mmWidth = 15727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total Item Cost'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4128
          mmLeft = 252328
          mmTop = 265
          mmWidth = 25527
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.75
          mmHeight = 265
          mmLeft = 529
          mmTop = 4762
          mmWidth = 277813
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'ExpiryDate'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4128
          mmLeft = 186267
          mmTop = 265
          mmWidth = 18415
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Batch No.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4128
          mmLeft = 167926
          mmTop = 265
          mmWidth = 16510
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          DataField = 'Remarks_mem'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4498
          mmLeft = 2117
          mmTop = 0
          mmWidth = 275432
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
        5265706F72744265666F72655072696E740B50726F6772616D54797065070B74
        7450726F63656475726506536F75726365062D70726F63656475726520526570
        6F72744265666F72655072696E743B0D0A626567696E0D0A0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65
        060B4265666F72655072696E74074576656E74494402010000}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dstblReceiptListReportOutstanding
    RefreshAfterPost = True
    UserName = 'DBPipeline2'
    Left = 580
    Top = 148
  end
  object ppReport2i: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Template.FileName = 'C:\Deane\SQL\Code\ReceiptOutstanding.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2iPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 740
    Top = 148
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 8467
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OUTSTANDING ORDER ITEMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 63500
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order No.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 8467
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OrderNo_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 41540
        mmTop = 8467
        mmWidth = 72496
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 25929
        mmWidth = 265378
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. of Items:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 21167
        mmWidth = 20108
        BandType = 0
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        LookAhead = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 21167
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ordered'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 226219
        mmTop = 20902
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Outstanding'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 246592
        mmTop = 20902
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Account:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 14023
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AccountName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 14023
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 10054
        mmTop = 21696
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 28575
        mmTop = 21696
        mmWidth = 6054
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4995
        mmLeft = 133615
        mmTop = 1058
        mmWidth = 17187
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText25: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 529
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 529
        mmWidth = 165629
        BandType = 4
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 794
        mmTop = 5027
        mmWidth = 265378
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyOrdered_int'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 218546
        mmTop = 529
        mmWidth = 20108
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 251090
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 529
        mmWidth = 16933
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2540
        mmTop = 1482
        mmWidth = 17992
        BandType = 8
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365068D70726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A202056616C7565203A3D204442506970656C696E6532
        5B275174794F7264657265645F696E74275D2D20204442506970656C696E6532
        5B27517479526563656976656443756D5F696E74275D0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D6506095661726961626C6531094576656E744E616D
        6506064F6E43616C63074576656E74494402210000}
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dstblReceiptListReportOutstanding: TDataSource
    DataSet = stpReceiptListReportOutstanding
    Left = 432
    Top = 164
  end
  object tblGeneralProductStockDetails: TADOTable
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'strdprc_GeneralProductStockDetails'
    Left = 136
    Top = 284
  end
  object stpStockControlReceipt: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    BeforePost = stpStockControlReceiptBeforePost
    OnNewRecord = stpStockControlReceiptNewRecord
    CommandTimeout = 120
    ProcedureName = 'strdprc_StockControlReceipt'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 88
    Top = 338
    object stpStockControlReceiptReceiptNo_ID: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object stpStockControlReceiptSystemStore_Str: TStringField
      FieldName = 'SystemStore_Str'
      Size = 125
    end
    object stpStockControlReceiptSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
      OnChange = stpStockControlReceiptSystemStore_IDChange
    end
    object stpStockControlReceiptSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
      OnChange = stpStockControlReceiptSupplier_IDChange
    end
    object stpStockControlReceiptSupplier_str: TStringField
      FieldName = 'Supplier_str'
      Size = 125
    end
    object stpStockControlReceiptOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpStockControlReceiptReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object stpStockControlReceiptReceiptDate_dat: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object stpStockControlReceiptVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpStockControlReceiptOrderNo_str: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpStockControlReceiptCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpStockControlReceiptOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpStockControlReceiptInvoiced_dat: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object stpStockControlReceiptInvoiceNo_str: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object stpStockControlReceiptReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object stpStockControlReceiptReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      OnChange = stpStockControlReceiptReceivedBy_strChange
      Size = 50
    end
    object stpStockControlReceiptTotalPaid_mon: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object stpStockControlReceiptBoxes_int: TIntegerField
      FieldName = 'Boxes_int'
    end
    object stpStockControlReceiptItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpStockControlReceiptChecked_dat: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object stpStockControlReceiptCheckedBy_str: TStringField
      FieldName = 'CheckedBy_str'
      OnChange = stpStockControlReceiptCheckedBy_strChange
      Size = 50
    end
    object stpStockControlReceiptActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpStockControlReceiptActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpStockControlReceiptActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpStockControlReceiptTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object stpStockControlReceiptItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpStockControlReceiptOtherCharges_mon: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object stpStockControlReceiptRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object stpStockControlReceiptLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpStockControlReceiptSupplierCode_str: TStringField
      FieldName = 'SupplierCode_str'
      Size = 12
    end
    object stpStockControlReceiptLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object stpStockControlReceiptType_str: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object stpStockControlReceiptOrderRef_Str: TStringField
      FieldName = 'OrderRef_Str'
      Size = 100
    end
    object stpStockControlReceiptChargeCode_str: TStringField
      FieldName = 'ChargeCode_str'
      Size = 12
    end
    object stpStockControlReceiptIncludeVat_bol: TBooleanField
      FieldName = 'IncludeVat_bol'
    end
    object stpStockControlReceiptLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object stpStockControlReceiptLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object stpStockControlReceiptItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object stpStockControlReceiptCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object stpStockControlReceiptCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object stpStockControlReceiptCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object stpStockControlReceiptCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object stpStockControlReceiptDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object stpStockControlReceiptDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 30
    end
  end
  object stpReceiptEditHistory: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReceiptEditHistory'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 88
    Top = 482
  end
  object dsstpReceiptEditHistory: TDataSource
    DataSet = stpReceiptEditHistory
    Left = 304
    Top = 522
  end
  object dsstpStockControlReceiptItemsTotals: TDataSource
    DataSet = stpStockControlReceiptItemsTotals
    Left = 304
    Top = 474
  end
  object dsstpStockControlReceiptItems: TDataSource
    DataSet = stpStockControlReceiptItems
    Left = 304
    Top = 418
  end
  object dsstpStockControlReceipt: TDataSource
    DataSet = stpStockControlReceipt
    Left = 304
    Top = 370
  end
  object stpReceiptItemsAPPEND_GenerateReceipt: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReceiptItemsAPPEND_GenerateReceipt'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 0
      end
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 88
    Top = 586
  end
  object stpReceiptItemsDELETE_AllItems: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_ReceiptItemsDELETE_AllItems'
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 88
    Top = 634
  end
  object cmdReceiptItemsAPPEND_GenerateReceipt: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ReceiptItemsAPPEND_GenerateReceipt'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = Null
      end
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 88
    Top = 682
  end
  object cmdReceiptItemsUPDATE_ReceiptFromOrderItems: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ReceiptItemsUPDATE_ReceiptFromOrderItems'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 104
    Top = 530
  end
  object cmdReceiptItemsDELETE_NoReceipts: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ReceiptItemsDELETE_NoReceipts'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 88
    Top = 730
  end
  object cmdReceiptItemsAPPEND_Audit: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ReceiptItemsAPPEND_Audit'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 288
    Top = 586
  end
  object stpOrderItems_ReceiptItemsTotals: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderItems_ReceiptItemsTotals'
    Parameters = <
      item
        Name = 'OrderItemsNoID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 304
    Top = 706
  end
  object stpOrderItems_Received: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderItems_Received'
    Parameters = <
      item
        Name = 'OrderItemsNoID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 304
    Top = 762
    object stpOrderItems_ReceivedQtyReceivedCum_int: TIntegerField
      FieldName = 'QtyReceivedCum_int'
    end
    object stpOrderItems_ReceivedQtyCalculated_int: TIntegerField
      FieldName = 'QtyCalculated_int'
    end
    object stpOrderItems_ReceivedCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object stpOrderItems_ReceivedOrderItemsNo_ID: TAutoIncField
      FieldName = 'OrderItemsNo_ID'
      ReadOnly = True
    end
  end
  object dstblSystemUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 464
    Top = 4
  end
  object stpOrderItems_ReceiptItemsTotalsX: TADOCommand
    Tag = 1
    CommandText = 'strdprc_OrderItems_ReceiptItemsTotals'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <>
    Left = 304
    Top = 658
  end
  object stpReceiptListReport: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReceiptListReport'
    Parameters = <
      item
        Name = '@RecID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Prepared = True
    Left = 320
    Top = 100
    object stpReceiptListReportDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpReceiptListReportDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpReceiptListReportReceiptNo_ID: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object stpReceiptListReportReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object stpReceiptListReportReceiptDate_dat: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object stpReceiptListReportVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpReceiptListReportCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpReceiptListReportOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpReceiptListReportInvoiced_dat: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object stpReceiptListReportInvoiceNo_str: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object stpReceiptListReportReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object stpReceiptListReportReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object stpReceiptListReportLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object stpReceiptListReportTotalPaid_mon: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object stpReceiptListReportBoxes_int: TIntegerField
      FieldName = 'Boxes_int'
    end
    object stpReceiptListReportItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpReceiptListReportChecked_dat: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object stpReceiptListReportCheckedBy_str: TStringField
      FieldName = 'CheckedBy_str'
      Size = 50
    end
    object stpReceiptListReportActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpReceiptListReportActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpReceiptListReportActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpReceiptListReportType_str: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object stpReceiptListReportTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object stpReceiptListReportItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpReceiptListReportOtherCharges_mon: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object stpReceiptListReportProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpReceiptListReportNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object stpReceiptListReportICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object stpReceiptListReportECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object stpReceiptListReportQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object stpReceiptListReportQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpReceiptListReportQtyReceived_int: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object stpReceiptListReportQtyToFollow_int: TIntegerField
      FieldName = 'QtyToFollow_int'
    end
    object stpReceiptListReportPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object stpReceiptListReportExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object stpReceiptListReportBin_str: TStringField
      FieldName = 'Bin_str'
      Size = 15
    end
    object stpReceiptListReportBarCode_str: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object stpReceiptListReportLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpReceiptListReportBatchNumber_str: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object stpReceiptListReportExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object stpReceiptListReportCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object stpReceiptListReportName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object stpReceiptListReportDescription: TWideStringField
      FieldName = 'Description'
      Size = 470
    end
    object stpReceiptListReportPackSize: TWideStringField
      FieldName = 'PackSize'
      Size = 101
    end
    object stpReceiptListReportProductCode_str_1: TWideStringField
      FieldName = 'ProductCode_str_1'
      Size = 14
    end
    object stpReceiptListReportOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpReceiptListReportSystemCode_str: TStringField
      FieldName = 'SystemCode_str'
      Size = 13
    end
    object stpReceiptListReportAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpReceiptListReportAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpReceiptListReportIncludeVat_bol: TBooleanField
      FieldName = 'IncludeVat_bol'
    end
    object stpReceiptListReportRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object stpReceiptListReportProvincialLogo_img: TBlobField
      FieldName = 'ProvincialLogo_img'
    end
    object stpReceiptListReportVATDiff: TBCDField
      FieldName = 'VATDiff'
      ReadOnly = True
      Precision = 19
    end
  end
  object stpReceiptListReportOutstanding: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReceiptListReportOutstanding'
    Parameters = <
      item
        Name = '@RecID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 320
    Top = 164
    object stpReceiptListReportOutstandingReceiptNo_ID: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object stpReceiptListReportOutstandingReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object stpReceiptListReportOutstandingReceiptDate_dat: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object stpReceiptListReportOutstandingOrderNo_str: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpReceiptListReportOutstandingVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpReceiptListReportOutstandingCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpReceiptListReportOutstandingOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpReceiptListReportOutstandingInvoiced_dat: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object stpReceiptListReportOutstandingInvoiceNo_str: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object stpReceiptListReportOutstandingReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object stpReceiptListReportOutstandingReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object stpReceiptListReportOutstandingTotalPaid_mon: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object stpReceiptListReportOutstandingBoxes_int: TSmallintField
      FieldName = 'Boxes_int'
    end
    object stpReceiptListReportOutstandingItemsNo_int: TSmallintField
      FieldName = 'ItemsNo_int'
    end
    object stpReceiptListReportOutstandingChecked_dat: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object stpReceiptListReportOutstandingCheckedBy_str: TStringField
      FieldName = 'CheckedBy_str'
      Size = 50
    end
    object stpReceiptListReportOutstandingActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpReceiptListReportOutstandingActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpReceiptListReportOutstandingActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpReceiptListReportOutstandingType_str: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object stpReceiptListReportOutstandingTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object stpReceiptListReportOutstandingItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpReceiptListReportOutstandingOtherCharges_mon: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object stpReceiptListReportOutstandingQtyCalculated_int: TIntegerField
      FieldName = 'QtyCalculated_int'
    end
    object stpReceiptListReportOutstandingQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object stpReceiptListReportOutstandingQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpReceiptListReportOutstandingQtyReceivedCum_int: TIntegerField
      FieldName = 'QtyReceivedCum_int'
    end
    object stpReceiptListReportOutstandingQtyOutstanding_int: TIntegerField
      FieldName = 'QtyOutstanding_int'
      ReadOnly = True
    end
    object stpReceiptListReportOutstandingDescription: TWideStringField
      FieldName = 'Description'
      Size = 335
    end
    object stpReceiptListReportOutstandingPackSize: TWideStringField
      FieldName = 'PackSize'
      Size = 101
    end
    object stpReceiptListReportOutstandingDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpReceiptListReportOutstandingDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpReceiptListReportOutstandingProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 13
    end
    object stpReceiptListReportOutstandingCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object stpReceiptListReportOutstandingName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object stpReceiptListReportOutstandingSystemCode_str: TStringField
      FieldName = 'SystemCode_str'
      Size = 13
    end
    object stpReceiptListReportOutstandingAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpReceiptListReportOutstandingAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpReceiptListReportOutstandingIncludeVat_bol: TBooleanField
      FieldName = 'IncludeVat_bol'
    end
    object stpReceiptListReportOutstandingECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object stpReceiptListReportOutstandingICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
  end
  object ADOCommand1: TADOCommand
    Tag = 1
    CommandText = 
      'UPDATE TblProductPackSize SET TblProductPackSize.QtyOnHand_int =' +
      ' (IIf(IsNull(QtyOnHand_int),0,QtyOnHand_int) + :ItemsReceivedA )' +
      ', TblProductPackSize.QtyOnOrder_int = (IIf(IsNull(QtyOnOrder_int' +
      '),0,QtyOnOrder_int) - :ItemsReceivedB ), TblProductPackSize.Last' +
      'Update_dat = :UpdateTime '#13#10'WHERE (((TblProductPackSize.ProductCo' +
      'de_ID)= :ProductID ));'
    Connection = ADOReceiptsConnection
    Prepared = True
    Parameters = <
      item
        Name = 'ItemsReceivedA'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end
      item
        Name = 'ItemsReceivedB'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end
      item
        Name = 'UpdateTime'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 37289d
      end
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end>
    Left = 556
    Top = 440
  end
  object ADOCommand_General: TADOCommand
    Connection = ADOReceiptsConnection
    Parameters = <>
    Left = 568
    Top = 368
  end
  object stpReceiptList: TADOStoredProc
    Connection = ADOReceiptsConnection
    OnFilterRecord = stpReceiptListFilterRecord
    ProcedureName = 'strdprc_ReceiptList'
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38718d
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38718d
      end>
    Left = 68
    Top = 60
    object stpReceiptListReceiptNo_ID: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object stpReceiptListReceiptDate_dat: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object stpReceiptListActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpReceiptListReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object stpReceiptListActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpReceiptListVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpReceiptListOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpReceiptListSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object stpReceiptListCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpReceiptListOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpReceiptListInvoiced_dat: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object stpReceiptListInvoiceNo_str: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object stpReceiptListReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object stpReceiptListReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object stpReceiptListLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object stpReceiptListTotalPaid_mon: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object stpReceiptListBoxes_int: TIntegerField
      FieldName = 'Boxes_int'
    end
    object stpReceiptListItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpReceiptListChecked_dat: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object stpReceiptListCheckedBy_str: TStringField
      FieldName = 'CheckedBy_str'
      Size = 50
    end
    object stpReceiptListActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpReceiptListType_str: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object stpReceiptListTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object stpReceiptListItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpReceiptListOtherCharges_mon: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object stpReceiptListLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpReceiptListSystemStore_Str: TStringField
      FieldName = 'SystemStore_Str'
      Size = 125
    end
    object stpReceiptListSupplier_str: TStringField
      FieldName = 'Supplier_str'
      Size = 125
    end
    object stpReceiptListOrderRef_Str: TStringField
      FieldName = 'OrderRef_Str'
      Size = 100
    end
    object stpReceiptListItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object stpReceiptListCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object stpReceiptListCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object stpReceiptListCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object stpReceiptListDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object stpReceiptListDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 30
    end
  end
  object dstblReceiptListUniqueSuppliers: TDataSource
    DataSet = tblReceiptListUniqueSuppliers
    Left = 264
    Top = 60
  end
  object dstblSystemWharehouse: TDataSource
    DataSet = tblSystemWharehouse
    Left = 232
    Top = 132
  end
  object stpReceiptMarkAsComplete: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_ReceiptItemsMarkAsComplete'
    Parameters = <
      item
        Name = '@RecID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 560
    Top = 276
  end
  object stpStockControlReceiptItemsComplete: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlReceiptItemsComplete'
    Parameters = <
      item
        Name = '@RecID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Prepared = True
    Left = 560
    Top = 324
  end
  object stpOrdersMarkAsComplete: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_OrdersMarkAsComplete'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 560
    Top = 236
  end
  object stpOrderMarkOrderComplete: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_OrderMarkOrderComplete'
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 424
    Top = 359
  end
  object ADOQuery1_STP: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    DataSource = dsstpStockControlReceiptItems
    ProcedureName = 'ADODelphiQuery;1'
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 320
    Top = 244
  end
  object ADOQuery1: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2979
      end>
    SQL.Strings = (
      
        'SELECT TblProductPackSize.ProductCode_ID, TblProductPackSize.Cos' +
        't_mon, ISNULL(view_ProductQtyOnHand.TotalQtyOnHand_int , 0) AS Q' +
        'tyOnHand_int, TblProductPackSize.NSN_str, TblProductPackSize.ICN' +
        '_str, TblProductPackSize.ECN_str, TblProductPackSize.QtyOnOrder_' +
        'int, '
      
        'TblProductPackSize.ProductCode_Str, TblProductPackSize.UnitsOnHa' +
        'nd_dbl, TblProductPackSize.PackSizeValue_dbl, TblProductPackSize' +
        '.ShippingPack_int'
      
        'FROM TblProductPackSize LEFT OUTER JOIN view_ProductQtyOnHand ON' +
        ' view_ProductQtyOnHand.ProductCode_ID = TblProductPackSize.Produ' +
        'ctCode_ID'
      'WHERE (((TblProductPackSize.ProductCode_ID)=:ProductCode_ID));')
    Left = 217
    Top = 264
  end
  object tblReceiptListUniqueSuppliers: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT TOP 100 PERCENT Supplier_ID, Code_str, Name_str'
      'FROM         dbo.TblSupplier'
      'WHERE     (Active_bol = 1)'
      'ORDER BY  Code_str')
    Left = 60
    Top = 108
  end
  object cmdReceiptItemsAPPEND_GenerateReceipt_With_Order_Qty: TADOCommand
    Tag = 1
    CommandText = 'strdprc_ReceiptItemsAPPEND_GenerateReceiptWithOrderQuantities'
    CommandType = cmdStoredProc
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptID'
        DataType = ftFloat
        Value = Null
      end
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 552
    Top = 528
  end
  object ADOQuery2: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    DataSource = dsstpStockControlReceiptItems
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = 2979
      end>
    SQL.Strings = (
      
        'SELECT TblProductPackSize.ProductCode_ID, TblProductPackSize.Cos' +
        't_mon, TblProductPackSize.QtyOnHand_int, TblProductPackSize.NSN_' +
        'str, TblProductPackSize.ICN_str, TblProductPackSize.ECN_str, Tbl' +
        'ProductPackSize.QtyOnOrder_int, '
      
        'TblProductPackSize.ProductCode_Str, TblProductPackSize.UnitsOnHa' +
        'nd_dbl, TblProductPackSize.PackSizeValue_dbl'
      'FROM TblProductPackSize'
      'WHERE (((TblProductPackSize.ProductCode_ID)=:ProductCode_ID));')
    Left = 545
    Top = 606
  end
  object stpAddBatchITem: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_ReceiptItems_AddBatchItem'
    Parameters = <
      item
        Name = 'ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'OrderID'
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
      end>
    Prepared = True
    Left = 544
    Top = 669
  end
  object stpStockControlReceiptItems: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    AfterInsert = stpStockControlReceiptItemsAfterInsert
    BeforePost = stpStockControlReceiptItemsBeforePost
    AfterPost = stpStockControlReceiptItemsAfterPost
    AfterDelete = stpStockControlReceiptItemsAfterDelete
    OnNewRecord = stpStockControlReceiptItemsNewRecord
    CommandTimeout = 120
    ProcedureName = 'strdprc_StockControlReceiptItems'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 88
    Top = 393
    object stpStockControlReceiptItemsReceiptItem_ID: TAutoIncField
      FieldName = 'ReceiptItem_ID'
      ReadOnly = True
    end
    object stpStockControlReceiptItemsReceiptNo_ID: TIntegerField
      FieldName = 'ReceiptNo_ID'
    end
    object stpStockControlReceiptItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpStockControlReceiptItemsOrderitemsNo_ID: TIntegerField
      FieldName = 'OrderitemsNo_ID'
    end
    object stpStockControlReceiptItemsOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpStockControlReceiptItemsQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object stpStockControlReceiptItemsQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpStockControlReceiptItemsQtyReceived_int: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object stpStockControlReceiptItemsQtyToFollow_int: TIntegerField
      FieldName = 'QtyToFollow_int'
    end
    object stpStockControlReceiptItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object stpStockControlReceiptItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object stpStockControlReceiptItemsBin_str: TStringField
      FieldName = 'Bin_str'
      Size = 15
    end
    object stpStockControlReceiptItemsBarCode_str: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object stpStockControlReceiptItemsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpStockControlReceiptItemsOrder_QtyOrdered: TIntegerField
      FieldName = 'Order_QtyOrdered'
    end
    object stpStockControlReceiptItemsOrder_QtyReceived: TIntegerField
      FieldName = 'Order_QtyReceived'
    end
    object stpStockControlReceiptItemsOrder_PackCost: TBCDField
      FieldName = 'Order_PackCost'
      Precision = 19
    end
    object stpStockControlReceiptItemsOrder_QtyOutstanding: TIntegerField
      FieldName = 'Order_QtyOutstanding'
    end
    object stpStockControlReceiptItemsTradeName_str: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object stpStockControlReceiptItemsReceiptNo_str: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 25
    end
    object stpStockControlReceiptItemsProductCode_str: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpStockControlReceiptItemsVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpStockControlReceiptItemsNSN_str: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object stpStockControlReceiptItemsICN_str: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object stpStockControlReceiptItemsECN_str: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object stpStockControlReceiptItemsOrderNo_str: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpStockControlReceiptItemsDuesOut_int: TIntegerField
      FieldName = 'DuesOut_int'
    end
    object stpStockControlReceiptItemsCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object stpStockControlReceiptItemsChargeCode_str: TStringField
      FieldName = 'ChargeCode_str'
      Size = 13
    end
    object stpStockControlReceiptItemsExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object stpStockControlReceiptItemsLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object stpStockControlReceiptItemsLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object stpStockControlReceiptItemsBatchNumber_str: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object stpStockControlReceiptItemsBatchQty_int: TIntegerField
      FieldName = 'BatchQty_int'
    end
    object stpStockControlReceiptItemsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object stpStockControlReceiptItemsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object stpStockControlReceiptItemsCalc_PackCost_mon: TBCDField
      FieldName = 'Calc_PackCost_mon'
      Precision = 19
    end
  end
  object stpStockControlReceiptItemsTotals: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlReceiptItemsTotals'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 88
    Top = 441
  end
  object qryProductBatch: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM tblProductBatch')
    Left = 696
    Top = 668
    object qryProductBatchProductBatch_ID: TAutoIncField
      FieldName = 'ProductBatch_ID'
      ReadOnly = True
    end
    object qryProductBatchProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryProductBatchSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object qryProductBatchPrice_mon: TBCDField
      FieldName = 'Price_mon'
      Precision = 19
    end
    object qryProductBatchContractBrandName_str: TWideStringField
      FieldName = 'ContractBrandName_str'
      Size = 50
    end
    object qryProductBatchSupplierCode_str: TWideStringField
      FieldName = 'SupplierCode_str'
      Size = 5
    end
    object qryProductBatchBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
    end
    object qryProductBatchBarCode_str: TWideStringField
      FieldName = 'BarCode_str'
      Size = 12
    end
    object qryProductBatchExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryProductBatchQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object qryProductBatchQtyReceived_int: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object qryProductBatchQtyOnHold_int: TIntegerField
      FieldName = 'QtyOnHold_int'
    end
    object qryProductBatchBin_str: TWideStringField
      FieldName = 'Bin_str'
      Size = 50
    end
    object qryProductBatchReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object qryProductBatchLastLeadTime_int: TIntegerField
      FieldName = 'LastLeadTime_int'
    end
    object qryProductBatchRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryProductBatchLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryProductBatchShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Template.FileName = 'C:\RxStoreStd\Report\ReceiptOutstanding.rtm'
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
    ShowAutoSearchDialog = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 676
    Top = 155
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand3: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppImage7: TppImage
        UserName = 'Image7'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          07544269746D6170F67B0200424DF67B02000000000036040000280000002704
          0000980000000100080000000000C0770200610F0000610F0000000100000000
          00003236DC003337DC00373BDC003E42DE005233DD004C4FD5004448DF005658
          D3005859D4005845DF00575AE200554DE0005E61E3006967E5007977E700716D
          E6006558DD0046940000499500004C9700004C970B004F9800004D980500529A
          0000559B00005C9E0000579D0B00579D130065A3000061A000006EA7010069A5
          000068A50C0066A5170071A90A0071A9060074AA180077AD170077AC25007AAD
          2F0074AD2B007CAF360075AE35007EB03D007CB1340072AC27005EA110007BAC
          4B007CB246001CCAF8007E81E80052D6FA0049D5F9006CDCFA0073DEFB007CE1
          FB00837DE90087B7380083B42A007EB11E0081B1430084B5440087B54E0084B3
          48008AB9480089B6540089B652008CB9550093BD510098B8720095BE63009AC2
          55009AC268009DC37200A8CA7800AACC7000A2C75D00BFB09900BFB09A008E8F
          D8009393CE009B9CD9008788EA009797ED00928DEB00A3A3EE00A9AAF100BBBC
          F300B3B6F200AFB0F100A5A1E400ACCC8400B6C49700B7CA9B00B6D38800BBD6
          9500B0CF890098E7FC0088E3FC00BEC1F500A6EAFC00B7EEFC00B2EDFD00BBEF
          FD00BEF0FD00C0B19B00C2B39D00C3B49E00C4B59F00C5B7A200C5B6A000C3B5
          A000C6B8A200C6B8A400C6B9A500C8BAA500CABCA700CABDA900CBBEAB00C3DA
          9900C0CEAE00CDC1AE00CEC3B100CEC3B100CFC4B300C0CEA900C7DDA600D1C6
          B500D0C4B200D3C8B700D5CABA00D6CCBE00D3C9BB00D8CEBF00CEC3B100CCDB
          B600CDE1AB00D4E5BA00CEE2B300CFCDD400D8CFC100D7CEC000D9D0C200DAD2
          C400DBD3C600DAD1C400DCD4C700DCD3C600DED6CA00DFD7CC00DFD8CC00D7D6
          D500DAD8D700D9D8D700DFD9D300DCDBDB00D2CBDB00CBCCF600C5C7F600D5D5
          E700D7D4DA00DBD7E500D8D8F900D0CFF700DBE9C700CAF2FD00C9F2FD00CDF3
          FD00C3F1FD00D9F2FD00E1D9CE00E0D7CB00E1DAD100E1DAD000E2DBD100E3DC
          D300E4DED500E4DDD300E1DFDF00E6E0D700DFE9D100E7E1D900E2E2DE00E8E2
          DA00EAE5DE00E9E3DC00E3EED300EAF2DD00E6F0D700E1EDCC00E2E1E000E2E1
          E100E6E6E500E4E3E300E8E7E700E8E6E500ECE7E100EBE6E000E9E9E700EDE9
          E200EEEAE400EFEBE500EFEBE600EFECE600E9E8E800EBEAEA00EBEBEA00EAE9
          E900ECEBEB00ECEBEA00EAE9E800EDECEC00EFEEEE00ECECEB00E5E4EB00E3E4
          FA00EBECFC00EAEAF500EEF4E400E9F9FE00F0ECE700F2EFEA00F1EDE900F1EF
          EE00F3F0EB00F4F2EE00F3F2EC00F3F8EB00F1F0F000F3F2F200F2F1F100F5F3
          F100F6F4F200F6F6F500F8F7F500F8F6F300FAF9F700FAF8F700F9F8F600F9FC
          F600F9F9F900F8F8F800FAFAFA00FBFAF900FCFBFB00FCFCFB00FCFCFC00FEFE
          FE00FFFFFF00FEFFFF00FEFEFD00FAFBFB00F4F6FB00F1F0F700E1DEED00C7BE
          DC00B99292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292B90092AECACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACAAE920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8D4D3D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D4D4D3DFF8F8F8F8F8F8F8F8F8F8F8F8F8F8E6E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4F8D4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E8F0E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F6FCFCFCFDD8D8D7D7
          D7D7A2A2A2A2A3A3A39D9D9E9E9E636357575757585858595959595656565655
          5555555555535353535353535454545454545452525252383838383838380E0E
          0E0E0E0F0F0F0F0F0F0F0D0D1010101010101009515050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          5050505050505050505050505050505050505050505050505050505050505050
          505050505050505050505050505050505050505050FFF5FAF8F8F8F8F8F8F8F8
          F8F8F8F88B8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B8B978B84F9848B97978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B
          8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B8B978B8B978B8B978B8B978BC1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E9848B97978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B98D38B8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B
          8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B97
          8B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B978B8B
          978B8B978B8B978B8B978B8B9784F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5
          F2F3EDEAEBE8E7E1E0DDDEDCC9C7C5B8B9B5B3B0B1AEADAA9594938F8E858282
          8181817F7F80807A7A7979767676EBF8C4757575757575757575757575757575
          7575757575757575757575757575757575757575757575757575757575757575
          7575757575757575757575757575757575757575757575757575757575757575
          7575757575757575757575757575757575757575757575757575757575757575
          7575757575757575757575757575B7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FB
          FCFCD8D8D8D7D7A2A2A2A3A3A39D9E9E9E636357575858595959565656555555
          55555353535353545454545252525252383838380E0E0E0E0E0E0F0F0F0F0F0D
          0D0D0D0D10101010101010091009090909090409040404040404040450020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000A0F0F0D0A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000276F7F9
          F8F8F8F8F8F8F8F8F8F8F8F88BEBFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAF8F884F784FBF7F8FAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAB2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BF9F7F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAF8C698D397FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF8F884F6F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8EAEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
          EBEBEBF5F8F8F8FBFCFCD8D8D8D7D7D7A2A2A2A3A39D9E9E9E63635758585858
          59595656565655555555535353535354545452525252525238383838380E0E0E
          0E0F0F0F0F0F0F0D0D0D0D101010101010100B10090909090909090409040404
          0404040450020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000057F5F5F5F56300000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000002FFFBF6F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F984FB8BFBF7F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BF7FAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C698D397FAF8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F984F6F7
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F8
          B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F894818484848484848484
          848484848484848484847CE8F8F8F8FBFCFCD8D8D8D7D7A2A2A2A2A3A39D9D9E
          9E63635757585859595956565656555555555353535353545454545452525252
          383832380E0E0E0E0E0E0E0F0F0F0F0D0D0D0D0D0D100C10100B100910090909
          0909090404040404040404045002000000020300000000000000000000000003
          0000000000000000000000000000000000000000000000000000030600000000
          0000000000000000000000000000000000000000030300000000000000000000
          0000000000000000000000000000000002060000000000000000000000000000
          0000000000000000000000000000000000000000000A0E32D7F7FA0300000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000006030000000000000000000000000000000000000000000000
          0000000000000206010000000278F6F6F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB8BF0F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAF8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F894C7
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F882E8F8F8F8FBFCFCD8D8D8D7D7D7
          A2A2A3A3A39D9E9E9E6363575758585859565656565555555555535353535354
          5454545252525252383838380E380E0E0E0E0F0F0F0F0F0D0D0D100D10100D10
          10101009100909090909090904040404040404045002000FFEF5F5FC55000000
          00000000000EFDF5D7F5F25600000000000000000CA2FCF25500000000000000
          0CD7F5F5FC5500000000000000000032D7F1F40F0000000000000057F5F5D7F5
          F20C00000000000005F4F45553F2F20A0000000000000056F2F5A2F5F2060000
          000000000EF2F20E00000000000003F2F25952F2F20D0000000000000057F6F9
          FCF9F70C0000000000000000000000000000000000A3F2F40A00000000000000
          0055D7F2F4050000000000000053FCF5F6D70D0000000000000032F2F40F9EFB
          FC03F4F4590000000000000005A3FAFAF657020002FFFBF7F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F98BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F894C7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F882E8F8F8F8FB
          FCFCD8D8D8D7D7A2A2A2A2A3A39D9E9E9E636357585858585959565656555555
          55535553535353545454525452525252383838380E380E0E0E0F0F0F0F0F0F0D
          0D0D0D1010100C10100B0B1009090909090909090404040404040404500202ED
          FAF6D7F8FA54000000000000009DFAFA63FAFA56000000000000000059FAFAF6
          5300000000000000D7FAFCA2FAFA0D0000000000000000D7F6FAFB0F00000000
          000006FAFAD7A2FAFA0C0000000000000AF6F75553FAFA0C0000000000000AF6
          FAA2D7FAFA060000000000000EF6FA3200000000000006F6FA5852FAFA0F0000
          000000000BFAF9A2A2F8F90C0000000000000000000000000000000000A3FAFA
          0C0000000000000002F4FAF7FC060000000000000CF6FAA3FDF8D80000000000
          000032FAF70F9DFAFB03F7FA580000000000000058F8F89DF8FA540003FFF2F6
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBF7F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F894C7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F882E8F8F8F8FBFCFCD8D8D8D7D7D7A2A2A2A39D9D9E9E9E63636357585859
          595956565656555555555353535353545454545252525252383832380E0E0E0E
          0E0E0F0F0F0F0F0D0D0D0D0D0D10101010100B10100909090909090409040404
          04040404500408F3FA9D0FF8F75700000000000000A3FAFC06F8F85900000000
          000000009EFAF8060000000000000000FCFA9D32F8F8520000000000000000FC
          F7D700000000000000000BFAF85653F8F80C0000000000000AF7F95555F9F90C
          0000000000000CFAF85356F8F80B0000000000000EF7F93200000000000006F8
          F85854F8F90F0000000000000AF7F95553F8F80C000000000000000000000000
          0000000000A2F7F80C0000000000000006F7F863000000000000000032FAF80E
          9EF8F70000000000000032F8F80E9DF9F606F8F85800000000000000A3F8FC0A
          F8F856000372FBF9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FB84FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F8
          B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F894C7FA817C7C7C7C7CDD
          DD797C7C7C7C7C7C7C7C7AE8F8F8F8FBFCFCD8D8D8D7D7A2A2A2A3A3A39D9D9E
          9E63635758585858595656565655555555555353535353545454545252525252
          383838380E380E0E0E0E0F0F0F0F0F0F0D10100D0D10100C10100B0910090909
          090909040404040404040404500008F4F79D0DF8F95700000000000000A3F8FC
          06F8F85900000000000000009EFAF7000000000000000000FCF89D54F8F85200
          00000000000000FCF89D00000000000000000BF7F95653F8F80C000000000000
          0AF7F95553F8F80C0000000000000CF8F85356F8F80B0000000000000EF9F832
          00000000000006F8F85854F9F90F0000000000000AF7F95553F8F80C00000000
          00000000000000000000000000A2F7F90C000000000000000BF9F85600000000
          0000000032F7F80E9EF8F90000000000000032F8F80E9EF9F606F8F858000000
          00000000A3F8FC0DF8F8560003FFFBF7F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          84FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F894C7
          F6F3AAAAAA7983DDEAF3AA9594928194AEB8F3FAF8F8F8FBFCFCD8D8D8D7D7D7
          A2A2A2A3A39D9E9E9E6363575758585859595656565655555555535353535354
          5454545452525252383832380E380E0E0E0F0E0F0F0F0F0D0D0D0D1010100D10
          1010100909091009090909090404040404040404500010F4F89D0DF9F8570000
          0000000000A3F8FC06F8F85900000000000000009EF8F7000000000000000000
          525255D8F8F80C0000000000000000FCF89D000000000000000002D8F9A259F8
          F80C0000000000000AF7F95555F9F90C0000000000000DF8F85356F9F9060000
          000000000EF8F83200000000000006F8F85852F9F90F0000000000000BF9F955
          53F8F80C0000000000000000000000000000000000A2F7F70C00000000000000
          0BF9F956000000000000000032F7F8565657570000000000000052F9F90E9EF9
          F606F8F858000000000000000E5255A2F8F852000378F6F6F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F978FBFFFBFAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8AEB9F8F8B9B9B9B9E0F8F8F8B9B8C5C7AEC5B5947AE1F8F8F8FB
          FCFCD8D8D8D7D7A2A2A2A2A39D9D9E9E9E636357585858595959565656555555
          55555353535353545454525252525252383838380E0E0E0E0E0F0E0F0F0F0F0D
          0D0D0D0D101010100A09101009090909090909090404040404040404500010F4
          F89D0DF8F85700000000000000A3F8FC06F8F85900000000000000009EF8F700
          00000000000000000658F8F8F653000000000000000000FBF89D000000000000
          0000000AA3F9F8F8F80C0000000000000AF7F95553F8F80C0000000000000CF8
          F85356F8F80B00000000000032F8F83200000000000006F8F85854F9F90F0000
          000000000AF9F95553F8F80C0000000000000000000000000000000000A2F7F7
          0C000000000000000BF9F956000000000000000032F7F9F8F9F9F90000000000
          000032F8F80E9DF9F606F8F858000000000000000253F6F8F858020002FFFBF6
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8C892F8F8F8F8F8F8F896C4F8F8F8F8F8F8F8
          F8F883E1F8F8F8FBFCFCD8D8D8D7D7D7A2A2A3A3A39D9E9E9E63636358585858
          595656565656555555535353535353545454545252525252383838380E380E0E
          0E0F0F0F0F0F0F0D100D100D0D10100D10090C10090910090909090409040404
          04040404500008F4F89D0DF8F85700000000000000A3F8FC06F8F85900000000
          000000009EF8F70000000000000000009DF8F8A2540E060000000000000000FB
          F89D0000000000000000010E0E59F6F8F80C0000000000000AF9F85555F9F90C
          0000000000000DF9F95356F9F80B0000000000000EF8F83200000000000006F8
          F85854F9F90F0000000000000AF9F95553F8F80C000000000000000000000000
          0000000000A2F7F70C0000000000000006F9F856000000000000000032F7F855
          A2F9F80100000000000052F9F90E9EF9F606F8F8580000000000000055F8F8D7
          550E0A0003FFFBF6F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F8
          B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F882E8F8F8F8F8F8F87A
          7AF8F8F8F8F8F8F8F8F883E1F8F8F8FBFCFCD8D8D8D7D7A2A2A2A2A3A39D9E9E
          9E63636357585858595956565655555555555353535353545454545452525252
          383832380E380E0E0E0E0E0F0F0F0F0F0F0D100D0D10100D1009100910090909
          090909040404040404040404500010F4F79D0DF8F85700000000000000A3F8FC
          06F8F85900000000000000009EF8F7000000000000000000D8F8D80FF9F90E00
          00000000000000FCF89D000000000000000003F9F85555F9F80C000000000000
          0AF9F95555F9F90C0000000000000DF9F95356F9F9060000000000000EF8F832
          00000000000006F8F85852F9F90F0000000000000AF7F95553F8F80C00000000
          00000000000000000000000000A2F7F70C000000000000000BF9F85600000000
          0000000032F7F80E9EF8F80100000000000052F9F90E9EF9F606F8F858000000
          000000009EF8F80AF9F955000272F6F9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7
          84FB8BFBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8E8
          79B3C8C8C8B88EF8E179B8C8C4B8C5C7DEEC83E1F8F8F8FBFCFCD8D8D8D7D7D7
          A2A2A2A3A39D9D9E9E6363575858585859595656565655555555535353535354
          5454525452525252383838380E0E0E0E0E0E0F0F0F0F0F0D0D0F100D10101010
          1010091009090909090909090404040404040404500010F3F89D0DF8F8570000
          0000000000A3F8FC06F8F85900000000000000009EF8F7000000000000000000
          D8F8A30EF9F90E0000000000000000FBF89D000000000000000003F8F95653F9
          F80C0000000000000AF9F95555F7F70C0000000000000CF9F85356F8F80B0000
          0000000032F8F83200000000000006F8F85854F9F90F0000000000000AF7F955
          53F8F80C0000000000000000000000000000000000A2F7F80C00000000000000
          0BF9F956000000000000000032F9F8329EF8F80100000000000032F8F90E9DF9
          F606F8F858000000000000009EF8FB0BF9F9550003FFFBF7F9F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F97CFB84FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8B0838394ADDDF8EDF3AD9296ADAA94917F73DEF8F8F8FB
          FCFCD8D8D8D7D7A2A2A2A2A39D9D9E9E9E636363585858585956565656565555
          55555353535353545454525252525252383838380E380E0E0E0F0F0F0F0F0F10
          0D0D100D0D1010101010100910090909090909090404040404040404500008F4
          F79D0DF8F85700000000000000A3F8FC06F8F8590000000000000056D8F8F858
          0F000000000000009DF8F6D7F9F80C0000000000000658F6F8D8580B00000000
          000000D8F8FDD7F8F7060000000000000AF8F9D8D8F7F90A0000000000000CF8
          F8D7D8F9F80B0000000000000EF8F83200000000000006F8F8FDD7F9F90D0000
          0000000006F9F8D8D7F8F80C0000000000000000000000000000000000A2F7F8
          0C0000000000000C57F9F8D758020000000000000CF7F9A2FCF8D70000000000
          000052F9F9D7FCF8F8A2F8F8590000000000000055F8F8A2F9F9320003FFEFF6
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB8BFBF6F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8817994E7F8F8F8F8F8F8F8F8F8E2
          947979C8F8F8F8FBFCFCD8D8D8D7D7D7A2A2A3A3A39D9E9E9E63636358585858
          595656565655555555535553535353545454545452525252383832380E380E0E
          0E0E0E0F0F0F0F0F0F100D0D10100D1009100B10090910090909090404040404
          04040404500010F3F89D0DF8F85700000000000000A3F8FC06F8F85900000000
          000000FCF8F8F8F854000000000000000AA3F7F9D853000000000000000AF8F8
          F8F8F80C000000000000000DA2F9F8D832000000000000000AF8F8D8FBFC5801
          0000000000000257FBFBD8F9F9060000000000000EF8F83200000000000006F8
          F8D8FCF663020000000000000058F7D8A3F8F80C000000000000000000000000
          0000000000A2F7F80C00000000000032F9F9F8F8F8030000000000000054D8F8
          F7A20C0000000000000052F9F9D7F9FC55A2F8A20C000000000000000363F6F9
          FC5902000278F6F7F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB8BFCF6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F8
          B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F881EDC88381B9
          FAF8F8F8EBAE7A8CC8F882E8F8F8F8FBFCFCD8D8D8D7D7A2A2A2A2A3A39D9E9E
          9E63636358585858595956565656555555555353535353545454545252525252
          383838380E0E0E0E0E0F0F0F0F0F0F0F100F0D10100D10101010091009090909
          090909090404040404040404500005F3F7A254F8F85600000000000000000000
          0000000000000000000000009EF8F70000000000000000000000010300000000
          00000000000000FBF89D00000000000000000000000203000000000000000000
          00000000010200000000000000000000020156F8F80B0000000000000B52320B
          0000000000000000000001020000000000000000000002010000000000000000
          00000000000000000000000000A2F7F80C000000000000000BF9F95600000000
          0000000000000003020000000000000000000000000002010000020000000000
          00000000000001030000000003FFFBF6F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F881EDF8F8EDAF7A90C78182B9F5F8F8F882E8F8F8F8FBFCFCD8D8D8D7D7D7
          A2A2A2A39D9D9D9E9E6363635858585859565656565655555553535353535353
          5454525452525252383838380E380E0E0E0E0F0F0F0F0F100F0D100D0D101010
          10101009100909090909090409040404040404045000009DFAF8F8F8F70D0000
          00000000000000000000000000000000000000009EF8F7000000000000000000
          000000000000000000000000000000FBF89D0000000000000000000000000000
          000000000000000000000000000000000000000000000000000056F8F80B0000
          000000000EF9F932000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000A2F9F80C00000000000000
          0BF9F95600000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000003FFEFF6F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F9FFFB78FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F881C7F8F8F8F8F8DC95EDF8F8F8F8F8EB81E8F8F8F8FB
          FCFCD8D8D8D7D7A2A2A2A3A3A39D9E9E9E636363585858585959565656555555
          55555553535353545454545252525252383832380E380E0E0E0E0F0F0F0F0F0F
          0D100D0D1010101010090C091009090909090904040404040404040450040002
          525863560C00000000000000000000000000000000000000000000000A0C0C00
          00000000000000000000000000000000000000000000000C0C0A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E5956060000000000000C56590C00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000535656
          0B00000000000000020C0C0B0000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000272F6F9
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F984FB8BFBF7F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F8B74D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8957992DCF8F8F8F8F8F8F8F8E095
          7C84B7ECF8F8F8FBFCFCD8D8D8D7D7D7A2A2A2A39D9D9E9E9E63636358585858
          595956565656555555535353535353545454525452525252383838380E0E0E0E
          0E0F0F0F0F0F0F0F0D0D100D100D101010100910090910090909090904040404
          0404040450000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000003FFFBF7F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F97CFB8BFBF7F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F8
          B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAFF8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F4B1907AF8
          F8F8F8F8F8F88E7A92DEF8F8F8F8F8FBFCFCD8D8D8D7D7A2A2A2A2A3A39D9D9E
          6363636357585858595656565656555555555353535353545454525452525252
          383838380E380E0E0E0E0F0F0F0F0F100F0F100D0D1010101010100910090909
          0909090904040404040404045000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000003FFEFF6F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          84FB84FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F8B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DAFF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F88F7A90C5F5F8F8F8F8F8F8F8F8F6C88F7AE1F8F8F8F6F6FBFCFCFCFCD8D8
          D8D8D7D7D7A9D7D7A2A2A2A2A2A2A3A3A3A3A3A39D9D9D9E9E9E9E9E9E636363
          6363636363575757585858585858595959595959595956565656565655555555
          55555555555555555353535353545454383838384E4E504E50516F5151725151
          7251517251517251517251517251517251517251517251517251517251517251
          5172515172515172515172515172515172515172515172515172515172515172
          51517251517251517251517251517251517251517251517251517251516F5151
          7251517251517251517251517251517251517251517251517251517251517251
          517251517251517251517251517251517251517251517251516F515172515172
          51516F5151725151725151725151725151725151725151725151725151725151
          7251517251517251517251517251517251516F51507CF5F7F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8FAF6
          F5F4F3ECECEEEAEBE8E7E1E1E1E0DDDCDCC9C8C7C4C5B8B9B9B7B5B3B0B1AEAA
          AAAA96ABAB949494929292938F8FECF8DD919191919191919191919191919191
          9191919191919191919191919191919191919191919191919191919191919191
          9191919191919191919191919191919191919191919191919191919191919191
          9191919191919191919191919191919191919191919191919191919191919191
          9191919191919191919191919191C8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F881DEF8F8F8F8F3B782C8F8F8F8F8F8F882E8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9FBFBFBFBF6F9F9F9F9F6FBFBFBF6
          F6F6F6F6F6F6F6FBFBFBFBFBFBF2F0F0ECECECEDEDEDEDEDEBEBEBEBEBE8E8E8
          FDFDFDFDFDFDFDFDFCFDFCEDFCFCEDEDFCFCFDEDEDEBE8E7DEDECAC4DEFDEBED
          F3F3F5F5EFEFF5F5EFF598979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          97979797979797979797979797979797979797979797979797979497979AFAF9
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBFAF9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F7F7FAFAFAFAF6F6F6F5F5F5F4F4F3F3F3F3F3ECECEC
          ECEDEDEEEAEAEAEBEBEBEBEBEBEBE8E8E8E8E8E8E8E8FAF8B297979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          979797979797979797979797979797979797979797979BF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F881EDF8F3B7827FAFE8947994E7F8
          F8F882E8F8F8F8FAF5F3F2F0F0EDEEEBEAE8E5E5E1DFDFDFD3D4D5D5D5C6C6C6
          C4C0C5C1B8B6B9B7B7B5B0B0AFAFACACAAAA95959290908E9185858383828281
          7F7F808079797676767676767676767474747171717171716E716E6C6B6B6A69
          694E4D4E82EDF4F7FAFAFAFAFAFAFAFAFAFA84C0C8C8C6C8C8C6C8C8C6C8C8C6
          C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8
          C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8
          C8C6C8C8C6C8C8C6C8C8C6CBCBCECBC8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6
          C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8
          C6C8C8C6C8C8C6CBCBCEC8C8CEC8C8C6CBCBCEC8C8CEC8C8C6C8C8C6C8C8C6C8
          C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6C8C8C6
          CBCBCECBB68BFAF7F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F97CFB84FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F8
          8BC1D1D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
          D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
          D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
          D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C084F9
          F9F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F881B9827CAFEB
          F8F8F8F8F8C7837FB3F382E8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1DFE2
          DDDDDCDCCBC8C7C4C4B8B8B8B8B9B9B5B5B3B0B0ACACADAD959694949290918E
          8E858583858282817F7F8080808076797676747674747473737371717171716E
          6C6C6B6B6A6A696969694E4E83F4F4F7F8F8F8F8F8F8F8F8F8F884F6F9F8F8FA
          F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
          FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
          F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAFAFAFAFAFAFAF8F8FAF8F8FAF8F8FA
          F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
          FAF8F8FAF8F8FAF8F8FAF8F8FAFAFAFAFAFAFAF8FAFAFAFAFAFAFAFAF8FAFAF8
          F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
          F8F8FAF8F8FAFAF8FAF7F7FAE98BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          FFFB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7F884F0F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F784F7F9F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F89281E8F8F8F8F8F8F8F8F8F8F8F3B07C7FE8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCCBC7C7C4C4C5C5B9B9B7B7B5B5B0B1B0ACACAAAA
          96969494928F8F8E8E858583838282817F7F8080797976797676747474747373
          7371737171716E6E6C6C6B6A6A6A6969694E4D4E83F4F4F7F8F8F8F8F8F8F8F8
          F8F984F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8DF7F9F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F7F984FB8BFBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F7F9F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8DCF3F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F8F8E8E85858383828281817F808080807676
          767674747474747373737371716E6E6E6C6C6B6B6A696969694E4D4D83F4F7F7
          F8F8F8F8F8F8F8F8F9F984F6F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BF7F8
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F978FB8BF0F6F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7F88BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F808079807979767674747474737373737371736E6E6E6C6C6B6B6A6A6969
          69694D4D83F4F7F7F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8E98BF7F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F784FB84FBF9F9F9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE7FA
          84F0F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E
          8E858583838282817F81808080797679767674747474737373717371736E6E6E
          6C6C6B6B6A6A696969694D4D83F6F7F8F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7
          FFF684FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F88BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E85858383828281817F8080808076797676747474747473
          7373716E736E6E6E6E6C6B6B696A696A69694D4D83F7F7F8F8F8C4908FC5F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F784FB8BFBF6F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F88BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F7F3F3F3FAF8F8F8F8ECF3F3F3F3F3F8F8F8F8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808079797979
          767674747474747373737373736E706E6E6C6B6B6A6A696969694D4D83F7F7F8
          F8854D4D4D4D83F7F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F97CFB8BF0F6F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F88D797F7F7F7AB7F8F8F88C7F7F7F7F7F
          79C4F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F81808080807679767674747474737373737373736E6E6E6C6C6B6B6A6A696A
          69694D4D83F7F7F8B74D4D4D4D4D4DB3F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB84FBF9F9F9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F9
          8BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F894E1F8F8F8F8F8AF82
          F8F88CE2F8F8F8F8F79696F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E85858383828281817F80808079767976767474747474737371716E736E706E
          6C6C6B6B6A6A696969694D4D83F7F7F8824D4D4D4D4D4D84F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          84FBFFFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8DC90
          F4F8F8F8F8F8F8EB8CF88CE2F8F8F8F8F8F879F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E85858383828281817F8080798079797676767474747473
          73737373736E706E6E6C6B6B6A6A696A69694D4D83F7F8F8824D4D4D4D4D4D81
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F978FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F892CBF8F8F7F8F8F8F8F8E08284B9E8E8E8E8F8F88DE1F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808080797979
          747674767474747373737373736E706E6E6C6B6B6A6A696969694D4D83F7F8F8
          B04D4D4D4D4D4DAEF9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F883E1F8F8797A81E8F8F8F8E8717F82828282
          F8F894C8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F81808079797976767674747474747373737070736E6E6E6C6C6B6B6A6A696A
          69694D4D83F8F8F8FA7C4D4D4D4D7AFAF9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F882EBF47C94929175AFF8
          F8F8F88294949473B0F896C4F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F8080808079797676767474747473737373707370706E
          6E6E6B6B6A6A696A69694D4D83F8F8F8F8FAB18181AFFAF8F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7
          84FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F88DE1
          F8C8C8C8C87C76ECEEF8F8F8C8C8C8C8F8F892C9F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F8080807976797676747474747473
          73737373736E706E6E6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F97CFB8BF0F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8B0B5F8F8F8F8F87FECB0ADF8F8F8F8F8F8F8F8F87FECF8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F81808079797979
          767674767474747373737170736E706E6C6C6B6B6A6A6A6A69694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8EA82F7F8F8F8F87FECF8B8C9F6F8F8F8F8F8
          F8B982F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F808080807679767674767474747373737370736E706E6E6E6B6B6A6A6969
          4D694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBF6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE7FA
          84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F879838E8E8E7CECF8
          F8927AB9CACACAC7B0B3E0F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F80808079767976767474747474737373737373706E6E
          6E6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          78FB8BFBFAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8E7948C8CB0F5F8F8F8F8AE92929295B5F8F8F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F8080798079797676747474747473
          73737370736E706E6C6C6B6B6A6A6A6A69694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F784FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F881B594AFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808079807979
          747674767474747373737173706E706E6E6E6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F984D9FDE9E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C68BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7FA84CFE8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E9D384F6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F37C7C7C7AEDB77C7C7C7C7C7C7C7C7C7C7F
          84C8DEF8F8F8F8F8F8F7F7F7F7FAFAFAFAF6F5F5F5F5F4F4F4F4F3F3F3F3F3EC
          ECECECEDEDEEEEEAEAEAEBEBEBEBEBEBE8E8E8E8E8E7E7E7E7E1E1E1E1E1E1E1
          E0E0E0E0E0E0DDDDE0E0E0E0DDDEDEDCDCDCDCDCDCDCDCDCDCDCCACAC9C9C9C9
          C9C9C8C8E1F8F8F8F8F8F8F8F8F8F8F8F9F98B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B98FAF8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F784FB8BFBF6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7FAFAF6F5F5F4F4F3F3F3ECECEDEAEA
          EBEBEBE8E8E8E7E7E1E1E1E2E0E0DDDDDEDEDEDCDCDCCBCBCBCAC9C9C9C8F5F8
          998B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8BF9
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F57AF3F3F3FAF4F3F3F3
          F3F3F3F3F3F3F3ECEB79C5F8F8F8F8F7F7FAFAF6F6F5F5F4F4F2F3F3ECECECEC
          EEEEEAEAEBEBEBE8E8E8E8E7E7E1E1E1E1E1E0E0DDDDDDDDDEDEDCDCCBC9C9C9
          C9C8C8C7C7C4C4C5B8B8B8B8B9B9B7B7B7B7B7B7B3B3B3B3B3B3B3B3B3B3B3B1
          B1B1B1B1B1B1B1B1AEAEAEAEC7F8F8F8F8F8F8F8F8F8F8F8F9F98B847C848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848BF7F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB8BF0F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F7FAF6F5F4F2F3ECECEE
          EAEBEBE8E8E7E1E1E0DDDDDEDCCBC9C8C7C4C4C5B8B8B7B7B5B3B3B3B3B3B0B0
          B0B1B1AFAEAEF3F88B8484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848BF9F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F67A
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87CF3F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F8F8E8E858583838282817F7F8080797979797474747474747473
          737373707370706E6E6E6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F8F784FCFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD48BF7F8F8F8F8F8F8F8F8F8
          F8F8F8FA8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B84FB848B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8BBEF8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F88BE4FBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFC84F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F67AF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F882EBF8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808080797979
          7676747474747473737373707070706E6E6C6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F984FBFBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6
          F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FB
          F6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6
          FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6
          F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FB
          F6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6
          FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6F6FC8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FAE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E5E5FDFBD4E5E5E5E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EEF8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7F88BFCF6F9F6F6F6FB
          F6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6
          FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6
          F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FB
          F6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6F6FBF6FBFBFB8BFBF9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F579797979E8B779797979797979797979B0
          E1F882E8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F8080798079797676747474747473737373707370706E6C6C6B6C6A6A6969
          694D4D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8ECDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDE0E0DFD4D4DDDDDDDDE0
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
          E0F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE7FA
          84F1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FB84F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F881EDB7AFF8F8
          F8F8F8F8F8F8F894C8F882E8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F8080797979767476747474747473737373707370706E
          6C6C6B6B6A6A6969694D4D4D83F8F8F8F8F8F8F8F8F8F8F8F9F98BFBF9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9FB84F6F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8817C7CADF4F4F4F4F4F4F4F4F4AF81837CE8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F80807A8079797676747474747473
          737373707070706E6E6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F784FBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E98BFAFAF8F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D808E6A4D4D4D4D4D4D4D4D4D
          4D7A8E6C4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D828E4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F7F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F68BF6F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8ECDE837A7C7C7C7C7C7C7C7C7C7A79B7E1F4F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808079797979
          7676747474747373737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F784FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F86D4D
          4D4D4D4D4D4D4D4D4DB1F8744D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAAF8814D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F87CE1F8F8F8F8F8F8F8F8F8F8F8
          F69285F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F80807A7979797476747474747473737373707370706E6C6C6B6B6A6A6969
          4D694D4D83F8F8F8F8EC8C72728DEEF8F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D72714D4D4D4D4D4D4D4D4D6D734D4D4D4D
          4D4D4D4DB7F86D6C75694D4D4D4D4D4D4DB1F8746B756A4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6974704D4D4D4D4D4D4D4D4D4D6C75694D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D73F8C44D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8B3B3F8F8F8F8
          F8F8F8F8F8F8F8F8F8F87CF4F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F8080807979797676747674747473737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F3734D4D4D4D72F3F9F984FBF9F9F9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D70DEF8F8DC704D4D4D4D4D
          6AC4F8F8C9EBEA4D4D4D4D4DB7F8C4F8F8F6AA694D4D4D4D4DB1F8C4F8F8FAAF
          6A4D4D4D4D4D8DF8824D4D4D4D6BF8B84D4D4D4D4D698EF3F8F8CB734D4D4D4D
          4D4D6DC4F8F8F4C7F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDE
          F8F8ECC8754D4D4D4D4D4D69F3F8734D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F87FF3F8E8EBEBEBEBEBEBEBEBEBE8F8F892DCF8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F8080798076797676747474747473
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8964D4D4D4D4D4D94
          F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB9F8C9
          DCF8B84D4D4D4D4D92F8E7AEE1F8EA4D4D4D4D4DB7F8F8C8B0EBF8AA4D4D4D4D
          4DB1F8F8DCB1E8F8B04D4D4D4D4D8DF8824D4D4D4D6BF8B84D4D4D4D4D8CF8DD
          94B7F8E86A4D4D4D4D69DCF8DDB1E1F8F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4DDEF8DEECF8E8694D4D4D4D4D82F8F8AD4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F87AFAF8828282828282828282828479F8AEB8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808079807679
          7676747474747473737373707370706E6C6C6B6B6A6A696969694D4D83F8F8F8
          814D4D4D4D4D4D7CF9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4DF3EB6969EDF6694D4D4D4DC4F8764D6DF8EA4D4D4D4D4DB7F8B14D
          4D6FEBF86B4D4D4D4DB1F8B74D4D6BE1F8714D4D4D4D8DF8824D4D4D4D6BF8B8
          4D4D4D4D4DEDE8694D4D7C8D714D4D4D4D81F8B8694D69DDF8834D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEF87069C9F87A4D4D4D4D4DC4FAE1ED69
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F87AFAF87F7F7F7F7F7F7F7F7F7F7F
          B5F8AEB8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F80807A7979797676747474747473737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8854D4D4D4D4D4D83F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D6F6B4D76FAF86A4D4D4D4DDEF86A4D4DEBEA4D
          4D4D4D4DB7F8794D4D4DB1F87A4D4D4D4DB1F87F4D4D4D96F8814D4D4D4D8DF8
          824D4D4D4D6BF8B84D4D4D4D71F8F3E1E1E1E1E1AD4D4D4D4D95F8844D4D4D94
          F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEF87069DCF8764D4D
          4D4D6DFAC48CF8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF9
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F884EBF8ECECF0
          ECECF0ECECECECECF8F88EDDF8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F80807A7979797476747474747473737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8C84D4D4D4D4D4DC7F9F984FBF9F9F9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D79B8F7F8C94D4D4D4D4D
          DEF84D4D4DE1EA4D4D4D4D4DB7F8824D4D4DC4F8734D4D4D4DB1F88C4D4D4DB7
          F8764D4D4D4D8DF8824D4D4D4D6BF8B84D4D4D4D6AF7F3AEAEAEC7F8AE4D4D4D
          4D8EF8924D4D4DB5F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDE
          F8C9ECF8DD4D4D4D4D4D93F8826BF5CB4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8C496F8F8F8F8F8F8F8F8F8F8F8F8F8F87AFAF8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F8080798079797676747674747473
          737373707370706E6C6C6B6B6A6A696969694D4D83F8F8F8F8AE694D4D69AAF8
          F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D7CFAF8
          F4B56E4D4D4D4D4DDEF84D4D4DE1EA4D4D4D4D4DB7F8EB7C7395F8E04D4D4D4D
          4DB1F8ED817392F8E7694D4D4D4D8DF8824D4D4D4D6BF8B84D4D4D4D4DC5F890
          6A75E1F8794D4D4D4D73F5F483738FF7F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4DDEF8F4F8F4734D4D4D4D4DE1F46A4DB5F8754D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8EA96EDF8F8F8F8F8F8F8F8F8F8F8F879EEF8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F808079807679
          7676747474747473737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          F8F8E8B3B3E7F8F8F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4DB9F8946A4D4D4D4D4D4D4DDEF84D4D4DE1EA4D4D4D4D4DB7F8FAF8
          F8F8EC744D4D4D4D4DB1F8FAF8F8F8F3764D4D4D4D4D8DF8824D4D4D4D6BF8B8
          4D4D4D4D4D71E1F8FAF8FA854D4D4D4D4D4D83FAF8F8F8FAF8834D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEF87185F8B34D4D4D4D76F8B74D4D7AF8
          B04D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F3F57F7979797979797979797979
          79B8E0FAF8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F80807A7979797676747474747473737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4DB9F8726BDEB34D4D4D4D4D83924D4D4D8D8E4D
          4D4D4D4D7F927394B3926C4D4D4D4D4D4D7C927494B3946D4D4D4D4D4D4D8DF8
          824D4D4D4D6992814D4D4D4D4D4D698EB394764D4D4D4D4D4D4D4D7494B0918C
          F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEF87082F8B84D4D4D
          4D7992764D4D4D8F8E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE7FA
          84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8817A7A7A7A7A
          7A7A7A7A7A7A7A7A7A7A7AE8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F80807A7979797676747474747473737373707370706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D83F8E8E1F8964D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D8DF8824D4D4D4D6ADDAD4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D83F8834D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDE
          F8F3F8F8824D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F881EDF8F8F8F8F8F8F8F8F8F8F8F8F8F882E8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F8080798076797676747474747473
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69ADF3
          F6B96B4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D82E87F4D4D4D4D6AE8B14D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D81E8844D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4DB8E8E7DC814D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F881EDF8F8F8F8F8F8F8F8F8F8F8F8F8F882E8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F80807A807679
          7676747474747473737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D69694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F87CB9F8EBEBEBEBEBEBEBEBEBEBEB
          EBEB82E8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F8080798076797676747474747473737373707370706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F89484F8848484
          8484848484848484848484E8F8F8F8FAFAF5F5F3F3ECECEAEAEBE8E8E1E1E1E1
          DDDDDEDEDCC8C8C7C7C4C4B8B8B9B9B7B7B5B3B3B1B1AEAEADAD969694929293
          9391918C8C85858282828181807F808079797979797676757474757474737373
          717170706D6D6E6E6C6C6B6B8CF8F8F8F8F8F8F8F8F8F8F8F9F984A19BB2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2998DF7F8F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3ECEAEBE8E1E1DD
          DEDCC8C7C4B8B7B5B3B1AEAD96949293918C838282817A797976767575747473
          71706D6E6C6BE8F88B989BB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B29B9B84F6F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F87FF3F87F7F7F7F92F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFAFAFAF8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F9F99B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BB2F9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F4E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAB29B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BF9F9F9F8F8F8F8F8CA920092CAF8F8F8DB
          6161FBF8F86266F8F8F87AFAF8ECECECCA84F8F8F8F8F8F8F8F8F8F8F8F8F8FA
          FAF5F5F4F4F3F3ECECEEEBEBE8E8E8E8E1E1E1E1E0DDDDDEDEDCDCC9C9C8C8C7
          C7C4B8B8B9B9B7B7B5B5B3B3B0B1B1AEAEADADAAAA95959492928F8F918E8585
          858585858282828282828282828181817F7F7F7F80807C7C7C7C7A7AAAF8F8F8
          F8F8F8F8F8F8F8F8F9F9848B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8BFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8C19BB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29BF8BE9BB2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29BDFF8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8FAF5F4F3ECEEEBE8E8E1E1E0DDDEDCC9C7C4B8B9B7B5B3B0B1AE
          ADAA9594928F8C8585838282828281817F7F807C7C7AEAF8848B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B84F9F9F9F8F8F8F8F8CA
          920092CAF8F8F631343134F8F96631F8F8F87CF4F8F8F8F8EB84F8F8F8F8F8F8
          F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E8E85858383828281
          7F7F80807A7A79797676747474747373737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984F6F9FAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAEB8DF9F9F8F8F8F8F8F8F8F8F8F8F8F88BB2C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C184F984BFC1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          97C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F8
          8BEEFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF684F9
          F9F9F8F8F8F8F8CA920092CAF8F86634F8DB31A9F9F931F9F8F8DC90F8F8F8F8
          EB84F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E
          8E858583838282817F7F80807A7979797676747574747373737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984F6F9F7FAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAEA8BF7F8F8F8F8F8F8F8F8F8F8F8F8F88BE9FAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9
          84F78BFBF7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE7F88BEEFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAF8F684F9F9F9F8F8F8F8F8CA920092CAF8F86135F8F93461F9FC31F6
          F9F8F8F879767676767FE8E8E8E8E8E8F3F8F8F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F80807A7979767676747574747373
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F18BFAF8F8F8F8F8F8F8F8F8
          F8F8F8F88BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE7FA84F0F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F86831
          F8F86431653634F9F9F9F8C57F82838282828282828282827C95F8F8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F8F8E8E858583838282817F7F80807A797979
          7576747574747373737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F98BFBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBFFFBF7F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F88BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA
          920092CAF8F8F935A9F8F9353134DBF9F9F9F879EAF8F8F8F8F8F8F8F8F8F8F8
          F8C781F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E8E85858383828281
          7F7F80807A7979797576747574747373737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F784FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8DF7F9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FB84FBF9F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F8
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F9F9F9F88CE2F8F8F8F8
          F8F8F8F8F8F8F8F8F8F881EAF8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F80807A7979767676747574747373737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F8F8FAE0E0F6F8F8F9F784FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8E98BF7F9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7
          84FB8BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8A76433A7A7A7A9F8F8
          F8F881EDF8C9CACACAC9F8E1C9CACAC9F8F894C8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F8F8E8E858583838282817F7F80807A7979797676747574747373
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8F8C76D4D4D6DC5F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BF7F8F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA920092CAF8F8F831
          31313131313133F8F8F87AFAF89292929279F8AA8592929079F8AEB8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F8F8E8E858583838282817F7F80807A797979
          7676747574747373737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          E1694D4D4D4D69E0F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9FFFB78FBF7F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8A535F8F8F8F931F9F8F87AEDF87979797979F89474797979
          DCF8ADB8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E8E85858383828281
          7F7F80807A7979797676747574747373737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8914D4D4D4D4D4D8CF9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F77CFB8BFBF7F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE7FA
          84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8A735F8FC373534F9F9F881EDF8F8F8F8
          F8F8F89575F8F8F8F8F88EDDF8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E
          8E858583838282817F7F80807A7979797476747574747373737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F87F4D4D4D4D4D4D7CF9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB8BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA920092CAF8F8F8F8A834F933333531F9
          F9F895C4F8F8F8F8F8F8F89575F8F8F8F8F87AFAF8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F8F8E8E858583838282817F7F80807A7979797676747574747373
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8924D4D4D4D4D4D91
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F9F8F8F8F8CA920092CAF8F8F8F8
          6435F931F9F831DBF9F8F881C4F3F3F3F3F3F3946CF3F3F3EE79EEF8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F938E8E858583838282817F7F80807A797979
          7676747574747373737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          EB6C4D4D4D4D6BE8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F98BFB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F86534DB34F8A734F8F8F8F8F8967C7C7C7C7C7C7A767C7C7C
          81E7EEF8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E8E85858383828281
          7F7F80807A7979767676747574747373737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8DD794D4D76DEF8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F77CFBFFFBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8F6343131313131F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E
          8E858583838282817F7F80807A7979797476747574747373737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8ECECF8F8F8F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F9F8F8F8F8CA920092CAF8F8F8F9F9F6A9A7A9A9A9F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F938E8E858583838282817F7F80807A7979797676747574747373
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F9
          DB6767676767A8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FA
          F5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5
          B5B0B1B1AEAEAAAA96969494928F8F8E8E858583838282817F7F80807A797979
          7676747574747373737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8
          F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBF7F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA
          920092CAF8F8F8F8A7313134343434F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4
          C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F8F8E8E85858383828281
          7F7F80807A7979797476747574747373737373707070706E6C6C6B6B6A6A6969
          69694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB78FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F9
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F9F8F8F8F8CA920092CAF8F8F8F8DB34FBF9F9F9F9F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEBEBE8E7E7E1E1E0E0
          DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA96969494928F938E
          8E858583838282817F7F80807A7979797676747574747373737373707070706E
          6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8F9F984FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          84FB8BFBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F6F9F9F9F8F8F8F8CA920092CAF8F8F8F96433F9F9F9F9F9F9
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3F3ECECEEEEEB
          EBE8E7E7E1E1E0E0DDDDDCDCC9C7C7C4C4C5C5B9B9B7B7B5B5B0B1B1AEAEAAAA
          96969494928F8F8E8E858583838282817F7F80807A7979797676747574747373
          737373707070706E6C6C6B6B6A6A696969694D4D83F8F8F8F8F8F8F8F8F8F8F8
          F9F984FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA8BFAFAF8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FBFFFBFAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F9F8F8F8F8CA920092CAF8F8F8F8
          A9313537373762F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FA
          FAF6F6F5F5F4F4F3F3EDEEEEEAEAEBEBE8E8E7E7E1E1E1E0E0E0E0DDDDDEDECB
          CBC9C8C8C7C7C4C4C5C5B8B8B9B7B7B5B5B3B3B0B0B1B1AEAEAEAAAAAAABABAB
          ABAB94949292929393939393938F8F918E8E8C8C8C8C858585858383B0F8F8F8
          F8F8F8F8F8F8F8F8F9F9848B8B848B8B848B8B848B8B848B8B848B8B848B8B84
          8B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B
          848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B
          8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B84
          8B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B
          848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B
          8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F97CFB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8FAF6F5F4F3EDEEEAEBE8E7E1E1E0E0DDCBC9C8C7C4C5B8B9B7B5
          B3B0B1AEAEAA94949492929393938F918E8C8C858583EDF98B848B8B848B8B84
          8B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B
          848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B
          8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B848B8B84
          8B8B848B8B848B8B848B8B848B8B848B8B848B8B848B84FBF9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F9A76236363762F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8FAFAFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FDFCFCE9F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
          F1E9F1F1E9E9F8F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9FFFB84FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7
          C1BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF9
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8E8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6C6C6CCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC2C2C2C0C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
          C2C2C2C2C2C2C2C2C2C2C2C2C2CEF8F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F9
          84FB8BFBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8FAF5F3ECEAE9E8E7E1E0
          DDDECAC8C7C4B9B7B5B0B1AEADAA959493918C8583827F807A7A797979797675
          74747372716DE8F88B9799989898989898989898989898989898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          98989899999984F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8FB61353561FBF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C08B9898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          9898989898989898989898989898989898989898989898989898989898989898
          9898999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999989898978BF8F8F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F978FB8BF0F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F884F0F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          FB313361373434F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09B
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F18BFAFA
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F86634F8F9F9FB31DBF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8EA84F9F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE7F8
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F86635F8F9F9DB31F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8E98BF7F8F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7
          84FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8643535313535353434F9
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAF7F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F97CFB8BF0F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F96562
          62626262626261F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09B
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA84F9F9
          F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FB84FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F6A7F8DB3635A7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8E984F9F9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBF6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE7FA
          84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8A834F833333631F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9FC8BF9F9F8F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          78FB8BFBFAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F8F8F86435F831F8F831FC
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E984F9F9F8F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F784FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975
          757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          6534DB34F8A734F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09B
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E984F9F9
          F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F6343131313131F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9FC84F9F9F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F784FB8BFBF6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE8F9
          8BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F9F9F9A9A7A9A9A9F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F184F9F9F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          7CFB8BF0F6F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807975757473737370706E
          6C6B6A69694DE8F98BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA920092CAF8F8F8F9DB6767676767A8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FC84F9F9F9F8F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F984FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          A7313134343434F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09B
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FC84F6F9
          F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F984FBFFFBF6F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807976757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F934DBF6F6F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9E984F6F9F9F9F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F978FB8BFBFAF9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807975757473737370706E6C6B6A69694DE8F9
          8BF1F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6
          F9F9F8F8F8F8F8CA920092CAF8F8F8F8A731F9F9F9F9F9F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9FC84F6F9F9F9F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7
          84FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F78BFBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DD
          DCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976757473737370706E
          6C6B6A69694DE7FA84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F684F9F9F9F8F8F8F8F8CA920092CAF8F8F8F8F8FB61353561FBF9
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C09BF8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FC84F6F9F9F9F8F8F8F8F8F8
          F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F9F7FFF684FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3
          ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E858382817F807976
          757473737370706E6C6B6A69694DE8F98BF1F9F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F684F6F9F9F8F8F8F8F8CA920092CAF8F8F8F8
          FB313361373133F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9E984F6F9
          F9F9F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F784FB8BFBF6F9F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E88BFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0B1AEAA9694928F8E
          858382817F807975757473737370706E6C6B6A69694DE8F98BF1F7F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F68BF6F9F9F8F8F8F8F8CA
          920092CAF8F8F8F86634F8F8F9F631FCF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9FC84F6F9F9F9F8F8F8F8F8F8F8F8F8FA8BEBFAF8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F97CFB8BF0F6F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F78BFBF7
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F5F3ECEEEBE8E7E1E0DDDCC9C7C4C5B9B5B0
          B1AEAA9694928F8E858382817F807976757473737370706E6C6B6A69694DE7FA
          84F1F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F684F9
          F9F9F8F8F8F8F8CA920092CAF8F8F8F86635F8F8F8DB31F9F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9FC78F9F9F9F8F8F8F8F8F8F8F8F8F8FA8BEBFAF8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9
          84FB84FBF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8B2C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8E98BFAFAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CC98D397
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9F784FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8FAF6F6F5F4F3ECEDEEEA
          EBE8E8E7E1E1E0DDDDDEDCCBC9C8C7C4C4B8B8B9B7B7B3B0B0B1B1B1AFAEAEAE
          ADADAAAA9696F3F98B8484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847CFFF6F7F9F8F8F8F8F8CA920092CAF8F8643535313535353434F9
          F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F184F6F9F9F8F8F8F8F8F8F8
          F8F8F8FA8BB6D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D5FFFB78D6D5D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D397C1F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          E88BD1D1D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D39B98D38BD3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
          D3D3D3D3D3D3D3D3D3D3D3D3CE84FBF7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F6FBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F8F8F8F8F8CA920092CAF8F96562
          62626262626261F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F184F6F9
          F9F8F8F8F8F8F8F8F8F8F8FAB297979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797F69BA0979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          97979797979797979797979797979797979797979797979797D3F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8E99797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          97979797979797979797979797C6E59797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          979797979797979797979797979797979797979797A0FBF9F9F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F7F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9F9F9F8F8F8F8F8CA
          920092CAF8F8F8F8F9F8F8F8F8F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F9FC78F7F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F17CF7F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9
          F9F9F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FC84F6F9F9F8F8F8F8F8F8F8
          F8F8F8F8E0858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585838383858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          858585858585858585858585858585858CF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8AE858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858585858585858585858585
          85858585858585858585858585B7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F38585
          8585858585858585858585858585858585858585858585858585858585858585
          8585858585858585858585858585858585858585858583838383838383838383
          8383838383838383838383838383838383838383838383838383838383838383
          8383838383838383838383838383838383838383838383838383838383838383
          8383838383838383838383838383838383838383838383838383838383838383
          8383838383838383838383838385DCF8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C098
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FC78F7F9
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F17CF7F9F9F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D6A8E814D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8E1967C736B6D
          7682B7ECF8F8F8F8F8F8F8F8F8F8C098F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F9E57CF9F9F9F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D6A8E814D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4DDDF56C4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6B74694D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D697371694D4D
          4D4D4D4D4D4D4D6B756A4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          DC7A4D4D4D4D4D4D4D4D4D6992ECF8F8F8F8F8F8F8F8C0727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272727272727272727272727272
          72727272727272727272727272727272727272787278F6F9F9F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DE0F56C4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D69746D4D4D4D4D4D4D4D4D4D4D6F75694D4D4D4D4D4D4D4D4D69
          74704D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6A75
          6B4D4D4D4D4D4D4D4D4D4D7173694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D8EF88F4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D7FE1F8F8F4
          B76E4D4D4D4D4D4D69F8B84D4D4D4D4D4DE1E84D4D4D4D4D4DF5C94D4D4D4D4D
          4D82EEF8F8E17A4D4D4D4D4D4D6EB8F8F8F6AD694D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F68C4D4D4D6B754D4D4D79694D4D4D6CC4F8F8F8F8F8F8F8F946
          4141434141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          414141414141414141414141414141414141414141414141414141414187F9F9
          F9F8EA968294E8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D6975694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D69756F4D4D4D4D4D4D4D4D4D4D69756D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D6A756B4D4D4D4D4D4D4D4D4D4D7173694D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D8EF8914D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8C7
          8F85B3FAF8F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          95F8924D7CF8F36D4D4D4D4D6992F5F8F8C8704D4D4D4D4D4D73C8F8F8F5944D
          4D4D4D4D4D698EF3F8F8DC734D4D4D4D4D76F8AD4D4D4D4D4D4D75F8B54D4D4D
          4D4D4D4D6BB3F7F8FAB3694D4D4D4D4D4D7AE1F8F8E8E2F86D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8F8F8EAB36B4D4D4D4D4D4D7AF8E14D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F4AE8392DD
          F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D93F8F8F5E8F8F8EA714D4D4D4D4D69F8B84D4D4D4D4D4DE1E84D4D4D4D4D
          4DF5C94D4D4D4D4D81F8F3B3C5FAF3714D4D4D4D69DCF7B596E0F8AA4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F37A4D4D4D4D82DE4D4D4DF86D4D4D4D4D4EAF
          F8F8F8F8F8F8F946414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          414141414189F9F9F8DE6F4D4D4D6BC8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D74C9FAF8FAC9754D4D4D4D4D4D79
          F8AE4D4D4D4D4D4D6996F5F8F8B8F8C44D4D4D4D4D6994F5F8F8C46D4D4D4D4D
          4D82F88E4D4D4D4D4D4D6BB3F7F8FAB0694D4D4D4D4D4D7AE1F8F8E7E1F86D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6CF8F8FAEAB36B4D4D4D4D4D4D
          7AF8E14D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8904D4D4D4D79F5F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D95F89269E1F8834D4D4D4D4D92F8DC94B8F8E1694D4D4D4D
          6BE8F8C7B3EAF8904D4D4D4D4D8CF8DD94B7F8E86A4D4D4D4D76F8AD4D4D4D4D
          4D4DADF8F56C4D4D4D4D4D4DB8F8B894DCF8B54D4D4D4D4D73F3F8C5B0ECF8F8
          6D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8F5DEF6F8B54D4D4D4D
          4D4DB3F8F87A4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8
          F8F8EB734D4D4D69B0F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D75FAF8AA694D71CBF8C44D4D4D4D4D69F8B84D4D4D4D4D
          4DE1E84D4D4D4D4D4DF5C94D4D4D4D4DE1F6754D4D8EC8824D4D4D4D81F8964D
          4D6A85824D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8FA7F4D4D4D4D6BF3FAECECEC
          F86D4D4D4D4D4D4DB9F8F8F8F8F8F94341414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414141414141414141414141414141414141414141
          4141414141414141414141414187F9F9F7744D4D4D4D4D6DF6F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D7CF5F8F7E7F6F8
          F57F4D4D4D4D4D79F8AE4D4D4D4D4D4D92F8EEB0C5F8F8C44D4D4D4D4D94F8CB
          94C5F8E0694D4D4D4D82F88E4D4D4D4D4D4DB8F8B895DEF8B54D4D4D4D4D73F3
          F8B8B0ECF8F86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6CF8F4DEF6
          F8B54D4D4D4D4D4DB3F8F87A4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8C84D4D4D4D4D4D94F8F8F8F87F4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D95F8928CF8C74D4D4D4D4D69F4E2694D
          4D7F8D6D4D4D4D4D8FF8AA4D4D73C7B54D4D4D4D4DEEE8694D4D7C8D724D4D4D
          4D76F8AD4D4D4D4D4D69EEEDF8914D4D4D4D4D76F8B34D4D698385694D4D4D4D
          B1F88E4D4D73F5F86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8E1
          4D6FF5F3694D4D4D4D6AF3E1FAB94D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D90F8F8F8F8824D4D4D4D4D69E8F8F8F8EA4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAEF8B94D4D4D4D6DF3F8734D4D4D4D
          69F8B84D4D4D4D4D4DE1E84D4D4D4D4D4DF5C94D4D4D4D69F8DE4D4D4D4D4D4D
          4D4D4D4D94F8EBE1E1E1E1E1794D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8924D4D4D
          4D4D6AAFAFAFAFAFF86D4D4D4D4D4D4D6AE1F8F8F8F8F9433F3F2F3E2F3E3E2F
          3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E
          2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E4349
          432F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F
          3E3E2F3E3E2F3E464946412F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E
          2F3E3E2F3E3E2F3E3E2F3E3E2F414946412F3E3E2F3E3E2F3E3E2F3E3E2F3E3E
          2F3E434948412F3E3E2F3E3E2F3E3E2F3E3E2F3E3E3E464946412F3E3E2F3E3E
          2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F4146432F3E3E2F
          3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E
          4645413E2F3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F414649433E2F3E3E2F3E3E2F
          3E3E2F3E3E2F3E3E2F3E3E2F3E3E2F3E2F2F3E3E2F87F9F9E84D4D4D4D4D4D4D
          DEF8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          6AE8F8C46E4D6AB0F8EB6C4D4D4D4D79F8AE4D4D4D4D4D69F5EC6D4D4D95F8C4
          4D4D4D4D69F6DD694D4D818D6E4D4D4D4D82F88E4D4D4D4D4D76F8B34D4D6983
          85694D4D4D4DB0F88E4D4D73F5F86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D6CF8E14D6CF5F3694D4D4D4D6AF3E1FAB94D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8924D4D4D4D4D4D79F8F8F8
          F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D95F895EEFA734D4D
          4D4D4D75F8F3E1E1E1E1E1944D4D4D4DB7F8754D4D4D4D4D4D4D4D4D70F8F3E1
          E1E1E1E1AE4D4D4D4D76F8AD4D4D4D4D4D81F892E1E14D4D4D4D4D85F8EAE1E1
          E1E1E1814D4D4D4DDEF86A4D4D4DDCF86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D6BF8E14D6DF6EA694D4D4D4D83F891B8FA6D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F76B4D4D4D4D4D4DB3F8F8F8EA4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DC8F8824D4D4D4D
          4DC7F8844D4D4D4D69F8B84D4D4D4D4D4DE1E84D4D4D4D4D4DF5C94D4D4D4D4D
          F3EB694D4D6C79734D4D4D4D8EF8DCAEAEAEEAF8754D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8E7694D4D4D4D4D4D4D4D4D4D4DE06C4D4D4D4D4D4D4D7FF8F8F8F8F842
          3C30303030303030303030303030303030303030303030303030303030303030
          30303030303030303030303030303030B4F9F9F95F3030303030303030303030
          30303030308AF6F9F9BAF9F9F98A3030303030303030303087F9F9F94A303030
          303030303030303030303030307EE9FBFBF6FB89413030303030303030303046
          F9F9F98930F6F9F9DA30303030303030303030307EFBF9F9E3DAF6F9A4303030
          30303030303030304ABBFBFBF9F9BA493030303030303030303030305FE3FBFB
          F6FB894330303030303030303030303030303030303030303030303030303E7E
          E9F9F9F9E97E413030303030303030303030A4F9F9F946303030303030303030
          30303030303046BAFBF6FBA4F6F6FB303030303030303030303046A4F6F9F6F9
          DA6030303030303030303030305FF9F9F96030303030303030303030308AF9F9
          E74D4D4D4D4D4D4DDEF8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D84F8E8694D4D4D69DDF8834D4D4D4D79F8AE4D4D4D4D4D75
          F8B74D4D4D75F8C44D4D4D4D76F8F3E1E1E1E1E1924D4D4D4D82F8914D4D4D4D
          4D8CF8EAE1E1E1E1E1814D4D4D4DDEF86A4D4D4DDCF86D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D6CF8E14D6DF6EA694D4D4D4D83F88EB8FA6D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8904D4D
          4D4D4D4D76F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          95F8EEF8F8EE7C4D4D4D4D6EF8EEAEAEAEC9F8944D4D4D4DAEF87F4D4D4D7679
          4D4D4D4D6AF7F3AEAEAEC7F8AE4D4D4D4D76F8AD4D4D4D4D4DC5F87194F87A4D
          4D4D4D81F8E0AEAEAEE1F87C4D4D4D4DC5F8764D4D69EBF86D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8F4CBF6F8AA4D4D4D4D4DC7FA6E7FF8944D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8FA6B4D4D4D4D4D
          4DB0F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4DC8F8824D4D4D4D4DC7F8814D4D4D4D71F8C46D4D4D4D4D6CE1EB6D694D4D4D
          4DF5C94D4D4D4D4DB0F8B07079E1F8824D4D4D4D72F5EA796983F8E0694D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8824D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4DC9F8F8F8F83E2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2BB4F9F9F9602B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B4AF9F9F9F9F9F9F9F98A2B2B2B2B2B2B2B2B2B2B
          7EF9F9F9492B2B2B2B2B2B2B2B2B2B2B2B2B2B2B5FF9F9F9F9F9F9F9A42B2B2B
          2B2B2B2B2B2B2B46F9F9F9892BF9F9F9DA2B2B2B2B2B2B2B2B2B2B48F9F9F9F9
          F9F9F9F9A42B2B2B2B2B2B2B2B2B2B46FBF9F9F9F9F9F9EF432B2B2B2B2B2B2B
          2B2B2B60F9F9F9F9F9F9F9BC2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2BA4F9F9F9F9F9F9F9BC3F2B2B2B2B2B2B2B2B2B2BA4F9F9F9462B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2BBBF9F9F9F9F9F9F9EF2B2B2B2B2B2B2B2B2B
          2B3CDAF9F9F9F9F9F9F94A2B2B2B2B2B2B2B2B2B2B5FF9F9F9602B3C2B2B2B2B
          3C2B2B2B2B88F8F8F7734D4D4D4D4D6DF5F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D96F8AE4D4D4D4D4D94F8AE4D4D4D4D79
          F8B74D4D4D4D4D6EF8DE4D4D4D81F8C44D4D4D4D71F8EAAEAEAECBF8924D4D4D
          4D82F8954D4D4D4D4D81F8E0AEAEAEE1F87C4D4D4D4DC5F8764D4D69EBF86D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6CF8F4CBF6F8AA4D4D4D4D4DC8
          FA6E7FF8944D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8C74D4D4D4D4D4D92F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D95F8947392F8EA694D4D4D4DC9F88C6A76E8F8754D4D4D4D
          79F8E17973AEF8C74D4D4D4D4DC5F8906A75E1F8794D4D4D4D76F8AD4D4D4D4D
          6DFAC94D73F8B74D4D4D4D6CEEF47C697FF6EA694D4D4D4D83F8E17A75B5F8F8
          6D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8FAF6F8DD694D4D4D4D
          71F8C74D69EBEB694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8
          F8F8814D4D4D4D4D69E7F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4DAEF8C54D4D4D4D73F5F86D4D4D4D4DECF8F8F34D4D4D4D
          C7F8F8F8734D4D4D4DF5C94D4D4D4D4D6CDCF8F8F8F8B9694D4D4D4D4D83F5F8
          FAF8E7734D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F46A4D4D4D4D4D4D4D4D4D4D4D7A
          8F6A4D4D4D4D4D4D4D4D8CF8F8F8F83D29292929292929292929292929292929
          2929292929292929292929292929292929292929292929292929292929292929
          A4F9F9F96029292929292929292929292929292960F9F9F9895FF9F9F98A2929
          29292929292929297EF9F9F949292929292929292929292929292929BBF9F9F6
          49E3F9F9FB2B29292929292929292943F9F9F98929F9F9F9DA29292929292929
          2929294AF9F9F9A460F9F9F9A4292929292929292929295EF9F9F97EA4F9F9F9
          5B29292929292929292929A4F9F9F94ABBF9F9F93E2929292929292929292929
          292929292929292929292929293FF9F9F9F988E3F9F9F9492929292929292929
          2929A4F9F9F94329292929292929292929292929293DF9F9F9E349EFF9F9EF29
          29292929292929292946F9F9F9A460F9F9F98A292929292929292929295FF9F9
          F960292929292929292929292988F9F8F8CB6B4D4D4D69C4F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D96F8AF4D4D4D4D4D
          94F8AD4D4D4D4D79F8F3816A4D4D4D4DCBF8B1747FE8F8C44D4D4D4D4DDCF885
          6976EBFA734D4D4D4D82F8E87A694D4D4D6CEEF37A697FFAEB694D4D4D4D83F8
          E17A75B5F8F86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6CF8FAF6F8
          DD694D4D4D4D71F8C44D69EBEB694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F88C4D4D4D4D76F4F8F8F8F87F4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D95F8924D4DDDF8754D4D4D4D73E7F8FA
          F8F6824D4D4D4D4D4D93F7F8F8F8EA734D4D4D4D4D70E1F8FAF8FA8C4D4D4D4D
          4D76F8AD4D4D4D4D92F88C4D4DCBF66C4D4D4D4D7CF3F8FAF8EA764D4D4D4D4D
          4DB3F8F8F8F8FAF86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8E1
          69B7F8824D4D4D4D94F8834D4D96F8814D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D90F8F8F8F8EB714D4D4D4EAEF8F8F8F8EA4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D73FAF8B371697AE1F8B54D4D4D4D4D
          93F8E8914D4D4D4D82ECFA926C4D4D4D4D90824D4D4D4D4D4D6983B0B081694D
          4D4D4D4D4D4D7596B38C6F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8B84D4D4D4D4D
          4D4D4D4D4D4D4DADF86D4D4D4D4D4D4D4D4D6DF7F8F8F82B2727272727272727
          2727272727272727272727272727272727272727272727272727272727272727
          2727272727272727A4F9F9F96027272727272727272727272727272760F8F9F9
          6046F9F9F988272727272727272727277EF9F9F8492727272727272727272727
          27272C27EAF9F9E327BDF9F9F93D27272727272727272744F9F9F98927F7F9F9
          BB272727272727272727274AF9F9F97743F9F9F9A42727272727272727272777
          F9F9F94960F9F9F95F27272727272727272727BBF9F9F92C8AF9F9F9442C2727
          27272727272727272727272727272727272727272748F9F9F9E32789F9F9F95F
          27272727272727272727A4F9F9F94427272727272727272727272727272BF8F9
          F9BA27DAF9F9EF272727272727272727274BF9F9F97740F9F9F9A42727272727
          27272727275EF9F9F95B27272727272727272727277EF8F8F8F8E8928190E1F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          84F8E86B4D4D4D69E1F8824D4D4D4D79F8EEF8854D4D4D4D73EBF8F8F8FAF8C4
          4D4D4D4D4D74E8F8FAF8F5844D4D4D4D4D82F8EEF87A4D4D4D4D7FF3F8FAF8EA
          764D4D4D4D4D4DB3F8F8F8F8FAF86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D6CF8E169B7F8824D4D4D4D94F8834D4DAAF8814D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8B88D82AFF6F8F8F8F8
          F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D95F8924D6DEDFA6B
          4D4D4D4D4D6B91B592754D4D4D4D4D4D4D4D7696B5926C4D4D4D4D4D4D4D698E
          B394764D4D4D4D4D4D6E927A4D4D4D4D82926C4D4D7A92744D4D4D4D4D7194B5
          916D4D4D4D4D4D4D4D4D7CADAF84B7F86D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D6BF8E169B3F88C4D4D4D4D82926B4D4D71927F4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F396818ECAF8F8F8F8F8EA4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D83F7F8F8FAF8
          F8E06C4D4D4D4D4D4DEDFAB54D4D4D4D4DC7F8C76E4D4D4D4DDCB34D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8954D4D4D4D4D4D4D4D6D94B7B99673694D4D4D4D4D4D4D4D4DEBF8F8F82C
          2626262626262626262626262626262626262626262626262626262626262626
          26262626262626262626262626262626A4F8F8F85B2626262626262626262626
          262626265BF8F8F86047F8F8F988262626262626262626267EF8F8F848262626
          262626262626262626262626EBF9F8E326A4F9F9F93926262626262626262640
          F8F8F88926F7F9F9BB262626262626262626264BF8F9F85F40F8F8F989262626
          2626262626262677F9F9F8495FF8F9F85F26262626262626262626BBF8F9F926
          8AF8F8F84426262626262626262626262626262626262626262626262647F8F8
          F9E32689F8F8F85E2626262626262626262689F9F9F940262626262626262626
          26262626262CF8F8F8BD26E3F8F8EF2626262626262626262649F8F8F87740F8
          F8F8A4262626262626262626265EF9F8F85B26262626262626262626267EF8F8
          F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69E8F8C9766974C4F8E1694D4D4D4D6D927983764D4D4D4D
          4D6B91B09675F8C44D4D4D4D4D4D6B8FB592754D4D4D4D4D4D7592758E734D4D
          4D4D4D7294B5916D4D4D4D4D4D4D4D4D7CADAF84B7F86D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D6CF8E169B3F8854D4D4D4D82926B4D4D71927F4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          95F8E8E1F8F8B34D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D74DD8F4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F86D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D6BF8FAF5F8F3704D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D79C5F5F7E194694D4D4D4D4D4D4D7FE1EA4D4D4D4D4D75DCF4734D4D4D
          4DE1B74D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F88C4D4D4D4D4D4D4D69E1F8ECECF8E8694D4D4D4D4D4D
          4D4D4DDDF8F8F83A242424242424242424242424242424242424242424242424
          242424242424242424242424242424242424242424242424A4F8F8F84A242424
          2424242424242424242424244AF8F8F85B44F8F8F87E24242424242424242424
          77F8F8F84C242424242424242424242424242424EBF8F8E324A4F8F8F83A2424
          2424242424242440F8F8F88A24FAF8F8BB242424242424242424244CF9F8F85F
          39F8F8F889242424242424242424245FF8F8F84CA4F8F8F85E24242424242424
          242424BBF8F8F8248AF8F8F84024242424242424242424242424242424242424
          242424242447F8F8F8E32489F8F8F85E2424242424242424242489F8F8F83924
          242424242424242424242424243AF8F8F8BD24DAF8F8EF242424242424242424
          244CF8F8F85F39F8F8F889242424242424242424245EF8F8F84A242424242424
          24242424247EF8F8F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D76F3F8F8FAF8F8ED764D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D69F8C44D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F86D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6CF8FAF5F8F3704D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D8FE8E8E1DC93694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D74E8924D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DAEE8
          6E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BE8E8E1C4744D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8824D4D4D4D4D4D4D73F8714D4D6D
          FA754D4D4D4D4D4D4D4D4DC8F8F8F82523222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          89F8F8F84B2222222222222222222222222222224BF8F8F84B40F8F8F8772222
          222222222222222277F8F8F847232222222222222222222222222223E3F8F8E3
          2377A4A4A42522222222222222222339F8F8F88823FAF8F8BB22222222222222
          2222223BE3F8F8DA4CF8F8F889222222222222222222223A44444788F8F8F8F8
          4023232222222222222222BCF8F8F84B4A5E5E5E3B2322222222222222222222
          2222222222222222222222222244F8F8F8E3238AF8F8F85E2322222222222222
          222289F8F8F83A222222222222222222222222222225F8F8F8BD23DAF8F8EF22
          22222222222222222247F8F8F8894B5E5E5E4C222222222222222222224BF8F8
          F84B232222222222222222222377F8F8F8F8F8F8F8F8F8F8F8F8F8F8C54D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D71B3ECF8E8B3
          6E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69E8B04D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4DAEE86E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D6BE8E8E1C4
          744D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87F4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8914D4D4D4D4D
          4D4D6AF6CBB0B0C9FA6C4D4D4D4D4D4D4D4D4DE1F8F8F8251E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E89F8F8F8EFBBBD88471E1E1E1E1E1E1E1E1E1E1E4BF8F8F8
          4B39F8F8F8771E1E1E1E1E1E1E1E1E1E5FF8F8F8441E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1EE3F8F8E31E1E1E1E1E1E1E1E1E1E1E1E1E1E1E3AF8F8F8881EFAF8F8
          BB1E1E1E1E1E1E1E1E1E1E1E39BCF8F8F8F8F8F88A1E1E1E1E1E1E1E1E1E1E1E
          1E4CE3FAF8F8F85E1E1E1E1E1E1E1E1E1E1E1EBCF8F8F8F8F8F8F8F8391E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E40FAFAF8DA1E8AF8F8F84B
          1E1E1E1E1E1E1E1E1E1E8AF8F8F83A1E1E1E1E1E1E1E1E1E1E1E1E1E1E25F8F8
          F8A41EDAF8F8EF1E1E1E1E1E1E1E1E1E1E47F8F8F8F8FAFAF8F8891E1E1E1E1E
          1E1E1E1E1E4BF8F8F84B1E1E1E1E1E1E1E1E1E1E1E77F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8C54D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D694D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D69F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F87F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D90F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EA4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D4D4D4D4D4D4D4D4D4D4D4D4DB7F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8AD4D4D4D4D4D4D4D4D81E0F6F6E1824D4D4D4D4D4D4D4D4D4DECF8F8F822
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E89F8F8F8F8F8F8F8F84B1E1E1E1E1E1E
          1E1E1E1E4BFAF8F84B39F8F8F8771E1E1E1E1E1E1E1E1E1E5FF8F8F8441E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1EE3F8F8E31E39474747231E1E1E1E1E1E1E1E1E3A
          F8F8F8881EFAF8F8BB1E1E1E1E1E1E1E1E1E1E1E1E235EEFF8F8F8F8891E1E1E
          1E1E1E1E1E1E1E2389FAFAF8F8BA441E1E1E1E1E1E1E1E1E1E1E1EBCF8F8F8EF
          F5F8FAF8391E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E40FAFA
          F8E31E8AF8F8F84A1E1E1E1E1E1E1E1E1E1E8AF8F8F83A1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E25FAF8F8A41EDAF8F8EF1E1E1E1E1E1E1E1E1E1E47F8F8F8F5EFFA
          F8F8891E1E1E1E1E1E1E1E1E1E4BF8F8F84C1E1E1E1E1E1E1E1E1E1E1E77F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8DD82828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          82828282828282828282828282828282828282828282828282F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8AA82828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          828282828282828282828282828282828282828282B5F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F38282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          82828282828282828282828282828282828282828282CAF8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8DC4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
          4D4D75F8F8F8F8221F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F89F8F8F8EFF8F8F8
          F8BC1F1F1F1F1F1F1F1F1F1F4BFAFAF84B39F8F8F8771F1F1F1F1F1F1F1F1F1F
          5FF8FAF84447BBBBBB4B1F1F1F1F1F1F1F1F1F1FE3F8F8E31FA4FAFAFA251F1F
          1F1F1F1F1F1F1F3AF8F8F8881FFAF8F8BB1F1F1F1F1F1F1F1F1F1F3B5F5F5F4B
          A4F8F8F88A1F1F1F1F1F1F1F1F1F1F47F8F8F8F5775E5E5E391F1F1F1F1F1F1F
          1F1F1FBAF8F8F81E7EF8F8F83A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F40FAFAF8DA1F8AF8F8F84A1E1F1F1F1F1F1F1F1F1F8AF8F8F83A4B
          BBBBBB441F1F1F1F1F1F1F1F1F22F8F8F8A41FDAF8F8EF1F1F1F1F1F1F1F1F1F
          1F47FAF8F85E3BF8F8F88A1F1F1F1F1F1F1F1F1F1F4BF8F8F84B39BBBBBB5E1F
          1F1F1F1F1F77F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F76D4D4D4D4D4D4D4D6D94B7B994
          714D4D4D4D4D4D4D4D4D94F8F8F8F8221C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1F
          89F8F8F84B47F8F8F8EF1C1C1C1C1C1C1C1C1C1C4BFAFAF84B39F8F8F8771C1C
          1C1C1C1C1C1C1C1C5FF8FAFA444CFAFAFA4A1C1C1C1C1C1C1C1C1C1CE3F8F8E3
          1C89F8FAFA251C1C1C1C1C1C1C1C1C3AF8F8F8881CFAF8F8BB1C1C1C1C1C1C1C
          1C1C1C39FAF8F84B3AF8F8F88A1F1C1C1C1C1C1C1C1C1C4BF8F8F85F44F8FAF8
          4B1F1C1C1C1C1C1C1C1C1CBCF8F8F81F7EF8F8F8391C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1F39F8F8F8DA1F8AF8F8F84A1F1F1C1C1C1C1C1C
          1C1F8AF8F8F83A5EF8FAF8471C1C1C1C1C1C1C1C1C22F8F8F8A41FDAF8F8EF1C
          1C1C1C1C1C1C1C1C1C44F8F8F85E3BF8F8F8891C1C1C1C1C1C1C1C1C1F4BF8F8
          F84C40F8F8FA771C1C1C1C1C1C77F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8944D4D4D4D
          4D4D69E1F8ECECF8E8694D4D4D4D4D4D4D69E8F8F8F8F8221C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C89F8F8F84B3AF7F8F8FA1C1C1C1C1C1C1C1C1C1C4BFAF8F8
          4B39F8F8F8771C1C1C1C1C1C1C1C1C1C5FF8FAF8444CFAF8F84A1C1C1C1C1C1C
          1C1C1C1CE3F8F8E31C89F8F8F8241C1C1C1C1C1C1C1C1C3AF9F8F8881CFAF8F8
          BB1C1C1C1C1C1C1C1C1C1C39FAF8F84B26F8F8F88A1C1C1C1C1C1C1C1C1C1C4B
          F8F8F84C44F8F8F84B1C1C1C1C1C1C1C1C1C1CBAF8F8F81C7EF8F8F83A1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C40F8F8F8DA1C8AF8F8F84A
          1C1C1C1C1C1C1C1C1C1C8AF8F8F8265EF8F8F8471C1C1C1C1C1C1C1C1C22F8F8
          F8A41CDAF8F8EF1C1C1C1C1C1C1C1C1C1C44F8F8F85E26F8F8F8891C1C1C1C1C
          1C1C1C1C1C4BF8F8F84C40F8F8F85F1C1C1C1C1C1C5FF8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F36D4D4D4D4D4D73F8714D4D6DFA754D4D4D4D4D4D4D90F8F8F8F8F820
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D89F8F8F94B26F9F8F8FA1D1D1D1D1D1D
          1D1D1D1D48F8F8F84B39F8F8F8771D1D1D1D1D1D1D1D1D1D5FF8FAF8444BF8F8
          F84A1C1D1D1D1D1D1D1D1D1DDAF8F8E31CBDF8F8F8201D1D1D1D1D1D1D1D1D27
          F8F8F88A1CFAF8F8BB1D1D1D1D1D1D1D1D1D1D27F8F8F8772CF8F8F8881D1D1D
          1D1D1D1D1D1D1D4BF8F8F84C4BF8F8F84C1D1D1D1D1D1D1D1D1D1DBDF8F8F820
          88F8F8F8271D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D40F8F8
          F8DA1D8AF8F8F84A1C1D1D1D1D1D1D1D1D1D8AF8F8F82C5EF8F8F8471D1D1D1D
          1D1D1D1D1D21F8F8F8BD1DE3F8F8EF1D1D1D1D1D1D1D1D1D1D40F8F8F85F27F8
          F8F88A1D1D1D1D1D1D1D1D1D1D4BF8F8F84B44F8F8F85F1D1D1D1D1D1D5FF8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8B84D4D4D4D4D6AF6CBB0B0C9FA6C4D4D4D4D4D4D
          73ECF8F8F8F8F821191919191919191919191919191919191919191919191919
          19191919191919191919191919191919191919191919191989F8F8F94828F8F8
          F8FA1919191919191919191948F8F8F84B39F9F8F87719191919191919191919
          5FF8F8F8E3E3F8F8F84B191919191919191919198AF8F8F8BAFAF8F8DA191919
          1919191919191928F8F8F8F5BAF8F8F8BA191919191919191919191DEFF8F8FA
          BBF8F8F85B1919191919191919191939F9F9F8E3EFF8F8F83919191919191919
          19191977F8F8F8BCF5F8F8EF1D19191919191919191919191919191919191919
          191919191939F8F8F8DA1D8AF8F8F84A1D1919191919191919198AF8F8F8DAEF
          F8F8F84419191919191919191920F8F8F8FABDF8F8F8EF191919191919191919
          1924F8F8F8EFBCF8F8F85B191919191919191919194BF8F8F8E3E3F8F8F85E1D
          19191919195FF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8964D4D4D4D4D81E0F6F6E1
          824D4D4D4D4D4D6CE1F8F8F8F8F8F82019191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          89F8F8F84828F8F8F8FA1919191919191919191948F8F8F9492BF8F8F8771919
          19191919191919195FFAF8F8F8F8F8F8EF281919191919191919191928E3F8F8
          F8F8F8FA441919191919191919191928F8F8F8F8F8F8F8F86019191919191919
          1919191948FAF8F8F8F8F8BC20191919191919191919191977F9F8F8F8F8F87E
          191919191919191919191924DAF9F8F8F8F8F848191919191919191919191919
          191919191919191919191919193DF8F8F8DA198AF8F8F84A1919191919191919
          19198AF8F8F8F8F8F8F8DA211919191919191919191989F8F8F8F8F8F8F8EF19
          191919191919191919194AF8F8F8F8F8F8BC21191919191919191919194AF8F8
          F8F8F8F8F8F53D1919191919195FF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F7964E
          4D4D4D4D4D4D4D4D4D4D4D4D4D4D71DDF8F8F8F8F8F8F82E1818181818181818
          1818181818181818181818181818181818181818181818181818181818181818
          181818181818181889F8F8F8482BF8F8F8FA181818181818181818193D5F5F5F
          3D2D5F5F5F4618181818181818181818445F5F5F445E885F2818181818181818
          18181818182E485F88774A2D181818181818181818181828F8F8F8894A7E7E46
          181818181818181818181818182D4A77885F461A181818181818181818181818
          182B607E7E5E3D181818181818181818181818182E465F7E775B2D1818181818
          1818181818181818181818181818181818181818182BF8F8F8DA188AF8F8F84A
          18181818181818181818485F5F5F435F88602118181818181818181818182E4A
          7E7746DAF8F8EF181818181818181818181818285B7E7E5F4419181818181818
          18181818183D5F5F5F46607E5F29181818181818185FF8F8F8F8F8F8F8F8F8F8
          F8F8F8F8A5333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333333333333333333368F8F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8C5714D4D4D4D4D4D4D4D4D4D4D4D81EEF8F8F8F8F8F8F8F82E
          1818181818181818181818181818181818181818181818181818181818181818
          1818181818181818181818181818181889F8F8F889BCF8F8F8BB181818181818
          1818181818181818181818181818181818181818181818181818181818181818
          181818181818181818181818181818181818181818181818181818181818182D
          F8F8F87E18181818181818181818181818181818181818181818181818181818
          1818181818181818181818181818181818181818181818181818181818181818
          181818181818181818181818181818181818181818181818181818181821F8F8
          F8EF40BCF8F8F843181818181818181818181818181818181818181818181818
          1818181818181818181818DAF8F8EF1818181818181818181818181818181818
          18181818181818181818181818181818181818181818181818181818185FF8F8
          F8F8F8F8F8F8F8F8F8F8F8F86631313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313161F9F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F5AD734D4D4D4D4D4D4D697CC9F8F8F8
          F8F8F8F8F8F8F82E171717171717171717171717171717171717171717171717
          17171717171717171717171717171717171717171717171789F8F8F8F8F8F8F8
          F85F171717171717171717171717171717171717171717171717171717171717
          1717171717171717171717171717171717171717171717171717171717171717
          171717171717172DF8F8F87E1717171717171717171717171717171717171717
          1717171717171717171717171717171717171717171717171717171717171717
          1717171717171717171717171717171717171717171717171717171717171717
          171717171717A4F8F8F8F8F8F8F8E32117171717171717171717171717171717
          17171717171717171717171717171717171717DAF8F8EF171717171717171717
          1717171717171717171717171717171717171717171717171717171717171717
          17171717175FF8F8F8F8F8F8F8F8F8F8F8F8F8F9663131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          3131313131313131313131313131313131313131313131313131313131313131
          31313131313131313131313131313131313131313131313131313131313161F9
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E0AF92838C
          95B7ECF8F8F8F8F8F8F8F8F8F8F8F82E15151515151515151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          89F8F8F8F8F8F8E35F1A15151515151515151515151515151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          1515151515151515151515151515152DF9F8F87E151515151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          15151515151515151515151515152189F8F8F8F8F8BC2B151515151515151515
          151515151515151515151515151515151515151515151515151515DAF8F8EF15
          1515151515151515151515151515151515151515151515151515151515151515
          151515151515151515151515155FF9F8F8F8F8F8F8F8F8F8F8F8F8F9F6FCDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
          DBDBDBDBDBFCF9F9F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F81B1313131313131313
          1313131313131313131313131313131313131313131313131313131313131313
          13131313131313132A303030302A211616131313131313131313131313131313
          1313131313131313131313131313131313131313131313131313131313131313
          13131313131313131313131313131313131313131313131A3030302813131313
          1313131313131313131313131313131313131313131313131313131313131313
          1313131313131313131313131313131313131313131313131313131313131313
          1313131313131313131313131313131313131313131313132D3E46432A161313
          1313131313131313131313131313131313131313131313131313131313131313
          1313132A30302B13131313131313131313131313131313131313131313131313
          1313131313131313131313131313131313131313135FF9F9F8F8F8F8F8F8F8F8
          F8F8F8F8F9F9F9F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9F8F8F8F8F8F8F8CA920092CAF8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F81B
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121211
          1111121212121212121212121212121212121212121212121212121212121212
          1212121212121212121212121212121212121212121212121212121212121212
          12121212121212121212121212121212121212121212121212121212125FF9F9
          F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8F8F8F8F8F8CA
          920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F81B111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          11111111115FF9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8
          F8F8F8F8F8F8F8CA920092CAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F81411111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111160F9F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8CA920092AECACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACA2A2121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          2121212121212121212121212121212121212121212121212121212121212121
          21212121212121212121212121212121212121211B5DD1CACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
          CACACACACACACACACACACACACACACACACACACACACACACAAE9200B99292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797979797
          9797979797979797979797979797979797979797979797979797979797949292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          9292929292929292929292929292929292929292929292929292929292929292
          B800}
        mmHeight = 41540
        mmLeft = 0
        mmTop = 0
        mmWidth = 283369
        BandType = 1
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6646
        mmLeft = 11642
        mmTop = 8202
        mmWidth = 83079
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 15875
        mmTop = 16933
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 15610
        mmTop = 22490
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Account'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 15610
        mmTop = 28575
        mmWidth = 18785
        BandType = 1
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'OrderNo_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 39688
        mmTop = 16404
        mmWidth = 55033
        BandType = 1
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Ordered_dat'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'ddd dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4092
        mmLeft = 39688
        mmTop = 22490
        mmWidth = 55033
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 13
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
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 101336
        mmTop = 10583
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 14
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
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 101336
        mmTop = 14552
        mmWidth = 15081
        BandType = 1
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderCode_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4092
        mmLeft = 118269
        mmTop = 10583
        mmWidth = 42069
        BandType = 1
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8202
        mmLeft = 118269
        mmTop = 14552
        mmWidth = 42069
        BandType = 1
      end
      object ppDBText68: TppDBText
        UserName = 'DBText401'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'AccountName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 39952
        mmTop = 28840
        mmWidth = 54504
        BandType = 1
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
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
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 101336
        mmTop = 26988
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        SaveOrder = 16
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
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 101336
        mmTop = 30956
        mmWidth = 15081
        BandType = 1
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Code_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4092
        mmLeft = 118004
        mmTop = 26988
        mmWidth = 42069
        BandType = 1
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Name_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8996
        mmLeft = 118004
        mmTop = 30956
        mmWidth = 42069
        BandType = 1
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 233363
        mmTop = 11906
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Received By:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 166500
        mmTop = 12700
        mmWidth = 17500
        BandType = 1
      end
      object ppLine5: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 3969
        mmLeft = 185000
        mmTop = 20638
        mmWidth = 40000
        BandType = 1
      end
      object ppLabel26: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 166500
        mmTop = 27517
        mmWidth = 17500
        BandType = 1
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 3969
        mmLeft = 185000
        mmTop = 32279
        mmWidth = 40000
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4092
        mmLeft = 246857
        mmTop = 11906
        mmWidth = 28152
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No.'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 13229
        mmTop = 2117
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 57944
        mmTop = 2117
        mmWidth = 156369
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ordered'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 214578
        mmTop = 2117
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Outstanding'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 4498
        mmLeft = 235480
        mmTop = 2117
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Received'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 256117
        mmTop = 2117
        mmWidth = 26000
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 34660
        mmTop = 2117
        mmWidth = 23019
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductCode_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 2117
        mmTop = 0
        mmWidth = 10000
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 57944
        mmTop = 0
        mmWidth = 155840
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyOrdered_int'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 215371
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 3800
        mmLeft = 256382
        mmTop = 0
        mmWidth = 26194
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.5
        mmHeight = 794
        mmLeft = 2000
        mmTop = 3704
        mmWidth = 280000
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 34660
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppVariable3: TppVariable
        UserName = 'Variable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 236273
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable101'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageCount
        Color = 16383986
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 274638
        mmTop = 1852
        mmWidth = 6615
        BandType = 8
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 260880
        mmTop = 1588
        mmWidth = 7144
        BandType = 8
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 265
        mmWidth = 282311
        BandType = 8
      end
      object ppLabel34: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1852
        mmTop = 1852
        mmWidth = 6773
        BandType = 8
      end
      object ppDBText30: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Color = cl3DDkShadow
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 9525
        mmTop = 1852
        mmWidth = 42069
        BandType = 8
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4191
        mmLeft = 52388
        mmTop = 1852
        mmWidth = 3387
        BandType = 8
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Color = cl3DLight
        DataField = 'Name_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 56886
        mmTop = 1852
        mmWidth = 38894
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 96573
        mmTop = 1852
        mmWidth = 16129
        BandType = 8
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 4200
        mmLeft = 113771
        mmTop = 1852
        mmWidth = 14023
        BandType = 8
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'OrderNo_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4191
        mmLeft = 129382
        mmTop = 1852
        mmWidth = 41540
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 7
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
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 259821
        mmTop = 1588
        mmWidth = 22225
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:___________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4200
        mmLeft = 220663
        mmTop = 1852
        mmWidth = 38100
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Authoriser sign:___________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4200
        mmLeft = 172773
        mmTop = 1852
        mmWidth = 47361
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Save = True
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65334F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365068E70726F636564757265205661726961
        626C65334F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A2056616C7565203A3D204442506970656C696E65325B
        275174794F7264657265645F696E74275D2D20204442506970656C696E65325B
        27517479526563656976656443756D5F696E74275D0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D6506095661726961626C6533094576656E744E61
        6D6506064F6E43616C63074576656E74494402210000}
    end
    object ppParameterList3: TppParameterList
    end
  end
  object tblAllOrders3: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT dbo.TblOrder.OrderNo_ID, dbo.TblOrder' +
        '.OrderNo_str, '
      
        '                      dbo.TblOrder.Ordered_dat, dbo.TblSupplier.' +
        'Name_str + N'#39' '#39' + dbo.TblOrder.OrderNo_str + N'#39#39' AS Description'
      'FROM         '
      
        '                      dbo.TblOrder INNER JOIN TblSupplier ON dbo' +
        '.TblOrder.Supplier_ID = dbo.TblSupplier.Supplier_ID    '
      
        'GROUP BY dbo.TblOrder.OrderNo_ID, dbo.TblOrder.OrderNo_str, dbo.' +
        'TblOrder.Order_dat, dbo.TblOrder.Ordered_dat, '
      
        '                       dbo.TblSupplier.Name_str + N'#39' '#39' + dbo.Tbl' +
        'Order.OrderNo_str + N'#39#39
      'ORDER BY dbo.TblOrder.OrderNo_str DESC'
      '')
    Left = 744
    Top = 331
    object tblAllOrders3OrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object tblAllOrders3OrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object tblAllOrders3Ordered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object tblAllOrders3Description: TWideStringField
      FieldName = 'Description'
      Size = 126
    end
  end
  object tblAllOrders: TADOTable
    Connection = ADOReceiptsConnection
    TableName = 'TblOrder'
    Left = 752
    Top = 393
  end
  object sp_UpdateCompleteStatus: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    Parameters = <>
    SQL.Strings = (
      'UPDATE tblOrderItems'
      'SET tblOrderItems.Completed_bol = tblReceiptItems.Completed_bol'
      'FROM tblReceiptItems'
      'WHERE tblOrderItems.OrderNo_ID = tblReceiptItems.OrderNo_ID'
      
        'AND tblOrderItems.Productcode_ID = tblReceiptItems.Productcode_I' +
        'D ')
    Left = 720
    Top = 601
  end
  object tblProductBatch: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ProductCode_ID, QtyOnHand_int, Bin_Str, BatchNumber_str, ' +
        'Expiry_dat, Price_mon, ShippingPack_int, LastUpdate_dat'
      'FROM TblProductBatch'
      'ORDER BY ProductCode_ID, BatchNumber_str, Expiry_dat, Bin_str')
    Left = 544
    Top = 748
  end
  object tblBinLocations: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM tblBin'
      'ORDER BY Code_str')
    Left = 696
    Top = 748
  end
  object qryTotalQtyonHand: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
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
      
        'SELECT (ISNULL(view_ProductQtyOnHand.TotalQtyOnHand_int, 0)) AS ' +
        'QtyOnHand'
      'FROM view_ProductQtyOnHand'
      'WHERE ProductCode_ID =:ProductCodeID')
    Left = 752
    Top = 481
  end
  object qryCurrentPrice: TADOQuery
    Tag = 1
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Cost_mon'
      'FROM tblProductPackSize'
      'WHERE ProductCode_ID =:ProductCodeID')
    Left = 752
    Top = 537
  end
  object qrySqlStatements: TADOTable
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    TableName = 'tblReport_Queries'
    Left = 744
    Top = 283
  end
  object stp_CustomReport: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <>
    SQL.Strings = (
      'Select 1')
    Left = 744
    Top = 227
  end
  object dsstp_CustomReport: TDataSource
    DataSet = stp_CustomReport
    Left = 848
    Top = 227
  end
  object qryOtherPackSizes: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'GenericNameStr'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'StrengthStr'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT ProductCode_ID, Description_str, ECN_str, ICN_str, NSN_st' +
        'r'
      'FROM tblProductPackSize'
      'WHERE (tblProductPackSize.GenericName_str =:GenericNameStr)'
      'AND (tblProductPackSize.Strength_str=:StrengthStr)'
      'AND (tblProductPackSize.ProductCode_ID<>:ProductCodeID)'
      'AND (InstitutionEDL_bol=1)')
    Left = 816
    Top = 660
  end
  object dsqryOtherPackSizes: TDataSource
    DataSet = qryOtherPackSizes
    Left = 920
    Top = 660
  end
  object qryProductDetails: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT ProductCode_ID, GenericName_str, Strength_str'
      'FROM tblProductPackSize'
      'WHERE (tblProductPackSize.ProductCode_ID=:ProductCodeID)')
    Left = 816
    Top = 732
  end
  object ActionList1: TActionList
    Left = 864
    Top = 107
    object atnAddDifferentPackSize: TAction
      Caption = 'Add Different Pack Size'
      OnExecute = atnAddDifferentPackSizeExecute
    end
  end
  object stp_AddProduct: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_ReceiptItems_AddProduct'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@OrderID'
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
    Left = 872
    Top = 569
  end
  object stpAuditAPPEND: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    ProcedureName = 'strdprc_AuditAPPEND;1'
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
        Size = 25
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
    Left = 752
    Top = 83
  end
  object tblSystemUsers: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') + N'#39'(' +
        ' '#39' + ISNULL(tblSystem_User.position_str, N'#39#39') '
      '                      + N'#39' )'#39' AS Description'
      
        'FROM tblSystem_User LEFT OUTER JOIN tblSystem_User_Access ON tbl' +
        'System_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 8) AND (tblSystem_U' +
        'ser_Access.accessLevel_int >1) AND (tblSystem_User.Active_bol = ' +
        '1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 328
    Top = 3
    object tblSystemUsersUserID: TGuidField
      FieldName = 'UserID'
      FixedChar = True
      Size = 38
    end
    object tblSystemUsersDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 66
    end
  end
  object qryLockeReceiptView: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    CommandTimeout = 120
    ProcedureName = 'strdprc_StockControlReceipt'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 880
    Top = 322
    object AutoIncField1: TAutoIncField
      FieldName = 'ReceiptNo_ID'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'SystemStore_Str'
      Size = 125
    end
    object IntegerField1: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object StringField2: TStringField
      FieldName = 'Supplier_str'
      Size = 125
    end
    object IntegerField3: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object StringField3: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ReceiptDate_dat'
    end
    object StringField4: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object StringField5: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object BCDField1: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'Invoiced_dat'
    end
    object StringField6: TStringField
      FieldName = 'InvoiceNo_str'
      Size = 25
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'Received_dat'
    end
    object StringField7: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object BCDField2: TBCDField
      FieldName = 'TotalPaid_mon'
      Precision = 19
    end
    object IntegerField4: TIntegerField
      FieldName = 'Boxes_int'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'Checked_dat'
    end
    object StringField8: TStringField
      FieldName = 'CheckedBy_str'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'Activated_bol'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object StringField9: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object BCDField3: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object BCDField4: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object BCDField5: TBCDField
      FieldName = 'OtherCharges_mon'
      Precision = 19
    end
    object MemoField1: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object StringField10: TStringField
      FieldName = 'SupplierCode_str'
      Size = 12
    end
    object IntegerField6: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object StringField11: TStringField
      FieldName = 'Type_str'
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'OrderRef_Str'
      Size = 100
    end
    object StringField13: TStringField
      FieldName = 'ChargeCode_str'
      Size = 12
    end
    object BooleanField2: TBooleanField
      FieldName = 'IncludeVat_bol'
    end
    object StringField14: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object IntegerField7: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object BooleanField3: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object IntegerField8: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object BooleanField4: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
  end
  object qryLockedReceiptItemsView: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    CommandTimeout = 120
    ProcedureName = 'strdprc_StockControlReceiptItems'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 880
    Top = 377
    object AutoIncField2: TAutoIncField
      FieldName = 'ReceiptItem_ID'
      ReadOnly = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'ReceiptNo_ID'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object IntegerField11: TIntegerField
      FieldName = 'OrderitemsNo_ID'
    end
    object IntegerField12: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object IntegerField13: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object IntegerField14: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object IntegerField15: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object IntegerField16: TIntegerField
      FieldName = 'QtyToFollow_int'
    end
    object BCDField6: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object BCDField7: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object StringField15: TStringField
      FieldName = 'Bin_str'
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object IntegerField17: TIntegerField
      FieldName = 'Order_QtyOrdered'
    end
    object IntegerField18: TIntegerField
      FieldName = 'Order_QtyReceived'
    end
    object BCDField8: TBCDField
      FieldName = 'Order_PackCost'
      Precision = 19
    end
    object IntegerField19: TIntegerField
      FieldName = 'Order_QtyOutstanding'
    end
    object StringField17: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object StringField18: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 25
    end
    object StringField19: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object StringField20: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object StringField21: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object StringField22: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object StringField23: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object StringField24: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object IntegerField20: TIntegerField
      FieldName = 'DuesOut_int'
    end
    object BooleanField5: TBooleanField
      FieldName = 'Completed_bol'
    end
    object StringField25: TStringField
      FieldName = 'ChargeCode_str'
      Size = 13
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object StringField26: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object IntegerField21: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object StringField27: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object IntegerField22: TIntegerField
      FieldName = 'BatchQty_int'
    end
    object StringField28: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object IntegerField23: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object BCDField9: TBCDField
      FieldName = 'Calc_PackCost_mon'
      Precision = 19
    end
  end
  object dsLockeReceiptView: TDataSource
    DataSet = qryLockeReceiptView
    Left = 1008
    Top = 321
  end
  object dsLockedReceiptItemsView: TDataSource
    DataSet = qryLockedReceiptItemsView
    Left = 1024
    Top = 377
  end
  object qryIsReceiptLocked: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ReceiptNo_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOUT_bol'
      'FROM tblReceipt'
      'WHERE ReceiptNO_ID=:ReceiptNo_ID')
    Left = 968
    Top = 75
  end
  object tblSystemWharehouse: TADOQuery
    Tag = -1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM strdprc_SystemWharehouse'
      'ORDER BY Account_str')
    Left = 48
    Top = 267
    object tblSystemWharehouseSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object tblSystemWharehouseSystemAccount_ID: TAutoIncField
      FieldName = 'SystemAccount_ID'
      ReadOnly = True
    end
    object tblSystemWharehouseDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object tblSystemWharehouseDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object tblSystemWharehouseAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object tblSystemWharehouseAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object tblSystemWharehouseDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object tblStockControlReceiptItemsAvailableOrders: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP (100) PERCENT dbo.TblSupplier.Code_str, dbo.TblSu' +
        'pplier.Name_str, dbo.TblOrder.OrderNo_ID, dbo.TblOrder.OrderNo_s' +
        'tr, dbo.TblOrder.ItemsNo_int, '
      
        '                      dbo.TblOrder.Activated_bol, dbo.TblOrder.O' +
        'rder_dat, dbo.TblOrder.Ordered_dat, dbo.TblSupplier.Name_str + N' +
        #39' '#39' + dbo.TblOrder.OrderNo_str + N'#39#39' AS Description, '
      
        '                      dbo.TblOrder.VoucherNo_str, dbo.TblOrder.S' +
        'ystemStore_ID, dbo.TblOrder.SystemStore_str, dbo.TblOrder.Suppli' +
        'er_ID, dbo.TblOrder.Demander_ID, '
      '                      dbo.TblOrder.DemanderName_str'
      'FROM         dbo.TblOrderItems INNER JOIN'
      
        '                      dbo.TblOrder ON dbo.TblOrderItems.OrderNo_' +
        'ID = dbo.TblOrder.OrderNo_ID INNER JOIN'
      
        '                      dbo.TblSupplier ON dbo.TblOrder.Supplier_I' +
        'D = dbo.TblSupplier.Supplier_ID'
      
        'WHERE     (dbo.TblOrderItems.QtyOrdered_int > 0) AND (dbo.TblOrd' +
        'erItems.Completed_bol = 0) OR'
      '                      (dbo.TblOrderItems.Completed_bol IS NULL)'
      
        'GROUP BY dbo.TblSupplier.Code_str, dbo.TblSupplier.Name_str, dbo' +
        '.TblOrder.OrderNo_ID, dbo.TblOrder.OrderNo_str, dbo.TblOrder.Ite' +
        'msNo_int, dbo.TblOrder.Activated_bol, '
      
        '                      dbo.TblOrder.Order_dat, dbo.TblOrder.Order' +
        'ed_dat, dbo.TblSupplier.Name_str + N'#39' '#39' + dbo.TblOrder.OrderNo_s' +
        'tr + N'#39#39', dbo.TblOrder.VoucherNo_str, '
      
        '                      dbo.TblOrder.SystemStore_ID, dbo.TblOrder.' +
        'SystemStore_str, dbo.TblOrder.Supplier_ID, dbo.TblOrder.Demander' +
        '_ID, dbo.TblOrder.DemanderName_str'
      'HAVING      (dbo.TblOrder.Activated_bol = 1)'
      'ORDER BY dbo.TblOrder.OrderNo_str DESC, Description')
    Left = 696
    Top = 3
    object tblStockControlReceiptItemsAvailableOrdersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 10
    end
    object tblStockControlReceiptItemsAvailableOrdersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object tblStockControlReceiptItemsAvailableOrdersOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object tblStockControlReceiptItemsAvailableOrdersOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object tblStockControlReceiptItemsAvailableOrdersItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblStockControlReceiptItemsAvailableOrdersActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object tblStockControlReceiptItemsAvailableOrdersOrder_dat: TDateTimeField
      FieldName = 'Order_dat'
    end
    object tblStockControlReceiptItemsAvailableOrdersOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object tblStockControlReceiptItemsAvailableOrdersDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 127
    end
    object tblStockControlReceiptItemsAvailableOrdersVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object tblStockControlReceiptItemsAvailableOrdersSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object tblStockControlReceiptItemsAvailableOrdersSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
  end
  object dstblStockControlReceiptItemsAvailableOrders: TDataSource
    DataSet = tblStockControlReceiptItemsAvailableOrders
    Left = 552
    Top = 22
  end
  object tblStockControlReceiptItemsAvailableOrdersDecriptionLookup: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP (100) PERCENT dbo.TblSupplier.Code_str, dbo.TblSu' +
        'pplier.Name_str, dbo.TblOrder.OrderNo_ID, dbo.TblOrder.OrderNo_s' +
        'tr, dbo.TblOrder.ItemsNo_int, '
      
        '                      dbo.TblOrder.Activated_bol, dbo.TblOrder.O' +
        'rder_dat, dbo.TblOrder.Ordered_dat, dbo.TblSupplier.Name_str + N' +
        #39' '#39' + dbo.TblOrder.OrderNo_str + N'#39#39' AS Description, '
      
        '                      dbo.TblOrder.VoucherNo_str, dbo.TblOrder.S' +
        'ystemStore_ID, dbo.TblOrder.SystemStore_str, dbo.TblOrder.Suppli' +
        'er_ID, dbo.TblOrder.Demander_ID, '
      '                      dbo.TblOrder.DemanderName_str'
      'FROM         dbo.TblOrderItems INNER JOIN'
      
        '                      dbo.TblOrder ON dbo.TblOrderItems.OrderNo_' +
        'ID = dbo.TblOrder.OrderNo_ID INNER JOIN'
      
        '                      dbo.TblSupplier ON dbo.TblOrder.Supplier_I' +
        'D = dbo.TblSupplier.Supplier_ID'
      
        'WHERE     (dbo.TblOrderItems.QtyOrdered_int > 0) AND (dbo.TblOrd' +
        'erItems.Completed_bol = 0) OR'
      '                      (dbo.TblOrderItems.Completed_bol IS NULL)'
      
        'GROUP BY dbo.TblSupplier.Code_str, dbo.TblSupplier.Name_str, dbo' +
        '.TblOrder.OrderNo_ID, dbo.TblOrder.OrderNo_str, dbo.TblOrder.Ite' +
        'msNo_int, dbo.TblOrder.Activated_bol, '
      
        '                      dbo.TblOrder.Order_dat, dbo.TblOrder.Order' +
        'ed_dat, dbo.TblSupplier.Name_str + N'#39' '#39' + dbo.TblOrder.OrderNo_s' +
        'tr + N'#39#39', dbo.TblOrder.VoucherNo_str, '
      
        '                      dbo.TblOrder.SystemStore_ID, dbo.TblOrder.' +
        'SystemStore_str, dbo.TblOrder.Supplier_ID, dbo.TblOrder.Demander' +
        '_ID, dbo.TblOrder.DemanderName_str'
      'HAVING      (dbo.TblOrder.Activated_bol = 1)'
      
        'ORDER BY  dbo.TblSupplier.Name_str ,   dbo.TblOrder.OrderNo_str ' +
        'DESC')
    Left = 1032
    Top = 11
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 50
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrder_dat: TDateTimeField
      FieldName = 'Order_dat'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 127
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
  end
  object dstblStockControlReceiptItemsAvailableOrdersDecriptionLookup: TDataSource
    DataSet = tblStockControlReceiptItemsAvailableOrdersDecriptionLookup
    Left = 840
    Top = 38
  end
  object tblReceiptListUniqueSuppliersNames: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT TOP 100 PERCENT Supplier_ID, Code_str, Name_str'
      'FROM         dbo.TblSupplier'
      'WHERE     (Active_bol = 1)'
      'ORDER BY  Name_str')
    Left = 44
    Top = 164
  end
  object dstblReceiptListUniqueSuppliersNames: TDataSource
    DataSet = tblReceiptListUniqueSuppliersNames
    Left = 120
    Top = 212
  end
  object dstblSystemWharehouseNames: TDataSource
    DataSet = tblSystemWharehouseNames
    Left = 976
    Top = 164
  end
  object tblSystemWharehouseNames: TADOQuery
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM strdprc_SystemWharehouse'
      'ORDER BY AccountName_str')
    Left = 1020
    Top = 212
    object tblSystemWharehouseNamesSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object tblSystemWharehouseNamesSystemAccount_ID: TIntegerField
      FieldName = 'SystemAccount_ID'
    end
    object tblSystemWharehouseNamesDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object tblSystemWharehouseNamesDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object tblSystemWharehouseNamesAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object tblSystemWharehouseNamesAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object tblSystemWharehouseNamesDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object qryItemInAudit: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'productCodeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblAudit'
      
        'WHERE ProductCode_ID=:productCodeID AND Item_ID=:ItemID AND Type' +
        '_str ='#39'R'#39)
    Left = 1032
    Top = 464
  end
  object qryTotalBatchesReceived: TADOQuery
    Connection = ADOReceiptsConnection
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReceiptNo_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ISNULL(SUM(QtyReceived_int), 0) AS TotalReceived'
      'FROM  TblReceiptItems'
      'WHERE ProductCode_ID =:ProductCode_ID'
      ' AND ReceiptNo_ID =:ReceiptNo_ID')
    Left = 1040
    Top = 552
  end
  object qryAllBatchesReceiptItems: TADOStoredProc
    Tag = 1
    Connection = ADOReceiptsConnection
    CursorType = ctStatic
    CommandTimeout = 120
    ProcedureName = 'strdprc_StockControlReceiptItems'
    Parameters = <
      item
        Name = '@ReceiptID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 1040
    Top = 617
    object AutoIncField3: TAutoIncField
      FieldName = 'ReceiptItem_ID'
      ReadOnly = True
    end
    object IntegerField24: TIntegerField
      FieldName = 'ReceiptNo_ID'
    end
    object IntegerField25: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object IntegerField26: TIntegerField
      FieldName = 'OrderitemsNo_ID'
    end
    object IntegerField27: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object IntegerField28: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object IntegerField29: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object IntegerField30: TIntegerField
      FieldName = 'QtyReceived_int'
    end
    object IntegerField31: TIntegerField
      FieldName = 'QtyToFollow_int'
    end
    object BCDField10: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object BCDField11: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object StringField29: TStringField
      FieldName = 'Bin_str'
      Size = 15
    end
    object StringField30: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object IntegerField32: TIntegerField
      FieldName = 'Order_QtyOrdered'
    end
    object IntegerField33: TIntegerField
      FieldName = 'Order_QtyReceived'
    end
    object BCDField12: TBCDField
      FieldName = 'Order_PackCost'
      Precision = 19
    end
    object IntegerField34: TIntegerField
      FieldName = 'Order_QtyOutstanding'
    end
    object StringField31: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object StringField32: TStringField
      FieldName = 'ReceiptNo_str'
      Size = 25
    end
    object StringField33: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object StringField34: TStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object StringField35: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object StringField36: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object StringField37: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object StringField38: TStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object IntegerField35: TIntegerField
      FieldName = 'DuesOut_int'
    end
    object BooleanField6: TBooleanField
      FieldName = 'Completed_bol'
    end
    object StringField39: TStringField
      FieldName = 'ChargeCode_str'
      Size = 13
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object StringField40: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object IntegerField36: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object StringField41: TStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object IntegerField37: TIntegerField
      FieldName = 'BatchQty_int'
    end
    object StringField42: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object IntegerField38: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object BCDField13: TBCDField
      FieldName = 'Calc_PackCost_mon'
      Precision = 19
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'in'
    Filter = 'in|in'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 1144
    Top = 728
  end
end

object DemanderStockVarianceForm: TDemanderStockVarianceForm
  Left = 478
  Top = 299
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Demander Stock Transfer Form'
  ClientHeight = 228
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzDBProduct_str: TRzDBLabel
    Left = 86
    Top = 57
    Width = 82
    Height = 13
    AutoSize = True
    DataField = 'Description_str'
    DataSource = DemanderDM.dsadoStockList
  end
  object RzLabel1: TRzLabel
    Left = 63
    Top = 105
    Width = 22
    Height = 13
    Caption = 'TO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzLabel2: TRzLabel
    Left = 487
    Top = 109
    Width = 80
    Height = 13
    Caption = 'Amount (SKU)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzLabel3: TRzLabel
    Left = 19
    Top = 129
    Width = 64
    Height = 13
    Caption = 'Reference:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDBLabel2: TRzDBLabel
    Left = 86
    Top = 81
    Width = 60
    Height = 13
    AutoSize = True
    DataField = 'QtyOnHand_int'
    DataSource = DemanderDM.dsadoStockList
  end
  object RzLabel4: TRzLabel
    Left = 38
    Top = 57
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Product:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzLabel5: TRzLabel
    Left = 30
    Top = 81
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qty Pack:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDBLabel4: TRzDBLabel
    Left = 533
    Top = 81
    Width = 60
    Height = 13
    AutoSize = True
    DataField = 'PackSizeValue_dbl'
    DataSource = DemanderDM.dsadoStockList
  end
  object RzLabel7: TRzLabel
    Left = 456
    Top = 81
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'SKU in Pack:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDBLabel1: TRzDBLabel
    Left = 219
    Top = 41
    Width = 60
    Height = 13
    AutoSize = True
    Visible = False
    DataField = 'ICN_str'
    DataSource = DemanderDM.dsadoStockList
  end
  object RzDBProductID: TRzDBLabel
    Left = 299
    Top = 41
    Width = 76
    Height = 13
    AutoSize = True
    Visible = False
    DataField = 'ProductCode_ID'
    DataSource = DemanderDM.dsadoStockList
  end
  object rzlblPackQty: TRzLabel
    Left = 260
    Top = 109
    Width = 80
    Height = 13
    Caption = 'Amount Pack:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 457
    Top = 108
    Width = 23
    Height = 16
    Caption = 'OR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDBLabel3: TRzDBLabel
    Left = 278
    Top = 81
    Width = 60
    Height = 13
    AutoSize = True
    DataField = 'QtyOnHandUnits_dbl'
    DataSource = DemanderDM.dsadoStockList
  end
  object RzLabel6: TRzLabel
    Left = 225
    Top = 81
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qty SKU:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblToDemnder: TLabel
    Left = 456
    Top = 49
    Width = 66
    Height = 13
    Caption = 'lblToDemnder'
    Visible = False
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 192
    Width = 655
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    EnableOk = False
    ShowDivider = True
    TabOrder = 3
  end
  object rzgType: TRzRadioGroup
    Left = 5
    Top = 5
    Width = 180
    Height = 40
    Caption = 'Type'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemFont.Charset = ANSI_CHARSET
    ItemFont.Color = clWindowText
    ItemFont.Height = -11
    ItemFont.Name = 'MS Sans Serif'
    ItemFont.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Transfer - To Demander')
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = rzgTypeClick
  end
  object rzlDemanders: TRzDBLookupComboBox
    Left = 88
    Top = 105
    Width = 169
    Height = 21
    Ctl3D = False
    KeyField = 'DemanderUnique_ID'
    ListField = 'Name_str'
    ListSource = DemanderDM.dsadoDemanderList
    ParentCtl3D = False
    TabOrder = 0
    OnCloseUp = rzlDemandersCloseUp
    FrameController = RzFrameController1
  end
  object rzeReason: TRzEdit
    Left = 88
    Top = 129
    Width = 537
    Height = 21
    FrameController = RzFrameController1
    TabOrder = 2
  end
  object rznSKU: TRzNumericEdit
    Left = 577
    Top = 105
    Width = 46
    Height = 21
    Text = '0'
    FrameController = RzFrameController1
    TabOrder = 4
    OnEnter = rznSKUEnter
    OnExit = rznSKUExit
    IntegersOnly = False
    Max = 100000
    Min = -1000000
    DisplayFormat = '0'
  end
  object chkPrint: TCheckBox
    Left = 8
    Top = 161
    Width = 142
    Height = 17
    Caption = 'Print Transaction'
    TabOrder = 5
  end
  object rznPackQty: TRzNumericEdit
    Left = 387
    Top = 105
    Width = 55
    Height = 21
    Text = '0'
    FrameController = RzFrameController1
    TabOrder = 1
    OnExit = rznPackQtyExit
    IntegersOnly = False
    Max = 100000
    Min = -10000
    DisplayFormat = '0'
  end
  object RzFrameController1: TRzFrameController
    FrameVisible = True
    Left = 392
    Top = 49
  end
  object ppReport1: TppReport
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 192
    Top = 153
    Version = '11.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44715
      mmPrintPosition = 0
      object pplblDemander: TppLabel
        UserName = 'lblDemander'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 7408
        mmWidth = 8467
        BandType = 0
      end
      object pplblICN: TppLabel
        UserName = 'lblICN'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 23813
        mmWidth = 5821
        BandType = 0
      end
      object pplblType: TppLabel
        UserName = 'lblType'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblType'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 794
        mmWidth = 171980
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
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
        mmLeft = 179388
        mmTop = 1058
        mmWidth = 17463
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 794
        mmLeft = 2646
        mmTop = 22754
        mmWidth = 199496
        BandType = 0
      end
      object pplblECN: TppLabel
        UserName = 'lblECN'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 20638
        mmTop = 23813
        mmWidth = 5842
        BandType = 0
      end
      object pplblProductDescrip: TppLabel
        UserName = 'lblProductDescrip'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42598
        mmTop = 23813
        mmWidth = 5842
        BandType = 0
      end
      object ppQtyMoved: TppLabel
        UserName = 'QtyMoved'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 28575
        mmWidth = 5821
        BandType = 0
      end
      object pplblReason: TppLabel
        UserName = 'lblReason'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 28575
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
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
        mmLeft = 2381
        mmTop = 18785
        mmWidth = 6054
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        mmLeft = 20638
        mmTop = 18785
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42598
        mmTop = 18785
        mmWidth = 17568
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SKU:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 128588
        mmTop = 28575
        mmWidth = 8170
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 28575
        mmWidth = 17230
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 34396
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SKU Cost:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 152400
        mmTop = 28575
        mmWidth = 16383
        BandType = 0
      end
      object pplblUntCost: TppLabel
        UserName = 'lblUntCost'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblUntCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185473
        mmTop = 28575
        mmWidth = 16140
        BandType = 0
      end
      object pplblTotalCost: TppLabel
        UserName = 'lblUntCost1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblUntCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 185442
        mmTop = 34396
        mmWidth = 16171
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 794
        mmLeft = 2646
        mmTop = 33602
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unit:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 193940
        mmTop = 18785
        mmWidth = 7144
        BandType = 0
      end
      object pplblProductUnit: TppLabel
        UserName = 'lblProductUnit'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N/A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 172244
        mmTop = 23813
        mmWidth = 28840
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
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
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 180446
        mmTop = 794
        mmWidth = 17949
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryProductDetails: TADOQuery
    Connection = DemanderDM.ADODemanderConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'item_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT (Cost_mon/PackSizeValue_dbl) As Cost, PackSizeUnit_str, I' +
        'CN_str, ECN_str, PackSizeValue_dbl'
      'FROM tblProductPackSize '
      'WHERE ProductCode_ID =:item_id')
    Left = 224
    Top = 153
  end
  object qryGeneric_1: TADOQuery
    Connection = DemanderDM.ADODemanderConnection
    CursorType = ctStatic
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
      'SELECT GenericName_str, PackSizeValue_dbl, ShippingPack_int'
      'FROM tblProductPackSize'
      'WHERE ProductCode_ID=:ProductCodeID')
    Left = 584
    Top = 8
  end
end

object ProductUpdateBarcodesFrm: TProductUpdateBarcodesFrm
  Left = 383
  Top = 212
  Width = 1264
  Height = 548
  Caption = 'Product Update Barcodes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object dbgItems: TdxDBGrid
    Left = 0
    Top = 0
    Width = 1248
    Height = 441
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'ProductCode_ID'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    ArrowsColor = clNavy
    BandColor = clBackground
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsOrderProducts
    Filter.DropDownCount = 16
    Filter.Criteria = {00000000}
    GridLineColor = clInactiveCaptionText
    GroupPanelColor = 16311512
    GroupPanelFontColor = clActiveCaption
    GroupNodeColor = 16311512
    GroupNodeTextColor = clActiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -16
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    IndentDesc = 10
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Receipt\ProductUpdateBarcodes'
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
    object dbgItemsNSN_str: TdxDBGridColumn
      Caption = 'NSN'
      DisableEditor = True
      TabStop = False
      Width = 109
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NSN_str'
    end
    object dbgItemsICN_str: TdxDBGridColumn
      Caption = 'ICN'
      DisableEditor = True
      TabStop = False
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ICN_str'
    end
    object dbgItemsECN_str: TdxDBGridColumn
      Caption = 'ECN'
      DisableEditor = True
      TabStop = False
      Width = 140
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ECN_str'
    end
    object dbgItemsDescription_str: TdxDBGridMaskColumn
      Caption = 'Description'
      DisableEditor = True
      TabStop = False
      Width = 715
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
    end
    object dbgItemsQtyOrdered_int: TdxDBGridMaskColumn
      Caption = 'Qty Ordered'
      DisableEditor = True
      TabStop = False
      Width = 176
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QtyOrdered_int'
    end
  end
  object Edit1: TEdit
    Left = 16
    Top = 456
    Width = 257
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnUpdate: TButton
    Left = 312
    Top = 456
    Width = 185
    Height = 33
    Caption = 'Update'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnUpdateClick
  end
  object Button1: TButton
    Left = 1048
    Top = 456
    Width = 185
    Height = 33
    Caption = '&Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object stp_updateBarCode: TADOQuery
    Connection = ReceiptDm.ADOReceiptsConnection
    Parameters = <
      item
        Name = 'productPackSizeID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'productCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Barcode'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert INTO tblProductBarCodes (productPackSize_ID, ProductCode_' +
        'ID, Barcode_str)'
      'Values (:productPackSizeID, :productCodeID, :Barcode)')
    Left = 8
    Top = 8
  end
  object qryOrderProducts: TADOQuery
    Connection = ReceiptDm.ADOReceiptsConnection
    Parameters = <
      item
        Name = 'OrderNoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TblProductPackSize.productPackSize_ID, TblProductPackSize' +
        '.Description_str, TblProductPackSize.NSN_str, TblProductPackSize' +
        '.ICN_str, TblProductPackSize.ECN_str, TblProductPackSize.Product' +
        'Code_str, TblProductPackSize.Bin_str, TblOrderItems.QtyOrdered_i' +
        'nt, '
      
        'TblProductPackSize.ShippingPack_int, tblProductpackSize.ProductC' +
        'ode_ID'
      
        'FROM TblOrderItems INNER JOIN TblProductPackSize ON TblOrderItem' +
        's.ProductCode_ID = TblProductPackSize.ProductCode_ID'
      
        'WHERE (TblOrderItems.Completed_bol = 0) AND (TblOrderItems.Order' +
        'No_ID=:OrderNoID)')
    Left = 40
    Top = 8
    object qryOrderProductsNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object qryOrderProductsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object qryOrderProductsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object qryOrderProductsProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryOrderProductsBin_str: TWideStringField
      FieldName = 'Bin_str'
      Size = 30
    end
    object qryOrderProductsQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object qryOrderProductsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object qryOrderProductsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryOrderProductsProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object qryOrderProductsproductPackSize_ID: TGuidField
      FieldName = 'productPackSize_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsOrderProducts: TDataSource
    DataSet = qryOrderProducts
    Left = 72
    Top = 8
  end
end

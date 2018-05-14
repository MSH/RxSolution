object UpdateProductBarcodeFrm: TUpdateProductBarcodeFrm
  Left = 428
  Top = 297
  Width = 1105
  Height = 553
  Caption = 'Product Barcodes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object dxDBReceipt_Itemss: TdxDBGrid
    Left = 0
    Top = 0
    Width = 1089
    Height = 329
    TabStop = False
    Bands = <
      item
      end>
    DefaultLayout = False
    KeyField = 'ReceiptItem_ID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    ArrowsColor = clNavy
    BandColor = clBackground
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    Filter.Active = True
    Filter.DropDownCount = 16
    Filter.Criteria = {00000000}
    GridLineColor = clInactiveCaptionText
    GroupPanelColor = 16311512
    GroupPanelFontColor = clActiveCaption
    GroupNodeColor = 16311512
    GroupNodeTextColor = clActiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clHighlight
    HeaderFont.Height = -16
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    IndentDesc = 10
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Receipt\NewBarCodes'
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
  end
  object qryBarcodes: TADOQuery
    Connection = ReceiptDm.ADOReceiptsConnection
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
      'SELECT * '
      'FROM tblProductBarcodes'
      'WHERE ProductCode_ID=:ProductCodeID')
    Left = 8
    Top = 8
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
end

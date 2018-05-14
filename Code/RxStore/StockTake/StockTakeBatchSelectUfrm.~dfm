object StockTakeBatchSelectfrm: TStockTakeBatchSelectfrm
  Left = 445
  Top = 360
  Width = 538
  Height = 304
  Caption = 'Batch Select'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Use: TButton
    Left = 352
    Top = 227
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 0
    OnClick = UseClick
  end
  object Cancel: TButton
    Left = 445
    Top = 227
    Width = 75
    Height = 25
    Caption = '&Cancel'
    TabOrder = 1
    OnClick = CancelClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 529
    Height = 217
    Align = alCustom
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 2
      Top = 15
      Width = 525
      Height = 200
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ReceiptItem_ID'
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = StockTakeDM.dsBatchProducts
      Filter.Criteria = {00000000}
      GroupPanelColor = 15779500
      GroupPanelFontColor = clHighlight
      HeaderColor = clInfoBk
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clHighlight
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      object dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn
        Caption = 'Batch Number'
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BatchNumber_str'
      end
      object dxDBGrid1Expiry_dat: TdxDBGridDateColumn
        Caption = 'Expiry'
        Sorted = csUp
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Expiry_dat'
      end
      object dxDBGrid1ProductCode_ID: TdxDBGridMaskColumn
        Visible = False
        Width = 1319
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductCode_ID'
      end
      object dxDBGrid1BatchQty_int: TdxDBGridColumn
        Caption = 'Qty'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BatchQty_int'
      end
      object dxDBGrid1PackCost: TdxDBGridCurrencyColumn
        Caption = 'Pack Cost'
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PackCost_mon'
        Nullable = False
      end
    end
  end
end

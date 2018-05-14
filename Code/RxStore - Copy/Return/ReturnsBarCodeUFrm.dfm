object ReturnsBarCodeFrm: TReturnsBarCodeFrm
  Left = 107
  Top = 39
  Width = 1459
  Height = 818
  Caption = 'ReturnsBarCodeFrm'
  Color = 16311512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBReturnBarcodeItems: TdxDBGrid
    Left = 0
    Top = 57
    Width = 1443
    Height = 648
    TabStop = False
    Bands = <
      item
      end>
    DefaultLayout = False
    KeyField = 'ReturnsItem_ID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
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
    DataSource = ReturnsDm.dsReturnsItems
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
    OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Returns\ReturnsBarcodesDetail'
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
    object dxDBReturnBarcodeItemsICN_str: TdxDBGridColumn
      Caption = 'ICN'
      DisableEditor = True
      Width = 151
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ICN_str'
    end
    object dxDBReturnBarcodeItemsECN_str: TdxDBGridMaskColumn
      Caption = 'ECN'
      DisableEditor = True
      Width = 132
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ECN_str'
    end
    object dxDBReturnBarcodeItemsNSN_str: TdxDBGridMaskColumn
      Caption = 'NSN'
      DisableEditor = True
      Visible = False
      Width = 1224
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NSN_str'
      StoredRowIndex = 1
    end
    object dxDBReturnBarcodeItemsDescription_str: TdxDBGridColumn
      Caption = 'Description'
      DisableEditor = True
      Width = 226
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
    end
    object dxDBReturnBarcodeItemsQtyIssued_int: TdxDBGridColumn
      Caption = 'Qty Issued'
      DisableEditor = True
      Sorted = csUp
      Width = 244
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QtyReturned_int'
    end
    object dxDBReturnBarcodeItemsExpiry_dat: TdxDBGridColumn
      Caption = 'Expiry date'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Expiry_dat'
    end
    object dxDBReturnBarcodeItemsBatchNumber_str: TdxDBGridColumn
      Caption = 'Batch Number'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BatchNumber_str'
    end
  end
  object editPanel: TPanel
    Left = 0
    Top = 705
    Width = 1443
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    Font.Charset = ANSI_CHARSET
    Font.Color = 16744576
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      1443
      74)
    object RzDBLabel1: TRzDBLabel
      Left = 165
      Top = 19
      Width = 601
      Height = 55
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      DataField = 'packDescription_Str'
      DataSource = MainDm.dsBarcode
    end
    object Label1: TLabel
      Left = 8
      Top = 1
      Width = 95
      Height = 23
      AutoSize = False
      Caption = 'Barcode'
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblBatch: TLabel
      Left = 890
      Top = 1
      Width = 251
      Height = 23
      Anchors = [akTop]
      AutoSize = False
      Caption = 'Batch Number / Expiry'
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 1240
      Top = 1
      Width = 103
      Height = 23
      Anchors = [akTop]
      AutoSize = False
      Caption = 'QTY'
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edtBarcode: TEdit
      Left = 5
      Top = 21
      Width = 158
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edtBarcodeExit
    end
    object edtQTY: TRzNumericEdit
      Left = 1239
      Top = 21
      Width = 83
      Height = 34
      Text = '0'
      Anchors = [akTop]
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = edtQTYExit
      DisplayFormat = '0'
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 893
      Top = 21
      Width = 265
      Height = 34
      Anchors = [akTop]
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ProductBatch_ID'
      ListField = 'BATCH'
      ListSource = dsBatches
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlReceiptHeaderBackground: TPanel
    Left = 0
    Top = 0
    Width = 1443
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    Font.Charset = ANSI_CHARSET
    Font.Color = 16744576
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object dbtOrderRef: TDBText
      Left = 104
      Top = 3
      Width = 1038
      Height = 28
      Color = 16311512
      DataField = 'ReturnsNo_str'
      DataSource = ReturnsDm.dsReturnsWorker
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 3
      Width = 95
      Height = 28
      AutoSize = False
      Caption = 'Req. Ref.'
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object qryProductBatch: TADOQuery
    Connection = ReturnsDm.AdoReturnsConn
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT  (batchnumber_str + '#39' - '#39' + CONVERT(VARCHAR(11), expiry_d' +
        'at, 106)) AS BATCH, *  '
      'FROM tblProductBatch'
      'WHERE ProductCode_ID=:ProductCode_ID'
      'ORDER BY Expiry_dat')
    Left = 168
    Top = 24
    object qryProductBatchBATCH: TWideStringField
      FieldName = 'BATCH'
      ReadOnly = True
      Size = 34
    end
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
  object dsBatches: TDataSource
    DataSet = qryProductBatch
    Left = 200
    Top = 24
  end
  object ActionList1: TActionList
    Left = 1008
    Top = 24
    object atnClose: TAction
      Caption = 'atnClose'
      ShortCut = 114
      OnExecute = atnCloseExecute
    end
  end
end

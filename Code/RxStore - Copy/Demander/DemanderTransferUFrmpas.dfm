object DemanderTransferFrm: TDemanderTransferFrm
  Left = 302
  Top = 102
  Width = 537
  Height = 356
  Caption = 'Demander Transfers'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 6
    Top = 288
    Width = 75
    Height = 25
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 86
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object dxDBAuthorisedItems: TdxDBGrid
    Left = 8
    Top = 48
    Width = 513
    Height = 225
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    HeaderColor = clInfoBk
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clHighlight
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dxDBAuthorisedItemsProductCode_str: TdxDBGridColumn
      Caption = 'Code'
      DisableEditor = True
      Sorted = csUp
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductCode_str'
    end
    object dxDBAuthorisedItemsDescription: TdxDBGridColumn
      DisableEditor = True
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
    end
    object dxDBAuthorisedItemsProcurementPeriod_int: TdxDBGridMaskColumn
      Caption = 'PP'
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProcurementPeriod_int'
    end
    object dxDBAuthorisedItemsLeadTime_int: TdxDBGridMaskColumn
      Caption = 'LT'
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LeadTime_int'
    end
    object dxDBAuthorisedItemsMaxStockSet_int: TdxDBGridMaskColumn
      Caption = 'Max'
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MaxStockSet_int'
      DisableFilter = True
    end
    object dxDBAuthorisedItemsAvgConsumption_dbl: TdxDBGridMaskColumn
      Caption = 'D. Avg'
      DisableEditor = True
      Width = 46
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AvgConsumption_dbl'
      DisableFilter = True
    end
    object dxDBAuthorisedItemsQtyOnHand_int: TdxDBGridMaskColumn
      Caption = 'Qty'
      DisableEditor = True
      Width = 25
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QtyOnHand_int'
    end
    object dxDBAuthorisedItemsQtyOnHandUnits_dbl: TdxDBGridMaskColumn
      Caption = 'SKU'
      DisableEditor = True
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QtyOnHandUnits_dbl'
    end
    object dxDBAuthorisedItemsColumn9: TdxDBGridColumn
      Caption = 'ICN'
      Width = 25
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ICN_str'
    end
    object dxDBAuthorisedItemsColumn10: TdxDBGridColumn
      Caption = 'ECN'
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ECN_str'
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 16
    Width = 145
    Height = 21
    KeyField = 'Demander_ID'
    ListField = 'Name_str'
    TabOrder = 3
  end
end

object CheckedOutTransactionsfrm: TCheckedOutTransactionsfrm
  Left = 27
  Top = 22
  Width = 1008
  Height = 769
  Caption = 'Checked Out Documents'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Requisitions: TGroupBox
    Left = 8
    Top = 16
    Width = 977
    Height = 321
    Caption = 'Requisitions'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbgRequisitions: TdxDBGrid
      Left = 2
      Top = 20
      Width = 973
      Height = 299
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'Requisition_ID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      DataSource = dsRequisitions
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
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      IndentDesc = 10
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      RegistryPath = '\Software\RxSolution\1.2\Grids\Requisitions\Main'
      RowFooterColor = clHighlight
      RowFooterTextColor = clWindow
      object dbgRequisitionsRequisition_str: TdxDBGridColumn
        Caption = 'Requisition No.'
        DisableEditor = True
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Requisition_str'
        SummaryFooterType = cstCount
        SummaryFooterFormat = 'Records: #'
      end
      object dbgRequisitionsRequisition_dat: TdxDBGridDateColumn
        Caption = 'Requested'
        DisableEditor = True
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Requisition_dat'
      end
      object dbgRequisitionsDemander_Str: TdxDBGridColumn
        Caption = 'Demander'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Demander_Str'
      end
      object dbgRequisitionsSystemStore_str: TdxDBGridColumn
        Caption = 'Account'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGradientActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SystemStore_str'
      end
      object dbgRequisitionsItemsNo_int: TdxDBGridMaskColumn
        Caption = 'Items'
        DisableEditor = True
        Width = 45
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'ItemsNo_int'
        DisableFilter = True
      end
      object dbgRequisitionsActivated_bol: TdxDBGridCheckColumn
        Caption = 'Posted'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings'
        Font.Style = [fsBold]
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Activated_bol'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbgRequisitionsActivated_dat: TdxDBGridDateColumn
        Caption = 'Date Posted'
        DisableEditor = True
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Activated_dat'
      end
      object dbgRequisitionsItemsComplete_bol: TdxDBGridCheckColumn
        Caption = 'Completed'
        DisableEditor = True
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemsComplete_bol'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbgRequisitionsPOReference_str: TdxDBGridColumn
        Caption = 'PO Reference'
        Sorted = csUp
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POReference_str'
      end
      object dbgRequisitionsCheckedOut_bol: TdxDBGridColumn
        Caption = 'Checked Out'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CheckedOut_bol'
      end
      object dbgRequisitionsCheckedOut_dat: TdxDBGridColumn
        Caption = 'Checked Out date'
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CheckedOut_dat'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 368
    Width = 977
    Height = 297
    Caption = 'Orders'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbgOrders: TdxDBGrid
      Left = 2
      Top = 20
      Width = 973
      Height = 275
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'OrderNo_ID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      DataSource = dsOrders
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
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      IndentDesc = 10
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      RegistryPath = '\Software\Equity Project\Grids\Orders\Main'
      RowFooterColor = clHighlight
      RowFooterTextColor = clWindow
      object dbgOrdersOrderNo_str: TdxDBGridColumn
        Caption = 'Order Ref.'
        DisableEditor = True
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OrderNo_str'
        SummaryFooterType = cstCount
        SummaryFooterFormat = 'Records: #'
      end
      object dbgOrdersOrder_dat: TdxDBGridDateColumn
        Caption = 'Ordered'
        DisableEditor = True
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Order_dat'
      end
      object dbgOrdersSupplier_Str: TdxDBGridColumn
        Caption = 'Supplier'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Supplier_Str'
      end
      object dbgOrdersSystemStore_str: TdxDBGridColumn
        Caption = 'Account'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGradientActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SystemStore_str'
      end
      object dbgOrdersItemsNo_int: TdxDBGridMaskColumn
        Caption = 'Items'
        DisableEditor = True
        Width = 82
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'ItemsNo_int'
        DisableFilter = True
      end
      object dbgOrdersActivated_dat: TdxDBGridDateColumn
        Caption = 'Date Posted'
        DisableEditor = True
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Activated_dat'
      end
      object dbgOrdersActivated_bol: TdxDBGridCheckColumn
        Caption = 'Posted'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings'
        Font.Style = [fsBold]
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Activated_bol'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbgOrdersVoucherNo_str: TdxDBGridColumn
        Caption = 'Voucher No'
        DisableEditor = True
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VoucherNo_str'
        DisableFilter = True
      end
      object dbgOrdersCheckedOut_dat: TdxDBGridColumn
        Caption = 'Checked Out Date'
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CheckedOut_dat'
      end
      object dbgOrdersCheckedOut_bol: TdxDBGridColumn
        Caption = 'Checked Out'
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CheckedOut_bol'
      end
    end
  end
  object Button1: TButton
    Left = 592
    Top = 342
    Width = 131
    Height = 25
    Action = atnUpdateRequisitions
    TabOrder = 2
  end
  object Button2: TButton
    Left = 832
    Top = 339
    Width = 75
    Height = 25
    Action = atnSaveRequisitions
    TabOrder = 3
  end
  object Button3: TButton
    Left = 608
    Top = 672
    Width = 107
    Height = 25
    Action = atnUpdateAllOrders
    TabOrder = 4
  end
  object Button4: TButton
    Left = 832
    Top = 672
    Width = 75
    Height = 25
    Action = atnSaveOrders
    TabOrder = 5
  end
  object qryCheckedOutRequisitions: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * From tblRequisition'
      'Where CheckedOut_bol = 1')
    Left = 40
  end
  object dsRequisitions: TDataSource
    DataSet = qryCheckedOutRequisitions
    Left = 40
    Top = 32
  end
  object qryCheckedOutOrders: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * From tblOrder'
      'Where CheckedOut_bol = 1')
    Left = 72
  end
  object dsOrders: TDataSource
    DataSet = qryCheckedOutOrders
    Left = 72
    Top = 32
  end
  object stp_updateRequistions: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Update tblRequisition'
      'Set CheckedOut_bol = 0'
      'Where CheckedOut_bol = 1 ')
    Left = 424
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RFm_21;Data Source=sifisom'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
  end
  object ActionList1: TActionList
    Left = 880
    object atnUpdateRequisitions: TAction
      Caption = 'Uncheck All Requistions'
      OnExecute = atnUpdateRequisitionsExecute
    end
    object atnUpdateAllOrders: TAction
      Caption = 'Uncheck All Orders'
      OnExecute = atnUpdateAllOrdersExecute
    end
    object atnSaveRequisitions: TAction
      Caption = 'Save'
      OnExecute = atnSaveRequisitionsExecute
    end
    object atnSaveOrders: TAction
      Caption = 'Save'
      OnExecute = atnSaveOrdersExecute
    end
  end
  object stp_updateOrders: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Update tblOrder'
      'Set CheckedOut_bol = 0'
      'Where CheckedOut_bol = 1 ')
    Left = 476
  end
end

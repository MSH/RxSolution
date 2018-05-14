object ProductEditHistroyfrm: TProductEditHistroyfrm
  Left = 359
  Top = 175
  Width = 1279
  Height = 638
  Caption = 'Product Edit Histroy'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object dxgProductHistory: TdxDBGrid
    Left = 0
    Top = 66
    Width = 1261
    Height = 483
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Edit_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = ProductDm.dstblEditHistory
    Filter.Active = True
    Filter.Criteria = {00000000}
    GroupPanelColor = 15779500
    GroupPanelFontColor = clHighlight
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoKeepColumnWidth]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxgProductHistoryChangeDate_dat: TdxDBGridDateColumn
      Caption = 'Date'
      DisableEditor = True
      Width = 162
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ChangeDate_dat'
    end
    object dxgProductHistoryType_str: TdxDBGridColumn
      Caption = 'Type'
      DisableEditor = True
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type_str'
    end
    object dxgProductHistoryChangeDescription_str: TdxDBGridColumn
      Caption = 'Change'
      DisableEditor = True
      Width = 525
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ChangeDescription_str'
    end
    object dxgProductHistoryUserName_str: TdxDBGridColumn
      Caption = 'Changed by'
      DisableEditor = True
      Width = 126
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UserName_str'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 549
    Width = 1261
    Height = 44
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowCancelButton = False
    TabOrder = 1
  end
  object pnlProductDetailColorBackground: TPanel
    Left = 0
    Top = 0
    Width = 1261
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    Font.Charset = ANSI_CHARSET
    Font.Color = 16744576
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      1261
      66)
    object Label38: TLabel
      Left = 0
      Top = 6
      Width = 1259
      Height = 23
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Product Edit History'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object wwDBLookupCombo24: TwwDBLookupCombo
      Left = 1060
      Top = 201
      Width = 986
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Description_str'#9'20'#9'Description_str'#9'T')
      DataField = 'PackContainer_str'
      DataSource = ProductDm.dstblProductCatalog
      LookupTable = ProductDm.qryADOPackSizeContainer
      LookupField = 'Description_str'
      Style = csDropDownList
      DropDownCount = 20
      ButtonEffects.Flat = True
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      AllowClearKey = False
    end
    object RzDBEdit2: TRzDBEdit
      Left = 6
      Top = 30
      Width = 1167
      Height = 27
      DataSource = ProductDm.dstblProductCatalog
      DataField = 'Description_str'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzFrameController1: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 32
    Top = 144
  end
end

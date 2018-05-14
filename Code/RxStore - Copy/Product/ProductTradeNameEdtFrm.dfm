object frmProductTradeNameAddEdit: TfrmProductTradeNameAddEdit
  Left = 521
  Top = 232
  Width = 615
  Height = 672
  Caption = 'Add/Edit Trade Name '
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object dxgTradeNameAdd: TdxDBGrid
    Left = 0
    Top = 124
    Width = 597
    Height = 458
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Tradename_ID'
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
    DataSource = ProductDm.dsqryADOTradeName
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
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    object dxgTradeNameAddTradename_ID: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tradename_ID'
    end
    object dxgTradeNameAddTradeName_Str: TdxDBGridColumn
      Caption = 'Trade Name'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TradeName_Str'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 582
    Width = 597
    Height = 45
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
    Width = 597
    Height = 92
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
      597
      92)
    object Label38: TLabel
      Left = 6
      Top = 6
      Width = 748
      Height = 22
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Description'
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
      Width = 182
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
      Width = 566
      Height = 27
      DataSource = ProductDm.dsqryADOTradeName
      DataField = 'TradeName_Str'
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
  object Panel20: TPanel
    Left = 0
    Top = 92
    Width = 597
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 3
    object Shape2: TShape
      Left = 0
      Top = 31
      Width = 597
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 290
      Height = 31
      DataSource = ProductDm.dsqryADOTradeName
      TabOrder = 0
    end
  end
  object RzFrameController1: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 32
    Top = 144
  end
end

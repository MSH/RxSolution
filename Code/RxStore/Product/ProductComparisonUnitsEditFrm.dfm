object frmComparisonUnitsEdt: TfrmComparisonUnitsEdt
  Left = 463
  Top = 165
  Width = 983
  Height = 831
  Caption = 'Add, Edit Comparison Units'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object dxgComparisonUnits: TdxDBGrid
    Left = 0
    Top = 98
    Width = 965
    Height = 642
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Unit_str'
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
    DataSource = ProductDm.dsComparisonUnit
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
    OptionsCustomize = [edgoBandSizing, edgoColumnMoving, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    object dxgComparisonUnitsUnit_str: TdxDBGridColumn
      Caption = 'Unit'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Unit_str'
    end
    object dxgComparisonUnitsdispensingUnit_str: TdxDBGridColumn
      Caption = 'Dispensing Unit'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dispensingUnit_str'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 741
    Width = 965
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
    Width = 965
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
      965
      66)
    object Label12: TLabel
      Left = 6
      Top = 31
      Width = 62
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Unit'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label38: TLabel
      Left = 198
      Top = 6
      Width = 763
      Height = 22
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Dispensing Unit'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label31: TLabel
      Left = 6
      Top = 6
      Width = 191
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Unit'
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
      Width = 580
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
    object RzDBEdit1: TRzDBEdit
      Left = 69
      Top = 30
      Width = 129
      Height = 32
      DataSource = ProductDm.dsComparisonUnit
      DataField = 'Unit_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 1
    end
    object RzDBEdit2: TRzDBEdit
      Left = 199
      Top = 30
      Width = 762
      Height = 32
      DataSource = ProductDm.dsComparisonUnit
      DataField = 'dispensingUnit_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 66
    Width = 965
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 3
    object Shape2: TShape
      Left = 0
      Top = 31
      Width = 965
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 290
      Height = 31
      DataSource = ProductDm.dsComparisonUnit
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

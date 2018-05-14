object frmPackSizeRangeEdit: TfrmPackSizeRangeEdit
  Left = 568
  Top = 225
  Width = 771
  Height = 553
  Caption = 'Add / Edit Pack Size Range'
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
  object dxgPackSizeRange: TdxDBGrid
    Left = 0
    Top = 124
    Width = 753
    Height = 340
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'PackSizeRangeID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
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
    DataSource = ProductDm.dsPackSizeRange
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
    object dxgPackSizeRangeCode_str: TdxDBGridMaskColumn
      Caption = 'Code'
      DisableEditor = True
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Code_str'
    end
    object dxgPackSizeRangeDescription_str: TdxDBGridColumn
      Caption = 'Description'
      DisableEditor = True
      Width = 252
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
    end
    object dxgPackSizeRangePackSizeValue_dbl: TdxDBGridMaskColumn
      Caption = 'Pack Size Value'
      DisableEditor = True
      Width = 190
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackSizeValue_dbl'
    end
    object dxgPackSizeRangePackSizeUnit_str: TdxDBGridColumn
      Caption = 'Pack Size Unit'
      DisableEditor = True
      Width = 247
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackSizeUnit_str'
    end
    object dxgPackSizeRangePackSizeRangeID: TdxDBGridMaskColumn
      Visible = False
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackSizeRangeID'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 464
    Width = 753
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
    Width = 753
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
      753
      92)
    object Label12: TLabel
      Left = 6
      Top = 31
      Width = 62
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Code'
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
      Left = 209
      Top = 6
      Width = 730
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
    object Label31: TLabel
      Left = 6
      Top = 6
      Width = 206
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Codes'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 64
      Width = 94
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pack Size Value'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 199
      Top = 64
      Width = 94
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pack Size Unit'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object wwDBLookupCombo24: TwwDBLookupCombo
      Left = 1060
      Top = 201
      Width = 364
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
      Height = 27
      DataSource = ProductDm.dsPackSizeRange
      DataField = 'Code_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 1
    end
    object dbePAckSizeValue: TDBEdit
      Left = 101
      Top = 64
      Width = 97
      Height = 22
      Cursor = crHandPoint
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'PackSizeValue_dbl'
      DataSource = ProductDm.dsPackSizeRange
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit2: TRzDBEdit
      Left = 199
      Top = 30
      Width = 728
      Height = 27
      DataSource = ProductDm.dsPackSizeRange
      DataField = 'Description_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 294
      Top = 64
      Width = 97
      Height = 22
      Cursor = crHandPoint
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'PackSizeUnit_str'
      DataSource = ProductDm.dsPackSizeRange
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 92
    Width = 753
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 3
    object Shape2: TShape
      Left = 0
      Top = 31
      Width = 753
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 290
      Height = 31
      DataSource = ProductDm.dsPackSizeRange
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

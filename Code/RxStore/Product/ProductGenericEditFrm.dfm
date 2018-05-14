object frmProductGenricAddEdit: TfrmProductGenricAddEdit
  Left = 583
  Top = 278
  BorderStyle = bsDialog
  Caption = 'Edit/Add Generic list'
  ClientHeight = 635
  ClientWidth = 751
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
  object dxgGenericAdd: TdxDBGrid
    Left = 2
    Top = 126
    Width = 728
    Height = 468
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'genericName_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
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
    DataSource = ProductDm.dsGenericName
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
    RegistryPath = '\Software\RxSolution\1.2\Grids\Products\dxgGenericAdd'
    object dxgGenericAddgenericNameCode_str: TdxDBGridColumn
      Caption = 'Code'
      DisableEditor = True
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'genericNameCode_str'
      DisableFilter = True
    end
    object dxgGenericAddgenericName_Str: TdxDBGridColumn
      Caption = 'Generic Name'
      DisableEditor = True
      Sorted = csUp
      Width = 382
      BandIndex = 0
      RowIndex = 0
      FieldName = 'genericName_Str'
      DisableFilter = True
    end
    object dxgGenericAddgenericRxLevel_str: TdxDBGridColumn
      Caption = 'Level'
      DisableEditor = True
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'genericRxLevel_str'
    end
    object dxgGenericAddgenericActive_Bol: TdxDBGridCheckColumn
      Caption = 'Active'
      DisableEditor = True
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'genericActive_Bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 591
    Width = 751
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
    Width = 751
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
      751
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
    object Label27: TLabel
      Left = 302
      Top = 64
      Width = 97
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplement'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label25: TLabel
      Left = 6
      Top = 64
      Width = 62
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Level'
      Color = clInfoBk
      FocusControl = dbeECNCode
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
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
    object Label38: TLabel
      Left = 213
      Top = 6
      Width = 533
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
    object Label35: TLabel
      Left = 114
      Top = 64
      Width = 98
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Active'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbeNSNCode: TDBEdit
      Left = 401
      Top = 64
      Width = 323
      Height = 22
      Cursor = crHandPoint
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'genericNameSupplement_Str'
      DataSource = ProductDm.dsGenericName
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbeECNCode: TDBEdit
      Left = 69
      Top = 64
      Width = 44
      Height = 22
      Cursor = crHandPoint
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'genericRxLevel_str'
      DataSource = ProductDm.dsGenericName
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object wwDBLookupCombo24: TwwDBLookupCombo
      Left = 1060
      Top = 201
      Width = 22
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      AllowClearKey = False
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 215
      Top = 64
      Width = 71
      Height = 21
      DataField = 'genericActive_Bol'
      DataSource = ProductDm.dsGenericName
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'Active'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit1: TRzDBEdit
      Left = 69
      Top = 30
      Width = 143
      Height = 27
      DataSource = ProductDm.dsGenericName
      DataField = 'genericNameCode_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 4
    end
    object RzDBEdit2: TRzDBEdit
      Left = 213
      Top = 30
      Width = 511
      Height = 27
      DataSource = ProductDm.dsGenericName
      DataField = 'genericName_Str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 92
    Width = 751
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 3
    object Shape2: TShape
      Left = 0
      Top = 31
      Width = 751
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 290
      Height = 31
      DataSource = ProductDm.dsGenericName
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

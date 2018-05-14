object frmProductStrengthEdit: TfrmProductStrengthEdit
  Left = 406
  Top = 235
  Width = 750
  Height = 668
  Caption = 'Strength Ranges'
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
  object pnlProductDetailColorBackground: TPanel
    Left = 0
    Top = 0
    Width = 732
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
    TabOrder = 0
    DesignSize = (
      732
      66)
    object Label31: TLabel
      Left = 1
      Top = 6
      Width = 133
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
      Left = 135
      Top = 6
      Width = 208
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Strength Display'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 1
      Top = 30
      Width = 54
      Height = 33
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
    object Label1: TLabel
      Left = 345
      Top = 6
      Width = 136
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Strength'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 482
      Top = 6
      Width = 149
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Units per Strength'
      Color = 15779500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 633
      Top = 6
      Width = 94
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Units'
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
      Width = 150
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
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      AllowClearKey = False
    end
    object RzDBEdit1: TRzDBEdit
      Left = 135
      Top = 30
      Width = 208
      Height = 27
      DataSource = ProductDm.dsStrengthRange
      DataField = 'Description_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit2: TRzDBEdit
      Left = 345
      Top = 30
      Width = 136
      Height = 27
      DataSource = ProductDm.dsStrengthRange
      DataField = 'StrengthRangeValue_dbl'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit3: TRzDBEdit
      Left = 482
      Top = 30
      Width = 149
      Height = 27
      DataSource = ProductDm.dsStrengthRange
      DataField = 'StrengthRangeDispensingValue_dbl'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 4
    end
    object RzDBEdit4: TRzDBEdit
      Left = 633
      Top = 30
      Width = 94
      Height = 27
      DataSource = ProductDm.dsStrengthRange
      DataField = 'StrengthRangeUnit_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 5
    end
    object RzDBEdit5: TRzDBEdit
      Left = 57
      Top = 30
      Width = 77
      Height = 27
      DataSource = ProductDm.dsStrengthRange
      DataField = 'StrengthRangeCode_str'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 66
    Width = 732
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object Shape2: TShape
      Left = 0
      Top = 31
      Width = 732
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 290
      Height = 31
      DataSource = ProductDm.dsStrengthRange
      TabOrder = 0
    end
  end
  object dxgStrengthRangeAdd: TdxDBGrid
    Left = 0
    Top = 98
    Width = 732
    Height = 481
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'StrengthRange_ID'
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
    TabOrder = 2
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = ProductDm.dsStrengthRange
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
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Products\dxgStrengthRangeAdd'
    object dxgStrengthRangeAddStrengthRangeCode_str: TdxDBGridColumn
      Caption = 'Code'
      DisableEditor = True
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StrengthRangeCode_str'
      DisableFilter = True
    end
    object dxgStrengthRangeAddDescription_str: TdxDBGridColumn
      Caption = 'Strength'
      DisableEditor = True
      Width = 271
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
      DisableFilter = True
    end
    object dxgStrengthRangeAddStrengthRangeValue_dbl: TdxDBGridMaskColumn
      Caption = 'Value'
      DisableEditor = True
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StrengthRangeValue_dbl'
    end
    object dxgStrengthRangeAddStrengthRangeDispensingValue_dbl: TdxDBGridMaskColumn
      Caption = 'Ratio'
      DisableEditor = True
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StrengthRangeDispensingValue_dbl'
    end
    object dxgStrengthRangeAddStrengthRangeUnit_str: TdxDBGridColumn
      Caption = 'Unit'
      DisableEditor = True
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StrengthRangeUnit_str'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 579
    Width = 732
    Height = 44
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowCancelButton = False
    TabOrder = 3
  end
  object RzFrameController1: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 32
    Top = 144
  end
end

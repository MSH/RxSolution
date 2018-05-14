object ProductAdministrationUnitEditFrm: TProductAdministrationUnitEditFrm
  Left = 334
  Top = 83
  Width = 600
  Height = 583
  Caption = 'Administration Units'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlProductDetailColorBackground: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744576
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      592
      54)
    object Label31: TLabel
      Left = 413
      Top = 5
      Width = 176
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Amount'
      Color = 15779500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label38: TLabel
      Left = 5
      Top = 5
      Width = 314
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Administration is done ...'
      Color = 15779500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 319
      Top = 5
      Width = 91
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'which equals'
      Color = 15779500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object wwDBLookupCombo24: TwwDBLookupCombo
      Left = 861
      Top = 163
      Width = 0
      Height = 18
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -11
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
      Left = 5
      Top = 24
      Width = 405
      Height = 27
      DataSource = ProductDm.dsAdministrationUnits
      DataField = 'AdminUnit_Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 1
    end
    object RzDBEdit2: TRzDBEdit
      Left = 413
      Top = 24
      Width = 66
      Height = 27
      DataSource = ProductDm.dsAdministrationUnits
      DataField = 'AdminUnit_Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit3: TRzDBEdit
      Left = 480
      Top = 24
      Width = 109
      Height = 27
      DataSource = ProductDm.dsAdministrationUnits
      DataField = 'AdminUnit_Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FrameController = RzFrameController1
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 54
    Width = 592
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object Shape2: TShape
      Left = 0
      Top = 25
      Width = 592
      Height = 1
      Align = alBottom
      Pen.Color = clHighlight
    end
    object RzDBNavigator1: TRzDBNavigator
      Left = 0
      Top = 0
      Width = 240
      Height = 25
      DataSource = ProductDm.dsAdministrationUnits
      TabOrder = 0
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 513
    Width = 592
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowCancelButton = False
    TabOrder = 2
  end
  object dxgAdministrationUnit: TdxDBGrid
    Left = 0
    Top = 80
    Width = 592
    Height = 433
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'AdminUnit_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = ProductDm.dsAdministrationUnits
    Filter.Active = True
    Filter.Criteria = {00000000}
    GroupPanelColor = 15779500
    GroupPanelFontColor = clHighlight
    HeaderColor = clInfoBk
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clHighlight
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    object dxgAdministrationUnitAdminUnit_Type: TdxDBGridMaskColumn
      Caption = 'Administration'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AdminUnit_Type'
      DisableFilter = True
    end
    object dxgAdministrationUnitAdminUnit_Qty: TdxDBGridMaskColumn
      Caption = 'Amount'
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AdminUnit_Qty'
      DisableFilter = True
    end
    object dxgAdministrationUnitAdminUnit_Unit: TdxDBGridMaskColumn
      Caption = 'per Unit'
      DisableEditor = True
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AdminUnit_Unit'
      DisableFilter = True
    end
  end
  object RzFrameController1: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 32
    Top = 144
  end
end

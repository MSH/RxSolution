object ReceiptChangePackSizeFrm: TReceiptChangePackSizeFrm
  Left = 272
  Top = 334
  Width = 956
  Height = 346
  Caption = 'Change Pack Size'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Group2: TGroupBox
    Left = 0
    Top = 0
    Width = 948
    Height = 276
    Align = alClient
    Caption = 'Packs'
    TabOrder = 0
    object dxgPackSizes_Items: TdxDBGrid
      Left = 2
      Top = 15
      Width = 944
      Height = 259
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ProductCode_ID'
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
      DataSource = ReceiptDm.dsqryOtherPackSizes
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      RowFooterColor = clHighlight
      RowFooterTextColor = clWindow
      ShowPreviewGrid = False
      object dxgPackSizes_ItemsProductCode_ID: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductCode_ID'
      end
      object dxgPackSizes_ItemsDescription_str: TdxDBGridMaskColumn
        Caption = 'Description'
        DisableEditor = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Description_str'
      end
      object dxgPackSizes_ItemsECN_str: TdxDBGridColumn
        Caption = 'ECN'
        DisableEditor = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ECN_str'
      end
      object dxgPackSizes_ItemsICN_str: TdxDBGridColumn
        Caption = 'ICN'
        DisableEditor = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ICN_str'
      end
      object dxgPackSizes_ItemsNSN_str: TdxDBGridColumn
        Caption = 'NSN'
        DisableEditor = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NSN_str'
      end
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 276
    Width = 948
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    TabOrder = 1
  end
end

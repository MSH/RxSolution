object RX_ProtocolEditHistoryFrm: TRX_ProtocolEditHistoryFrm
  Left = 152
  Top = 143
  Width = 1204
  Height = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 16
  object pnlRXBackground: TPanel
    Left = 0
    Top = 0
    Width = 1186
    Height = 630
    Align = alClient
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 0
    OnResize = pnlRXBackgroundResize
    object pnlForm_Header: TPanel
      Left = 42
      Top = 20
      Width = 1119
      Height = 45
      Color = clWhite
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 256
        Height = 28
        Caption = 'Protocol/Regimen Edit History'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlForm_Detail: TPanel
      Left = 40
      Top = 80
      Width = 1121
      Height = 489
      Color = clWhite
      TabOrder = 1
      object lblView_Standard: TLabel
        Left = 1
        Top = 1
        Width = 1119
        Height = 29
        Align = alTop
        Caption = ' View - Standard'
        Color = 15448477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dxgRXItemStandard: TdxDBGrid
        Left = 1
        Top = 30
        Width = 1119
        Height = 458
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ProtocolRegimen_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        ArrowsColor = clNavy
        BandColor = clBackground
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsEditHistory
        Filter.Active = True
        Filter.DropDownCount = 16
        Filter.Criteria = {00000000}
        GridLineColor = clInactiveCaptionText
        GroupPanelColor = 15779500
        GroupPanelFontColor = clActiveCaption
        GroupNodeColor = 16311512
        GroupNodeTextColor = clActiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clHighlight
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        IndentDesc = 10
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoHeaderButtonClicking, edgoHorzThrough, edgoImmediateEditor, edgoMultiSort, edgoShowHourGlass, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoConfirmDelete, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks, edgoUseLocate]
        OptionsView = [edgoAutoCalcPreviewLines, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
        PreviewFieldName = 'ItemPreview_Str'
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = [fsItalic]
        RegistryPath = 
          '\Software\RxSolution\1.2\Grids\Prescription\dxgRXHistoryStandard' +
          '1'
        RowFooterColor = clHighlight
        RowFooterTextColor = clWindow
        ShowGrid = False
        object dxgRXItemStandardDate_dat: TdxDBGridDateColumn
          Caption = 'Date'
          DisableEditor = True
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Date_dat'
        end
        object dxgRXItemStandardProtocol: TdxDBGridColumn
          DisableEditor = True
          Width = 287
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Protocol'
        end
        object dxgRXItemStandardDescription_str: TdxDBGridColumn
          Caption = 'Description'
          DisableEditor = True
          Width = 281
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description_str'
        end
        object dxgRXItemStandardType_str: TdxDBGridColumn
          Caption = 'Type'
          DisableEditor = True
          Width = 169
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Type_str'
        end
        object dxgRXItemStandardMode_str: TdxDBGridColumn
          Caption = 'Mode'
          DisableEditor = True
          Visible = False
          Width = 42
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Mode_str'
        end
        object dxgRXItemStandardUser_str: TdxDBGridColumn
          Caption = 'Edited By'
          DisableEditor = True
          Width = 264
          BandIndex = 0
          RowIndex = 0
          FieldName = 'User_str'
        end
      end
    end
  end
  object rzdbMain: TRzDialogButtons
    Left = 0
    Top = 630
    Width = 1186
    ButtonColor = 16311512
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowGlyphs = True
    ShowCancelButton = False
    Color = 16311512
    TabOrder = 1
  end
  object tblEditHistory: TADOQuery
    Connection = dmStdReg.conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblProtocolEditLog.*, TblStdProtocol.Name_str AS Protocol'
      
        'FROM tblProtocolEditLog LEFT OUTER JOIN TblStdProtocol ON tblPro' +
        'tocolEditLog.Protocol_ID=TblStdProtocol.Protocol_ID'
      'ORDER BY tblProtocolEditLog.Date_dat DESC')
    Top = 40
    object tblEditHistoryProtocolChange_ID: TAutoIncField
      FieldName = 'ProtocolChange_ID'
      ReadOnly = True
    end
    object tblEditHistoryDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object tblEditHistoryDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 500
    end
    object tblEditHistoryProtocol_ID: TGuidField
      FieldName = 'Protocol_ID'
      FixedChar = True
      Size = 38
    end
    object tblEditHistoryRegimen_ID: TGuidField
      FieldName = 'Regimen_ID'
      FixedChar = True
      Size = 38
    end
    object tblEditHistoryType_str: TWideStringField
      FieldName = 'Type_str'
    end
    object tblEditHistoryMode_str: TWideStringField
      FieldName = 'Mode_str'
    end
    object tblEditHistoryUser_str: TWideStringField
      FieldName = 'User_str'
      Size = 50
    end
    object tblEditHistoryProtocol: TWideStringField
      FieldName = 'Protocol'
      Size = 100
    end
  end
  object dsEditHistory: TDataSource
    DataSet = tblEditHistory
    Top = 80
  end
end

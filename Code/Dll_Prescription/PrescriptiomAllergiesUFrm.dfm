object PatientAllergies: TPatientAllergies
  Left = 389
  Top = 278
  Width = 983
  Height = 442
  Caption = 'Allergies'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRXBackground: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 0
    object lblView_Standard: TLabel
      Left = 0
      Top = 0
      Width = 975
      Height = 26
      Align = alTop
      Caption = 'Patient Allergies'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnlForm_Detail: TPanel
      Left = 0
      Top = 26
      Width = 975
      Height = 346
      Align = alClient
      Color = clWhite
      TabOrder = 0
      object dxgPatientAllergies: TdxDBGrid
        Left = 1
        Top = 1
        Width = 973
        Height = 344
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        DataSource = dmRX.dsAllergies
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
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHeaderButtonClicking, edgoHorzThrough, edgoImmediateEditor, edgoMultiSort, edgoShowHourGlass, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoConfirmDelete, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks, edgoUseLocate]
        OptionsView = [edgoAutoCalcPreviewLines, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
        PreviewFieldName = 'ItemPreview_Str'
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = [fsItalic]
        RegistryPath = '\Software\RxSolution\1.2\Grids\Prescription\dxgRXItem'
        RowFooterColor = clHighlight
        RowFooterTextColor = clWindow
        ShowGrid = False
        object dxgPatientAllergiespersonAllergyDateEntered_Dat: TdxDBGridDateColumn
          Caption = 'Captured'
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyDateEntered_Dat'
        end
        object dxgPatientAllergiespersonAllergyDescription_Str: TdxDBGridColumn
          Caption = 'Description'
          Width = 254
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyDescription_Str'
        end
        object dxgPatientAllergiespersonAllergySource_Str: TdxDBGridColumn
          Caption = 'Source'
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergySource_Str'
        end
        object dxgPatientAllergiespersonAllergyConfirmedBy_Str: TdxDBGridColumn
          Caption = 'Confirmed By'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyConfirmedBy_Str'
        end
        object dxgPatientAllergiespersonAllergyStatus_Str: TdxDBGridColumn
          Caption = 'Status'
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyStatus_Str'
        end
        object dxgPatientAllergiespersonAllergyAuthicatedBy_Str: TdxDBGridColumn
          Caption = 'Authicated By'
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyAuthicatedBy_Str'
        end
        object dxgPatientAllergiespersonAllergyConfirmed_bol: TdxDBGridCheckColumn
          Caption = 'Confirmed'
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personAllergyConfirmed_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxgPatientAllergiesallergyName_Str: TdxDBGridColumn
          Caption = 'Name'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'allergyName_Str'
        end
        object dxgPatientAllergiesallergyDescription_Str: TdxDBGridColumn
          Caption = 'Description'
          Width = 135
          BandIndex = 0
          RowIndex = 0
          FieldName = 'allergyDescription_Str'
        end
      end
    end
    object RzDialogButtons1: TRzDialogButtons
      Left = 0
      Top = 372
      Width = 975
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
  end
end

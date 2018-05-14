object frmeSystemSetting: TfrmeSystemSetting
  Left = 0
  Top = 0
  Width = 1016
  Height = 652
  TabOrder = 0
  OnResize = FrameResize
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      1016
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1255
      Height = 45
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = clWindow
      Pen.Color = clActiveCaption
      Pen.Style = psInsideFrame
    end
    object pnlToolbar_Header_Display: TRzLabel
      Left = 8
      Top = 11
      Width = 385
      Height = 33
      Alignment = taCenter
      AutoSize = False
      Caption = 'System Settings...'
      Color = 16311512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
      FlyByColor = 12937777
      ShadowDepth = 1
      TextStyle = tsShadow
    end
  end
  object pnlHolder_System: TPanel
    Left = 0
    Top = 55
    Width = 1016
    Height = 597
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object rzlClinicList: TRzLabel
      Left = 235
      Top = 5
      Width = 508
      Height = 19
      AutoSize = False
      Caption = 'Clinic List'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object dxPageControl1: TdxPageControl
      Left = 0
      Top = 0
      Width = 1016
      Height = 597
      ActivePage = dxtbsGeneric
      Align = alClient
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      object dxtbsGeneral: TdxTabSheet
        Caption = 'General'
        object RZlBLComplexSiteDetails: TRzLabel
          Left = 5
          Top = 5
          Width = 228
          Height = 19
          AutoSize = False
          Caption = 'Titles'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object RzLabel1: TRzLabel
          Left = 237
          Top = 5
          Width = 228
          Height = 19
          AutoSize = False
          Caption = 'Languages'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object RzLabel2: TRzLabel
          Left = 5
          Top = 276
          Width = 460
          Height = 19
          AutoSize = False
          Caption = 'Specialisations'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object RzLabel3: TRzLabel
          Left = 469
          Top = 276
          Width = 460
          Height = 19
          AutoSize = False
          Caption = 'Posts'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object RzGroupBox4: TRzGroupBox
          Left = 5
          Top = 25
          Width = 228
          Height = 246
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object grdTitle: TdxDBGrid
            Left = 1
            Top = 14
            Width = 226
            Height = 231
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'personPositionTitle_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryTitle
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdTitlepersonPositionTitleDescription_Str: TdxDBGridColumn
              Caption = 'Title'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'personPositionTitleDescription_Str'
            end
          end
        end
        object RzGroupBox1: TRzGroupBox
          Left = 237
          Top = 25
          Width = 228
          Height = 246
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object grdLangauge: TdxDBGrid
            Left = 1
            Top = 14
            Width = 226
            Height = 231
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'language_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryLanguage
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdLangaugelanguageName_Str: TdxDBGridColumn
              Caption = 'Language'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'languageName_Str'
            end
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 5
          Top = 296
          Width = 460
          Height = 246
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object grdSpecialisations: TdxDBGrid
            Left = 1
            Top = 14
            Width = 458
            Height = 231
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'specialisation_ID'
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqrySpecialisations
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdSpecialisationsspecialisation_Code: TdxDBGridColumn
              Caption = 'Code'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'specialisation_Code'
            end
            object grdSpecialisationsspecialisation_Description_str: TdxDBGridColumn
              Caption = 'Specialisation Description'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'specialisation_Description_str'
            end
          end
        end
        object RzGroupBox3: TRzGroupBox
          Left = 469
          Top = 296
          Width = 460
          Height = 246
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object grdPosts: TdxDBGrid
            Left = 1
            Top = 14
            Width = 458
            Height = 231
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'personPositionPost_ID'
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryPosts
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdPostspersonPositionPostDescription_str: TdxDBGridColumn
              Caption = 'Post Description'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'personPositionPostDescription_str'
            end
            object grdPostspersonPositionPostArea_str: TdxDBGridPickColumn
              Caption = 'Area (?...)'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'personPositionPostArea_str'
              DropDownListStyle = True
              Items.Strings = (
                'Prescriber'
                'Dispenser'
                'Patient')
              DropDownRows = 14
            end
          end
        end
      end
      object dxtbsAllergies: TdxTabSheet
        Caption = 'Allergies'
      end
      object dxtbsAbbreviations: TdxTabSheet
        Caption = 'Abbreviations'
        object lblAbbreviationList: TRzLabel
          Left = 236
          Top = 5
          Width = 460
          Height = 19
          AutoSize = False
          Caption = 'Lists of Abbreviations and settings'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object lblAbbreviationTypes: TRzLabel
          Left = 5
          Top = 5
          Width = 228
          Height = 19
          AutoSize = False
          Caption = 'Abbreviation Types'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgAbbreviationList: TRzGroupBox
          Left = 236
          Top = 25
          Width = 765
          Height = 417
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object dxgAbbreviations: TdxDBGrid
            Left = 1
            Top = 14
            Width = 763
            Height = 402
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryAbbreviationList
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxgAbbreviationsabbreviation_Str: TdxDBGridColumn
              Caption = 'Abb.'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviation_Str'
            end
            object dxgAbbreviationsabbreviationDescription_Str: TdxDBGridColumn
              Caption = 'Description'
              Width = 30
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviationDescription_Str'
            end
            object dxgAbbreviationsabbreviationValue_dbl: TdxDBGridMaskColumn
              Caption = 'Value'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviationValue_dbl'
            end
            object dxgAbbreviationsabbreviationInstruction_Str: TdxDBGridColumn
              Caption = 'Instruction'
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviationInstruction_Str'
            end
            object dxgAbbreviationsabbreviationType_Str: TdxDBGridColumn
              Caption = 'Type'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviationType_Str'
            end
          end
        end
        object rzgAbbreviationTypes: TRzGroupBox
          Left = 5
          Top = 25
          Width = 228
          Height = 416
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object dxgAbbreviationTypes: TdxDBGrid
            Left = 1
            Top = 14
            Width = 226
            Height = 401
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryAbbreviationTypes
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxgAbbreviationTypesabbreviationType_Str: TdxDBGridColumn
              Caption = 'Type'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'abbreviationType_Str'
            end
          end
        end
      end
      object dxtbsIndication: TdxTabSheet
        Caption = 'Indication'
        object lblICD10: TRzLabel
          Left = 5
          Top = 5
          Width = 228
          Height = 19
          AutoSize = False
          Caption = 'ICD10 / Indications'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgICD10: TRzGroupBox
          Left = 5
          Top = 25
          Width = 228
          Height = 416
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object dxgICD10: TdxDBGrid
            Left = 1
            Top = 14
            Width = 226
            Height = 401
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ICode_str'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryICD10
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxgICD10ICode_str: TdxDBGridColumn
              Caption = 'Code'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ICode_str'
            end
            object dxgICD10Description_str: TdxDBGridColumn
              Caption = 'Description'
              Width = 600
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Description_str'
            end
            object dxgICD10Active_bol: TdxDBGridCheckColumn
              Caption = 'Active'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Active_bol'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
      end
      object dxtbsGeneric: TdxTabSheet
        Caption = 'Generic'
        object lblGenericList: TRzLabel
          Left = 5
          Top = 5
          Width = 228
          Height = 19
          AutoSize = False
          Caption = 'Generic Names'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgGenericList: TRzGroupBox
          Left = 5
          Top = 25
          Width = 228
          Height = 416
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object dxgGenericNames: TdxDBGrid
            Left = 1
            Top = 14
            Width = 226
            Height = 401
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'genericName_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            BandColor = 16776176
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryGenericNames
            Filter.Criteria = {00000000}
            GroupPanelColor = clInactiveCaption
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxgGenericNamesgenericNameCode_str: TdxDBGridColumn
              Caption = 'Code'
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'genericNameCode_str'
            end
            object dxgGenericNamesgenericName_Str: TdxDBGridColumn
              Caption = 'Name'
              Width = 400
              BandIndex = 0
              RowIndex = 0
              FieldName = 'genericName_Str'
            end
            object dxgGenericNamesgenericRxLevel_str: TdxDBGridColumn
              Caption = 'RxLevel'
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'genericRxLevel_str'
            end
            object dxgGenericNamesgenericActive_Bol: TdxDBGridCheckColumn
              Caption = 'Active'
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'genericActive_Bol'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
      end
    end
  end
  object conSystem: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxDispensing;Data Source=COU' +
      'GAR'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 696
    Top = 32
  end
  object rzcMain: TRzFrameController
    FrameColor = 16744576
    FrameHotStyle = fsFlat
    FrameStyle = fsNone
    FrameVisible = True
    Left = 728
    Top = 32
  end
  object qrySpecialisations: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qrySpecialisationsAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT dbo.tblSpecialisation.*'
      'FROM         dbo.tblSpecialisation'
      'ORDER BY specialisation_Code')
    Left = 768
    Top = 32
  end
  object dsqrySpecialisations: TDataSource
    DataSet = qrySpecialisations
    Left = 800
    Top = 32
  end
  object qryPosts: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryPostsAfterPost
    OnNewRecord = qryPostsNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT dbo.tblPersonPositionPost.*'
      'FROM         dbo.tblPersonPositionPost'
      'ORDER BY personPositionPostDescription_str')
    Left = 768
    Top = 64
  end
  object dsqryPosts: TDataSource
    DataSet = qryPosts
    Left = 800
    Top = 64
  end
  object dsqryTitle: TDataSource
    DataSet = qryTitle
    Left = 800
    Top = 96
  end
  object qryTitle: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryTitleAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT dbo.tblPersonPositionTitle.*'
      'FROM         dbo.tblPersonPositionTitle'
      'ORDER BY personPositionTitleDescription_Str')
    Left = 768
    Top = 96
  end
  object qryLanguage: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryLanguageAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT dbo.tlkSystemLanguage.*'
      'FROM         dbo.tlkSystemLanguage'
      'ORDER BY languageName_Str')
    Left = 768
    Top = 128
  end
  object dsqryLanguage: TDataSource
    DataSet = qryLanguage
    Left = 800
    Top = 128
  end
  object qryRxLevel: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryRxLevelAfterPost
    Parameters = <>
    SQL.Strings = (
      'select * from tblRxLevel Order By rxLevelOrder_int')
    Left = 768
    Top = 160
  end
  object dsqryRxLevel: TDataSource
    DataSet = qryRxLevel
    Left = 800
    Top = 160
  end
  object qryAbbreviationTypes: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_Abbreviation_Types')
    Left = 768
    Top = 224
  end
  object qryAbbreviationList: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryAbbreviationListAfterPost
    OnNewRecord = qryAbbreviationListNewRecord
    DataSource = dsqryAbbreviationTypes
    Parameters = <
      item
        Name = 'abbreviationType_Str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = '-'
      end>
    SQL.Strings = (
      
        'select * from view_v01_Abbreviation_List where abbreviationType_' +
        'Str = :abbreviationType_Str')
    Left = 768
    Top = 256
  end
  object dsqryAbbreviationTypes: TDataSource
    DataSet = qryAbbreviationTypes
    Left = 800
    Top = 224
  end
  object dsqryAbbreviationList: TDataSource
    DataSet = qryAbbreviationList
    Left = 800
    Top = 256
  end
  object qryICD10: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryICD10AfterPost
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ICD10_List_All')
    Left = 768
    Top = 320
  end
  object dsqryICD10: TDataSource
    DataSet = qryICD10
    Left = 800
    Top = 320
  end
  object qryGenericNames: TADOQuery
    Connection = conSystem
    CursorType = ctStatic
    AfterPost = qryGenericNamesAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGenericName order by genericName_Str')
    Left = 768
    Top = 368
  end
  object dsqryGenericNames: TDataSource
    DataSet = qryGenericNames
    Left = 800
    Top = 368
  end
end

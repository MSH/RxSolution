object DosingFrm: TDosingFrm
  Left = 138
  Top = 136
  Width = 1024
  Height = 736
  Caption = 'DosingFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
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
      Left = 16
      Top = 11
      Width = 385
      Height = 33
      Alignment = taCenter
      AutoSize = False
      Caption = 'Standard Anthropometric Dosing'
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
  object pnl_Main_Back: TPanel
    Left = 0
    Top = 55
    Width = 1016
    Height = 647
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object pnl_Main_Blue: TPanel
      Left = 0
      Top = 0
      Width = 1016
      Height = 647
      Align = alClient
      BevelOuter = bvNone
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object pgeDetail: TdxPageControl
        Left = 281
        Top = 0
        Width = 735
        Height = 647
        ActivePage = tbsRegimenDetail
        Align = alClient
        HideButtons = False
        HotTrack = False
        MultiLine = True
        OwnerDraw = False
        RaggedRight = True
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpBottom
        TabWidth = 0
        object tbsRegimenDetail: TdxTabSheet
          Caption = 'Regimen'
          object RzToolbar1: TRzToolbar
            Left = 0
            Top = 0
            Width = 735
            Height = 46
            AutoResize = False
            AutoStyle = False
            Images = imgProtocols
            Margin = 1
            TopMargin = 1
            RowHeight = 40
            ButtonLayout = blGlyphTop
            ButtonWidth = 60
            ButtonHeight = 40
            ShowButtonCaptions = True
            TextOptions = ttoShowTextLabels
            WrapControls = False
            BorderInner = fsNone
            BorderOuter = fsStatus
            BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
            BorderWidth = 0
            Color = clInactiveCaptionText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ToolbarControls = (
              BtnNew
              BtnSave
              BtnDelete
              RzSpacer1
              BtnRefresh
              RzSpacer3
              BtnRecycle
              RzSpacer2
              RzToolButton1)
            object BtnNew: TRzToolButton
              Left = 1
              Top = 1
              DisabledIndex = 1
              Layout = blGlyphTop
              Action = atnDosing_Add
            end
            object BtnSave: TRzToolButton
              Left = 61
              Top = 1
              DisabledIndex = 3
              Layout = blGlyphTop
              Action = atnDosing_Save
            end
            object BtnDelete: TRzToolButton
              Left = 121
              Top = 1
              DisabledIndex = 5
              Layout = blGlyphTop
              Action = atnDosing_Cancel
            end
            object RzSpacer1: TRzSpacer
              Left = 181
              Top = 9
              Grooved = True
            end
            object BtnRefresh: TRzToolButton
              Left = 189
              Top = 1
              DisabledIndex = 7
              Layout = blGlyphTop
              Action = atnDosing_Refresh
            end
            object RzSpacer3: TRzSpacer
              Left = 249
              Top = 9
              Grooved = True
            end
            object BtnRecycle: TRzToolButton
              Left = 257
              Top = 1
              DisabledIndex = 9
              Layout = blGlyphTop
              Action = atnDosing_Delete
            end
            object RzSpacer2: TRzSpacer
              Left = 317
              Top = 9
              Grooved = True
            end
            object RzToolButton1: TRzToolButton
              Left = 325
              Top = 1
              DropDownMenu = popPrintMenu
              Layout = blGlyphTop
              ToolStyle = tsDropDown
              Caption = 'Print...'
            end
          end
          object rzgRegimen: TRzGroupBox
            Left = 0
            Top = 396
            Width = 735
            Height = 228
            Align = alClient
            Caption = 'Regimen'
            Color = clInactiveCaptionText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744576
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object dxgRegimenDescription: TdxDBGrid
              Left = 1
              Top = 14
              Width = 733
              Height = 213
              Bands = <
                item
                  Caption = 'Product'
                  Width = 356
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'protocolProductID'
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
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = dsqryDosing
              Filter.Criteria = {00000000}
              HeaderColor = clInfoBk
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clInactiveCaption
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
              OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              RegistryPath = '\Software\RxSolution\1.2\Grids\Regimen\dxgRegimenDescription'
              object dxgRegimenDescriptiondescription_str: TdxDBGridColumn
                Caption = 'Description'
                DisableEditor = True
                Width = 717
                BandIndex = 0
                RowIndex = 0
                FieldName = 'description_str'
              end
              object dxgRegimenDescriptiondescriptionRange_Str: TdxDBGridColumn
                Caption = 'Range'
                DisableEditor = True
                Width = 436
                BandIndex = 0
                RowIndex = 0
                FieldName = 'descriptionRange_Str'
              end
              object dxgRegimenDescriptiondefaultDose_int: TdxDBGridMaskColumn
                Caption = 'Default'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'defaultDose_int'
              end
            end
          end
          object rzgRegimenDetail: TRzGroupBox
            Left = 0
            Top = 46
            Width = 735
            Height = 350
            Align = alTop
            Caption = 'Item detail'
            Color = clInactiveCaptionText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744576
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object RzGroupBox2: TRzGroupBox
              Left = 5
              Top = 170
              Width = 712
              Height = 41
              Caption = 'Force Rx Description'
              Color = clInactiveCaptionText
              TabOrder = 0
              object Label8: TLabel
                Left = 5
                Top = 15
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Rx'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RzDBEdit5: TRzDBEdit
                Left = 65
                Top = 15
                Width = 642
                Height = 21
                DataSource = dsqryDosing
                DataField = 'freeForm_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 0
              end
            end
            object RzGroupBox3: TRzGroupBox
              Left = 5
              Top = 212
              Width = 713
              Height = 129
              Caption = 'Dispense the following product...'
              Color = clInactiveCaptionText
              TabOrder = 1
              object Label6: TLabel
                Left = 5
                Top = 15
                Width = 65
                Height = 21
                AutoSize = False
                Caption = 'Product'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label9: TLabel
                Left = 5
                Top = 37
                Width = 65
                Height = 21
                AutoSize = False
                Caption = 'Items'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label10: TLabel
                Left = 267
                Top = 37
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Break'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label11: TLabel
                Left = 5
                Top = 59
                Width = 65
                Height = 21
                AutoSize = False
                Caption = 'Instruction'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label12: TLabel
                Left = 5
                Top = 81
                Width = 65
                Height = 21
                AutoSize = False
                Caption = 'Additional'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label13: TLabel
                Left = 5
                Top = 103
                Width = 65
                Height = 21
                AutoSize = False
                Caption = 'Warning'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label14: TLabel
                Left = 120
                Top = 37
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Packs'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RzDBLookupComboBox2: TRzDBLookupComboBox
                Left = 71
                Top = 15
                Width = 574
                Height = 21
                Ctl3D = False
                DataField = 'DefaultProductID'
                DataSource = dsqryDosing
                DropDownRows = 20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'productPackSize_ID'
                ListField = 'Description_str'
                ListSource = dsqryProductList
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object RzDBEdit7: TRzDBEdit
                Left = 71
                Top = 37
                Width = 48
                Height = 21
                DataSource = dsqryDosing
                DataField = 'productItemsToDispense_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 1
              end
              object RzDBCheckBox2: TRzDBCheckBox
                Left = 332
                Top = 37
                Width = 19
                Height = 17
                DataField = 'ProductBreakPack_bol'
                DataSource = dsqryDosing
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                HotTrack = True
                TabOrder = 2
              end
              object RzDBEdit8: TRzDBEdit
                Left = 71
                Top = 59
                Width = 629
                Height = 21
                DataSource = dsqryDosing
                DataField = 'productLabelInstruction_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit9: TRzDBEdit
                Left = 71
                Top = 81
                Width = 629
                Height = 21
                DataSource = dsqryDosing
                DataField = 'productLabelInstructionAdditional_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 4
              end
              object RzDBEdit10: TRzDBEdit
                Left = 71
                Top = 103
                Width = 280
                Height = 21
                DataSource = dsqryDosing
                DataField = 'productLabelWarning_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 5
              end
              object RzDBCheckBox3: TRzDBCheckBox
                Left = 651
                Top = 16
                Width = 46
                Height = 17
                DataField = 'usePreselectedProduct_bol'
                DataSource = dsqryDosing
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Use!'
                HotTrack = True
                TabOrder = 6
              end
              object RzDBLookupComboBox3: TRzDBLookupComboBox
                Left = 470
                Top = 103
                Width = 230
                Height = 21
                Ctl3D = False
                DataField = 'doseIndication_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'Description_str'
                ListField = 'Description_str'
                ListSource = dsqryIndication
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object RzDBEdit11: TRzDBEdit
                Left = 180
                Top = 37
                Width = 48
                Height = 21
                DataSource = dsqryDosing
                DataField = 'productPackToDispense_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 8
              end
              object RzDBLookupComboBox5: TRzDBLookupComboBox
                Left = 353
                Top = 103
                Width = 115
                Height = 21
                Ctl3D = False
                DataField = 'doseIndication_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'Description_str'
                ListField = 'ICode_str'
                ListSource = dsqryIndication
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 9
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
            end
            object RzGroupBox4: TRzGroupBox
              Left = 484
              Top = 16
              Width = 235
              Height = 153
              Caption = 'Anthropometric'
              Color = clInactiveCaptionText
              TabOrder = 2
              object Label3: TLabel
                Left = 5
                Top = 16
                Width = 97
                Height = 21
                AutoSize = False
                Caption = 'Weight Lo > Hi'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label4: TLabel
                Left = 5
                Top = 38
                Width = 97
                Height = 19
                AutoSize = False
                Caption = 'Age Lo > Hi'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label5: TLabel
                Left = 5
                Top = 63
                Width = 97
                Height = 20
                AutoSize = False
                Caption = 'Dose Mode'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label15: TLabel
                Left = 5
                Top = 126
                Width = 97
                Height = 21
                AutoSize = False
                Caption = 'Priority ranking'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RzDBEdit2: TRzDBEdit
                Left = 104
                Top = 16
                Width = 60
                Height = 21
                DataSource = dsqryDosing
                DataField = 'weightLo_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 0
              end
              object RzDBEdit1: TRzDBEdit
                Left = 170
                Top = 16
                Width = 60
                Height = 21
                DataSource = dsqryDosing
                DataField = 'weightHi_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 1
              end
              object RzDBEdit3: TRzDBEdit
                Left = 170
                Top = 38
                Width = 60
                Height = 21
                DataSource = dsqryDosing
                DataField = 'ageHi_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit4: TRzDBEdit
                Left = 104
                Top = 38
                Width = 60
                Height = 21
                DataSource = dsqryDosing
                DataField = 'ageLo_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 3
              end
              object RzDBComboBox1: TRzDBComboBox
                Left = 104
                Top = 126
                Width = 128
                Height = 21
                DataField = 'defaultDose_int'
                DataSource = dsqryDosing
                Style = csDropDownList
                Ctl3D = False
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 4
                Items.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 104
                Top = 57
                Width = 128
                Height = 66
                DataField = 'doseMode_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 16744576
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Total'
                  'Kg'
                  'M2')
                ParentFont = False
                TabOrder = 5
                Values.Strings = (
                  'T'
                  'K'
                  'M')
              end
            end
            object RzGroupBox5: TRzGroupBox
              Left = 5
              Top = 16
              Width = 476
              Height = 153
              Caption = 'Detail'
              Color = clInactiveCaptionText
              TabOrder = 3
              object lblRoute: TLabel
                Left = 5
                Top = 17
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Route'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label7: TLabel
                Left = 5
                Top = 39
                Width = 59
                Height = 19
                AutoSize = False
                Caption = 'Eccentric'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object lblDoseA: TLabel
                Left = 5
                Top = 59
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Dose'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label2: TLabel
                Left = 5
                Top = 81
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Unit'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object lblIntervalA: TLabel
                Left = 5
                Top = 103
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Interval'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object lblDuration: TLabel
                Left = 5
                Top = 125
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Duration'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object lblDoseB: TLabel
                Left = 230
                Top = 59
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Dose B'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object lblIntervalB: TLabel
                Left = 230
                Top = 81
                Width = 59
                Height = 21
                AutoSize = False
                Caption = 'Interval B'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object rzluRoute: TRzDBLookupComboBox
                Left = 65
                Top = 17
                Width = 164
                Height = 21
                Ctl3D = False
                DataField = 'routeRecommended_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'Code_str'
                ListField = 'Code_str'
                ListSource = dsqryRoute
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object RzDBCheckBox1: TRzDBCheckBox
                Left = 72
                Top = 40
                Width = 164
                Height = 17
                DataField = 'isEccentric_bol'
                DataSource = dsqryDosing
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'is dosing eccentric?'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                FrameController = rzcMain
                HotTrack = True
                ParentFont = False
                TabOrder = 1
                OnClick = RzDBCheckBox1Click
              end
              object RzDBEdit6: TRzDBEdit
                Left = 65
                Top = 59
                Width = 164
                Height = 21
                DataSource = dsqryDosing
                DataField = 'doseRecommendedA_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 2
              end
              object RzDBLookupComboBox1: TRzDBLookupComboBox
                Left = 65
                Top = 81
                Width = 164
                Height = 21
                Ctl3D = False
                DataField = 'doseUnit_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'abbreviation_Str'
                ListField = 'abbreviation_Str'
                ListSource = dsqryUnit
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object RzDBLookupComboBox4: TRzDBLookupComboBox
                Left = 65
                Top = 103
                Width = 164
                Height = 21
                Ctl3D = False
                DataField = 'intervalRecommendedA_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'abbreviation_Str'
                ListField = 'abbreviation_Str'
                ListSource = dsqryInterval
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object edtDuration: TRzDBEdit
                Left = 65
                Top = 125
                Width = 164
                Height = 21
                DataSource = dsqryDosing
                DataField = 'durationRecommended_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 5
              end
              object edtIntervalB: TRzDBLookupComboBox
                Left = 290
                Top = 81
                Width = 164
                Height = 21
                Ctl3D = False
                DataField = 'intervalRecommendedB_str'
                DataSource = dsqryDosing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'abbreviation_Str'
                ListField = 'abbreviation_Str'
                ListSource = dsqryInterval
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
              end
              object edtDoseB: TRzDBEdit
                Left = 290
                Top = 59
                Width = 164
                Height = 21
                DataSource = dsqryDosing
                DataField = 'doseRecommendedB_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                FramingPreference = fpCustomFraming
                ParentFont = False
                TabOrder = 7
              end
            end
          end
        end
        object tbsEvidence: TdxTabSheet
          Caption = 'Evidence'
          object RzLabel1: TRzLabel
            Left = 0
            Top = 0
            Width = 735
            Height = 21
            Align = alTop
            AutoSize = False
            Caption = 'Evidence'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744448
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clNavy
            ShadowDepth = 1
            TextStyle = tsShadow
          end
          object RzLabel2: TRzLabel
            Left = 0
            Top = 48
            Width = 297
            Height = 48
            Caption = 'Evidence Not Available at this time. '#13'Available soon.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744576
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            Blinking = True
          end
        end
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 0
        Width = 281
        Height = 647
        Align = alLeft
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RzLabel7: TRzLabel
          Left = 1
          Top = 14
          Width = 279
          Height = 21
          Align = alTop
          AutoSize = False
          Caption = 'Generic List'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object dxgRegimenGenericList: TdxDBGrid
          Left = 1
          Top = 35
          Width = 279
          Height = 611
          Bands = <
            item
              Caption = 'Product'
              Width = 356
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'GenericName_str'
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
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsqryGenericNames
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clInactiveCaption
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
          OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dxDBGridColumn4: TdxDBGridColumn
            Caption = 'Name'
            DisableEditor = True
            Sorted = csDown
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GenericName_str'
          end
        end
      end
    end
  end
  object rzcMain: TRzFrameController
    FrameHotTrack = True
    FrameStyle = fsNone
    FrameVisible = True
    FramingPreference = fpCustomFraming
    Left = 24
    Top = 16
  end
  object imgProtocols: TImageList
    Left = 56
    Top = 16
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2B200999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00FFFFCC00FFFFFF00CCCCFF00FFCCCC0099A8
      AC0080808000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC000000000000000000000000000000000000000000CCCCCC0099A8
      AC00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300CCCCFF00FF993300CC330000CC33
      0000B2B2B2008080800000000000000000000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000080808000999999009999
      9900B2B2B2008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC6600FF993300CC330000FF3333009999
      CC00CC330000B2B2B2008080800000000000000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C000B2B2B20080808000999999009999990099A8
      AC0099999900B2B2B20080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FFFF0000FFCC3300FF663300CCCCFF00FFFF
      FF00CC999900CC33000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000B2B2B20099A8AC0099999900000000000000
      0000999999009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC3300FF993300FF993300FF663300FFFF
      FF00CCCCFF00CC9999008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C00099A8AC008080800080808000999999000000
      0000000000009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300FFFFCC00FFFFFF00FFFFFF00CC00
      0000CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000000000000000000009999
      9900999999009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00CCCCFF00FFCC3300CCCCFF00CCFFFF00CCCC
      FF00FF000000CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000000000000000000099A8AC0000000000000000000000
      0000999999009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFFFFF00FFFFFF00FFCC3300FF993300FF666600FF33
      3300CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000000000000000000099A8AC0080808000808080009999
      9900999999009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00E5E5E500E5E5E500E5E5E500E5E5E500FF993300FF333300FF00
      0000FFCC6600CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC000000000000000000000000000000000080808000999999009999
      9900B2B2B2009999990080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009999990099A8AC00CCCC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCCCFF00CCCCCC00CCCC
      CC00CCCCCC00B2B2B2008080800066333300000000009999990099A8AC000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCCCC00B2B2B20080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCFFFF00646F
      7100333333006633330066333300646F71009966660099999900CCCCCC00FFFF
      FF00FFCCCC00B2B2B20080808000663333000000000099999900000000009999
      9900999999009999990099999900999999009999990099999900CCCCCC000000
      0000CCCCCC00B2B2B20080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCFFFF000066
      99009999CC00CCCCFF009999CC0066333300FFFFFF00CCCC9900CCCC9900646F
      7100B2B2B200CCCCCC0080808000663333000000000099999900000000009999
      990099A8AC000000000099A8AC009999990000000000C0C0C000C0C0C0009999
      9900B2B2B200CCCCCC0080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000066
      9900FFFFFF00CCCCFF00CCCCFF000033660066333300FFFFFF00FFFFCC00CCCC
      99006633330099A8AC0080808000663333000000000000000000999999009999
      990000000000000000000000000099999900999999000000000000000000C0C0
      C0009999990099A8AC0080808000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990000669900FFFFFF00003366000080800000CC660066333300FFFFFF006633
      3300003366009966660099666600000000000000000000000000000000009999
      9900999999000000000099999900999999009999990099999900000000009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006699009966660000CCCC003333330099666600663333009966
      6600996666000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900B2B2B2009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000000099999900E5E5
      E500CCCCCC009999990000000000000000000000000000000000000000000000
      000000000000CCCCCC0000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000009999
      9900E5E5E5009999990000000000000000000000000000000000000000000000
      0000CCCCCC00000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF00000099000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC009999990000000000000000000000000000000000CCCC
      CC009999990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000CCCCCC009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC009999990099999900999999000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000999999009999
      990000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC00000099000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000009999
      9900999999000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      00000000000099999900999999000000000000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC00000099000000000000000000000000000000000099999900E5E5
      E500CCCCCC009999990000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000CCCCCC009999
      9900CCCCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000999999009999
      9900999999009999990000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000999999000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E01FE01F00000000C007C7C700000000
      80038C8300000000800184010000000080008C30000000008000841800000000
      80008CE000000000800087700000000080008F00000000008000878000000000
      80009FC0000000008000A010000000008000A48000000000C000CE6000000000
      E001E42100000000F807F80700000000FFFFFFFFFFFFFFFFEFFDEFFDFFFFFFFF
      C7FFC7FFF0FFF0FFC3FBC3FBE0FFE0FFE3F7E3F7C0FFC0FFF1E7F1E783018301
      F8CFF8CF87018701FC1FFC1F8F818F81FE3FFE3F87818781FC1FFC1F82018201
      F8CFF8CFC001C001E1E7E1E7E039E039C3F3C3F3F07FF07FC7FDC7FDFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003C001C001
      C003DFFB80018001C003D00B80018001C003DFFB80018001C003D00B80018001
      C003DFFB80018001C003D00B80018001C003DFFB80018001C003D00B80018001
      C003DFFB80018001C003D04380018001C007DFD780018001C00FDFCF80018001
      C01FC01F80018001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object atnProtocols: TActionList
    Images = imgProtocols
    Left = 96
    Top = 16
    object atnDosing_Add: TAction
      Category = 'Protocol_Rx'
      Caption = 'Add...'
      ImageIndex = 0
      OnExecute = atnDosing_AddExecute
    end
    object atnDosing_Delete: TAction
      Category = 'Protocol_Rx'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnDosing_DeleteExecute
    end
    object atnDosing_Save: TAction
      Category = 'Protocol_Rx'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnDosing_SaveExecute
    end
    object atnDosing_Cancel: TAction
      Category = 'Protocol_Rx'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnDosing_CancelExecute
    end
    object atnDosing_Refresh: TAction
      Category = 'Protocol_Rx'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnDosing_RefreshExecute
    end
    object atnPrint_ListOf: TAction
      Caption = 'Print List...'
      OnExecute = atnPrint_ListOfExecute
    end
    object atnPrint_ListOfGeneric: TAction
      Caption = 'Print List of selected Generic...'
      OnExecute = atnPrint_ListOfGenericExecute
    end
    object atnPrint_ListOfSelectedItem: TAction
      Caption = 'Print selected line...'
      OnExecute = atnPrint_ListOfSelectedItemExecute
    end
  end
  object Timer1: TTimer
    Left = 136
    Top = 16
  end
  object conProductDosing: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Rxsolution_PietRetief;Data Source=sifis' +
      'om;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=CHEETAH;Use Encryption for Data=False;Tag wit' +
      'h column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 216
  end
  object qryGenericNames: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ProductGenericList_EDL')
    Left = 16
    Top = 248
  end
  object qryDosing: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    BeforePost = qryDosingBeforePost
    AfterPost = qryDosingAfterPost
    AfterScroll = qryDosingAfterScroll
    OnNewRecord = qryDosingNewRecord
    DataSource = dsqryGenericNames
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Acyclovir'
      end>
    SQL.Strings = (
      
        'select * from view_v01_Dosing_RxList where genericName_str = :Ge' +
        'nericName_str')
    Left = 16
    Top = 280
  end
  object qryRoute: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlkRoute order by code_str')
    Left = 16
    Top = 312
  end
  object qryInterval: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Interval'#39)
    Left = 16
    Top = 344
  end
  object qryUnit: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Unit'#39)
    Left = 16
    Top = 376
  end
  object qryIndication: TADOQuery
    Connection = conProductDosing
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ICD10_List_Active')
    Left = 16
    Top = 408
  end
  object dsqryIndication: TDataSource
    DataSet = qryIndication
    Left = 48
    Top = 408
  end
  object dsqryUnit: TDataSource
    DataSet = qryUnit
    Left = 48
    Top = 376
  end
  object dsqryInterval: TDataSource
    DataSet = qryInterval
    Left = 48
    Top = 344
  end
  object dsqryRoute: TDataSource
    DataSet = qryRoute
    Left = 48
    Top = 312
  end
  object dsqryDosing: TDataSource
    DataSet = qryDosing
    Left = 48
    Top = 280
  end
  object dsqryGenericNames: TDataSource
    DataSet = qryGenericNames
    Left = 48
    Top = 248
  end
  object qryProductList: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    DataSource = dsqryGenericNames
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from view_v01_Dosing_ProductList  where GenericName_str' +
        ' = :GenericName_str'
      '')
    Left = 16
    Top = 440
  end
  object dsqryProductList: TDataSource
    DataSet = qryProductList
    Left = 48
    Top = 440
  end
  object popPrintMenu: TPopupMenu
    Left = 168
    Top = 16
    object PrintList1: TMenuItem
      Action = atnPrint_ListOf
    end
    object PrintListofselectedGeneric1: TMenuItem
      Action = atnPrint_ListOfGeneric
    end
    object Printselectedline1: TMenuItem
      Action = atnPrint_ListOfSelectedItem
    end
  end
  object qryProtocols: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_Protocol_List')
    Left = 16
    Top = 472
  end
  object dsqryProtocols: TDataSource
    DataSet = qryProtocols
    Left = 48
    Top = 472
  end
end

object ProtocolsFrm: TProtocolsFrm
  Left = -48
  Top = 99
  Width = 973
  Height = 747
  Caption = 'ProtocolsFrm'
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
    Width = 965
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      965
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1204
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
      Caption = 'Protocols'
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
    Width = 965
    Height = 658
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object pnl_Main_Blue: TPanel
      Left = 4
      Top = 45
      Width = 1605
      Height = 897
      BevelOuter = bvNone
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblProtocolName: TRzDBLabel
        Left = 384
        Top = 30
        Width = 469
        Height = 31
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clNavy
        ShadowDepth = 1
        TextStyle = tsShadow
        DataField = 'protocolName_str'
        DataSource = dsqryProtocols
      end
      object RzLabel9: TRzLabel
        Left = 5
        Top = 5
        Width = 244
        Height = 21
        AutoSize = False
        Caption = 'Protocol List'
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
      object lblProtocolDetail: TRzLabel
        Left = 253
        Top = 5
        Width = 604
        Height = 21
        AutoSize = False
        Caption = 'Protocol Detail'
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
      object RzDBLabel1: TRzDBLabel
        Left = 253
        Top = 30
        Width = 132
        Height = 31
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clNavy
        ShadowDepth = 1
        TextStyle = tsShadow
        DataField = 'protocolCode_str'
        DataSource = dsqryProtocols
      end
      object rzgProtocol: TRzGroupBox
        Left = 253
        Top = 61
        Width = 604
        Height = 80
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblProtocolEdit: TLabel
          Left = 106
          Top = 10
          Width = 150
          Height = 21
          AutoSize = False
          Caption = 'Name'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 10
          Width = 100
          Height = 21
          AutoSize = False
          Caption = 'Code'
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
          Top = 54
          Width = 100
          Height = 21
          AutoSize = False
          Caption = 'Indication'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edtProtovolName: TRzDBEdit
          Left = 106
          Top = 32
          Width = 150
          Height = 21
          DataSource = dsqryProtocols
          DataField = 'protocolName_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 0
        end
        object RzDBEdit2: TRzDBEdit
          Left = 5
          Top = 32
          Width = 100
          Height = 21
          DataSource = dsqryProtocols
          DataField = 'protocolCode_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 1
        end
        object rzlIndication: TRzDBLookupComboBox
          Left = 210
          Top = 54
          Width = 191
          Height = 21
          Ctl3D = False
          DataField = 'protocolIndication_str'
          DataSource = dsqryProtocols
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Description_str'
          ListField = 'Description_str'
          ListSource = dsqryIndication
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          FrameController = rzcMain
          FramingPreference = fpCustomFraming
        end
        object rzlIndicationCode: TRzDBLookupComboBox
          Left = 106
          Top = 54
          Width = 103
          Height = 21
          Ctl3D = False
          DataField = 'protocolIndication_str'
          DataSource = dsqryProtocols
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Description_str'
          ListField = 'ICode_str'
          ListSource = dsqryIndication
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          FrameController = rzcMain
          FramingPreference = fpCustomFraming
        end
      end
      object pgeDetail: TdxPageControl
        Left = 253
        Top = 144
        Width = 732
        Height = 513
        ActivePage = tbsRegimenDetail
        HideButtons = False
        HotTrack = False
        MultiLine = True
        OwnerDraw = False
        RaggedRight = True
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 1
        TabPosition = dxtpBottom
        TabWidth = 0
        object tbsRegimenDetail: TdxTabSheet
          Caption = 'Regimen'
          object lblProtocolRegimen: TRzLabel
            Left = 0
            Top = 0
            Width = 732
            Height = 21
            Align = alTop
            AutoSize = False
            Caption = 'Detail'
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
          object RzToolbar1: TRzToolbar
            Left = 0
            Top = 21
            Width = 732
            Height = 42
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
              BtnRecycle)
            object BtnNew: TRzToolButton
              Left = 1
              Top = 1
              DisabledIndex = 1
              Layout = blGlyphTop
              Action = atnProtocolRx_Add
            end
            object BtnSave: TRzToolButton
              Left = 61
              Top = 1
              DisabledIndex = 3
              Layout = blGlyphTop
              Action = atnProtocolRx_Save
            end
            object BtnDelete: TRzToolButton
              Left = 121
              Top = 1
              DisabledIndex = 5
              Layout = blGlyphTop
              Action = atnProtocolRx_Cancel
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
              Action = atnProtocolRx_Refresh
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
              Action = atnProtocolRx_Delete
            end
          end
          object rzgRegimen: TRzGroupBox
            Left = 0
            Top = 63
            Width = 382
            Height = 427
            Align = alLeft
            Caption = 'Regimen'
            Color = clInactiveCaptionText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744576
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object grdProtocolProduct: TdxDBGrid
              Left = 1
              Top = 14
              Width = 380
              Height = 412
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
              DataSource = dsqryProtocolProduct
              Filter.Criteria = {00000000}
              HeaderColor = clInfoBk
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clInactiveCaption
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              LookAndFeel = lfFlat
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
              OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              object grdProtocolProductdescription_str: TdxDBGridColumn
                Caption = 'Description'
                DisableEditor = True
                BandIndex = 0
                RowIndex = 0
                FieldName = 'description_str'
              end
            end
          end
          object rzgRegimenDetail: TRzGroupBox
            Left = 382
            Top = 63
            Width = 350
            Height = 427
            Align = alClient
            Caption = 'Regimen Detail'
            Color = clInactiveCaptionText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744576
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label8: TLabel
              Left = 5
              Top = 15
              Width = 59
              Height = 21
              AutoSize = False
              Caption = 'Generic'
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
            object lblRoute: TLabel
              Left = 5
              Top = 169
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
            object lblDuration: TLabel
              Left = 5
              Top = 191
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
              Left = 5
              Top = 125
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
              Left = 5
              Top = 147
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
            object lblDosing: TLabel
              Left = 5
              Top = 213
              Width = 59
              Height = 39
              AutoSize = False
              Caption = 'Dose Mode'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label7: TLabel
              Left = 5
              Top = 37
              Width = 59
              Height = 21
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
            object lblDailyDose: TLabel
              Left = 5
              Top = 253
              Width = 59
              Height = 21
              AutoSize = False
              Caption = 'Daily Dose'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object lblDailyDoseUnit: TRzDBLabel
              Left = 130
              Top = 253
              Width = 42
              Height = 21
              Color = 16383986
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ShadowDepth = 1
              TextStyle = tsShadow
              DataField = 'doseUnit_str'
              DataSource = dsqryProtocolProduct
            end
            object lblDisplayUnit: TLabel
              Left = 173
              Top = 256
              Width = 33
              Height = 13
              Caption = '/ Day'
            end
            object lblProducts: TLabel
              Left = 5
              Top = 275
              Width = 59
              Height = 21
              AutoSize = False
              Caption = 'Product'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object RzDBLookupComboBox3: TRzDBLookupComboBox
              Left = 65
              Top = 15
              Width = 150
              Height = 21
              Ctl3D = False
              DataField = 'genericName_str'
              DataSource = dsqryProtocolProduct
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'genericName_Str'
              ListField = 'genericName_Str'
              ListSource = dsqrySysProductGenericNames
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              FrameController = rzcMain
              FramingPreference = fpCustomFraming
            end
            object RzDBEdit6: TRzDBEdit
              Left = 65
              Top = 59
              Width = 150
              Height = 21
              DataSource = dsqryProtocolProduct
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
              Width = 150
              Height = 21
              Ctl3D = False
              DataField = 'doseUnit_str'
              DataSource = dsqryProtocolProduct
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
              Width = 150
              Height = 21
              Ctl3D = False
              DataField = 'intervalRecommendedA_str'
              DataSource = dsqryProtocolProduct
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
            object rzluRoute: TRzDBLookupComboBox
              Left = 65
              Top = 169
              Width = 150
              Height = 21
              Ctl3D = False
              DataField = 'routeRecommended_str'
              DataSource = dsqryProtocolProduct
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
              TabOrder = 7
              FrameController = rzcMain
              FramingPreference = fpCustomFraming
            end
            object edtDuration: TRzDBEdit
              Left = 65
              Top = 191
              Width = 150
              Height = 21
              DataSource = dsqryProtocolProduct
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
              TabOrder = 8
            end
            object RzDBCheckBox1: TRzDBCheckBox
              Left = 65
              Top = 38
              Width = 153
              Height = 17
              DataField = 'isEccentric_bol'
              DataSource = dsqryProtocolProduct
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
            object edtDoseB: TRzDBEdit
              Left = 65
              Top = 125
              Width = 150
              Height = 21
              DataSource = dsqryProtocolProduct
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
              TabOrder = 5
            end
            object edtIntervalB: TRzDBLookupComboBox
              Left = 65
              Top = 147
              Width = 150
              Height = 21
              Ctl3D = False
              DataField = 'intervalRecommendedB_str'
              DataSource = dsqryProtocolProduct
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
            object rzgrDosing: TRzDBRadioGroup
              Left = 65
              Top = 213
              Width = 151
              Height = 39
              DataField = 'dosePerDayType_int'
              DataSource = dsqryProtocolProduct
              Items.Strings = (
                'M'#178' per day'
                'Kg per day')
              Values.Strings = (
                '0'
                '1')
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              GroupStyle = gsCustom
              ParentFont = False
              TabOrder = 9
              TabStop = True
            end
            object edtDailyDose: TRzDBEdit
              Left = 65
              Top = 253
              Width = 64
              Height = 21
              DataSource = dsqryProtocolProduct
              DataField = 'dosePerDayValue_dbl'
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FrameController = rzcMain
              FramingPreference = fpCustomFraming
              ParentFont = False
              TabOrder = 10
            end
            object rzcProductList: TRzDBLookupComboBox
              Left = 65
              Top = 275
              Width = 148
              Height = 21
              Ctl3D = False
              DataField = 'productID'
              DataSource = dsqryProtocolProduct
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
              TabOrder = 11
              FrameController = rzcMain
              FramingPreference = fpCustomFraming
            end
          end
        end
        object tbsEvidence: TdxTabSheet
          Caption = 'Evidence'
          object RzLabel1: TRzLabel
            Left = 0
            Top = 0
            Width = 732
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
      object grdProtocols: TDBGrid
        Left = 6
        Top = 30
        Width = 243
        Height = 120
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsqryProtocols
        Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentCtl3D = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 16744576
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'protocolName_str'
            Width = 225
            Visible = True
          end>
      end
    end
    object RzToolbar2: TRzToolbar
      Left = 0
      Top = 0
      Width = 965
      Height = 42
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
      TabOrder = 1
      ToolbarControls = (
        RzToolButton1
        RzToolButton3
        RzToolButton4
        RzSpacer2
        RzToolButton5
        RzSpacer4
        RzToolButton2)
      object RzToolButton1: TRzToolButton
        Left = 1
        Top = 1
        DisabledIndex = 1
        Layout = blGlyphTop
        Action = atnProtocol_Add
      end
      object RzToolButton2: TRzToolButton
        Left = 257
        Top = 1
        DisabledIndex = 9
        Layout = blGlyphTop
        Action = atnProtocol_Delete
      end
      object RzToolButton3: TRzToolButton
        Left = 61
        Top = 1
        DisabledIndex = 3
        Layout = blGlyphTop
        Action = atnProtocol_Save
      end
      object RzToolButton4: TRzToolButton
        Left = 121
        Top = 1
        DisabledIndex = 5
        Layout = blGlyphTop
        Action = atnProtocol_Cancel
      end
      object RzSpacer2: TRzSpacer
        Left = 181
        Top = 9
        Grooved = True
      end
      object RzToolButton5: TRzToolButton
        Left = 189
        Top = 1
        DisabledIndex = 7
        Layout = blGlyphTop
        Action = atnProtocol_Refresh
      end
      object RzSpacer4: TRzSpacer
        Left = 249
        Top = 9
        Grooved = True
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
    object atnProtocolRx_Add: TAction
      Category = 'Protocol_Rx'
      Caption = 'Add...'
      ImageIndex = 0
      OnExecute = atnProtocolRx_AddExecute
    end
    object atnProtocolRx_Delete: TAction
      Category = 'Protocol_Rx'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnProtocolRx_DeleteExecute
    end
    object atnProtocolRx_Save: TAction
      Category = 'Protocol_Rx'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnProtocolRx_SaveExecute
    end
    object atnProtocolRx_Cancel: TAction
      Category = 'Protocol_Rx'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnProtocolRx_CancelExecute
    end
    object atnProtocolRx_Refresh: TAction
      Category = 'Protocol_Rx'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnProtocolRx_RefreshExecute
    end
    object atnProtocol_Delete: TAction
      Category = 'Protocol'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnProtocol_DeleteExecute
    end
    object atnProtocol_Add: TAction
      Category = 'Protocol'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = atnProtocol_AddExecute
    end
    object atnProtocol_Cancel: TAction
      Category = 'Protocol'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnProtocol_CancelExecute
    end
    object atnProtocol_Save: TAction
      Category = 'Protocol'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnProtocol_SaveExecute
    end
    object atnProtocol_Refresh: TAction
      Category = 'Protocol'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnProtocol_RefreshExecute
    end
  end
  object Timer1: TTimer
    Left = 136
    Top = 16
  end
  object conProtocols: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxSolution;Data Source=cougar'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 240
  end
  object qryProtocols: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    OnNewRecord = qryProtocolsNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from tblProtocol order by protocolCode_str')
    Left = 24
    Top = 272
  end
  object qryProtocolProduct: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    BeforePost = qryProtocolProductBeforePost
    AfterPost = qryProtocolProductAfterPost
    AfterScroll = qryProtocolProductAfterScroll
    OnNewRecord = qryProtocolProductNewRecord
    DataSource = dsqryProtocols
    Parameters = <
      item
        Name = 'protocolID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{4DF76D49-5336-4045-9273-7ED83BDA5D25}'
      end>
    SQL.Strings = (
      'select * from tblProtocolProduct where protocolID = :protocolID')
    Left = 24
    Top = 304
  end
  object qryRoute: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlkRoute order by code_str')
    Left = 24
    Top = 336
  end
  object qryInterval: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Interval'#39)
    Left = 24
    Top = 368
  end
  object qryUnit: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Unit'#39)
    Left = 24
    Top = 400
  end
  object qrySysProductGenericNames: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblGenericName  order by genericName_Str '
      '')
    Left = 24
    Top = 435
  end
  object qryIndication: TADOQuery
    Connection = conProtocols
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ICD10_List_Active')
    Left = 24
    Top = 472
  end
  object dsqryIndication: TDataSource
    DataSet = qryIndication
    Left = 56
    Top = 472
  end
  object dsqrySysProductGenericNames: TDataSource
    DataSet = qrySysProductGenericNames
    Left = 56
    Top = 435
  end
  object dsqryUnit: TDataSource
    DataSet = qryUnit
    Left = 56
    Top = 400
  end
  object dsqryInterval: TDataSource
    DataSet = qryInterval
    Left = 56
    Top = 368
  end
  object dsqryRoute: TDataSource
    DataSet = qryRoute
    Left = 56
    Top = 336
  end
  object dsqryProtocolProduct: TDataSource
    DataSet = qryProtocolProduct
    Left = 56
    Top = 304
  end
  object dsqryProtocols: TDataSource
    DataSet = qryProtocols
    Left = 56
    Top = 272
  end
  object qryProductList: TADOQuery
    Connection = conProtocols
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_Dosing_ProductList ')
    Left = 24
    Top = 504
  end
  object dsqryProductList: TDataSource
    DataSet = qryProductList
    Left = 56
    Top = 504
  end
end

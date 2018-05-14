object frmeProducts: TfrmeProducts
  Left = 0
  Top = 0
  Width = 1274
  Height = 769
  TabOrder = 0
  OnResize = FrameResize
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1274
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      1274
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1513
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
      Caption = 'Products'
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
  object Panel2: TPanel
    Left = 0
    Top = 55
    Width = 1274
    Height = 714
    Align = alClient
    TabOrder = 1
    object pnl_Main_Back: TPanel
      Left = 1
      Top = 1
      Width = 1272
      Height = 712
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 0
      object pnl_Main_Blue: TPanel
        Left = 36
        Top = 45
        Width = 1237
        Height = 838
        BevelOuter = bvNone
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblGenericList: TRzLabel
          Left = 5
          Top = 5
          Width = 200
          Height = 21
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
        object lblGenericDetail: TRzLabel
          Left = 210
          Top = 5
          Width = 604
          Height = 21
          AutoSize = False
          Caption = 'Product Detail'
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
        object lblGenericName: TRzDBLabel
          Left = 210
          Top = 30
          Width = 436
          Height = 35
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
          DataField = 'genericName_Str'
          DataSource = dsqrySysProductGenericNames
        end
        object grdGenericName: TdxDBGrid
          Left = 5
          Top = 32
          Width = 200
          Height = 273
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'genericName_Str'
          SummaryGroups = <>
          SummarySeparator = ', '
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
          DataSource = dsqrySysProductGenericNames
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
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object grdGenericNamegenericName_Str: TdxDBGridColumn
            Caption = 'Generic products'
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'genericName_Str'
          end
        end
        object pgeDetail: TdxPageControl
          Left = 210
          Top = 69
          Width = 887
          Height = 548
          ActivePage = tbsProductList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          ParentFont = False
          RaggedRight = True
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 1
          TabPosition = dxtpBottom
          TabWidth = 0
          object tbsProductList: TdxTabSheet
            Caption = 'Products'
            object lblSelectedProductName: TRzDBLabel
              Left = 350
              Top = 66
              Width = 350
              Height = 19
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 12615680
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ShadowColor = clGray
              ShadowDepth = 1
              TextStyle = tsShadow
              DataField = 'Description_str'
              DataSource = dsqrySysProductProducts
            end
            object lblProductList: TRzLabel
              Left = 2
              Top = 43
              Width = 343
              Height = 21
              AutoSize = False
              Caption = 'Products'
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
            object lblSelectedProductDetail: TRzLabel
              Left = 350
              Top = 43
              Width = 350
              Height = 21
              AutoSize = False
              Caption = 'Selected Product Detail'
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
            object rzgPackDetail: TRzGroupBox
              Left = 350
              Top = 85
              Width = 350
              Height = 152
              Caption = 'Packing Information'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label3: TLabel
                Left = 169
                Top = 15
                Width = 176
                Height = 21
                Alignment = taCenter
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
                Top = 15
                Width = 55
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'ECN'
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
                Left = 169
                Top = 59
                Width = 90
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Route'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label24: TLabel
                Left = 260
                Top = 59
                Width = 85
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Rx Level'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label15: TLabel
                Left = 260
                Top = 103
                Width = 85
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Pack Cost'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label19: TLabel
                Left = 5
                Top = 59
                Width = 75
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Strength'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label10: TLabel
                Left = 81
                Top = 59
                Width = 87
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Unit'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label21: TLabel
                Left = 169
                Top = 103
                Width = 90
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Pack Type'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label22: TLabel
                Left = 81
                Top = 103
                Width = 87
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Pack Unit'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label16: TLabel
                Left = 5
                Top = 103
                Width = 75
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Pack Size'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBLabel3: TRzDBLabel
                Left = 169
                Top = 37
                Width = 176
                Height = 21
                Color = 16383986
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ShadowDepth = 1
                TextStyle = tsShadow
                DataField = 'GenericName_str'
                DataSource = dsqrySysProductProducts
              end
              object Label20: TLabel
                Left = 61
                Top = 15
                Width = 55
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'ICN'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label27: TLabel
                Left = 117
                Top = 15
                Width = 51
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'NSN'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RzDBEdit24: TRzDBEdit
                Left = 260
                Top = 81
                Width = 85
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'rxLevel_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit10: TRzDBEdit
                Left = 5
                Top = 81
                Width = 75
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'StrengthValue_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 0
              end
              object RzDBComboBox3: TRzDBComboBox
                Left = 169
                Top = 125
                Width = 90
                Height = 21
                DataField = 'PackSizeUnit_str'
                DataSource = dsqrySysProductProducts
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ItemHeight = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                Items.Strings = (
                  'bottle'
                  'vial'
                  'ampule'
                  'tube'
                  'packet'
                  'box'
                  'container'
                  'PRP')
              end
              object RzDBEdit7: TRzDBEdit
                Left = 5
                Top = 125
                Width = 75
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'PackSizeValue_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 4
              end
              object RzDBLookupComboBox4: TRzDBLookupComboBox
                Left = 81
                Top = 81
                Width = 87
                Height = 21
                Ctl3D = False
                DataField = 'StrengthUnit_Str'
                DataSource = dsqrySysProductProducts
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
                TabOrder = 1
                FrameController = rzcMain
              end
              object RzDBLookupComboBox5: TRzDBLookupComboBox
                Left = 81
                Top = 125
                Width = 87
                Height = 21
                Ctl3D = False
                DataField = 'DispensingUnit_str'
                DataSource = dsqrySysProductProducts
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'abbreviation_Str'
                ListField = 'abbreviation_Str'
                ListSource = dsqryUnit2
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
                FrameController = rzcMain
              end
              object RzDBLookupComboBox6: TRzDBLookupComboBox
                Left = 169
                Top = 81
                Width = 90
                Height = 21
                Ctl3D = False
                DataField = 'Route_str'
                DataSource = dsqrySysProductProducts
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
                TabOrder = 2
                FrameController = rzcMain
              end
              object RzDBNumericEdit1: TRzDBNumericEdit
                Left = 260
                Top = 125
                Width = 85
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'Cost_mon'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 7
                IntegersOnly = False
                DisplayFormat = 'R #0.00;(R #0.00)'
              end
              object RzDBEdit1: TRzDBEdit
                Left = 5
                Top = 37
                Width = 55
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'ECN_str'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 8
              end
              object RzDBEdit2: TRzDBEdit
                Left = 61
                Top = 37
                Width = 55
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'ICN_str'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 9
              end
              object RzDBEdit3: TRzDBEdit
                Left = 117
                Top = 37
                Width = 51
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'NSN_str'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 10
              end
            end
            object rzgDispensingData: TRzGroupBox
              Left = 350
              Top = 238
              Width = 350
              Height = 127
              Caption = 'Dispensing Data'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object Label18: TLabel
                Left = 5
                Top = 35
                Width = 103
                Height = 43
                Alignment = taCenter
                AutoSize = False
                Caption = 'or One Strength unit'#13'is equal to ?'#13'pack units'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label26: TLabel
                Left = 109
                Top = 35
                Width = 138
                Height = 43
                Alignment = taCenter
                AutoSize = False
                Caption = 'Administration is '#13'done using '#13'(1xdispensing unit)'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label28: TLabel
                Left = 248
                Top = 35
                Width = 98
                Height = 43
                Alignment = taCenter
                AutoSize = False
                Caption = 'One administration unit '#13'is equal to ? '#13'strength units'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBLabel5: TRzDBLabel
                Left = 284
                Top = 79
                Width = 62
                Height = 21
                Color = 16383986
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ShadowDepth = 1
                TextStyle = tsShadow
                DataField = 'DispensingUnit_str'
                DataSource = dsqrySysProductProducts
              end
              object RzDBLabel6: TRzDBLabel
                Left = 42
                Top = 79
                Width = 66
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
                DataField = 'DispensingUnit_str'
                DataSource = dsqrySysProductProducts
              end
              object Label17: TLabel
                Left = 5
                Top = 101
                Width = 103
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Administration Form'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBLabel4: TRzDBLabel
                Left = 4
                Top = 14
                Width = 64
                Height = 19
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ShadowColor = clGray
                ShadowDepth = 1
                TextStyle = tsShadow
                DataField = 'StrengthValue_dbl'
                DataSource = dsqrySysProductProducts
              end
              object RzDBLabel7: TRzDBLabel
                Left = 70
                Top = 14
                Width = 37
                Height = 19
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ShadowColor = clGray
                ShadowDepth = 1
                TextStyle = tsShadow
                DataField = 'StrengthUnit_Str'
                DataSource = dsqrySysProductProducts
              end
              object RzDBEdit13: TRzDBEdit
                Left = 5
                Top = 79
                Width = 36
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'DispensingValue_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 0
              end
              object RzDBComboBox2: TRzDBComboBox
                Left = 109
                Top = 79
                Width = 138
                Height = 21
                DataField = 'dispensedUnit_str'
                DataSource = dsqrySysProductProducts
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ItemHeight = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                Items.Strings = (
                  'ml'
                  'capsule'
                  'tablet'
                  'medicine measure'
                  'teaspoon')
              end
              object RzDBEdit25: TRzDBEdit
                Left = 249
                Top = 79
                Width = 35
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'dispensedValue_dbl'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 2
              end
              object RzDBComboBox1: TRzDBComboBox
                Left = 110
                Top = 101
                Width = 235
                Height = 21
                DataField = 'dispensingForm_str'
                DataSource = dsqrySysProductProducts
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ItemHeight = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                Items.Strings = (
                  'liquid'
                  'solid'
                  'semi solid')
              end
              object DBCheckBox1: TDBCheckBox
                Left = 112
                Top = 13
                Width = 233
                Height = 17
                Alignment = taLeftJustify
                Caption = 'Can you break this administration unit?'
                DataField = 'canBreakUnit'
                DataSource = dsqrySysProductProducts
                TabOrder = 4
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object rzgOther: TRzGroupBox
              Left = 350
              Top = 366
              Width = 350
              Height = 64
              Caption = 'Other'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object RzDBLabel2: TRzDBLabel
                Left = 81
                Top = 37
                Width = 264
                Height = 21
                Color = 16383986
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ShadowDepth = 1
                TextStyle = tsShadow
                DataField = 'packDescription_Str'
                DataSource = dsqrySysProductProducts
              end
              object Label29: TLabel
                Left = 5
                Top = 15
                Width = 75
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Manual Desc.'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label25: TLabel
                Left = 5
                Top = 37
                Width = 75
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Label Display'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBEdit9: TRzDBEdit
                Left = 81
                Top = 15
                Width = 264
                Height = 21
                DataSource = dsqrySysProductProducts
                DataField = 'strengthExtraDescription_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 0
              end
            end
            object rzgProducts: TRzGroupBox
              Left = 2
              Top = 66
              Width = 344
              Height = 422
              Caption = 'Products'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object grdProductList: TdxDBGrid
                Left = 1
                Top = 15
                Width = 342
                Height = 406
                Bands = <
                  item
                    Caption = 'Strength'
                    Width = 101
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'productPackSize_ID'
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
                DataSource = dsqrySysProductProducts
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdProductListDescription_str: TdxDBGridMaskColumn
                  Caption = 'Pack Description'
                  DisableEditor = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Description_str'
                end
              end
            end
            object rztGenericProducts: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
              BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
              BorderWidth = 0
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              ToolbarControls = (
                RzToolButton1
                RzToolButton2
                RzToolButton26
                RzToolButton3
                RzSpacer1
                RzToolButton4
                RzSpacer2
                RzToolButton5
                RzSpacer11
                RzMenuButton1)
              object RzToolButton1: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 1
                Layout = blGlyphTop
                Action = atnProduct_Add
              end
              object RzToolButton2: TRzToolButton
                Left = 61
                Top = 0
                Layout = blGlyphTop
                Action = atnProduct_Save
              end
              object RzToolButton3: TRzToolButton
                Left = 192
                Top = 0
                Layout = blGlyphTop
                Action = atnProduct_Cancel
              end
              object RzSpacer1: TRzSpacer
                Left = 252
                Top = 8
              end
              object RzToolButton4: TRzToolButton
                Left = 260
                Top = 0
                Layout = blGlyphTop
                Action = atnProduct_Delete
              end
              object RzSpacer2: TRzSpacer
                Left = 320
                Top = 8
              end
              object RzToolButton5: TRzToolButton
                Left = 328
                Top = 0
                Layout = blGlyphTop
                Action = atnProduct_Refresh
              end
              object RzSpacer11: TRzSpacer
                Left = 388
                Top = 8
              end
              object RzToolButton26: TRzToolButton
                Left = 121
                Top = 0
                Layout = blGlyphTop
                Action = atnProduct_UpdatePackDescription
              end
              object RzMenuButton1: TRzMenuButton
                Left = 396
                Top = 8
                Caption = 'Generic Display'
                HotTrack = True
                TabOrder = 0
                DropDownMenu = PopupMenu1
              end
            end
          end
          object tbsDosing: TdxTabSheet
            Caption = 'Dosing Parameters'
            object lblDosingParameters: TRzLabel
              Left = 0
              Top = 43
              Width = 343
              Height = 21
              AutoSize = False
              Caption = 'Dosing Parameter List'
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
            object lblDosingParameterDetail: TRzLabel
              Left = 494
              Top = 43
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Dosing Parameter Details'
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
            object lblDosingParameterDetailEvidence: TRzLabel
              Left = 494
              Top = 245
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Evidence'
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
            object rzgDosingParameterDetail: TRzGroupBox
              Left = 494
              Top = 65
              Width = 250
              Height = 175
              Caption = 'Dose Detail'
              Color = clInactiveCaptionText
              TabOrder = 0
              object Label1: TLabel
                Left = 5
                Top = 37
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Age [High]'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label2: TLabel
                Left = 5
                Top = 15
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Age [Low]'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label4: TLabel
                Left = 5
                Top = 59
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Route'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label5: TLabel
                Left = 5
                Top = 81
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Unit'
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
                Top = 103
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Dose [Rec]'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label8: TLabel
                Left = 5
                Top = 125
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Dose [Low]'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label9: TLabel
                Left = 5
                Top = 147
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Dose [High]'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBEdit11: TRzDBEdit
                Left = 66
                Top = 37
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'AgeHi_Int'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 0
              end
              object RzDBEdit14: TRzDBEdit
                Left = 66
                Top = 15
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'AgeLo_Int'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 1
              end
              object RzDBEdit15: TRzDBEdit
                Left = 66
                Top = 59
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'Route_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit16: TRzDBEdit
                Left = 66
                Top = 81
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'DoseUnit_str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit17: TRzDBEdit
                Left = 66
                Top = 103
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'Dose_Int'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 4
              end
              object RzDBEdit18: TRzDBEdit
                Left = 66
                Top = 125
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'DoseLo_Int'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 5
              end
              object RzDBEdit19: TRzDBEdit
                Left = 66
                Top = 147
                Width = 68
                Height = 21
                DataSource = dsqrySysProductDosingParameters
                DataField = 'DoseHi_Int'
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 6
              end
            end
            object rzgDosingParameters: TRzGroupBox
              Left = 0
              Top = 65
              Width = 441
              Height = 584
              Caption = 'Dosing'
              Color = clInactiveCaptionText
              TabOrder = 1
              object grdProductDosing: TdxDBGrid
                Left = 1
                Top = 15
                Width = 439
                Height = 568
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'AutoID'
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
                DataSource = dsqrySysProductDosingParameters
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = [fsBold]
                LookAndFeel = lfFlat
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdProductDosingAgeLo_Int: TdxDBGridMaskColumn
                  Caption = 'Age Lo'
                  Width = 37
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AgeLo_Int'
                end
                object grdProductDosingAgeHi_Int: TdxDBGridMaskColumn
                  Caption = 'Age Hi'
                  Width = 46
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AgeHi_Int'
                end
                object grdProductDosingRoute_Str: TdxDBGridColumn
                  Caption = 'Route'
                  Width = 43
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Route_Str'
                end
                object grdProductDosingDoseUnit_str: TdxDBGridColumn
                  Caption = 'Unit'
                  Width = 39
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DoseUnit_str'
                end
                object grdProductDosingDose_Int: TdxDBGridMaskColumn
                  Caption = 'Dose'
                  Width = 40
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Dose_Int'
                end
                object grdProductDosingDoseLo_Int: TdxDBGridMaskColumn
                  Caption = 'Lo'
                  Width = 27
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DoseLo_Int'
                end
                object grdProductDosingDoseHi_Int: TdxDBGridMaskColumn
                  Caption = 'Hi'
                  Width = 26
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DoseHi_Int'
                end
              end
            end
            object RzToolbar1: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
              BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
              BorderWidth = 0
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              ToolbarControls = (
                RzToolButton6
                RzToolButton7
                RzToolButton8
                RzSpacer3
                RzToolButton9
                RzSpacer4
                RzToolButton10)
              object RzToolButton6: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 1
                Layout = blGlyphTop
                Action = atnDosing_Add
              end
              object RzToolButton7: TRzToolButton
                Left = 61
                Top = 0
                DisabledIndex = 3
                Layout = blGlyphTop
                Action = atnDosing_Save
              end
              object RzToolButton8: TRzToolButton
                Left = 121
                Top = 0
                DisabledIndex = 5
                Layout = blGlyphTop
                Action = atnDosing_Cancel
              end
              object RzSpacer3: TRzSpacer
                Left = 181
                Top = 8
              end
              object RzToolButton9: TRzToolButton
                Left = 189
                Top = 0
                DisabledIndex = 9
                Layout = blGlyphTop
                Action = atnDosing_Delete
              end
              object RzSpacer4: TRzSpacer
                Left = 249
                Top = 8
              end
              object RzToolButton10: TRzToolButton
                Left = 257
                Top = 0
                DisabledIndex = 7
                Layout = blGlyphTop
                Action = atnDosing_Refresh
              end
            end
            object rzgDosingParameterDetailEvidence: TRzGroupBox
              Left = 494
              Top = 266
              Width = 250
              Height = 189
              Caption = 'Evidence'
              Color = clInactiveCaptionText
              TabOrder = 3
            end
          end
          object tbsInteractions: TdxTabSheet
            Caption = 'Drug Interactions'
            object lblInteractionList: TRzLabel
              Left = 0
              Top = 43
              Width = 343
              Height = 21
              AutoSize = False
              Caption = 'Drug Interaction List'
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
            object lblInteractionListDetail: TRzLabel
              Left = 494
              Top = 43
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Interaction Detail'
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
            object lblInteractionListDetailEvidence: TRzLabel
              Left = 478
              Top = 245
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Evidence'
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
            object rzgInteractionListDetail: TRzGroupBox
              Left = 469
              Top = 65
              Width = 250
              Height = 175
              Caption = 'Detail'
              Color = clInactiveCaptionText
              TabOrder = 0
              object Label12: TLabel
                Left = 5
                Top = 15
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Drug'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label13: TLabel
                Left = 5
                Top = 37
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Description'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object RzDBLookupComboBox2: TRzDBLookupComboBox
                Left = 67
                Top = 15
                Width = 178
                Height = 21
                Ctl3D = False
                DataField = 'interaction_Generic_2_str'
                DataSource = dsqrySysProductInteractions
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'genericName_Str'
                ListField = 'genericName_Str'
                ListSource = dsqrySysProductLUGenericNames
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                FrameController = rzcMain
              end
              object RzDBMemo1: TRzDBMemo
                Left = 67
                Top = 37
                Width = 178
                Height = 133
                DataField = 'interaction_Description_str'
                DataSource = dsqrySysProductInteractions
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                FrameController = rzcMain
              end
            end
            object rzgInteractionList: TRzGroupBox
              Left = 0
              Top = 65
              Width = 442
              Height = 616
              Caption = 'Interactions'
              Color = clInactiveCaptionText
              TabOrder = 1
              object grdInteractions: TdxDBGrid
                Left = 1
                Top = 15
                Width = 440
                Height = 600
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'interaction_ID'
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
                DataSource = dsqrySysProductInteractions
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = [fsBold]
                LookAndFeel = lfFlat
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdInteractionsinteraction_Display_str: TdxDBGridColumn
                  Caption = 'Interactions'
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'interaction_Display_str'
                end
              end
            end
            object RzToolbar2: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
              BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
              BorderWidth = 0
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              ToolbarControls = (
                RzToolButton11
                RzToolButton12
                RzToolButton13
                RzSpacer5
                RzToolButton14
                RzSpacer6
                RzToolButton15)
              object RzToolButton11: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 1
                Layout = blGlyphTop
                Action = atnInteraction_Add
              end
              object RzToolButton12: TRzToolButton
                Left = 61
                Top = 0
                DisabledIndex = 3
                Layout = blGlyphTop
                Action = atnInteraction_Save
              end
              object RzToolButton13: TRzToolButton
                Left = 121
                Top = 0
                DisabledIndex = 5
                Layout = blGlyphTop
                Action = atnInteraction_Cancel
              end
              object RzSpacer5: TRzSpacer
                Left = 181
                Top = 8
              end
              object RzToolButton14: TRzToolButton
                Left = 189
                Top = 0
                DisabledIndex = 9
                Layout = blGlyphTop
                Action = atnInteraction_Delete
              end
              object RzSpacer6: TRzSpacer
                Left = 249
                Top = 8
              end
              object RzToolButton15: TRzToolButton
                Left = 257
                Top = 0
                DisabledIndex = 7
                Layout = blGlyphTop
                Action = atnInteraction_Refresh
              end
            end
            object rzgInteractionListDetailEvidence: TRzGroupBox
              Left = 478
              Top = 266
              Width = 250
              Height = 189
              Caption = 'Evidence'
              Color = clInactiveCaptionText
              TabOrder = 3
            end
          end
          object tbsAllergies: TdxTabSheet
            Caption = 'Allergies'
            object lblAllergyList: TRzLabel
              Left = 0
              Top = 43
              Width = 343
              Height = 21
              AutoSize = False
              Caption = 'Allergy List'
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
            object lblAllergyDetail: TRzLabel
              Left = 462
              Top = 43
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Allergy Detail'
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
            object lblAllergyDetailEvidence: TRzLabel
              Left = 478
              Top = 245
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Evidence'
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
            object rzgAllergyDetail: TRzGroupBox
              Left = 485
              Top = 65
              Width = 250
              Height = 175
              Caption = 'Allergy Detail'
              Color = clInactiveCaptionText
              TabOrder = 0
              object Label23: TLabel
                Left = 5
                Top = 15
                Width = 60
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Name'
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
                Left = 67
                Top = 15
                Width = 178
                Height = 21
                Ctl3D = False
                DataField = 'allergyName_Str'
                DataSource = dsqrySysProductAllergyLink
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'allergyName_Str'
                ListField = 'allergyName_Str'
                ListSource = dsqrySysProductAllergies
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                FrameController = rzcMain
              end
            end
            object rzgAllergyList: TRzGroupBox
              Left = 0
              Top = 65
              Width = 443
              Height = 576
              Caption = 'Allergies'
              Color = clInactiveCaptionText
              TabOrder = 1
              object grdAllergies: TdxDBGrid
                Left = 1
                Top = 15
                Width = 441
                Height = 560
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'allergyItem_ID'
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
                DataSource = dsqrySysProductAllergyLink
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = [fsBold]
                LookAndFeel = lfFlat
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdAllergiesallergyName_Str: TdxDBGridColumn
                  Caption = 'Allergy'
                  DisableEditor = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'allergyName_Str'
                end
              end
            end
            object RzToolbar3: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
              BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
              BorderWidth = 0
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              ToolbarControls = (
                RzToolButton16
                RzToolButton17
                RzToolButton18
                RzSpacer7
                RzToolButton19
                RzSpacer8
                RzToolButton20)
              object RzToolButton16: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 1
                Layout = blGlyphTop
                Action = atnAllergy_Add
              end
              object RzToolButton17: TRzToolButton
                Left = 61
                Top = 0
                DisabledIndex = 3
                Layout = blGlyphTop
                Action = atnAllergy_Save
              end
              object RzToolButton18: TRzToolButton
                Left = 121
                Top = 0
                DisabledIndex = 5
                Layout = blGlyphTop
                Action = atnAllergy_Cancel
              end
              object RzSpacer7: TRzSpacer
                Left = 181
                Top = 8
              end
              object RzToolButton19: TRzToolButton
                Left = 189
                Top = 0
                DisabledIndex = 9
                Layout = blGlyphTop
                Action = atnAllergy_Delete
              end
              object RzSpacer8: TRzSpacer
                Left = 249
                Top = 8
              end
              object RzToolButton20: TRzToolButton
                Left = 257
                Top = 0
                DisabledIndex = 7
                Layout = blGlyphTop
                Action = atnAllergy_Refresh
              end
            end
            object rzgAllergyDetailEvidence: TRzGroupBox
              Left = 478
              Top = 266
              Width = 250
              Height = 189
              Caption = 'Evidence'
              Color = clInactiveCaptionText
              TabOrder = 3
            end
          end
          object tbsBrandNames: TdxTabSheet
            Caption = 'Associated Brand Names'
            object lblBrandDetail: TRzLabel
              Left = 494
              Top = 43
              Width = 250
              Height = 21
              AutoSize = False
              Caption = 'Select Brand'
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
            object lblBrandList: TRzLabel
              Left = 0
              Top = 43
              Width = 343
              Height = 21
              AutoSize = False
              Caption = 'Associated Brand or Trade Names'
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
            object rzgBrandList: TRzGroupBox
              Left = 0
              Top = 65
              Width = 327
              Height = 600
              Caption = 'Brand Names'
              Color = clInactiveCaptionText
              TabOrder = 0
              object grdBrandLink: TdxDBGrid
                Left = 1
                Top = 15
                Width = 325
                Height = 584
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'genericBrandLink_ID'
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
                DataSource = dsqrySysProductGenericBrandLink
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = [fsBold]
                LookAndFeel = lfFlat
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdBrandLinkbrandName_Str: TdxDBGridColumn
                  Caption = 'List of Names'
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'brandName_Str'
                end
              end
            end
            object RzToolbar4: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
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
                RzToolButton21
                RzToolButton22
                RzToolButton23
                RzSpacer9
                RzToolButton24
                RzSpacer10
                RzToolButton25)
              object RzToolButton21: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 1
                Layout = blGlyphTop
                Action = atnBrand_Add
              end
              object RzToolButton22: TRzToolButton
                Left = 61
                Top = 0
                DisabledIndex = 3
                Layout = blGlyphTop
                Action = atnBrand_Save
              end
              object RzToolButton23: TRzToolButton
                Left = 121
                Top = 0
                DisabledIndex = 5
                Layout = blGlyphTop
                Action = atnBrand_Cancel
              end
              object RzSpacer9: TRzSpacer
                Left = 181
                Top = 8
              end
              object RzToolButton24: TRzToolButton
                Left = 189
                Top = 0
                DisabledIndex = 9
                Layout = blGlyphTop
                Action = atnBrand_Delete
              end
              object RzSpacer10: TRzSpacer
                Left = 249
                Top = 8
              end
              object RzToolButton25: TRzToolButton
                Left = 257
                Top = 0
                DisabledIndex = 7
                Layout = blGlyphTop
                Action = atnBrand_Refresh
              end
            end
            object rzgBrandDetail: TRzGroupBox
              Left = 485
              Top = 65
              Width = 250
              Height = 175
              Caption = 'Detail'
              Color = clInactiveCaptionText
              TabOrder = 2
              object Label11: TLabel
                Left = 5
                Top = 15
                Width = 75
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Brand Name'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RzDBLookupComboBox1: TRzDBLookupComboBox
                Left = 81
                Top = 15
                Width = 163
                Height = 21
                Ctl3D = False
                DataField = 'brandName_Str'
                DataSource = dsqrySysProductGenericBrandLink
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'brandName_Str'
                ListField = 'brandName_Str'
                ListSource = dsqrySysProductBrandNames
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                FrameController = rzcMain
              end
            end
          end
          object tbsProductUsage: TdxTabSheet
            Caption = 'Product Usage'
            object lblProductUsage: TRzLabel
              Left = 5
              Top = 43
              Width = 687
              Height = 21
              AutoSize = False
              Caption = 'Products Usage'
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
            object rzgUsageByPack: TRzGroupBox
              Left = 5
              Top = 65
              Width = 344
              Height = 422
              Caption = 'Products By Pack Size'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object dxDBGrid1: TdxDBGrid
                Left = 1
                Top = 15
                Width = 342
                Height = 406
                Bands = <
                  item
                    Caption = 'Strength'
                    Width = 101
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'dispDescription_Str'
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
                DataSource = dsqryGenericUsageByPack
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object dxDBGrid1dispDescription_Str: TdxDBGridColumn
                  Caption = 'Product'
                  Width = 249
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'dispDescription_Str'
                end
                object dxDBGrid1Dispensed: TdxDBGridMaskColumn
                  Width = 52
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Dispensed'
                end
                object dxDBGrid1Cost: TdxDBGridCurrencyColumn
                  Width = 41
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Cost'
                  Nullable = False
                end
              end
            end
            object RzToolbar5: TRzToolbar
              Left = 0
              Top = 0
              Width = 887
              Height = 40
              AutoStyle = False
              Images = imgProducts
              Margin = 1
              TopMargin = 1
              RowHeight = 40
              ButtonLayout = blGlyphTop
              ButtonWidth = 60
              ButtonHeight = 40
              ShowButtonCaptions = True
              TextOptions = ttoShowTextLabels
              WrapControls = False
              AutoSize = True
              BorderInner = fsNone
              BorderOuter = fsGroove
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
                BtnPrint)
              object BtnPrint: TRzToolButton
                Left = 1
                Top = 0
                DisabledIndex = 13
                Layout = blGlyphTop
                Action = atnProduct_Usage
              end
            end
            object rzgUsageByStrength: TRzGroupBox
              Left = 348
              Top = 65
              Width = 344
              Height = 422
              Caption = 'Products By Strength'
              Color = clInactiveCaptionText
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object dxDBGrid2: TdxDBGrid
                Left = 1
                Top = 15
                Width = 342
                Height = 406
                Bands = <
                  item
                    Caption = 'Strength'
                    Width = 101
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
                BandFont.Charset = DEFAULT_CHARSET
                BandFont.Color = clWindowText
                BandFont.Height = -11
                BandFont.Name = 'MS Sans Serif'
                BandFont.Style = []
                DataSource = dsqryGenericUsageByStrength
                Filter.Criteria = {00000000}
                HeaderColor = clInfoBk
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clInactiveCaption
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object dxDBGrid2genericName_str: TdxDBGridColumn
                  Caption = 'Name'
                  Width = 117
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'genericName_str'
                end
                object dxDBGrid2dispDose_dbl: TdxDBGridMaskColumn
                  Caption = 'Strength'
                  Width = 66
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'dispDose_dbl'
                end
                object dxDBGrid2dispDoseUnits_Str: TdxDBGridColumn
                  Caption = 'Unit'
                  Width = 48
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'dispDoseUnits_Str'
                end
                object dxDBGrid2Cost: TdxDBGridCurrencyColumn
                  Width = 58
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Cost'
                  Nullable = False
                end
                object dxDBGrid2Dispensed: TdxDBGridMaskColumn
                  Width = 53
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Dispensed'
                end
              end
            end
          end
        end
      end
    end
  end
  object rzcMain: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 24
    Top = 16
  end
  object ActionList1: TActionList
    Images = imgProducts
    Left = 56
    Top = 16
    object atnProduct_Add: TAction
      Category = 'Product'
      Caption = 'Add'
      Hint = 'Add|Add a new product to the selected generic item.'
      ImageIndex = 0
      OnExecute = atnProduct_AddExecute
    end
    object atnProduct_Delete: TAction
      Category = 'Product'
      Caption = 'Delete'
      Hint = 'Delete|Delete selected product from database.'
      ImageIndex = 8
      OnExecute = atnProduct_DeleteExecute
    end
    object atnProduct_Refresh: TAction
      Category = 'Product'
      Caption = 'Refresh'
      Hint = 
        'Refresh|Refresh the list of products with the latest info from t' +
        'he database.'
      ImageIndex = 6
      OnExecute = atnProduct_RefreshExecute
    end
    object atnProduct_Save: TAction
      Category = 'Product'
      Caption = 'Save'
      Hint = 'Save|Save the currently editied information to the database.'
      ImageIndex = 2
      OnExecute = atnProduct_SaveExecute
    end
    object atnProduct_Cancel: TAction
      Category = 'Product'
      Caption = 'Cancel'
      Hint = 'Cancel|Cancel the current edits.'
      ImageIndex = 4
      OnExecute = atnProduct_CancelExecute
    end
    object atnInteraction_Cancel: TAction
      Category = 'Interactions'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnInteraction_CancelExecute
    end
    object atnInteraction_Delete: TAction
      Category = 'Interactions'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnInteraction_DeleteExecute
    end
    object atnInteraction_Add: TAction
      Category = 'Interactions'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = atnInteraction_AddExecute
    end
    object atnInteraction_Refresh: TAction
      Category = 'Interactions'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnInteraction_RefreshExecute
    end
    object atnInteraction_Save: TAction
      Category = 'Interactions'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnInteraction_SaveExecute
    end
    object atnDosing_Save: TAction
      Category = 'Dosing Parameters'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnDosing_SaveExecute
    end
    object atnDosing_Cancel: TAction
      Category = 'Dosing Parameters'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnDosing_CancelExecute
    end
    object atnDosing_Delete: TAction
      Category = 'Dosing Parameters'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnDosing_DeleteExecute
    end
    object atnDosing_Refresh: TAction
      Category = 'Dosing Parameters'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnDosing_RefreshExecute
    end
    object atnDosing_Add: TAction
      Category = 'Dosing Parameters'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = atnDosing_AddExecute
    end
    object atnAllergy_Save: TAction
      Category = 'Allergies'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnAllergy_SaveExecute
    end
    object atnAllergy_Add: TAction
      Category = 'Allergies'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = atnAllergy_AddExecute
    end
    object atnAllergy_Cancel: TAction
      Category = 'Allergies'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnAllergy_CancelExecute
    end
    object atnAllergy_Refresh: TAction
      Category = 'Allergies'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnAllergy_RefreshExecute
    end
    object atnAllergy_Delete: TAction
      Category = 'Allergies'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnAllergy_DeleteExecute
    end
    object atnBrand_Add: TAction
      Category = 'BrandNames'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = atnBrand_AddExecute
    end
    object atnBrand_Cancel: TAction
      Category = 'BrandNames'
      Caption = 'Cancel'
      ImageIndex = 4
      OnExecute = atnBrand_CancelExecute
    end
    object atnBrand_Delete: TAction
      Category = 'BrandNames'
      Caption = 'Delete'
      ImageIndex = 8
      OnExecute = atnBrand_DeleteExecute
    end
    object atnBrand_Refresh: TAction
      Category = 'BrandNames'
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = atnBrand_RefreshExecute
    end
    object atnBrand_Save: TAction
      Category = 'BrandNames'
      Caption = 'Save'
      ImageIndex = 2
      OnExecute = atnBrand_SaveExecute
    end
    object atnProduct_UpdatePackDescription: TAction
      Category = 'Product'
      Caption = 'Update Pack'
      ImageIndex = 10
      OnExecute = atnProduct_UpdatePackDescriptionExecute
    end
    object atnProduct_Usage: TAction
      Category = 'ProductUsage'
      Caption = 'Print'
      ImageIndex = 12
      OnExecute = atnProduct_UsageExecute
    end
    object atnToggleGenericList: TAction
      Caption = 'Active Generic List'
      Checked = True
      OnExecute = atnToggleGenericListExecute
    end
  end
  object conProducts: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxDispensing;Data Source=COUGAR'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 216
    Top = 16
  end
  object qrySysProductProducts: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    BeforePost = qrySysProductProductsBeforePost
    OnNewRecord = qrySysProductProductsNewRecord
    Parameters = <
      item
        Name = 'genericName_Str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Abciximab'
      end>
    SQL.Strings = (
      
        'select * from tblProductPackSize where genericName_Str = :generi' +
        'cName_Str')
    Left = 1008
    Top = 115
  end
  object qrySysProductGenericBrandLink: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    OnNewRecord = qrySysProductGenericBrandLinkNewRecord
    Parameters = <
      item
        Name = 'genericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Abciximab'
      end>
    SQL.Strings = (
      
        'select * from tblBrandGenericLink where genericName_str = :gener' +
        'icName_str')
    Left = 1008
    Top = 147
  end
  object qrySysProductBrandNames: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblBrandName order by brandName_Str')
    Left = 1008
    Top = 179
  end
  object dsqrySysProductProducts: TDataSource
    DataSet = qrySysProductProducts
    Left = 1040
    Top = 115
  end
  object dsqrySysProductGenericBrandLink: TDataSource
    DataSet = qrySysProductGenericBrandLink
    Left = 1040
    Top = 147
  end
  object dsqrySysProductBrandNames: TDataSource
    DataSet = qrySysProductBrandNames
    Left = 1040
    Top = 179
  end
  object qrySysProductGenericNames: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    AfterScroll = qrySysProductGenericNamesAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from tblGenericName  order by genericName_Str '
      '')
    Left = 1008
    Top = 83
  end
  object dsqrySysProductGenericNames: TDataSource
    DataSet = qrySysProductGenericNames
    Left = 1040
    Top = 83
  end
  object qrySysProductDosingParameters: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    OnNewRecord = qrySysProductDosingParametersNewRecord
    Parameters = <
      item
        Name = 'genericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Abciximab'
      end>
    SQL.Strings = (
      
        'select * from tblProductDose where Generic_str = :genericName_st' +
        'r ')
    Left = 1008
    Top = 211
  end
  object dsqrySysProductDosingParameters: TDataSource
    DataSet = qrySysProductDosingParameters
    Left = 1040
    Top = 211
  end
  object qrySysProductInteractions: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    BeforePost = qrySysProductInteractionsBeforePost
    OnNewRecord = qrySysProductInteractionsNewRecord
    Parameters = <
      item
        Name = 'genericNameA_str'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end
      item
        Name = 'genericNameB_str'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblProductInteraction where ( interaction_Generic_' +
        '1_str = :genericNameA_str ) or ( interaction_Generic_2_str = :ge' +
        'nericNameB_str ) '
      '')
    Left = 1008
    Top = 248
  end
  object dsqrySysProductInteractions: TDataSource
    DataSet = qrySysProductInteractions
    Left = 1040
    Top = 243
  end
  object qrySysProductLUGenericNames: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblGenericName  order by genericName_Str ')
    Left = 1008
    Top = 280
  end
  object dsqrySysProductLUGenericNames: TDataSource
    DataSet = qrySysProductLUGenericNames
    Left = 1040
    Top = 280
  end
  object qrySysProductAllergies: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    OnNewRecord = qrySysProductAllergiesNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from tblAllergy order by allergyName_Str')
    Left = 1008
    Top = 312
  end
  object qrySysProductAllergyLink: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    OnNewRecord = qrySysProductAllergyLinkNewRecord
    Parameters = <
      item
        Name = 'genericName_Str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Abciximab'
      end>
    SQL.Strings = (
      
        'select * from tblAllergyItem where genericName_Str = :genericNam' +
        'e_Str')
    Left = 1008
    Top = 344
  end
  object dsqrySysProductAllergies: TDataSource
    DataSet = qrySysProductAllergies
    Left = 1040
    Top = 312
  end
  object dsqrySysProductAllergyLink: TDataSource
    DataSet = qrySysProductAllergyLink
    Left = 1040
    Top = 344
  end
  object imgProducts: TImageList
    Left = 96
    Top = 16
    Bitmap = {
      494C01010E001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC99660099330000000000000000000000000000B2B2B200CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2
      B200B2B2B2009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC9966009933000000000000B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900B2B2B20099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600993300009933000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B2009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC9966009933000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B20099999900CCCCCC00B2B2B20099999900CCCC
      CC00B2B2B200B2B2B20099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC99660099330000B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC99660099330000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC9966009933000000000000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200CCCC
      CC00CCCCCC00B2B2B200B2B2B200999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000000000000B2B2B2000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00B2B2B200999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC9966009933000000000000000000000000000000000000B2B2
      B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B200B2B2B200B2B2B20099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000000000000000000000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      000000000000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      AC00808080000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300CCCCFF00FF993300CC330000CC33
      0000B2B2B2008080800000000000000000000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000080808000999999009999
      9900B2B2B2008080800000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC6600FF993300CC330000FF3333009999
      CC00CC330000B2B2B2008080800000000000000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C000B2B2B20080808000999999009999990099A8
      AC0099999900B2B2B20080808000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC000000000000000000000000000000
      0000000000009999990000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FFFF0000FFCC3300FF663300CCCCFF00FFFF
      FF00CC999900CC33000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000B2B2B20099A8AC0099999900000000000000
      0000999999009999990080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000009999990000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC3300FF993300FF993300FF663300FFFF
      FF00CCCCFF00CC9999008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C00099A8AC008080800080808000999999000000
      0000000000009999990080808000999999000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC0000000000000000009999990099999900000000000000
      0000000000009999990000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300FFFFCC00FFFFFF00FFFFFF00CC00
      0000CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000000000000000000009999
      9900999999009999990080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000999999000000
      000000000000000000000000000099999900999999009999990099999900CCCC
      CC00000000009999990000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00CCCCFF00FFCC3300CCCCFF00CCFFFF00CCCC
      FF00FF000000CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000000000000000000099A8AC0000000000000000000000
      0000999999009999990080808000999999000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC0000000000000000009999990099999900000000009999
      9900000000009999990000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFFFFF00FFFFFF00FFCC3300FF993300FF666600FF33
      3300CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000000000000000000099A8AC0080808000808080009999
      9900999999009999990080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000099999900000000009999
      9900000000009999990000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00E5E5E500E5E5E500E5E5E500E5E5E500FF993300FF333300FF00
      0000FFCC6600CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC000000000000000000000000000000000080808000999999009999
      9900B2B2B2009999990080808000999999000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00000000000000000000000000000000009999
      990000000000999999000000000000000000000000009999990099A8AC00CCCC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCCCFF00CCCCCC00CCCC
      CC00CCCCCC00B2B2B2008080800066333300000000009999990099A8AC000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCCCC00B2B2B20080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900000000009999990000000000000000000000000099999900CCFFFF00646F
      7100333333006633330066333300646F71009966660099999900CCCCCC00FFFF
      FF00FFCCCC00B2B2B20080808000663333000000000099999900000000009999
      9900999999009999990099999900999999009999990099999900CCCCCC000000
      0000CCCCCC00B2B2B20080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF009933000099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000999999000000
      000000000000000000009999990099999900999999009999990099999900CCCC
      CC00000000009999990000000000000000000000000099999900CCFFFF000066
      99009999CC00CCCCFF009999CC0066333300FFFFFF00CCCC9900CCCC9900646F
      7100B2B2B200CCCCCC0080808000663333000000000099999900000000009999
      990099A8AC000000000099A8AC009999990000000000C0C0C000C0C0C0009999
      9900B2B2B200CCCCCC0080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000999999000066
      9900FFFFFF00CCCCFF00CCCCFF000033660066333300FFFFFF00FFFFCC00CCCC
      99006633330099A8AC0080808000663333000000000000000000999999009999
      990000000000000000000000000099999900999999000000000000000000C0C0
      C0009999990099A8AC0080808000999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000009999
      990000669900FFFFFF00003366000080800000CC660066333300FFFFFF006633
      3300003366009966660099666600000000000000000000000000000000009999
      9900999999000000000099999900999999009999990099999900000000009999
      9900999999009999990099999900000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
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
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000C007C00700000000
      8003800300000000000100010000000000014001000000000001400100000000
      00007FF00000000000004000000000008000800000000000C000DFE000000000
      E001E82100000000E007EFF700000000F007F41700000000F003F7FB00000000
      F803F80300000000FFFFFFFF00000000E01FE01FFFFFFFFFC007C7C7C003C003
      80038C83C003DFFB80018401C003D0FB80008C30C003DFBB80008418C003D33B
      80008CE0C003DE0B80008770C003D32B80008F00C003DFAB80008780C003D1EB
      80009FC0C003DFEB8000A010C003DC0B8000A480C003DFFBC000CE60C003DFFB
      E001E421C003C003F807F807FFFFFFFFFFFFFFFFFFFFFFFFEFFDEFFDFFFFFFFF
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
  object qryRoute: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlkRoute order by code_str')
    Left = 1008
    Top = 376
  end
  object dsqryRoute: TDataSource
    DataSet = qryRoute
    Left = 1040
    Top = 376
  end
  object qryUnit: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      
        'where (abbreviationType_Str = '#39'Unit'#39') OR (abbreviationType_Str =' +
        ' '#39'Formulation'#39')')
    Left = 1008
    Top = 408
  end
  object dsqryUnit: TDataSource
    DataSet = qryUnit
    Left = 1040
    Top = 408
  end
  object dsqryUnit2: TDataSource
    DataSet = qryUnit
    Left = 1072
    Top = 408
  end
  object ImageList1: TImageList
    Height = 48
    Width = 48
    Left = 168
    Top = 16
    Bitmap = {
      494C010101000400040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E300DDDD
      DD00D7D7D700CCCCCC00CCCCCC00EAEAEA00DDDDDD00CCCCCC00D7D7D700DDDD
      DD00EAEAEA00F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAEAEA00DDDDDD00C0C0C0008080800099663300996633009966
      330099663300CC663300FFECCC00996633009966330099663300996633009966
      33005555550066666600E3E3E300EAEAEA00E3E3E300F1F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00086868600996633009966330099663300996633009966
      330099663300F0CAA600F0CAA60099660000CC66000099660000996633009966
      33009966330099663300D7D7D7007777770096969600C0C0C000E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D70099663300996633009966330099663300CC663300993333006633
      330096969600F0CAA600F0CAA600663333006633330099663300CC660000CC66
      0000CC660000F0CAA600CC993300996633005555550077777700A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      660099663300996633005F5F5F005F5F5F00CC66330099663300666699006666
      9900CCCCCC009966990066336600666699006666990066339900663366006633
      6600CCCCCC00C0C0C0006633330099663300996633009966330066663300D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300996633006633990066339900663399006633660066336600666699009999
      CC00D7D7D7006633990066339900996699009966990066339900663366006666
      9900E3E3E300663399006633660066336600CC6600009966330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300663366006666CC009966CC009966CC006666990066339900C0C0C000E3E3
      E300A4A0A0006666990066669900C0C0C000C0C0C0006666990096969600D7D7
      D700B2B2B200969696006633990066336600663366009966000099663300D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300663366009999CC00B2B2B200B2B2B2006666CC0066339900D7D7D700E3E3
      E3009966CC006633990066336600A4A0A000A4A0A00066669900E3E3E300E3E3
      E300CCCC9900A4A0A0006633660066669900663366009966330099663300EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      33005F5F5F00B2B2B200C0C0C000C0C0C0006666CC0066339900D7D7D700CCCC
      CC006633990066669900666699006633660066339900C0C0C000CCCCCC009696
      9600A4A0A000969696006633660099669900663366009966000099663300EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      33006633660066339900666699006666990099669900C0C0C000DDDDDD006666
      CC00C0C0C000C0C0C0009999CC006633990066669900E3E3E300B2B2B2006666
      99006633660066336600666699006633660066336600CC999900F0CAA600CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300663366009999CC009999CC0066669900C0C0C000FFECCC00CBCBCB006666
      CC00C0C0C000C0C0C0009999CC00663399009999CC00FFECCC00B2B2B2009696
      96006633660066669900777777009966990099669900F0CAA600F0CAA600CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      330099663300C0C0C000CCCCCC00C0C0C00099669900D7D7D700663399006666
      99006633990066669900996699009999CC00D7D7D70066669900666699006633
      66006633990066336600B2B2B200A4A0A000CCCCCC00CC99330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC663300666699009966CC009999CC00C0C0C000D7D7D7009999CC006666
      CC00666699009999CC00C0C0C000D7D7D700D7D7D70066669900996699009999
      CC00666699006633990099669900A4A0A000CCCC9900CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC993300CC996600CC996600CC996600DDDDDD00EAEAEA00CBCBCB009999
      CC00666699006666CC006666CC00CCCCCC00A4A0A0009999CC00C0C0C000C0C0
      C0006666CC0066336600F0CAA600F0CAA600CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC993300CC996600CC996600CC996600CCCCCC00CCCCCC00CBCBCB009999
      CC006666CC006666CC006666CC00E3E3E30066669900666699009999CC009999
      CC006633990099663300FFECCC00F0CAA600CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600F0CAA600F0CAA600F0CAA600FFECCC0096969600666699006666
      99006699CC009999CC009999CC00D7D7D7006666990099666600996666006666
      660099663300CC993300FFECCC00CC996600CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600CC99
      66009999CC00CCCCCC00EAEAEA009999CC0066339900CC996600CC993300CC99
      3300CC993300FFECCC00CC996600CC663300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600EAEAEA00EAEAEA00FFECCC00F0CAA600F0CAA600F0CAA600F0CA
      A6006666CC00CBCBCB00EAEAEA006666990080808000CC996600CC996600CC99
      3300CC996600FFECCC00CC993300CC663300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600EAEAEA00FFECCC00FFECCC00EAEAEA00EAEAEA00F0CAA600F0CA
      A600F0CAA600FFECCC00DDDDDD006666990077777700CC996600CC996600CC99
      6600FFECCC00FFECCC00CC993300CC993300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600EAEAEA00FFECCC00FFECCC00EAEAEA00EAEAEA00EAEAEA00F0CA
      A600F0CAA600EAEAEA00DDDDDD006666CC006666CC0099666600CC996600CC99
      6600F0CAA600CCCC9900CC993300CC993300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CC996600FFECCC00FFECCC00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00CCCCCC00D7D7D700CBCBCB006666CC006666CC0066669900CC996600CC99
      6600FFECCC00CC996600CC993300CC993300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300CCCC9900FFECCC00F1F1F10000000000EAEAEA00FFECCC00CC999900CC99
      9900CCCCCC00CBCBCB006699FF0099CCFF006699FF000000CC0096969600F0CA
      A600F0CAA600F0CAA600CC993300CC993300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      3300FFECCC00F8F8F800EAEAEA00F0CAA600CC996600CC996600CC996600CC99
      6600D7D7D7003366CC009999FF00CCCCFF006699FF0000009900CC993300FFEC
      CC009966660099663300CC999900CC996600CC993300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0CA
      A600F0CAA600CC996600CC996600CC996600CC996600CC996600CC996600DDDD
      DD003333990066336600663399003333CC002100A500CC99330096969600CBCB
      CB000033FF000033CC0033339900CC663300CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0CA
      A600CC996600CC996600CC996600CC999900CCCC9900CC9999009999CC00CBCB
      CB000033CC000000CC0033339900CC996600CC99330099666600CBCBCB00D7D7
      D7003366FF000033FF000000CC0099666600CC663300CC66330099663300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      330099663300CC996600E3E3E300EAEAEA00EAEAEA00DDDDDD00D7D7D7006699
      FF003366FF000033FF000033CC00CCCC9900CC996600B2B2B200CBCBCB00C6D6
      EF00CCCCFF009999FF000033CC0066336600996633009966330099663300F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100CC9933009966330099663300CC996600FFECCC00E3E3E3009999FF009999
      FF009999FF003366FF000033FF00CCCC9900CC999900FFECCC00E3E3E3006699
      FF00CCCCFF009999FF0000009900996633009966000099663300D7D7D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9966009966330099663300CC996600F0CAA6006666FF00C6D6
      EF0099CCFF006666FF000033CC00CC996600CC996600F0CAA600C0C0C0000033
      CC009999FF003366CC006633330099663300C0C0C000EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009999CC003333
      CC002100A50033339900777777003333660066669900C0C0C00099666600B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDD002100A5000033CC00E3E3E30033339900555555009696
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002100A5000033FF00E3E3E300DDDDDD000033FF00000099008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000099003366FF00EAEAEA0099CCFF000033FF00000099008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333CC00CBCBCB00EAEAEA00C6D6EF000033FF0033339900C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEAEA003333CC003333CC009999CC00EAEAEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFC003FFFF0000
      00000000000000000000000000000000FFF800003FFF00000000000000000000
      0000000000000000FFF800001FFF000000000000000000000000000000000000
      FFF000001FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE000000FFF00000000000000000000
      0000000000000000FFE000000FFF000000000000000000000000000000000000
      FFE000000FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE000000FFF00000000000000000000
      0000000000000000FFE000000FFF000000000000000000000000000000000000
      FFE000000FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE000000FFF00000000000000000000
      0000000000000000FFE000000FFF000000000000000000000000000000000000
      FFE000000FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE000000FFF00000000000000000000
      0000000000000000FFE000000FFF000000000000000000000000000000000000
      FFE000000FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE100000FFF00000000000000000000
      0000000000000000FFE000000FFF000000000000000000000000000000000000
      FFE000000FFF000000000000000000000000000000000000FFE000000FFF0000
      00000000000000000000000000000000FFE000000FFF00000000000000000000
      0000000000000000FFE000001FFF000000000000000000000000000000000000
      FFF800003FFF000000000000000000000000000000000000FFFFC00FFFFF0000
      00000000000000000000000000000000FFFFF80FFFFF00000000000000000000
      0000000000000000FFFFF80FFFFF000000000000000000000000000000000000
      FFFFF80FFFFF000000000000000000000000000000000000FFFFF80FFFFF0000
      00000000000000000000000000000000FFFFFC1FFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object qryGenericUsageByPack: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    DataSource = dsqrySysProductGenericNames
    Parameters = <
      item
        Name = 'genericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     genericName_str, dispDescription_Str, SUM(dispDoseTot' +
        'al_Dbl) AS Dispensed, SUM(dispPackCost_mon) AS Cost'
      'FROM         dbo.tblPrescriptionItem'
      'GROUP BY dispDescription_Str, genericName_str'
      'HAVING genericName_str = :genericName_str')
    Left = 1080
    Top = 184
  end
  object dsqryGenericUsageByPack: TDataSource
    DataSet = qryGenericUsageByPack
    Left = 1112
    Top = 184
  end
  object qryGenericUsageByStrength: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    DataSource = dsqrySysProductGenericNames
    Parameters = <
      item
        Name = 'genericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT genericName_str, dispDoseUnits_Str, d' +
        'ispDose_dbl, SUM(dispItemCost_mon) AS Cost, SUM(dispDoseTotal_Db' +
        'l) '
      '                      AS Dispensed'
      'FROM         dbo.tblPrescriptionItem'
      'GROUP BY dispDose_dbl, dispDoseUnits_Str, genericName_str'
      'HAVING genericName_str = :genericName_str'
      'ORDER BY genericName_str, dispDose_dbl, dispDoseUnits_Str')
    Left = 1080
    Top = 216
  end
  object dsqryGenericUsageByStrength: TDataSource
    DataSet = qryGenericUsageByStrength
    Left = 1112
    Top = 216
  end
  object dsqryUsageReport: TDataSource
    DataSet = qryUsageReport
    Left = 1040
    Top = 472
  end
  object qryUsageReport: TADOQuery
    Connection = conProducts
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT dispDoseUnits_Str, dispDose_dbl, SUM(' +
        'dispItemCost_mon) AS Cost, SUM(dispDoseTotal_Dbl) AS Dispensed, ' +
        'dispDescription_Str, '
      '                      dispGenericName_str'
      'FROM         dbo.tblPrescriptionItem'
      
        'GROUP BY dispDose_dbl, dispDoseUnits_Str, genericName_str, dispD' +
        'escription_Str, dispGenericName_str'
      'ORDER BY genericName_str, dispDose_dbl, dispDoseUnits_Str')
    Left = 1008
    Top = 472
  end
  object ppqryReportUsage: TppDBPipeline
    DataSource = dsqryUsageReport
    AutoCreateFields = False
    UserName = 'ReportUsage'
    Left = 1072
    Top = 472
  end
  object ppReportUsage: TppReport
    AutoStop = False
    DataPipeline = ppqryReportUsage
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.SaveTo = stDatabase
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 1104
    Top = 472
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppqryReportUsage'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppImage6: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 34660
        mmLeft = 0
        mmTop = 0
        mmWidth = 34925
        BandType = 0
      end
      object ppShape58: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 32808
        mmLeft = 0
        mmTop = 0
        mmWidth = 181769
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line4'
        Pen.Color = clSilver
        Pen.Width = 3
        Weight = 2.25
        mmHeight = 1058
        mmLeft = 30427
        mmTop = 9260
        mmWidth = 150813
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label16'
        Caption = 'Usage report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 128059
        mmTop = 794
        mmWidth = 51858
        BandType = 0
      end
      object ppRegion29: TppRegion
        UserName = 'Region1'
        Caption = 'Region1'
        Pen.Color = clSilver
        mmHeight = 10319
        mmLeft = 0
        mmTop = 34131
        mmWidth = 182034
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel152: TppLabel
          UserName = 'Label10'
          AutoSize = False
          Caption = 'Clinic'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 34925
          mmWidth = 59002
          BandType = 0
        end
        object ppLabel153: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Usage'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 141552
          mmTop = 35189
          mmWidth = 15081
          BandType = 0
        end
        object ppLabel156: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Total Cost'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 158486
          mmTop = 35189
          mmWidth = 22490
          BandType = 0
        end
        object ppLabel158: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'per Pack'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 157957
          mmTop = 39687
          mmWidth = 22754
          BandType = 0
        end
        object ppLabel159: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'per Pack'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 141288
          mmTop = 39687
          mmWidth = 15346
          BandType = 0
        end
      end
    end
    object ppDetailBand5: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        DataField = 'dispDescription_Str'
        DataPipeline = ppqryReportUsage
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppqryReportUsage'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 265
        mmWidth = 131763
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText2'
        BlankWhenZero = True
        DataField = 'Dispensed'
        DataPipeline = ppqryReportUsage
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppqryReportUsage'
        mmHeight = 4233
        mmLeft = 141552
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText1'
        DataField = 'Cost'
        DataPipeline = ppqryReportUsage
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppqryReportUsage'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 265
        mmWidth = 23813
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine32: TppLine
        UserName = 'Line2'
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1058
        mmWidth = 181505
        BandType = 8
      end
      object ppLabel146: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'ddd dd mmmm yyyy @ [hh:nn]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 53711
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 153988
        mmTop = 2117
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel147: TppLabel
        UserName = 'Label6'
        Caption = 'Report Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 9500
        mmWidth = 14288
        BandType = 8
      end
      object ppDBText86: TppDBText
        UserName = 'DBText6'
        DataField = 'report_Version_Major'
        DisplayFormat = '#"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 14288
        mmTop = 9525
        mmWidth = 2646
        BandType = 8
      end
      object ppDBText87: TppDBText
        UserName = 'DBText7'
        DataField = 'report_Version_Minor'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 16669
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText88: TppDBText
        UserName = 'DBText8'
        DataField = 'report_Version_Hi'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 19050
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText89: TppDBText
        UserName = 'DBText9'
        DataField = 'report_Version_Lo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 21431
        mmTop = 9525
        mmWidth = 2910
        BandType = 8
      end
      object ppLabel148: TppLabel
        UserName = 'Label7'
        Caption = 'Copyright Label'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 166952
        mmTop = 7673
        mmWidth = 14817
        BandType = 8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppPageStyle5: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'dispGenericName_str'
      DataPipeline = ppqryReportUsage
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppqryReportUsage'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBText77: TppDBText
          UserName = 'DBText12'
          DataField = 'dispGenericName_str'
          DataPipeline = ppqryReportUsage
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppqryReportUsage'
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 139965
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
      end
    end
    object daDataModule1: TdaDataModule
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 16
    object ActiveGenericList1: TMenuItem
      Action = atnToggleGenericList
    end
  end
end

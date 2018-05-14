object frmPatientDetail_: TfrmPatientDetail_
  Left = 312
  Top = 96
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Patient'
  ClientHeight = 863
  ClientWidth = 1254
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label35: TLabel
    Left = 735
    Top = 224
    Width = 39
    Height = 26
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Def.'
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object rzdButtons: TRzDialogButtons
    Left = 0
    Top = 818
    Width = 1254
    Height = 45
    ButtonColor = 16311512
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    EnableOk = False
    OKDefault = False
    ShowDivider = True
    ShowGlyphs = True
    Color = 16311512
    TabOrder = 0
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 338
    Width = 1254
    Height = 480
    ActivePage = TbsContact
    ActivePageDefault = TbsContact
    Align = alClient
    BackgroundColor = 16311512
    Color = clWindow
    UseColoredTabs = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    FlatColor = 10263441
    HotTrack = False
    HotTrackColor = 3983359
    MultiLine = True
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    TabColors.HighlightBar = 3983359
    TabIndex = 0
    TabOrder = 1
    TabOrientation = toBottom
    TabStyle = tsRoundCorners
    UseGradients = False
    OnClick = RzPageControl1Click
    object TbsContact: TRzTabSheet
      Hint = 'Contact Details'
      Color = clWindow
      Caption = '&Contact'
      object RzGroupBox6: TRzGroupBox
        Left = 0
        Top = 239
        Width = 1252
        Height = 212
        Align = alClient
        Caption = 'Contact Details'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ThemeAware = False
        object grdPersonContact: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1250
          Height = 194
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'contact_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = grdPersonContactClick
          OnKeyUp = grdPersonContactKeyUp
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dmPatient.dsqryPersonContact
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -12
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = [fsBold]
          object grdPersonContactcontactMode_str: TdxDBGridColumn
            Caption = 'Mode'
            DisableEditor = True
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'contactMode_str'
          end
          object grdPersonContactcontactType_Str: TdxDBGridPickColumn
            Caption = 'Type'
            DisableEditor = True
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'contactType_Str'
            Items.Strings = (
              'Cell Phone'
              'Phone (Work)'
              'Phone (Home)'
              'Fax (Work)'
              'Fax (Home)'
              'Pager'
              'e-Mail'
              'Address (Physical)'
              'Address (Postal)'
              'Address (Delivery)'
              'Address (Payment)')
            DropDownRows = 12
          end
          object grdPersonContactcontactDetail_Str: TdxDBGridColumn
            Caption = 'Contact'
            DisableEditor = True
            Width = 287
            BandIndex = 0
            RowIndex = 0
            FieldName = 'contactDetail_Str'
          end
          object grdPersonContactcontactDescription_Str: TdxDBGridColumn
            Caption = 'Note'
            DisableEditor = True
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'contactDescription_Str'
          end
        end
      end
      object rzContactDetails: TRzGroupBox
        Left = 0
        Top = 82
        Width = 1252
        Height = 157
        Align = alTop
        Caption = 'Contact Details'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ThemeAware = False
        object Label10: TLabel
          Left = 6
          Top = 15
          Width = 80
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mode:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 41
          Width = 80
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Type:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblContact_01: TLabel
          Left = 321
          Top = 15
          Width = 80
          Height = 24
          HelpType = htKeyword
          Alignment = taRightJustify
          AutoSize = False
          Caption = '1st'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblContact_02: TLabel
          Left = 321
          Top = 41
          Width = 80
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = '2nd'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblContact_03: TLabel
          Left = 321
          Top = 66
          Width = 80
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = '3rd'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lblContact_04: TLabel
          Left = 321
          Top = 92
          Width = 80
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = '4th'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 6
          Top = 66
          Width = 80
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Note:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edtContact_Edit01: TRzDBEdit
          Left = 404
          Top = 15
          Width = 381
          Height = 24
          DataSource = dmPatient.dsqryPersonContact
          DataField = 'contactLine01_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 3
        end
        object edtContact_Edit03: TRzDBEdit
          Left = 404
          Top = 66
          Width = 381
          Height = 24
          DataSource = dmPatient.dsqryPersonContact
          DataField = 'contactLine03_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 5
        end
        object edtContact_Edit04: TRzDBEdit
          Left = 404
          Top = 92
          Width = 381
          Height = 24
          DataSource = dmPatient.dsqryPersonContact
          DataField = 'contactLine04_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 6
        end
        object edtContact_Edit02: TRzDBEdit
          Left = 404
          Top = 41
          Width = 381
          Height = 24
          DataSource = dmPatient.dsqryPersonContact
          DataField = 'contactLine02_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 4
        end
        object edtContactNote: TRzDBEdit
          Left = 89
          Top = 66
          Width = 229
          Height = 24
          DataSource = dmPatient.dsqryPersonContact
          DataField = 'contactDescription_Str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 2
        end
        object cmbContactMode: TRzDBComboBox
          Left = 89
          Top = 15
          Width = 229
          Height = 24
          DataField = 'contactMode_str'
          DataSource = dmPatient.dsqryPersonContact
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = cmbContactModeChange
          Items.Strings = (
            'Cell Phone'
            'Phone'
            'Fax'
            'Pager'
            'e-Mail'
            'Address'
            'TB Number')
        end
        object cmbContactType: TRzDBComboBox
          Left = 89
          Top = 41
          Width = 229
          Height = 24
          DataField = 'contactType_Str'
          DataSource = dmPatient.dsqryPersonContact
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'Work'
            'Home'
            'Physical'
            'Postal'
            'Delivery'
            'Payment'
            'Next of Kin'
            'Other'
            'NA')
        end
        object GroupBox3: TGroupBox
          Left = 794
          Top = 0
          Width = 317
          Height = 150
          Caption = 'Supporter Details'
          TabOrder = 7
          object Label19: TLabel
            Left = 5
            Top = 98
            Width = 45
            Height = 18
            Caption = 'Phone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 5
            Top = 124
            Width = 96
            Height = 18
            Caption = 'Employee No.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 5
            Top = 20
            Width = 39
            Height = 18
            Caption = 'Type:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 5
            Top = 44
            Width = 44
            Height = 18
            Caption = 'Name:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 5
            Top = 69
            Width = 35
            Height = 18
            Caption = 'Addr.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit16: TDBEdit
            Left = 54
            Top = 91
            Width = 259
            Height = 24
            DataField = 'vstUpporterPhone_str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit11: TDBEdit
            Left = 54
            Top = 42
            Width = 259
            Height = 24
            DataField = 'vstSupporterName_str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 54
            Top = 66
            Width = 259
            Height = 24
            DataField = 'vstSupporterAddress_str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 114
            Top = 118
            Width = 199
            Height = 24
            DataField = 'personEmployeeNumber_str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object C: TDBComboBox
            Left = 54
            Top = 17
            Width = 260
            Height = 24
            DataField = 'vstSupporterRelationship_str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'Aunt'
              'Brother'
              'Father'
              'Friend'
              'Mother'
              'Sister'
              'Uncle')
            ParentFont = False
            Sorted = True
            TabOrder = 0
          end
        end
      end
      object RzToolbar3: TRzToolbar
        Left = 0
        Top = 38
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 2
        ThemeAware = False
        ToolbarControls = (
          btnContactAdd
          btnContactDelete
          btnContactSave
          btnContactCancel
          RzBmpButton3)
        object btnContactAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = 16311512
          ParentColor = False
          Action = atnPersonContactInsert
          DockOrientation = doNoOrient
        end
        object btnContactDelete: TElSpeedButton
          Left = 33
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000918FE3009190
            E4009190E5009291E5009291E7009392E800A6A2DC00A6A3DE00B9B5DA00BAB6
            DC00BBB7DD00A9A7E600ABAAE900BBB8E000BDBAE300BEBCE600C7BFD200C5BE
            D400C0BFE900DFC9AC00DFC9AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB200DFCCB300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCE
            B800DFCFB800E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CE
            B300E4CFB400E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
            B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
            BD00E2D3BE00E3D3BF00E5D1B800E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C7C1D400C6C1DA00D3CACD00D5CE
            D300DFD4C700DFD5C800DED4CC00DCD4D100DDD6D300DED8D600DFD9D800C8C5
            E000CECCE600CFCEEC00D1CFEB00DAD6E100E0D3C000E0D3C100E1D3C000E0D4
            C100E1D4C100E1D4C200E1D4C300E1D5C300E3D4C100E2D5C300E0D4C500E1D5
            C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6
            C200E6D5C100E4D7C600E0D6CA00E2D7C800E7D8C500E7D9C700E2D8CB00E3D9
            CA00E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DA
            CD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DDCF00E9D7C100E8D6
            C000E8D7C200E9D8C300E9D9C400E8D9C500EBD9C400E8DAC800E8DAC900E9DA
            C800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DD
            CF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDFCD00EDDECD00ECDF
            CF00EDDFCE00EEDFCE00E2DAD100E1DAD600E5DCD000E5DDD100E5DED300E5DE
            D200E7DED200E6DFD500E0DBDC00E2DDDA00E8DED100E9DED000E8DFD300EADF
            D200E2DEE100EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E5E0DB00E7E2
            D900E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2
            DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DF00ECE4DB00F0E3
            D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E2E600E3E1
            EF00E9E5E100EBE6E100EBE7E100EAE7E700ECE7E000E8E5EB00EDE8E200EEE9
            E300ECE9E400EDE9E500EDEAE600EEEAE500EEEAE700EEEBEC00EFECE900EEEC
            F000F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F3F1F100F4F2F000F5F3F100F4F3F400F7F6F500FAF5F000F8F7F700F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFCEB3B3CEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA4D131313131313
            13138EFAFFFFFFFFFFFFFFFFFFFFFFBD1313132317252313131313139DFEFFFF
            FFFFFFFFFFFD3113282836343A34361F26131313134BFDFFFFFFFFFFFF4D1336
            62636362603E3D3A2E1F1513131331FEFFFFFFFFA313676A7070706D6B655F3E
            3A2E2117131313B3FFFFFFFA13377D7A818181807D706B65603D342117131313
            F0FEFE8E137D86A6A9A9A9A7A6817D7069623D2E2C2313138EFFFE1376A7A8AB
            B6B6B6ABABA7A6807069603D2E1C131313FAE71386ABB7C1C4C4C4B9B7B4A8A6
            8070653F3A21251313E7CD23ABB9C5C7D4D4D25A5951594E4E746B623D2E1C13
            13BEB32FB9C5D4DADEDC5A0000000000005170653F2E2C13139DB330C5D4DCE8
            EAEA5C000000000000087D6A603A2117139DCE26C7DAE8EBF3F5F5120C0B0B07
            07517D6B623D2D2313CDEF13D3DCEAF4F6FBF8F6E1D7D0C2ABA77C70633D331B
            13E4FC13C4DCEBF5FBFFFBF4EBE0D4C4B5A97C70633D2D1313FDFE884BDCEAF3
            F8FBF8F4E9DCD4C4B5A97C70633D2D134DFFFEF113C7E8EBF4F4F4EBE8DAC7B9
            ABA77C6D623D2313FAFFFFFDA323D9E8EAEBEAE8DCD4C5B7A886796B603A138E
            FDFFFFFFFF4D29DADEDEDCDAD4C5B9B4A9817065351349FDFFFFFFFFFFFD4D23
            C4D4D4D2C5B9B5A886796B3D132AFDFFFFFFFFFFFFFFFF9D1346B6B9B7B4A886
            7A661313A3FEFFFFFFFFFFFFFFFFFFFEF78E13132328282413134DF1FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDE7CDB3B3CEE7FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            3A040000424D3A04000000000000FA0100002800000018000000180000000100
            08000000000040020000610F0000610F00007100000000000000B7B7B700B7B7
            B800B8B8B900C1C1C200C2C2C200C7C7C700C7C8C800CDCDCE00CECECF00CFCF
            CF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2
            D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
            D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5
            E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8
            E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEBEB00EBEB
            EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
            EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
            7070707070706F69605A5A60696F70707070707070707070707070706D54382A
            211D1B1E2738546D70707070707070707070705B3324191515120C0A08081A31
            5B70707070707070706F4C2C201D1D1D1B1917120B0A0708244C6F7070707070
            704C2A252626262523201D1B17100B08071E4C70707070705A2F2A2D3030302D
            2B28251E1D18100B0807245A7070706D333134373939393734322D27211D1810
            0B0707316D70705433383E41414141413E39343027211D191008071A54706F38
            3D4047474949494747413E373027211D170B0707366F68334347494D5050504D
            4947443E3730271E1A10080724686039494B535557575330302826221C302D25
            1D170B071C5F5B3C4B53565A5C5C2E0000000000002832281E18100A1A5A5B3E
            53575A5E5F614000000000000007302B231B130A1A5A603D555A5E6465675D19
            060303030326342D251D130B1E5F6938575C6065696C6965615C514B473F3930
            261D170B27686F39555C62676C706C67615C555049413930241D1710386F7054
            475C6065696C69655F5A555049413930241D171D5470706D36585D6465676564
            5D59554D4741372D241D17316D7070705B3D5B5D6061605D5B575149473E342B
            211A2A5A70707070704C43595B5B5B5957514B474139322820274C7070707070
            706F4C3B55575755514B49423E342D282C4C6E70707070707070705A36444E4D
            4945423D37302D335A70707070707070707070706D5438373A3A39343138546D
            70707070707070707070707070706F69605A5A60686F7070707070707070}
          MouseInImage.Data = {
            82030000424D8203000000000000420100002800000018000000180000000100
            08000000000040020000610F0000610F00004300000000000000FFFFFF00EFF7
            FF00FFF7F700F7F7F700F7F7EF00DEEFFF00EFEFF700F7EFEF00EFEFE600EFE6
            E600E6E6E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600DED6EF00DEDE
            DE00E6DED600DED6E600ADD6F700E6DECE00E6D6D600D6D6D600E6D6CE00DED6
            CE00D6D6CE00E6D6C500DED6C500E6D6BD009CC5F700DED6BD00CEBDEF009CC5
            EF00D6CEC500D6C5D600E6CEBD00CEBDE6009CC5E600C5BDE600D6CEBD00D6C5
            CE00E6CEB5008CBDF700DECEB5008CBDEF009CBDE6008CBDE6009CBDDE00C5B5
            DE00D6C5B500C5B5D6008CB5E60073B5EF0084B5DE0094B5D6006BADEF0094B5
            CE0073ADE6006BADE6005AA5F70073ADDE0084ADD6005AA5EF006BA5E60073A5
            DE004A21DE00000000000000000002050D14140D050000000000000000000000
            00000000011E3F403E39393E403F1E010000000000000000000000143F37282C
            2C2C2C2C2C32393F140000000000000000002B3A221F1F1F1F1F2C2C2C2C2C32
            412B000000000000002B361C1C1C1C1C1F1F1F1F2C2C2C2C2C3E2B0000000000
            143A1C1B1B1B1B1B1B1C1C1F1F1F2C2C2C2C4114000000013F1A181515151515
            181B1B1C1F1F1F2C2C2C323F0100001E30151515121212151515181B1C1C1F1F
            2C2C2C391E00023F1712121212120F12121215151B1C1C1F2C2C2C323F00053B
            1212120E0E0E0E0E12121215151B1C1F1F2C2C2C40050D34120F0E0E09090E31
            3133333333191B1C1F2C2C2C3E0D142E0F0E0909080813424242424242291B1C
            1F1F2C2C3914142E0E09090808071342424242424229181B1F1F2C2C39140D2F
            0E09080704040625272731313319151B1C1F2C2C3E0D05380908080403020304
            0808090E1212151B1C1F2C2C4005003F0B080704020002040708090E1212151B
            1C1F2C283F00001E26080804030202040808090E1212121B1C1F2C371E000001
            3F0B08070404040708090E0E1215151B1C1F283F010000001435090808070808
            09090E121215181B1F1F3D1400000000002B2F0908080809090E0F1212151B1C
            1F362B000000000000002B3A0B09090E0E0F121215181B223A2B000000000000
            000000143F26110E12121215151A373F140000000000000000000000011E3F3B
            343030363B3F1E01000000000000000000000000000000050D14140D05000000
            000000000000}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000444ADB00444A
            DC00454BDC00565BDF00575DE100585DE200696CDB007578DE007679DE008F90
            DD008F91DF009091DF008285E200A3A2DB00A8A6DA00ACABDF00AFADDC00A9AA
            E700ACAEEC00ADAFEE00B7B7E300BBB9E000DBBFA300DCBFA200DDBFA300DDBF
            A400C3BFD800DCC0A400DCC0A500DCC1A500DDC0A500DCC1A700DCC2A600DCC3
            A800DDC2A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DCC4AB00DDC5
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DEC4AC00DFC5AC00DEC6
            AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8B000DEC8B200DEC9B200DFC9
            B300DECAB400DFCBB500DFCDB700DFCEB700DFCCB800DFCEB900E0C5AB00E0C5
            AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8B200E2C9B300E1CB
            B700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E1CC
            B900E0CEB800E0CFB800E1CFB900E0CFBB00E3CCB900E3CCB900E2CDBA00E3CD
            BB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CFBE00E0D0B900E0D0
            BA00E1D0BA00E0D1BB00E0D0BC00E0D1BC00E0D1BD00E1D1BE00E1D2BD00E0D2
            BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3BF00E5D0BF00E6D0
            BD00E6D0BE00E6D1BE00E7D2BF00CDCADF00CECADD00D3CFDC00D7D2D900D4D0
            DE00D4D1DF00DBD5D700DDD6D500DBD6DC00DDD7D900DFD8D400C1C0E300C0C0
            E900D7D5E500E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3
            C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7
            C700E4D7C600E3D7C800E6D6C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DA
            CB00E5D8C900E4D9CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E4DACD00E5DA
            CC00E4DBCE00E4DBCF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4
            C300E8D4C400E9D5C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
            C900EBD9CB00E8DCCF00E3DBD000E5DCD000E5DDD100E7DDD000E6DCD000E6DD
            D300E6DED300E7DED300E6DED400E7DFD500E1DBD900E3DCDA00E7E0D700E7E1
            D900E8E0D500EFE1D500E8E1D800E8E1D900E8E2DA00E9E3DB00E9E3DA00E8E3
            DF00EAE4DC00EAE4DD00EBE5DD00EBE5DF00F0E1D600F0E2D600F0E2D700F0E3
            D700F0E3D800F3E8DF00EBE6E000E8E5E600EBE8E600ECE8E400EDE9E500EEEA
            E700EAE8ED00EEEBE800EDEAED00EFECE900EEECF200F3E8E000F4EAE100F4EA
            E200F5EBE300F2EFED00F6EEE800F7EFE900F7EFEA00F0EEF400F3F0EF00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C26666C2F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF617171717171717
            171741FAFFFFFFFFFFFFFFFFFFFFFF7A1717171716161617171717171EFFFFFF
            FFFFFFFEFEFA17171F16243E96A8B0A36E2117171718FCFFFFFFFFFEFE171716
            7296A8C4CCD6D9E4E4D98C16171717FCFEFFFFFE43173E8B9AA8C4CCD1E4E8EB
            EBEBE7D021171764FEFFFFFA17169A9696A8C4D1D9E8EDF8F8F8EDE8CA161717
            E3FEFE161793968B9AC4CCD6E4EBF3FAFBFAF8EBE499171719FEFD172C876E93
            9AB0C9D6D98A8AEAEA8A8AEEE4D0291717F6C217A8A555939CB0CADA0B010101
            010101EDE4D66C1717E2BA179A8F6B8C9BA9C6D2100101010101017DD9D4991D
            175F5F17C971697296A8B3CB7F0C080808080C8AD7CDA916174B6616D66F536E
            929BABC5CBE0DDE9E7E7DBD5CDC5A32D1741BC17D9953D5572989CB0C9CCD5D5
            D5D5CDCDC8B0961B17BEEF17C9C3383D6D92969CA8C4C9C9C9C9C9C4ABA37134
            17C2F417C9E4384C3F6E8C9A9AA8A4B0B0B0ABAB9A983B1717FAFA1719E9AC34
            4C3D6D7293969A9AA39A9A9793723D1717FAFEEF17D8ED6A384C53556E729393
            8F938C72713F1717F2FDFEFC4517D8EF68343A3D3D69556D6C6C556D743F1717
            FCFEFEFEFA1717E7E8A04C34384C3D3D3D537096351717FAFEFEFFFEFDFA1717
            ADE4DAAC764F536B95A6983F1717F4FEFEFEFFFEFEFEFC191721C7D8D4CDCAC5
            B037171747F6FCFEFEFFFFFEFEFEFEFAF22F171717171717171717DEFEFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C15F434B78C3EFF6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnpersonContactDelete
          DockOrientation = doNoOrient
        end
        object btnContactSave: TElSpeedButton
          Left = 63
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonContactPost
          DockOrientation = doNoOrient
        end
        object btnContactCancel: TElSpeedButton
          Left = 93
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
            9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
            A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
            A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
            AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
            B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
            B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
            B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
            B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
            B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
            B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
            B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
            BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
            C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
            C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
            C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
            CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
            C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
            CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
            D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
            D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
            D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
            DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
            E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
            E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
            F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
            23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
            FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
            757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
            60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
            F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
            C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
            00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
            23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
            ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
            012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
            23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
            F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
            B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
            FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
            CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
            8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
            FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
          DisabledImage.Data = {
            AA040000424DAA040000000000006A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
            AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
            B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
            BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
            C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
            CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
            D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
            E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
            E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
            E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
            EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
            8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
            3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
            2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
            4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
            4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
            30252020518B844E5D6064686B310B0000131600000009383329222041847C54
            64666E7072726C15000000000635463E37302520387B7657666E727576767674
            0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
            3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
            71777C818588420001645603000018484037302541848B536F777E83888C7A02
            1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
            3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
            7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
            726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
            46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
            8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
            7B75757C848B8C8C8C8C8C8C8C8C}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB716A00AC75
            6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
            8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
            8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
            D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
            CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
            D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
            EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
            EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
            E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
            ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
            F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
            8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
            A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
            B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
            B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
            B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
            BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
            DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
            C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
            C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
            EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
            F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
            C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
            C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
            D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
            D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
            E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
            EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
            FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
            15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
            FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
            778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
            8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
            B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
            DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
            00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
            153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
            ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
            0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
            1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
            FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
            D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
            EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
            4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
            CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
            FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A96F6800AB72
            6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
            8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
            8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
            9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
            A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
            A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
            B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
            A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
            BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
            B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
            AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
            B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
            BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
            BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
            BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
            BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
            BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
            C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
            C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
            C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
            C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
            CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
            C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
            C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
            D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
            DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
            E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
            1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
            FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
            94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
            F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
            F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
            C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
            001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
            297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
            8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
            E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
            1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
            5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
            A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
            FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
            EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
            C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
            FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonContactCancel
          DockOrientation = doNoOrient
        end
        object RzBmpButton3: TRzBmpButton
          Left = 122
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintContactsReport
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 3
        DesignSize = (
          1252
          38)
        object RzLabel3: TRzLabel
          Left = 7
          Top = 4
          Width = 1238
          Height = 30
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Contact '
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
    end
    object tbsVisits: TRzTabSheet
      Color = clWindow
      Caption = 'Visits'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel2: TRzLabel
          Left = 6
          Top = 6
          Width = 1240
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Patient Visits'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzToolbar8: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 1
        ThemeAware = False
        ToolbarControls = (
          btnAtnPatientVisitsAdd)
        object btnAtnPatientVisitsAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = dmPatient.atnAddTodaysVisit
          DockOrientation = doNoOrient
        end
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Align = alClient
        Caption = 'Patient Visits'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ThemeAware = False
        object dxDBGrid1: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1250
          Height = 346
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'HealthCareReg_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dmPatient.dsqryHealthCareReg
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -12
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = [fsBold]
          RegistryPath = '\Software\RxSolution\1.2\Grids\Patient\PatientVisits'
          object dxDBGrid1Date_dat: TdxDBGridDateColumn
            Caption = 'Date'
            Sorted = csDown
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Date_dat'
          end
          object dxDBGrid1ConsultingRoom_str: TdxDBGridColumn
            Caption = 'Consulting Room'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ConsultingRoom_str'
          end
          object dxDBGrid1Clinic_str: TdxDBGridColumn
            Caption = 'Clinic'
            DisableEditor = True
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Clinic_str'
          end
          object dxDBGrid1CompletedBy_str: TdxDBGridColumn
            Caption = 'Completed By'
            Width = 284
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CompletedBy_str'
          end
        end
      end
    end
    object TbsAllergies: TRzTabSheet
      Hint = 'Patient Allergies'
      Color = clWindow
      Caption = '&Allergies'
      object RzToolbar5: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 0
        ThemeAware = False
        ToolbarControls = (
          btnAllergyAdd
          btnAllergyDelete
          ElSpeedButton3
          ElSpeedButton4
          RzBmpButton2
          Label33)
        object btnAllergyAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPerosnAllegryInsert
          DockOrientation = doNoOrient
        end
        object btnAllergyDelete: TElSpeedButton
          Left = 33
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000918FE3009190
            E4009190E5009291E5009291E7009392E800A6A2DC00A6A3DE00B9B5DA00BAB6
            DC00BBB7DD00A9A7E600ABAAE900BBB8E000BDBAE300BEBCE600C7BFD200C5BE
            D400C0BFE900DFC9AC00DFC9AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB200DFCCB300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCE
            B800DFCFB800E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CE
            B300E4CFB400E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
            B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
            BD00E2D3BE00E3D3BF00E5D1B800E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C7C1D400C6C1DA00D3CACD00D5CE
            D300DFD4C700DFD5C800DED4CC00DCD4D100DDD6D300DED8D600DFD9D800C8C5
            E000CECCE600CFCEEC00D1CFEB00DAD6E100E0D3C000E0D3C100E1D3C000E0D4
            C100E1D4C100E1D4C200E1D4C300E1D5C300E3D4C100E2D5C300E0D4C500E1D5
            C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6
            C200E6D5C100E4D7C600E0D6CA00E2D7C800E7D8C500E7D9C700E2D8CB00E3D9
            CA00E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DA
            CD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DDCF00E9D7C100E8D6
            C000E8D7C200E9D8C300E9D9C400E8D9C500EBD9C400E8DAC800E8DAC900E9DA
            C800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DD
            CF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDFCD00EDDECD00ECDF
            CF00EDDFCE00EEDFCE00E2DAD100E1DAD600E5DCD000E5DDD100E5DED300E5DE
            D200E7DED200E6DFD500E0DBDC00E2DDDA00E8DED100E9DED000E8DFD300EADF
            D200E2DEE100EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E5E0DB00E7E2
            D900E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2
            DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DF00ECE4DB00F0E3
            D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E2E600E3E1
            EF00E9E5E100EBE6E100EBE7E100EAE7E700ECE7E000E8E5EB00EDE8E200EEE9
            E300ECE9E400EDE9E500EDEAE600EEEAE500EEEAE700EEEBEC00EFECE900EEEC
            F000F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F3F1F100F4F2F000F5F3F100F4F3F400F7F6F500FAF5F000F8F7F700F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFCEB3B3CEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA4D131313131313
            13138EFAFFFFFFFFFFFFFFFFFFFFFFBD1313132317252313131313139DFEFFFF
            FFFFFFFFFFFD3113282836343A34361F26131313134BFDFFFFFFFFFFFF4D1336
            62636362603E3D3A2E1F1513131331FEFFFFFFFFA313676A7070706D6B655F3E
            3A2E2117131313B3FFFFFFFA13377D7A818181807D706B65603D342117131313
            F0FEFE8E137D86A6A9A9A9A7A6817D7069623D2E2C2313138EFFFE1376A7A8AB
            B6B6B6ABABA7A6807069603D2E1C131313FAE71386ABB7C1C4C4C4B9B7B4A8A6
            8070653F3A21251313E7CD23ABB9C5C7D4D4D25A5951594E4E746B623D2E1C13
            13BEB32FB9C5D4DADEDC5A0000000000005170653F2E2C13139DB330C5D4DCE8
            EAEA5C000000000000087D6A603A2117139DCE26C7DAE8EBF3F5F5120C0B0B07
            07517D6B623D2D2313CDEF13D3DCEAF4F6FBF8F6E1D7D0C2ABA77C70633D331B
            13E4FC13C4DCEBF5FBFFFBF4EBE0D4C4B5A97C70633D2D1313FDFE884BDCEAF3
            F8FBF8F4E9DCD4C4B5A97C70633D2D134DFFFEF113C7E8EBF4F4F4EBE8DAC7B9
            ABA77C6D623D2313FAFFFFFDA323D9E8EAEBEAE8DCD4C5B7A886796B603A138E
            FDFFFFFFFF4D29DADEDEDCDAD4C5B9B4A9817065351349FDFFFFFFFFFFFD4D23
            C4D4D4D2C5B9B5A886796B3D132AFDFFFFFFFFFFFFFFFF9D1346B6B9B7B4A886
            7A661313A3FEFFFFFFFFFFFFFFFFFFFEF78E13132328282413134DF1FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDE7CDB3B3CEE7FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            3A040000424D3A04000000000000FA0100002800000018000000180000000100
            08000000000040020000610F0000610F00007100000000000000B7B7B700B7B7
            B800B8B8B900C1C1C200C2C2C200C7C7C700C7C8C800CDCDCE00CECECF00CFCF
            CF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2
            D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
            D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5
            E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8
            E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEBEB00EBEB
            EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
            EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
            7070707070706F69605A5A60696F70707070707070707070707070706D54382A
            211D1B1E2738546D70707070707070707070705B3324191515120C0A08081A31
            5B70707070707070706F4C2C201D1D1D1B1917120B0A0708244C6F7070707070
            704C2A252626262523201D1B17100B08071E4C70707070705A2F2A2D3030302D
            2B28251E1D18100B0807245A7070706D333134373939393734322D27211D1810
            0B0707316D70705433383E41414141413E39343027211D191008071A54706F38
            3D4047474949494747413E373027211D170B0707366F68334347494D5050504D
            4947443E3730271E1A10080724686039494B535557575330302826221C302D25
            1D170B071C5F5B3C4B53565A5C5C2E0000000000002832281E18100A1A5A5B3E
            53575A5E5F614000000000000007302B231B130A1A5A603D555A5E6465675D19
            060303030326342D251D130B1E5F6938575C6065696C6965615C514B473F3930
            261D170B27686F39555C62676C706C67615C555049413930241D1710386F7054
            475C6065696C69655F5A555049413930241D171D5470706D36585D6465676564
            5D59554D4741372D241D17316D7070705B3D5B5D6061605D5B575149473E342B
            211A2A5A70707070704C43595B5B5B5957514B474139322820274C7070707070
            706F4C3B55575755514B49423E342D282C4C6E70707070707070705A36444E4D
            4945423D37302D335A70707070707070707070706D5438373A3A39343138546D
            70707070707070707070707070706F69605A5A60686F7070707070707070}
          MouseInImage.Data = {
            82030000424D8203000000000000420100002800000018000000180000000100
            08000000000040020000610F0000610F00004300000000000000FFFFFF00EFF7
            FF00FFF7F700F7F7F700F7F7EF00DEEFFF00EFEFF700F7EFEF00EFEFE600EFE6
            E600E6E6E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600DED6EF00DEDE
            DE00E6DED600DED6E600ADD6F700E6DECE00E6D6D600D6D6D600E6D6CE00DED6
            CE00D6D6CE00E6D6C500DED6C500E6D6BD009CC5F700DED6BD00CEBDEF009CC5
            EF00D6CEC500D6C5D600E6CEBD00CEBDE6009CC5E600C5BDE600D6CEBD00D6C5
            CE00E6CEB5008CBDF700DECEB5008CBDEF009CBDE6008CBDE6009CBDDE00C5B5
            DE00D6C5B500C5B5D6008CB5E60073B5EF0084B5DE0094B5D6006BADEF0094B5
            CE0073ADE6006BADE6005AA5F70073ADDE0084ADD6005AA5EF006BA5E60073A5
            DE004A21DE00000000000000000002050D14140D050000000000000000000000
            00000000011E3F403E39393E403F1E010000000000000000000000143F37282C
            2C2C2C2C2C32393F140000000000000000002B3A221F1F1F1F1F2C2C2C2C2C32
            412B000000000000002B361C1C1C1C1C1F1F1F1F2C2C2C2C2C3E2B0000000000
            143A1C1B1B1B1B1B1B1C1C1F1F1F2C2C2C2C4114000000013F1A181515151515
            181B1B1C1F1F1F2C2C2C323F0100001E30151515121212151515181B1C1C1F1F
            2C2C2C391E00023F1712121212120F12121215151B1C1C1F2C2C2C323F00053B
            1212120E0E0E0E0E12121215151B1C1F1F2C2C2C40050D34120F0E0E09090E31
            3133333333191B1C1F2C2C2C3E0D142E0F0E0909080813424242424242291B1C
            1F1F2C2C3914142E0E09090808071342424242424229181B1F1F2C2C39140D2F
            0E09080704040625272731313319151B1C1F2C2C3E0D05380908080403020304
            0808090E1212151B1C1F2C2C4005003F0B080704020002040708090E1212151B
            1C1F2C283F00001E26080804030202040808090E1212121B1C1F2C371E000001
            3F0B08070404040708090E0E1215151B1C1F283F010000001435090808070808
            09090E121215181B1F1F3D1400000000002B2F0908080809090E0F1212151B1C
            1F362B000000000000002B3A0B09090E0E0F121215181B223A2B000000000000
            000000143F26110E12121215151A373F140000000000000000000000011E3F3B
            343030363B3F1E01000000000000000000000000000000050D14140D05000000
            000000000000}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000444ADB00444A
            DC00454BDC00565BDF00575DE100585DE200696CDB007578DE007679DE008F90
            DD008F91DF009091DF008285E200A3A2DB00A8A6DA00ACABDF00AFADDC00A9AA
            E700ACAEEC00ADAFEE00B7B7E300BBB9E000DBBFA300DCBFA200DDBFA300DDBF
            A400C3BFD800DCC0A400DCC0A500DCC1A500DDC0A500DCC1A700DCC2A600DCC3
            A800DDC2A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DCC4AB00DDC5
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DEC4AC00DFC5AC00DEC6
            AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8B000DEC8B200DEC9B200DFC9
            B300DECAB400DFCBB500DFCDB700DFCEB700DFCCB800DFCEB900E0C5AB00E0C5
            AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8B200E2C9B300E1CB
            B700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E1CC
            B900E0CEB800E0CFB800E1CFB900E0CFBB00E3CCB900E3CCB900E2CDBA00E3CD
            BB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CFBE00E0D0B900E0D0
            BA00E1D0BA00E0D1BB00E0D0BC00E0D1BC00E0D1BD00E1D1BE00E1D2BD00E0D2
            BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3BF00E5D0BF00E6D0
            BD00E6D0BE00E6D1BE00E7D2BF00CDCADF00CECADD00D3CFDC00D7D2D900D4D0
            DE00D4D1DF00DBD5D700DDD6D500DBD6DC00DDD7D900DFD8D400C1C0E300C0C0
            E900D7D5E500E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3
            C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7
            C700E4D7C600E3D7C800E6D6C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DA
            CB00E5D8C900E4D9CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E4DACD00E5DA
            CC00E4DBCE00E4DBCF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4
            C300E8D4C400E9D5C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
            C900EBD9CB00E8DCCF00E3DBD000E5DCD000E5DDD100E7DDD000E6DCD000E6DD
            D300E6DED300E7DED300E6DED400E7DFD500E1DBD900E3DCDA00E7E0D700E7E1
            D900E8E0D500EFE1D500E8E1D800E8E1D900E8E2DA00E9E3DB00E9E3DA00E8E3
            DF00EAE4DC00EAE4DD00EBE5DD00EBE5DF00F0E1D600F0E2D600F0E2D700F0E3
            D700F0E3D800F3E8DF00EBE6E000E8E5E600EBE8E600ECE8E400EDE9E500EEEA
            E700EAE8ED00EEEBE800EDEAED00EFECE900EEECF200F3E8E000F4EAE100F4EA
            E200F5EBE300F2EFED00F6EEE800F7EFE900F7EFEA00F0EEF400F3F0EF00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C26666C2F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF617171717171717
            171741FAFFFFFFFFFFFFFFFFFFFFFF7A1717171716161617171717171EFFFFFF
            FFFFFFFEFEFA17171F16243E96A8B0A36E2117171718FCFFFFFFFFFEFE171716
            7296A8C4CCD6D9E4E4D98C16171717FCFEFFFFFE43173E8B9AA8C4CCD1E4E8EB
            EBEBE7D021171764FEFFFFFA17169A9696A8C4D1D9E8EDF8F8F8EDE8CA161717
            E3FEFE161793968B9AC4CCD6E4EBF3FAFBFAF8EBE499171719FEFD172C876E93
            9AB0C9D6D98A8AEAEA8A8AEEE4D0291717F6C217A8A555939CB0CADA0B010101
            010101EDE4D66C1717E2BA179A8F6B8C9BA9C6D2100101010101017DD9D4991D
            175F5F17C971697296A8B3CB7F0C080808080C8AD7CDA916174B6616D66F536E
            929BABC5CBE0DDE9E7E7DBD5CDC5A32D1741BC17D9953D5572989CB0C9CCD5D5
            D5D5CDCDC8B0961B17BEEF17C9C3383D6D92969CA8C4C9C9C9C9C9C4ABA37134
            17C2F417C9E4384C3F6E8C9A9AA8A4B0B0B0ABAB9A983B1717FAFA1719E9AC34
            4C3D6D7293969A9AA39A9A9793723D1717FAFEEF17D8ED6A384C53556E729393
            8F938C72713F1717F2FDFEFC4517D8EF68343A3D3D69556D6C6C556D743F1717
            FCFEFEFEFA1717E7E8A04C34384C3D3D3D537096351717FAFEFEFFFEFDFA1717
            ADE4DAAC764F536B95A6983F1717F4FEFEFEFFFEFEFEFC191721C7D8D4CDCAC5
            B037171747F6FCFEFEFFFFFEFEFEFEFAF22F171717171717171717DEFEFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C15F434B78C3EFF6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonAllergyDelete
          DockOrientation = doNoOrient
        end
        object ElSpeedButton3: TElSpeedButton
          Left = 63
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonAllergyPost
          DockOrientation = doNoOrient
        end
        object ElSpeedButton4: TElSpeedButton
          Left = 93
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
            9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
            A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
            A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
            AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
            B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
            B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
            B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
            B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
            B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
            B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
            B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
            BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
            C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
            C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
            C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
            CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
            C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
            CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
            D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
            D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
            D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
            DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
            E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
            E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
            F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
            23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
            FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
            757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
            60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
            F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
            C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
            00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
            23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
            ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
            012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
            23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
            F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
            B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
            FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
            CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
            8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
            FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
          DisabledImage.Data = {
            AA040000424DAA040000000000006A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
            AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
            B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
            BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
            C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
            CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
            D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
            E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
            E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
            E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
            EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
            8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
            3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
            2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
            4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
            4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
            30252020518B844E5D6064686B310B0000131600000009383329222041847C54
            64666E7072726C15000000000635463E37302520387B7657666E727576767674
            0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
            3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
            71777C818588420001645603000018484037302541848B536F777E83888C7A02
            1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
            3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
            7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
            726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
            46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
            8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
            7B75757C848B8C8C8C8C8C8C8C8C}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB716A00AC75
            6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
            8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
            8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
            D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
            CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
            D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
            EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
            EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
            E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
            ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
            F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
            8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
            A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
            B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
            B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
            B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
            BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
            DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
            C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
            C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
            EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
            F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
            C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
            C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
            D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
            D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
            E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
            EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
            FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
            15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
            FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
            778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
            8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
            B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
            DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
            00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
            153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
            ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
            0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
            1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
            FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
            D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
            EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
            4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
            CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
            FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A96F6800AB72
            6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
            8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
            8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
            9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
            A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
            A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
            B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
            A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
            BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
            B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
            AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
            B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
            BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
            BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
            BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
            BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
            BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
            C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
            C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
            C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
            C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
            CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
            C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
            C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
            D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
            DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
            E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
            1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
            FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
            94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
            F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
            F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
            C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
            001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
            297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
            8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
            E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
            1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
            5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
            A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
            FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
            EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
            C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
            FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnpersonAllergyCancel
          DockOrientation = doNoOrient
        end
        object Label33: TLabel
          Left = 154
          Top = 13
          Width = 326
          Height = 18
          Caption = '(Allergies listed are for record purpose only)'
        end
        object RzBmpButton2: TRzBmpButton
          Left = 122
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintAllergies
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 1
        DesignSize = (
          1252
          43)
        object RzLabel6: TRzLabel
          Left = 4
          Top = 6
          Width = 1242
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Allergies'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzGroupBox15: TRzGroupBox
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Align = alClient
        Caption = 'Allergy Information and history'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ThemeAware = False
        object grdPersonAllergies: TcxGrid
          Left = 1
          Top = 17
          Width = 1250
          Height = 346
          Align = alClient
          BorderStyle = cxcbsNone
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          RootLevelOptions.DetailFrameColor = clInfoBk
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = dmPatient.dsqryPersonAllergies
            DataController.DetailKeyFieldNames = 'personAllergy_ID'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.CustomizeDialog = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Background = cxsLbl_Background
            Styles.Content = cxs01_Content
            Styles.Selection = cxBody
            Styles.Header = cxLabTestHeader
            Styles.Indicator = cxs01_Indicator
            object cxGridDBAllergyDateEntered_Dat: TcxGridDBColumn
              Caption = 'Date'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Sorting = False
              Styles.Header = cxLabTestHeader
              Width = 133
              DataBinding.FieldName = 'personAllergyDateEntered_Dat'
            end
            object cxGridDBAllergyDescription_Str: TcxGridDBColumn
              Caption = 'Allergy Description'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'allergyCode_Str'
              Properties.ListColumns = <
                item
                  FieldName = 'allergyDescription_Str'
                end>
              Properties.ListOptions.ColumnSorting = False
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmPatient.dsqryAllergyLookup
              Options.Sorting = False
              Width = 279
              DataBinding.FieldName = 'personAllergyDescription_Str'
            end
            object cxGridDBAllergySource_Str: TcxGridDBColumn
              Caption = 'Source'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Self Report'
                'History'
                'Doctor'
                'Nurse'
                'Pharmacist')
              Options.Sorting = False
              Width = 332
              DataBinding.FieldName = 'personAllergySource_Str'
            end
          end
          object cxGridLevel1Allergies: TcxGridLevel
            GridView = cxGridDBTableView1
            Options.DetailFrameColor = clNone
          end
        end
      end
    end
    object TbsAnthropometries: TRzTabSheet
      Hint = 'Patient Weight and Height'
      Color = clWindow
      Caption = 'A&nthropometrics'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel7: TRzLabel
          Left = 6
          Top = 6
          Width = 1240
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Anthropometrics'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzGroupBox11: TRzGroupBox
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Align = alClient
        Caption = 'Anthropometric History'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ThemeAware = False
        object grdPersonWeight: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1174
          Height = 346
          BandRowCount = 2
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 2
          KeyField = 'personWeight_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Verdana'
          BandFont.Style = []
          DataSource = dmPatient.dsqryPersonIdealWeight
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -12
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Verdana'
          PreviewFont.Style = []
          object grdPersonWeightpersonWeightDateRecorded_Dat: TdxDBGridDateColumn
            Caption = 'Date'
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personWeightDateRecorded_Dat'
          end
          object grdPersonWeightpersonWeight_int: TdxDBGridMaskColumn
            Caption = 'Weight in Kg'
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personWeight_int'
          end
          object grdPersonWeightpersonHeight_Int: TdxDBGridMaskColumn
            Caption = 'Height in cm'
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personHeight_Int'
          end
          object grdPersonWeightpersonBMI_dbl: TdxDBGridColumn
            Caption = 'BMI'
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personBMI_dbl'
          end
          object grdPersonWeightpersonBSA_dbl: TdxDBGridColumn
            Caption = 'BSA'
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personBSA_dbl'
          end
          object grdPersonWeightpersonBP_str: TdxDBGridMaskColumn
            Caption = 'BP'
            Width = 171
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personBP_str'
            EditMask = '###/###;1;_'
          end
          object grdPersonWeightpersonHaemoglobin_dbl: TdxDBGridColumn
            Caption = 'Heamoglobin'
            Width = 229
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personHaemoglobin_dbl'
          end
          object grdPersonWeightpersonPulse_int: TdxDBGridColumn
            Caption = 'Pulse (BPM)'
            Visible = False
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personPulse_int'
          end
          object grdPersonWeightpersonRespiratoryRate_str: TdxDBGridMaskColumn
            Caption = 'R/Rate'
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personRespiratoryRate_str'
            EditMask = '###/###;1;_'
          end
          object grdPersonWeightpersonTemperature_dbl: TdxDBGridColumn
            Caption = 'Temperature ('#176'C)'
            Visible = False
            Width = 168
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personTemperature_dbl'
          end
          object grdPersonWeightpersonMUAC_dbl: TdxDBGridColumn
            Caption = 'MUAC'
            Visible = False
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personMUAC_dbl'
          end
          object grdPersonWeightpersonWeightforHeight_str: TdxDBGridColumn
            Caption = 'WfH'
            Visible = False
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personWeightforHeight_str'
          end
          object grdPersonWeightpersonBloodGlucose_dbl: TdxDBGridColumn
            Caption = 'Blood Glucose'
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personBloodGlucose_dbl'
          end
          object grdPersonWeightpersonUrineTest_str: TdxDBGridColumn
            Caption = 'Urine Test'
            Width = 152
            BandIndex = 0
            RowIndex = 1
            FieldName = 'personUrineTest_str'
            StoredRowIndex = 1
          end
        end
      end
      object RzToolbar6: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 2
        ThemeAware = False
        ToolbarControls = (
          btnAnthroAdd
          atnAnthroDelete
          ElSpeedButton6
          ElSpeedButton7
          RzBmpButton4
          ElSpeedButton19)
        object btnAnthroAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnpersonAnthroInsert
          DockOrientation = doNoOrient
        end
        object atnAnthroDelete: TElSpeedButton
          Left = 33
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000918FE3009190
            E4009190E5009291E5009291E7009392E800A6A2DC00A6A3DE00B9B5DA00BAB6
            DC00BBB7DD00A9A7E600ABAAE900BBB8E000BDBAE300BEBCE600C7BFD200C5BE
            D400C0BFE900DFC9AC00DFC9AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB200DFCCB300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCE
            B800DFCFB800E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CE
            B300E4CFB400E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
            B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
            BD00E2D3BE00E3D3BF00E5D1B800E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C7C1D400C6C1DA00D3CACD00D5CE
            D300DFD4C700DFD5C800DED4CC00DCD4D100DDD6D300DED8D600DFD9D800C8C5
            E000CECCE600CFCEEC00D1CFEB00DAD6E100E0D3C000E0D3C100E1D3C000E0D4
            C100E1D4C100E1D4C200E1D4C300E1D5C300E3D4C100E2D5C300E0D4C500E1D5
            C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6
            C200E6D5C100E4D7C600E0D6CA00E2D7C800E7D8C500E7D9C700E2D8CB00E3D9
            CA00E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DA
            CD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DDCF00E9D7C100E8D6
            C000E8D7C200E9D8C300E9D9C400E8D9C500EBD9C400E8DAC800E8DAC900E9DA
            C800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DD
            CF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDFCD00EDDECD00ECDF
            CF00EDDFCE00EEDFCE00E2DAD100E1DAD600E5DCD000E5DDD100E5DED300E5DE
            D200E7DED200E6DFD500E0DBDC00E2DDDA00E8DED100E9DED000E8DFD300EADF
            D200E2DEE100EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E5E0DB00E7E2
            D900E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2
            DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DF00ECE4DB00F0E3
            D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E2E600E3E1
            EF00E9E5E100EBE6E100EBE7E100EAE7E700ECE7E000E8E5EB00EDE8E200EEE9
            E300ECE9E400EDE9E500EDEAE600EEEAE500EEEAE700EEEBEC00EFECE900EEEC
            F000F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F3F1F100F4F2F000F5F3F100F4F3F400F7F6F500FAF5F000F8F7F700F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFCEB3B3CEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA4D131313131313
            13138EFAFFFFFFFFFFFFFFFFFFFFFFBD1313132317252313131313139DFEFFFF
            FFFFFFFFFFFD3113282836343A34361F26131313134BFDFFFFFFFFFFFF4D1336
            62636362603E3D3A2E1F1513131331FEFFFFFFFFA313676A7070706D6B655F3E
            3A2E2117131313B3FFFFFFFA13377D7A818181807D706B65603D342117131313
            F0FEFE8E137D86A6A9A9A9A7A6817D7069623D2E2C2313138EFFFE1376A7A8AB
            B6B6B6ABABA7A6807069603D2E1C131313FAE71386ABB7C1C4C4C4B9B7B4A8A6
            8070653F3A21251313E7CD23ABB9C5C7D4D4D25A5951594E4E746B623D2E1C13
            13BEB32FB9C5D4DADEDC5A0000000000005170653F2E2C13139DB330C5D4DCE8
            EAEA5C000000000000087D6A603A2117139DCE26C7DAE8EBF3F5F5120C0B0B07
            07517D6B623D2D2313CDEF13D3DCEAF4F6FBF8F6E1D7D0C2ABA77C70633D331B
            13E4FC13C4DCEBF5FBFFFBF4EBE0D4C4B5A97C70633D2D1313FDFE884BDCEAF3
            F8FBF8F4E9DCD4C4B5A97C70633D2D134DFFFEF113C7E8EBF4F4F4EBE8DAC7B9
            ABA77C6D623D2313FAFFFFFDA323D9E8EAEBEAE8DCD4C5B7A886796B603A138E
            FDFFFFFFFF4D29DADEDEDCDAD4C5B9B4A9817065351349FDFFFFFFFFFFFD4D23
            C4D4D4D2C5B9B5A886796B3D132AFDFFFFFFFFFFFFFFFF9D1346B6B9B7B4A886
            7A661313A3FEFFFFFFFFFFFFFFFFFFFEF78E13132328282413134DF1FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDE7CDB3B3CEE7FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            3A040000424D3A04000000000000FA0100002800000018000000180000000100
            08000000000040020000610F0000610F00007100000000000000B7B7B700B7B7
            B800B8B8B900C1C1C200C2C2C200C7C7C700C7C8C800CDCDCE00CECECF00CFCF
            CF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2
            D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
            D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5
            E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8
            E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEBEB00EBEB
            EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
            EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
            7070707070706F69605A5A60696F70707070707070707070707070706D54382A
            211D1B1E2738546D70707070707070707070705B3324191515120C0A08081A31
            5B70707070707070706F4C2C201D1D1D1B1917120B0A0708244C6F7070707070
            704C2A252626262523201D1B17100B08071E4C70707070705A2F2A2D3030302D
            2B28251E1D18100B0807245A7070706D333134373939393734322D27211D1810
            0B0707316D70705433383E41414141413E39343027211D191008071A54706F38
            3D4047474949494747413E373027211D170B0707366F68334347494D5050504D
            4947443E3730271E1A10080724686039494B535557575330302826221C302D25
            1D170B071C5F5B3C4B53565A5C5C2E0000000000002832281E18100A1A5A5B3E
            53575A5E5F614000000000000007302B231B130A1A5A603D555A5E6465675D19
            060303030326342D251D130B1E5F6938575C6065696C6965615C514B473F3930
            261D170B27686F39555C62676C706C67615C555049413930241D1710386F7054
            475C6065696C69655F5A555049413930241D171D5470706D36585D6465676564
            5D59554D4741372D241D17316D7070705B3D5B5D6061605D5B575149473E342B
            211A2A5A70707070704C43595B5B5B5957514B474139322820274C7070707070
            706F4C3B55575755514B49423E342D282C4C6E70707070707070705A36444E4D
            4945423D37302D335A70707070707070707070706D5438373A3A39343138546D
            70707070707070707070707070706F69605A5A60686F7070707070707070}
          MouseInImage.Data = {
            82030000424D8203000000000000420100002800000018000000180000000100
            08000000000040020000610F0000610F00004300000000000000FFFFFF00EFF7
            FF00FFF7F700F7F7F700F7F7EF00DEEFFF00EFEFF700F7EFEF00EFEFE600EFE6
            E600E6E6E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600DED6EF00DEDE
            DE00E6DED600DED6E600ADD6F700E6DECE00E6D6D600D6D6D600E6D6CE00DED6
            CE00D6D6CE00E6D6C500DED6C500E6D6BD009CC5F700DED6BD00CEBDEF009CC5
            EF00D6CEC500D6C5D600E6CEBD00CEBDE6009CC5E600C5BDE600D6CEBD00D6C5
            CE00E6CEB5008CBDF700DECEB5008CBDEF009CBDE6008CBDE6009CBDDE00C5B5
            DE00D6C5B500C5B5D6008CB5E60073B5EF0084B5DE0094B5D6006BADEF0094B5
            CE0073ADE6006BADE6005AA5F70073ADDE0084ADD6005AA5EF006BA5E60073A5
            DE004A21DE00000000000000000002050D14140D050000000000000000000000
            00000000011E3F403E39393E403F1E010000000000000000000000143F37282C
            2C2C2C2C2C32393F140000000000000000002B3A221F1F1F1F1F2C2C2C2C2C32
            412B000000000000002B361C1C1C1C1C1F1F1F1F2C2C2C2C2C3E2B0000000000
            143A1C1B1B1B1B1B1B1C1C1F1F1F2C2C2C2C4114000000013F1A181515151515
            181B1B1C1F1F1F2C2C2C323F0100001E30151515121212151515181B1C1C1F1F
            2C2C2C391E00023F1712121212120F12121215151B1C1C1F2C2C2C323F00053B
            1212120E0E0E0E0E12121215151B1C1F1F2C2C2C40050D34120F0E0E09090E31
            3133333333191B1C1F2C2C2C3E0D142E0F0E0909080813424242424242291B1C
            1F1F2C2C3914142E0E09090808071342424242424229181B1F1F2C2C39140D2F
            0E09080704040625272731313319151B1C1F2C2C3E0D05380908080403020304
            0808090E1212151B1C1F2C2C4005003F0B080704020002040708090E1212151B
            1C1F2C283F00001E26080804030202040808090E1212121B1C1F2C371E000001
            3F0B08070404040708090E0E1215151B1C1F283F010000001435090808070808
            09090E121215181B1F1F3D1400000000002B2F0908080809090E0F1212151B1C
            1F362B000000000000002B3A0B09090E0E0F121215181B223A2B000000000000
            000000143F26110E12121215151A373F140000000000000000000000011E3F3B
            343030363B3F1E01000000000000000000000000000000050D14140D05000000
            000000000000}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000444ADB00444A
            DC00454BDC00565BDF00575DE100585DE200696CDB007578DE007679DE008F90
            DD008F91DF009091DF008285E200A3A2DB00A8A6DA00ACABDF00AFADDC00A9AA
            E700ACAEEC00ADAFEE00B7B7E300BBB9E000DBBFA300DCBFA200DDBFA300DDBF
            A400C3BFD800DCC0A400DCC0A500DCC1A500DDC0A500DCC1A700DCC2A600DCC3
            A800DDC2A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DCC4AB00DDC5
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DEC4AC00DFC5AC00DEC6
            AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8B000DEC8B200DEC9B200DFC9
            B300DECAB400DFCBB500DFCDB700DFCEB700DFCCB800DFCEB900E0C5AB00E0C5
            AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8B200E2C9B300E1CB
            B700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E1CC
            B900E0CEB800E0CFB800E1CFB900E0CFBB00E3CCB900E3CCB900E2CDBA00E3CD
            BB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CFBE00E0D0B900E0D0
            BA00E1D0BA00E0D1BB00E0D0BC00E0D1BC00E0D1BD00E1D1BE00E1D2BD00E0D2
            BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3BF00E5D0BF00E6D0
            BD00E6D0BE00E6D1BE00E7D2BF00CDCADF00CECADD00D3CFDC00D7D2D900D4D0
            DE00D4D1DF00DBD5D700DDD6D500DBD6DC00DDD7D900DFD8D400C1C0E300C0C0
            E900D7D5E500E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3
            C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7
            C700E4D7C600E3D7C800E6D6C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DA
            CB00E5D8C900E4D9CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E4DACD00E5DA
            CC00E4DBCE00E4DBCF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4
            C300E8D4C400E9D5C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
            C900EBD9CB00E8DCCF00E3DBD000E5DCD000E5DDD100E7DDD000E6DCD000E6DD
            D300E6DED300E7DED300E6DED400E7DFD500E1DBD900E3DCDA00E7E0D700E7E1
            D900E8E0D500EFE1D500E8E1D800E8E1D900E8E2DA00E9E3DB00E9E3DA00E8E3
            DF00EAE4DC00EAE4DD00EBE5DD00EBE5DF00F0E1D600F0E2D600F0E2D700F0E3
            D700F0E3D800F3E8DF00EBE6E000E8E5E600EBE8E600ECE8E400EDE9E500EEEA
            E700EAE8ED00EEEBE800EDEAED00EFECE900EEECF200F3E8E000F4EAE100F4EA
            E200F5EBE300F2EFED00F6EEE800F7EFE900F7EFEA00F0EEF400F3F0EF00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C26666C2F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF617171717171717
            171741FAFFFFFFFFFFFFFFFFFFFFFF7A1717171716161617171717171EFFFFFF
            FFFFFFFEFEFA17171F16243E96A8B0A36E2117171718FCFFFFFFFFFEFE171716
            7296A8C4CCD6D9E4E4D98C16171717FCFEFFFFFE43173E8B9AA8C4CCD1E4E8EB
            EBEBE7D021171764FEFFFFFA17169A9696A8C4D1D9E8EDF8F8F8EDE8CA161717
            E3FEFE161793968B9AC4CCD6E4EBF3FAFBFAF8EBE499171719FEFD172C876E93
            9AB0C9D6D98A8AEAEA8A8AEEE4D0291717F6C217A8A555939CB0CADA0B010101
            010101EDE4D66C1717E2BA179A8F6B8C9BA9C6D2100101010101017DD9D4991D
            175F5F17C971697296A8B3CB7F0C080808080C8AD7CDA916174B6616D66F536E
            929BABC5CBE0DDE9E7E7DBD5CDC5A32D1741BC17D9953D5572989CB0C9CCD5D5
            D5D5CDCDC8B0961B17BEEF17C9C3383D6D92969CA8C4C9C9C9C9C9C4ABA37134
            17C2F417C9E4384C3F6E8C9A9AA8A4B0B0B0ABAB9A983B1717FAFA1719E9AC34
            4C3D6D7293969A9AA39A9A9793723D1717FAFEEF17D8ED6A384C53556E729393
            8F938C72713F1717F2FDFEFC4517D8EF68343A3D3D69556D6C6C556D743F1717
            FCFEFEFEFA1717E7E8A04C34384C3D3D3D537096351717FAFEFEFFFEFDFA1717
            ADE4DAAC764F536B95A6983F1717F4FEFEFEFFFEFEFEFC191721C7D8D4CDCAC5
            B037171747F6FCFEFEFFFFFEFEFEFEFAF22F171717171717171717DEFEFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C15F434B78C3EFF6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonAnthroDelete
          DockOrientation = doNoOrient
        end
        object ElSpeedButton6: TElSpeedButton
          Left = 63
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonAnthroPost
          DockOrientation = doNoOrient
        end
        object ElSpeedButton7: TElSpeedButton
          Left = 93
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
            9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
            A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
            A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
            AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
            B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
            B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
            B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
            B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
            B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
            B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
            B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
            BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
            C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
            C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
            C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
            CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
            C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
            CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
            D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
            D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
            D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
            DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
            E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
            E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
            F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
            23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
            FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
            757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
            60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
            F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
            C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
            00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
            23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
            ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
            012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
            23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
            F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
            B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
            FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
            CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
            8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
            FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
          DisabledImage.Data = {
            AA040000424DAA040000000000006A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
            AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
            B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
            BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
            C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
            CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
            D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
            E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
            E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
            E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
            EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
            8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
            3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
            2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
            4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
            4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
            30252020518B844E5D6064686B310B0000131600000009383329222041847C54
            64666E7072726C15000000000635463E37302520387B7657666E727576767674
            0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
            3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
            71777C818588420001645603000018484037302541848B536F777E83888C7A02
            1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
            3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
            7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
            726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
            46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
            8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
            7B75757C848B8C8C8C8C8C8C8C8C}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB716A00AC75
            6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
            8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
            8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
            D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
            CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
            D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
            EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
            EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
            E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
            ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
            F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
            8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
            A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
            B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
            B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
            B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
            BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
            DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
            C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
            C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
            EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
            F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
            C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
            C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
            D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
            D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
            E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
            EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
            FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
            15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
            FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
            778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
            8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
            B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
            DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
            00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
            153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
            ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
            0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
            1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
            FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
            D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
            EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
            4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
            CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
            FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A96F6800AB72
            6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
            8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
            8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
            9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
            A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
            A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
            B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
            A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
            BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
            B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
            AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
            B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
            BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
            BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
            BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
            BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
            BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
            C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
            C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
            C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
            C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
            CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
            C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
            C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
            D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
            DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
            E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
            1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
            FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
            94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
            F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
            F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
            C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
            001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
            297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
            8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
            E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
            1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
            5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
            A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
            FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
            EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
            C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
            FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonAnthroCancel
          DockOrientation = doNoOrient
        end
        object ElSpeedButton19: TElSpeedButton
          Left = 154
          Top = 5
          Width = 36
          Height = 34
          PullDownBtn = mbLeft
          PullDownInterval = 0
          PullDownEnabled = True
          Flat = True
          NormalImage.Data = {
            CA050000424DCA050000000000008A0300002800000018000000180000000100
            08000000000040020000610F0000610F0000D500000000000000A96E6700AA70
            6900AA716A00AC746C00AC746D00AC746E00AE776F00AE787000AE797100AF79
            7200AF797300AF7A7300B07C7500B17C7500B17D7500B17E7700B27E7700B27F
            7700B3817A00B4837A00B5847A00B5847C00B5847D00B6867E00B7887F00B787
            8000B7898000B7898100B8898300B88A8400B88B8400BA8C8700BC8F8A00BE94
            8A00BF978F00BF989000C29B9000C39E9200C29D9400C39F9700C4A09600C5A0
            9B00C6A49A00C7A49F00C7A79E00C9A99D00C8A89F00C7A6A000C9AAA400CAA9
            A400CAAAA500CAACA200CBADA300CBADA700CCAEA800CEB2AD00D0B6A800D0B8
            AE00D3BBAF00D0B5B000D3B8B400D3BCB300D3BDB200D3BCB400D4BEB500DFC1
            9D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4A300DFC4
            A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9AD00DFC9
            AE00DFCAAF00D8C4B200D9C7B400D8C4BF00DAC8B700DFCAB000DFCBB000DFCB
            B100DFCCB200DAC8B900DECDB900DECEBA00E0C29F00E0C3A000E0C3A100E0C4
            A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7A800E1C7A800E1CA
            AD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CCB100E2CDB300E0CD
            B400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CEB600E0CFB800E0CF
            B900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0BC00E0D1BD00E0D2
            BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5BD00DAC6C200DCC7
            C400DDCBC800E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D4C500E1D5
            C400E2D6C500E3D6C400E2D6C600E2D7C600E3D7C700E0D3CC00E1D2CE00E2D0
            CE00E1D7CB00E3D8C800E3DACC00E4D9CA00E5DBCB00E4DACC00E4DBCD00ECDA
            C500ECDBC600E3D9D200E5DDD000E5DDD100E5DED200E5DED300E6DFD400E6DF
            D500EFE1CF00E6E0D500E7E0D600E7E1D800E7E0DB00E8E1D600E8E2D900E8E3
            DA00E9E3DE00EBE2DF00E9E4DC00E9E5DD00E9E5DE00EAE4DC00EAE6DF00ECE6
            DF00F0E1D000F0E2D100F3E7DA00F3E8DA00EBE7E200EDE4E200ECE6E200EDE9
            E400EDE9E500EEEAE500EEEAE600EEEBE700F0EDEA00F1ECEA00F1EEEC00F2EF
            ED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7F600FCF9F500FBFAFA00FDFC
            FB00FEFDFD00FEFEFE00FFFFFF00D4D4D4D4D4D4D4D4D3CBBCAAAABCCBD3D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4CFA16344494C4A474163A1CFD4D4D4D4D4D4D4D4
            D4D4D4BB444E7479797873725A514943BBD4D4D4D4D4D4D4D4D186487D818181
            807F7B78737159504286D1D4D4D4D4D4D487678C8D8D8D8C8B8281807B78725A
            524587D4D4D4D4D4BB49929596969695928E8C82817C78725A5241BBD4D4D4CF
            5E939D9FA0A0A09F9D9B948E8B817F7872594F43CFD4D4A16EA0A4A5A6A6A6A5
            A4A09D96918C817C78715748A2D4D3629EA6A8A9ACA940231003030E21388281
            7B735A4F63D3CB64A7ABADB197191B27162E2C15281813538078725841CBBD6C
            ACB0B5A30B35AE1E3F0C0C391A902D07547B735A46BDBA7AB0B6B21C2FC58837
            0A020108333A9B25145C787149BABA7EB5BEC01D31C98A3B36550009343E9D24
            145D797249BABD70B8C2C6B30D3CC9C7C62B0F3D1B9A2A065681797247BDCB68
            BEC5C8CCBF1F2089983230162617155B8D817B7342CBD363B7C5C9CDD0D29929
            12050411223E9C968D817B6D63D3D4A185C5C8CCCED0CECCC8C5BEB4ACA6A096
            8D817B4DA2D4D4CF5FB9C6CACCCDCCCAC6C2B8B1A9A59F958C817343CFD4D4D4
            BB6BC3C6C8C9C8C6C4BEB5ADA8A49D928B8046BBD4D4D4D4D48776C1C5C5C5C2
            BEB6B0ABA6A09B8E824B87D4D4D4D4D4D4D1866BB7BEBEB8B5B0ACA7A49D9483
            4886D1D4D4D4D4D4D4D4D4BB6084AFB1ADABA7A49F8F6A44BBD4D4D4D4D4D4D4
            D4D4D4D4CFA165666F7775696163A1CFD4D4D4D4D4D4D4D4D4D4D4D4D4D4D3CB
            BCAAAABCCBD3D4D4D4D4D4D4D4D4}
          DisabledImage.Data = {
            7A040000424D7A040000000000003A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008100000000000000B6B3B200B6B4
            B300B7B4B300B8B5B400B9B6B500B9B7B600BAB7B700BBB8B700BBB9B800BCB9
            B800BDBAB900BDBABA00BDBBBA00BEBBBB00BEBCBB00BFBCBC00BFBDBC00C1BF
            BE00C2BFBF00C2C0BF00C3C1C000C4C2C200C6C3C300C6C4C400C7C6C500C8C6
            C500C9C8C700CBC9C800CBC9C900CBCAC900CDCCCB00CCCDCD00CDCCCC00CDCD
            CE00CDCECE00CECDCC00CECECF00CECFCF00CFCFD000D0CECE00D0CFCF00D1D0
            CF00D0D0D100D1D2D200D2D1D000D3D2D100D2D2D300D3D3D300D3D3D400D4D3
            D200D4D3D300D4D4D500D5D4D400D5D5D500D5D5D600D5D6D600D6D5D500D6D6
            D700D6D7D700D7D6D600D7D7D600D7D7D800D7D8D800D8D7D600D8D8D900D8D9
            D900D9D8D800D9D9DA00D9DADA00DAD9D900DADADA00DADADB00DADBDB00DBDB
            DB00DBDBDC00DBDCDC00DCDBDA00DCDCDC00DCDDDD00DDDDDD00DEDDDD00DEDE
            DE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E1
            E100E2E2E200E2E3E300E3E3E300E3E4E400E4E3E200E4E3E300E4E4E300E4E4
            E400E5E5E500E5E6E600E6E6E600E7E7E700E8E7E700E8E8E800E9E9E900E9EA
            EA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEEEE00EEEFEF00EFF0
            F000F0F0F000F0F1F100F2F2F200F3F3F300F4F3F300F4F4F400F5F5F500F6F6
            F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFFFF008080
            8080808080807F7B757171757B7F80808080808080808080808080807D6D584B
            413D3A3E48586D7D80808080808080808080807254443630302E2A2624253752
            7280808080808080807E694E403D3D3D3936332E2A26222544697E8080808080
            80694E464747474643403D39332E2A24223E69808080808072514D4F5151514F
            4D4946403D362E2A242244728080807D545355575A5A5A5755534F49433D362E
            2A2222527D80806D545A616262626262615A555149433D362E261F376D807F58
            61626565676542190A0303091528403D332A2422587F7B556465676A6013111D
            0F231E0E1A100E2F392E2621487B755A67686C6508296A14450C0C3811511D05
            30332A243E75725C686C6C142373533408020107273453170D332E2637727261
            6C6F6E122D77593B2C500006293855180B3330263772755D6E71746E094C7674
            7423083F135A2004353D302A3E757B586F7375796E14195F663231111C120D3C
            473D332A487B7F5A6E73777A7C7F5E1B0900000716345751473D332B587F806D
            657375797B7C7B7975716E6B67625A51473D333D6D80807D56707478797A7978
            74716E6A6562574F463D33527D808080725D727475777574726F6C676561554D
            43394B728080808080696371737373716F6C6865625A5349404A698080808080
            807E695D6E6F6F6E6C68676461554F494E697E80808080808080807256646B6A
            6765646157514F547280808080808080808080807D6D5B585B5B5A5552586D7D
            80808080808080808080808080807F7B757171757B7F8080808080808080}
          MouseInImage.Data = {
            0A060000424D0A06000000000000CA0300002800000018000000180000000100
            08000000000040020000610F0000610F0000E50000000000000059A2EC0059A3
            ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
            DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
            E10072AAE20072ABE30075B0EB0075B0EC00AE736400AF756600AF766700B178
            6900B1786A00B1796A00B1796B00B27C6D00B37C6D00B37D6F00B37E6F00B37E
            7000B47E7000B5807200B5817200B5817300B6827400B6837400B6837500B885
            7800B8877800B9887800B9887900B9887A00BA8A7C00BA8B7E00BB8C7D00BB8D
            7E00BB8D7F00BC8D8000BC8E8100BC8F8200BE90840084ADD50086AED50086AF
            D60084B0DB0087B0D80085B2DD0096B3CD0096B3CF0097B3CE0095B4D00095B5
            D10097B5D20097B7D40098B9D90099BBDC0088B5E10089B7E4008AB9E70089B9
            EA0089BEF4008ABEF40098BDE00098BDE10099BEE2009ABFE4009CC1E6009CC2
            E9009AC7F600ABD1F700ACD1F700ADD2F700AED2F700BEDBF900BFDBF900C093
            8700C1978800C29B8D00C39B8E00C49E8E00C5A09000C5A09300C7A39400C6A2
            9600C8A39900C9A79800CAA79D00CBAB9B00CAA99C00CAA89E00CAAA9D00CCAC
            A200CDACA300CDADA300CCAEA100CDAFA200CEB0A600CFB0A700D1B4AC00D3B7
            AF00D2B8A700D2BAAD00D4BDAF00D5BBB300D4BDB200D4BEB100D5BEB100D4BE
            B300D2C5B400D2C6B500D2C6B600D6C0B400D3CABB00D3CBBE00D3CCBF00D8C5
            B200DAC7B400D9C6BE00DBC9B600DDCAB000DFCAB000DFCBB000DFCBB100DFCC
            B200DBC8B900DECDB900DECEBA00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
            B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3CE
            C200D4CFC500DBC8C100DDC9C300DECCC700D5D2CB00D6D3CC00DED2C000DFD3
            C200D7D7D300DBDEDE00DDE1E400DFE3E600DAEBFB00E1D4C000E1D4C100E1D5
            C200E1D5C300E1D4C500E1D5C400E0D5C600E2D6C500E2D6C600E2D7C600E3D7
            C700E2D3CE00E0D4CB00E2D7CB00E4D2CE00E3D8C800E3DACC00E4D9CA00E4DA
            CC00E4DBCD00E3D9D200E5DDD000E5DDD100E5DED200E5DED300E6DFD400E6DF
            D500E6E0D500E7E0D600E7E1D800E7E1DB00E8E2D900E8E3DA00E9E3DE00EBE2
            DF00E9E4DC00E9E5DD00E9E5DE00EAE6DF00EBE7E200EDE4E200ECE6E200EBE8
            E600EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EDEA00F1EE
            EC00F2EFED00F3EFED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FB
            FE00FDFEFE00FEFDFD00FFFFFF00E4E4E4E4E4E4E4E4E2A657535357A6E2E4E4
            E4E4E4E4E4E4E4E4E4E4E4E4D652060C3B4140390B0652D6E4E4E4E4E4E4E4E4
            E4E4E456034380929291908F897C3F0256E4E4E4E4E4E4E4E4E14A1299979797
            96959391908E887B094AE1E4E4E4E4E4E44B3CA1A9A9A9A8A798979693918F89
            85374BE4E4E4E4E45513ADB0B1B1B1B0AEAAA8989794918F89850855E4E4E4D6
            019FB8B9BABABAB9B8B6AFAAA79795918F887A00D6E4E45245BABCBDBEBEBEBD
            BCBAB8B1ACA89794918E863D52E4E207A2BEC0C1C3C17D5C271A19255A729897
            9390897A06E2A60EBFC2C4C7B32F32612D68662C60302A8196918F870AA65847
            C3C6CBBB226EC5357923247331AB651E829390893858554EC6CCC83367D59B70
            2118171F6C74B65E2B8B918E3E54554FCBCED0346ADA9D716F8316206D78B85D
            2B8C928F3E545848CDD2D7C92375DBD8D764267632B4631D8497928F3958A610
            CED5D9DDCF36599CB26B692D5F2E2D8AA99793900BA6E207A4D5DADEE0E3B562
            291C1B285B77B7B1A997937E06E2E45251D5D9DDDFE0DFDDD9D5CECAC3BEBAB1
            A997934252E4E4D605A5D7DCDDDEDDDCD7D2CDC7C1BDB9B0A8977F00D6E4E4E4
            5515D3D7D9DAD9D7D4CECBC4C0BCB8AEA78D1155E4E4E4E4E44B49D1D5D5D5D2
            CECCC6C2BEBAB6AAA03A4BE4E4E4E4E4E4E14A14A4CECECDCBC6C3BFBCB8AF9A
            124AE1E4E4E4E4E4E4E4E4560450A3C7C4C2BFBCB99E440356E4E4E4E4E4E4E4
            E4E4E4E4D652070F474D4C460D0752D6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E2A6
            57535357A6E2E4E4E4E4E4E4E4E4}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000883F28008A42
            2C008A432C008B452F008C452F008C4630008D483200904D3700904E3800924F
            3900924F3B0093513B0093523C0093523D0094523E0094543F00945440009657
            420097594400995C4700995D49009A5E4A009C614D00A16A5700A26C5600A16A
            5800A26B5900A36C5900A36C5A00A36D5A00A5715E00A6715F00A5716000A672
            6000A7726100A7746000A7756200A9786600AA786600AA786700AD7D6D00B081
            7300B1857100B0847200B3877700B58B7D00CF9F7900CFA07900CFA07A00D0A1
            7B00D0A17C00D1A37D00D1A27E00D1A37E00D1A47E00D1A47F00D1A57F00D2A4
            7F00B88F8000B8918200BB968600BC968700BC978A00BC988800BE9B8C00C09C
            9000C29D9100C2A08D00C2A18E00C2A19200C3A49700C7A99800D2A58000D2A7
            8300D2A88500D2A98600D2A88600D4AB8700D3A98800D4AC8900D4AD8A00D4AE
            8C00D4AE8D00D5AE8E00D5B08F00D6B18F00D6B29000D6B39200D6B39500D7B4
            9400D7B59600D7B59800D7B89B00D8B79B00D9B79C00D9BA9E00C9AEA200CAAE
            A400CBAEA500CAAFA600CCAFA600CFB7A500CCB1A800CFB3AB00CFB8AD00D0B7
            AF00D9BBA000D9BCA100DABDA300DABDA500DEBCA200DEBDA200DBC0A800DCC1
            AA00DEC5A900DEC6AA00DFCAAE00D4C1B100D6C3B500D6C2B900D6C4B800D8C7
            B900DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCCB300DFCDB700DBCA
            B900DBCCBF00E2C5AF00E0CBB100E0CCB300E0CDB400E0CDB500E0CEB600E0CE
            B700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0B900E0D0
            BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E0D1BD00E1D1
            BC00E0D2BD00E1D2BD00E0D2BE00E1D3BE00E1D3BF00E1D2BF00E3D2BD00E2D3
            BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1BF00D9C8C100DACAC000DCCA
            C500DCCFC200DCCDC400DCCDC700E1D3C100E0D3C300E1D4C100E1D4C200E1D5
            C300E2D5C300E3D5C300E2D5C400E2D6C500E3D7C500E2D7C600E3D7C700E2D6
            C600E4D5C200E4D7C600E1D5CB00E1D5CF00E2D7CD00E6D8C600E3D8C800E4D8
            C800E4D9C800E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9C900E7DAC900E4DA
            CC00E4DBCD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDACB00EDDACC00E5D8
            D400E4DAD500E4DCD000E5DDD100E5DCD200E5DDD200E5DED300E6DCD000E7DD
            D100E7DED200E5DDD700E7DFD500E7DFD600E6E0D500E7E0D600E7E1D800E8E0
            D700E9E1D700E9E0D800E8E2D900E9E2D800E9E2DA00E8E3DA00EBE2DB00E9E5
            DD00EAE4DC00EAE5DE00EAE6DF00EBE6E000EBE7E000EBE7E100EBE7E200EDE8
            E100EDE9E500EDE8E400EFE9E400EEEAE500EEEBE700EEEBE800EFECE900F4EA
            E200F0ECE800F1EDEB00FAF5F200FDFBFA00FEFEFD00FFFFFF00FFFFFFFFFFFF
            FFFFFEF9CF8E8ECFF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83353751575750
            333583FCFFFFFFFFFFFFFFFFFFFFFFA6305A7D8C8C8B88877E73562EA6FFFFFF
            FFFFFFFFFFFD6E4A809C9EB5C4D8D9CDBB8F7C73486EFDFFFFFFFFFFFF6F549E
            B0B5C9D4DDE6EBEFEFEECB86744D6FFFFFFFFFFFA54BB4B7B6C3D3DCE6EDF2F7
            F8F7F2E58A7438A5FFFFFFFC30ADC3B2B7C6D6E1EBDBACA9D1FBFBF2E285722E
            FCFFFF835FCAB6B0B8CABE4015060000020E28A7EFC57A5583FFFE37B8CC9BB0
            B875121F461A6467422962103BE1887234FEF94AD7C297B0810C3FE61C630500
            224169D2143DB37B33F9D05BDFB393AF1823D6BC27200A0D00662DF2A801657E
            4FD0A46CE4A1919E4309AAD52C77BD0304613EED3A13AE8656A3A46DE99B8B9A
            B02A1176DDE668256019AB2C0879C18756A3D05DECBA88929EB5440B2445161D
            07170F2182CAB28750D0F94EF0CE7F8B97AFB5AE472B1E1B263C78D3C9C09E88
            36F9FE39E3F17E868C98AFB5B8C3C6CACACAC6C3B8B5937A34FEFF8371F6C87C
            878C979EB0B5B7B8B8B8B7B5B09E915983FFFFFC31E8FA957C868B929A9EAFB0
            B0B0AF9E9D9C7D2FFCFFFFFFA553F2F4947B7F888B91939797979399A29649A5
            FFFFFFFFFF6F5EF3F5BF847C7F868889898BA1B19C526FFFFFFFFFFFFFFD6E53
            E2F0EAC7A0909099B3C1B98D4A6EFDFFFFFFFFFFFFFFFFA63270DAE7E0DED7CC
            C99F5C30A6FFFFFFFFFFFFFFFFFFFFFFFC83374C5B6B6A58493783FCFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEF9CF8E8ECFF9FEFFFFFFFFFFFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          OnClick = ElSpeedButton19Click
          DockOrientation = doNoOrient
        end
        object RzBmpButton4: TRzBmpButton
          Left = 122
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintAnthropometries
          TabOrder = 0
        end
      end
    end
    object tbsPrescription: TRzTabSheet
      Color = clWindow
      Caption = '&Prescriptions'
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel9: TRzLabel
          Left = 6
          Top = 6
          Width = 1240
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Prescriptions'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzToolbar4: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 1
        ThemeAware = False
        ToolbarControls = (
          btnRxAdd
          ElSpeedButton11
          RzBmpButton1)
        object btnRxAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPrescriptionAdd
          DockOrientation = doNoOrient
        end
        object ElSpeedButton11: TElSpeedButton
          Left = 33
          Top = 7
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          PullDownInterval = 0
          PullDownEnabled = True
          Flat = True
          NormalImage.Data = {
            32050000424D3205000000000000F20200002800000018000000180000000100
            08000000000040020000610F0000610F0000AF000000000000009F6AB600A16C
            B700B690BF00BB97C200BD9BC500C2A4CA00C6A9C000C7ACC600C7ACC700CAAF
            C000C9AFC400C8ADC800C9AFC800C9AECA00C9AECD00CBB2C400C9B0CB00CAB0
            CA00CAB1CA00CAB1CB00CAB1CD00CAB1CE00CAB1CF00CBB2CD00CEB7CB00CDB5
            CD00CFB9C900CFB8CB00CBB3D000D0BBC900D0BACF00D1BCCC00D3BECD00D3BE
            D500DFC19D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4
            A300DFC4A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9
            AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200E0C29F00E0C3
            A000E0C3A100E0C4A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7
            A800E1C7A800E1CAAD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CC
            B100E2CDB300E0CDB400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CE
            B600E0CFB800E0CFB900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0
            BC00E0D1BD00E0D2BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5
            BD00D6C4CA00D6C6CE00D8C7CF00DBCAC500DDCFCA00DCCFCE00DCCCDB00DFD5
            CF00DFD4D100E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D5C400E2D6
            C500E3D6C400E2D6C600E2D7C600E3D7C700E3D7C800E3D8C800E4D9CA00E5DB
            CB00E4DACC00E4DBCD00ECDAC500ECDBC600E1D7D800E1D8D000E5DDD000E5DD
            D100E4DDD200E5DED200E5DED300E6DFD400E6DFD500E4DBE000EFE1CF00E6E0
            D500E7E0D600E7E1D800E8E1D600E8E2D900E8E3DA00E9E4DC00E9E5DD00E9E5
            DE00EAE4DC00EAE6DF00ECE6DF00F0E1D000F0E2D100F3E7DA00F3E8DA00E8E2
            E000E9E5E100EBE7E200EDE9E400EDE9E500EDE9E600EEEAE500EEEAE600EEEB
            E700F0EDEA00F1EEEC00F2EFED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7
            F600FCF9F500FBFAFA00FDFCFB00FEFEFE00FFFFFF00AEAEAEAEAEAEAEAEADA6
            97888897A6ADAEAEAEAEAEAEAEAEAEAEAEAEAEAEAA7C3D252A2D2B28223D7CAA
            AEAEAEAEAEAEAEAEAEAEAE96252F4E5353524D4C37322A2496AEAEAEAEAEAEAE
            AEAC6029575B5B5B5A5955524D4B36312360ACAEAEAEAEAEAE61416C6D6D6D6C
            6B5C5B5A55524C37332661AEAEAEAEAE962A717475757574716E6C5C5B56524C
            37332296AEAEAEAA3872787A7B7B7B7A7877736E6B5B59524C363024AAAEAE7C
            487B8081071A7F81807B7875706C5B56524B34297DAEAD3C798385866418200B
            6A83807A76706B5B554D37303DADA63E84898B8E8F1E7E040D6384807A756E5C
            5A524C3522A698468A8D90939B99050E14111B828078736C5B554D3727989554
            8D919B9DA1A19E211C14130C697B776E5C59524B2A959558909BA0A2A3A4A3A2
            68161712086278716B5A534C2A95984A939DA2A5A7A8A7A5A287151003000F74
            6C5B534C2898A6429BA1A3A7A9ABA9A7A3A19A19010266066D5B554D23A6AD3D
            92A1A4A8ABAEABA8A4A19B8F1F1D7B096D5B55473DADAE7C5FA1A3A7A9ABA9A7
            A3A19B8F8A670A656D5B552E7DAEAEAA3994A2A5A7A8A7A5A29D938E86817A74
            6C5B4D24AAAEAEAE96459FA2A3A4A3A2A09B908B858078716B5A2796AEAEAEAE
            AE61509CA1A1A19D9B918D89837B776E5C2C61AEAEAEAEAEAEAC6045929B9B93
            908D8A848078735D2960ACAEAEAEAEAEAEAEAE963A5E8C8E8B8984807A6F4425
            96AEAEAEAEAEAEAEAEAEAEAEAA7C3F4049514F433B3D7CAAAEAEAEAEAEAEAEAE
            AEAEAEAEAEAEADA697888897A6ADAEAEAEAEAEAEAEAE}
          DisabledImage.Data = {
            DE030000424DDE030000000000009E0100002800000018000000180000000100
            08000000000040020000610F0000610F00005A00000000000000ABABAC00BCBC
            BD00C3C3C400C4C4C500C8C8C900C9C9CA00CBCBCC00CCCCCD00CCCDCD00CDCD
            CD00CDCDCE00CDCECE00CECECE00CECECF00CECFCF00CFCFCF00CFCFD000D0D0
            D000D0D0D100D1D1D100D1D1D200D1D2D200D2D2D300D3D3D300D3D3D400D4D4
            D400D4D4D500D5D5D500D5D5D600D5D6D600D6D6D700D6D7D700D7D7D800D7D8
            D800D8D8D900D8D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDB
            DB00DBDBDC00DBDCDC00DCDCDC00DCDDDD00DDDDDD00DEDEDE00DEDFDF00DFDF
            DF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E2E200E2E3E300E3E3
            E300E3E4E400E4E4E400E5E5E500E5E6E600E6E6E600E6E7E700E7E7E700E8E8
            E800E9E9E900E9EAEA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEE
            EE00EEEFEF00EFF0F000F0F0F000F0F1F100F2F2F200F3F3F300F4F4F400F5F5
            F500F6F6F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFF
            FF00595959595959595958544F4B4B4F54585959595959595959595959595959
            5647362B23201F212836475659595959595959595959594C32251C1818161210
            0D0E1D304C595959595959595957432D222020201E1C1A1612100B0E25435759
            5959595959432D26272727262422201E1A16120D0B214359595959594C2F2C2E
            2F2F2F2E2C292622201C16120D0B254C59595956323133353737373533312E29
            24201C16120B0B305659594732373B3C0717373C3B37332F2924201C1610081D
            475958363B3C404027161E0C353C3B352F2924201A120D0B365854333E404144
            451B3B030D273E3B352F29221E16100A28544F374142464849450510130F193C
            3B332E26201A120D214F4C394246494B4D4D4A1F1413110C35373129221C1610
            1D4C4C3B46494C4E4F504F4E311313100922332C241E18101D4C4F3A484B4E51
            525352514E3F141102000F2E26201812214F5436494D4F52545554524F4D4613
            0001290427201A1228545837484D505355595553504D4945171A370627201A15
            36585947404D4F52545554524F4D4945412C091E27201A2047595956344A4E51
            525352514E4B4844403C352E26201A30565959594C3A4C4E4F504F4E4C494641
            403B332C241E2B4C5959595959433D4B4D4D4D4B494642403C373129222A4359
            595959595957433A484949484642413E3B332E292D435759595959595959594C
            343E454441403E3B352F2E324C59595959595959595959595647383638383733
            30364756595959595959595959595959595958544F4B4B4F5458595959595959
            5959}
          MouseInImage.Data = {
            5E050000424D5E050000000000001E0300002800000018000000180000000100
            08000000000040020000610F0000610F0000BA0000000000000059A2EC0059A3
            ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
            DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
            E10072AAE20072ABE30075B0EB0075B0EC0093527D0094557E00AE809900B389
            9F00B68EA300BB97AC0084ADD50086AED50086AFD60084B0DB0087B0D80085B2
            DD0096B3CD0096B3CF0097B3CE0095B4D00095B5D10097B5D20097B7D40098B9
            D90099BBDC0088B5E10089B7E4008AB9E70089B9EA0089BEF4008ABEF40098BD
            E00098BDE10099BEE2009ABFE4009CC1E6009CC2E9009AC7F600ABD1F700ACD1
            F700ADD2F700AED2F700BEDBF900BFDBF900C19FA700C2A2AD00C2A2AE00C5A6
            AB00C4A6AE00C3A3B000C3A5B000C3A5B100C3A4B300C4A6B300C5A7B300C5A7
            B600C5A8B300C7AAB000C5A8B500C5A9B500C6A9B800CAAFB700C8ACB800CBB1
            B700CAB0B800CBB2BB00CCB4B800CDB5BB00CFB8BD00D3BFBE00CFB7C200D2C5
            B400D2C6B500D2C6B600D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCB
            B000DFCBB100DFCCB200DAC8BE00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
            B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3C0
            C100D5C3C300D3CEC200D4CFC500D9C7CE00DBCDC400DACCC700D5D2CB00D6D3
            CC00DED2C000DFD3C200DED3CB00DED2CC00D7D7D300DBDEDE00DDE1E400DFE3
            E600DAEBFB00E1D4C000E1D4C100E1D5C200E1D5C300E1D5C400E0D5C600E2D6
            C500E2D6C600E2D7C600E3D7C700E3D7C800E1D7CE00E3D8C800E4D9CA00E4DA
            CC00E4DBCD00E0D4D200E5DDD000E5DDD100E4DCD200E5DED200E5DED300E6DF
            D400E6DFD500E3D9DA00E6E0D500E7E0D600E7E1D800E7E1DD00E8E2D900E8E3
            DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00E9E4E000EBE7E200EBE8E600ECE9
            E500EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EF
            ED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
            FF00B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9
            AE37060C2026251E0B0637AEB9B9B9B9B9B9B9B9B9B9B93B03285E6A6A696867
            635B24023BB9B9B9B9B9B9B9B9B72F12736F6F6F6E6D6B696866625A092FB7B9
            B9B9B9B9B930217B8585858483706F6E6B6967635F1C30B9B9B9B9B93A13888B
            8C8C8C8B898684706F6C6967635F083AB9B9B9AE0179909192929291908F8A86
            836F6D6967625900AEB9B9372A9294953F518E959492908C87846F6C69666022
            37B9B8077E97999A724F56437D9794918D87836F6B68635906B8820E989C9EA1
            A253931A45719894918C86706E6967610A823D2C9DA0A3A5A79F1B464C475296
            94908A846F6B68631D3D3A33A0A4A7AAADADA9584E4C4A447C928F86706D6966
            23393A34A3A7ACAFB0B1B0AF75494D4840579089836E6A6723393D2DA5AAAFB2
            B3B4B3B2AF9B4C4719164B8B846F6A671E3D8210A7ADB0B3B5B6B5B3B0ADA650
            1718763E856F6B680B82B80780ADB1B4B6B9B6B4B1ADA7A255549241856F6B5C
            06B8B93736ADB0B3B5B6B5B3B0ADA7A29D774264856F6B2737B9B9AE0581AFB2
            B3B4B3B2AFAAA5A19A95918B846F5D00AEB9B9B93A15ABAFB0B1B0AFACA7A39E
            999490898365113AB9B9B9B9B9302EA8ADADADAAA7A4A09C97928F867A1F30B9
            B9B9B9B9B9B72F1480A7A7A5A3A09D9894908A74122FB7B9B9B9B9B9B9B9B93B
            04357FA19E9C9894917829033BB9B9B9B9B9B9B9B9B9B9B9AE37070F2C32312B
            0D0737AEB9B9B9B9B9B9B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9
            B9B9}
          PressedImage.Data = {
            2E060000424D2E06000000000000EE0300002800000018000000180000000100
            08000000000040020000610F0000610F0000EE00000000000000914F7B00A673
            9300AB7C9900AD7E9800CF9F7900CFA07900CFA07A00D0A17B00D0A17C00D1A3
            7D00D1A27E00D1A37E00D1A47E00D1A47F00D1A57F00D2A47F00B58CA400BA93
            A700BB96A800BE9BB000D2A58000D2A68300D2A78300D2A88500D2A88600D2A9
            8600D4AB8700D3A98800D4AC8900D4AD8A00D4AE8C00D4AE8D00D5AE8E00D5B0
            8F00D6B18F00D6B29000D6B39100D6B39200D6B39500D7B49400D7B59600D7B5
            9800D7B89B00D8B79B00D9B79C00D9BA9E00C5A6AE00C4A4B200C5A8B600C7AA
            B600C7AABA00C8ADB300C9ADB600CAAFB700C8ABBB00C9AEBB00C9ACBD00C9AD
            BC00CAAFBE00CBAEBF00CCB2B900CEB7BA00D9BBA000D9BCA100DABDA300DABD
            A500DEBCA200DEBDA200D1BAB800D0B9BC00CBAFC000CDB2C200CDB2C300CFB7
            C200CFB9C200D0BAC100D6BFCE00DBC0A800DCC1AA00DEC5A800DEC5A900DEC6
            AA00DFCAAE00DFC9B000DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCC
            B300DFCDB700E2C5AF00E0CBB100E0CCB200E0CCB300E0CDB400E0CDB500E0CE
            B600E0CEB700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0
            B900E0D0BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E0D1
            BD00E1D1BC00E0D2BD00E1D2BD00E0D2BE00E1D2BF00E1D3BE00E1D3BF00E2D2
            BD00E2D3BD00E3D2BD00E2D3BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1
            BF00D8C6CA00D8C7CD00D9C8C000DBCCC400DFD1C500E1D3C000E1D3C100E1D4
            C100E1D4C200E1D5C200E1D5C300E2D5C300E3D5C200E3D5C300E2D5C400E2D6
            C500E3D6C500E3D7C500E2D6C600E2D7C600E3D7C600E3D7C700E4D5C200E4D7
            C600E3D7C800E2D7CF00E6D8C600E3D8C800E2D9CE00E4D8C800E4D9C800E4D9
            C900E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9C900E7DAC900E4DACC00E4DB
            CD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDACB00EDDACC00E2D7D200E1D7
            D600E4D5DE00E4DCD000E5DDD000E5DDD100E5DDD200E5DED300E6DCD000E7DD
            D100E7DED200E6DED400E7DFD500E7DFD600E7DFD800E6E0D500E7E0D600E7E0
            D800E7E1D800E8E0D700E9E1D700E9E0D800E9E1D800E8E2D900E9E2D800E9E2
            D900E8E3DA00E9E2DA00EBE2DB00E8E3DC00E9E5DD00EAE4DC00EAE5DE00EAE6
            DF00E9E1E300EAE2E500EBE6E000EBE7E000EBE7E100EBE7E200EBE7E300EDE8
            E100EDE8E400EDE9E500EEE9E500EFE9E400EEEAE500EEEBE700EEEBE800EFEC
            E900F4EAE200F0ECE800F0EDEB00F3F0EF00F4F1F000F6F3F300F7F5F400FAF5
            F200FAF9F900FDFBFA00FEFEFD00FFFFFF00EDEDEDEDEDEDEDEDECE2AE6767AE
            E2ECEDEDEDEDEDEDEDEDEDEDEDEDEDEDE95B0B0D1E25241D090B5BE9EDEDEDED
            EDEDEDEDEDEDED8106285765656461605851230481EDEDEDEDEDEDEDEDEB4217
            5A757891A3B8B9AC996856511442EBEDEDEDEDEDED4321878B92A8B5BDCBD0D6
            D6D5AA5F521A43EDEDEDEDED8019909596849EBCCBD4DBE0E1E0DBC863520E80
            EDEDEDE90688A28D9544033C4BD8E4E5E6E5E4DBC45E5004E9EDED5B2DA9938A
            97A934C14A13D3E8EAE8E5E0D6A454225BEDEC0D9AAB748A97A99B2F103A46B2
            EDEAE6E1D6C9614F0AECE217B7A0708A97A9BBB0373946484CE7E5E0D6CB8F55
            09E2AF29C08E6C8995A5B6C3CD493846473BD2DBD0C3A1581CAF7F40C77A6A78
            91A2B3BCCBD48332363A0182CBBCA55F237E7F41CE7964738A97A8B5BDCBD0B1
            3002003135B59F60237EAF2BD198616B78919DA9B5BCC3CBBE1112BC3D858D60
            1DAFE21BD7AD59647089919DA8B3B6BBBBBB45332E9D78610CE2EC0FC5D95D5F
            6571899197A2A5A9A9A9A58697916C530AECED5B4EDFA756606570788A919597
            979795918A786A275BEDEDE907CCE36E565F646B7378898A8A8A897877755705
            E9EDEDED8020DCDD6D555961646A6C7070706C727D6F1680EDEDEDEDED432CDA
            DE9C5C56595F616262647C8C751F43EDEDEDEDEDEDEB4220C6D7CFA67B696972
            8F9F94661742EBEDEDEDEDEDEDEDED81084DBACAC2BFB7B4A8762A0681EDEDED
            EDEDEDEDEDEDEDEDE95B0D18293F3E26150D5BE9EDEDEDEDEDEDEDEDEDEDEDED
            EDEDECE2AE6767AEE2ECEDEDEDEDEDEDEDED}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPrescriptionEdit
          DockOrientation = doNoOrient
        end
        object RzBmpButton1: TRzBmpButton
          Left = 63
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = atnPrescriptionPrint
          TabOrder = 0
        end
      end
      object grdPrescriptionActive: TdxDBGrid
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'prescription_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnDblClick = atnPrescriptionEditExecute
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dmPatient.dsqryPrescriptionHistory
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdPrescriptionActiveRxDate_dat: TdxDBGridDateColumn
          Caption = 'Date'
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RxDate_dat'
        end
        object grdPrescriptionActiveprescriptionNumber_Str: TdxDBGridColumn
          Caption = 'Rx Number'
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'prescriptionNumber_Str'
        end
        object grdPrescriptionActiveprescriberName_Str: TdxDBGridColumn
          Caption = 'Prescriber'
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'prescriberName_Str'
        end
        object grdPrescriptionActiveprescriptionStatus_Str: TdxDBGridColumn
          Caption = 'Status'
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'prescriptionStatus_Str'
        end
        object grdPrescriptionActiveprescriptionActive_bol: TdxDBGridCheckColumn
          Caption = 'Active'
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'prescriptionActive_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object grdPrescriptionActivedispensingPosted_bol: TdxDBGridCheckColumn
          Caption = 'Posted'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'dispensingPosted_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object grdPrescriptionActiveprescriptionCost_Mon: TdxDBGridCurrencyColumn
          Caption = 'Cost'
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'prescriptionCost_Mon'
          Nullable = False
        end
        object grdPrescriptionActiveRxCancelReasonsAfterPosting_str: TdxDBGridColumn
          Caption = 'Cancel Reason'
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RxCancelReasonsAfterPosting_str'
        end
        object grdPrescriptionActiveDemanderName_Str: TdxDBGridColumn
          Caption = 'Demander'
          DisableEditor = True
          Width = 198
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DemanderName_Str'
        end
      end
    end
    object TbsLabResults: TRzTabSheet
      Hint = 'Lab Results'
      Color = clWindow
      Caption = 'Lab Results'
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel4: TRzLabel
          Left = 6
          Top = 6
          Width = 1240
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Laboratory Results'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzToolbar7: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 1
        ThemeAware = False
        ToolbarControls = (
          btnLabsAdd
          btnLabsDelete
          ElSpeedButton15
          ElSpeedButton16
          RzBmpButton5)
        object btnLabsAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonLabResultAdd
          DockOrientation = doNoOrient
        end
        object btnLabsDelete: TElSpeedButton
          Left = 33
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000918FE3009190
            E4009190E5009291E5009291E7009392E800A6A2DC00A6A3DE00B9B5DA00BAB6
            DC00BBB7DD00A9A7E600ABAAE900BBB8E000BDBAE300BEBCE600C7BFD200C5BE
            D400C0BFE900DFC9AC00DFC9AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB200DFCCB300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCE
            B800DFCFB800E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CE
            B300E4CFB400E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
            B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
            BD00E2D3BE00E3D3BF00E5D1B800E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C7C1D400C6C1DA00D3CACD00D5CE
            D300DFD4C700DFD5C800DED4CC00DCD4D100DDD6D300DED8D600DFD9D800C8C5
            E000CECCE600CFCEEC00D1CFEB00DAD6E100E0D3C000E0D3C100E1D3C000E0D4
            C100E1D4C100E1D4C200E1D4C300E1D5C300E3D4C100E2D5C300E0D4C500E1D5
            C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6
            C200E6D5C100E4D7C600E0D6CA00E2D7C800E7D8C500E7D9C700E2D8CB00E3D9
            CA00E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DA
            CD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DDCF00E9D7C100E8D6
            C000E8D7C200E9D8C300E9D9C400E8D9C500EBD9C400E8DAC800E8DAC900E9DA
            C800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DD
            CF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDFCD00EDDECD00ECDF
            CF00EDDFCE00EEDFCE00E2DAD100E1DAD600E5DCD000E5DDD100E5DED300E5DE
            D200E7DED200E6DFD500E0DBDC00E2DDDA00E8DED100E9DED000E8DFD300EADF
            D200E2DEE100EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E5E0DB00E7E2
            D900E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2
            DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DF00ECE4DB00F0E3
            D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E2E600E3E1
            EF00E9E5E100EBE6E100EBE7E100EAE7E700ECE7E000E8E5EB00EDE8E200EEE9
            E300ECE9E400EDE9E500EDEAE600EEEAE500EEEAE700EEEBEC00EFECE900EEEC
            F000F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F3F1F100F4F2F000F5F3F100F4F3F400F7F6F500FAF5F000F8F7F700F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFCEB3B3CEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA4D131313131313
            13138EFAFFFFFFFFFFFFFFFFFFFFFFBD1313132317252313131313139DFEFFFF
            FFFFFFFFFFFD3113282836343A34361F26131313134BFDFFFFFFFFFFFF4D1336
            62636362603E3D3A2E1F1513131331FEFFFFFFFFA313676A7070706D6B655F3E
            3A2E2117131313B3FFFFFFFA13377D7A818181807D706B65603D342117131313
            F0FEFE8E137D86A6A9A9A9A7A6817D7069623D2E2C2313138EFFFE1376A7A8AB
            B6B6B6ABABA7A6807069603D2E1C131313FAE71386ABB7C1C4C4C4B9B7B4A8A6
            8070653F3A21251313E7CD23ABB9C5C7D4D4D25A5951594E4E746B623D2E1C13
            13BEB32FB9C5D4DADEDC5A0000000000005170653F2E2C13139DB330C5D4DCE8
            EAEA5C000000000000087D6A603A2117139DCE26C7DAE8EBF3F5F5120C0B0B07
            07517D6B623D2D2313CDEF13D3DCEAF4F6FBF8F6E1D7D0C2ABA77C70633D331B
            13E4FC13C4DCEBF5FBFFFBF4EBE0D4C4B5A97C70633D2D1313FDFE884BDCEAF3
            F8FBF8F4E9DCD4C4B5A97C70633D2D134DFFFEF113C7E8EBF4F4F4EBE8DAC7B9
            ABA77C6D623D2313FAFFFFFDA323D9E8EAEBEAE8DCD4C5B7A886796B603A138E
            FDFFFFFFFF4D29DADEDEDCDAD4C5B9B4A9817065351349FDFFFFFFFFFFFD4D23
            C4D4D4D2C5B9B5A886796B3D132AFDFFFFFFFFFFFFFFFF9D1346B6B9B7B4A886
            7A661313A3FEFFFFFFFFFFFFFFFFFFFEF78E13132328282413134DF1FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDE7CDB3B3CEE7FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            3A040000424D3A04000000000000FA0100002800000018000000180000000100
            08000000000040020000610F0000610F00007100000000000000B7B7B700B7B7
            B800B8B8B900C1C1C200C2C2C200C7C7C700C7C8C800CDCDCE00CECECF00CFCF
            CF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2
            D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
            D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5
            E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8
            E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEBEB00EBEB
            EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
            EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
            7070707070706F69605A5A60696F70707070707070707070707070706D54382A
            211D1B1E2738546D70707070707070707070705B3324191515120C0A08081A31
            5B70707070707070706F4C2C201D1D1D1B1917120B0A0708244C6F7070707070
            704C2A252626262523201D1B17100B08071E4C70707070705A2F2A2D3030302D
            2B28251E1D18100B0807245A7070706D333134373939393734322D27211D1810
            0B0707316D70705433383E41414141413E39343027211D191008071A54706F38
            3D4047474949494747413E373027211D170B0707366F68334347494D5050504D
            4947443E3730271E1A10080724686039494B535557575330302826221C302D25
            1D170B071C5F5B3C4B53565A5C5C2E0000000000002832281E18100A1A5A5B3E
            53575A5E5F614000000000000007302B231B130A1A5A603D555A5E6465675D19
            060303030326342D251D130B1E5F6938575C6065696C6965615C514B473F3930
            261D170B27686F39555C62676C706C67615C555049413930241D1710386F7054
            475C6065696C69655F5A555049413930241D171D5470706D36585D6465676564
            5D59554D4741372D241D17316D7070705B3D5B5D6061605D5B575149473E342B
            211A2A5A70707070704C43595B5B5B5957514B474139322820274C7070707070
            706F4C3B55575755514B49423E342D282C4C6E70707070707070705A36444E4D
            4945423D37302D335A70707070707070707070706D5438373A3A39343138546D
            70707070707070707070707070706F69605A5A60686F7070707070707070}
          MouseInImage.Data = {
            82030000424D8203000000000000420100002800000018000000180000000100
            08000000000040020000610F0000610F00004300000000000000FFFFFF00EFF7
            FF00FFF7F700F7F7F700F7F7EF00DEEFFF00EFEFF700F7EFEF00EFEFE600EFE6
            E600E6E6E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600DED6EF00DEDE
            DE00E6DED600DED6E600ADD6F700E6DECE00E6D6D600D6D6D600E6D6CE00DED6
            CE00D6D6CE00E6D6C500DED6C500E6D6BD009CC5F700DED6BD00CEBDEF009CC5
            EF00D6CEC500D6C5D600E6CEBD00CEBDE6009CC5E600C5BDE600D6CEBD00D6C5
            CE00E6CEB5008CBDF700DECEB5008CBDEF009CBDE6008CBDE6009CBDDE00C5B5
            DE00D6C5B500C5B5D6008CB5E60073B5EF0084B5DE0094B5D6006BADEF0094B5
            CE0073ADE6006BADE6005AA5F70073ADDE0084ADD6005AA5EF006BA5E60073A5
            DE004A21DE00000000000000000002050D14140D050000000000000000000000
            00000000011E3F403E39393E403F1E010000000000000000000000143F37282C
            2C2C2C2C2C32393F140000000000000000002B3A221F1F1F1F1F2C2C2C2C2C32
            412B000000000000002B361C1C1C1C1C1F1F1F1F2C2C2C2C2C3E2B0000000000
            143A1C1B1B1B1B1B1B1C1C1F1F1F2C2C2C2C4114000000013F1A181515151515
            181B1B1C1F1F1F2C2C2C323F0100001E30151515121212151515181B1C1C1F1F
            2C2C2C391E00023F1712121212120F12121215151B1C1C1F2C2C2C323F00053B
            1212120E0E0E0E0E12121215151B1C1F1F2C2C2C40050D34120F0E0E09090E31
            3133333333191B1C1F2C2C2C3E0D142E0F0E0909080813424242424242291B1C
            1F1F2C2C3914142E0E09090808071342424242424229181B1F1F2C2C39140D2F
            0E09080704040625272731313319151B1C1F2C2C3E0D05380908080403020304
            0808090E1212151B1C1F2C2C4005003F0B080704020002040708090E1212151B
            1C1F2C283F00001E26080804030202040808090E1212121B1C1F2C371E000001
            3F0B08070404040708090E0E1215151B1C1F283F010000001435090808070808
            09090E121215181B1F1F3D1400000000002B2F0908080809090E0F1212151B1C
            1F362B000000000000002B3A0B09090E0E0F121215181B223A2B000000000000
            000000143F26110E12121215151A373F140000000000000000000000011E3F3B
            343030363B3F1E01000000000000000000000000000000050D14140D05000000
            000000000000}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000444ADB00444A
            DC00454BDC00565BDF00575DE100585DE200696CDB007578DE007679DE008F90
            DD008F91DF009091DF008285E200A3A2DB00A8A6DA00ACABDF00AFADDC00A9AA
            E700ACAEEC00ADAFEE00B7B7E300BBB9E000DBBFA300DCBFA200DDBFA300DDBF
            A400C3BFD800DCC0A400DCC0A500DCC1A500DDC0A500DCC1A700DCC2A600DCC3
            A800DDC2A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DCC4AB00DDC5
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DEC4AC00DFC5AC00DEC6
            AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8B000DEC8B200DEC9B200DFC9
            B300DECAB400DFCBB500DFCDB700DFCEB700DFCCB800DFCEB900E0C5AB00E0C5
            AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8B200E2C9B300E1CB
            B700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E1CC
            B900E0CEB800E0CFB800E1CFB900E0CFBB00E3CCB900E3CCB900E2CDBA00E3CD
            BB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CFBE00E0D0B900E0D0
            BA00E1D0BA00E0D1BB00E0D0BC00E0D1BC00E0D1BD00E1D1BE00E1D2BD00E0D2
            BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3BF00E5D0BF00E6D0
            BD00E6D0BE00E6D1BE00E7D2BF00CDCADF00CECADD00D3CFDC00D7D2D900D4D0
            DE00D4D1DF00DBD5D700DDD6D500DBD6DC00DDD7D900DFD8D400C1C0E300C0C0
            E900D7D5E500E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3
            C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7
            C700E4D7C600E3D7C800E6D6C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DA
            CB00E5D8C900E4D9CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E4DACD00E5DA
            CC00E4DBCE00E4DBCF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4
            C300E8D4C400E9D5C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
            C900EBD9CB00E8DCCF00E3DBD000E5DCD000E5DDD100E7DDD000E6DCD000E6DD
            D300E6DED300E7DED300E6DED400E7DFD500E1DBD900E3DCDA00E7E0D700E7E1
            D900E8E0D500EFE1D500E8E1D800E8E1D900E8E2DA00E9E3DB00E9E3DA00E8E3
            DF00EAE4DC00EAE4DD00EBE5DD00EBE5DF00F0E1D600F0E2D600F0E2D700F0E3
            D700F0E3D800F3E8DF00EBE6E000E8E5E600EBE8E600ECE8E400EDE9E500EEEA
            E700EAE8ED00EEEBE800EDEAED00EFECE900EEECF200F3E8E000F4EAE100F4EA
            E200F5EBE300F2EFED00F6EEE800F7EFE900F7EFEA00F0EEF400F3F0EF00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C26666C2F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF617171717171717
            171741FAFFFFFFFFFFFFFFFFFFFFFF7A1717171716161617171717171EFFFFFF
            FFFFFFFEFEFA17171F16243E96A8B0A36E2117171718FCFFFFFFFFFEFE171716
            7296A8C4CCD6D9E4E4D98C16171717FCFEFFFFFE43173E8B9AA8C4CCD1E4E8EB
            EBEBE7D021171764FEFFFFFA17169A9696A8C4D1D9E8EDF8F8F8EDE8CA161717
            E3FEFE161793968B9AC4CCD6E4EBF3FAFBFAF8EBE499171719FEFD172C876E93
            9AB0C9D6D98A8AEAEA8A8AEEE4D0291717F6C217A8A555939CB0CADA0B010101
            010101EDE4D66C1717E2BA179A8F6B8C9BA9C6D2100101010101017DD9D4991D
            175F5F17C971697296A8B3CB7F0C080808080C8AD7CDA916174B6616D66F536E
            929BABC5CBE0DDE9E7E7DBD5CDC5A32D1741BC17D9953D5572989CB0C9CCD5D5
            D5D5CDCDC8B0961B17BEEF17C9C3383D6D92969CA8C4C9C9C9C9C9C4ABA37134
            17C2F417C9E4384C3F6E8C9A9AA8A4B0B0B0ABAB9A983B1717FAFA1719E9AC34
            4C3D6D7293969A9AA39A9A9793723D1717FAFEEF17D8ED6A384C53556E729393
            8F938C72713F1717F2FDFEFC4517D8EF68343A3D3D69556D6C6C556D743F1717
            FCFEFEFEFA1717E7E8A04C34384C3D3D3D537096351717FAFEFEFFFEFDFA1717
            ADE4DAAC764F536B95A6983F1717F4FEFEFEFFFEFEFEFC191721C7D8D4CDCAC5
            B037171747F6FCFEFEFFFFFEFEFEFEFAF22F171717171717171717DEFEFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C15F434B78C3EFF6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonLabResultDelete
          DockOrientation = doNoOrient
        end
        object ElSpeedButton15: TElSpeedButton
          Left = 63
          Top = 6
          Width = 30
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnPersonLabResultPost
          DockOrientation = doNoOrient
        end
        object ElSpeedButton16: TElSpeedButton
          Left = 93
          Top = 6
          Width = 29
          Height = 32
          Hint = 'Cancel'
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
            9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
            A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
            A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
            AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
            B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
            B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
            B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
            B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
            B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
            B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
            B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
            BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
            C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
            C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
            C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
            CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
            C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
            CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
            D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
            D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
            D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
            DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
            E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
            E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
            F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
            23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
            FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
            757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
            60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
            F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
            C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
            00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
            23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
            ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
            012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
            23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
            F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
            B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
            FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
            CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
            8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
            FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
          DisabledImage.Data = {
            AA040000424DAA040000000000006A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
            AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
            B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
            BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
            C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
            CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
            D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
            E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
            E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
            E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
            EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
            8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
            3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
            2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
            4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
            4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
            30252020518B844E5D6064686B310B0000131600000009383329222041847C54
            64666E7072726C15000000000635463E37302520387B7657666E727576767674
            0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
            3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
            71777C818588420001645603000018484037302541848B536F777E83888C7A02
            1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
            3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
            7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
            726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
            46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
            8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
            7B75757C848B8C8C8C8C8C8C8C8C}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB716A00AC75
            6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
            8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
            8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
            D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
            CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
            D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
            EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
            EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
            E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
            ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
            F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
            8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
            A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
            B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
            B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
            B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
            BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
            DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
            C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
            C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
            EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
            F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
            C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
            C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
            D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
            D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
            E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
            EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
            FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
            15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
            FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
            778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
            8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
            B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
            DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
            00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
            153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
            ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
            0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
            1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
            FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
            D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
            EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
            4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
            CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
            FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A96F6800AB72
            6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
            8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
            8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
            9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
            A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
            A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
            B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
            A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
            BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
            B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
            AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
            B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
            BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
            BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
            BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
            BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
            BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
            C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
            C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
            C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
            C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
            CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
            C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
            C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
            D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
            DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
            E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
            1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
            FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
            94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
            F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
            F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
            C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
            001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
            297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
            8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
            E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
            1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
            5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
            A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
            FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
            EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
            C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
            FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          OnClick = atnPersonLabResultCancelExecute
          DockOrientation = doNoOrient
        end
        object RzBmpButton5: TRzBmpButton
          Left = 122
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintLabResults
          TabOrder = 0
        end
      end
      object grdLabResults: TcxGrid
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        RootLevelOptions.DetailFrameColor = clInfoBk
        object grdLabResultsDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmPatient.dsqryLaboratoryResults
          DataController.DetailKeyFieldNames = 'lbResultID'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.CustomizeDialog = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxsLbl_Background
          Styles.Content = cxs01_Content
          Styles.Selection = cxBody
          Styles.Header = cxLabTestHeader
          Styles.Indicator = cxs01_Indicator
          object cxGrid1DBTestCode: TcxGridDBColumn
            Caption = 'Test Code'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'testCode_str'
            Properties.ListColumns = <
              item
                FieldName = 'testCode_str'
              end>
            Properties.ListOptions.ColumnSorting = False
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmPatient.dstlkLabTests
            Options.Sorting = False
            Width = 95
            DataBinding.FieldName = 'testCode_str'
          end
          object cxGrid1DBTestName: TcxGridDBColumn
            Caption = 'Test Name'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'testName_str'
            Properties.ListColumns = <
              item
                FieldName = 'testName_str'
              end>
            Properties.ListOptions.ColumnSorting = False
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmPatient.dstlkLabTests
            Options.Sorting = False
            Width = 150
            DataBinding.FieldName = 'testName_str'
          end
          object cxGrid1DBTestResult: TcxGridDBColumn
            Caption = 'Test Result'
            Options.Sorting = False
            Width = 126
            DataBinding.FieldName = 'testResult_dbl'
          end
          object cxGrid1DBTestDate: TcxGridDBColumn
            Caption = 'Test Date'
            Options.Sorting = False
            SortOrder = soAscending
            Width = 132
            DataBinding.FieldName = 'testDate_dat'
          end
          object cxGrid1DBTestPlace: TcxGridDBColumn
            Caption = 'Place'
            Options.Sorting = False
            Width = 241
            DataBinding.FieldName = 'testPlace_str'
          end
        end
        object grdLabResultsLevel1: TcxGridLevel
          GridView = grdLabResultsDBTableView1
          Options.DetailFrameColor = clNone
        end
      end
    end
    object TbsCd4Weight_Graph: TRzTabSheet
      Hint = 'Weight && CD4 Count Graph'
      Color = clWindow
      Caption = 'Weight && CD4 Count'
      OnClick = TbsCd4Weight_GraphClick
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel1: TRzLabel
          Left = 6
          Top = 6
          Width = 1308
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Weight && CD4 Count'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object DBChart1: TDBChart
        Left = 0
        Top = 43
        Width = 1252
        Height = 408
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Gradient.EndColor = clWhite
        Gradient.Visible = True
        LeftWall.Color = clGradientInactiveCaption
        Title.Text.Strings = (
          '')
        Chart3DPercent = 10
        View3D = False
        View3DOptions.Elevation = 348
        View3DOptions.HorizOffset = -130
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 42
        View3DOptions.Rotation = 347
        View3DOptions.VertOffset = -6
        View3DOptions.Zoom = 97
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = dmPatient.qryPersonIdealWeight
          SeriesColor = 12615808
          Title = 'Weight'
          XLabelsSource = 'personWeightDateRecorded_Dat'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'personWeightDateRecorded_Dat'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'personWeight_int'
        end
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = dmPatient.qryCD4Results
          SeriesColor = 8388863
          Title = 'CD4 Count'
          XLabelsSource = 'testDate_dat'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'testDate_dat'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'testResult_dbl'
        end
      end
    end
    object TabSheet10: TRzTabSheet
      Color = clWindow
      TabVisible = False
      Caption = 'Care Plan'
      object RzLabel11: TRzLabel
        Left = 0
        Top = 43
        Width = 1141
        Height = 43
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Not implemented, Phase 3 (Due Date not yet finalised)'
        Color = 15448477
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -38
        Font.Name = 'Haettenschweiler'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1141
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        object RzLabel8: TRzLabel
          Left = 6
          Top = 6
          Width = 812
          Height = 31
          Alignment = taCenter
          AutoSize = False
          Caption = 'Patient Care Plan'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
    end
    object TbsViralLoadGraph: TRzTabSheet
      Hint = 'Viral Load Graph'
      Color = clWindow
      Caption = 'Viral Load'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel5: TRzLabel
          Left = 6
          Top = 6
          Width = 1308
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Viral Load'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object DBChart2: TDBChart
        Left = 0
        Top = 43
        Width = 1252
        Height = 408
        AnimatedZoomSteps = 6
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Gradient.EndColor = clWhite
        Gradient.Visible = True
        LeftWall.Color = clGradientInactiveCaption
        Title.Text.Strings = (
          '')
        Chart3DPercent = 10
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Logarithmic = True
        LeftAxis.Maximum = 1000000
        LeftAxis.Title.Caption = 'copies per ml'
        LeftAxis.TitleSize = 1
        View3D = False
        View3DOptions.Elevation = 348
        View3DOptions.HorizOffset = -16
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 42
        View3DOptions.Rotation = 347
        View3DOptions.VertOffset = -6
        View3DOptions.Zoom = 92
        Align = alClient
        BevelOuter = bvNone
        Color = clInactiveCaptionText
        TabOrder = 1
        object Series3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = dmPatient.qryViralLoad
          SeriesColor = clRed
          Title = 'Viral Load'
          XLabelsSource = 'testDate_dat'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'testDate_dat'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'testResult_dbl'
        end
      end
    end
    object tbsADRs: TRzTabSheet
      Color = clWindow
      Caption = 'ADR'
      object RzToolbar1: TRzToolbar
        Left = 0
        Top = 0
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 0
        ThemeAware = False
        ToolbarControls = (
          btnADRAdd
          ElSpeedButton17
          RzBmpButton6)
        object btnADRAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = 16311512
          ParentColor = False
          Action = dmPatient.atnAddADR
          DockOrientation = doNoOrient
        end
        object ElSpeedButton17: TElSpeedButton
          Left = 33
          Top = 7
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          PullDownInterval = 0
          PullDownEnabled = True
          Flat = True
          NormalImage.Data = {
            32050000424D3205000000000000F20200002800000018000000180000000100
            08000000000040020000610F0000610F0000AF000000000000009F6AB600A16C
            B700B690BF00BB97C200BD9BC500C2A4CA00C6A9C000C7ACC600C7ACC700CAAF
            C000C9AFC400C8ADC800C9AFC800C9AECA00C9AECD00CBB2C400C9B0CB00CAB0
            CA00CAB1CA00CAB1CB00CAB1CD00CAB1CE00CAB1CF00CBB2CD00CEB7CB00CDB5
            CD00CFB9C900CFB8CB00CBB3D000D0BBC900D0BACF00D1BCCC00D3BECD00D3BE
            D500DFC19D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4
            A300DFC4A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9
            AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200E0C29F00E0C3
            A000E0C3A100E0C4A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7
            A800E1C7A800E1CAAD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CC
            B100E2CDB300E0CDB400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CE
            B600E0CFB800E0CFB900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0
            BC00E0D1BD00E0D2BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5
            BD00D6C4CA00D6C6CE00D8C7CF00DBCAC500DDCFCA00DCCFCE00DCCCDB00DFD5
            CF00DFD4D100E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D5C400E2D6
            C500E3D6C400E2D6C600E2D7C600E3D7C700E3D7C800E3D8C800E4D9CA00E5DB
            CB00E4DACC00E4DBCD00ECDAC500ECDBC600E1D7D800E1D8D000E5DDD000E5DD
            D100E4DDD200E5DED200E5DED300E6DFD400E6DFD500E4DBE000EFE1CF00E6E0
            D500E7E0D600E7E1D800E8E1D600E8E2D900E8E3DA00E9E4DC00E9E5DD00E9E5
            DE00EAE4DC00EAE6DF00ECE6DF00F0E1D000F0E2D100F3E7DA00F3E8DA00E8E2
            E000E9E5E100EBE7E200EDE9E400EDE9E500EDE9E600EEEAE500EEEAE600EEEB
            E700F0EDEA00F1EEEC00F2EFED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7
            F600FCF9F500FBFAFA00FDFCFB00FEFEFE00FFFFFF00AEAEAEAEAEAEAEAEADA6
            97888897A6ADAEAEAEAEAEAEAEAEAEAEAEAEAEAEAA7C3D252A2D2B28223D7CAA
            AEAEAEAEAEAEAEAEAEAEAE96252F4E5353524D4C37322A2496AEAEAEAEAEAEAE
            AEAC6029575B5B5B5A5955524D4B36312360ACAEAEAEAEAEAE61416C6D6D6D6C
            6B5C5B5A55524C37332661AEAEAEAEAE962A717475757574716E6C5C5B56524C
            37332296AEAEAEAA3872787A7B7B7B7A7877736E6B5B59524C363024AAAEAE7C
            487B8081071A7F81807B7875706C5B56524B34297DAEAD3C798385866418200B
            6A83807A76706B5B554D37303DADA63E84898B8E8F1E7E040D6384807A756E5C
            5A524C3522A698468A8D90939B99050E14111B828078736C5B554D3727989554
            8D919B9DA1A19E211C14130C697B776E5C59524B2A959558909BA0A2A3A4A3A2
            68161712086278716B5A534C2A95984A939DA2A5A7A8A7A5A287151003000F74
            6C5B534C2898A6429BA1A3A7A9ABA9A7A3A19A19010266066D5B554D23A6AD3D
            92A1A4A8ABAEABA8A4A19B8F1F1D7B096D5B55473DADAE7C5FA1A3A7A9ABA9A7
            A3A19B8F8A670A656D5B552E7DAEAEAA3994A2A5A7A8A7A5A29D938E86817A74
            6C5B4D24AAAEAEAE96459FA2A3A4A3A2A09B908B858078716B5A2796AEAEAEAE
            AE61509CA1A1A19D9B918D89837B776E5C2C61AEAEAEAEAEAEAC6045929B9B93
            908D8A848078735D2960ACAEAEAEAEAEAEAEAE963A5E8C8E8B8984807A6F4425
            96AEAEAEAEAEAEAEAEAEAEAEAA7C3F4049514F433B3D7CAAAEAEAEAEAEAEAEAE
            AEAEAEAEAEAEADA697888897A6ADAEAEAEAEAEAEAEAE}
          DisabledImage.Data = {
            DE030000424DDE030000000000009E0100002800000018000000180000000100
            08000000000040020000610F0000610F00005A00000000000000ABABAC00BCBC
            BD00C3C3C400C4C4C500C8C8C900C9C9CA00CBCBCC00CCCCCD00CCCDCD00CDCD
            CD00CDCDCE00CDCECE00CECECE00CECECF00CECFCF00CFCFCF00CFCFD000D0D0
            D000D0D0D100D1D1D100D1D1D200D1D2D200D2D2D300D3D3D300D3D3D400D4D4
            D400D4D4D500D5D5D500D5D5D600D5D6D600D6D6D700D6D7D700D7D7D800D7D8
            D800D8D8D900D8D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDB
            DB00DBDBDC00DBDCDC00DCDCDC00DCDDDD00DDDDDD00DEDEDE00DEDFDF00DFDF
            DF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E2E200E2E3E300E3E3
            E300E3E4E400E4E4E400E5E5E500E5E6E600E6E6E600E6E7E700E7E7E700E8E8
            E800E9E9E900E9EAEA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEE
            EE00EEEFEF00EFF0F000F0F0F000F0F1F100F2F2F200F3F3F300F4F4F400F5F5
            F500F6F6F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFF
            FF00595959595959595958544F4B4B4F54585959595959595959595959595959
            5647362B23201F212836475659595959595959595959594C32251C1818161210
            0D0E1D304C595959595959595957432D222020201E1C1A1612100B0E25435759
            5959595959432D26272727262422201E1A16120D0B214359595959594C2F2C2E
            2F2F2F2E2C292622201C16120D0B254C59595956323133353737373533312E29
            24201C16120B0B305659594732373B3C0717373C3B37332F2924201C1610081D
            475958363B3C404027161E0C353C3B352F2924201A120D0B365854333E404144
            451B3B030D273E3B352F29221E16100A28544F374142464849450510130F193C
            3B332E26201A120D214F4C394246494B4D4D4A1F1413110C35373129221C1610
            1D4C4C3B46494C4E4F504F4E311313100922332C241E18101D4C4F3A484B4E51
            525352514E3F141102000F2E26201812214F5436494D4F52545554524F4D4613
            0001290427201A1228545837484D505355595553504D4945171A370627201A15
            36585947404D4F52545554524F4D4945412C091E27201A2047595956344A4E51
            525352514E4B4844403C352E26201A30565959594C3A4C4E4F504F4E4C494641
            403B332C241E2B4C5959595959433D4B4D4D4D4B494642403C373129222A4359
            595959595957433A484949484642413E3B332E292D435759595959595959594C
            343E454441403E3B352F2E324C59595959595959595959595647383638383733
            30364756595959595959595959595959595958544F4B4B4F5458595959595959
            5959}
          MouseInImage.Data = {
            5E050000424D5E050000000000001E0300002800000018000000180000000100
            08000000000040020000610F0000610F0000BA0000000000000059A2EC0059A3
            ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
            DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
            E10072AAE20072ABE30075B0EB0075B0EC0093527D0094557E00AE809900B389
            9F00B68EA300BB97AC0084ADD50086AED50086AFD60084B0DB0087B0D80085B2
            DD0096B3CD0096B3CF0097B3CE0095B4D00095B5D10097B5D20097B7D40098B9
            D90099BBDC0088B5E10089B7E4008AB9E70089B9EA0089BEF4008ABEF40098BD
            E00098BDE10099BEE2009ABFE4009CC1E6009CC2E9009AC7F600ABD1F700ACD1
            F700ADD2F700AED2F700BEDBF900BFDBF900C19FA700C2A2AD00C2A2AE00C5A6
            AB00C4A6AE00C3A3B000C3A5B000C3A5B100C3A4B300C4A6B300C5A7B300C5A7
            B600C5A8B300C7AAB000C5A8B500C5A9B500C6A9B800CAAFB700C8ACB800CBB1
            B700CAB0B800CBB2BB00CCB4B800CDB5BB00CFB8BD00D3BFBE00CFB7C200D2C5
            B400D2C6B500D2C6B600D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCB
            B000DFCBB100DFCCB200DAC8BE00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
            B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3C0
            C100D5C3C300D3CEC200D4CFC500D9C7CE00DBCDC400DACCC700D5D2CB00D6D3
            CC00DED2C000DFD3C200DED3CB00DED2CC00D7D7D300DBDEDE00DDE1E400DFE3
            E600DAEBFB00E1D4C000E1D4C100E1D5C200E1D5C300E1D5C400E0D5C600E2D6
            C500E2D6C600E2D7C600E3D7C700E3D7C800E1D7CE00E3D8C800E4D9CA00E4DA
            CC00E4DBCD00E0D4D200E5DDD000E5DDD100E4DCD200E5DED200E5DED300E6DF
            D400E6DFD500E3D9DA00E6E0D500E7E0D600E7E1D800E7E1DD00E8E2D900E8E3
            DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00E9E4E000EBE7E200EBE8E600ECE9
            E500EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EF
            ED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
            FF00B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9
            AE37060C2026251E0B0637AEB9B9B9B9B9B9B9B9B9B9B93B03285E6A6A696867
            635B24023BB9B9B9B9B9B9B9B9B72F12736F6F6F6E6D6B696866625A092FB7B9
            B9B9B9B9B930217B8585858483706F6E6B6967635F1C30B9B9B9B9B93A13888B
            8C8C8C8B898684706F6C6967635F083AB9B9B9AE0179909192929291908F8A86
            836F6D6967625900AEB9B9372A9294953F518E959492908C87846F6C69666022
            37B9B8077E97999A724F56437D9794918D87836F6B68635906B8820E989C9EA1
            A253931A45719894918C86706E6967610A823D2C9DA0A3A5A79F1B464C475296
            94908A846F6B68631D3D3A33A0A4A7AAADADA9584E4C4A447C928F86706D6966
            23393A34A3A7ACAFB0B1B0AF75494D4840579089836E6A6723393D2DA5AAAFB2
            B3B4B3B2AF9B4C4719164B8B846F6A671E3D8210A7ADB0B3B5B6B5B3B0ADA650
            1718763E856F6B680B82B80780ADB1B4B6B9B6B4B1ADA7A255549241856F6B5C
            06B8B93736ADB0B3B5B6B5B3B0ADA7A29D774264856F6B2737B9B9AE0581AFB2
            B3B4B3B2AFAAA5A19A95918B846F5D00AEB9B9B93A15ABAFB0B1B0AFACA7A39E
            999490898365113AB9B9B9B9B9302EA8ADADADAAA7A4A09C97928F867A1F30B9
            B9B9B9B9B9B72F1480A7A7A5A3A09D9894908A74122FB7B9B9B9B9B9B9B9B93B
            04357FA19E9C9894917829033BB9B9B9B9B9B9B9B9B9B9B9AE37070F2C32312B
            0D0737AEB9B9B9B9B9B9B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9
            B9B9}
          PressedImage.Data = {
            2E060000424D2E06000000000000EE0300002800000018000000180000000100
            08000000000040020000610F0000610F0000EE00000000000000914F7B00A673
            9300AB7C9900AD7E9800CF9F7900CFA07900CFA07A00D0A17B00D0A17C00D1A3
            7D00D1A27E00D1A37E00D1A47E00D1A47F00D1A57F00D2A47F00B58CA400BA93
            A700BB96A800BE9BB000D2A58000D2A68300D2A78300D2A88500D2A88600D2A9
            8600D4AB8700D3A98800D4AC8900D4AD8A00D4AE8C00D4AE8D00D5AE8E00D5B0
            8F00D6B18F00D6B29000D6B39100D6B39200D6B39500D7B49400D7B59600D7B5
            9800D7B89B00D8B79B00D9B79C00D9BA9E00C5A6AE00C4A4B200C5A8B600C7AA
            B600C7AABA00C8ADB300C9ADB600CAAFB700C8ABBB00C9AEBB00C9ACBD00C9AD
            BC00CAAFBE00CBAEBF00CCB2B900CEB7BA00D9BBA000D9BCA100DABDA300DABD
            A500DEBCA200DEBDA200D1BAB800D0B9BC00CBAFC000CDB2C200CDB2C300CFB7
            C200CFB9C200D0BAC100D6BFCE00DBC0A800DCC1AA00DEC5A800DEC5A900DEC6
            AA00DFCAAE00DFC9B000DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCC
            B300DFCDB700E2C5AF00E0CBB100E0CCB200E0CCB300E0CDB400E0CDB500E0CE
            B600E0CEB700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0
            B900E0D0BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E0D1
            BD00E1D1BC00E0D2BD00E1D2BD00E0D2BE00E1D2BF00E1D3BE00E1D3BF00E2D2
            BD00E2D3BD00E3D2BD00E2D3BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1
            BF00D8C6CA00D8C7CD00D9C8C000DBCCC400DFD1C500E1D3C000E1D3C100E1D4
            C100E1D4C200E1D5C200E1D5C300E2D5C300E3D5C200E3D5C300E2D5C400E2D6
            C500E3D6C500E3D7C500E2D6C600E2D7C600E3D7C600E3D7C700E4D5C200E4D7
            C600E3D7C800E2D7CF00E6D8C600E3D8C800E2D9CE00E4D8C800E4D9C800E4D9
            C900E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9C900E7DAC900E4DACC00E4DB
            CD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDACB00EDDACC00E2D7D200E1D7
            D600E4D5DE00E4DCD000E5DDD000E5DDD100E5DDD200E5DED300E6DCD000E7DD
            D100E7DED200E6DED400E7DFD500E7DFD600E7DFD800E6E0D500E7E0D600E7E0
            D800E7E1D800E8E0D700E9E1D700E9E0D800E9E1D800E8E2D900E9E2D800E9E2
            D900E8E3DA00E9E2DA00EBE2DB00E8E3DC00E9E5DD00EAE4DC00EAE5DE00EAE6
            DF00E9E1E300EAE2E500EBE6E000EBE7E000EBE7E100EBE7E200EBE7E300EDE8
            E100EDE8E400EDE9E500EEE9E500EFE9E400EEEAE500EEEBE700EEEBE800EFEC
            E900F4EAE200F0ECE800F0EDEB00F3F0EF00F4F1F000F6F3F300F7F5F400FAF5
            F200FAF9F900FDFBFA00FEFEFD00FFFFFF00EDEDEDEDEDEDEDEDECE2AE6767AE
            E2ECEDEDEDEDEDEDEDEDEDEDEDEDEDEDE95B0B0D1E25241D090B5BE9EDEDEDED
            EDEDEDEDEDEDED8106285765656461605851230481EDEDEDEDEDEDEDEDEB4217
            5A757891A3B8B9AC996856511442EBEDEDEDEDEDED4321878B92A8B5BDCBD0D6
            D6D5AA5F521A43EDEDEDEDED8019909596849EBCCBD4DBE0E1E0DBC863520E80
            EDEDEDE90688A28D9544033C4BD8E4E5E6E5E4DBC45E5004E9EDED5B2DA9938A
            97A934C14A13D3E8EAE8E5E0D6A454225BEDEC0D9AAB748A97A99B2F103A46B2
            EDEAE6E1D6C9614F0AECE217B7A0708A97A9BBB0373946484CE7E5E0D6CB8F55
            09E2AF29C08E6C8995A5B6C3CD493846473BD2DBD0C3A1581CAF7F40C77A6A78
            91A2B3BCCBD48332363A0182CBBCA55F237E7F41CE7964738A97A8B5BDCBD0B1
            3002003135B59F60237EAF2BD198616B78919DA9B5BCC3CBBE1112BC3D858D60
            1DAFE21BD7AD59647089919DA8B3B6BBBBBB45332E9D78610CE2EC0FC5D95D5F
            6571899197A2A5A9A9A9A58697916C530AECED5B4EDFA756606570788A919597
            979795918A786A275BEDEDE907CCE36E565F646B7378898A8A8A897877755705
            E9EDEDED8020DCDD6D555961646A6C7070706C727D6F1680EDEDEDEDED432CDA
            DE9C5C56595F616262647C8C751F43EDEDEDEDEDEDEB4220C6D7CFA67B696972
            8F9F94661742EBEDEDEDEDEDEDEDED81084DBACAC2BFB7B4A8762A0681EDEDED
            EDEDEDEDEDEDEDEDE95B0D18293F3E26150D5BE9EDEDEDEDEDEDEDEDEDEDEDED
            EDEDECE2AE6767AEE2ECEDEDEDEDEDEDEDED}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = dmPatient.atnEditADR
          DockOrientation = doNoOrient
        end
        object RzBmpButton6: TRzBmpButton
          Left = 63
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintADRReport
          TabOrder = 0
        end
      end
      object dxDBADRs: TdxDBGrid
        Left = 0
        Top = 44
        Width = 1252
        Height = 407
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ADR_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenuADR
        TabOrder = 1
        OnDblClick = dxDBADRsDblClick
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dmPatient.DSADR
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object dxDBADRsADRDate: TdxDBGridDateColumn
          Caption = 'Date'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ADRDate'
        end
        object dxDBADRsAdverseReation_bol: TdxDBGridCheckColumn
          Caption = 'Adverse Reaction'
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AdverseReation_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxDBADRsProductReaction_bol: TdxDBGridCheckColumn
          Caption = 'Product Reaction'
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ProductReaction_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxDBADRsDateOnSetReaction: TdxDBGridDateColumn
          Caption = 'On Set Reaction'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DateOnSetReaction'
        end
        object dxDBADRsDescription_str: TdxDBGridMemoColumn
          Caption = 'Description'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description_str'
        end
        object dxDBADRsPosted_bol: TdxDBGridCheckColumn
          Caption = 'Posted'
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Posted_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxDBADRsPosted_dat: TdxDBGridDateColumn
          Caption = 'Posted'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Posted_dat'
        end
      end
    end
    object tbsAdherence: TRzTabSheet
      Color = clWindow
      Caption = 'Adherence'
      object RzToolbar2: TRzToolbar
        Left = 0
        Top = 0
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 0
        ThemeAware = False
        ToolbarControls = (
          btnAdherenceAdd
          ElSpeedButton18
          RzBmpButton7)
        object btnAdherenceAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = 16311512
          ParentColor = False
          Action = dmPatient.atnAddAdherence
          DockOrientation = doNoOrient
        end
        object ElSpeedButton18: TElSpeedButton
          Left = 33
          Top = 7
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          PullDownInterval = 0
          PullDownEnabled = True
          Flat = True
          NormalImage.Data = {
            32050000424D3205000000000000F20200002800000018000000180000000100
            08000000000040020000610F0000610F0000AF000000000000009F6AB600A16C
            B700B690BF00BB97C200BD9BC500C2A4CA00C6A9C000C7ACC600C7ACC700CAAF
            C000C9AFC400C8ADC800C9AFC800C9AECA00C9AECD00CBB2C400C9B0CB00CAB0
            CA00CAB1CA00CAB1CB00CAB1CD00CAB1CE00CAB1CF00CBB2CD00CEB7CB00CDB5
            CD00CFB9C900CFB8CB00CBB3D000D0BBC900D0BACF00D1BCCC00D3BECD00D3BE
            D500DFC19D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4
            A300DFC4A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9
            AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200E0C29F00E0C3
            A000E0C3A100E0C4A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7
            A800E1C7A800E1CAAD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CC
            B100E2CDB300E0CDB400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CE
            B600E0CFB800E0CFB900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0
            BC00E0D1BD00E0D2BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5
            BD00D6C4CA00D6C6CE00D8C7CF00DBCAC500DDCFCA00DCCFCE00DCCCDB00DFD5
            CF00DFD4D100E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D5C400E2D6
            C500E3D6C400E2D6C600E2D7C600E3D7C700E3D7C800E3D8C800E4D9CA00E5DB
            CB00E4DACC00E4DBCD00ECDAC500ECDBC600E1D7D800E1D8D000E5DDD000E5DD
            D100E4DDD200E5DED200E5DED300E6DFD400E6DFD500E4DBE000EFE1CF00E6E0
            D500E7E0D600E7E1D800E8E1D600E8E2D900E8E3DA00E9E4DC00E9E5DD00E9E5
            DE00EAE4DC00EAE6DF00ECE6DF00F0E1D000F0E2D100F3E7DA00F3E8DA00E8E2
            E000E9E5E100EBE7E200EDE9E400EDE9E500EDE9E600EEEAE500EEEAE600EEEB
            E700F0EDEA00F1EEEC00F2EFED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7
            F600FCF9F500FBFAFA00FDFCFB00FEFEFE00FFFFFF00AEAEAEAEAEAEAEAEADA6
            97888897A6ADAEAEAEAEAEAEAEAEAEAEAEAEAEAEAA7C3D252A2D2B28223D7CAA
            AEAEAEAEAEAEAEAEAEAEAE96252F4E5353524D4C37322A2496AEAEAEAEAEAEAE
            AEAC6029575B5B5B5A5955524D4B36312360ACAEAEAEAEAEAE61416C6D6D6D6C
            6B5C5B5A55524C37332661AEAEAEAEAE962A717475757574716E6C5C5B56524C
            37332296AEAEAEAA3872787A7B7B7B7A7877736E6B5B59524C363024AAAEAE7C
            487B8081071A7F81807B7875706C5B56524B34297DAEAD3C798385866418200B
            6A83807A76706B5B554D37303DADA63E84898B8E8F1E7E040D6384807A756E5C
            5A524C3522A698468A8D90939B99050E14111B828078736C5B554D3727989554
            8D919B9DA1A19E211C14130C697B776E5C59524B2A959558909BA0A2A3A4A3A2
            68161712086278716B5A534C2A95984A939DA2A5A7A8A7A5A287151003000F74
            6C5B534C2898A6429BA1A3A7A9ABA9A7A3A19A19010266066D5B554D23A6AD3D
            92A1A4A8ABAEABA8A4A19B8F1F1D7B096D5B55473DADAE7C5FA1A3A7A9ABA9A7
            A3A19B8F8A670A656D5B552E7DAEAEAA3994A2A5A7A8A7A5A29D938E86817A74
            6C5B4D24AAAEAEAE96459FA2A3A4A3A2A09B908B858078716B5A2796AEAEAEAE
            AE61509CA1A1A19D9B918D89837B776E5C2C61AEAEAEAEAEAEAC6045929B9B93
            908D8A848078735D2960ACAEAEAEAEAEAEAEAE963A5E8C8E8B8984807A6F4425
            96AEAEAEAEAEAEAEAEAEAEAEAA7C3F4049514F433B3D7CAAAEAEAEAEAEAEAEAE
            AEAEAEAEAEAEADA697888897A6ADAEAEAEAEAEAEAEAE}
          DisabledImage.Data = {
            DE030000424DDE030000000000009E0100002800000018000000180000000100
            08000000000040020000610F0000610F00005A00000000000000ABABAC00BCBC
            BD00C3C3C400C4C4C500C8C8C900C9C9CA00CBCBCC00CCCCCD00CCCDCD00CDCD
            CD00CDCDCE00CDCECE00CECECE00CECECF00CECFCF00CFCFCF00CFCFD000D0D0
            D000D0D0D100D1D1D100D1D1D200D1D2D200D2D2D300D3D3D300D3D3D400D4D4
            D400D4D4D500D5D5D500D5D5D600D5D6D600D6D6D700D6D7D700D7D7D800D7D8
            D800D8D8D900D8D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDB
            DB00DBDBDC00DBDCDC00DCDCDC00DCDDDD00DDDDDD00DEDEDE00DEDFDF00DFDF
            DF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E2E200E2E3E300E3E3
            E300E3E4E400E4E4E400E5E5E500E5E6E600E6E6E600E6E7E700E7E7E700E8E8
            E800E9E9E900E9EAEA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEE
            EE00EEEFEF00EFF0F000F0F0F000F0F1F100F2F2F200F3F3F300F4F4F400F5F5
            F500F6F6F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFF
            FF00595959595959595958544F4B4B4F54585959595959595959595959595959
            5647362B23201F212836475659595959595959595959594C32251C1818161210
            0D0E1D304C595959595959595957432D222020201E1C1A1612100B0E25435759
            5959595959432D26272727262422201E1A16120D0B214359595959594C2F2C2E
            2F2F2F2E2C292622201C16120D0B254C59595956323133353737373533312E29
            24201C16120B0B305659594732373B3C0717373C3B37332F2924201C1610081D
            475958363B3C404027161E0C353C3B352F2924201A120D0B365854333E404144
            451B3B030D273E3B352F29221E16100A28544F374142464849450510130F193C
            3B332E26201A120D214F4C394246494B4D4D4A1F1413110C35373129221C1610
            1D4C4C3B46494C4E4F504F4E311313100922332C241E18101D4C4F3A484B4E51
            525352514E3F141102000F2E26201812214F5436494D4F52545554524F4D4613
            0001290427201A1228545837484D505355595553504D4945171A370627201A15
            36585947404D4F52545554524F4D4945412C091E27201A2047595956344A4E51
            525352514E4B4844403C352E26201A30565959594C3A4C4E4F504F4E4C494641
            403B332C241E2B4C5959595959433D4B4D4D4D4B494642403C373129222A4359
            595959595957433A484949484642413E3B332E292D435759595959595959594C
            343E454441403E3B352F2E324C59595959595959595959595647383638383733
            30364756595959595959595959595959595958544F4B4B4F5458595959595959
            5959}
          MouseInImage.Data = {
            5E050000424D5E050000000000001E0300002800000018000000180000000100
            08000000000040020000610F0000610F0000BA0000000000000059A2EC0059A3
            ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
            DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
            E10072AAE20072ABE30075B0EB0075B0EC0093527D0094557E00AE809900B389
            9F00B68EA300BB97AC0084ADD50086AED50086AFD60084B0DB0087B0D80085B2
            DD0096B3CD0096B3CF0097B3CE0095B4D00095B5D10097B5D20097B7D40098B9
            D90099BBDC0088B5E10089B7E4008AB9E70089B9EA0089BEF4008ABEF40098BD
            E00098BDE10099BEE2009ABFE4009CC1E6009CC2E9009AC7F600ABD1F700ACD1
            F700ADD2F700AED2F700BEDBF900BFDBF900C19FA700C2A2AD00C2A2AE00C5A6
            AB00C4A6AE00C3A3B000C3A5B000C3A5B100C3A4B300C4A6B300C5A7B300C5A7
            B600C5A8B300C7AAB000C5A8B500C5A9B500C6A9B800CAAFB700C8ACB800CBB1
            B700CAB0B800CBB2BB00CCB4B800CDB5BB00CFB8BD00D3BFBE00CFB7C200D2C5
            B400D2C6B500D2C6B600D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCB
            B000DFCBB100DFCCB200DAC8BE00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
            B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3C0
            C100D5C3C300D3CEC200D4CFC500D9C7CE00DBCDC400DACCC700D5D2CB00D6D3
            CC00DED2C000DFD3C200DED3CB00DED2CC00D7D7D300DBDEDE00DDE1E400DFE3
            E600DAEBFB00E1D4C000E1D4C100E1D5C200E1D5C300E1D5C400E0D5C600E2D6
            C500E2D6C600E2D7C600E3D7C700E3D7C800E1D7CE00E3D8C800E4D9CA00E4DA
            CC00E4DBCD00E0D4D200E5DDD000E5DDD100E4DCD200E5DED200E5DED300E6DF
            D400E6DFD500E3D9DA00E6E0D500E7E0D600E7E1D800E7E1DD00E8E2D900E8E3
            DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00E9E4E000EBE7E200EBE8E600ECE9
            E500EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EF
            ED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
            FF00B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9
            AE37060C2026251E0B0637AEB9B9B9B9B9B9B9B9B9B9B93B03285E6A6A696867
            635B24023BB9B9B9B9B9B9B9B9B72F12736F6F6F6E6D6B696866625A092FB7B9
            B9B9B9B9B930217B8585858483706F6E6B6967635F1C30B9B9B9B9B93A13888B
            8C8C8C8B898684706F6C6967635F083AB9B9B9AE0179909192929291908F8A86
            836F6D6967625900AEB9B9372A9294953F518E959492908C87846F6C69666022
            37B9B8077E97999A724F56437D9794918D87836F6B68635906B8820E989C9EA1
            A253931A45719894918C86706E6967610A823D2C9DA0A3A5A79F1B464C475296
            94908A846F6B68631D3D3A33A0A4A7AAADADA9584E4C4A447C928F86706D6966
            23393A34A3A7ACAFB0B1B0AF75494D4840579089836E6A6723393D2DA5AAAFB2
            B3B4B3B2AF9B4C4719164B8B846F6A671E3D8210A7ADB0B3B5B6B5B3B0ADA650
            1718763E856F6B680B82B80780ADB1B4B6B9B6B4B1ADA7A255549241856F6B5C
            06B8B93736ADB0B3B5B6B5B3B0ADA7A29D774264856F6B2737B9B9AE0581AFB2
            B3B4B3B2AFAAA5A19A95918B846F5D00AEB9B9B93A15ABAFB0B1B0AFACA7A39E
            999490898365113AB9B9B9B9B9302EA8ADADADAAA7A4A09C97928F867A1F30B9
            B9B9B9B9B9B72F1480A7A7A5A3A09D9894908A74122FB7B9B9B9B9B9B9B9B93B
            04357FA19E9C9894917829033BB9B9B9B9B9B9B9B9B9B9B9AE37070F2C32312B
            0D0737AEB9B9B9B9B9B9B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9
            B9B9}
          PressedImage.Data = {
            2E060000424D2E06000000000000EE0300002800000018000000180000000100
            08000000000040020000610F0000610F0000EE00000000000000914F7B00A673
            9300AB7C9900AD7E9800CF9F7900CFA07900CFA07A00D0A17B00D0A17C00D1A3
            7D00D1A27E00D1A37E00D1A47E00D1A47F00D1A57F00D2A47F00B58CA400BA93
            A700BB96A800BE9BB000D2A58000D2A68300D2A78300D2A88500D2A88600D2A9
            8600D4AB8700D3A98800D4AC8900D4AD8A00D4AE8C00D4AE8D00D5AE8E00D5B0
            8F00D6B18F00D6B29000D6B39100D6B39200D6B39500D7B49400D7B59600D7B5
            9800D7B89B00D8B79B00D9B79C00D9BA9E00C5A6AE00C4A4B200C5A8B600C7AA
            B600C7AABA00C8ADB300C9ADB600CAAFB700C8ABBB00C9AEBB00C9ACBD00C9AD
            BC00CAAFBE00CBAEBF00CCB2B900CEB7BA00D9BBA000D9BCA100DABDA300DABD
            A500DEBCA200DEBDA200D1BAB800D0B9BC00CBAFC000CDB2C200CDB2C300CFB7
            C200CFB9C200D0BAC100D6BFCE00DBC0A800DCC1AA00DEC5A800DEC5A900DEC6
            AA00DFCAAE00DFC9B000DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCC
            B300DFCDB700E2C5AF00E0CBB100E0CCB200E0CCB300E0CDB400E0CDB500E0CE
            B600E0CEB700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0
            B900E0D0BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E0D1
            BD00E1D1BC00E0D2BD00E1D2BD00E0D2BE00E1D2BF00E1D3BE00E1D3BF00E2D2
            BD00E2D3BD00E3D2BD00E2D3BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1
            BF00D8C6CA00D8C7CD00D9C8C000DBCCC400DFD1C500E1D3C000E1D3C100E1D4
            C100E1D4C200E1D5C200E1D5C300E2D5C300E3D5C200E3D5C300E2D5C400E2D6
            C500E3D6C500E3D7C500E2D6C600E2D7C600E3D7C600E3D7C700E4D5C200E4D7
            C600E3D7C800E2D7CF00E6D8C600E3D8C800E2D9CE00E4D8C800E4D9C800E4D9
            C900E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9C900E7DAC900E4DACC00E4DB
            CD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDACB00EDDACC00E2D7D200E1D7
            D600E4D5DE00E4DCD000E5DDD000E5DDD100E5DDD200E5DED300E6DCD000E7DD
            D100E7DED200E6DED400E7DFD500E7DFD600E7DFD800E6E0D500E7E0D600E7E0
            D800E7E1D800E8E0D700E9E1D700E9E0D800E9E1D800E8E2D900E9E2D800E9E2
            D900E8E3DA00E9E2DA00EBE2DB00E8E3DC00E9E5DD00EAE4DC00EAE5DE00EAE6
            DF00E9E1E300EAE2E500EBE6E000EBE7E000EBE7E100EBE7E200EBE7E300EDE8
            E100EDE8E400EDE9E500EEE9E500EFE9E400EEEAE500EEEBE700EEEBE800EFEC
            E900F4EAE200F0ECE800F0EDEB00F3F0EF00F4F1F000F6F3F300F7F5F400FAF5
            F200FAF9F900FDFBFA00FEFEFD00FFFFFF00EDEDEDEDEDEDEDEDECE2AE6767AE
            E2ECEDEDEDEDEDEDEDEDEDEDEDEDEDEDE95B0B0D1E25241D090B5BE9EDEDEDED
            EDEDEDEDEDEDED8106285765656461605851230481EDEDEDEDEDEDEDEDEB4217
            5A757891A3B8B9AC996856511442EBEDEDEDEDEDED4321878B92A8B5BDCBD0D6
            D6D5AA5F521A43EDEDEDEDED8019909596849EBCCBD4DBE0E1E0DBC863520E80
            EDEDEDE90688A28D9544033C4BD8E4E5E6E5E4DBC45E5004E9EDED5B2DA9938A
            97A934C14A13D3E8EAE8E5E0D6A454225BEDEC0D9AAB748A97A99B2F103A46B2
            EDEAE6E1D6C9614F0AECE217B7A0708A97A9BBB0373946484CE7E5E0D6CB8F55
            09E2AF29C08E6C8995A5B6C3CD493846473BD2DBD0C3A1581CAF7F40C77A6A78
            91A2B3BCCBD48332363A0182CBBCA55F237E7F41CE7964738A97A8B5BDCBD0B1
            3002003135B59F60237EAF2BD198616B78919DA9B5BCC3CBBE1112BC3D858D60
            1DAFE21BD7AD59647089919DA8B3B6BBBBBB45332E9D78610CE2EC0FC5D95D5F
            6571899197A2A5A9A9A9A58697916C530AECED5B4EDFA756606570788A919597
            979795918A786A275BEDEDE907CCE36E565F646B7378898A8A8A897877755705
            E9EDEDED8020DCDD6D555961646A6C7070706C727D6F1680EDEDEDEDED432CDA
            DE9C5C56595F616262647C8C751F43EDEDEDEDEDEDEB4220C6D7CFA67B696972
            8F9F94661742EBEDEDEDEDEDEDEDED81084DBACAC2BFB7B4A8762A0681EDEDED
            EDEDEDEDEDEDEDEDE95B0D18293F3E26150D5BE9EDEDEDEDEDEDEDEDEDEDEDED
            EDEDECE2AE6767AEE2ECEDEDEDEDEDEDEDED}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = dmPatient.atnEditAdherence
          DockOrientation = doNoOrient
        end
        object RzBmpButton7: TRzBmpButton
          Left = 63
          Top = 6
          Width = 32
          Height = 32
          Bitmaps.TransparentColor = clWhite
          Bitmaps.Up.Data = {
            42080000424D4208000000000000420000002800000020000000200000000100
            1000030000000008000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
            31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
            29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
            C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
            9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
            D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
            B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
            3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
            B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
            3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
            9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
            3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
            EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
            3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
            31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
            3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
            734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
            3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
            9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
            3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
            9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
            3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
            F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
            3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
            BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
            3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
            DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
            FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
            DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
            524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
            F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
            D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
            9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
            1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
            7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
            7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
            9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
            9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
            BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
            DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
            DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
            FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
            D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Color = clBtnFace
          Action = dmPatient.atnPrintAdherenceReport
          TabOrder = 0
        end
      end
      object dxDBAdherence: TdxDBGrid
        Left = 0
        Top = 44
        Width = 1252
        Height = 407
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'Adherence_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = MenuAdherencePopUp
        TabOrder = 1
        OnDblClick = dxDBAdherenceDblClick
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dmPatient.dsAdherence
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        RegistryPath = '\Software\RxSolution\1.2\Grids\Patient\Adherence'
        object dxDBAdherenceObservation_dat: TdxDBGridDateColumn
          Caption = 'Observation Date'
          DisableEditor = True
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Observation_dat'
        end
        object dxDBAdherenceCaptured_dat: TdxDBGridDateColumn
          Caption = 'Captured'
          DisableEditor = True
          Visible = False
          Width = 356
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Captured_dat'
        end
        object dxDBAdherenceLevelOfAdherence_str: TdxDBGridColumn
          Caption = 'Level Of Adherence'
          DisableEditor = True
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LevelOfAdherence_str'
        end
        object dxDBAdherenceCapturedBy_str: TdxDBGridColumn
          Caption = 'Captured By'
          DisableEditor = True
          Width = 246
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CapturedBy_str'
        end
        object dxDBAdherencePosted_bol: TdxDBGridCheckColumn
          Caption = 'Posted'
          DisableEditor = True
          MinWidth = 20
          Width = 153
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Posted_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxDBAdherencePosted_dat: TdxDBGridColumn
          Caption = 'Posted Date'
          DisableEditor = True
          Width = 254
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Posted_dat'
        end
      end
    end
    object tbsCommentsNotes: TRzTabSheet
      Color = clWindow
      Caption = 'Notes'
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        TabOrder = 0
        DesignSize = (
          1252
          43)
        object RzLabel10: TRzLabel
          Left = 6
          Top = 6
          Width = 1240
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Notes / Comments'
          Color = 15448477
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
      end
      object RzToolbar9: TRzToolbar
        Left = 0
        Top = 43
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 1
        ThemeAware = False
        ToolbarControls = (
          btnAddComments
          btnCommentsPost
          btnCommentsCancel)
        object btnAddComments: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Action = atnCommentsInsert
          DockOrientation = doNoOrient
        end
        object btnCommentsPost: TElSpeedButton
          Left = 33
          Top = 6
          Width = 31
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnCommentsPost
          DockOrientation = doNoOrient
        end
        object btnCommentsCancel: TElSpeedButton
          Left = 64
          Top = 6
          Width = 36
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
            9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
            A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
            A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
            AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
            B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
            B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
            B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
            B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
            B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
            B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
            B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
            BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
            C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
            C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
            C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
            CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
            C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
            CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
            D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
            D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
            D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
            DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
            E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
            E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
            F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
            23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
            FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
            757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
            60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
            F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
            C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
            00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
            23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
            ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
            012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
            23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
            F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
            B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
            FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
            CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
            8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
            FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
          DisabledImage.Data = {
            AA040000424DAA040000000000006A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
            AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
            B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
            BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
            C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
            CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
            D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
            E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
            E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
            E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
            EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
            8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
            3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
            2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
            4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
            4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
            30252020518B844E5D6064686B310B0000131600000009383329222041847C54
            64666E7072726C15000000000635463E37302520387B7657666E727576767674
            0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
            3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
            71777C818588420001645603000018484037302541848B536F777E83888C7A02
            1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
            3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
            7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
            726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
            46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
            8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
            7B75757C848B8C8C8C8C8C8C8C8C}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB716A00AC75
            6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
            8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
            8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
            D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
            CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
            D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
            EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
            EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
            E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
            ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
            F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
            8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
            A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
            B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
            B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
            B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
            BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
            DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
            C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
            C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
            EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
            F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
            C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
            C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
            D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
            D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
            E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
            EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
            FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
            15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
            FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
            778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
            8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
            B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
            DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
            00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
            153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
            ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
            0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
            1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
            FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
            D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
            EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
            4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
            CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
            FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A96F6800AB72
            6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
            8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
            8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
            9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
            A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
            A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
            B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
            A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
            BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
            B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
            AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
            B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
            BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
            BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
            BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
            BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
            BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
            C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
            C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
            C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
            C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
            CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
            C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
            C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
            D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
            DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
            E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
            1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
            FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
            94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
            F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
            F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
            C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
            001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
            297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
            8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
            E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
            1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
            5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
            A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
            FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
            EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
            C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
            FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnCommentsCancel
          DockOrientation = doNoOrient
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 0
        Top = 87
        Width = 1252
        Height = 364
        Align = alClient
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ThemeAware = False
        object dxDBGrid2: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1250
          Height = 346
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'personComment_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dmPatient.dsqryPersonComment
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -12
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = [fsBold]
          RegistryPath = '\Software\RxSolution\1.2\Grids\Patient\PatientVisits'
          object dxDBGrid2personCommentDate_Dat: TdxDBGridDateColumn
            Caption = 'Date'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personCommentDate_Dat'
          end
          object dxDBGrid2personCommentDescription_Str: TdxDBGridMemoColumn
            Caption = 'Description'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Width = 683
            BandIndex = 0
            RowIndex = 0
            FieldName = 'personCommentDescription_Str'
          end
        end
      end
    end
    object tbsMedicalAid: TRzTabSheet
      Color = clWindow
      Caption = 'Medical Aid'
      object RzToolbar10: TRzToolbar
        Left = 0
        Top = 0
        Width = 1252
        Height = 44
        AutoStyle = False
        Images = imgToolbar
        RowHeight = 40
        ButtonLayout = blGlyphTop
        ButtonWidth = 60
        ButtonHeight = 40
        ShowButtonCaptions = True
        TextOptions = ttoShowTextLabels
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop, sdBottom]
        BorderWidth = 0
        Color = clWhite
        TabOrder = 0
        ThemeAware = False
        ToolbarControls = (
          btnMedicalAidAdd
          ElSpeedButton2)
        object btnMedicalAidAdd: TElSpeedButton
          Left = 4
          Top = 6
          Width = 29
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000008EB39E008EB4
            9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
            AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
            B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
            C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
            B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
            BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
            B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
            BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
            BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
            C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
            C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
            D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
            C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
            CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
            C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
            CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
            CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
            D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
            D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
            DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
            E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
            E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
            EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
            EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
            22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
            FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
            79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
            4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
            F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
            BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
            8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
            22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
            E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
            65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
            22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
            F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
            B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
            FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
            C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
            8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            72040000424D7204000000000000320200002800000018000000180000000100
            08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
            B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
            BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
            C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
            D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
            D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
            D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
            D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
            DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
            DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
            E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
            E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
            EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
            F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
            FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
            6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
            7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
            7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
            33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
            161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
            43484D50505050504403033538332D281F181429627E7D484D4F565658585856
            4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
            291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
            5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
            0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
            352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
            626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
            5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
            322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
            7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
            615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
            677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
            7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000036C58B0037C6
            8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
            A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
            C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
            B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
            D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
            DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
            C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
            DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
            E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
            F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
            E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
            EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
            F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
            CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
            B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
            B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
            C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
            D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
            D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
            C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
            CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
            D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
            E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
            EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
            083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
            FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
            80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
            80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
            BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
            DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
            CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
            21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
            F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
            20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
            2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
            FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
            D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
            EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
            5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
            D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
            FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000034C58B0037C6
            8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
            990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
            A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
            AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
            B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
            BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
            C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
            A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
            A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
            BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
            C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
            CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
            D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
            C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
            C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
            C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
            CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
            CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
            C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
            D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
            DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
            D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
            E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
            38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
            FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
            A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
            17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
            EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
            B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
            0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
            38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
            ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
            00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
            38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
            676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
            AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
            FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
            C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
            C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = 16311512
          ParentColor = False
          Action = atnMedicalAidInsert
          DockOrientation = doNoOrient
        end
        object ElSpeedButton2: TElSpeedButton
          Left = 33
          Top = 6
          Width = 35
          Height = 32
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000048C893004EC8
            94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
            AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
            B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
            B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
            C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
            BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
            B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
            B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
            B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
            B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
            BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
            BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
            C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
            C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
            DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
            C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
            CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
            CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
            CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
            D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
            D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
            D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
            E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
            E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
            E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
            2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
            FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
            7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
            5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
            F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
            B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
            938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
            2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
            EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
            1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
            2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
            F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
            B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
            FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
            CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
            93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            4E040000424D4E040000000000000E0200002800000018000000180000000100
            08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
            B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
            C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
            E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
            E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
            E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
            ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
            F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
            F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
            FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
            6E74757575757575757575757575757572593F30272321242D3F597275757575
            75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
            26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
            1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
            757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
            47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
            362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
            2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
            520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
            4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
            24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
            7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
            4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
            727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
            6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
            443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
            75757575757575757257403E4040403B363E5872747575757575757575757574
            7474746E655E5E656E747575747575757575}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA0260063A2
            2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
            680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
            8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
            9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
            DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
            C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
            E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
            F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
            E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
            E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
            F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
            AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
            B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
            BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
            BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
            D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
            DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
            C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
            E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
            C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
            CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
            D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
            DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
            E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
            1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
            FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
            7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
            8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
            BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
            D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
            CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
            1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
            F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
            16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
            1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
            F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
            D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
            F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
            59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
            CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
            FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000005DA026006DA7
            3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
            690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
            7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
            9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
            A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
            AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
            A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
            AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
            AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
            B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
            BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
            AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
            B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
            B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
            BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
            BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
            BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
            BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
            C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
            C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
            C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
            CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
            CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
            C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
            CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
            D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
            D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
            D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
            E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
            E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
            F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
            10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
            FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
            96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
            EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
            E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
            A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
            03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
            237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
            99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
            DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
            13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
            644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
            969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
            FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
            B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
            B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
            FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          Action = atnMedicalAidPost
          DockOrientation = doNoOrient
        end
      end
      object dxDBMedicalAid: TdxDBGrid
        Left = 0
        Top = 44
        Width = 1252
        Height = 407
        BandRowCount = 2
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'personMedicalAid_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Verdana'
        BandFont.Style = []
        DataSource = dmPatient.dsqryPersonMedicalAid
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Verdana'
        PreviewFont.Style = []
        object dxDBMedicalAidpersonMedicalAidDateRecorded_Dat: TdxDBGridDateColumn
          Caption = 'Recorded'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personMedicalAidDateRecorded_Dat'
        end
        object dxDBMedicalAidpersonMedicalAidName_Str: TdxDBGridColumn
          Caption = 'Medical Aid Name'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personMedicalAidName_Str'
        end
        object dxDBMedicalAidpersonMedicalAidNumber_Str: TdxDBGridColumn
          Caption = 'Number'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personMedicalAidNumber_Str'
        end
        object dxDBMedicalAidpersonMedicalAidActive_Bol: TdxDBGridCheckColumn
          Caption = 'Active'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personMedicalAidActive_Bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1254
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
    DesignSize = (
      1254
      68)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 6
      Top = 6
      Width = 1242
      Height = 56
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = clWindow
      Pen.Color = clActiveCaption
      Pen.Style = psInsideFrame
    end
    object pnlToolbar_Header_Display: TRzLabel
      Left = 12
      Top = 12
      Width = 1230
      Height = 43
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Name'
      Color = 15448477
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -38
      Font.Name = 'Haettenschweiler'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object lblBrowseOnly: TLabel
      Left = 1124
      Top = 0
      Width = 130
      Height = 68
      Align = alRight
      Alignment = taCenter
      Caption = 'Browse Only    '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -28
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object img_Verified: TImage
      Left = 56
      Top = 18
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        055449636F6E0000010008001010000001000800680500008600000010100000
        0100200068040000EE0500001818000001000800C8060000560A000018180000
        01002000880900001E1100002020000001000800A8080000A61A000020200000
        01002000A81000004E2300003030000001000800A80E0000F633000030300000
        01002000A82500009E4200002800000010000000200000000100080000000000
        400100000000000000000000000000000000000000000000FFFFFF0043C86600
        08880000AAC9A7001EAF3300CAECD7005A8A5A007ACC85003A6C0000267D2600
        83E5A700ECE6EA000BA8170059D37E0027C35300136C0D001E9A2300217D0000
        8EBF880015881600009E020077DC9500629D6200FAEAF9003BBE5000DCF3E900
        2ECB63002C8E2B0020B9420053C66C00266D00000BAD270061D88900D1E1D100
        0F7D0F004CD3790024A42D00DAEDDD002BB43E0000A30D0010690200138C0000
        17A32500FCF6FA0002940000327200001B8600000E8E080016B02E007DDE9C00
        1CB53A000FA920002CC55A00058A080056CA730012740B00F6F0F50027752500
        297C000020AA2A002D952D001285000004A008001E93220036C1540027C04D00
        5C905C0060976000229A280077E09C0009AA2200FFF9FF0011AD240021BC4700
        009900001EAA2F001BB940000585070008A91B00297927007BDB9900138B1300
        21962400009E07005DD27C0015700D0024A82F000F8D0000367100000BA81F00
        2FC9600029C45600257825002C922C00138800001E7E00005ED8880031CA6300
        FFFCFF00DBEFDF0081E3A6007ADD9B001E9624001FBB4500116E0D00009B0200
        38BF5400F5EEF40022BB450039BF4F00009D0000009F090001A10D0029C35400
        26C04F00FFF7FF00DAEFDD00009400000097000012720B0011AB240060996000
        78DB96001DB63B00396B0000009D030014710D000BAC26001F9B23002C912B00
        2ECA6200FFFDFF00FFFBFF00DAEEDD007DDD9C0000980000009A00007BDD9B00
        266E00001F7E00005A8B5A005C8F5C002FC96100629C620022BB46002CC55900
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000008E507F563A070000000000000000002303585F8C2E1F10
        000000000000004E3F6F28897776607D290000000000140D716B1A667E4B883E
        096900000044574F27392C0132546A4B128B8D00001C6E3C0C6C74850187706A
        2D595D00004019041822057501018A54893B78000053552B13794D2064010151
        152F3800005E1635685C736D808663847B2A0A0000901E21838F92421D472648
        063043000000110B241B5B7291335A0849230000000000256561620F4A7C3134
        36000000000000008137460E02414C52000000000000000000173D4567827A00
        0000000000000000000000000000000000000000FFFF0000F81F0000F00F0000
        E0070000C0030000800100008001000080010000800100008001000080010000
        C0030000E0070000F00F0000F81F0000FFFF0000280000001000000020000000
        0100200000000000400400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000780010006D0078036B00C6086D00EB096C00EC
        036700C80065007B006300130000000000000000000000000000000000000000
        000000000000000000810047017900E9088800FF0F8D00FF138800FF1F7E00FF
        327200FF266D00FF076800EC0076004D00000000000000000000000000000000
        0000000000880046028504F904A008FF009D00FF00A30DFF009A00FF009700FF
        009400FF1E7E00FF396B00FF0F6A00FB0072004D000000000000000000000000
        0089000E068607E70BA817FF01A10DFF38BF54FFDCF3E9FF7ADD9BFF009D03FF
        009900FF009800FF128500FF3A6C00FF056A00EC006300130000000000000000
        007B007324A82FFF08A91BFF2BB43EFFF6F0F5FFFCF6FAFFFFFFFFFF7DDE9CFF
        009E07FF009B02FF009900FF217D00FF266E00FF0066007C0000000000000000
        028400C039BF4FFF20AA2AFFECE6EAFFF5EEF4FFFFF7FFFFFFFBFFFFFFFFFFFF
        7DDD9CFF009F09FF009B02FF029400FF367100FF006A00C90000000000000000
        0F9214E53BBE50FFAAC9A7FFFAEAF9FFD1E1D1FF1EAF33FFDAEFDDFFFFFFFFFF
        FFFFFFFF7BDD9BFF009E07FF009A00FF297C00FF086F00EE0000000000000000
        119515E45DD27CFF17A325FF8EBF88FF11AB24FF1BB940FF0BAD27FFDBEFDFFF
        FFFFFFFFFFFFFFFF7BDB99FF009E02FF1B8600FF087100EE0000000000000000
        008A00BE77DC95FF2CC55AFF1FBB45FF29C456FF26C04FFF22BB45FF0BAC26FF
        DAEEDDFFFFFCFFFFFFFDFFFF78DB96FF138C00FF017100C70000000000000000
        0085007053C66CFF61D889FF2ECA62FF2FC961FF2CC559FF27C04DFF20B942FF
        09AA22FFDAEDDDFFFFF9FFFFCAECD7FF0E8E08FF007000790000000000000000
        00A0000C0E9914E483E5A7FF4CD379FF2ECB63FF2FC960FF29C354FF22BB46FF
        1CB53AFF0BA81FFF7ACC85FF11AD24FF017900E9007700100000000000000000
        0000000000A2004022A62BF881E3A6FF5ED888FF31CA63FF27C353FF21BC47FF
        1DB63BFF16B02EFF0FA920FF028A05F9008C0047000000000000000000000000
        000000000000000000A200400F9A14E456CA73FF77E09CFF59D37EFF43C866FF
        36C154FF1EAA2FFF058905E8008C004600000000000000000000000000000000
        00000000000000000000000000A0000C00880070028E02BE139919E40F9516E5
        028901C0007F00730088000E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFF0000
        F81F0000F00F0000E0070000C003000080010000800100008001000080010000
        8001000080010000C0030000E0070000F00F0000F81F0000FFFF000028000000
        18000000300000000100080000000000A0020000000000000000000000000000
        0000000000000000FFFFFF003DCE6E00009100009CE1B5003D823D0070967000
        14B83A00386A0000CDE9D1006AD98C0057B555001E8F1F00106C0A0004A91B00
        33A73100ECEAEC00588E58002AC3550076B673005DC875007EE2A200B8E2BE00
        21732100257E000046A5410041BD54002F8F2F0034B34500FAE9F90020A32B00
        02A00A00109715005FBE65001086000050D37C001F6C000030C9630010AA2900
        4D944D0029B4370021BA4500EDF8F300137C0F00659A650053C8680064D28000
        75DD97006EA46E00157900000D9401002E72000046C86500208220002E822E00
        1E9C20004CBD5B00B0DCB60045B44C001686160018B131001A731700F8F7F800
        6991690009A017003AC66000F3EFF3000EA71E001FB63A00019A0200FFF5FE00
        239426002EAE3D002EBA48000387000025BE4C00377E370009AD23003AB84A00
        56CB720032C25500429E42002DC65B0035CE680027B63F00089B0D005FCF7A00
        05A411002E972E00088D00001681000052985200F6E7F5000696000067D68600
        57D27E0076D9910012750F00E7E5E7003BCB6800336D00000C88050051BF5F00
        FCF2FA00157014001D781A00178B1A0011AC23002C6C00000CA7180059CE7900
        52D077001EB740002D780000009C0E00FCFCFD00EEEDEE000B9E110010AF2C00
        2C8B2C0019B33600B6DEBB00029E050007A51700F4F4F400328C32007AE19E00
        207E000006A10D000D9B16001A9D23005ECD7500009500002A7C000014AD2900
        39CE6B0006AB20002E872E0027C050007FDF9F000D6E07000297050072DB9400
        329132002DC5570031B0430075DF9B00089200001CB53A00B3DBBA0060D27D00
        22B537001E741B002AB53B00FAEDFA00F7EAF600118A0000219E220032CB6600
        FFFCFF00167D00002C8F2C0065966500049D080002A8180016B0300023C14D00
        2DC85E00FCF8FB00F7F4F700F1EFF0001C6E00002F75000003A10F003CCD6B00
        0AA31600FAFAFB00116F0B001B70180078DC96001F851F0066D385003C853C00
        24BD490052C76B0028BF4D00356D00002A7100002A77000072DE970063D17D00
        1DB73E0020B9420030CA6000FEF9FD00F5F7F8000F70080003950000029B0400
        009F080077DE990002AA1D002F922F006EA16E0057CD730022BC46002AC65800
        FDF5FD00FCEFFA00B8E0BC0000980000346F00007CDF9E0005A71700FFFDFF00
        BAE3BF007BE1A100059E0A0005A81A000AA4170005AA1D00387C380026B53D00
        28C1520033B44700FDFFFF00F4F2F3000E6C09000297000000980500376D0000
        029E0800069F0E0004AA1F000DA71C000DA91E0011AB25001DB63B001FB94100
        3CCE6C0031CC64002ECA610026BF4E0028C25000FFF9FF001C6C000000930000
        009A0000168300002F7300002D740000257C000002A00C002175210070987000
        2BC65B0000000000000000000000000000000000000000000000000000000000
        00000000060598B1B1B2DD3F0000000000000000000000000000A261317FFBBC
        FA33BBF50D110000000000000000000000364A5DD2D2D284595A33BA64241700
        0000000000000000358D7AC645D2D2D28484F622BABA6C68000000000000007D
        5580E8D97B0707E7F7D284840333086CFD0000000000CB206DAFAFDAB5A92A02
        1FC645D284F633E62411000000003B28EA43DA1446A9C27302ADA3C6D28403E6
        64E3000000008299ECDA66D0AA7C3ED6E1EFADA3C6D284F8E6AB3F0000274E54
        D53A9B1074A9A8730101EFADA3C6D284D3334C0000772DDE0F5C62106739099F
        730101EFADA345D27FF93D00000C8349195C629A21C9E9D7D6D601E1AEADC645
        9CAC8C00000CBE3472131D0B4D29BF88D7D67301E1AEFC459371C400001B2E56
        A626E576F3B7297088169FB09FB063C7C5856900005BB86090FFA752128A4BCD
        BFDCD1F43EA8C363E418B600000048B35FA7C1C152908AB729ED0E79CFE24604
        75A0FE00000037BD8B879E9E255212F2CD7078A495464250322B000000000091
        15C8F09E9EC152DFB7EE94A5DA38A557652C0000000000514F152F53F0F052DF
        B7C0ED3C86EBDB558900000000000000584FD8D423F1CEDFB7C0943C866B40B4
        000000000000000000511C927E8E6F41B9EEED4497818F000000000000000000
        0000009DE06E0A5E96CC1A1E6A300000000000000000000000000000005BCA47
        47A1270000000000000000000000000000000000000000000000000000000000
        00000000FFFFFF00FF00FF00FC003F00F8001F00F0000F00E0000700C0000300
        C0000300C0000100800001008000010080000100800001008000010080000100
        C0000100C0000300E0000300E0000700F0000F00F8001F00FE003F00FF81FF00
        FFFFFF0028000000180000003000000001002000000000006009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000007A0009006D005B006C00A5046A00D7076C00EE086B00F0
        046800DB006500AD00640066006F000F00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        009700020076006B047100E9157900FF207D00FF257C00FF2A7700FF2D7400FF
        2E7200FF2A7100FF1C6C00FF076900F0006D007E008100070000000000000000
        0000000000000000000000000000000000000000000000000000000000810012
        007300BB038700FF069600FF009800FF009800FF009700FF009400FF088D00FF
        168100FF2D7200FF356D00FF326D00FF1F6C00FF006600CE0071001F00000000
        000000000000000000000000000000000000000000000000008B0011007900D0
        029705FF029E05FF029C05FF019A03FF009900FF009800FF009700FF009500FF
        009500FF009300FF108600FF346D00FF356C00FF2C6C00FF026900E10076001E
        000000000000000000000000000000000000000000000001008000B5089B0DFF
        06A10DFF069F0EFF059E0AFF07A517FF13B83AFF14B739FF029E08FF009A00FF
        009800FF009600FF009400FF009000FF2D7200FF386A00FF2B6C00FF006900CE
        004F000700000000000000000000000000000000008C005E109715FF0CA718FF
        0AA316FF09A315FF06A81AFF66D385FFF6F5F7FFEDF8F3FF3DCE6EFF02A00AFF
        019B04FF019902FF009800FF009400FF009300FF2E7200FF376C00FF1F6C00FF
        006F007E00000000000000000000000000890004008201DE29B437FF0DA71CFF
        0EA71EFF05A71AFF5DC875FFFFF4FEFFF7F4F6FFFEF9FDFFFBFCFDFF3DCE6DFF
        03A10EFF049D07FF019A04FF009700FF009500FF009100FF376C00FF336D00FF
        066A00F1006600100000000000000000008000471A9D23FF2AB53BFF11AB25FF
        06A81AFF51BF5FFFFCEFFAFFF1EFF0FFF4F4F4FFF8F7F8FFFFFDFFFFFDFFFFFF
        3CCE6CFF04A210FF049D08FF029B04FF009700FF009500FF168300FF376D00FF
        1C6E00FF006600660000000000000000007F008F3AB84AFF27B63FFF05A717FF
        45B44CFFF7EAF6FFECEAECFFEEEDEEFFF8F4F7FFFBF7FAFFFCFBFCFFFFFFFFFF
        FEFFFFFF3CCE6CFF04A210FF049D08FF019A04FF009800FF009500FF346F00FF
        2D7200FF006800AF0000000000000000008000BF53C868FF26B53DFF33A731FF
        F5E7F4FFE7E5E7FFEBE9EBFFFCF2FAFFB0DCB6FFCDE9D1FFFFFBFFFFFCFBFCFF
        FFFFFFFFFEFFFFFF3CCE6CFF04A210FF049D07FF019A03FF009900FF207E00FF
        2F7300FF046B00DD0000000000000000008901D35ECD75FF2EBA48FF46A541FF
        F6E7F5FFE7E5E7FFFAEDFAFF5FBE65FF02AA1DFF04AA1FFFB9E3BFFFFFFDFFFF
        FEFDFEFFFFFFFFFFFDFFFFFF3BCD6BFF03A10FFF039C05FF009901FF118A00FF
        2F7500FF076D00F40000000000000000018A02D263D17DFF46C865FF009C0EFF
        76B673FFFAE9F9FF57B555FF09AD23FF20BA45FF1DB73DFF06AB20FFBAE3BFFF
        FFFDFFFFFDFCFDFFFFFFFFFFFDFFFEFF3CCC6BFF02A00CFF009A02FF089200FF
        2D7800FF086F00F20000000000000000008500BA64D280FF5FCF7AFF23C14DFF
        10AA29FF009805FF10AF2CFF28C250FF25BE49FF21BA44FF1DB73FFF06AB1FFF
        B8E2BEFFFFFBFFFFFAF9FAFFFFFCFFFFF9FAFBFF3ACB68FF009F08FF039500FF
        2A7C00FF046F00D900000000000000000085008752C76BFF76D991FF2DC557FF
        2BC65BFF2DC75DFF2DC65AFF29C254FF27C050FF25BE4CFF22BC46FF1DB73EFF
        05AA1DFFB8E0BCFFFFF9FFFFF8F7F8FFFCF8FBFFF5F7F8FF3BCB67FF029700FF
        257E00FF007000A700000000000000000092003D2FB03EFE78DC96FF57D27EFF
        2CC85EFF30CA60FF30C960FF2DC65BFF2CC556FF27C050FF24BD4AFF21BA44FF
        1DB63BFF04A91BFFB6DEBBFFFDF5FDFFF4F2F3FFFFF6FEFF9CE1B5FF0B9E11FF
        167D00FF0071005C000000000000000000000001009A03D272DE97FF7FDF9FFF
        39CE6BFF32CB65FF33CC66FF30C963FF2DC65DFF2AC355FF26BF4EFF22BB46FF
        1EB740FF19B336FF02A818FFB3DBBAFFFFF5FFFFF3EFF3FF32C255FF0D9401FF
        057800E9007A0009000000000000000000000000009F004C32B244FE7DE2A2FF
        77DE99FF32CC64FF33CC66FF32CB66FF31CA61FF2CC55AFF28C151FF24BD49FF
        1FB841FF1BB43AFF16B030FF05A81AFF4CBD5BFF15B02FFF05A411FF0C8805FF
        007E006C00000000000000000000000000000000000000000094009F55CB72FF
        7EE1A1FF75DD97FF35CE68FF31CC65FF31CB64FF2DC65CFF28C152FF24BD4AFF
        20B942FF1CB53BFF18B131FF14AD29FF0DA91EFF0AA417FF089B0DFF007A00BC
        00960002000000000000000000000000000000000000000000910008008F00BC
        56CA72FF7BE1A1FF7CDF9EFF50D37CFF2ECA61FF2AC658FF27C152FF24BD4AFF
        20B942FF1CB53AFF18B131FF14AD29FF11AC23FF09A017FF007E00D100800012
        0000000000000000000000000000000000000000000000000000000000910008
        0097009E35B546FE75DF9BFF7AE19EFF72DB94FF52D077FF3AC660FF28BF4DFF
        1FB940FF1CB53BFF1FB63AFF22B537FF0D9B16FF008700B5008B001100000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000009F004C049D06D234B648FE59CE79FF6AD98CFF67D686FF60D27DFF
        57CD73FF41BD54FF20A32BFF028805DE0092005F000000010000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000010091003D00860087008900BA07910AD2068F09D3
        008500BF0081008F008300470088000400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFF00FF00FF00FC003F00F8001F00F0000F00
        E0000700C0000300C0000300C000010080000100800001008000010080000100
        8000010080000100C0000100C0000300E0000300E0000700F0000F00F8001F00
        FE003F00FF81FF00FFFFFF002800000020000000400000000100080000000000
        800400000000000000000000000000000000000000000000FFFFFF0036CE6A00
        02890000A8CFAA0077A17700398A390068DC92003A6A000012B73700E3E2E300
        1D771D005B8F5B00C3E6C80043B54A0001A717005BC96F000C68000085DCA400
        26C14F00218200001C9A1700F7E7F700AAE3BB006DB66A0029AB380048C15E00
        2E792E0048934800268D260011AB2500206C00000E790E0067CF7F00029C0600
        4DD27A0053A0530076E19C003AC054003BAD3D0020B942002EC85E0035A13200
        20A42900128B00000675000012920E00F6F6F60014790000307400009CD4A400
        1BB12E005DD98A00EFEEEE006F996F00B5DBBB00099D14000D6C0D00FFF2FF00
        2F8D2F001B8E1B0053C5660032B24400176F1700429C4200188118005AD07900
        379637005488540077DA930045C8680007AB200028822800089209006DC87900
        277800006CD78B00199E240039B64D0000940000347E3400BAE0C4000BA61900
        1DBF490013981B0011B12D001BB4380051CB6D0022A93100019A0F00157A1500
        43C053007EDF9E0042C5600042924200E9E9E900ADD4AF00056905002BC45700
        196F00000C98060031CB64001E7A0000F7EEF5004D974D00118400001A820000
        0D89060005A10C000BAF2800296C0000088E00000283030055CD74006FDC9500
        336D000060D27F00FBFAFB0063CD79000EA81F0024B030003290320043BE5A00
        24BD4900AAE7C100F1E5F100277C2700709F70002EAF3F000E800E00F2F2F200
        009A01000A930F004DC46300096E0900FBF3F9005CD585000B88000063D88B00
        2471000008A31200C0E1C30006700000079A0E002CC04F00FFF8FE0006A91B00
        15AD2B0076DD990004A215006ED98F0014B33200F3EBF2001D8600001A731A00
        6AD283004DCF750079E19F00048805003DC15900FAEBF9002F6F0000078D0700
        279227007ADE9B002A780000277C0000099712000DAC230016B02F0032C75D00
        086B000037913700E6E5E60022BB4500147114001775170066DA8F0002950400
        2ECB6200376C000028C152004AC2630041BC530057D17C0019B33600009F0600
        32710000049D0A000CA51500268A26001EAE2E001EB83F004EC35F00067A0000
        05980B0015B6380020A52D0033CC660030C961003BC05000157E1500FEFCFE00
        C5E7CA0074E09B0072DD97006BD487002DC65B003BB94E00276E000028750000
        12AD2A00F8F7F800F4F4F400EFE7EF00019A03000DB12A0032803200378C3700
        2785270014B5350051C86E0025BE4C004195410045C15D00FBF0F900F7F1F600
        137600000F8A0000307100002479000006A10F006AD98E0006AA1E0015AC2800
        1DB73C0021BD470032B14100FDF4FB00EBEAEB00C2E5CB00C1E3C600B3DDBC00
        0A690000196C00000B6B0B0000920000009700000B950D0071DA94006EDB9100
        05A719000AA5180007A71A0014AF2D0017B13100000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0C509A39393F1B4400000000000000000000000000000000000000000000488E
        E366E64BD2D28BF4F30B360000000000000000000000000000000000062D692C
        E4E4696AE6E5E5A1A1D1117E0000000000000000000000000000005A038383F7
        83F7F74F4FF669D2B473731FF50000000000000000000000000020B2222222D7
        8383F7F7F74F4F4F89BBB4736E61000000000000000000000041C36CBCBCBC22
        A855FC83D7F7F74FF6F6E608736EF50000000000000000005E84BD8C8C8C8C53
        127C34DC832283F74FF6F66608731F7E00000000000000007078FC52525209F0
        91910107DCD722D7F7F74F4F4BB473F336000000000000AC2BBF7777776D5187
        822F750107C422BC2283F74FF6B473D10B000000000000705BEA1E1E0F376735
        822FD4CA01B1C422BC2283F74F69B4BBAB00000000007F54C1D3D3BA6098EF35
        82D52F750101B1C4BCBC22834F4FBBBB6344000000001C193DD38304D6AD5F35
        87917575CA0101B1C4BCBCD7F7F76ABB8B1B000000003BD01095187D0AADEFE1
        4AB70DCA75010101B1C42222D7F76FBBD2AF00000000BE1A761E2A160AADA00E
        E99747CBCACA010101B1C4222283F731A58600000000BE852190F61816A02792
        AE285647CBCA75CA0101B1DCD7D783A6A58600000000791A9B5DDE592E15FD13
        7BAE2856E9CBCA7575CA018ADC838314A6B000000000684ECE42136213DE6213
        DE7BAE2856E90D91D4D475018A97839966D90000000005C54C4562CFCFCFCF62
        B5137BAE2856920D912F2FD49188FD99300C0000000000A29645B829C7C7C7CF
        62B5137BAEC0B992F1EED5828717D8992D000000000000407A945C0265C6C6C7
        2962B5DEAE2856FFFB8DEEE23A468C6ADB0000000000000049CCA4CDB3C6C6C6
        65CF62137B28EBB9FEFB32F29FA864C2000000000000000024809D5CE8B3C6C6
        652962B57BAEC056FFD3FD9252E76BDA000000000000000000A3B69D5CFAC665
        652962B5DEAEC056FF931E77528FC900000000000000000000003CB69DA4A423
        B32962B5DEAEC056FF931E77388100000000000000000000000000A3ED2594A4
        F99CAA13EC28EBB9A99333A74100000000000000000000000000000024F8B6CC
        72964C74575D9F26C8589EDF0000000000000000000000000000000000004049
        197ADD7157E03E4D9E4300000000000000000000000000000000000000000000
        0568791D1D3B1C7F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFF00FFF
        FFC001FFFF0000FFFE00007FFC00003FF800001FF000000FF0000007E0000007
        E0000007C0000003C0000003C0000003C0000003C0000003C0000003C0000003
        C0000003E0000007E0000007F000000FF000000FF800001FFC00003FFE00007F
        FF0000FFFFC003FFFFF00FFFFFFFFFFFFFFFFFFF280000002000000040000000
        0100200000000000801000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000077002C006C0078006A00B3006900D9006800EC006800ED
        006600DD006600BB00650083006A003900000001000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        007F0048007600C4077100FE137600FF1E7800FF247800FF267800FF287600FF
        277300FF247000FF196C00FF0A6900FE006F00D40076005D0000000200000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000850014007900AC
        067700FE118300FF128B00FF0F8A00FF0E8900FF128500FF198100FF237900FF
        2F7100FF307100FF2F6F00FF2E6E00FF266E00FF0D6900FE006F00C500740024
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000084002C007400E0028900FF
        029B00FF009B00FF009800FF009900FF009700FF009700FF009400FF009500FF
        009100FF118500FF287500FF376B00FF336D00FF316E00FF216C00FF006700EF
        0072004500000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000880029007600EA029504FF029E06FF
        029C06FF029B05FF029B04FF019A01FF009900FF009800FF009700FF009600FF
        009500FF009300FF009300FF0B8800FF327000FF376C00FF336C00FF286C00FF
        016800F700740044000000000000000000000000000000000000000000000000
        00000000000000000000000000800010007A00DB05980BFF05A10CFF059E0CFF
        059E0CFF059E0CFF039C08FF0DAC23FF11B12DFF09A517FF009900FF009902FF
        009800FF009600FF009500FF009200FF009200FF237900FF3A6900FF346B00FF
        296C00FF006700EF007300240000000000000000000000000000000000000000
        0000000000000000000000000081009F0A930FFF0CA515FF09A312FF09A213FF
        09A213FF08A313FF1DBF49FF85DCA4FFAAE7C1FF5DD98AFF14B535FF009901FF
        029B05FF009901FF009700FF009500FF009200FF009200FF1E7B00FF3A6A00FF
        336C00FF1F6C00FF006E00C50000000200000000000000000000000000000000
        000000000000000000910037008403FD24B030FF0AA418FF0CA519FF0CA519FF
        0BA619FF12B737FFC2E5CBFFFFF6FEFFFFF8FDFFFFFDFFFF68DC92FF14B535FF
        029B03FF039C07FF019A03FF009800FF009600FF009400FF009300FF277800FF
        376C00FF326E00FF0B6A00FE0074005E00000000000000000000000000000000
        0000000000000000008500AF20A429FF1EAE2EFF0EA71FFF0FA81FFF0EA91FFF
        0BAF28FFBAE0C4FFFBF2F8FFF3F2F2FFF5F5F5FFFCFAFCFFFFFFFFFF67DB91FF
        15B637FF039C07FF049D09FF029B05FF009901FF009600FF009300FF009200FF
        366D00FF346D00FF276E00FF006D00D500000001000000000000000000000000
        0000000000820017008300FA43C053FF15AC28FF12AB25FF11AA25FF01A717FF
        B5DBBBFFF7EEF5FFEFEEEEFFF2F2F2FFF5F5F5FFF8F8F8FFFEFCFDFFFFFFFFFF
        66DA91FF15B637FF039C08FF049D0AFF029B05FF009901FF009600FF009500FF
        128500FF386D00FF317000FF096C00FE006E0039000000000000000000000000
        000000000082005C13981BFF4EC35FFF12AD29FF13AD2AFF009F06FFADD4AFFF
        F3EBF2FFEBEAEBFFEEEEEEFFF1F1F1FFF4F4F4FFF7F7F7FFFAFAFAFFFFFEFFFF
        FFFFFFFF66DA91FF16B738FF049D09FF049D0AFF029B05FF009901FF009500FF
        009500FF327000FF317000FF196F00FF00670085000000000000000000000000
        00000000007F009629AB37FF53C566FF11AE2BFF009900FFA8CFAAFFEFE7EFFF
        E7E6E7FFE9E9E9FFEFEEEFFFFBF3FAFFFFF8FFFFFCF9FCFFFAFAFAFFFDFDFDFF
        FFFFFFFFFFFFFFFF66DA91FF16B738FF049D08FF049D09FF029B04FF009800FF
        009600FF1A8100FF317100FF247200FF006900BD000000000000000000000000
        00000000007F00BA3BB94EFF5BC96FFF04A215FF6CB669FFF1E5F1FFE3E2E3FF
        E5E5E5FFEBE9EBFFFBF0F9FF6DC879FF41BC53FFC2E5C8FFFFFBFFFFFBFAFBFF
        FEFEFEFFFFFFFFFFFFFFFFFF66DA8FFF15B638FF039C08FF039C08FF019A03FF
        009800FF088E00FF337100FF297600FF006A00E1000000000000000000000000
        00000000008100C848C25EFF63CD79FF10AB27FF35A132FFF6E6F6FFE3E2E3FF
        E7E5E7FFFAECF9FF43B54AFF06AB1FFF14B231FF06AB21FFC5E6CAFFFFFCFFFF
        FDFCFDFFFEFEFEFFFFFFFFFFFFFFFFFF65D98EFF15B637FF029B06FF039C06FF
        009A01FF009800FF307400FF2B7700FF006C00F3000000000000000000000000
        00000000008100C74DC463FF67CF7FFF2CC04FFF009201FF6DB56AFFF7E8F7FF
        F9EAF8FF3BAD3DFF07A91BFF22BC45FF20B940FF1BB539FF07AB1FFFC5E6CAFF
        FFFCFFFFFBFAFBFFFDFCFCFFFFFEFFFFFFFFFFFF65DA8FFF14B536FF019A04FF
        019A04FF009A00FF277D00FF297900FF006C00F1000000000000000000000000
        00000000008300B648C05EFF6AD283FF40C560FF23BF4BFF019A0FFF12920EFF
        1C9A17FF06A719FF26C04FFF23BC49FF21BA44FF1FB842FF1BB539FF05AA1EFF
        C5E7C9FFFFFBFFFFFAF9FAFFFAFAFAFFFEFCFEFFFFFFFFFF63D88BFF13B435FF
        009901FF009C01FF218200FF267B00FF006D00DD000000000000000000000000
        000000000085008E39B64DFF6BD487FF5AD079FF25C14EFF2CC558FF26C14FFF
        24BE4CFF2AC456FF27C050FF26BF4DFF24BD4AFF22BB47FF21BA42FF1BB539FF
        06A91DFFC4E6C8FFFFFAFFFFF8F7F8FFF8F8F8FFFBF9FAFFFFFDFFFF63D78BFF
        13B432FF009A00FF1E8500FF1E7A00FF006E00B6000000000000000000000000
        000000000085005220A52DFF6CD88BFF77D993FF2BC658FF2CC559FF2CC55BFF
        2CC55BFF2DC65AFF2AC356FF29C253FF27C04FFF24BD4AFF22BB45FF1FB841FF
        1AB437FF05A91BFFC2E5C8FFFFF8FFFFF6F6F6FFF5F5F5FFF8F6F8FFFFF9FFFF
        5CD585FF07A71AFF1C8500FF147900FF006F007B000000000000000000000000
        00000000009E000E008D00F46DD98FFF76DA93FF57D17CFF2CC85EFF30C962FF
        30C960FF2FC860FF2DC65CFF2BC458FF29C253FF27C050FF24BD49FF21BA45FF
        1EB83FFF19B336FF04A81BFFC1E3C6FFFDF5FBFFF4F3F3FFF3F3F3FFFCF4FAFF
        AAE3BBFF0DB12AFF1E8700FF077500FE007A002D000000000000000000000000
        00000000000000000090009E43BD59FF76DC98FF7FDF9EFF36CE6AFF32CB65FF
        32CB66FF33CC65FF30C962FF2EC75EFF2BC458FF28C152FF25BE4CFF22BB47FF
        1FB842FF1CB53AFF17B131FF04A719FFC0E1C3FFFDF3FBFFF7F1F6FFFFF2FFFF
        45C868FF07A311FF1A8300FF007B00C500000000000000000000000000000000
        000000000000000000A30026049206F974E09AFF7ADE9BFF72DD97FF2FCB62FF
        33CC66FF33CD66FF33CC66FF31CA62FF2DC65BFF2AC355FF27C04FFF24BD49FF
        20B943FF1DB63CFF1AB336FF14AF2DFF05A719FF9CD4A4FFB3DDBCFF3DC059FF
        0CAC22FF0C9806FF077B01FE0087004800000000000000000000000000000000
        000000000000000000000000009500862EAF3FFF7AE1A0FF7DDF9EFF6AD98EFF
        2DCB62FF33CC66FF33CC67FF31CA64FF2EC75DFF2BC457FF28C151FF24BD4AFF
        21BA44FF1EB73EFF1BB437FF17B031FF13AD28FF07A71BFF07A91CFF0AA719FF
        06A10FFF0D8906FF007E00AE0000000000000000000000000000000000000000
        00000000000000000000000000910006008B00C64BC263FF79E09EFF7EDF9DFF
        6EDB91FF33CD66FF31CC65FF32CC64FF2FC85EFF2BC458FF28C153FF25BE4BFF
        21BA45FF1EB73EFF1BB438FF18B131FF14AD2BFF11AA24FF0EA71DFF0BA617FF
        079A0EFF007800E0008400140000000000000000000000000000000000000000
        0000000000000000000000000000000000A60017008A00D74BC264FF78E19FFF
        79DE9AFF7ADD9BFF4DD27AFF2ECB62FF2DC85DFF2BC458FF28C151FF25BE4BFF
        21BA46FF1EB73EFF1BB439FF18B131FF14AD2BFF11AA24FF0FAA20FF099D14FF
        007D00EA008B002C000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000A60017008B00C632B141FF
        76E19CFF76DE9AFF79DE9BFF71DA94FF4DCF75FF32C75DFF24C14EFF21BD47FF
        1FBA42FF1DB73BFF18B336FF16B02FFF15AD2BFF1BB12EFF099712FF007C00DB
        0093002A00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000092000600960085
        08960AF949C263FF73DF9BFF6FDC95FF6ED88FFF6CD68AFF60D27FFF50CB6DFF
        43C560FF3CC258FF3AC054FF3BC050FF22A931FF048905FD008700A000940010
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00A800250095009E039203F429AB38FF42BE5AFF51C86EFF55CD74FF52CA6DFF
        45C15DFF32B244FF199E24FF018803FA008B00AF009900360000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000009D000E008B00510089008E008700B5008500C7008500C8
        008300BA008300960085005D0090001700000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFF00FFFFFC001FFFF0000FFFE00007FFC00003FF800001FF000000F
        F0000007E0000007E0000007C0000003C0000003C0000003C0000003C0000003
        C0000003C0000003C0000003E0000007E0000007F000000FF000000FF800001F
        FC00003FFE00007FFF0000FFFFC003FFFFF00FFFFFFFFFFFFFFFFFFF28000000
        30000000600000000100080000000000800A0000000000000000000000000000
        0000000000000000FFFFFF0039CD6A00028C0100A8CFAA00749D74003D823D00
        68DC92003A6A000012B73700DFE1DF001D771D005E915E00C3E6C8004DB04D00
        01A717005BC66D000F6E000085D89D0027C04F00208000001C9A1700F7E7F700
        A6E4BA006DB66A0029AF3B0048C15D002C772C00478847002190210011AA2400
        206F00001076100065D08000039B06004ED27A0057A2570076E19C003BBC5400
        3CA33C0021B841002FC75E0030A030001BA52900128C030005760100118F0F00
        F6F6F600167800002E73000095D4A0001BB12E005DD98A00EEF0EE006B9A6B00
        BDD3BD000C9A16000E6C0E00FFF2FF002F8D2F001D8E1D0057C3670031B54500
        19701900469946001B841B005BCE780039963900548854008AC88F0042CD6D00
        07AB20002882280006900B0085C38700277900006CD68B0019A1220035B94900
        009400003C7E3C00B5ECC8000DA51A001DBF4900129C1C0011B12D001CB43800
        54CB700023AA3400019A0F00157A150045BE56007EDF9E0044C36000408B4000
        E8EAE800ADD4AF00016701002BC45700187000000999090032CB64001D7C0000
        F7EEF5004E994E0012830000198100000A880A00069F0D000BAF28002B6E0000
        089000000282020054CC74006FDB9300326D000060D28000FBFBFB0060CD7800
        10A61F0024B237002E942E0041C0590024BC4900B1EAC300F1E5F10027782700
        70A070002CB23B000D820D00F0F3F1000099010007910E004DC565000B6E0B00
        FBF3F9005CD585000A89000066D689002472000009A21300C8D5C80004700000
        079A0E002DBC4B00FFF8FE0006A91B0015AE2B0077DC980004A215006ED98F00
        14B33200F3EBF2001B8702001A731A0066D3840047CF720079E19F0004870600
        39C55D00FAEBF9002E6E0000048F0500289028007BDE9C002A770000257C0000
        099712000DAC230017B02F0035C35A00086B000036913600E4E8E50022BB4500
        137013001775170066DA8F00039305002ECB6200366C000029C1520049C46300
        40BC520057D480001AB23500009F060031710000049D0A000CA3150025872500
        1FAB2E001FB73F0050BD5D00047C020005970B0015B638001FA62E0034CB6500
        31C961003BC05000177E1700FDFDFD00CBE4D10074E09B0073DC96006FD28700
        2DC65B003BB94E002A7100002874000012AD2A00F8F8F800F4F4F400EFE7EF00
        019A03000DB12A0032843200358935002785270014B5350051C96E0026BE4C00
        4098400043C15F00FBF0F900F7F1F600127400000F8A00002D72000023790000
        07A00F0069D98E0006AA1E0015AC28001EB63C0023BC470033B43F00FDF4FB00
        EBECEB00C2E5CB00C3DFC700B3DDBC000C6C0000196C00000B6B0B0001900000
        019700000C930C0072DA93006EDA920005A719000BA3170007A71A0016AE2E00
        18B1330000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000C067E3FAFAF3F7E06
        0C00000000000000000000000000000000000000000000000000000000000000
        000000001C398E8EE3E3E3E36363E311AB61391C000000000000000000000000
        0000000000000000000000000000000000007E8E2D30666666E6E6E6D28B8B8B
        8B8B63AB611B0000000000000000000000000000000000000000000000000000
        068EC2696A6A6A6A6A66E6D2D2D2D2D1D16E6E6E1FF361500000000000000000
        00000000000000000000000000000020C2896FF64F4F4F4FF6F6F6F68969E6E5
        A1A1A1A16E6E1FAB3900000000000000000000000000000000000000000C2D03
        F7F7F7F7F7F7F7F74F4F4F4FF6F6F60369D2737373A1A16E11610C0000000000
        0000000000000000000000000C2DF6D7D7D7D7D7838383F7F7F7F74F4F4FF6F6
        F6F669E5737373A16E63610C0000000000000000000000000000000CC2B22222
        22222222222222D7D78383F7F7F74F4FF6F6F60366B4737373A163610C000000
        0000000000000000000000C2C3BCBCBCBCBCBCBCBCBC8C52BD22D7D783F7F7F7
        4F4FF6F6F68973B47373A16361000000000000000000000000008149BDE7E7E7
        E7E7E7E7527BC7460262772222D783F7F74F4FF6F6F603A1B47373A111390000
        000000000000000000DA9E4D8C8C8C8C8C8C8C77B512ADD58217C61EBC2222D7
        83F7F74F4FF6F603A1B473A16EAB5000000000000000000000C277EAFCFCFCFC
        FCFC1E7B3235822FD4D47CC61EBCBC22D783F7F74F4FF6F68973B473A11F6100
        0000000000000000BE84807752525252521EC0323535822FD4D4757CC61EBCBC
        2222D783F74F4FF6F669B473A16EAB7E000000000000000070BFED7777777777
        1EB932EF353582D5D4D475CA7CC6EA6CBCBC22D783F74F4FF6F6E6B473A18B61
        000000000000005E843E801E1E1E1E1E93325FEF353582D52FD475CA017CC6EA
        E7BCBC22D783F74F4FF66F7373A16E8E5E000000000000812BB7801E1EEA1E1E
        32AD5FEF353582D52FD4757501017CC693E76CBC22D783F74F4FF66A73A1A163
        39000000000000703E5B1993931E5245ADAD5FEF353582822FD4D475CA010151
        C693E76CBC22D783F74F4F6F73A1A18B6100000000000C84B71AEBA91EE7450A
        0AAD5FEFEF3582822FD4D4757501010151C693E76CBC22D783F74FF6E6BBA1D2
        8E0C00000000AC541A8528EA224A0A0A0AAD5FEFEF353582D52FD47575CA0101
        0151C693E76CBC22D7F7F74F69BBE5D28E06000000003CC5C13D3EFC0E0A0A0A
        0AADAD5FEFEF32CE3282D4D47575010101017C6593E7BCBC2283F74FF63131D2
        E37E0000000081193D109052240A0A0A0A0AAD5F5F10EAA9A91082D4D4757501
        0101017CC693E7BC22D783F74FA631D2E3AF000000006B3E3D1026FEF88D0A0A
        0A0AAD0A3D7756EB56A91082D4D47575CA0101017CC6936CBC22D7F74F6AA5D2
        3086000000006B3E10765D2838270A0A0A0A0AC1FCEBC0C0EB56A91082D4D475
        75CA0101017C65EABC22D783F72CA54B3039000000002E3E107671AE288F2A37
        0A0A0EE7C0AEAE28C0C056A91082D4D475757575CA017CC7EABC22D7F76FA5E6
        30AF000000003C19427621DEDE7B77B22A4D8FAEDE7B7BAE2828C056A91082D4
        D4D475757575757CC7EA22D7836F4BE6E37E0000000043C54221CE9F1313B5AE
        B956131313DEDE7BECAE28C056FE3D822FD4D4D4D4D4D4D47CC71E22836FA6E6
        2D060000000024544221CE71B5B56262626262B5B5B513DE7BECAE28C0569310
        352F2F2FD4D4D4D4D47CC71ED76FA6142D0C0000000000A2719BCE4CCF6262CF
        CFCF62626262B513DE7BECAE28EB56931035D5D52F2F2F2F2F2F17CFBC6F146A
        8E0000000000006B269B4CF99CCF2929292929CFCF6262B513DE7BAE28C0EB56
        9310358282828282828282711E6F146920000000000000404D9B4CF9F9C7C7C7
        C7C7C7C729CF6262B513DE7BAE28C056B9EA3DEF35828282828235711E2C99C2
        1C0000000000000003714CF994B8656565656565C729CF6262B513DEEC28C0EB
        56FFEA3D5F3535353535CBB58C2C692D000000000000000079584CF994A446C6
        C6C6C66565C729CF62B513DE7BAE28EB56B9A91E3D5F3535350A5DFEBC99C2D9
        000000000000000000A271FA94A4F902C6C6C6C66565C7296262B5137BAE28C0
        56B9FFFE1EC1F1CB3290A9E7642C2D00000000000000000000DF4DE8F994A4E8
        C6C6C6C6C6656529CF62B513DEEC28C0EBB9FFA9931EEA9393778C6C2EC21C00
        000000000000000000002E3EFACD94A4E802C6C6C6C665C7CF62B513DEEC28C0
        EB56FFA9931E1E7752FC8C8F9EC900000000000000000000000000A2E072CD94
        A4FA02C6C6C665C7CF62B513DE7BAEC0EB56FFA9931E1E7752FC8C49C2000000
        00000000000000000000007FA2B6FAF994949423C6C665C7CF62B513DE7BAEC0
        EB56FFA9931E1E7752FCC3C27F0000000000000000000000000000007FA2E0FA
        F9CD9494E89C65C7CF62B513DEEC28C0EB56FFA9931E1E77528FC23600000000
        000000000000000000000000007FA23EE8FAF9F9CD948A9C2962B513DEEC28C0
        EBB9FFA9931EEA7749C20500000000000000000000000000000000000000003C
        54DDE8FAFAFA96964C4246AA90AE28C056B9B9567878779E4100000000000000
        0000000000000000000000000000000068035871E8E88A8A9B7474424257851A
        7A7AB74EBF847068000000000000000000000000000000000000000000000000
        000043A24D2642747442427157DD85B67A3E2B49705E00000000000000000000
        0000000000000000000000000000000000000000243C0338C5193E3E3E19C554
        49703C0C00000000000000000000000000000000000000000000000000000000
        000000000000007F6843A31D1DA3AC687F000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFE007FFFF0000FFFF0000
        FFFF0000FFFC00003FFF0000FFF000000FFF0000FFE0000007FF0000FF800000
        01FF0000FF00000000FF0000FE000000007F0000FE000000007F0000FC000000
        003F0000F8000000001F0000F8000000001F0000F0000000000F0000F0000000
        000F0000E000000000070000E000000000070000E000000000070000C0000000
        00030000C000000000030000C000000000030000C000000000030000C0000000
        00030000C000000000030000C000000000030000C000000000030000C0000000
        00030000C000000000030000E000000000070000E000000000070000E0000000
        00070000F0000000000F0000F0000000000F0000F8000000001F0000F8000000
        001F0000FC000000003F0000FE000000007F0000FE000000007F0000FF000000
        00FF0000FF80000001FF0000FFE0000007FF0000FFF000000FFF0000FFFC0000
        3FFF0000FFFF0000FFFF0000FFFFE007FFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF000028000000300000006000000001002000000000008025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000006600050069003A006B0072006A00A3
        006A00C5006800DB006800E4006800E4006600DA006600C5006600A200640072
        00620039003F0004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001006E0035006E0099006C00EA016E00FE077100FF0D7300FF
        127400FF157500FF167500FF177300FF167200FF137000FF0E6E00FF076B00FF
        006700FE006500E9006500970064003300000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        006D0041006F00C2006F00FD087600FF127B00FF1A7D00FF1D7C00FF1F7A00FF
        217900FF227700FF247600FF257500FF267300FF267200FF267100FF267100FF
        237000FF186F00FF0A6B00FF006600FD006500BF0062003E0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000740018007100AB
        007200FD087C00FF158200FF188200FF178300FF178200FF188200FF198000FF
        1D7D00FF227900FF277600FF297400FF2A7300FF2A7200FF2A7100FF2A7000FF
        2A6F00FF2A6F00FF296E00FF206F00FF0C6C00FF006600FD006600A5005C0016
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000071004A007200E9037B00FF
        0A8B00FF098F00FF049200FF009400FF009400FF009400FF009300FF009200FF
        009200FF009100FF028E00FF0A8900FF158200FF227900FF2E7100FF2F6F00FF
        2F6F00FF2E6E00FF2D6E00FF2C6D00FF2B6D00FF1F6F00FF066A00FF006500E7
        0063004500000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000730073007500FC018800FF029600FF
        009800FF009800FF009800FF009700FF009700FF009600FF009600FF009500FF
        009400FF009400FF009300FF009200FF009100FF009000FF038C00FF158100FF
        2A7300FF326D00FF316D00FF306C00FF2F6C00FF2D6C00FF296D00FF116D00FF
        006600FB0066006E000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000750080007800FE019102FF019A03FF019A03FF
        019A03FF019A03FF019A02FF009902FF009901FF009901FF009800FF009800FF
        009700FF009600FF009500FF009400FF009300FF009200FF009100FF009000FF
        008E00FF118300FF2C7200FF346C00FF336C00FF316C00FF2F6C00FF2C6C00FF
        176E00FF006700FE0065007B0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000760076007A00FE029506FF039C07FF039C07FF039C07FF
        039C07FF039C07FF039C07FF039C06FF029B05FF029B05FF019A04FF019A03FF
        009902FF009900FF009800FF009700FF009600FF009500FF009300FF009200FF
        009100FF008F00FF018D00FF1A7D00FF356C00FF346B00FF326B00FF306B00FF
        2D6C00FF1A6E00FF006700FE0065006C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000078004E007A00FC049609FF059E0BFF059E0BFF059E0BFF059E0BFF
        059E0BFF059E0BFF059E0BFF059E0AFF049D0AFF08A111FF0DA61AFF0AA315FF
        039C06FF029B04FF019A03FF009901FF009800FF009700FF009600FF009400FF
        009300FF009200FF009000FF008E00FF0B8600FF316E00FF366B00FF336B00FF
        306B00FF2D6C00FF186E00FF006600FB00660046000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0076001C007A00EC049109FF0DA215FF07A00FFF07A00FFF07A00FFF07A00FFF
        07A00FFF07A00FFF07A00FFF0DA61CFF24BD49FF31C961FF40CE6FFF38CD69FF
        2BC457FF0FA81FFF039C07FF029B05FF019A03FF009901FF009800FF009700FF
        009500FF009400FF009200FF009100FF008F00FF068A00FF2E7000FF366B00FF
        336B00FF306B00FF2D6C00FF0F6E00FF006600E8005F00180000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        007A00B1028706FF19A721FF0AA214FF09A213FF09A213FF09A214FF09A214FF
        09A214FF09A213FF10A921FF29C050FF85D89DFFDEEEE3FFF4F4F4FFF0F5F1FF
        A1E5B8FF34CA64FF11AA23FF049D09FF039C07FF029B05FF019A03FF009901FF
        009800FF009600FF009500FF009300FF009100FF008F00FF048B00FF2F7000FF
        366B00FF336B00FF2F6C00FF2A6D00FF066B00FF006500A80000000000000000
        00000000000000000000000000000000000000000000000000000000007B0048
        007E01FE14A31EFF1CAA27FF0AA317FF0BA417FF0BA418FF0BA418FF0BA418FF
        0BA418FF10A922FF24BC47FF9ADAAAFFF0F0F0FFF2F2F2FFF5F5F5FFF7F7F7FF
        F9F9F9FFB0E9C3FF34CB64FF12AB25FF059E0BFF049D09FF039C06FF029B04FF
        009902FF009800FF009700FF009500FF009300FF009100FF009000FF078900FF
        336E00FF356B00FF326C00FF2E6C00FF1F6F00FF006600FD0063004000000000
        00000000000000000000000000000000000000000000000000000001007D00C9
        07920EFF2FB13AFF11A71EFF0DA61BFF0DA61BFF0DA61CFF0DA61CFF0DA61CFF
        11AA23FF1FB73EFF97D7A5FFEEEEEEFFF0F0F0FFF2F2F2FFF5F5F5FFF7F7F7FF
        F9F9F9FFFBFBFBFFB2EBC5FF34CB64FF13AC26FF059E0CFF049D0AFF039C08FF
        029B05FF019A03FF009900FF009700FF009500FF009300FF009200FF009000FF
        0F8400FF376C00FF346C00FF306D00FF2C6D00FF0C6E00FF006600C300000001
        000000000000000000000000000000000000000000000000007D003F008001FE
        20AB2CFF33B43FFF0EA71EFF0FA81FFF0FA81FFF0FA820FF0FA820FF11AA23FF
        1AB234FF94D4A0FFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF7F7F7FF
        F9F9F9FFFBFBFBFFFDFDFDFFB3ECC6FF34CB64FF13AC28FF069F0DFF059E0BFF
        049D09FF039C06FF019A04FF009901FF009700FF009500FF009300FF009100FF
        008F00FF227900FF356C00FF326D00FF2D6E00FF217000FF006700FE00630036
        000000000000000000000000000000000000000000000000008000A307900EFF
        36B644FF2DB33CFF10A922FF11AA23FF11AA23FF11AA24FF11AA24FF15AD2BFF
        92D19BFFE9EAE9FFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6F6FF
        F8F8F8FFFAFAFAFFFDFDFDFFFEFEFEFFB4ECC6FF34CB65FF14AD29FF07A00EFF
        059E0CFF049D09FF039C07FF019A04FF009901FF009700FF009500FF009300FF
        009100FF048D00FF336F00FF336D00FF2F6E00FF2B6F00FF086E00FF0066009C
        000000000000000000000000000000000000000000710009008000F01CA529FF
        40BB4FFF29B33BFF12AB26FF12AB27FF13AC28FF11AA24FF11A922FF8ECD96FF
        E7E7E7FFE9E9E9FFEBEBEBFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6F6FF
        F8F8F8FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFB4ECC7FF35CB65FF14AD2AFF
        07A00FFF069F0DFF049D0AFF039C07FF019A04FF009901FF009700FF009500FF
        009300FF009100FF1B7F00FF346E00FF306E00FF2C6F00FF187100FF006700EC
        004800070000000000000000000000000000000000810045018503FF31B642FF
        45BE56FF26B33AFF14AD2AFF14AD2BFF11AA24FF0DA418FF8BCA91FFE5E5E5FF
        E7E7E7FFE9E9E9FFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FF
        F7F7F7FFF9F9F9FFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFB5ECC7FF35CB65FF
        14AD2AFF07A010FF069F0DFF049D0AFF039C07FF019A04FF009901FF009700FF
        009500FF009300FF048E00FF336F00FF316F00FF2C7000FF237300FF006A00FF
        0065003F000000000000000000000000000000000081008007900EFF41BC52FF
        4AC05CFF25B43BFF16AF2EFF11AA24FF089F0FFF88C68CFFE2E2E2FFE4E4E4FF
        E6E6E6FFE8E8E8FFEAEAEAFFECECECFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FF
        F7F7F7FFF9F9F9FFFBFBFBFFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFB5ECC8FF
        34CB65FF15AE2AFF07A010FF069F0DFF049D0AFF039C07FF019A03FF009900FF
        009700FF009400FF009200FF227B00FF317000FF2D7100FF297200FF056E00FF
        0068007800000000000000000000000000000000008300B1139C1EFF48C05BFF
        4FC362FF27B63FFF14AC29FF039A05FF85C387FFE0E0E0FFE2E2E2FFE4E4E4FF
        E6E6E6FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FF
        F6F6F6FFF8F8F8FFFAFAFAFFFBFBFBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFF
        B6ECC8FF34CB65FF15AE2BFF07A010FF069F0CFF049D09FF029B06FF019A03FF
        009800FF009600FF009400FF108700FF317100FF2D7200FF297300FF0D7100FF
        006800A600000000000000000000000000000000008400D420A72FFF4DC360FF
        53C567FF2BB844FF0CA219FF49AD49FFDDDDDDFFDFDFDFFFE1E1E1FFE3E3E3FF
        E5E5E5FFE7E7E7FFE9E9E9FFEBEBEBFFEAECEAFFA1D7A8FF79CD86FF92D69DFF
        EFF3F0FFF7F7F7FFF8F8F8FFFAFAFAFFFCFCFCFFFEFEFEFFFEFEFEFFFFFFFFFF
        FEFEFEFFB0EBC4FF33CB64FF15AE2BFF07A00FFF059E0CFF049D08FF029B05FF
        009902FF009700FF009500FF029100FF307300FF2D7300FF297400FF137300FF
        006900CB00000000000000000000000000000000008400E82AAE3BFF50C565FF
        57C76CFF30BB4BFF0DA11BFF51AD51FFDDDDDDFFDFDFDFFFE0E0E0FFE2E2E2FF
        E4E4E4FFE6E6E6FFE8E8E8FFE6E9E7FF5EC069FF13AC27FF17B030FF17B030FF
        5DC66FFFEFF4F0FFF7F7F7FFF9F9F9FFFBFBFBFFFCFCFCFFFEFEFEFFFEFEFEFF
        FFFFFFFFFEFEFEFFB0EAC3FF34CA64FF15AE2AFF069F0EFF059E0BFF039C07FF
        019A04FF009900FF009600FF009400FF257B00FF2C7400FF287500FF167500FF
        006A00E300000000000000000000000000000000008500F130B343FF54C76AFF
        5BCA71FF3ABF55FF16AD2EFF0C930CFFC8D5C8FFDEDEDEFFE0E0E0FFE2E2E2FF
        E4E4E4FFE5E5E5FFE3E6E3FF5ABC61FF0FA820FF1CB539FF1CB53BFF1BB438FF
        17B030FF5CC66EFFF0F4F0FFF8F8F8FFF9F9F9FFFBFBFBFFFCFCFCFFFDFDFDFF
        FEFEFEFFFFFFFFFFFEFEFEFFB1EAC3FF34CA64FF14AD2AFF069F0DFF049D0AFF
        029B06FF019A02FF009800FF009500FF1A8200FF2C7500FF277600FF187600FF
        006B00EE00000000000000000000000000000000008600F132B546FF57C96EFF
        5ECB75FF46C461FF20B941FF0A9B15FF3CA33CFFD5DAD5FFDFDFDFFFE1E1E1FF
        E3E3E3FFE0E3E0FF55B759FF0BA418FF1EB73DFF1FB840FF1EB73EFF1DB63CFF
        1CB539FF17B02FFF5CC56DFFF0F4F1FFF8F8F8FFF9F9F9FFFAFAFAFFFCFCFCFF
        FDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFB1EAC3FF33CA63FF14AD29FF059E0CFF
        039C08FF029B04FF009901FF009700FF128800FF2A7700FF267800FF187700FF
        006B00ED00000000000000000000000000000000008700E630B344FF59CA71FF
        60CD78FF56CA70FF22BB46FF20B842FF07960EFF31A031FFBDD3BDFFE0E0E0FF
        DDE0DDFF50B351FF07A00FFF1FB840FF22BB46FF21BA44FF20B942FF1FB840FF
        1EB73EFF1CB53AFF16AF2EFF5BC56CFFF0F4F1FFF7F7F7FFF9F9F9FFFAFAFAFF
        FBFBFBFFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFFB1EAC3FF32C962FF13AC28FF
        049D0AFF039C06FF019A02FF009800FF0C8D00FF297800FF257900FF157800FF
        006C00E200000000000000000000000000000000008700D12AAE3CFF5BCC75FF
        62CF7CFF66D080FF26BE4BFF25BE4BFF24BC48FF0FA01EFF039004FF2EA02EFF
        1F9E1FFF069D0DFF21BA44FF25BE4BFF24BD49FF23BC48FF22BB46FF21BA43FF
        20B941FF1EB73EFF1CB53AFF16AF2EFF5AC46AFFEFF4F0FFF7F7F7FFF8F8F8FF
        F9F9F9FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFCFCFCFFB0E9C2FF32C962FF
        13AC27FF039C08FF029B04FF009900FF099000FF287A00FF247B00FF117800FF
        006E00C700000000000000000000000000000000008800AC1EA62EFF5DCD77FF
        64D07EFF6BD385FF39C55DFF27C04FFF27C050FF28C151FF23BB47FF1AAF35FF
        1CB238FF26BF4EFF27C050FF27C04FFF26BF4DFF25BE4BFF24BD49FF23BC47FF
        21BA44FF20B941FF1EB73EFF1CB53AFF16AF2DFF59C469FFEEF3EFFFF6F6F6FF
        F7F7F7FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFAFE7C0FF
        32C961FF12AB25FF029B06FF009902FF079200FF267C00FF227C00FF0C7700FF
        006E00A2000000000000000000000000000000000089007A0F9A19FF5DCE79FF
        65D181FF6CD487FF53CD74FF29C253FF29C254FF2AC355FF2AC356FF2AC356FF
        2AC356FF2AC355FF29C254FF29C253FF28C151FF27C04FFF26BF4DFF24BD4AFF
        23BC47FF21BA44FF20B941FF1EB73EFF1CB53AFF15AE2CFF5EC56DFFEFF2EFFF
        F5F5F5FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
        AEE5BFFF32C860FF11AA23FF019A03FF079300FF247E00FF207E00FF067500FF
        006E0073000000000000000000000000000000000087003E038E06FF54CB72FF
        66D282FF6CD589FF6ED68BFF2EC559FF2BC458FF2CC559FF2CC55AFF2CC55AFF
        2CC55AFF2CC559FF2BC458FF2BC456FF2AC355FF29C252FF27C050FF26BF4DFF
        24BD4AFF23BC47FF21BA44FF1FB841FF1EB73DFF1BB438FF15AE2BFF5DC46CFF
        EEF1EEFFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
        F5F5F5FFAAE3BCFF2DC65AFF059E0CFF099301FF228000FF1C8100FF007200FF
        006D003800000000000000000000000000000000007F0006008A00EB3BBB53FF
        66D384FF6DD68AFF73D891FF4CCE73FF2DC65CFF2EC75DFF2EC75EFF2EC75EFF
        2EC75EFF2EC75DFF2DC65CFF2CC55AFF2BC458FF2AC356FF29C253FF27C050FF
        26BF4DFF24BD4AFF22BB46FF21BA43FF1FB83FFF1DB63CFF1BB437FF14AD2AFF
        5CC36AFFECF0EDFFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
        F3F3F3FFF2F2F2FF52CE77FF12AB26FF0C9202FF1F8200FF127F00FF007100E6
        007F00040000000000000000000000000000000000000000008C009919A227FF
        65D485FF6CD68BFF73D992FF71D991FF32C962FF30C961FF31CA62FF31CA62FF
        31CA62FF30C961FF2FC860FF2EC75EFF2DC65BFF2CC559FF2AC356FF29C253FF
        27C04FFF25BE4CFF24BD49FF22BB45FF20B941FF1EB73EFF1CB53AFF1AB335FF
        14AD29FF5AC269FFEAEEEBFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF
        F1F1F1FFF0F0F0FF55CD77FF12AB25FF109003FF1D8400FF077A00FF00710092
        00000000000000000000000000000000000000000000000000890034018E03FD
        53CB73FF6CD78CFF72D992FF79DC98FF57D480FF32CB65FF32CB65FF32CB65FF
        32CB65FF32CB65FF31CA63FF30C961FF2FC85FFF2DC65CFF2CC559FF2AC355FF
        28C152FF26BF4EFF25BE4BFF23BC47FF21BA43FF1FB83FFF1DB63BFF1BB438FF
        18B133FF13AC28FF59C167FFE8EDE9FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF
        EFEFEFFFC9E5D0FF29C050FF08A111FF148D03FF158600FF007400FC006E002C
        00000000000000000000000000000000000000000000000000000000008C00BB
        23AB35FF6AD78CFF71DA93FF77DC98FF7ADD9BFF41CF70FF33CC66FF33CC66FF
        33CC66FF33CC66FF32CB65FF32CB64FF30C962FF2FC85EFF2DC65BFF2BC458FF
        29C254FF27C050FF25BE4CFF23BC49FF21BA45FF20B941FF1DB63DFF1BB439FF
        19B235FF17B030FF12AB26FF58C066FFE6EBE7FFEDEDEDFFEDEDEDFFEDEDEDFF
        D6E7DAFF42C25FFF16AF2DFF049C08FF198A03FF087F00FF007400B500000000
        00000000000000000000000000000000000000000000000000000000008A003B
        028F03FC52CB73FF6FDA92FF75DC97FF7ADD9BFF71DB94FF37CD69FF33CC66FF
        33CC66FF33CC66FF33CC66FF32CB65FF32CB64FF30C961FF2EC75DFF2CC559FF
        2AC356FF28C152FF26BF4EFF24BD4AFF22BB46FF20B942FF1EB73EFF1CB53AFF
        1AB336FF18B132FF16AF2DFF12AB25FF4FBD5DFFC3DFC7FFCDE3D1FF90D29CFF
        2EBA49FF16AF2EFF069F0EFF099909FF138904FF007600FB0073003300000000
        0000000000000000000000000000000000000000000000000000000000000000
        008C00A1149F20FF69D98EFF72DB95FF76DC98FF7BDE9CFF6BDA90FF35CC67FF
        33CC66FF33CC66FF33CC66FF33CC66FF32CB65FF31CA63FF2FC85FFF2DC65BFF
        2BC457FF29C253FF27C04FFF25BE4BFF23BC47FF21BA43FF1EB73FFF1CB53BFF
        1AB336FF18B132FF16AF2EFF14AD2AFF11AA24FF13AB27FF15AE2BFF15AE2BFF
        0FA820FF08A112FF069F0DFF109409FF037E01FF007700980000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        008D0012008E00E230B446FF6EDA92FF72DC95FF77DD99FF7BDE9CFF69D98FFF
        36CC68FF33CC66FF33CC66FF33CC66FF33CC66FF31CA64FF2FC860FF2DC65CFF
        2BC458FF29C254FF27C050FF25BE4BFF23BC47FF21BA43FF1FB83FFF1DB63BFF
        1BB437FF18B133FF16AF2FFF14AD2BFF12AB27FF10A923FF0EA71EFF0CA51AFF
        0AA316FF08A112FF099D0EFF088705FF007800DD0077000F0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000008E003D008E01F943C160FF6FDB93FF73DC96FF76DC98FF7ADD9BFF
        6DDA92FF3DCE6DFF33CC66FF33CC66FF33CC66FF32CB64FF30C960FF2EC75CFF
        2BC458FF29C254FF27C050FF25BE4CFF23BC48FF21BA44FF1FB83FFF1DB63BFF
        1BB437FF19B233FF17B02FFF14AD2BFF12AB27FF10A923FF0EA71EFF0CA51AFF
        0AA316FF09A112FF079109FF007A00F600760036000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000008E005F029105FC49C465FF6EDA92FF72DB95FF75DC97FF
        78DD9AFF76DC98FF4ED27AFF33CC66FF33CC66FF32CB64FF30C960FF2EC75CFF
        2BC458FF29C254FF27C050FF25BE4CFF23BC48FF21BA44FF1FB83FFF1DB63BFF
        1BB437FF19B233FF17B02FFF14AD2BFF12AB27FF10A923FF0EA71EFF0CA51AFF
        0AA316FF06970DFF007C00FC0079005600000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000008E0068029004FC42C05DFF6DDA91FF70DB94FF
        73DC96FF76DC98FF78DD99FF69D98EFF43D072FF32CB64FF2FC860FF2DC65CFF
        2BC458FF29C254FF27C050FF25BE4CFF23BC47FF21BA43FF1FB83FFF1DB63BFF
        1BB437FF18B133FF16AF2FFF14AD2BFF12AB27FF10A922FF0EA71EFF0DA51AFF
        07970FFF007D00FB007B00630000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000008D005A008F01F72FB243FF68D88DFF
        6EDA92FF70DB94FF72DB95FF74DC96FF75DC97FF65D78AFF47CE71FF30C75EFF
        2BC457FF29C253FF27C04FFF25BE4BFF23BC47FF21BA43FF1EB73FFF1CB53BFF
        1AB337FF18B132FF16AF2EFF14AD2AFF12AB26FF15AB26FF11A820FF06910CFF
        007D00F5007C0056000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008B0035008E00DA139E1CFF
        51CA71FF6BDA90FF6DDA91FF6EDA92FF6FDA92FF6ED990FF6DD88EFF6AD68AFF
        57D079FF45C969FF35C35AFF29BF4EFF23BB47FF20B942FF1EB73EFF1CB53AFF
        1AB336FF1AB234FF1DB235FF24B238FF24B136FF12A320FF038806FF007E00D7
        007C003100000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000089000D008F0090
        018E01FA23A932FF54CD75FF68D88DFF68D88CFF67D78AFF66D588FF65D485FF
        63D382FF61D17FFF5ECF7BFF5ACD76FF54CA6FFF4BC666FF46C360FF42C15AFF
        41C057FF3FBE54FF35B949FF1EAB2FFF07910EFF008100F90080008B0073000B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0091002A008D00A8018F02F919A124FF3BBB54FF57CE78FF5FD381FF5ED27FFF
        5CD07CFF5ACF78FF57CD74FF54CB70FF50C86BFF4CC666FF48C461FF41C059FF
        31B747FF1AA429FF06900DFF008300F8008100A5007F00280000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000008F0020008E007F008D00D3018E02FE0E9916FF1FA52DFF
        2AAE3CFF31B345FF32B548FF30B345FF29AE3CFF20A62FFF139C1DFF068F0BFF
        008601FE008500D20084007D007F001E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008E0022008C0059008B008B
        008B00AF008900C4008A00CE008900CE008800C4008800AF0087008B00860059
        007F002200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFE007
        FFFF0000FFFF0000FFFF0000FFFC00003FFF0000FFF000000FFF0000FFE00000
        07FF0000FF80000001FF0000FF00000000FF0000FE000000007F0000FE000000
        007F0000FC000000003F0000F8000000001F0000F8000000001F0000F0000000
        000F0000F0000000000F0000E000000000070000E000000000070000E0000000
        00070000C000000000030000C000000000030000C000000000030000C0000000
        00030000C000000000030000C000000000030000C000000000030000C0000000
        00030000C000000000030000C000000000030000E000000000070000E0000000
        00070000E000000000070000F0000000000F0000F0000000000F0000F8000000
        001F0000F8000000001F0000FC000000003F0000FE000000007F0000FE000000
        007F0000FF00000000FF0000FF80000001FF0000FFE0000007FF0000FFF00000
        0FFF0000FFFC00003FFF0000FFFF0000FFFF0000FFFFE007FFFF0000FFFFFFFF
        FFFF0000FFFFFFFFFFFF0000}
      Proportional = True
      Visible = False
    end
    object img_NotVerified: TImage
      Left = 91
      Top = 18
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        055449636F6E0000010008001010000001000800680500008600000010100000
        0100200068040000EE0500001818000001000800C8060000560A000018180000
        01002000880900001E1100002020000001000800A8080000A61A000020200000
        01002000A81000004E2300003030000001000800A80E0000F633000030300000
        01002000A82500009E4200002800000010000000200000000100080000000000
        400100000000000000000000000000000000000000000000FFFFFF002556FF00
        95B3FF00392789007373AE00011FD7005C86FF000E10A1003E52D100F3ECD200
        5252A3000336FF00213AD0007A99FE004368F9002228AB00707DCA00515FC000
        0A1ABD000F35E700001FF0002247EC00FAF7EA001428CB003A5AEB00291E9400
        5477F2001045FF0086A7FF006D8FFA004777FF003464FF00F0EDE1002341DD00
        0E2AD8007277BD001D25B8005157B000002CF200322797001938E000002AFE00
        5161CC00FFFFF30021229C001A4BFF003B56E1001542F6005E80F7000025E800
        4A6FF9000325DE003C6AFF003A5FF3006689F900120E99001B3EE6007493FF00
        F6F1D8000B1FC3000E29D0000B3FFF003D63F900EBE8DE000E13A800F5F2E800
        2124A5000030FA000024F5006D94FF004E76FF002F5FFF002025B1005254AA00
        668CFF00FCF9F0002452FA000A26D4001E43E900223FD700515BBB000F25CA00
        0027EF00122CD300073AFF00365BF3007276B8002645DE00FFFFF8000030FF00
        285AFF001B23B4000E0E9B001C4FFF00332693002223A1004474FF001F28B600
        6F90FD002344E000002DF8000E42FF007279C0001749FF003E6DFF004066F900
        7394FC001A3DE3000133FF001427C8007193FF006D91FF000538FE000E2AD500
        4B76FF0084A5FF00648AFF004C71F900515FCA00100F9A007292FD002651FB00
        97B4FF002A209400002BF4000035FF00102BD3004576FF00FFFFFD000029EF00
        073CFF000E40FF002249EC003A6AFF000F11A0003A288A005353A2004D75FE00
        11109A000032FF00002FF9000136FF000539FF001144FF004C77FF004675FF00
        2455FF003B69FF00FFFFFE000639FF00073BFF00194BFF004575FF002F60FF00
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000004A43085D2D89000000000000000057134E721862281A78
        05000000000024068C44657D823225043805000000003D8396710C6D8D275352
        888B000000517A66843E558E5A2A45155C7C0B00000D35901B31371E796F3A0E
        765F6000002991300A40424C599501018A498700006C4B143B21172C81010101
        476E410000227464092F19363F6A0F336854100000776346809969205B5E9097
        7E7F26000000167B071F6194489398668F3C000000001156037092869A022E1C
        3424000000000011856B1D7573944D236700000000000000002B584F39501200
        0000000000000000000000000000000000000000FFFF0000F81F0000E0070000
        C0030000C0030000800100008001000080010000800100008001000080010000
        C0030000C0030000E0070000F81F0000FFFF0000280000001000000020000000
        0100200000000000400400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000ABA190005A7870408A4D30A0CA2F70A0A9CF7
        04059AD3000098860000A0180000000000000000000000000000000000000000
        0000000000000000000ECE580213C0F10A26D4FF0E2AD5FF1428CBFF1F28B6FF
        322797FF291E94FF08079BF10000B05700000000000000000000000000000000
        000000000011D959001FD9FD0032FFFF0030FAFF002DF8FF002BF4FF0029EFFF
        0025E8FF1D25B8FF392789FF120E9AFD0000B057000000000000000000000000
        0013D21A0723D4F2073CFFFF0639FFFF0538FEFF0336FFFF0133FFFF002FF9FF
        002CF2FF0027EFFF0F25CAFF3A288AFF09089BF10000A6190000000000000000
        0014C9882651FBFF0E42FFFF0E40FFFF0B3FFFFF073AFFFF0136FFFF0030FFFF
        002AFEFF0024F5FF001FF0FF1B23B4FF2A2094FF00009A870000000000000000
        0725D8D63C6AFFFF1144FFFF5477F2FF5E80F7FF6689F9FF6D8FFAFF7292FDFF
        7193FFFF7493FFFF7A99FEFF4C71F9FF332693FF0507A0D30000000000000000
        1737E3FA4C77FFFF1542F6FFF3ECD2FFEBE8DEFFF5F2E8FFFCF9F0FFFFFFF8FF
        FFFFFEFFFFFFFFFFFFFFFFFF4D75FEFF2025B1FF0C0EA2F80000000000000000
        183CE6FA668CFFFF0F35E7FFF6F1D8FFF0EDE1FFFAF7EAFFFFFFF3FFFFFFFDFF
        FFFFFFFFFFFFFFFFFFFFFFFF4E76FFFF1427C8FF0B10A9F90000000000000000
        092DE7D684A5FFFF2344E0FF3E52D1FF3B56E1FF3A5AEBFF3A5FF3FF3D63F9FF
        4066F9FF4368F9FF4A6FF9FF1749FFFF122CD3FF060DACD30000000000000000
        001CE3896F90FDFF6D94FFFF4576FFFF4575FFFF3E6DFFFF3464FFFF285AFFFF
        1C4FFFFF1144FFFF073BFFFF0035FFFF102BD3FF000CB4880000000000000000
        0025F41B1C43F2F297B4FFFF5C86FFFF4777FFFF4474FFFF3B69FFFF2F5FFFFF
        2455FFFF194BFFFF0E42FFFF0539FFFF0419C6F20009BC1A0000000000000000
        000000000027FF5B365CF5FD95B3FFFF6D91FFFF4675FFFF3A6AFFFF2F60FFFF
        2556FFFF1A4BFFFF1045FFFF0325E0FD0011DA59000000000000000000000000
        00000000000000000027FF5B1C45F2F27394FCFF86A7FFFF648AFFFF4B76FFFF
        3B69FFFF2452FAFF0725DDF20017E35900000000000000000000000000000000
        0000000000000000000000000025FF1B001EE7890C32E9D61C42ECFA193DE9FA
        082AE0D6001BD2880013DC1A0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFF0000
        F81F0000E0070000C0030000C003000080010000800100008001000080010000
        8001000080010000C0030000C0030000E0070000F81F0000FFFF000028000000
        18000000300000000100080000000000A0020000000000000000000000000000
        0000000000000000FFFFFF002757FF0090AEFF00382788007073AF000420CD00
        5B81FF00DDDDDD00454EBE000033FF000E0D9B002341D900252AB200B1C7FF00
        4561E600789BFF00F7F2E5005858AA004171FF0038389F000F31E5001345FF00
        5261CB003240C300121CAE006E78C600162FCC005272EE000021E90021219F00
        F2EBD1002247ED006A8FFF00E8E8E8003565FF001624BD003C41AD002C1F9100
        4658D3002E38B5002D2BA3006568B400385DEF006969A500F6F5F4004D7BFF00
        1F1694002E4ADD00012EF10084A3FF00A6BEFF002F44D000083DFF000629DF00
        1D4EFF000B1DC0004D58C0001F31C3001D22AA00E6E4D800FFFCF0000F14A600
        4258DE00F0ECDF003E64F5002D259A0015159D000223D7001023C70033279200
        062CE8006488FF000B33ED00202DBB00002AFB003B6AFD00EDEDED00E2E2E200
        1A1DA1001634D3000737F9007295FF002F5FFF002C3FCA000A24D100FBF7EA00
        1620B600213CD3004974FF002246DF001028CD001E27B3002A2CAA000027F300
        0029EC000023E2008CA8FF001F42E900F2F1EF00ECE7D8000438FF006E75C000
        4D5BC6004168FB001C1999000F41FF00194BFF003D3FA700456DFC00FFFFF900
        002FF9001E21A3006184FC002F299E002152FF00F8F8F8002A229800032EEC00
        0824D6002528AD00688AFC00E6E5E30011129E000334F8002A27A2003243CC00
        819FFF000026E7002B5BFF004577FF002F47D400E3E1D60034258E00E1DFDD00
        0023ED007071AB002E3CB700151DB100ECECE900031FD1000332F5003737A300
        3867FF00FDFCFB000D12A30035258A000739FF000F32E9006E90FF005F86FF00
        4A79FF003E63F100FFFFF5000C3EFF00F3F3F3001B1C9B00002DF400002BEF00
        0126E000032AE9001425C0003D6DFE00A8C1FF008EACFF001C1697000336FC00
        0B40FF002454FF002243DD003262FF00656AB700082EEA00322491002D269D00
        2C43D10089A7FF000026E9000030FA001320B7002F289B000F43FF00658BFF00
        1548FF001A4CFF001E51FF003E61F400100F9A0037268C00002FFF000023E700
        0136FF00002FF5004574FF00436FFD002543DA0086A5FF000027ED006188FF00
        2B5DFD00396AFF00F7F7F600E0E0DF006788FB00223ED4003F6EFF003C6BFF00
        FFFEFB00EBEAE900E4E4E300E4E4D9001F18950035278B0082A1FF000027EB00
        002AEE00002DF600002DF2000235FF00093BFF002026B3000D3FFF006689FF00
        2050FF002556FF00295AFF004B7AFF004877FF004775FF004372FF00426FFF00
        3965FF005260C900FFFFFD008CAAFF0037258A000032FD000029E900032CEC00
        0336FE00033AFF000638FF00073CFF000A3DFF006969A700638BFF001648FF00
        2755FF002F60FF00FEFEFE000230F600F1F1F000A7C0FF0011139F0036278C00
        3325910000000000000000000000000000000000000000000000000000000000
        00000000886C70FD7B9C142C00000000000000000000000000002A198ADC787D
        AE4275A5BB120000000000000000000000288C47D7C5D680772442D4AD2F1E00
        00000000000000004A9E6FD89DD99E5FD6B1BE45859226430000000000000018
        FA0A0A0AECB26FC0D9D7D680604204261E00000000006694F29393F1F1EFDA0A
        B2C09E5F80BE42EBD312000000001B029ADDDDDD9AF3DBF1DA0A6F9DD7B160BC
        FF0B0000000062F716161616B56AA7DB650ABD4B5E871DA1FE69F400003968F7
        6BB7B8B902F823CECDCDA2CDE6C2C27646428E0000540781B81C1F644011563D
        996EE90101010E315CB44F000058DEE7B90F84084E224D9B74F9F9010101FCC0
        5B72910000CC9559E0273CCAD1D0632D900101010101A38D36293E0000345248
        C709D2867A8BFBC9CF0101010101337CA05D3B0000E8717F4C3806449FEDD9B2
        0ABFF0F2A7B5B9A6EE0D250000002BC4B682E2978213CE235302DF6B169A650A
        AC5705000000A9C4A42E97E2E3E5CE2353E173B816DD930A15B30000000000BA
        03C4E3E2E2E4CD8FAA81A837B76A93BF55AB00000000003FCB0332E297E3E6C8
        AA81E037F66A358D89000000000000003079A461F5C1CDC8AA81A837F6B5513A
        0000000000000000003F41B0EAD5C65923E1E0E0A8497E000000000000000000
        0000005A9879105221966D20501A0000000000000000000000000000001783C3
        0CAF670000000000000000000000000000000000000000000000000000000000
        00000000FFFFFF00FF00FF00FC003F00F8001F00F0000F00E0000700C0000300
        C0000300C0000100800001008000010080000100800001008000010080000100
        C0000100C0000300E0000300E0000700F0000F00F8001F00FE003F00FF81FF00
        FFFFFF0028000000180000003000000001002000000000006009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B8090005A85B0004A5A50408A2D70709A0EE08099EF0
        04059ADB000099AD000098660000A60F00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00008B020009BF6B040FAFE9151DB1FF2026B3FF2528ADFF2A27A2FF2D269DFF
        2E269AFF2A2298FF1C1697FF07069AF00000A57E0000A9070000000000000000
        000000000000000000000000000000000000000000000000000000000010D412
        000EBABB031FD1FF062CE8FF0029EEFF0027EDFF0026EBFF0025E7FF0824D6FF
        1624BDFF2D2599FF35278BFF322491FF1F1694FF00009CCE0000AB1F00000000
        0000000000000000000000000000000000000000000000000011CF110011BFD0
        002BEEFF002FF8FF002DF6FF002DF4FF002CF1FF002BEFFF0029ECFF0027EBFF
        0025E9FF0023E7FF1023C7FF34258EFF35258AFF2C1F91FF02029DE10000B11E
        0000000000000000000000000000000000000000000000010015CEB50230F6FF
        0033FFFF0032FEFF0032FEFF0032FDFF0031FAFF002FF9FF002EF5FF002CF1FF
        002AEDFF0027EAFF0025E7FF0022E2FF2D259BFF382788FF2B1F91FF00009DCE
        0000A807000000000000000000000000000000000015E15E0F32E9FF073BFFFF
        0639FFFF0639FFFF0638FFFF0538FFFF0336FEFF0234FFFF0032FEFF0030FBFF
        002EF5FF002BF0FF0029EBFF0026E6FF0023E6FF2E259AFF37258AFF1F1895FF
        0000A87E0000000000000000000000000000CC04001DD2DE2756FFFF0B3EFFFF
        0D3FFFFF0D3FFFFF0D3FFFFF0C3EFFFF0A3DFFFF083BFFFF0538FFFF0235FEFF
        0032FEFF002FF8FF002CF4FF0029EEFF0026E8FF0023E2FF37268CFF332591FF
        06059CF10000991000000000000000000019D0471F42E9FF2755FFFF1345FFFF
        1446FFFF1446FFFF1245FFFF1043FFFF0F42FFFF0B3FFFFF093BFFFF0338FFFF
        0032FFFF002FFFFF002AFBFF0027F3FF0023EDFF0021E9FF1425C0FF36278CFF
        1C1999FF00009C6600000000000000000014CF8F4168FBFF2755FFFF194BFFFF
        1448FFFF1A4DFFFF1E51FFFF2757FFFF2F60FFFF3665FFFF3C6BFEFF3F6EFFFF
        3F6EFFFF3D6DFEFF3F6EFFFF416FFEFF436FFCFF436FFDFF032EECFF332792FF
        2D249AFF00009EAF0000000000000000001AD5BF5B81FFFF2C5BFFFF194CFFFF
        5272EEFFF2EBD1FFECE7D8FFF0ECDFFFF7F2E5FFFBF7EAFFFFFCF0FFFFFFF5FF
        FFFFF9FFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFB1C7FFFF012EF1FF1E27B3FF
        2F289BFF0408A1DD00000000000000000425DCD36689FFFF3965FFFF1F51FFFF
        4561E6FFE3E1D6FFDDDDDDFFE2E2E2FFE8E8E8FFEDEDEDFFF3F3F3FFF8F8F8FF
        FEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFA7C0FFFF002FF4FF1028CDFF
        2F299EFF070CA4F400000000000000000628DFD26E90FFFF4974FFFF2656FEFF
        4658D3FFE6E4D8FFE0E0DFFFE4E4E3FFEBEAE9FFF2F1EFFFF6F5F4FFFDFCFBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8C1FFFF0232F5FF0629DFFF
        2D2BA3FF080DA8F20000000000000000001DDEBA7295FFFF6488FFFF2B5DFDFF
        454EBEFFE4E4D9FFE1DFDDFFE6E5E3FFECECE9FFF1F1F0FFF7F7F6FFFFFEFBFF
        FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6BEFFFF0334F8FF032AE9FF
        2A2CAAFF040AAAD90000000000000000001CE2876184FCFF819FFFFF3B6AFDFF
        0B1DC0FF0420CDFF0223D7FF0126E0FF0029E9FF002DF2FF002FFAFF0033FFFF
        0035FFFF033AFFFF073CFFFF0A40FFFF0F44FFFF1D50FFFF0336FCFF032CECFF
        252AB2FF0008AEA70000000000000000001FDE3D395EF1FE86A5FFFF658BFFFF
        4577FFFF4B7AFFFF4A79FFFF4576FFFF4171FFFF3B6AFFFF3565FFFF2F5EFFFF
        2657FFFF2050FFFF184AFFFF1244FFFF0C3DFFFF0437FFFF0032FFFF082EEAFF
        1620B6FF000BB05C00000000000000000000FF01052EEAD285A5FFFF8EABFFFF
        4D7BFFFF4A78FFFF4B79FFFF4876FFFF4372FFFF3C6BFFFF3565FFFF2F5FFFFF
        2859FFFF2152FFFF1B4CFFFF1446FFFF0D3FFFFF0739FFFF0133FFFF0F31E5FF
        0513B9E90000DA090000000000000000000000000024FF4C3F62F6FE8FAEFFFF
        85A5FFFF4877FFFF4B79FFFF4B79FFFF4775FFFF3F6EFFFF3867FFFF3161FFFF
        2A5AFFFF2354FFFF1C4DFFFF1547FFFF0E41FFFF083AFFFF0136FFFF0A24D1FF
        000EC36C00000000000000000000000000000000000000000025FC9F6788FBFF
        90AEFFFF84A3FFFF4B79FFFF4A78FFFF4977FFFF426FFFFF396AFFFF3262FFFF
        2B5BFFFF2456FFFF1D4EFFFF1648FFFF0F41FFFF083DFFFF0331F5FF0014BBBC
        0000FF0200000000000000000000000000000000000000000022FF080027EFBC
        678AFBFF8EACFFFF8CA8FFFF638BFFFF4574FFFF3F6EFFFF3869FFFF3262FFFF
        2B5BFFFF2455FFFF1D4EFFFF1648FFFF0F43FFFF0737F9FF0017C9D1000FE412
        000000000000000000000000000000000000000000000000000000000021FF08
        0025FE9E3F65F7FE89A7FFFF8CAAFFFF82A1FFFF6188FFFF4974FFFF3564FFFF
        295AFFFF2556FFFF2456FFFF2454FFFF0B33EDFF0019DAB50010E11100000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000028FF4C0631ECD23F64F3FE688AFCFF789BFFFF7295FFFF6A8FFFFF
        5F86FFFF456DFCFF2247EDFF0123DBDE001CEF5F000000010000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FF010024E23D001DE6870022E4BA092EE6D2072BE4D3
        001FDEBF001AD98F001BD7470000CB0400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFF00FF00FF00FC003F00F8001F00F0000F00
        E0000700C0000300C0000300C000010080000100800001008000010080000100
        8000010080000100C0000100C0000300E0000300E0000700F0000F00F8001F00
        FE003F00FF81FF00FFFFFF002800000020000000400000000100080000000000
        800400000000000000000000000000000000000000000000FFFFFF002758FF00
        94A6E3003B268300636DBF000B1DC500C6D6FF005B81FF00002FFD003B4CCA00
        F4EDCF0009089B002B2BA9001A3CDE007A9AFF005555A500727FDC00AABEFF00
        DBDBDB00436AFB00ECECEC008FAEFF001145FF000023E4002332C400161BAA00
        364CE500271E9600757AC500535DBF002146F1001327D6007373B2000511B500
        768BEC006B8FFF001139F0002D3ECF00A4B6EF002024B700FDFBED00B8CAF800
        18129800E8E5DC004A79FF0033289500D3DFFF003363FF00FBF7DA0089A1FE00
        061DD300083BFF001C4EFF00090DA7000A2EEA002139ED002021AA00F5F5F500
        9CB2FF002132D10031319F00323DC3006C75CD001326C6009BADED000027EF00
        2A269E00ADBFF3002651F6002A40EA00F3F2E5001C2AC000585CAD003F64F300
        1232E5000A27D8001948F7007485E4002E5AF8001121BE00203BD6002C3ED900
        1515A3007096FF000C18B5003B6BFF004372FF00EEEBD700173EE7000D3EF700
        1F43E8000332F5005563C6003746D0000616BD007990F300FFFFF600547FFF00
        E4E4E4007079D4001122CF002A37C6001E17950024209D008EA2E8003046E800
        DFDFDF002626A4007682C800F9F9F9000323DB00B4C3F600141DB300BECEFC00
        0D0D9D0033248E008AA9FF00849BFC002C34AB005F82F80094A6EB00648AFF00
        122ACF002D5DFF000236FF00392789000B35F20018179E00264BEF007078C000
        F8F5EE00F0EDE30083A4FF00174AFF002153FF000C23CA000029F60090A8FF00
        2025B0000D3FFF000023E9003B4CD100E8E8E800E4E1D8002C29A3001B43F200
        0607A0000713AF000C1BBF000636F900809FFF00133FEF007D97FB004E75FF00
        5B7DF8004873FF00636FC5002329B5003030A5002135D7006A95FF00242FC100
        ECE9E000002CF20031269500202BBC006F92FE0094ACFF001323C2002250FA00
        FCF9F200F5F2EA00A7BAF1000624D700162BD8004066F900F1F1F1001C26B800
        0027E900002FF900163BEE002147EC003F6DFF00FFFEF10098AFFF00083EFF00
        3767FF004576FF000F27CE00282AAC004366F500ECE8D400291F920035278F00
        5858A300F9F7EA00070FAB00071FD7000032FD000A34EE00113EF3002555FE00
        2957FB00080BA3000324DF000B3EFB007898FF00305AFC00577FFF008CA4FF00
        8DABFF001F2DC0003033AA002936C2003060FF00FFFFFA00C0D1FE002E2EA200
        102FE7005E82FC000537FF001042FF001447FF00164AFB00231E9A002926A200
        2324AA00153DEB00194CFF00EAE9DD00BBCEFA000024E60088A6FF007D9DFF00
        183CE1001E38D6001F51FF00678CFF00585AAA003465FC004571FF00FDFDFD00
        EFEFEF00322692002D249B002827A7002852F80007079C001647F80093AFFF00
        3825880035248F00002AF300002DF6000029ED00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        EF9F807373803DC30000000000000000000000000000000000000000002128C5
        1A39F6F6E243E12BF8392100000000000000000000000000000000007794407B
        BDBD40B26CF4F4A5A51C0C0D000000000000000000000000000000556FA4FD42
        42FFB38D8D18A9F5FB74F46773000000000000000000000000005FA4B4FEA4A4
        A4A442FFB3E88D8D88FCFB74C1F8000000000000000000000095B4C7C7C7C7B4
        B4B4FEA4A4FFB3E8E8E8E20474C173000000000000000000D67FDD7D7D7D7D7D
        C7C7C7B4B4A4A4FFB3E88DE30474670D0000000000000082AE35343434343434
        34DD7DC7C7B4B4A4FFB3E88D43FBFC0C2100000000000048D0DE8C8C8C8C8C8C
        8C3434347DC7C7B4A442B3E8187EC21C39000000000000AE9C8CDFDFDFDFDF17
        DE8CBA34DD7DC709B4FD428D8DA97EA59300000000001E81F1DF86DF1717DF86
        E535EDEDEDED35E586E0F94D4542C2A580100000000066149C86E5AA03697941
        27AD44702AE772D90707072FA142B22E68DA0000000065089A3535450B902CA3
        84AC83AB61D801010101010154424C2E435300000000337A0887875BC0136B63
        8F15F33A6EF20101010101015442422E91CC00000000C6242402CAEC58136B63
        8F15B13A6EF201010101010154FD890D0D360000000020A7CFBBCB1931E68447
        C429B861D80101010101010154B4899EBE1A0000000026DC0F624F361D3F6411
        4E2360997632D28AA8B93B1262B4FEA68BD5000000005DBFEA0FF0510EEB59E4
        98C95ACEBABABABA34BABABADFC7B4D471490000000000B5857562BC2D2D2DBC
        57B7BB307C02873586DF8C347DC709A22200000000000038A7E9E9572D2D2D9C
        57B7BB307C02CAEDE5DFDEBADDC70948A20000000000006D1F161654BC2D2D2D
        BCB756BBD77C02ED35DFDE8C347DC85F00000000000000006A78D3FAEEBC2D2D
        2DF1B7BB307C02873586DE8C347D4C3E000000000000000000DB0FD3FAA7572D
        2DF1B7BB307C02873586DE8C345C50000000000000000000000037CFD3D38562
        5757B7BB307C02873586DE8C9606000000000000000000000000004B9B1675D3
        0FD15630D702CAEDE58635C8400000000000000000000000000000001B92A7D3
        8597EAEE629CB7B7B7F76F5E0000000000000000000000000000000000004625
        4ADC24A7EED1B0B6CD5200000000000000000000000000000000000000000000
        9D8EA0AFAF3C0A05000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFF00FFF
        FF8001FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007E0000007
        E0000007C0000003C0000003C0000003C0000003C0000003C0000003C0000003
        C0000003E0000007E0000007E000000FF000000FF800001FFC00003FFE00007F
        FF0000FFFFC003FFFFF00FFFFFFFFFFFFFFFFFFF280000002000000040000000
        0100200000000000801000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000010004BB350005A67F0001A3B800019FDC00019EED00009CEC
        00009CDB00009AB70000997E0000AD3300000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FF01
        0008BD580006BBD00810ADFE151BABFF2022AAFF2726A7FF2828A6FF2A26A2FF
        29249EFF231E9AFF181298FF07079DFE0000AACE0000BD550000000100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000007D920000CABBF
        0814B1FE1327C7FF122ACFFF0F28CFFF0F26CDFF1225C5FF1B25B8FF2626A4FF
        322692FF322693FF302495FF302594FF261D95FF0A089CFE0000ABBE0000BD1E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000BDF40000EB7ED0323DBFF
        012DF2FF002AF2FF0029F0FF0028EFFF0028EDFF0027EBFF0025EBFF0024EAFF
        0023E3FF1323C3FF2D249BFF382588FF32238EFF332590FF1E1794FF00009FEB
        0000B73E00000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000011E0410010C0F5002DF2FF002FFAFF
        002DF6FF002DF4FF002DF3FF002CF2FF002BF0FF002AEEFF0029ECFF0028E9FF
        0026E7FF0024E8FF0023E9FF0C23CAFF36248EFF382587FF32258EFF291E92FF
        00009EF40000B43D000000000000000000000000000000000000000000000000
        0000000000000000000000000011EC220011C2ED0131FAFF0033FFFF0031FDFF
        0031FDFF0031FBFF0031FAFF0030FAFF002FF7FF002EF5FF002CF3FF002BF0FF
        0029EDFF0028E9FF0026E7FF0024E7FF0022E6FF2825A2FF3B2582FF33248DFF
        291F92FF00009FEB0000C01F0000000000000000000000000000000000000000
        000000000000000000008C020012C9C30B35F2FF0437FFFF0336FFFF0336FFFF
        0336FFFF0336FFFF0235FEFF0134FFFF0033FDFF0031FDFF0030F9FF002EF6FF
        002DF3FF002BF0FF0029ECFF0027E8FF0025E5FF0022E9FF2324AAFF3B2683FF
        34258EFF1E1796FF0000AABF0000000100000000000000000000000000000000
        00000000000000000018E05C0724D9FE1B4EFFFF083AFFFF093BFFFF093BFFFF
        093BFFFF083BFFFF073AFFFF0639FFFF0537FFFF0336FFFF0134FEFF0032FEFF
        0030FAFF002EF6FF002CF2FF002AEDFF0027E9FF0025E5FF0023EAFF2B269DFF
        392488FF342490FF09099EFE0000B85800000000000000000000000000000000
        000000000000FF010011C6D5305AFCFF0F42FFFF0D3FFFFF0E40FFFF0E40FFFF
        0E40FFFF0D40FFFF0D3FFFFF0B3EFFFF0A3CFFFF083BFFFF0639FFFF0336FFFF
        0134FFFF0031FDFF002FF8FF002DF3FF002AEEFF0028EAFF0025E6FF0023E5FF
        392789FF34268FFF271E96FF0000ABD100000001000000000000000000000000
        000000000019C33B0625D8FE4871FFFF0E41FFFF1345FFFF1345FFFF1345FFFF
        1345FFFF1345FFFF1244FFFF1042FFFF0D3FFFFF0A3DFFFF083AFFFF0538FFFF
        0235FFFF0032FEFF002EFEFF002DF9FF0029F4FF0025EFFF0024E9FF0021E9FF
        1323C1FF392789FF312795FF0708A2FE0000AA35000000000000000000000000
        000000000014CF86264BEFFF456FFFFF1345FFFF1749FFFF1547FFFF1145FFFF
        1046FFFF1348FFFF174BFFFF184DFFFF1C4FFFFF1E52FFFF1F52FFFF1F52FFFF
        1D51FFFF1B4EFFFF184DFEFF164AFFFF164AFBFF1647F8FF1948F7FF2552F6FF
        0026EEFF36278FFF322695FF17169EFF00009F82000000000000000000000000
        000000000012CFC1436AFBFF4871FFFF184AFFFF1A4CFFFF2250FAFF94A6E3FF
        8EA2E8FF94A6EBFF9BADEDFFA4B6EFFFA7BAF1FFADBFF3FFB4C3F6FFB8CAF8FF
        BBCEFAFFBECEFCFFC0D1FEFFC5D5FEFFC7D6FFFFC7D6FFFFD3DFFFFF6A95FFFF
        0027EFFF1C26B7FF322894FF24209DFF00009FBB000000000000000000000000
        000000000014D5E55A81FFFF4E75FFFF1D4FFFFF1A4EFFFF2650F6FFF4EDCFFF
        E4E1D8FFE8E5DCFFECE9E0FFEFECE4FFF5F2EAFFF8F5EEFFFCF9F2FFFFFEF6FF
        FFFFF9FFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7198FFFF
        0027EEFF0927D8FF342894FF2B279FFF0001A3E0000000000000000000000000
        000000000019D7F5648AFFFF5C80FFFF2054FFFF2052FDFF1F43E8FFECE8D4FF
        DADADAFFDEDEDEFFE3E3E3FFE7E7E7FFEBEBEBFFEFEFEFFFF4F4F4FFF8F8F8FF
        FDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E96FFFF
        0029F0FF0026EFFF332897FF2C29A3FF0004A4F2000000000000000000000000
        00000000001ADBF46A8FFFFF6D8EFFFF2657FFFF2654FDFF1E38D6FFEEEBD7FF
        DBDBDBFFDFDFDFFFE4E4E4FFE8E8E8FFECECECFFF1F1F1FFF5F5F5FFF9F9F9FF
        FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E96FFFF
        002AF3FF0029F5FF2B2AA8FF2B2BA8FF0005A7F1000000000000000000000000
        000000000017DCE36D90FFFF7897FFFF3766FFFF2957FBFF2332C4FFFBF7DAFF
        EAE9DDFFF0EEE2FFF3F2E5FFF9F7EAFFFDFBEDFFFFFEF1FFFFFFF6FFFFFFFAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7097FFFF
        002EF6FF0029F6FF2329B5FF282AACFF0005AADE000000000000000000000000
        000000000018DCBD5F83FCFF7A9BFFFF557FFFFF2E5AF8FF080DA7FF757AC5FF
        6C75CDFF7079D4FF727FDCFF7485E4FF768BECFF7990F3FF7D97FBFF849BFCFF
        89A1FEFF8CA4FFFF90A8FFFF94ACFFFF98AFFFFF9CB2FFFFAABEFFFF5580FFFF
        0031FAFF002CF7FF202BBCFF2025B0FF0005ABB8000000000000000000000000
        00000000001CE0824366F5FF7D9DFFFF7A99FFFF3465FCFF203BD6FF1A3CDEFF
        183CE1FF173EE7FF153DEBFF133FEFFF113EF3FF0D3EF7FF0B3EFBFF083FFFFF
        093DFFFF073DFFFF083EFFFF083CFFFF073DFFFF083DFFFF083DFFFF1346FEFF
        0031FCFF002DFAFF1F2DC0FF141DB3FF0009AE7E000000000000000000000000
        000000000021FB35173CF0FE83A4FFFF8AA8FFFF537FFFFF4577FFFF4A7AFFFF
        497AFFFF4878FFFF4475FFFF4272FFFF3D6DFFFF3868FFFF3464FFFF2F5EFFFF
        295AFFFF2354FFFF1D4EFFFF184AFFFF1345FFFF0E40FFFF083AFFFF0335FFFF
        0032FCFF002EFDFF2330C1FF0612B7FE000AC230000000000000000000000000
        0000000000000001001EFECE7193FDFF88A6FFFF87A6FFFF4374FFFF4A78FFFF
        4B79FFFF4A78FFFF4774FFFF4270FFFF3D6CFFFF3968FFFF3463FFFF2E5FFFFF
        295AFFFF2455FFFF1F50FFFF1A4BFFFF1446FFFF0F41FFFF0A3DFFFF0538FFFF
        0033FFFF0030FBFF1C2ABFFF000CC8CA00000000000000000000000000000000
        00000000000000000027FF532247F3FE8FAFFFFF90ADFFFF7094FFFF4575FFFF
        4B79FFFF4A78FFFF4A79FFFF4575FFFF406FFFFF3B6AFFFF3665FFFF3060FFFF
        2B5BFFFF2556FFFF2051FFFF1B4CFFFF1647FFFF1042FFFF0B3DFFFF0639FFFF
        0135FFFF0A34EEFF0718BEFE000FE44E00000000000000000000000000000000
        000000000000000000000000001FFFB95F82F8FF8EACFFFF93AFFFFF678EFFFF
        4575FFFF4B79FFFF4A78FFFF4977FFFF4471FFFF3D6CFFFF3767FFFF3262FFFF
        2C5DFFFF2757FFFF2152FFFF1C4DFFFF1648FFFF1143FFFF0C3EFFFF0739FFFF
        0137FFFF0B27D7FF0010CEB50000000000000000000000000000000000000000
        000000000000000000000000002BFF1B0023EFE77999FEFF8CAAFFFF92AEFFFF
        6F93FFFF4273FFFF4A79FFFF4978FFFF4572FFFF3E6DFFFF3868FFFF3462FFFF
        2D5DFFFF2758FFFF2253FFFF1C4EFFFF1749FFFF1243FFFF0C3EFFFF073CFFFF
        0332F5FF0012C2E5000ADE190000000000000000000000000000000000000000
        000000000000000000000000000000000028FF360027EFF07898FEFF8DABFFFF
        8FABFFFF84A3FFFF5480FFFF4474FFFF4271FFFF3E6DFFFF3868FFFF3262FFFF
        2D5DFFFF2758FFFF2253FFFF1C4EFFFF1749FFFF1243FFFF0C41FFFF0636F9FF
        0014C9EE0017E933000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000029FF350024EEE45B7DF8FF
        8EAFFFFF89A9FFFF8DAAFFFF799BFFFF5680FFFF3A6BFFFF3163FFFF2F5FFFFF
        295AFFFF2555FFFF1E50FFFF1A4CFFFF1749FFFF1B4DFFFF0A33EEFF0015CCE3
        0017ED3200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000024FF170021FFB0
        1C44F4FE6F91FDFF8BACFFFF83A5FFFF809FFFFF7C9CFFFF678BFFFF547DFFFF
        4871FFFF416CFFFF3E6BFFFF3F6CFFFF2852F8FF0423DDFE0017E2AE001CF016
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        002CFF46001EFFC11139F2FD3F64F3FF5D81FCFF6B8FFFFF6D92FFFF678CFFFF
        587EFFFF4066F9FF2147ECFF0324E1FD0019EABE001EFF440000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000022FF25001EE66E001BE4A90019E3CE0019E0DE0019DFDE
        0016DBCE001ADAA90019D86E001DEB2400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFF00FFFFF8001FFFF0000FFFE00007FFC00003FF800001FF000000F
        E0000007E0000007E0000007C0000003C0000003C0000003C0000003C0000003
        C0000003C0000003C0000003E0000007E0000007E000000FF000000FF800001F
        FC00003FFE00007FFF0000FFFFC003FFFFF00FFFFFFFFFFFFFFFFFFF28000000
        30000000600000000100080000000000800A0000000000000000000000000000
        0000000000000000FFFFFF002858FF0094A6E3003C278400646EBE000C1DC300
        C6D6FF005A82FF00002DFE00404DC500F4EDCF0009089B002A2AAA001B36E000
        799BFF00494AA700727FDC00AFC4FF00D8D8DA00436AFB00EBEBEC0090ADFF00
        1245FF000022E3002332C4001319AC003756E30027209700747EC1005059BF00
        2048F0001327D6006F71AE00020DB700768BEC006B8FFF000F37EB002D3ECF00
        A4B6EF002024B700FEFAEE00B8CAF80018129800E8E5DC004A78FF0033289500
        D3DFFF003463FF00FBF7DA0089A1FE000118D000083BFF001C4EFF000A0FA700
        082EE9002139ED001C1EA300F5F5F6009CB2FF001930CF003636A1003F45B700
        6877CE001428C8009BADED000025EF0029249E00ADBFF3002850F3002A40EA00
        F5F1E5001A29BF006567AD003D61F1001035E7000B29D9001A47F3007485E400
        2E5AF8000E20C200243ADB002C3ED9001517A4007295FF000C18B6003B6AFF00
        4372FF00ECE7D9001A40EB000D3EF7001F43E8000332F5005766CA003446CE00
        0113C2007990F300FFFFF700547CFE00E3E4E5007079D4001122CF002A37C600
        1E17950025219D008EA2E8003048E100DFDFE0002423A5007683C800F8F9FC00
        0322DA00B4C3F600161EB200BACCFF0011119E0032238E008BA8FF00849BFC00
        2B33B1005F82F80094A6EB00628AFF00122ACF002D5CFF000235FF0038268900
        0D36EF001A1AA000234AEE00707ABF00F8F5EE00F1EEE00084A3FF00174AFF00
        2253FF000C22CB000027F80090A8FF001F25B0000D3FFF000022E9004459D900
        E8E8E900E3E0D4002D2AA2001D45EF000305A3000A12AE000C1BBF000836FB00
        81A0FF00133FEF007D97FB004F75FC005A7EFA004873FE00616FC500232AB400
        2F30A6002537D4006A95FF00242FC100ECE9E000002CF2002E249600222EBA00
        6F92FF0094ACFF001525C0001F4EF700FCF9F200F7F3E700A7BAF1000422D600
        142FD6004066F900F1F1F2001B25B7000128E800002FF900163BEE002248EB00
        406FFF00FFFEF30098AFFF000A3FFF003867FF004676FF001127CD002629AC00
        4467F000ECE5D1002D21930036288F006060A400FAF6EA000008AC00071FD700
        0032FE000831F100133EF3002454FE002B58FB000409A6000526E1000C3CFB00
        7698FF00305AFC00597FFF008CA4FF008DABFF001F2FC200383AA9002936C200
        3060FF00FFFFFB00C2D3FF002E2E9F00102FE7005E86FE000538FF001042FF00
        1547FF00164AFB00231E9A002825A2002325A900163DEC001A4CFF00EDE9DB00
        B9CCFF000024E60087A6FF007C9EFF001C38E2001E38D6001F51FF00688DFF00
        5E5EA8003465FC004570FF00FBFCFD00EEEEF000302492002D259A002727A600
        2B53F40007079C001747F70093AFFF003726880035248F00002AF200002DF500
        012AED0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002110D53D3D3D10C300000000000000000000000000000000
        000000000000000000000000000000000000000000D536C5941A1A1A1A1A5336
        93939F2100000000000000000000000000000000000000000000000000000000
        0000218B2255B28B8BE3E36CE2434343F568539373EF00000000000000000000
        00000000000000000000000000000000007722A94848A9A9A9B28BE2F5F5F5F5
        F5F5C1C180CC8000000000000000000000000000000000000000000000000005
        22334CCDB3FFB3B38D8DE8E86F888BA574F4F4C1C1C153931000000000000000
        00000000000000000000000000001E5FB3A4A4FFFFFFFFB3B3B3B3E8E8181818
        88E27E747474741C93DA000000000000000000000000000000000000000A33FE
        FEA4A4A4A4A4A4A4FFFFFFB3B3E81818181888F5FB747474C136430000000000
        0000000000000000000000001E33C7B4B4B4B4B4B4FEFEFEA4A4A4FFFFB3B3B3
        18181818B204FB7474C136DA000000000000000000000000000000825F7DC7C7
        C7C7C7C7C7C7B4B4B4B4FEA4A4FFFFFFB3E818181888FBFB7474C1CC10000000
        00000000000000000000000696347D7D7D7D7D7D7D7DC7C7C7C709B4FEFEA4FF
        FFB3B3E818186F7EFB74746893000000000000000000000000000AB3E5DDDDDD
        DDDDDDDDDDDDDD7D7D7DC7C7B4B4FEFEA4FFFFB3E81818AEFBFB747453800000
        0000000000000000000033CADE3434343434343434343434DDDD7D7DC7C7B4B4
        FEA4FFFFB3E8181888047474F4CCEF000000000000000000005E7FBB348C8C8C
        8C8C8C8C8C8C8C343434DDDD7D7DC7C7B4FEA4A4FFB3E818188B7E74F4397300
        000000000000000000337CD78CDEDEDEDEDEDEDEDEDE8C8C8C8C343434DD7D7D
        C7B4B4FEA4FFB3E81818C274F4A5C52100000000000000005D37F17CDE1717DF
        DFDFDFDF171717DEDEDE8C8C3434DDDD7DC7C7B4FEA4FFB3E8E8A97EF4A51AD5
        0000000000000000A0459A02DF86868686868686DFDFDFDF1717DEDE8CBA3434
        DD7DC709B4FEA4FFFFB3E8C2F4A56C93000000000000000033569A0286E586DF
        CACACB7C30BBF19C2D626208DC7ADC7A7A7A7AEEEEEEEE247AF78DB2C2A5F5C5
        0000000000000000CD9A620235EDDF9AC090C058E6848447ACC42929B86161D8
        D801010101010101D9AA8D6FC2F54394EF000000000000824B62087CED8717BF
        901313136B6B638F1515F3B13A3A6EF20101010101010101E7AA8D42F5F5431A
        100000000000000559D1DCBB8702DF4A901313136B63638F15F3B13A3A6EF201
        0101010101010101E7AA42429EF5431AD50000000000005DB6087AF10202F91B
        901313136B63638F15F3B13A3A6EF2010101010101010101E7AA42FF40F5E271
        9F0000000000005D817AEE9A027C4D8E9013136B6B63638F15F3B13A6E6E0101
        0101010101010101E7AAFDFF4C91F6719F00000000000005B67AEE7A7C301F0A
        9013136B6B638F1515B13A3A6EF20101010101010101010172AAFDFDCD91BE71
        D500000000000082E42424CFD730B60A9013136B63638F15F3B13A6EF2010101
        0101010101010101E73589A4B391BE551000000000000000B3A7240F9ABBB63E
        13131313136B63638F15F3B13A6E6E6E6E6E6E6E6EF2F20112E5FEA4FF0D9E55
        4900000000000000CD7AA70FEE561B93C522225F33333318188D4289090909C7
        C77D34BA8C1786350286B4FEFFBE9E2200000000000000006A9CCF0F85B757BC
        BC2DBCBCBC5757B756BB30307C7C0287ED3586DFDE8C34DDC7C7B4FEFF9E4855
        00000000000000003F1F0F0F85EEB7F1BC9CBC575757B75656BB30D77C7C0287
        ED35E58617DE8C34DD7DC7B437A6503E000000000000000000CD54EA97752DBC
        2D2D2D9C9C5757B75656BB30D77C02CA8735E58617DE8C34DD7DC7B44CD45F00
        0000000000000000008E4A979775EABC2D2D2D2D2D2DF157B756BB30D77C0202
        87ED3586DFDE8C34DD7DC709AFBDB20000000000000000000000B30F85E9167A
        2D2D2D2D2D2DBC57B75656BB30D77C0287ED3586DF178C8C347DC7093C5F2100
        000000000000000000005D45E985E916082D2D2D2D2D2D9C57B756BB30D77C02
        CA8735E58617DE8C34DDC7C84C77000000000000000000000000000E9BE9E975
        16082D2D2D2D2D9C57B756BB30D77C02CA8735E58617DE8C34DD7D375F000000
        000000000000000000000000B354858575167ABC2D2D2D2D57B756BB30D77C02
        CA8735E58617DE8C34DDDD33050000000000000000000000000000006D370F85
        85E916542D2D2D9C57B756BB30D77C02CA8735E58617DE8C34DD331E00000000
        000000000000000000000000003F3754E985E975E97ABCBC57B756BB30D77C02
        CA8735E58617DE8C34330A000000000000000000000000000000000000006D37
        9BE9858585E9857AF156BBBB30D77C02CA8735E5DF1786CE335D000000000000
        00000000000000000000000000000000EBF7EA859797979797A708F1BB7C02CA
        87EDEDCA7C873788820000000000000000000000000000000000000000000000
        005DFF4AEA85EACF5454A724247A08629A9A9C30C96F0A000000000000000000
        000000000000000000000000000000000000008E37459A54CF5424EE7ADC0862
        F1CB256F5E000000000000000000000000000000000000000000000000000000
        00000000003F6A37379245F7451FE4376F515D00000000000000000000000000
        000000000000000000000000000000000000000000000000001D9D5D5D9D8200
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFF00F
        FFFF0000FFFF8000FFFF0000FFFC00003FFF0000FFF800001FFF0000FFE00000
        07FF0000FFC0000003FF0000FF80000001FF0000FF00000000FF0000FE000000
        007F0000FE000000007F0000FC000000003F0000FC000000001F0000F8000000
        001F0000F8000000000F0000F0000000000F0000F0000000000F0000F0000000
        000F0000F000000000070000E000000000070000E000000000070000E0000000
        00070000E000000000070000E000000000070000E000000000070000F0000000
        00070000F0000000000F0000F0000000000F0000F0000000000F0000F8000000
        001F0000F8000000001F0000FC000000001F0000FC000000003F0000FE000000
        007F0000FF000000007F0000FF00000000FF0000FF80000001FF0000FFC00000
        03FF0000FFF0000007FF0000FFF800001FFF0000FFFE00007FFF0000FFFF8001
        FFFF0000FFFFF81FFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF000028000000300000006000000001002000000000008025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B9060004A3350004A068
        0002A18E0002A1A600009EB100009EB300009BAA0000999500009A7200009A42
        00009B0E00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008D020007BD420005B4A20006A9EC010BACFE0A12AEFF
        0F17ADFF141AACFF141CADFF161BABFF1518A9FF1115A7FF0C0FA3FF0307A3FF
        00009FF60000A4B60000A85A0000BB0800000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF010008B7560008B0D2010EB5FF0E1BB9FF1A25B9FF1F27B3FF2126AFFF
        2226AAFF2424A8FF2424A5FF2724A2FF28239FFF28239DFF28239CFF29229AFF
        24219FFF1416A3FF0408A3FF00009CE60000A3760000B20A0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000006CA28
        0009ADC00211B8FE1122C3FF1C29BEFF1929BFFF1727C2FF1625BFFF1725BEFF
        1C25B7FF2025AEFF2925A1FF2D269BFF2D249AFF2D2498FF2C2399FF2C2297FF
        2C2396FF2C2295FF2D2195FF1C1BA1FF0509A5FF00009DDC0000AB4900000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000DCD67000CB8F3
        0620CFFF0B2ADCFF0529E3FF0027EBFF0027ECFF0026EAFF0026E9FF0025E8FF
        0025E8FF0024E6FF0023E6FF0323DBFF0E23C9FF1D24B2FF2F2696FF332490FF
        312492FF2E2392FF2D2292FF2E2190FF2D2192FF1818A3FF0002A2FD0000A595
        0000900600000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000008B02000FC88A0013C2FE032AE8FF
        002BF0FF002AF0FF002AEFFF002AEDFF0029EDFF0029ECFF0028EBFF0028EAFF
        0027E8FF0026E7FF0026E5FF0025E5FF0024E4FF0023E4FF0022E3FF0E22C8FF
        2824A1FF392689FF34248CFF30238EFF30238FFF2F218FFF272097FF0308A5FF
        00009BBB0000B00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000008B020011C49A0019CBFE002EF6FF002EF5FF
        002DF3FF002DF3FF002CF2FF002CF2FF002CF1FF002BF1FF002BF0FF002AEFFF
        002AEDFF0029ECFF0028EAFF0027E8FF0026E6FF0025E4FF0024E3FF0023E3FF
        0022E3FF0922CEFF2E2498FF382686FF34248CFF32228DFF30228EFF2C2293FF
        080DA7FF00009BC90000B00F0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000012CE850019CDFE0031FCFF0030F8FF002FF8FF
        002FF8FF002FF8FF002FF7FF002FF7FF002EF6FF002EF5FF002DF4FF002DF3FF
        002CF2FF002BF0FF002AEFFF0029EDFF0028EBFF0027E9FF0026E7FF0025E4FF
        0024E3FF0022E1FF0021E4FF1923B7FF3B2685FF35248AFF33238CFF30218DFF
        2E2191FF060DA8FF00009BBD0000900600000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000012DD590016CBFE0235FEFF0033FDFF0032FCFF0032FEFF
        0032FDFF0032FEFF0032FCFF0031FDFF0031FBFF0030FAFF0030F9FF002FF8FF
        002FF7FF002EF5FF002DF3FF002CF2FF002BEFFF002AEDFF0029EBFF0027E9FF
        0026E6FF0025E3FF0023E2FF0022E3FF0922CFFF382688FF372688FF32238BFF
        30218DFF2D2292FF0309A6FF0000A69400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000013E01D0013C6ED0836FBFF063AFFFF0234FFFF0235FFFF0235FFFF
        0235FFFF0235FFFF0235FFFF0234FFFF0134FEFF0033FEFF0033FFFF0032FEFF
        0031FBFF0030FBFF002FF8FF002EF6FF002DF4FF002CF2FF002BEFFF0029EDFF
        0028EAFF0027E7FF0025E5FF0024E3FF0022E2FF0421D8FF37268BFF372689FF
        32238CFF31238EFF26209BFF0002A3FD0000AF49000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000014D3AC022AE7FF1B4CFFFF0437FFFF0538FFFF0638FFFF0638FFFF
        0638FFFF0638FFFF0538FFFF0538FFFF0537FFFF0437FFFF0336FFFF0235FFFF
        0134FEFF0033FFFF0032FCFF0030FAFF002FF8FF002EF6FF002DF4FF002CF1FF
        002AEEFF0029EBFF0027E8FF0026E5FF0024E2FF0022E2FF0422D6FF3A2686FF
        362689FF31238DFF2F228FFF1719A4FF00009CDC0000B20A0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0017EC3B0018D2FD2453FFFF1242FFFF083BFFFF093BFFFF093CFFFF093CFFFF
        093CFFFF093CFFFF093CFFFF093BFFFF083BFFFF073AFFFF0739FFFF0638FFFF
        0437FFFF0336FFFF0235FEFF0033FFFF0032FEFF0030FAFF002FF8FF002EF5FF
        002CF2FF002BEFFF0029ECFF0028E9FF0026E6FF0024E4FF0023E3FF0C23CBFF
        3D2783FF35248CFF31228FFF2F2292FF0309A7FF0000A4750000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0018D7B30D36EFFF3B64FFFF093CFFFF0C3EFFFF0C3FFFFF0D3FFFFF0D3FFFFF
        0D3FFFFF0D3FFFFF0D3FFFFF0C3FFFFF0C3EFFFF0B3DFFFF0A3CFFFF093BFFFF
        083AFFFF0639FFFF0538FFFF0336FFFF0235FEFF0033FFFF0031FCFF0030F9FF
        002EF6FF002DF3FF002BF0FF002AEDFF0028EAFF0026E6FF0024E4FF0022E5FF
        2024AEFF392787FF33248FFF2E2392FF1C1EA3FF00009EE700009F0B00000000
        000000000000000000000000000000000000000000000000000000000017ED23
        0019D3FB2F5CFFFF315DFFFF0D3FFFFF0F41FFFF1042FFFF1042FFFF1043FFFF
        1043FFFF1043FFFF1042FFFF1042FFFF0F41FFFF0E41FFFF0D40FFFF0C3FFFFF
        0B3EFFFF0A3CFFFF083BFFFF0739FFFF0538FFFF0336FFFF0134FEFF0032FEFF
        0030FAFF002FF7FF002DF4FF002BF1FF002AEDFF0028EAFF0026E6FF0024E4FF
        0023E3FF35278EFF34258DFF302392FF2E2395FF0109AAFF0000AA5E00000000
        000000000000000000000000000000000000000000000000000000000018E27B
        0A30E6FF466DFFFF2C59FFFF1043FFFF1345FFFF1345FFFF1446FFFF1446FFFF
        1446FFFF1446FFFF1446FFFF1345FFFF1345FFFF1244FFFF1143FFFF1042FFFF
        0F41FFFF0D3FFFFF0C3EFFFF0A3CFFFF083AFFFF0639FFFF0437FFFF0235FEFF
        0033FFFF0031FBFF002FF8FF002DF4FF002BF1FF002AEDFF0028EAFF0026E6FF
        0024E5FF1424C0FF392689FF302592FF2E2394FF1417A8FF0000A8B600000000
        000000000000000000000000000000000000000000000000000000000018DFC9
        264FF8FF4C71FFFF2957FFFF1546FFFF1648FFFF1749FFFF1749FFFF174AFFFF
        1649FFFF1749FFFF1749FFFF1548FFFF1548FFFF1647FFFF1447FFFF1245FFFF
        1244FFFF1043FFFF0F41FFFF0D40FFFF0A3DFFFF093CFFFF073AFFFF0538FFFF
        0235FFFF0033FFFF0030FBFF0030F8FF002DF5FF002BF2FF002BEFFF002AEBFF
        0127E6FF0023E7FF352890FF322592FF2E2396FF2422A4FF0001A4F60000A50F
        0000000000000000000000000000000000000000000000000012D60E0019D6F8
        3D69FFFF5076FFFF2957FFFF184BFFFF1B4BFFFF1749FFFF1647FFFF2353FCFF
        2555FDFF2958FDFF2E5DFDFF3261FCFF3967FCFF436FFCFF4772FDFF4C77FDFF
        517CFCFF547FFDFF5884FDFF5D88FEFF5E89FEFF5E88FDFF5E8AFFFF5F89FEFF
        5F89FEFF638CFEFF6790FEFF6790FFFF6790FFFF6790FFFF6991FFFF628EFFFF
        2954F6FF0022E7FF1B26B8FF352891FF2D2697FF2C249AFF0009ACFF00009D44
        0000000000000000000000000000000000000000000000000019D33A0125DEFF
        4E77FFFF557BFFFF2B59FFFF1B4DFFFF1E50FFFF1446FFFF5171EEFFEEE6CCFF
        E6E1D2FFE9E4D5FFECE7D9FFEDE9DBFFF0ECDEFFF2EFE1FFF5F1E5FFF7F3E7FF
        FAF6EAFFFDF9EDFFFEFBEFFFFFFEF3FFFFFFF5FFFFFFF8FFFFFFFAFFFFFFFCFF
        FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2D3FFFF
        204DF5FF0022E8FF0625DBFF37278EFF2D2699FF2C259DFF0A11ADFF00029F76
        000000000000000000000000000000000000000000000000001CD55F1035E7FF
        557CFFFF5C7EFFFF305DFFFF1F50FFFF2253FFFF1245FFFF4467F0FFE0DDD1FF
        D6D6D6FFD9D9D9FFDCDCDCFFDEDEDEFFE1E1E1FFE4E4E4FFE7E7E7FFEAEAEAFF
        EDEDEDFFEFEFEFFFF2F2F2FFF5F5F5FFF7F7F7FFFAFAFAFFFCFCFCFFFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDFFFF
        1F4EF6FF0025EAFF0026ECFF2F299BFF2E269BFF2B259EFF1117ACFF0002A199
        000000000000000000000000000000000000000000000000001CD6741A40EBFF
        597FFFFF6083FFFF3865FFFF2153FFFF2756FFFF1545FDFF4261E9FFE2DFD3FF
        D7D7D7FFDADADAFFDCDCDCFFDFDFDFFFE2E2E2FFE5E5E5FFE8E8E8FFEBEBEBFF
        EEEEEEFFF1F1F1FFF3F3F3FFF6F6F6FFF9F9F9FFFDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDFFFF
        1F4DF7FF0026ECFF0027EDFF1F28B5FF2F279BFF2A26A0FF141BAEFF0003A3B2
        000000000000000000000000000000000000000000000000001BD97D2248EDFF
        5C83FFFF6387FFFF436EFFFF2557FFFF295BFFFF1747F7FF415CE0FFE2DFD3FF
        D7D7D7FFDADADAFFDDDDDDFFE0E0E0FFE3E3E3FFE6E6E6FFE9E9E9FFECECECFF
        EFEFEFFFF2F2F2FFF5F5F5FFF7F7F7FFFAFAFAFFFDFDFDFFFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDFFFF
        1F4EF8FF0027EFFF0028EDFF1428C8FF2F289DFF2827A3FF171FB0FF0004A4BD
        000000000000000000000000000000000000000000000000001DDE7C234AEEFF
        6386FFFF6789FFFF5279FFFF2859FFFF2D5EFFFF1A47F3FF4156D5FFE3E1D5FF
        D8D8D8FFDBDBDBFFDEDEDEFFE1E1E1FFE3E3E3FFE6E6E6FFE9E9E9FFECECECFF
        EFEFEFFFF2F2F2FFF5F5F5FFF8F8F8FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDFFFF
        1F50FBFF0029F1FF0029EEFF0B28D8FF2F2A9FFF2727A6FF171FB2FF0003A6BB
        0000000000000000000000000000000000000000000000000020DB702046EDFF
        668AFFFF6A8BFFFF6688FFFF2A5BFFFF3263FFFF1E47EFFF4151CCFFE3E1D5FF
        D8D8D8FFDBDBDBFFDEDEDEFFE1E1E1FFE4E4E4FFE7E7E7FFEAEAEAFFEDEDEDFF
        F0F0F0FFF3F3F3FFF6F6F6FFF9F9F9FFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBACCFFFF
        1F50FBFF002AF3FF002AF1FF0528E3FF2D29A2FF2728AAFF131DB5FF0006A8AE
        0000000000000000000000000000000000000000000000000021E157153CEBFF
        6A8EFFFF6C8EFFFF7898FFFF3061FFFF3465FFFF2047EBFF424CC2FFE5E4D7FF
        DADAD8FFDDDDDBFFE0E0DEFFE3E3E1FFE6E6E4FFE9E9E7FFECECEAFFF0EFEDFF
        F3F2F0FFF6F5F3FFF9F8F6FFFDFCFAFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CBFFFF
        1C4EFCFF002BF5FF002BF2FF0229EAFF2C2BA5FF2528ADFF0F1BB6FF0006AA91
        000000000000000000000000000000000000000000000000001EDE2F052CE7FE
        6D91FFFF6D8FFFFF7A99FFFF4C76FFFF3767FFFF244AE8FF3F44B5FFD7D7D4FF
        D1D0D7FFD4D3D9FFD6D6DEFFD9DAE0FFDBDDE3FFDFE0E7FFE2E3E9FFE5E6EEFF
        E7E9F0FFEBECF4FFEEF0F7FFF1F3FAFFF4F6FDFFF6F8FFFFF7F9FFFFF7F9FFFF
        F8F8FFFFF7F9FFFFF8F9FFFFF8FAFFFFF9FAFFFFF8FBFFFFFFFFFFFFAFC4FFFF
        1A4DFEFF002DF7FF002CF3FF012AEDFF2A2AAAFF242AB1FF0816B8FF0006AC6C
        0000000000000000000000000000000000000000000000000027EB07001DE4F2
        658BFFFF7092FFFF7A99FFFF698DFFFF386AFFFF2C50E6FF0002A6FF0002B1FF
        0003B7FF0007BEFF000AC5FF000DCCFF000FD3FF0013DAFF0016E0FF001AE6FF
        001CEDFF0020F4FF0022FAFF0026FFFF002AFFFF002DFFFF0031FFFF0033FFFF
        0137FFFF053CFFFF0940FFFF0D42FFFF1146FFFF144AFFFF1A4FFFFF2759FFFF
        184AFDFF002FF9FF002DF5FF012BEDFF262CAEFF222CB6FF0111B7FE000AAD36
        000000000000000000000000000000000000000000000000000000000021F4B8
        4A6FF8FF7597FFFF799AFFFF85A3FFFF406FFFFF4170FFFF4678FFFF4678FFFF
        4878FFFF4678FFFF4776FFFF4475FFFF4374FFFF4171FFFF3F6FFFFF3B6DFFFF
        3868FFFF3565FFFF3263FFFF2E5FFFFF2B5BFFFF2758FFFF2254FFFF1F51FFFF
        1B4EFFFF1849FFFF1446FFFF1042FFFF0D3FFFFF083BFFFF0438FFFF0133FFFF
        0032FFFF0030FAFF002EF6FF032CECFF252BB4FF1A2AC0FF000AB4ED0000C607
        000000000000000000000000000000000000000000000000000000000026FD67
        2047EFFF7A9CFFFF799BFFFF85A2FFFF678DFFFF4070FFFF4573FFFF4574FFFF
        4674FFFF4575FFFF4473FFFF4372FFFF4170FFFF3F6EFFFF3D6CFFFF3A69FFFF
        3766FFFF3464FFFF3161FFFF2D5EFFFF2A5BFFFF2757FFFF2354FFFF2051FFFF
        1C4EFFFF194BFFFF1648FFFF1244FFFF0F41FFFF0C3EFFFF083BFFFF0537FFFF
        0134FEFF0031FDFF002FF9FF072DE6FF222EBAFF0E20C2FF000ABFA300000000
        00000000000000000000000000000000000000000000000000000000001BFF13
        0021E8F47195FFFF7C9CFFFF82A1FFFF8CA8FFFF4A77FFFF4776FFFF4977FFFF
        4977FFFF4A78FFFF4876FFFF4875FFFF4473FFFF4271FFFF3F6EFFFF3C6BFFFF
        3969FFFF3666FFFF3363FFFF2F5FFFFF2C5CFFFF2859FFFF2556FFFF2152FFFF
        1E4FFFFF1A4CFFFF1749FFFF1345FFFF1042FFFF0D3FFFFF093CFFFF0638FFFF
        0235FFFF0032FEFF002FFAFF0D2DDEFF1F2FC2FF0114BFFF000BC54700000000
        0000000000000000000000000000000000000000000000000000000000000000
        0025F89A385EF5FF80A0FFFF82A0FFFF8BA8FFFF7C9EFFFF4776FFFF4B79FFFF
        4B79FFFF4C7AFFFF4A78FFFF4B79FFFF4976FFFF4573FFFF4270FFFF3F6EFFFF
        3B6BFFFF3867FFFF3564FFFF3161FFFF2D5EFFFF2A5AFFFF2657FFFF2254FFFF
        1F50FFFF1B4DFFFF184AFFFF1446FFFF1143FFFF0D40FFFF0A3CFFFF0639FFFF
        0336FFFF0032FDFF0030FCFF142FD6FF1127CDFF000DB8D40000C40300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0029FF220025ECF8789BFFFF82A2FFFF87A6FFFF91ADFFFF648BFFFF4877FFFF
        4B79FFFF4B79FFFF4B79FFFF4C7AFFFF4B79FFFF4777FFFF4472FFFF416FFFFF
        3D6CFFFF3A69FFFF3666FFFF3262FFFF2F5FFFFF2B5BFFFF2758FFFF2354FFFF
        2051FFFF1C4EFFFF194AFFFF1547FFFF1244FFFF0E40FFFF0B3DFFFF073AFFFF
        0336FFFF0033FFFF0030FDFF1930CFFF0116C3FE000FC3570000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000027FA882A51F2FF88A8FFFF85A4FFFF89A7FFFF91ADFFFF5984FFFF
        4877FFFF4B79FFFF4B79FFFF4B79FFFF4C79FFFF4A77FFFF4674FFFF4271FFFF
        3F6DFFFF3B6AFFFF3767FFFF3363FFFF3060FFFF2C5CFFFF2859FFFF2455FFFF
        2152FFFF1D4EFFFF194BFFFF1648FFFF1244FFFF0F41FFFF0B3DFFFF073AFFFF
        0437FFFF0033FFFF0831F1FF0A26D3FF000FB9C10000FF010000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000015FF0C0021EBD7597EF9FF88A7FFFF86A5FFFF8BA8FFFF90ADFFFF
        5883FFFF4877FFFF4B79FFFF4B79FFFF4B79FFFF4A78FFFF4775FFFF4372FFFF
        406EFFFF3C6BFFFF3867FFFF3464FFFF3060FFFF2C5DFFFF2959FFFF2556FFFF
        2152FFFF1D4FFFFF1A4BFFFF1648FFFF1345FFFF0F41FFFF0B3EFFFF083AFFFF
        0437FFFF0135FFFF0B30E7FF0012C2F4000DD62A000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000002BFF340025EEF57395FEFF85A5FFFF85A4FFFF8BA8FFFF
        90ACFFFF5F88FFFF4776FFFF4B79FFFF4B79FFFF4A78FFFF4976FFFF4472FFFF
        406FFFFF3C6BFFFF3868FFFF3564FFFF3161FFFF2D5DFFFF295AFFFF2556FFFF
        2152FFFF1E4FFFFF1A4CFFFF1648FFFF1345FFFF0F41FFFF0C3EFFFF083BFFFF
        0438FFFF0536FEFF0019CEFE0012D86700000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000029FF54042EEFFB7A9BFFFF85A5FFFF84A5FFFF
        88A7FFFF90ADFFFF7397FFFF4877FFFF4978FFFF4B79FFFF4876FFFF4473FFFF
        406FFFFF3C6BFFFF3868FFFF3564FFFF3161FFFF2D5DFFFF295AFFFF2556FFFF
        2152FFFF1E4FFFFF1A4CFFFF1648FFFF1345FFFF0F41FFFF0C3EFFFF083CFFFF
        0539FFFF011FD5FE0014D68F0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000002AFF65042EF0FB7395FEFF86A6FFFF
        84A3FFFF86A4FFFF8AA9FFFF89A7FFFF638BFFFF4776FFFF4575FFFF4472FFFF
        406FFFFF3C6BFFFF3869FFFF3464FFFF3060FFFF2D5DFFFF2959FFFF2556FFFF
        2152FFFF1E4FFFFF1A4BFFFF1648FFFF1345FFFF0F41FFFF0D3FFFFF093CFFFF
        011FD8FE0016CE9C00008A020000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000029FF530027F0F55A7EFAFF
        88A8FFFF82A2FFFF82A2FFFF85A4FFFF89A7FFFF84A4FFFF6289FFFF4573FFFF
        3B6BFFFF3968FFFF3766FFFF3463FFFF3060FFFF2C5CFFFF2859FFFF2455FFFF
        2152FFFF1D4FFFFF1A4BFFFF1548FFFF1245FFFF1648FFFF0C3CFBFF011DD4FE
        0018DB8700008A02000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000002BFF340022EED6
        2B53F3FF7DA0FFFF84A5FFFF81A1FFFF81A1FFFF80A0FFFF809FFFFF809EFFFF
        6F92FFFF5981FFFF4672FFFF3766FFFF2D5EFFFF2759FFFF2455FFFF2153FFFF
        1E50FFFF1F51FFFF2453FFFF2C59FFFF2353FFFF0931EBFF0018CFEE0018E95A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000017FF0B
        0026FF880028F0F83E65F5FF7DA0FFFF81A3FFFF7C9EFFFF7799FFFF7396FFFF
        7394FFFF7092FFFF6D90FFFF6B8DFFFF6387FFFF5A7FFFFF537AFFFF4F77FFFF
        4E75FFFF4872FFFF3562FFFF133EF3FF0120DAFE001ADDAC001EEB1D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000029FF220025FB9A0024EEF4284FF2FF5277F9FF7195FFFF7598FFFF
        7094FFFF6C90FFFF678CFFFF6388FFFF5E85FFFF5A82FFFF547CFFFF4571FFFF
        2C57F9FF0F37EBFF001FDCFB001CE3B3001CF33D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000002EFF130026FF690022FAB80022EBF10A32EBFE
        1D45EFFF2850F1FF2C53F2FF2A51F3FF224AF1FF163DECFF062CE5FF001EDFF8
        001DE9CA001EEC7D001FFF240000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000026EA070025E32E
        0020E7560021E46F0022E37C001EE17D0020DF740020DD5F001EE03A0011EC0E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF0000FFFFF00FFFFF0000FFFF8000FFFF0000FFFC00003FFF0000FFF80000
        1FFF0000FFE0000007FF0000FFC0000003FF0000FF80000001FF0000FF000000
        00FF0000FE000000007F0000FE000000007F0000FC000000003F0000FC000000
        001F0000F8000000001F0000F8000000000F0000F0000000000F0000F0000000
        000F0000F0000000000F0000F000000000070000E000000000070000E0000000
        00070000E000000000070000E000000000070000E000000000070000E0000000
        00070000F000000000070000F0000000000F0000F0000000000F0000F0000000
        000F0000F8000000001F0000F8000000001F0000FC000000001F0000FC000000
        003F0000FE000000007F0000FF000000007F0000FF00000000FF0000FF800000
        01FF0000FFC0000003FF0000FFF0000007FF0000FFF800001FFF0000FFFE0000
        7FFF0000FFFF8001FFFF0000FFFFF81FFFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF0000FFFFFFFFFFFF0000}
      Proportional = True
      Visible = False
    end
    object RzBmpButton8: TRzBmpButton
      Left = 17
      Top = 18
      Width = 32
      Height = 32
      Bitmaps.TransparentColor = clWhite
      Bitmaps.Up.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        1000030000000008000000000000000000000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
        31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
        29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
        C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
        9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
        D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
        B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
        3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
        B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
        3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
        9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
        3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
        EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
        3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
        31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
        3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
        734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
        3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
        9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
        3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
        9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
        3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
        F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
        3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
        BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
        3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
        DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
        FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
        DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
        524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
        F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
        D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
        9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
        1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
        7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
        7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
        9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
        9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
        BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
        DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
        DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
        FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
        D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      Color = clBtnFace
      PopupMenu = PopupMenu2
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 68
    Width = 1254
    Height = 270
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 3
    object pnlProductDetailColorBackground: TPanel
      Left = 0
      Top = 0
      Width = 1254
      Height = 270
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
      object groupBoxDemographics: TRzGroupBox
        Left = 0
        Top = 0
        Width = 1254
        Height = 267
        Align = alTop
        Caption = 'Personal Information'
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ThemeAware = False
        object Label12: TLabel
          Left = 409
          Top = 18
          Width = 113
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ID Number'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 73
          Width = 121
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Known Name'
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
          Top = 46
          Width = 121
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'First Name'
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
          Left = 6
          Top = 18
          Width = 121
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Last Name'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 409
          Top = 46
          Width = 113
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PAS #'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label26: TLabel
          Left = 6
          Top = 100
          Width = 121
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Gender'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 409
          Top = 73
          Width = 113
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'IPN'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label31: TLabel
          Left = 409
          Top = 155
          Width = 113
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DoB'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 6
          Top = 127
          Width = 121
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Race'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 154
          Width = 121
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Marital Status'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 683
          Top = 46
          Width = 116
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label23: TLabel
          Left = 683
          Top = 100
          Width = 116
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label24: TLabel
          Left = 902
          Top = 46
          Width = 80
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
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
          Left = 902
          Top = 100
          Width = 80
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label28: TLabel
          Left = 683
          Top = 18
          Width = 217
          Height = 26
          AutoSize = False
          Caption = 'Registered in System?'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label29: TLabel
          Left = 902
          Top = 18
          Width = 181
          Height = 26
          AutoSize = False
          Caption = 'Deceased?'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label30: TLabel
          Left = 683
          Top = 73
          Width = 218
          Height = 25
          AutoSize = False
          Caption = 'Transferred In?'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label32: TLabel
          Left = 902
          Top = 73
          Width = 181
          Height = 25
          AutoSize = False
          Caption = 'Transferred Out?'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label34: TLabel
          Left = 683
          Top = 155
          Width = 116
          Height = 26
          Alignment = taCenter
          AutoSize = False
          Caption = 'Defaulted'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label36: TLabel
          Left = 902
          Top = 156
          Width = 80
          Height = 26
          Alignment = taCenter
          AutoSize = False
          Caption = 'Stopped'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 6
          Top = 181
          Width = 121
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Classification'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RzDBIDNumber: TRzDBEdit
          Left = 524
          Top = 18
          Width = 154
          Height = 25
          Hint = 'National Identity Number'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personIDNumber_Str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 7
          OnExit = RzDBIDNumberExit
        end
        object RzDBFirstName: TRzDBEdit
          Left = 128
          Top = 46
          Width = 278
          Height = 25
          Hint = 'First Name'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personFirstName_Str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 1
          OnChange = RzDBFirstNameChange
        end
        object RzDBLastName: TRzDBEdit
          Left = 128
          Top = 18
          Width = 278
          Height = 25
          Hint = 'Last Name / Surname'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personLastName_Str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 0
          OnChange = RzDBLastNameChange
        end
        object rzGenderGrp: TRzDBRadioGroup
          Left = 128
          Top = 100
          Width = 278
          Height = 28
          Hint = 'Gender'
          DataField = 'personGender_Str'
          DataSource = dmPatient.dsqryPersonDetail
          Items.Strings = (
            '&Male'
            '&Female'
            '&Unknown')
          Values.Strings = (
            'M'
            'F'
            'U')
          OnChange = rzGenderGrpChange
          Color = 16311512
          Columns = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          GroupStyle = gsCustom
          ItemFont.Charset = ANSI_CHARSET
          ItemFont.Color = clBlue
          ItemFont.Height = -15
          ItemFont.Name = 'MS Sans Serif'
          ItemFont.Style = []
          ItemHeight = 22
          ParentFont = False
          TabOrder = 3
          ThemeAware = False
          VerticalSpacing = 4
          OnExit = rzGenderGrpExit
        end
        object RzDBKnownName: TRzDBEdit
          Left = 128
          Top = 73
          Width = 278
          Height = 25
          Hint = 'Known Name'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personKnownName_Str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 2
          OnChange = RzDBKnownNameChange
        end
        object edtRxNumber: TRzDBEdit
          Left = 524
          Top = 73
          Width = 154
          Height = 25
          Hint = 'Internal Patient Number'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personRefNoCurrent_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 9
          OnChange = edtRxNumberChange
          OnExit = edtRxNumberExit
        end
        object DBPatientDOB: TwwDBDateTimePicker
          Left = 524
          Top = 153
          Width = 154
          Height = 25
          Hint = 'Date of Birth'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
          CalendarAttributes.PopupYearOptions.NumberColumns = 4
          CalendarAttributes.PopupYearOptions.StartYear = 1950
          Color = clWhite
          DataField = 'personDOB_Dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 11
          OnChange = DBPatientDOBChange
        end
        object RzDBPasNumber: TRzDBEdit
          Left = 524
          Top = 46
          Width = 154
          Height = 25
          Hint = 'Patient Administration System Number'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personPAS_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 8
          OnExit = RzDBPasNumberExit
        end
        object Button1: TButton
          Left = 410
          Top = 100
          Width = 269
          Height = 51
          Hint = 'IPN = Internal Patient Number'
          Action = atnPosition_NewNumber
          Font.Charset = ANSI_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object RzDBLookupComboBox2: TRzDBLookupComboBox
          Left = 128
          Top = 127
          Width = 278
          Height = 25
          Hint = 'Race'
          Ctl3D = False
          DataField = 'personRace_Str'
          DataSource = dmPatient.dsqryPersonDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'raceName_Str'
          ListField = 'raceName_Str'
          ListSource = dmPatient.dstblRace
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
        end
        object RzDBComboBox1: TRzDBComboBox
          Left = 128
          Top = 154
          Width = 278
          Height = 25
          Hint = 'Marital Status'
          DataField = 'personMaritalStatus_str'
          DataSource = dmPatient.dsqryPersonDetail
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ItemHeight = 17
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            'Single'
            'Married'
            'Divorced'
            'Widowed'
            'Unknown')
        end
        object RzGroupBox3: TRzGroupBox
          Left = 721
          Top = 182
          Width = 361
          Height = 80
          Color = 16311512
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          ThemeAware = False
          object Label5: TLabel
            Left = 2
            Top = 18
            Width = 151
            Height = 26
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Language (Narrative)'
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label6: TLabel
            Left = 2
            Top = 46
            Width = 151
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Language (Written)'
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object rzlLangaugeNarrative: TRzDBLookupComboBox
            Left = 155
            Top = 19
            Width = 202
            Height = 25
            Hint = 'Spoken Language'
            Ctl3D = False
            DataField = 'personLanguageNarrative_Str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'languageName_Str'
            ListField = 'languageName_Str'
            ListSource = dmPatient.dstblLanguage
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            FrameController = frcEdit
            FramingPreference = fpCustomFraming
          end
          object rzlLangaugeWritten: TRzDBLookupComboBox
            Left = 155
            Top = 47
            Width = 202
            Height = 25
            Hint = 'Written Language'
            Ctl3D = False
            DataField = 'personLanguageWritten_Str'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'languageName_Str'
            ListField = 'languageName_Str'
            ListSource = dmPatient.dstblLanguage
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            FrameController = frcEdit
            FramingPreference = fpCustomFraming
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 2
          Top = 206
          Width = 477
          Height = 55
          Caption = 'Referral Facility'
          Color = 16311512
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          ThemeAware = False
          object Label2: TLabel
            Left = 4
            Top = 16
            Width = 120
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PHC Clinic'
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object cmbDepartment: TRzDBLookupComboBox
            Left = 128
            Top = 16
            Width = 346
            Height = 25
            Hint = 'Clinic'
            Ctl3D = False
            DataField = 'personInstitution_ID'
            DataSource = dmPatient.dsqryPersonDetail
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'clinic_ID'
            ListField = 'clinicName_str'
            ListSource = dmPatient.dsqryClinic
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            FrameController = frcEdit
            FramingPreference = fpCustomFraming
          end
        end
        object RzDBEdit8: TRzDBEdit
          Left = 683
          Top = 127
          Width = 217
          Height = 25
          Hint = 'Transfered To'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personTransferredInFrom_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 19
        end
        object RzDBEdit9: TRzDBEdit
          Left = 902
          Top = 127
          Width = 181
          Height = 25
          Hint = 'Transfered From'
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personTransferredOutTo_str'
          Font.Charset = ANSI_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 20
        end
        object chkPersonActive: TRzDBCheckBox
          Left = 410
          Top = 186
          Width = 71
          Height = 21
          Hint = 'Patient Status'
          DataField = 'personActive_Bol'
          DataSource = dmPatient.dsqryPersonDetail
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Caption = 'Active'
          TabOrder = 21
        end
        object RzDBCheckBox3: TRzDBCheckBox
          Left = 481
          Top = 186
          Width = 101
          Height = 21
          Hint = 'Patient Status'
          DataField = 'vstTempPatient_bol'
          DataSource = dmPatient.dsqryPersonDetail
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Caption = 'Temporary Patient'
          TabOrder = 22
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 800
          Top = 155
          Width = 100
          Height = 25
          Hint = 'Defaulted date'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'personDefaulted_dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 13
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 982
          Top = 155
          Width = 100
          Height = 25
          Hint = 'Treatment Stooped date'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'vstTreatmentStopped_date_dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 16
        end
        object DBpatientDeceasedDate: TwwDBDateTimePicker
          Left = 982
          Top = 44
          Width = 100
          Height = 25
          Hint = 'Defaulted date'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'personDateDeceased_dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 14
        end
        object wwDBDateTimePicker4: TwwDBDateTimePicker
          Left = 800
          Top = 100
          Width = 100
          Height = 25
          Hint = 'Defaulted date'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.NumberColumns = 3
          CalendarAttributes.PopupYearOptions.StartYear = 2000
          Color = clWhite
          DataField = 'personTransferredInDate_dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 12
        end
        object wwDBDateTimePicker3: TwwDBDateTimePicker
          Left = 982
          Top = 100
          Width = 100
          Height = 25
          Hint = 'Defaulted date'
          CalendarAttributes.Font.Charset = ANSI_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.NumberColumns = 3
          CalendarAttributes.PopupYearOptions.StartYear = 2000
          Color = clWhite
          DataField = 'personTransferredOutDate_dat'
          DataSource = dmPatient.dsqryPersonDetail
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 15
        end
        object RzDBDateTimeEdit1: TRzDBDateTimeEdit
          Left = 799
          Top = 44
          Width = 99
          Height = 25
          DataSource = dmPatient.dsqryPersonDetail
          DataField = 'personRegisteredInSys_dat'
          Color = clWhite
          DisabledColor = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FocusColor = clWhite
          FrameHotStyle = fsLowered
          FrameStyle = fsLowered
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 23
          CalendarColors.Days = clWindowText
          CalendarColors.FillDays = clBtnShadow
          CalendarColors.DaysOfWeek = clWindowText
          CalendarColors.Lines = clBtnShadow
          CalendarColors.SelectedDateBack = clHighlight
          CalendarColors.SelectedDateFore = clHighlightText
          CalendarColors.TodaysDateFrame = clMaroon
          ClockFaceColors.Face = clBtnFace
          ClockFaceColors.Hands = clWindowText
          ClockFaceColors.Numbers = clWindowText
          ClockFaceColors.HourTicks = clBtnShadow
          ClockFaceColors.MinuteTicks = clWindowText
          EditType = etDate
        end
        object RzDBLookupComboBox1: TRzDBLookupComboBox
          Left = 128
          Top = 181
          Width = 278
          Height = 25
          Hint = 'Clinic'
          Ctl3D = False
          DataField = 'Classification_ID'
          DataSource = dmPatient.dsqryPersonDetail
          DropDownRows = 8
          DropDownWidth = 300
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'Classification_ID'
          ListField = 'Description_str'
          ListSource = dmPatient.dsPatientClass
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          FrameController = frcEdit
          FramingPreference = fpCustomFraming
        end
        object RzDBCheckBox1: TRzDBCheckBox
          Left = 582
          Top = 186
          Width = 94
          Height = 21
          Hint = 'Patient Status'
          DataField = 'Foreigner_bol'
          DataSource = dmPatient.dsqryPersonDetail
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Caption = 'Foreigner'
          TabOrder = 24
        end
        object Button2: TButton
          Left = 515
          Top = 214
          Width = 100
          Height = 41
          Action = atnBioMetricEnrol
          Caption = 'Bio Enrol'
          TabOrder = 25
        end
        object Button3: TButton
          Left = 619
          Top = 214
          Width = 100
          Height = 41
          Action = atnVerifyBiometric
          TabOrder = 26
        end
      end
    end
  end
  object atnList: TActionList
    Images = imgToolbar
    Left = 504
    Top = 16
    object atnEdit_Cut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 18
      ShortCut = 16472
    end
    object atnPersonContactPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 70
      OnExecute = atnPersonContactPostExecute
      DataSource = dmPatient.dsqryPersonContact
    end
    object atnPersonContactCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 71
      OnExecute = atnPersonContactCancelExecute
      DataSource = dmPatient.dsqryPersonContact
    end
    object atnEdit_Copy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 20
      ShortCut = 16451
    end
    object atnEdit_Paste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 22
      ShortCut = 16470
    end
    object atnPosition_Print: TAction
      Category = 'Position'
      Caption = '&Print'
      Enabled = False
      Hint = 'Print|Prints the current list of rotation information'
      ImageIndex = 6
    end
    object atnPersonContactInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 63
      OnExecute = atnPersonContactInsertExecute
      DataSource = dmPatient.dsqryPersonContact
    end
    object atnContact_Print: TAction
      Category = 'Contact'
      Caption = '&Print'
      Enabled = False
      Hint = 'Print|Prints the current list of rotation information'
      ImageIndex = 6
    end
    object atnQualification_Print: TAction
      Category = 'Qualification'
      Caption = '&Print'
      Enabled = False
      Hint = 'Print|Prints the current list of rotation information'
      ImageIndex = 6
    end
    object atnComments_Print: TAction
      Category = 'Comments'
      Caption = '&Print'
      Enabled = False
      Hint = 'Print|Prints the current list of rotation information'
      ImageIndex = 6
    end
    object atnPrescriptionEdit: TAction
      Caption = 'Edit Rx'
      OnExecute = atnPrescriptionEditExecute
    end
    object atnPrescriptionAdd: TAction
      Caption = 'Add Rx'
      OnExecute = atnPrescriptionAddExecute
    end
    object atnPrescriptionPrint: TAction
      ImageIndex = 6
      OnExecute = atnPrescriptionPrintExecute
    end
    object atnPosition_NewNumber: TAction
      Category = 'Position'
      Caption = 'Get New IPN Number'
      OnExecute = atnPosition_NewNumberExecute
    end
    object atnpersonContactDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 64
      OnExecute = atnpersonContactDeleteExecute
      DataSource = dmPatient.dsqryPersonContact
    end
    object atnPerosnAllegryInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 65
      OnExecute = atnPerosnAllegryInsertExecute
      DataSource = dmPatient.dsqryPersonAllergies
    end
    object atnPersonAllergyDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 66
      OnExecute = atnPersonAllergyDeleteExecute
      DataSource = dmPatient.dsqryPersonAllergies
    end
    object atnPersonAllergyPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 67
      OnExecute = atnPersonAllergyPostExecute
      DataSource = dmPatient.dsqryPersonAllergies
    end
    object atnPersonAllergyRefresh: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 68
      OnExecute = atnPersonAllergyRefreshExecute
      DataSource = dmPatient.dsqryPersonAllergies
    end
    object atnpersonAllergyCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 69
      OnExecute = atnpersonAllergyCancelExecute
      DataSource = dmPatient.dsqryPersonAllergies
    end
    object atnpersonAnthroInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 72
      OnExecute = atnpersonAnthroInsertExecute
      DataSource = dmPatient.dsqryPersonIdealWeight
    end
    object atnPersonAnthroPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 73
      OnExecute = atnPersonAnthroPostExecute
      DataSource = dmPatient.dsqryPersonIdealWeight
    end
    object atnPersonAnthroDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 74
      OnExecute = atnPersonAnthroDeleteExecute
      DataSource = dmPatient.dsqryPersonIdealWeight
    end
    object atnPersonAnthroCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 75
      OnExecute = atnPersonAnthroCancelExecute
      DataSource = dmPatient.dsqryPersonIdealWeight
    end
    object atnPersonLabResultAdd: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 76
      OnExecute = atnPersonLabResultAddExecute
      DataSource = dmPatient.dsqryLaboratoryResults
    end
    object atnPersonLabResultDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 77
      OnExecute = atnPersonLabResultDeleteExecute
      DataSource = dmPatient.dsqryLaboratoryResults
    end
    object atnPersonLabResultPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 78
      OnExecute = atnPersonLabResultPostExecute
      DataSource = dmPatient.dsqryLaboratoryResults
    end
    object atnPersonLabResultCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 80
      DataSource = dmPatient.dsqryLaboratoryResults
    end
    object atnCommentsInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 82
      DataSource = dmPatient.dsqryPersonComment
    end
    object atnCommentsDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 83
      DataSource = dmPatient.dsqryPersonComment
    end
    object atnCommentsPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 84
      DataSource = dmPatient.dsqryPersonComment
    end
    object atnCommentsCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 85
      DataSource = dmPatient.dsqryPersonComment
    end
    object atnBioMetricEnrol: TAction
      Caption = 'Biometric'
      OnExecute = atnBioMetricEnrolExecute
    end
    object atnVerifyBiometric: TAction
      Caption = 'Bio Verify'
      OnExecute = atnVerifyBiometricExecute
    end
    object atnMedicalAidInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 86
      DataSource = dmPatient.dsqryPersonMedicalAid
    end
    object atnMedicalAidPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 87
      DataSource = dmPatient.dsqryPersonMedicalAid
    end
    object atnMedicalAidCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 88
      DataSource = dmPatient.dsqryPersonMedicalAid
    end
    object atnPrescriptionCopy: TAction
      Caption = 'Copy Rx'
      OnExecute = atnPrescriptionCopyExecute
    end
  end
  object imgToolbar: TImageList
    Left = 440
    Top = 16
    Bitmap = {
      494C010159005A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007001000001002000000000000070
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C3100009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      000000000000000000000000000000000000000000009C3100009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C3100000000000000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE6300009C3100000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C00000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C310000CE630000CE6300009C3100009C3100009C31
      00009C3100009C310000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00000000000000000000000000000000009C310000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      00009C31000000000000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE6300009C310000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000009C31
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C
      9C000000000000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE6300009C310000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      00009C310000CE630000CE630000CE630000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C000000
      00000000000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C310000CE630000CE6300009C3100009C3100009C31
      00009C3100009C310000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000000000009C310000CE630000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE00CECECE00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE6300009C31000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C310000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C3100009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C31000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000B5B5B500CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500B5B5B5009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B5009C9C9C00B5B5B5009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B5009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00B5B5B5009C9C9C00CECECE00B5B5B5009C9C9C00CECE
      CE00B5B5B500B5B5B5009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B500B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C31000000000000B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500CECE
      CE00CECECE00B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100000000000000000000B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CECECE00CECECE00B5B5B5009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C31000000000000000000000000000000000000B5B5
      B50000000000CECECE00CECECE00CECECE00CECECE00CECECE0000000000B5B5
      B500B5B5B500B5B5B5009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000000000000000000000000000B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      0000B5B5B50000000000CECECE00CECECE00CECECE00CECECE00CECECE000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000000000000000000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      000000000000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000319CCE0000639C0000639C0000639C0000639C000063
      9C0000639C0000639C0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
      00000000000000000000319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      00000000000000000000319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C0000000000000000000000000000639C000063
      9C0000639C0000639C0000639C00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      00000000000000000000319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C000000000000000000319CCE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      00000000000000000000319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C000000000000000000319CCE00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C0000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C000000000000000000319CCE009CFFFF00CEFF
      FF009CFFFF009CFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00319CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000639C0000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C000000000000000000319CCE00CEFFFF009CFF
      FF00CEFFFF009CFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00319CCE009CFFFF009CFFFF009CFFFF009CFFFF00319C
      CE00319CCE00319CCE00319CCE0000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE009C9C
      9C009C9C9C009C9C9C009C9C9C000000000000000000319CCE009CFFFF00CEFF
      FF009CFFFF00CEFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C6300CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00319CCE009CFFFF009CFFFF009CFFFF009CFFFF00319C
      CE00CEFFFF0000639C000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE009C9C
      9C00CECECE009C9C9C00000000000000000000000000319CCE00CEFFFF009CFF
      FF00CEFFFF009CFFFF00CEFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300E7E7E700CE9C630000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00009C9C9C00000000009C9C9C000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00319CCE009CFFFF009CFFFF009CFFFF009CFFFF00319C
      CE0000639C00000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00CECECE00CECECE00CECECE00CECECE009C9C
      9C009C9C9C0000000000000000000000000000000000319CCE009CFFFF00CEFF
      FF009CFFFF00CEFFFF009CFFFF00CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C63000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      00009C9C9C009C9C9C00000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00319CCE00319CCE00319CCE00319CCE00319CCE00319C
      CE0000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C000000000000000000000000000000000000000000319CCE00CEFFFF009CFF
      FF00CEFFFF009CFFFF00CEFFFF00CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      00000000000000000000000000000000000000000000319CCE00CEFFFF00CEFF
      FF009CFFFF00CEFFFF009CFFFF00CEFFFF009CFFFF00CEFFFF009CFFFF009CFF
      FF0000639C00000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9C6300CE9C6300CE9C6300CE9C6300000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      00000000000000000000000000000000000000000000319CCE00CEFFFF00CEFF
      FF00CE6300009C3100009C3100009C3100009C3100009C310000CEFFFF009CFF
      FF0000639C00000000000000000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9C6300E7E7E700CE9C630000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00000000009C9C9C0000000000000000000000
      00000000000000000000000000000000000000000000319CCE00CEFFFF00CEFF
      FF00CE630000FFFFFF00FF9C0000FF9C0000FF9C00009C3100009CFFFF00CEFF
      FF0000639C00000000000000000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C00FFFFFF00CECECE00CECECE00CECECE009C9C9C00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9C6300CE9C63000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00319C
      CE00319CCE00CE630000FFFFFF00FF9C00009C310000319CCE00319CCE00319C
      CE000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C00FFFFFF00CECECE009C9C9C009C9C9C009C9C9C009C9C
      9C000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE6300009C3100009C31
      0000CE630000000000000000000000000000000000000000000000000000CE63
      00009C3100009C310000CE6300000000000000000000CECECE009C9C9C009C9C
      9C00CECECE00000000000000000000000000000000000000000000000000CECE
      CE009C9C9C009C9C9C00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE6300009C310000000000000000
      00009C310000CE63000000000000000000000000000000000000CE6300009C31
      000000000000000000009C310000CE630000CECECE009C9C9C00000000000000
      00009C9C9C00CECECE0000000000000000000000000000000000CECECE009C9C
      9C0000000000000000009C9C9C00CECECE000000000000000000000000000000
      0000CE9C63009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B5009C9C9C009C9C9C00B5B5B5000000000000000000000000000000
      000000000000000000000000000000000000CE6300009C310000000000000000
      0000000000009C310000000000000000000000000000000000009C3100000000
      000000000000000000009C310000CE630000CECECE009C9C9C00000000000000
      0000000000009C9C9C00000000000000000000000000000000009C9C9C000000
      000000000000000000009C9C9C00CECECE000000000000000000000000009C31
      00009C310000CE630000CE6300009C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C00CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000CE6300009C3100000000
      0000000000009C310000CE6300000000000000000000CE6300009C3100000000
      0000000000009C310000CE6300000000000000000000CECECE009C9C9C000000
      0000000000009C9C9C00CECECE000000000000000000CECECE009C9C9C000000
      0000000000009C9C9C00CECECE000000000000000000000000009C310000CE63
      0000CE6300009C3100009C310000CE9C63000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300009C31
      00009C3100009C3100009C310000CE630000CE6300009C3100009C3100009C31
      00009C310000CE63000000000000000000000000000000000000CECECE009C9C
      9C009C9C9C009C9C9C009C9C9C00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C00CECECE00000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C3100000000000000000000B5B5B5009C9C9C00CECE
      CE009C9C9C00B5B5B50000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C0000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C63000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00B5B5B5000000000000000000000000009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      0000000000009C3100009C9C9C00FFFFFF00FFFFFF009C9C9C009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00FFFFFF00FFFFFF009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C0000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      0000000000009C9C9C00FFFFFF006363630063636300FFFFFF00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C9C000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C630000000000000000000000000000000000CE9C63009C310000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00B5B5B50000000000000000000000000000000000B5B5B5009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      00009C9C9C00FFFFFF00CECECE00CECECE00FFFFFF0063636300CECECE006363
      6300000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF00CECECE00CECECE00FFFFFF009C9C9C00CECECE009C9C
      9C000000000000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000CE9C63009C3100009C310000CE6300009C31
      0000CE630000CE6300009C3100000000000000000000B5B5B5009C9C9C00CECE
      CE009C9C9C00B5B5B50000000000B5B5B5009C9C9C009C9C9C00CECECE009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE00636363009C9C9C00FFFFFF00CECECE00CECE
      CE00636363000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE009C9C9C009C9C9C00FFFFFF00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C3100009C310000CE630000CE6300009C310000CE9C
      63009C310000CE6300009C3100000000000000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C00CECECE00CECECE009C9C9C00B5B5
      B5009C9C9C00CECECE009C9C9C000000000000000000000000009C9C9C00FFFF
      FF00CECECE00CECECE006363630000000000000000009C9C9C00FFFFFF00CECE
      CE00CECECE0063636300000000000000000000000000000000009C9C9C00FFFF
      FF00CECECE00CECECE009C9C9C0000000000000000009C9C9C00FFFFFF00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000009C31
      00009C310000CE630000CE630000CE6300009C3100009C310000000000000000
      0000000000009C3100009C310000000000000000000000000000000000009C9C
      9C009C9C9C00CECECE00CECECE00CECECE009C9C9C009C9C9C00000000000000
      0000000000009C9C9C009C9C9C0000000000000000009C9C9C00FFFFFF00CECE
      CE00CECECE0063636300000000000000000000000000000000009C9C9C00FFFF
      FF00CECECE00CECECE006363630000000000000000009C9C9C00FFFFFF00CECE
      CE00CECECE009C9C9C00000000000000000000000000000000009C9C9C00FFFF
      FF00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C310000CE9C630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B5009C9C9C009C9C9C009C9C9C00B5B5B50000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00636363000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE00636363009C9C9C00FFFFFF00CECECE00CECE
      CE009C9C9C000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE006363
      6300000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF00CECECE00636363009C9C9C00FFFFFF00CECECE009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00FFFFFF00636363009C9C9C00FFFFFF009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00FFFFFF009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000000000009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63009C310000CE630000CE63
      00009C3100000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00CECECE00CECE
      CE009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE6300009C31000000000000000000009C9C9C0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      0000CE630000CE6300009C310000000000009C9C9C0000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE630000CE630000CE6300009C3100009C9C9C0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      63009C3100000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE009C9C9C00000000000000000000000000CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      0000CE630000CE6300009C310000000000009C9C9C0000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C00CECECE00CECE
      CE00CECECE00CECECE009C9C9C000000000000000000000000009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      00009C310000CE9C6300000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      00009C9C9C00CECECE000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE6300009C31000000000000000000009C9C9C0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C00000000000000000000000000000000009C3100009C31
      00009C3100009C31000000000000000000000000000000000000000000000000
      0000000000009C310000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      00009C3100000000000000000000000000009C9C9C0000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C00CECECE00CECE
      CE009C9C9C0000000000000000000000000000000000000000009C3100009C31
      00009C3100000000000000000000000000000000000000000000000000000000
      0000000000009C310000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE6300009C31
      0000000000000000000000000000000000009C9C9C0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE009C9C
      9C000000000000000000000000000000000000000000000000009C3100009C31
      0000000000009C31000000000000000000000000000000000000000000000000
      0000000000009C310000000000000000000000000000000000009C9C9C009C9C
      9C00000000009C9C9C0000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C3100009C310000CE9C
      6300000000000000000000000000000000009C9C9C0000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C000000000000000000000000000000000000000000000000009C3100000000
      000000000000000000009C3100009C3100000000000000000000000000000000
      00009C310000CE9C6300000000000000000000000000000000009C9C9C000000
      000000000000000000009C9C9C009C9C9C000000000000000000000000000000
      00009C9C9C00CECECE000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000CE9C63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C00CECECE00000000000000000000000000CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300000000000000000000000000000000009C9C9C0000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C9C009C310000CE9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE009C9C9C00CECECE000000000000000000000000000000
      0000000000009C3100009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C9C009C3100009C3100009C310000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00CECECE009C9C9C009C9C9C009C9C9C000000000000000000000000000000
      00009C310000CE6300009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00CECECE009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84009C3100009C3100009C310000CE9C9C00000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84009C9C9C009C9C9C009C9C9C00CECECE000000000000000000000000009C31
      0000CE630000CE6300009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000009C9C
      9C00CECECE00CECECE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C0000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7008484840084848400848484009C31
      00009C3100009C310000CE9C9C0000000000000000009C9C9C0000000000CECE
      CE00CECECE00CECECE00CECECE00CECECE008484840084848400848484009C9C
      9C009C9C9C009C9C9C00CECECE000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7009C9C6300FFFFCE00FFFFCE00FFFFFF00CECE
      9C009C310000CE9C9C000000000000000000000000009C9C9C00000000000000
      00000000000000000000CECECE009C9C9C00E7E7E700E7E7E700FFFFFF00E7E7
      E7009C9C9C00CECECE000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00000000009C9C9C0000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E7009C9C9C00F7EFBD00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF0063636300000000000000000000000000000000009C9C9C0000000000CECE
      CE00CECECE00CECECE009C9C9C00E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00636363000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C9C9C00F7EFBD00FFFFFF00F7EFBD00FFFFCE00FFFF
      CE0063636300000000000000000000000000000000009C9C9C00000000000000
      000000000000000000009C9C9C00E7E7E700FFFFFF00E7E7E700E7E7E700E7E7
      E70063636300000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00000000009C9C9C0000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E7009C9C9C00F7EFBD00FFFFFF00FFFFFF00F7EFBD00FFFF
      CE0063636300000000000000000000000000000000009C9C9C0000000000CECE
      CE00CECECE00CECECE009C9C9C00E7E7E700FFFFFF00FFFFFF00E7E7E700E7E7
      E7006363630000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C9C9C00F7EFBD00F7EFBD00F7EFBD009C9C
      630084848400000000000000000000000000000000009C9C9C00000000000000
      00000000000000000000000000009C9C9C00E7E7E700E7E7E700E7E7E7009C9C
      9C00848484000000000000000000000000000000000000000000000000009C31
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C63000000000000000000000000009C9C
      9C00CECECE00CECECE009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00000000009C9C9C0000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7009C9C9C009C9C9C009C9C9C00E7E7
      E700CE9C6300000000000000000000000000000000009C9C9C0000000000CECE
      CE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C9C009C9C9C00E7E7
      E7009C9C9C000000000000000000000000000000000000000000000000000000
      00009C310000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C00CECECE009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00000000009C9C9C0000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300CE9C
      6300CE9C6300000000000000000000000000000000009C9C9C0000000000CECE
      CE00CECECE00CECECE00CECECE00CECECE00000000009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7E700CE9C
      630000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000000000000000000000000000009C9C9C00E7E7E7009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C0000000000CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00000000009C9C9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C63000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C0000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C31000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0000000000000000000000000000000000000000003131CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000B5B5B500CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500B5B5B5009C9C9C00000000000000000000000000000000003131CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000000000000000000000009C9C9C00E7E7
      E700CECECE009C9C9C0000000000000000000000000000000000000000000000
      000000000000CECECE000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B5009C9C9C00B5B5B5009C9C9C00000000000000000000000000000000003131
      CE000063FF000000CE0000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000009C9C
      9C00E7E7E7009C9C9C0000000000000000000000000000000000000000000000
      0000CECECE00000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B5009C9C9C009C9C9C00000000000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      00009C9C9C00CECECE009C9C9C0000000000000000000000000000000000CECE
      CE009C9C9C00000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00B5B5B5009C9C9C00CECECE00B5B5B5009C9C9C00CECE
      CE00B5B5B500B5B5B5009C9C9C00000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE009C9C9C000000000000000000CECECE009C9C
      9C0000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B500B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C00CECECE009C9C9C00000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C31000000000000B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500CECE
      CE00CECECE00B5B5B500B5B5B5009C9C9C000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00CECECE009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100000000000000000000B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CECECE00CECECE00B5B5B5009C9C9C000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE009C9C9C0000000000000000009C9C9C009C9C
      9C0000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C31000000000000000000000000000000000000B5B5
      B50000000000CECECE00CECECE00CECECE00CECECE00CECECE0000000000B5B5
      B500B5B5B500B5B5B5009C9C9C00000000000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000000000009C9C
      9C009C9C9C00000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000000000000000000000000000B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000B5B5B50000000000000000000000000000000000000000000000CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C00000000000000000000000000000000009C9C9C00E7E7
      E700CECECE009C9C9C0000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      0000B5B5B50000000000CECECE00CECECE00CECECE00CECECE00CECECE000000
      0000B5B5B500000000000000000000000000000000000000000063639C000000
      CE0063639C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000CECECE009C9C
      9C00CECECE000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000000000000000000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      000000000000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C3100009C3100000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C00E7E7E700CECECE009C9C9C00E7E7E700E7E7E700E7E7E7009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00000000009C9C9C000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C00E7E7E700CECECE009C9C9C00E7E7E700E7E7E700E7E7E7009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C00E7E7E700CECECE009C9C9C00E7E7E700E7E7E700E7E7E7009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00000000009C9C9C000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000009C310000CE630000CE63
      0000CE6300009C3100009C3100009C3100009C3100009C3100009C310000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00000000009C9C9C000000000000000000000000009C310000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000009C310000CE630000CE63
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00CECECE00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00000000009C9C9C000000000000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000009C310000CE6300009C31
      0000FFFFFF009C3100009C3100009C3100009C3100009C3100009C310000FFFF
      FF009C310000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00FFFFFF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FFFF
      FF009C9C9C00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C6300000000000000000000000000000000009C9C9C000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00000000009C9C9C009C9C
      9C009C9C9C009C9C9C000000000000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C00CECECE009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7
      E700CE9C630000000000000000000000000000000000000000009C9C9C000000
      00000000000000000000000000000000000000000000000000009C9C9C000000
      00009C9C9C00000000000000000000000000000000009C310000E7E7E7009C31
      0000FFFFFF009C3100009C3100009C3100009C3100009C3100009C310000FFFF
      FF009C3100009C3100009C31000000000000000000009C9C9C00E7E7E7009C9C
      9C00FFFFFF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FFFF
      FF009C9C9C009C9C9C009C9C9C00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      63000000000000000000000000000000000000000000000000009C9C9C000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C0000000000000000000000000000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C31000000000000000000009C9C9C00CECECE009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C00CECECE009C9C9C00000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000009C3100009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C3100009C31000000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700100000100010000000000800B00000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000F3E7000000000000F1C7000000000000
      F88F000000000000FC1F000000000000FE3F000000000000FC1F000000000000
      F88F000000000000F1C7000000000000F3E7000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF3E7FC7FFBFFF1FFF1C7FC7FF1FF
      E0FFF88FFC7FE0FFC47FFC1FE00FC47FCE3FFE3FE00FCE3FFF1FFC1FE00FFF1F
      FF8FF88FFC7FFF8FFFC7F1C7FC7FFFC7FFE7F3E7FC7FFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7FC7FFC7FFFFFF1C7FC7FFC7FFFFF
      F88FFC7FFC7FFFFFFC1FE00FE00FE007FE3FE00FE00FE007FC1FE00FE00FE007
      F88FFC7FFC7FFFFFF1C7FC7FFC7FFFFFF3E7FC7FFC7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7FC7FFFFFF1FFF1C7
      FC7FFFFFE0FFF88FE00FE007C47FFC1FE00FE007CE3FFE3FE00FE007FF1FFC1F
      FC7FFFFFFF8FF88FFC7FFFFFFFC7F1C7FC7FFFFFFFE7F3E7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFBFFFFFFF3E7FC7FF1FFFFFFF1C7
      FC7FE0FFFFFFF88FE00FC47FE007FC1FE00FCE3FE007FE3FE00FFF1FE007FC1F
      FC7FFF8FFFFFF88FFC7FFFC7FFFFF1C7FC7FFFE7FFFFF3E7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF0FFF3E7FBFFF3E7F1FFF1C7F1FFF1C7
      E3FFF88FE0FFF88FE7FFFC1FC47FFC1FE707FE3FCE3FFE3FE387FC1FFF1FFC1F
      E107F88FFF8FF88FF007F1C7FFC7F1C7F837F3E7FFE7F3E7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFFFFFFC7FFFFFF1FF
      FFFFFC7FFFFFE0FFE007E00FE007C47FE007E00FE007CE3FE007E00FE007FF1F
      FFFFFC7FFFFFFF8FFFFFFC7FFFFFFFC7FFFFFC7FFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFF0FFFC7FFC7FFFFFF1FFFC7F
      FC7FFFFFE3FFFC7FE00FE007E7FFE00FE00FE007E707E00FE00FE007E387E00F
      FC7FFFFFE107FC7FFC7FFFFFF007FC7FFC7FFFFFF837FC7FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFFFC3FFC3F80038003FC3FFC3F80038003
      C003C003C007C007C003C003E00FE00FC003C003F01FF01FC003C003F83FF83F
      FC3FFC3FFC7FFC7FFC3FFC3FFEFFFEFFFC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7F0FFFFFFF1FFF1C7F1FF
      FFFFE0FFF88FE3FFE007C47FFC1FE7FFE007CE3FFE3FE707E007FF1FFC1FE387
      FFFFFF8FF88FE107FFFFFFC7F1C7F007FFFFFFE7F3E7F837FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7F0FFFC7FF1FFF1C7F1FFFC7F
      E0FFF88FE3FFFC7FC47FFC1FE7FFE00FCE3FFE3FE707E00FFF1FFC1FE387E00F
      FF8FF88FE107FC7FFFC7F1C7F007FC7FFFE7F3E7F837FC7FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFF3E7F0FFFC7FFFFFF1C7F1FFFC7FFFFF
      F88FE3FFFC7FFFFFFC1FE7FFE00FE007FE3FE707E00FE007FC1FE387E00FE007
      F88FE107FC7FFFFFF1C7F007FC7FFFFFF3E7F837FC7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF0FFFC7FFFFFFBFFF1FFFC7FFFFFF1FF
      E3FFFC7FFFFFE0FFE7FFE00FE007C47FE707E00FE007CE3FE387E00FE007FF1F
      E107FC7FFFFFFF8FF007FC7FFFFFFFC7F837FC7FFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7FC7FFFFFF1FFF1C7
      FC7FFFFFE0FFF88FE00FE007C47FFC1FE00FE007CE3FFE3FE00FE007FF1FFC1F
      FC7FFFFFFF8FF88FFC7FFFFFFFC7F1C7FC7FFFFFFFE7F3E7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7F0FFFFFFF1FFF1C7F1FF
      FFFFE0FFF88FE3FFE007C47FFC1FE7FFE007CE3FFE3FE707E007FF1FFC1FE387
      FFFFFF8FF88FE107FFFFFFC7F1C7F007FFFFFFE7F3E7F837FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFF3E7F0FFFC7FF1FFF1C7F1FFFC7F
      E0FFF88FE3FFFC7FC47FFC1FE7FFE00FCE3FFE3FE707E00FFF1FFC1FE387E00F
      FF8FF88FE107FC7FFFC7F1C7F007FC7FFFE7F3E7F837FC7FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007C007FFFFFFFF
      80038003FFFFFFFF00010001FFFFFFFF00014001FC7FFFFF00014001FC7FFFFF
      00007FF0FC7FFFFF00004000E00FE00780008000E00FE007C000DFE0E00FE007
      E001E821FC7FFFFFE007EFF7FC7FFFFFF007F417FC7FFFFFF003F7FBFFFFFFFF
      F803F803FFFFFFFFFFFFFFFFFFFFFFFFFC01FC01FE00FE00FC01FC01FE00FEFE
      FC01FC01C000C0FEFC01FC01800080FEFC01FC01800080FE80018001800080FE
      8001BC01800080FE8001BC01800080F08003BC03800180F58007BC07800380F3
      800FBC0F80078007803FBFBF80078007803FBC3F80078007807FBD7F80078007
      80FFBCFFC00FC00F81FF81FFFCFFFCFFFFFFFFFF87E187E1FFFFFFFF33CC33CC
      F0FFF0FF3BDC3BDCE0FFE0FF99999999C0FFC0FFC003C00383018301F00FF00F
      87018701F81FF81F8F818F81F81FF81F87818781F00FF00F82018201E007E007
      C001C001C183C183E039E03983C183C1F07FF07F07E007E0FFFFFFFF0FF00FF0
      FFFFFFFF1FF81FF8FFFFFFFF3FFC3FFCFF9FFF9FFFFFFFFFFF8FFF8FFFFFFFFF
      00070007FFFFFFFF00037F83FFFFFFFF00014001FFFFFFFF00007F80FFE7FFE7
      00014001C1F3C1F300037F83C3FBC3FB00074007C7FBC7FB000F7F8FCBFBCBFB
      000F400FDCF3DCF3000F7FEFFF07FF07000F402FFFFFFFFF000F7FEFFFFFFFFF
      000F7FEFFFFFFFFF000F000FFFFFFFFFFFF8FFF8F9FFF9FF80008000F1FFF1FF
      8000BFE0E000E0008001A001C000C1FE8003BC03800080028007A007000001FE
      8007BC07800080028007A007C000C1FE8007BE07E000E0028007A007F000F1FE
      8007BFF7F000F0028007A087F000F7FE800FBF8FF000F402801FBF9FF000F7FE
      803F803FF000F7FEFFFFFFFFF000F000FFFFFFFFFFFFFFFFEFFDEFFDC007C007
      C7FFC7FF80038003C3FBC3FB00010001E3F7E3F700014001F1E7F1E700014001
      F8CFF8CF00007FF0FC1FFC1F00004000FE3FFE3F80008000FC1FFC1FC000DFE0
      F8CFF8CFE001E821E1E7E1E7E007EFF7C3F3C3F3F007F417C7FDC7FDF003F7FB
      FFFFFFFFF803F803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003C001C001
      C003DFFB80018001C003D00B80018001C003DFFB80018001C003D00B80018001
      C003DFFB80018001C003D00B80018001C003DFFB80018001C003D00B80018001
      C003DFFB80018001C003D04380018001C007DFD780018001C00FDFCF80018001
      C01FC01F80018001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object frcEdit: TRzFrameController
    FrameHotStyle = fsLowered
    FrameSides = [sdBottom]
    FrameVisible = True
    FramingPreference = fpCustomFraming
    Left = 472
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 544
    Top = 16
    object cxLabTestHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxBody: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 456
    object Add1: TMenuItem
      Action = atnPrescriptionAdd
    end
    object Edit1: TMenuItem
      Action = atnPrescriptionEdit
    end
    object CopyRx1: TMenuItem
      Action = atnPrescriptionCopy
    end
  end
  object cxsrRegiminDetail: TcxStyleRepository
    Left = 608
    Top = 16
    object cxs01_Content: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxs01_ContentEven: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461355
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxs01_ContentOdd: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461355
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxs01_Footer: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxs01_Group: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxs01_GroupByBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxs01_Header: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Swis721 BT'
      Font.Style = []
      TextColor = clWhite
    end
    object cxs01_Inactive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 85
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxs01_Indicator: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxs01_Preview: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clBlue
    end
    object cxs01_Selection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxsLbl_Background: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clHighlight
    end
    object cxsLbl_CaptionRow: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxsLbl_CardBorder: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxsLbl_Content: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxsLbl_ContentEven: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxsLbl_ContentOdd: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxsLbl_Inactive: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxsLbl_IncSearch: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxsLbl_RowCaption: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxsLbl_Selection: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clWhite
    end
    object gtvsStandard: TcxGridTableViewStyleSheet
      Caption = 'Standard'
      Styles.Content = cxs01_Content
      Styles.ContentEven = cxs01_ContentEven
      Styles.ContentOdd = cxs01_ContentOdd
      Styles.Inactive = cxs01_Inactive
      Styles.Selection = cxs01_Selection
      Styles.Footer = cxs01_Footer
      Styles.Group = cxs01_Group
      Styles.GroupByBox = cxs01_GroupByBox
      Styles.Header = cxs01_Header
      Styles.Indicator = cxs01_Indicator
      Styles.Preview = cxs01_Preview
    end
    object gcvsLabel: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxsLbl_Background
      Styles.Content = cxsLbl_Content
      Styles.ContentEven = cxsLbl_ContentEven
      Styles.ContentOdd = cxsLbl_ContentOdd
      Styles.Inactive = cxsLbl_Inactive
      Styles.IncSearch = cxsLbl_IncSearch
      Styles.Selection = cxsLbl_Selection
      Styles.CaptionRow = cxsLbl_CaptionRow
      Styles.CardBorder = cxsLbl_CardBorder
      Styles.RowCaption = cxsLbl_RowCaption
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 216
    Top = 8
    object PrintPatientLabel2: TMenuItem
      Action = dmPatient.atnPrintPatientLabel
    end
    object PrintbarcodeLabel2: TMenuItem
      Action = dmPatient.atnPrintPatientBarCodeLabel
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrintPatientLabel1: TMenuItem
      Action = dmPatient.atnEditPatientLabel
    end
    object EditPatientBarcodelabel1: TMenuItem
      Action = dmPatient.atnEditBarcodeLabel
    end
    object EditHistory1: TMenuItem
      Action = dmPatient.atnShowEditHistory
    end
  end
  object PopupMenuADR: TPopupMenu
    Left = 552
    Top = 456
    object atnAddADR1: TMenuItem
      Action = dmPatient.atnAddADR
    end
    object atnEditADR1: TMenuItem
      Action = dmPatient.atnEditADR
    end
    object CopyADR1: TMenuItem
      Action = dmPatient.atnCopyADRRecord
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object PrintADRReport1: TMenuItem
      Action = dmPatient.atnPrintBasicADR
    end
  end
  object MenuAdherencePopUp: TPopupMenu
    Left = 592
    Top = 456
    object Copy1: TMenuItem
      Action = dmPatient.atnCopyAdherenceRecord
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 248
    Top = 8
    object EditPatientLabel1: TMenuItem
      Action = dmPatient.atnEditPatientLabel
    end
    object PrintbarcodeLabel1: TMenuItem
      Action = dmPatient.atnPrintPatientBarCodeLabel
    end
  end
end

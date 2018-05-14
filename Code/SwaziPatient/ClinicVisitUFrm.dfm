object ClinicVisitFrm: TClinicVisitFrm
  Left = 310
  Top = 236
  Width = 1036
  Height = 550
  Caption = 'Visit Details'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1020
    Height = 38
    Align = alTop
    Caption = 'Patient'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 202
      Top = 15
      Width = 54
      Height = 13
      Caption = 'Last Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 17
      Width = 45
      Height = 13
      Caption = 'ART No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 595
      Top = 16
      Width = 53
      Height = 13
      Caption = 'First Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 258
      Top = 12
      Width = 329
      Height = 21
      Color = clMoneyGreen
      DataField = 'personLastName_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 60
      Top = 13
      Width = 135
      Height = 21
      Color = clMoneyGreen
      DataField = 'personRefNoCurrent_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit17: TDBEdit
      Left = 650
      Top = 12
      Width = 311
      Height = 21
      Color = clMoneyGreen
      DataField = 'personFirstName_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 480
    Width = 1020
    Height = 32
    Align = alBottom
    TabOrder = 1
    object lblVisitsScheduled: TLabel
      Left = 248
      Top = 8
      Width = 9
      Height = 13
      Caption = '...'
    end
    object dbnvgVisit: TDBNavigator
      Left = 4
      Top = 3
      Width = 232
      Height = 25
      DataSource = PatientDm.dsClinicalVisit
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 770
      Top = 4
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
    object btnPost: TButton
      Left = 672
      Top = 4
      Width = 75
      Height = 25
      Caption = 'POST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = btnPostClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 38
    Width = 1020
    Height = 442
    ActivePage = tbsTBVisit
    Align = alClient
    TabIndex = 3
    TabOrder = 2
    OnChange = PageControl1Change
    object tbsClinicalInformation: TTabSheet
      Caption = 'Clinical Information'
      object grbClinicalInfo: TGroupBox
        Left = 0
        Top = 0
        Width = 1012
        Height = 414
        Align = alClient
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label48: TLabel
          Left = 133
          Top = 352
          Width = 128
          Height = 26
          Caption = 'ID of person making a visit on behalf of patient:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label54: TLabel
          Left = 6
          Top = 392
          Width = 75
          Height = 13
          Caption = 'Family planning:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object gpVisitDates: TGroupBox
          Left = 2
          Top = 15
          Width = 1008
          Height = 72
          Align = alTop
          Caption = 'Visit Information'
          TabOrder = 0
          object Label13: TLabel
            Left = 206
            Top = 13
            Width = 54
            Height = 26
            Alignment = taRightJustify
            Caption = ' Scheduled Date:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label11: TLabel
            Left = 348
            Top = 13
            Width = 33
            Height = 26
            Alignment = taRightJustify
            Caption = 'Actual Visit:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label28: TLabel
            Left = 468
            Top = 15
            Width = 49
            Height = 13
            Caption = 'Visit Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 3
            Top = 12
            Width = 51
            Height = 26
            Alignment = taRightJustify
            Caption = 'Scheduled Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label12: TLabel
            Left = 677
            Top = 16
            Width = 47
            Height = 13
            Caption = 'Next Visit:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label29: TLabel
            Left = 4
            Top = 41
            Width = 52
            Height = 26
            Caption = 'Functional Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label9: TLabel
            Left = 142
            Top = 47
            Width = 67
            Height = 13
            Caption = 'Clinical Stage:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label80: TLabel
            Left = 332
            Top = 49
            Width = 48
            Height = 13
            Caption = 'TB status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 530
            Top = 49
            Width = 59
            Height = 13
            Caption = 'LNMP Date:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 809
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Next Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label21: TLabel
            Left = 809
            Top = 41
            Width = 50
            Height = 26
            Caption = 'Nutritional Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object dteScheduled: TwwDBDateTimePicker
            Left = 262
            Top = 15
            Width = 83
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.NumberColumns = 3
            Color = clWhite
            DataField = 'vstScheduledVisit_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ShowButton = True
            TabOrder = 0
          end
          object dteVisitDate: TwwDBDateTimePicker
            Left = 384
            Top = 15
            Width = 83
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.NumberColumns = 3
            Color = clWhite
            DataField = 'vstVisitDate_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            UnboundDataType = wwDTEdtDate
            OnExit = dteVisitDateExit
          end
          object chkTreatmentPrecribed: TDBCheckBox
            Left = 681
            Top = 48
            Width = 122
            Height = 17
            Caption = 'Treament Prescribed'
            DataField = 'vstTreamentPrescribed_bol'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBComboBox2: TDBComboBox
            Left = 517
            Top = 15
            Width = 147
            Height = 21
            Color = clWhite
            DataField = 'visitType_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Drug Pickup'
              'Lab Specific'
              'Clinical Review'
              'Counselling/H.education'
              'Unscheduled')
            ParentFont = False
            TabOrder = 3
          end
          object DBComboBox6: TDBComboBox
            Left = 57
            Top = 15
            Width = 147
            Height = 21
            Color = clWhite
            DataField = 'vstScheduledTypeVisit_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Drug Pickup'
              'Lab Specific'
              'Clinical Review'
              'Counselling/H.education'
              'Unscheduled')
            ParentFont = False
            TabOrder = 1
          end
          object dteNextVistDate: TwwDBDateTimePicker
            Left = 724
            Top = 15
            Width = 83
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.NumberColumns = 3
            Color = clWhite
            DataField = 'vstNextVisit_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 4
            UnboundDataType = wwDTEdtDate
            OnChange = dteNextVistDateChange
          end
          object cmbFucntional: TDBComboBox
            Left = 57
            Top = 45
            Width = 84
            Height = 21
            Color = clWhite
            DataField = 'vstFunctionalStatus_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Ambulatory'
              'Working'
              'Bedridden')
            ParentFont = False
            TabOrder = 6
          end
          object cmbClinicalStage: TDBComboBox
            Left = 209
            Top = 45
            Width = 96
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'vstClinicalStage_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'I'
              'II'
              'III'
              'IV')
            ParentFont = False
            TabOrder = 7
          end
          object cmbTBStatus: TDBComboBox
            Left = 383
            Top = 45
            Width = 139
            Height = 21
            Color = clWhite
            DataField = 'TBStatus_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Active'
              'Negative'
              'Suspect'
              'Unknown')
            ParentFont = False
            TabOrder = 8
          end
          object dteLNMPDate: TwwDBDateTimePicker
            Left = 596
            Top = 45
            Width = 82
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.StartYear = 1999
            Color = clWhite
            DataField = 'vstPregnancyLNMP_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 10
            UnboundDataType = wwDTEdtDate
          end
          object DBComboBox13: TDBComboBox
            Left = 862
            Top = 15
            Width = 147
            Height = 21
            Color = clWhite
            DataField = 'vstNextVisitType_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Drug Pickup'
              'Lab Specific'
              'Clinical Review'
              'Counselling/H.education'
              'Unscheduled')
            ParentFont = False
            TabOrder = 5
          end
          object DBComboBox14: TDBComboBox
            Left = 862
            Top = 43
            Width = 147
            Height = 21
            Color = clWhite
            DataField = 'vstNutritionalStatus_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Mild'
              'Server'
              'Moderate'
              'Under-Nourished'
              'Well Nourished'
              'Obese')
            ParentFont = False
            TabOrder = 11
          end
        end
        object gpPregnancyBox: TGroupBox
          Left = 2
          Top = 87
          Width = 1008
          Height = 41
          Align = alTop
          TabOrder = 1
          object Label14: TLabel
            Left = 212
            Top = 13
            Width = 59
            Height = 13
            Caption = 'Actual Date:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 72
            Top = 14
            Width = 38
            Height = 13
            Caption = 'EDDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 375
            Top = 13
            Width = 42
            Height = 13
            Caption = 'Trimister:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 482
            Top = 14
            Width = 92
            Height = 13
            Caption = 'Partum Prophylaxis:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbPregnancyChk: TDBCheckBox
            Left = 4
            Top = 12
            Width = 63
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Pregnant:'
            DataField = 'personpregnant_bol'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = dbPregnancyChkClick
          end
          object dteActualDeliveryDate: TwwDBDateTimePicker
            Left = 273
            Top = 9
            Width = 82
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.StartYear = 1999
            Color = clWhite
            DataField = 'vstPregnancyDeliveryDate_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            UnboundDataType = wwDTEdtDate
          end
          object dteExpectedDeliveryDate: TwwDBDateTimePicker
            Left = 125
            Top = 10
            Width = 82
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
            CalendarAttributes.PopupYearOptions.StartYear = 1999
            Color = clWhite
            DataField = 'vstPregnancyExpectedDelivery_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            UnboundDataType = wwDTEdtDate
          end
          object cmbTrimester: TDBComboBox
            Left = 418
            Top = 9
            Width = 55
            Height = 21
            Color = clWhite
            DataField = 'vstPregnancyTrimister_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'I'
              'II'
              'III')
            ParentFont = False
            TabOrder = 3
          end
          object cmbPProphylaxis: TDBComboBox
            Left = 578
            Top = 9
            Width = 152
            Height = 21
            Color = clWhite
            DataField = 'vstPartumProphylaxis_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'NVP alone'
              'NVP with AZT+3TC (1 week)'
              'NONE'
              'NVP with AZT+3TC (1 month)')
            ParentFont = False
            TabOrder = 4
          end
        end
        object gpTreatmentDetails: TGroupBox
          Left = 2
          Top = 128
          Width = 1008
          Height = 163
          Align = alTop
          TabOrder = 2
          object GroupBox11: TGroupBox
            Left = 2
            Top = 7
            Width = 338
            Height = 98
            Caption = '1st ART Treatment'
            TabOrder = 0
            object Label8: TLabel
              Left = 4
              Top = 24
              Width = 51
              Height = 13
              Caption = 'Treatment:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 4
              Top = 48
              Width = 37
              Height = 13
              Caption = 'Started:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 4
              Top = 73
              Width = 43
              Height = 13
              Caption = 'Stopped:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 158
              Top = 73
              Width = 58
              Height = 13
              Caption = 'Stopped By:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dteTreatStopped: TwwDBDateTimePicker
              Left = 53
              Top = 70
              Width = 102
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clWhite
              DataField = 'vstTreatmentStopped_date_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ShowButton = True
              TabOrder = 2
              UnboundDataType = wwDTEdtDate
              OnEnter = dteTreatStoppedEnter
            end
            object cmbStoppedBy: TDBComboBox
              Left = 217
              Top = 69
              Width = 118
              Height = 21
              Color = clWhite
              DataField = 'vstTreatmentStoppedBy_str'
              DataSource = PatientDm.dsClinicalVisit
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Medical'
                'Patient')
              ParentFont = False
              TabOrder = 3
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 53
              Top = 16
              Width = 280
              Height = 21
              Color = clMoneyGreen
              DataField = 'vstRegimenStart_str'
              DataSource = PatientDm.dsClinicalVisit
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Name_Str'
              ListField = 'GroupCode_Str;Name_str'
              ListFieldIndex = 1
              ListSource = PatientDm.dsProtocols
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object wwDBDateTimePicker3: TwwDBDateTimePicker
              Left = 53
              Top = 43
              Width = 102
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clMoneyGreen
              DataField = 'vstRegimenStartDate_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ReadOnly = True
              ShowButton = True
              TabOrder = 1
              UnboundDataType = wwDTEdtDate
              OnEnter = dteTreatStoppedEnter
            end
          end
          object grbProphylacticTreatment: TGroupBox
            Left = 347
            Top = 7
            Width = 602
            Height = 95
            Caption = 'Prophylactic Treatment'
            TabOrder = 1
            object Label15: TLabel
              Left = 3
              Top = 22
              Width = 72
              Height = 13
              Caption = 'Co-Trimoxazole'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 43
              Width = 37
              Height = 13
              Caption = 'Started:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 3
              Top = 68
              Width = 43
              Height = 13
              Caption = 'Stopped:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 140
              Top = 22
              Width = 57
              Height = 13
              Caption = 'Fluconazole'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 145
              Top = 43
              Width = 37
              Height = 13
              Caption = 'Started:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 140
              Top = 66
              Width = 43
              Height = 13
              Caption = 'Stopped:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dteCoStartDate: TwwDBDateTimePicker
              Left = 47
              Top = 40
              Width = 82
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clWhite
              DataField = 'vstPropo_CoTri_Start_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ShowButton = True
              TabOrder = 0
              UnboundDataType = wwDTEdtDate
              OnExit = dteCoStartDateExit
            end
            object dteCoStopDate: TwwDBDateTimePicker
              Left = 47
              Top = 65
              Width = 82
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clWhite
              DataField = 'vstPropo_CoTri_Stopped_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ShowButton = True
              TabOrder = 1
              UnboundDataType = wwDTEdtDate
            end
            object dteFluStartDate: TwwDBDateTimePicker
              Left = 184
              Top = 40
              Width = 82
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clWhite
              DataField = 'vstPropo_Fluconazole_Start_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ShowButton = True
              TabOrder = 2
              UnboundDataType = wwDTEdtDate
              OnExit = dteFluStartDateExit
            end
            object dteFluStopDate: TwwDBDateTimePicker
              Left = 184
              Top = 62
              Width = 82
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
              CalendarAttributes.PopupYearOptions.NumberColumns = 3
              CalendarAttributes.PopupYearOptions.StartYear = 1995
              Color = clWhite
              DataField = 'vstPropo_Fluconazole_Stopped_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MinDate = 36526
              ParentFont = False
              ShowButton = True
              TabOrder = 3
              UnboundDataType = wwDTEdtDate
            end
            object Button1: TButton
              Left = 512
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Add Rx'
              TabOrder = 4
              OnClick = Button1Click
            end
          end
          object grbRegimenChange: TGroupBox
            Left = 2
            Top = 106
            Width = 944
            Height = 53
            Caption = 'Protocol Change'
            TabOrder = 2
            object Label5: TLabel
              Left = 12
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Current:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 208
              Top = 28
              Width = 25
              Height = 13
              Caption = 'New:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 399
              Top = 28
              Width = 51
              Height = 13
              Caption = 'Reason(s):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label47: TLabel
              Left = 744
              Top = 29
              Width = 85
              Height = 13
              Caption = 'Lost to Follow-Up:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 51
              Top = 24
              Width = 145
              Height = 21
              Color = clWhite
              DataField = 'vstRegimenChange_From_str'
              DataSource = PatientDm.dsClinicalVisit
              DropDownRows = 10
              DropDownWidth = 300
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Name_Str'
              ListField = 'GroupCode_Str;Name_str'
              ListFieldIndex = 1
              ListSource = PatientDm.dsProtocols
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 237
              Top = 24
              Width = 145
              Height = 21
              Color = clWhite
              DataField = 'vstRegimenChange_To_str'
              DataSource = PatientDm.dsClinicalVisit
              DropDownRows = 10
              DropDownWidth = 300
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Name_Str'
              ListField = 'GroupCode_Str;Name_str'
              ListFieldIndex = 1
              ListSource = PatientDm.dsProtocols
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 453
              Top = 24
              Width = 241
              Height = 21
              Color = clWhite
              DataField = 'vstRegimenChange_Reason_str'
              DataSource = PatientDm.dsClinicalVisit
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Reason_Str'
              ListField = 'Reason_Str'
              ListSource = PatientDm.dstblReasons
              ParentFont = False
              TabOrder = 2
            end
            object dteLostToFollow: TwwDBDateTimePicker
              Left = 838
              Top = 25
              Width = 84
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clWhite
              DataField = 'vstLostToFollowUpDate_dat'
              DataSource = PatientDm.dsClinicalVisit
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ShowButton = True
              TabOrder = 3
            end
          end
        end
        object gpPeadInfo: TGroupBox
          Left = 2
          Top = 291
          Width = 1008
          Height = 58
          Align = alTop
          Caption = 'Peadatric Details'
          TabOrder = 3
          object Label32: TLabel
            Left = 436
            Top = 25
            Width = 54
            Height = 13
            Caption = 'Wean Age:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtWeanAge: TDBEdit
            Left = 493
            Top = 23
            Width = 69
            Height = 21
            Color = clWhite
            DataField = 'vstWeanAgeYears_int'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cmbFeedingType: TDBRadioGroup
            Left = 1
            Top = 11
            Width = 432
            Height = 42
            Columns = 4
            DataField = 'vstFeedingType_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              '&Breast feeding'
              '&Mixed feeding'
              '&Formula feeding'
              '&Weaned')
            ParentFont = False
            TabOrder = 0
            TabStop = True
            Values.Strings = (
              'B'
              'M'
              'F'
              'W')
            OnChange = cmbFeedingTypeChange
          end
        end
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 358
          Width = 122
          Height = 17
          Caption = 'On behalf of patient'
          DataField = 'vstOnBehalf_bol'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object edtOnBehalf: TDBEdit
          Left = 261
          Top = 354
          Width = 204
          Height = 21
          Color = clWhite
          DataField = 'vstOnBehalfID_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object gpTransfer: TGroupBox
          Left = 472
          Top = 347
          Width = 513
          Height = 67
          Caption = 'Transfers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object Label49: TLabel
            Left = 4
            Top = 45
            Width = 17
            Height = 13
            Caption = 'Out'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 4
            Top = 21
            Width = 9
            Height = 13
            Caption = 'In'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 115
            Top = 43
            Width = 13
            Height = 13
            Caption = 'To'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 113
            Top = 19
            Width = 23
            Height = 13
            Caption = 'From'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object wwDBDateTimePicker10: TwwDBDateTimePicker
            Left = 22
            Top = 41
            Width = 90
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.NumberColumns = 3
            CalendarAttributes.PopupYearOptions.StartYear = 2000
            Color = clWhite
            DataField = 'personTransferredOutDate_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
          end
          object wwDBDateTimePicker11: TwwDBDateTimePicker
            Left = 21
            Top = 13
            Width = 91
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.NumberColumns = 3
            CalendarAttributes.PopupYearOptions.StartYear = 2000
            Color = clWhite
            DataField = 'personTransferredInDate_dat'
            DataSource = PatientDm.dsClinicalVisit
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
          end
          object DBEdit22: TDBEdit
            Left = 138
            Top = 41
            Width = 188
            Height = 21
            Color = clWhite
            DataField = 'personTransferredOutTo_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit23: TDBEdit
            Left = 138
            Top = 13
            Width = 188
            Height = 21
            Color = clWhite
            DataField = 'personTransferredInFrom_str'
            DataSource = PatientDm.dsClinicalVisit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBComboBox5: TDBComboBox
          Left = 82
          Top = 389
          Width = 185
          Height = 21
          Color = clWhite
          DataField = 'familyPlanning_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Oral contraception (Pills)'
            'Injection contraception'
            'Intrauterine device (IUD)'
            'Emergency contraception'
            'Condoms'
            'Sterilisation')
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object tbsVisitNotes: TTabSheet
      Caption = 'Visit Notes'
      ImageIndex = 1
      object RzDBMemo1: TRzDBMemo
        Left = 0
        Top = 0
        Width = 1020
        Height = 89
        Align = alTop
        Color = clWhite
        DataField = 'notes_mem'
        DataSource = PatientDm.dsClinicalVisit
        TabOrder = 0
        FocusColor = clWhite
      end
      object dxDBVisitNotesHisotry: TdxDBGrid
        Left = 0
        Top = 89
        Width = 1020
        Height = 328
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Visit_ID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        Color = clWhite
        PopupMenu = PopupMenuVisitNotesHistory
        TabOrder = 1
        DataSource = PatientDm.dsVisitNotesHistory
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoCaseInsensitive, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        RegistryPath = '\Software\RxSolutionAPM\VisitNotesHistory'
        ShowPreviewGrid = False
        object dxDBVisitNotesHisotryvstVisitDate_dat: TdxDBGridColumn
          Caption = 'Visit date'
          DisableEditor = True
          Width = 142
          BandIndex = 0
          RowIndex = 0
          FieldName = 'vstVisitDate_dat'
        end
        object dxDBVisitNotesHisotrynotes_mem: TdxDBGridMemoColumn
          Caption = 'Notes'
          DisableEditor = True
          Width = 231
          BandIndex = 0
          RowIndex = 0
          FieldName = 'notes_mem'
        end
        object dxDBVisitNotesHisotryvisitType_str: TdxDBGridColumn
          Caption = 'Type'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'visitType_str'
        end
        object dxDBVisitNotesHisotryvstFunctionalStatus_str: TdxDBGridColumn
          Caption = 'Functional Status'
          DisableEditor = True
          Visible = False
          Width = 164
          BandIndex = 0
          RowIndex = 0
          FieldName = 'vstFunctionalStatus_str'
        end
        object dxDBVisitNotesHisotryvstClinicalStage_str: TdxDBGridColumn
          Caption = 'Clinical Stage'
          DisableEditor = True
          Visible = False
          Width = 197
          BandIndex = 0
          RowIndex = 0
          FieldName = 'vstClinicalStage_str'
        end
        object dxDBVisitNotesHisotryvstRegimenChange_From_str: TdxDBGridColumn
          Caption = 'Regimen Change From'
          DisableEditor = True
          Visible = False
          Width = 162
          BandIndex = 0
          RowIndex = 0
          FieldName = 'vstRegimenChange_From_str'
        end
      end
    end
    object tbsOIs: TTabSheet
      Caption = 'OIs'
      ImageIndex = 2
      object dbOINavigator: TDBNavigator
        Left = 0
        Top = 0
        Width = 1020
        Height = 25
        DataSource = PatientDm.dsVisitOIs
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
        Align = alTop
        Flat = True
        TabOrder = 0
      end
      object dxVisitOIs: TdxDBGrid
        Left = 0
        Top = 25
        Width = 1020
        Height = 328
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'VisitOI_ID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        Color = clWhite
        TabOrder = 1
        DataSource = PatientDm.dsVisitOIs
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoCaseInsensitive, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        RegistryPath = '\Software\RxSolutionAPM\OpportunisticInfections'
        ShowPreviewGrid = False
        object dxVisitOIsVisitOI_ID: TdxDBGridMaskColumn
          Visible = False
          Width = 261
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VisitOI_ID'
        end
        object dxVisitOIsVisit_ID: TdxDBGridColumn
          Visible = False
          Width = 944
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Visit_ID'
        end
        object dxVisitOIsOI_Description: TdxDBGridPickColumn
          Caption = 'Description'
          Width = 278
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OI_Description'
          ImmediateDropDown = False
        end
        object dxVisitOIsNote_Str: TdxDBGridMemoColumn
          Caption = 'Note'
          Width = 675
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note_Str'
        end
      end
    end
    object tbsTBVisit: TTabSheet
      Caption = 'TB '
      ImageIndex = 3
      object Label78: TLabel
        Left = 357
        Top = 220
        Width = 43
        Height = 13
        Caption = 'IPT start:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label79: TLabel
        Left = 517
        Top = 220
        Width = 43
        Height = 13
        Caption = 'IPT stop:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label82: TLabel
        Left = 383
        Top = 291
        Width = 70
        Height = 13
        Caption = 'Outcome date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label81: TLabel
        Left = 5
        Top = 291
        Width = 46
        Height = 13
        Caption = 'Outcome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 487
        Top = 258
        Width = 51
        Height = 13
        Caption = 'Reason(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 224
        Top = 250
        Width = 58
        Height = 26
        Caption = 'Regimen Changed to:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label39: TLabel
        Left = 5
        Top = 255
        Width = 42
        Height = 13
        Caption = 'Regimen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 555
        Top = 291
        Width = 60
        Height = 13
        Caption = 'TB Stopped:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 4
        Top = 321
        Width = 93
        Height = 26
        Caption = 'If Stopped, then reason for stopping:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label22: TLabel
        Left = 5
        Top = 220
        Width = 59
        Height = 13
        Caption = 'INH Started:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 167
        Top = 220
        Width = 65
        Height = 13
        Caption = 'INH Stopped:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBCheckBox2: TDBCheckBox
        Left = 5
        Top = 195
        Width = 258
        Height = 17
        Caption = 'IPT (Isonaizid Prophylaxic Treatment))'
        Color = clBtnFace
        DataField = 'IPT_bol'
        DataSource = PatientDm.dsClinicalVisit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnExit = DBCheckBox2Exit
      end
      object dteIPTStart: TwwDBDateTimePicker
        Left = 414
        Top = 217
        Width = 84
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'IPTStart_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
        Visible = False
      end
      object dteIPTStop: TwwDBDateTimePicker
        Left = 569
        Top = 217
        Width = 84
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'IPTStop_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        Visible = False
      end
      object wwDBDateTimePicker9: TwwDBDateTimePicker
        Left = 454
        Top = 291
        Width = 85
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'TBOutcome_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 8
      end
      object DBComboBox4: TDBComboBox
        Left = 64
        Top = 291
        Width = 313
        Height = 21
        Color = clWhite
        DataField = 'TBOutcome_str'
        DataSource = PatientDm.dsClinicalVisit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Completed'
          'Defaulted'
          'Died'
          'Stopped due to adverse effects'
          'Cured'
          'Transferred Out')
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 285
        Top = 254
        Width = 146
        Height = 21
        Color = clWhite
        DataField = 'TBRegimenChangeTo_str'
        DataSource = PatientDm.dsClinicalVisit
        DropDownRows = 10
        DropDownWidth = 300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Name_Str'
        ListField = 'GroupCode_Str;Name_str'
        ListFieldIndex = 1
        ListSource = PatientDm.dsTBProtocols
        ParentFont = False
        TabOrder = 11
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 541
        Top = 254
        Width = 242
        Height = 21
        Color = clWhite
        DataField = 'TBRegimenChangeReason_str'
        DataSource = PatientDm.dsClinicalVisit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Reason_Str'
        ListField = 'Reason_Str'
        ListSource = PatientDm.dstblReasons
        ParentFont = False
        TabOrder = 6
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 64
        Top = 254
        Width = 146
        Height = 21
        Color = clWhite
        DataField = 'TBRegimen_str'
        DataSource = PatientDm.dsClinicalVisit
        DropDownRows = 10
        DropDownWidth = 300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Name_Str'
        ListField = 'GroupCode_Str;Name_str'
        ListFieldIndex = 1
        ListSource = PatientDm.dsTBProtocols
        ParentFont = False
        TabOrder = 5
      end
      object dteTBStopDate: TwwDBDateTimePicker
        Left = 617
        Top = 291
        Width = 82
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
        CalendarAttributes.PopupYearOptions.NumberColumns = 3
        CalendarAttributes.PopupYearOptions.StartYear = 1995
        Color = clWhite
        DataField = 'vstPropo_TBTreatment_Stopped_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MinDate = 36526
        ParentFont = False
        ShowButton = True
        TabOrder = 9
        UnboundDataType = wwDTEdtDate
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 100
        Top = 324
        Width = 276
        Height = 21
        Color = clWhite
        DataField = 'TBReasonStoppingTBTreatment_str'
        DataSource = PatientDm.dsClinicalVisit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Reason_Str'
        ListField = 'Reason_Str'
        ListSource = PatientDm.dstblReasons
        ParentFont = False
        TabOrder = 10
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1012
        Height = 52
        Align = alTop
        TabOrder = 12
        object Label86: TLabel
          Left = 163
          Top = 18
          Width = 54
          Height = 13
          Caption = 'Scheduled:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 5
          Top = 18
          Width = 54
          Height = 26
          Caption = 'Scheduled Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label85: TLabel
          Left = 306
          Top = 18
          Width = 46
          Height = 13
          Caption = 'Visit date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 444
          Top = 18
          Width = 49
          Height = 13
          Caption = 'Visit Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 595
          Top = 18
          Width = 46
          Height = 13
          Caption = 'Next visit:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 730
          Top = 18
          Width = 46
          Height = 26
          Caption = 'Next visit type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object wwDBDateTimePicker7: TwwDBDateTimePicker
          Left = 219
          Top = 19
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBScheduled_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ShowButton = True
          TabOrder = 1
        end
        object DBComboBox10: TDBComboBox
          Left = 63
          Top = 16
          Width = 95
          Height = 21
          Color = clWhite
          DataField = 'TBScheduledVisitType_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Drug Pickup'
            'Lab Specific'
            'Clinical Review'
            'Counselling/H.education')
          ParentFont = False
          TabOrder = 0
        end
        object wwDBDateTimePicker6: TwwDBDateTimePicker
          Left = 355
          Top = 20
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBVisit_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 2
        end
        object DBComboBox7: TDBComboBox
          Left = 494
          Top = 20
          Width = 95
          Height = 21
          Color = clWhite
          DataField = 'TBVisitType_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Drug Pickup'
            'Lab Specific'
            'Clinical Review'
            'Counselling/H.education'
            'Unscheduled')
          ParentFont = False
          TabOrder = 3
        end
        object wwDBDateTimePicker8: TwwDBDateTimePicker
          Left = 642
          Top = 20
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBNextVisit_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 4
        end
        object DBComboBox9: TDBComboBox
          Left = 777
          Top = 20
          Width = 95
          Height = 21
          Color = clWhite
          DataField = 'TBNextVisitType_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Drug Pickup'
            'Lab Specific'
            'Clinical Review'
            'Counselling/H.education'
            'Unscheduled')
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 52
        Width = 1012
        Height = 140
        Align = alTop
        TabOrder = 13
        object Label74: TLabel
          Left = 5
          Top = 19
          Width = 54
          Height = 13
          Caption = 'Diagnosed:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TLabel
          Left = 156
          Top = 107
          Width = 55
          Height = 26
          Caption = 'Expected Completion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label25: TLabel
          Left = 5
          Top = 107
          Width = 51
          Height = 26
          Caption = 'Started Treatment:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label76: TLabel
          Left = 22
          Top = 50
          Width = 38
          Height = 13
          Caption = 'TB Site:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label77: TLabel
          Left = 5
          Top = 87
          Width = 45
          Height = 13
          Caption = 'Category:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 305
          Top = 78
          Width = 51
          Height = 26
          Caption = 'Treatment Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label43: TLabel
          Left = 530
          Top = 50
          Width = 70
          Height = 13
          Caption = 'Sputum smear:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 306
          Top = 50
          Width = 97
          Height = 13
          Caption = 'Extra pulmonary site:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 157
          Top = 19
          Width = 39
          Height = 13
          Caption = 'Method:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 305
          Top = 107
          Width = 59
          Height = 26
          Caption = 'Continuation Phase'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 62
          Top = 19
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBDiagnosis_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 0
          OnExit = wwDBDateTimePicker1Exit
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 213
          Top = 111
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBExpectedCompletion_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 8
        end
        object dteTBStartDate: TwwDBDateTimePicker
          Left = 62
          Top = 111
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
          CalendarAttributes.PopupYearOptions.NumberColumns = 3
          CalendarAttributes.PopupYearOptions.StartYear = 1995
          Color = clWhite
          DataField = 'vstPropo_TBTreatment_Start_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MinDate = 36526
          ParentFont = False
          ShowButton = True
          TabOrder = 7
          UnboundDataType = wwDTEdtDate
          OnExit = dteTBStartDateExit
        end
        object DBComboBox1: TDBComboBox
          Left = 63
          Top = 50
          Width = 235
          Height = 21
          Color = clWhite
          DataField = 'TBSite_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Pulmonary'
            'Extra Pulmonary')
          ParentFont = False
          TabOrder = 2
        end
        object DBComboBox3: TDBComboBox
          Left = 62
          Top = 83
          Width = 235
          Height = 21
          Color = clWhite
          DataField = 'TBCategory_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'I (New)'
            'II (Retreatment/Relapse)'
            'III (PAEDS)'
            'IV (MDR/XDR)')
          ParentFont = False
          TabOrder = 5
        end
        object DBComboBox8: TDBComboBox
          Left = 368
          Top = 83
          Width = 313
          Height = 21
          Color = clWhite
          DataField = 'TBReTreatmentType_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'New'
            'Retreatment'
            'Relapse')
          ParentFont = False
          TabOrder = 6
        end
        object DBComboBox11: TDBComboBox
          Left = 606
          Top = 50
          Width = 218
          Height = 21
          Color = clWhite
          DataField = 'TBSputumSmear_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Negative'
            'Positive'
            'Not Done')
          ParentFont = False
          TabOrder = 4
        end
        object edtExtraPulmonary: TDBEdit
          Left = 406
          Top = 47
          Width = 121
          Height = 21
          Color = clWhite
          DataField = 'TBExtraPulmonarySite_str'
          DataSource = PatientDm.dsClinicalVisit
          TabOrder = 3
        end
        object DBComboBox12: TDBComboBox
          Left = 207
          Top = 20
          Width = 235
          Height = 21
          Color = clWhite
          DataField = 'TBDiagnosedMethod_str'
          DataSource = PatientDm.dsClinicalVisit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Smear'
            'Suggestive X-Ray'
            'Clinical'
            'Culture'
            'Biopsy'
            'CSF'
            'Scan'
            'Other (Specify)')
          ParentFont = False
          TabOrder = 1
        end
        object dteTBContinuationPhase: TwwDBDateTimePicker
          Left = 368
          Top = 111
          Width = 84
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clWhite
          DataField = 'TBContinuationPhase_dat'
          DataSource = PatientDm.dsClinicalVisit
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 9
        end
      end
      object dteINHStopDate: TwwDBDateTimePicker
        Left = 246
        Top = 217
        Width = 82
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
        CalendarAttributes.PopupYearOptions.NumberColumns = 3
        CalendarAttributes.PopupYearOptions.StartYear = 1995
        Color = clWhite
        DataField = 'vstPropo_INH_Stopped_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MinDate = 36526
        ParentFont = False
        ShowButton = True
        TabOrder = 4
        UnboundDataType = wwDTEdtDate
      end
      object dteINHStartDate: TwwDBDateTimePicker
        Left = 64
        Top = 217
        Width = 82
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.PopupYearOptions.YearsPerColumn = 15
        CalendarAttributes.PopupYearOptions.NumberColumns = 3
        CalendarAttributes.PopupYearOptions.StartYear = 1995
        Color = clWhite
        DataField = 'vstPropo_INH_Start_dat'
        DataSource = PatientDm.dsClinicalVisit
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MinDate = 36526
        ParentFont = False
        ShowButton = True
        TabOrder = 3
        UnboundDataType = wwDTEdtDate
        OnExit = dteINHStartDateExit
      end
    end
    object tbsNutritionalPage: TTabSheet
      Caption = 'Nutritional Page'
      ImageIndex = 4
      object dbNutritionalNavigator: TDBNavigator
        Left = 0
        Top = 0
        Width = 1020
        Height = 25
        DataSource = PatientDm.dsVisitNutrition
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
        Align = alTop
        Flat = True
        TabOrder = 0
      end
      object dxNutritionalGrid: TcxGrid
        Left = 0
        Top = 25
        Width = 1020
        Height = 393
        Align = alClient
        TabOrder = 1
        object dxNutritionalGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = PatientDm.dsVisitNutrition
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'Nutrition_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsView.ColumnAutoWidth = True
          object dxNutritionalGridDBTableView1DBFoodName_str: TcxGridDBColumn
            Caption = 'Name'
            Width = 195
            DataBinding.FieldName = 'FoodName_str'
          end
          object dxNutritionalGridDBTableView1DBFoodType_str: TcxGridDBColumn
            Caption = 'Type'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'fruits'
              'vegetables'
              'carbohydrates'
              'Uni-mix'
              'proteins')
            Width = 164
            DataBinding.FieldName = 'FoodType_str'
          end
          object dxNutritionalGridDBTableView1DBFoodWeight_dbl: TcxGridDBColumn
            Caption = 'Weight (kg)'
            Width = 165
            DataBinding.FieldName = 'FoodWeight_dbl'
          end
          object dxNutritionalGridDBTableView1DBSource_str: TcxGridDBColumn
            Caption = 'Source'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'foodSource_str'
            Properties.ListColumns = <
              item
                FieldName = 'foodSource_str'
              end>
            Properties.ListSource = PatientDm.dsFoodSources
            Width = 268
            DataBinding.FieldName = 'Source_str'
          end
          object dxNutritionalGridDBTableView1DBkitCompleted_bol: TcxGridDBColumn
            Caption = 'Kit Complete?'
            Width = 105
            DataBinding.FieldName = 'kitCompleted_bol'
          end
          object dxNutritionalGridDBTableView1DBcompleteDiet_bol: TcxGridDBColumn
            Caption = 'Complete Diet'
            Width = 121
            DataBinding.FieldName = 'completeDiet_bol'
          end
        end
        object dxNutritionalGridLevel1: TcxGridLevel
          GridView = dxNutritionalGridDBTableView1
        end
      end
    end
  end
  object PopupMenuVisitNotesHistory: TPopupMenu
    Left = 928
    Top = 280
    object atnVisitHistoryColumnDisplay1: TMenuItem
      Action = atnVisitHistoryColumnDisplay
    end
  end
  object ActionList1: TActionList
    Left = 984
    Top = 16
    object atnVisitHistoryColumnDisplay: TAction
      Caption = 'Column Display'
      OnExecute = atnVisitHistoryColumnDisplayExecute
    end
  end
end

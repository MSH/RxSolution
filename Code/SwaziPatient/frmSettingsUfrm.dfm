object SettingsFrm: TSettingsFrm
  Left = 580
  Top = 250
  Width = 482
  Height = 461
  BorderIcons = [biSystemMenu]
  Caption = 'System Settings '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 474
    Height = 427
    Align = alClient
    TabOrder = 0
    object Label45: TLabel
      Left = 9
      Top = 21
      Width = 143
      Height = 20
      Caption = 'Report Period From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label61: TLabel
      Left = 264
      Top = 21
      Width = 22
      Height = 20
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 111
      Top = 21
      Width = 130
      Height = 28
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.YearsPerColumn = 20
      CalendarAttributes.PopupYearOptions.NumberColumns = 3
      CalendarAttributes.PopupYearOptions.StartYear = 1960
      DataField = 'ReportStart_dat'
      DataSource = MainDm.dsSystem
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 0
      UnboundDataType = wwDTEdtDate
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 288
      Top = 21
      Width = 130
      Height = 28
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.YearsPerColumn = 20
      CalendarAttributes.PopupYearOptions.NumberColumns = 3
      CalendarAttributes.PopupYearOptions.StartYear = 1960
      DataField = 'ReportEnd_dat'
      DataSource = MainDm.dsSystem
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 1
      UnboundDataType = wwDTEdtDate
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 48
      Width = 449
      Height = 200
      Caption = 'Report type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object lblInterval: TLabel
        Left = 209
        Top = 61
        Width = 102
        Height = 20
        Caption = 'Interval (1-36):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblLength: TLabel
        Left = 9
        Top = 61
        Width = 91
        Height = 20
        Caption = 'Length (1-6):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 339
        Top = 17
        Width = 4
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblTmp1: TLabel
        Left = 9
        Top = 104
        Width = 73
        Height = 20
        Caption = 'Start Year'
      end
      object lblTmp3: TLabel
        Left = 9
        Top = 144
        Width = 84
        Height = 20
        Caption = 'Start Month'
      end
      object lblTmp2: TLabel
        Left = 209
        Top = 104
        Width = 67
        Height = 20
        Caption = 'End Year'
      end
      object lblTmp4: TLabel
        Left = 209
        Top = 144
        Width = 78
        Height = 20
        Caption = 'End Month'
      end
      object lblTmp5: TLabel
        Left = 9
        Top = 168
        Width = 37
        Height = 20
        Caption = 'Clinic'
      end
      object edtInterval: TRzDBNumericEdit
        Left = 320
        Top = 60
        Width = 65
        Height = 28
        DataSource = MainDm.dsSystem
        DataField = 'CohortInterval'
        TabOrder = 1
        Max = 36
        Min = 1
        Value = 1
        DisplayFormat = ',0;(,0)'
      end
      object edtLength: TRzDBNumericEdit
        Left = 104
        Top = 61
        Width = 65
        Height = 28
        DataSource = MainDm.dsSystem
        DataField = 'CohortLength'
        TabOrder = 0
        Max = 6
        Min = 1
        Value = 1
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit4: TRzDBNumericEdit
        Left = 104
        Top = 97
        Width = 65
        Height = 28
        DataSource = MainDm.dsSystem
        DataField = 'Temp01'
        TabOrder = 2
        Max = 10000
        Min = 1
        Value = 1
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit10: TRzDBNumericEdit
        Left = 320
        Top = 97
        Width = 65
        Height = 28
        DataSource = MainDm.dsSystem
        DataField = 'Temp02'
        TabOrder = 3
        Max = 10000
        Min = 1
        Value = 1
        DisplayFormat = ',0;(,0)'
      end
      object rdReportType: TRadioGroup
        Left = 2
        Top = 22
        Width = 445
        Height = 38
        Align = alTop
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Cohort'
          'EWI')
        ParentFont = False
        TabOrder = 4
        OnClick = rdReportTypeClick
      end
      object cmbTmp5: TDBLookupComboBox
        Left = 104
        Top = 167
        Width = 283
        Height = 28
        DataField = 'Temp05'
        DataSource = MainDm.dsSystem
        ListSource = PatientDm.dsPAtientClass
        TabOrder = 5
      end
      object edtTmp4: TDBEdit
        Left = 320
        Top = 136
        Width = 65
        Height = 28
        DataField = 'Temp04'
        DataSource = MainDm.dsSystem
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 136
        Width = 65
        Height = 28
        DataField = 'Temp03'
        DataSource = MainDm.dsSystem
        TabOrder = 7
      end
    end
    object gbTicketNumber: TGroupBox
      Left = 15
      Top = 248
      Width = 450
      Height = 98
      Caption = 'Ticket Number '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 16
        Top = 24
        Width = 81
        Height = 20
        Caption = 'Last Ticket:'
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 60
        Height = 20
        Caption = 'Last Set'
      end
      object RzDBNumericEdit2: TRzDBNumericEdit
        Left = 136
        Top = 21
        Width = 121
        Height = 28
        DataSource = MainDm.dsTicketNumber
        DataField = 'Record_Number'
        TabOrder = 0
        Max = 10000
        Min = 1
        Value = 1
        DisplayFormat = ',0;(,0)'
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 136
        Top = 64
        Width = 121
        Height = 28
        DataSource = MainDm.dsTicketNumber
        DataField = 'Record_DateSet'
        ReadOnly = True
        TabOrder = 1
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
    end
    object Button1: TButton
      Left = 24
      Top = 353
      Width = 98
      Height = 27
      Caption = '&Save && Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object BitBtn1: TBitBtn
      Left = 305
      Top = 352
      Width = 99
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Kind = bkClose
    end
    object Button2: TButton
      Left = 165
      Top = 352
      Width = 98
      Height = 28
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
end

object AddPatientFrm: TAddPatientFrm
  Left = 446
  Top = 272
  Width = 748
  Height = 402
  Caption = 'New Patient '
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
  object grpPatientIdentifiers: TGroupBox
    Left = 0
    Top = 0
    Width = 740
    Height = 156
    Align = alTop
    Caption = 'Patient Identifiers'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 3
      Top = 47
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
    object Label5: TLabel
      Left = 396
      Top = 37
      Width = 31
      Height = 26
      BiDiMode = bdRightToLeft
      Caption = 'Other Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 31
      Top = 133
      Width = 26
      Height = 13
      Caption = 'DOB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 398
      Top = 72
      Width = 32
      Height = 13
      Caption = 'Initials:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 396
      Top = 21
      Width = 34
      Height = 13
      Caption = 'ID No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 73
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
    object Label1: TLabel
      Left = 19
      Top = 103
      Width = 38
      Height = 13
      Caption = 'Gender:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 7
      Top = 22
      Width = 49
      Height = 13
      Caption = 'Serial No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 205
      Top = 22
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
    object Label25: TLabel
      Left = 524
      Top = 73
      Width = 28
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = 'Clinic:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label70: TLabel
      Left = 397
      Top = 103
      Width = 54
      Height = 13
      Caption = 'Entry Point:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label79: TLabel
      Left = 180
      Top = 103
      Width = 41
      Height = 13
      Caption = 'Religion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 59
      Top = 44
      Width = 311
      Height = 21
      Color = clWhite
      DataField = 'personLastName_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 432
      Top = 44
      Width = 287
      Height = 21
      Color = clWhite
      DataField = 'personKnownName_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 59
      Top = 92
      Width = 118
      Height = 32
      Columns = 2
      DataField = 'personGender_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        '&Female'
        '&Male')
      ParentFont = False
      TabOrder = 4
      Values.Strings = (
        'F'
        'M')
    end
    object DBEdit9: TDBEdit
      Left = 432
      Top = 70
      Width = 70
      Height = 21
      Color = clWhite
      DataField = 'personInitials_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object dbeIDNo: TDBEdit
      Left = 432
      Top = 18
      Width = 99
      Height = 21
      Color = clWhite
      DataField = 'personIDNumber_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dtpDOB: TwwDBDateTimePicker
      Left = 59
      Top = 129
      Width = 82
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.YearsPerColumn = 20
      CalendarAttributes.PopupYearOptions.NumberColumns = 3
      CalendarAttributes.PopupYearOptions.StartYear = 1960
      Color = clWhite
      DataField = 'personDOB_Dat'
      DataSource = PatientDm.dsPatient
      Date = 38631
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 6
      UnboundDataType = wwDTEdtDate
    end
    object DBEdit17: TDBEdit
      Left = 59
      Top = 70
      Width = 311
      Height = 21
      Color = clWhite
      DataField = 'personFirstName_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbSerialNo: TDBEdit
      Left = 59
      Top = 18
      Width = 135
      Height = 21
      Color = clWhite
      DataField = 'personPAS_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbArtNo: TDBEdit
      Left = 253
      Top = 18
      Width = 117
      Height = 21
      Color = clWhite
      DataField = 'personRefNoCurrent_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbClinicLkUp: TDBLookupComboBox
      Left = 555
      Top = 69
      Width = 165
      Height = 21
      Color = clWhite
      DataField = 'personInstitution_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'clinicName_str'
      ListField = 'clinicName_str'
      ListSource = PatientDm.dsClinics
      ParentFont = False
      TabOrder = 12
    end
    object DBCheckBox11: TDBCheckBox
      Left = 533
      Top = 20
      Width = 55
      Height = 17
      Caption = 'Active'
      DataField = 'personActive_Bol'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox12: TDBCheckBox
      Left = 600
      Top = 20
      Width = 114
      Height = 17
      Caption = 'Temporary Patient'
      DataField = 'vstTempPatient_bol'
      DataSource = PatientDm.dsPatient
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
    object edtEntryPoint: TDBEdit
      Left = 456
      Top = 98
      Width = 264
      Height = 21
      Color = clWhite
      DataField = 'EntryPoint_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 222
      Top = 98
      Width = 149
      Height = 21
      Color = clWhite
      DataField = 'personReligion_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Religion_ID'
      ListField = 'ReligionDescription_str'
      ListSource = PatientDm.dsReligion
      ParentFont = False
      TabOrder = 5
    end
  end
  object grpStatus: TGroupBox
    Left = 0
    Top = 156
    Width = 740
    Height = 149
    Align = alTop
    Caption = 'Status'
    TabOrder = 1
    object Label36: TLabel
      Left = 156
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Enrolled:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 4
      Top = 94
      Width = 77
      Height = 13
      Caption = 'Eligibility Criteria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label64: TLabel
      Left = 4
      Top = 64
      Width = 28
      Height = 13
      Caption = 'Class:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 4
      Top = 16
      Width = 54
      Height = 13
      Caption = 'Diagnosed:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 4
      Top = 42
      Width = 47
      Height = 13
      Caption = 'ART Start'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label77: TLabel
      Left = 292
      Top = 94
      Width = 24
      Height = 13
      Caption = 'CD4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label78: TLabel
      Left = 386
      Top = 94
      Width = 59
      Height = 13
      Caption = 'WHO stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label74: TLabel
      Left = 6
      Top = 124
      Width = 73
      Height = 13
      Caption = 'First Treatment:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label75: TLabel
      Left = 392
      Top = 124
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
    object dteEnrolled: TwwDBDateTimePicker
      Left = 204
      Top = 11
      Width = 84
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clWhite
      DataField = 'personDateJoined_dat'
      DataSource = PatientDm.dsPatient
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 60
      Top = 62
      Width = 228
      Height = 21
      Color = clWhite
      DataField = 'Classification_ID'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Classification_ID'
      ListField = 'Description_str'
      ListSource = PatientDm.dsPAtientClass
      ParentFont = False
      TabOrder = 3
    end
    object dteDiagnosis: TwwDBDateTimePicker
      Left = 60
      Top = 11
      Width = 84
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clWhite
      DataField = 'Diagnosis_dat'
      DataSource = PatientDm.dsPatient
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
    object dteARTStartDate: TwwDBDateTimePicker
      Left = 60
      Top = 37
      Width = 84
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clWhite
      DataField = 'ARTStart_dat'
      DataSource = PatientDm.dsPatient
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
    object DBComboBox5: TDBComboBox
      Left = 82
      Top = 91
      Width = 206
      Height = 21
      Color = clWhite
      DataField = 'ReasonForEligibility_Str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'CD4 Count'
        'WHO Clinic Staging'
        'CD4 & WHO Staging')
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit48: TDBEdit
      Left = 319
      Top = 92
      Width = 52
      Height = 21
      Color = clWhite
      DataField = 'eligibilityCD4Count_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit49: TDBEdit
      Left = 447
      Top = 91
      Width = 52
      Height = 21
      Color = clWhite
      DataField = 'eligibilityWHOStaging_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 82
      Top = 120
      Width = 290
      Height = 21
      Color = clWhite
      DataField = 'vstRegimenStart_str'
      DataSource = PatientDm.dsPatient
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
      TabOrder = 7
    end
    object wwDBDateTimePicker5: TwwDBDateTimePicker
      Left = 447
      Top = 120
      Width = 102
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clWhite
      DataField = 'vstRegimenStartDate_dat'
      DataSource = PatientDm.dsPatient
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
  end
  object dbnvgClient: TDBNavigator
    Left = 508
    Top = 324
    Width = 206
    Height = 25
    DataSource = PatientDm.dsPatient
    VisibleButtons = [nbPost, nbCancel]
    Flat = True
    TabOrder = 2
    OnClick = dbnvgClientClick
  end
end

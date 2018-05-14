object VisitFrm: TVisitFrm
  Left = 142
  Top = 143
  Width = 696
  Height = 404
  Caption = 'Visit Details'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 688
    Height = 81
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
      Top = 20
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
    object Label1: TLabel
      Left = 203
      Top = 45
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
      Top = 17
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
      Top = 18
      Width = 135
      Height = 21
      Color = clMoneyGreen
      DataField = 'personPAS_str'
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
      Left = 258
      Top = 41
      Width = 329
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 688
    Height = 289
    Align = alClient
    Caption = 'Clinical Information'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 279
      Top = 25
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
    object Label29: TLabel
      Left = 120
      Top = 26
      Width = 85
      Height = 13
      Caption = 'Functional Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 536
      Top = 27
      Width = 16
      Height = 13
      Caption = 'VL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 426
      Top = 27
      Width = 24
      Height = 13
      Caption = 'CD4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBComboBox1: TDBComboBox
      Left = 349
      Top = 22
      Width = 57
      Height = 21
      DataField = 'personStatus_Str'
      DataSource = PatientDm.dsPatient
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
      TabOrder = 0
    end
    object DBComboBox3: TDBComboBox
      Left = 205
      Top = 23
      Width = 65
      Height = 21
      DataField = 'FunctionalStatus_str'
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
        'Studying'
        'Bedridden')
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 557
      Top = 23
      Width = 62
      Height = 21
      Color = clCaptionText
      DataField = 'personTransferredOutTo_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 453
      Top = 23
      Width = 64
      Height = 21
      Color = clCaptionText
      DataField = 'personTransferredOutTo_str'
      DataSource = PatientDm.dsPatient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 15
      Top = 25
      Width = 63
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Pregnant:'
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
    object GroupBox3: TGroupBox
      Left = 8
      Top = 59
      Width = 676
      Height = 87
      Caption = 'Opportunistic Infections'
      TabOrder = 5
      object Label2: TLabel
        Left = 221
        Top = 59
        Width = 29
        Height = 13
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBCheckBox2: TDBCheckBox
        Left = 15
        Top = 25
        Width = 63
        Height = 17
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 79
        Top = 25
        Width = 63
        Height = 17
        Caption = 'TB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 135
        Top = 25
        Width = 63
        Height = 17
        Caption = 'PCP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 199
        Top = 25
        Width = 63
        Height = 17
        Caption = 'KS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 254
        Top = 23
        Width = 63
        Height = 17
        Caption = 'HZ'
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
      object DBCheckBox7: TDBCheckBox
        Left = 318
        Top = 23
        Width = 63
        Height = 17
        Caption = 'CMV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 374
        Top = 23
        Width = 63
        Height = 17
        Caption = 'CMIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 438
        Top = 23
        Width = 63
        Height = 17
        Caption = 'TXP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 15
        Top = 59
        Width = 63
        Height = 17
        Caption = 'GL'
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
      object DBCheckBox11: TDBCheckBox
        Left = 79
        Top = 59
        Width = 63
        Height = 17
        Caption = 'GPD'
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
      object DBCheckBox12: TDBCheckBox
        Left = 135
        Top = 59
        Width = 63
        Height = 17
        Caption = 'CD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 494
        Top = 23
        Width = 63
        Height = 17
        Caption = 'OPC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit3: TDBEdit
        Left = 253
        Top = 55
        Width = 212
        Height = 21
        Color = clCaptionText
        DataField = 'personTransferredOutTo_str'
        DataSource = PatientDm.dsPatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 168
      Width = 675
      Height = 65
      Caption = 'Regimen Change'
      TabOrder = 6
      object Label5: TLabel
        Left = 12
        Top = 28
        Width = 26
        Height = 13
        Caption = 'From:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 192
        Top = 28
        Width = 16
        Height = 13
        Caption = 'To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 364
        Top = 28
        Width = 48
        Height = 13
        Caption = 'Reason(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 41
        Top = 24
        Width = 145
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 212
        Top = 24
        Width = 145
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 419
        Top = 23
        Width = 245
        Height = 21
        Color = clCaptionText
        DataField = 'personTransferredOutTo_str'
        DataSource = PatientDm.dsPatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object BitBtn1: TBitBtn
      Left = 589
      Top = 251
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 7
      Kind = bkOK
    end
  end
end

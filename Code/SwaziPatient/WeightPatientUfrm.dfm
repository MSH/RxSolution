object WeightPatientFrm: TWeightPatientFrm
  Left = 555
  Top = 350
  Width = 276
  Height = 151
  Caption = 'Weight Patient'
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
  object Label1: TLabel
    Left = 24
    Top = 10
    Width = 50
    Height = 20
    Caption = 'Weight'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 47
    Height = 20
    Caption = 'Height'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RzDBEdit1: TRzDBEdit
    Left = 136
    Top = 8
    Width = 121
    Height = 21
    DataSource = PatientDm.dsPatientWeight
    DataField = 'personWeight_int'
    TabOrder = 0
  end
  object RzDBEdit2: TRzDBEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    DataSource = PatientDm.dsPatientWeight
    DataField = 'personHeight_Int'
    TabOrder = 1
  end
  object RzDBNavigator1: TRzDBNavigator
    Left = 0
    Top = 76
    Width = 169
    Height = 25
    DataSource = PatientDm.dsPatientWeight
    VisibleButtons = [nbPost, nbCancel]
    Align = alCustom
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 77
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
end

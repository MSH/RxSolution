object HandOverStatusFrm: THandOverStatusFrm
  Left = 570
  Top = 393
  Width = 320
  Height = 267
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Patient Hand Over Status'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 312
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Patient was handed over to:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RzDBCheckBox1: TRzDBCheckBox
    Left = 80
    Top = 38
    Width = 160
    Height = 25
    DataField = 'Result'
    DataSource = dsLab
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Lab'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object RzDBCheckBox2: TRzDBCheckBox
    Left = 80
    Top = 64
    Width = 160
    Height = 25
    DataField = 'Result'
    DataSource = dsNurse
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Nurse'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object RzDBCheckBox3: TRzDBCheckBox
    Left = 80
    Top = 90
    Width = 160
    Height = 25
    DataField = 'Result'
    DataSource = dsDoc
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Doctor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object RzDBCheckBox4: TRzDBCheckBox
    Left = 80
    Top = 116
    Width = 160
    Height = 25
    DataField = 'Result'
    DataSource = dsPharm
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Pharmacy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object btnOffSite: TButton
    Left = 16
    Top = 192
    Width = 97
    Height = 25
    Action = atnBringOffSite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 200
    Top = 192
    Width = 99
    Height = 25
    Action = atnCancelClose
    Caption = 'Cancel && &Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object RzDBCheckBox5: TRzDBCheckBox
    Left = 80
    Top = 144
    Width = 160
    Height = 25
    DataField = 'Result'
    DataSource = dsClerk
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Data Clerk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object qryToNurse: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftString
        Size = 38
        Value = '{7C07DF9E-E5D6-432C-B3C2-2064636C11C0}'
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT handover_ID FROM tblVisitHandOvers'
      'WHERE handOverToType_str = '#39'Nurse'#39
      'AND patient_ID=:person_id'
      'AND handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 8
    Top = 32
  end
  object qryToLab: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftString
        Size = 38
        Value = '{7C07DF9E-E5D6-432C-B3C2-2064636C11C0}'
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT handover_ID FROM tblVisitHandOvers'
      'WHERE handOverToType_str = '#39'Lab'#39
      'AND patient_ID=:person_id'
      'AND handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 8
    Top = 64
  end
  object qryToPharmacy: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftString
        Size = 38
        Value = '{7C07DF9E-E5D6-432C-B3C2-2064636C11C0}'
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT handover_ID FROM tblVisitHandOvers'
      'WHERE handOverToType_str = '#39'Pharmacy'#39
      'AND patient_ID=:person_id'
      'AND handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result'
      '')
    Left = 8
    Top = 96
  end
  object qryToDoc: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftString
        Size = 38
        Value = '{7C07DF9E-E5D6-432C-B3C2-2064636C11C0}'
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT handover_ID FROM tblVisitHandOvers'
      'WHERE handOverToType_str = '#39'Doctor'#39
      'AND patient_ID=:person_id'
      'AND handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 8
    Top = 128
  end
  object dsNurse: TDataSource
    DataSet = qryToNurse
    Left = 40
    Top = 32
  end
  object dsLab: TDataSource
    DataSet = qryToLab
    Left = 40
    Top = 64
  end
  object dsDoc: TDataSource
    DataSet = qryToDoc
    Left = 40
    Top = 128
  end
  object dsPharm: TDataSource
    DataSet = qryToPharmacy
    Left = 40
    Top = 96
  end
  object ActionList1: TActionList
    Left = 264
    Top = 8
    object atnBringOffSite: TAction
      Caption = 'Bring &Off Site'
      OnExecute = atnBringOffSiteExecute
    end
    object atnCancelClose: TAction
      Caption = 'Cancel &Close'
      OnExecute = atnCancelCloseExecute
    end
  end
  object qryToDataClerk: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftString
        Size = 38
        Value = '{7C07DF9E-E5D6-432C-B3C2-2064636C11C0}'
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT handover_ID FROM tblVisitHandOvers'
      'WHERE handOverToType_str = '#39'Data Clerk'#39
      'AND patient_ID=:person_id'
      'AND handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 8
    Top = 160
  end
  object dsClerk: TDataSource
    DataSet = qryToDataClerk
    Left = 40
    Top = 160
  end
end

object ViewSetupFrm: TViewSetupFrm
  Left = 574
  Top = 320
  Width = 292
  Height = 253
  BorderIcons = [biSystemMenu]
  Caption = 'User view settings'
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
  object grp_UserView: TRadioGroup
    Left = 24
    Top = 16
    Width = 241
    Height = 161
    Caption = 'Set user view'
    Items.Strings = (
      'Receptionist'
      'Nurse'
      'Doctor'
      'Data Clerk'
      'Administrator')
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 88
    Top = 184
    Width = 81
    Height = 25
    Action = atnSave
    TabOrder = 1
  end
  object Button2: TButton
    Left = 189
    Top = 184
    Width = 75
    Height = 25
    Action = atnCancel
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 224
    Top = 8
    object atnSave: TAction
      Caption = '&Save'
      OnExecute = atnSaveExecute
    end
    object atnCancel: TAction
      Caption = '&Cancel'
    end
  end
end

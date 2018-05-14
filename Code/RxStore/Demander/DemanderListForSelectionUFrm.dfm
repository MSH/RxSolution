object DemanderListForSelectionFrm: TDemanderListForSelectionFrm
  Left = 421
  Top = 153
  BorderStyle = bsDialog
  Caption = 'Select Demander to copy from'
  ClientHeight = 377
  ClientWidth = 501
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object shpMainBorder: TShape
    Left = 6
    Top = 6
    Width = 492
    Height = 369
    Brush.Color = clWindow
    Pen.Color = clHighlight
    Pen.Style = psInsideFrame
  end
  object lblMainFormTitle: TLMDSimpleLabel
    Left = 12
    Top = 12
    Width = 480
    Height = 40
    Alignment = agCenter
    AutoSize = False
    Color = 16311512
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -27
    Font.Name = 'Haettenschweiler'
    Font.Style = []
    Font3D.DisabledStyle = dsNone
    Font3D.LightColor = clBtnText
    Font3D.ShadowColor = clWindow
    Font3D.Style = tdSunkenShadow
    ParentColor = False
    ParentFont = False
    Transparent = False
    Caption = 'D E M A N D E R S'
    Options = []
  end
  object Button1: TButton
    Left = 10
    Top = 338
    Width = 92
    Height = 31
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 108
    Top = 338
    Width = 93
    Height = 31
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 12
    Top = 55
    Width = 480
    Height = 260
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Code_str'
    ListField = 'Name_str'
    ListSource = DemanderDM.dsado_DemanderListForSelection
    ParentFont = False
    TabOrder = 2
  end
end

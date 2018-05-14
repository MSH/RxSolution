object frmRXPasswordPin: TfrmRXPasswordPin
  Left = 618
  Top = 511
  Width = 453
  Height = 144
  Caption = 'Password for Saving Prescription'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object rzdButtons: TRzDialogButtons
    Left = 0
    Top = 54
    Width = 435
    Height = 45
    ButtonColor = 16311512
    CaptionOk = 'Ok'
    CaptionCancel = 'Cancel'
    CaptionHelp = 'Ok'
    ShowDivider = True
    ShowGlyphs = True
    Color = 16311512
    TabOrder = 0
  end
  object pnlRXBackground: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 54
    Align = alClient
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 1
    object pnlForm_Header: TPanel
      Left = 6
      Top = 7
      Width = 369
      Height = 41
      Color = clWhite
      TabOrder = 0
      object lblPassword: TLabel
        Left = 17
        Top = 9
        Width = 93
        Height = 22
        AutoSize = False
        Caption = 'Password:'
        Color = 15448477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object edtPassword: TRzEdit
        Left = 117
        Top = 6
        Width = 239
        Height = 24
        FrameStyle = fsFlatBold
        FrameVisible = True
        PasswordChar = '*'
        TabOrder = 0
      end
    end
  end
  object fcRXHeader: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 8
    Top = 40
  end
  object pmnuRX_: TPopupMenu
    Left = 8
    Top = 8
  end
end

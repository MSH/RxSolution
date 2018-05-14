object frmRxReason: TfrmRxReason
  Left = 589
  Top = 381
  Width = 709
  Height = 190
  Caption = 'Rx Reasons'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object pnlRXBackground: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 145
    Align = alClient
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 0
    object pnlForm_Header: TPanel
      Left = 36
      Top = 10
      Width = 637
      Height = 71
      Color = clWhite
      TabOrder = 0
      object lblDispenser: TLabel
        Left = 3
        Top = 5
        Width = 174
        Height = 39
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Reason for Canceling:'
        Color = 15448477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object rxReason: TRzDBLookupComboBox
        Left = 180
        Top = 9
        Width = 445
        Height = 32
        Ctl3D = False
        DataField = 'RxCancelReasonsAfterPosting_str'
        DataSource = FRM_RX
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -20
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        KeyField = 'Reason_Str'
        ListField = 'Reason_Str'
        ListSource = dsRxReasons
        NullValueKey = 16462
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        FrameSides = [sdBottom]
        FrameVisible = True
      end
    end
    object rzdButtons: TRzDialogButtons
      Left = 0
      Top = 90
      Width = 691
      Height = 55
      ButtonColor = 16311512
      CaptionOk = 'Post'
      CaptionCancel = 'Cancel'
      CaptionHelp = 'Post & print'
      ShowDivider = True
      ShowGlyphs = True
      Color = 16311512
      TabOrder = 1
    end
  end
  object FRM_RX: TDataSource
    DataSet = dmRX.qryRX
    Left = 74
    Top = 40
  end
  object dsRxReasons: TDataSource
    DataSet = dmRX.qryRxReasons
    Left = 16
    Top = 16
  end
end

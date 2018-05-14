object frmRXItemDirectionsCapture: TfrmRXItemDirectionsCapture
  Left = 696
  Top = 279
  BorderStyle = bsDialog
  Caption = 'Directions & Warnings'
  ClientHeight = 164
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 128
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object lblDirectionsFull: TLabel
      Left = 5
      Top = 35
      Width = 105
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Directions'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblWarning: TLabel
      Left = 5
      Top = 57
      Width = 105
      Height = 21
      Align = alCustom
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warnings'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object regRegimin: TRzDBLabel
      Left = 0
      Top = 0
      Width = 568
      Height = 28
      Align = alTop
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      DataField = 'DspProduct_Str'
      DataSource = FRM_RXItem
    end
    object lblDirectionsAuto: TRzDBLabel
      Left = 349
      Top = 77
      Width = 113
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentFont = False
      DataField = 'DspDirectionsAuto_Bol'
      DataSource = FRM_RXItem
    end
    object Label1: TLabel
      Left = 5
      Top = 79
      Width = 105
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Automatic Directions:'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 6
      Top = 101
      Width = 103
      Height = 21
      Align = alCustom
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Batch'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object regDispensingDirection: TRzDBEdit
      Left = 112
      Top = 35
      Width = 450
      Height = 21
      DataSource = FRM_RXItem
      DataField = 'DspDirections_Str'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FrameController = frmRX.fcRXHeader
      ParentFont = False
      TabOrder = 0
    end
    object regProductWarning: TRzDBEdit
      Left = 112
      Top = 57
      Width = 450
      Height = 21
      DataSource = FRM_RXItem
      DataField = 'DspWarning_Str'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FrameController = frmRX.fcRXHeader
      ParentFont = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 584
      Top = 136
      Width = 121
      Height = 21
      TabStop = False
      TabOrder = 4
      Text = 'Edit1'
    end
    object chkPregnant: TRzDBCheckBox
      Left = 114
      Top = 79
      Width = 79
      Height = 20
      DataField = 'DspDirectionsAuto_Bol'
      DataSource = FRM_RXItem
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Alignment = taLeftJustify
      Caption = 'Tick for yes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      FrameController = frmRX.fcRXHeader
      ParentFont = False
      TabOrder = 2
    end
    object regProductBatch: TRzDBEdit
      Left = 111
      Top = 101
      Width = 450
      Height = 21
      DataSource = FRM_RXItem
      DataField = 'DspProductBatch_Str'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FrameController = frmRX.fcRXHeader
      ParentFont = False
      TabOrder = 3
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 128
    Width = 568
    ButtonColor = 16311512
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowGlyphs = True
    ShowCancelButton = False
    Color = 16311512
    TabOrder = 1
  end
  object FRM_RXItem: TDataSource
    DataSet = dmRX.qryRXItem
    Left = 8
    Top = 128
  end
end

object SystemMonthEndFrm: TSystemMonthEndFrm
  Left = 499
  Top = 340
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Month End'
  ClientHeight = 196
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object pnlRequisitionListBackground: TPanel
    Left = 0
    Top = 0
    Width = 411
    Height = 196
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object shpRequisitionList: TShape
      Left = 6
      Top = 6
      Width = 399
      Height = 143
      Brush.Color = clWindow
      Pen.Color = clHighlight
      Pen.Style = psInsideFrame
    end
    object lblMainFormTitle: TLMDSimpleLabel
      Left = 12
      Top = 12
      Width = 383
      Height = 40
      Alignment = agCenterLeft
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
      Font3D.Tracing = 2
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Select the Period'
      Options = []
    end
    object pnlProductDetailColorBackground: TPanel
      Left = 12
      Top = 55
      Width = 383
      Height = 84
      BevelOuter = bvNone
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label12: TLabel
        Left = 6
        Top = 6
        Width = 102
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Month:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 37
        Width = 102
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Year:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dbeMonth: TComboBox
        Left = 117
        Top = 6
        Width = 246
        Height = 24
        Hint = 'Select the Month'
        Style = csDropDownList
        DropDownCount = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 0
        OnChange = dbeMonthChange
        Items.Strings = (
          '01 - January'
          '02 - February'
          '03 - March'
          '04 - April'
          '05 - May'
          '06 - June'
          '07 - July'
          '08 - August'
          '09 - September'
          '10 - October'
          '11 - November'
          '12 - December')
      end
      object dbeYear: TComboBox
        Left = 117
        Top = 37
        Width = 246
        Height = 24
        Hint = 'Select the Year'
        DropDownCount = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 1
        Text = '2001'
        OnChange = dbeMonthChange
        Items.Strings = (
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024')
      end
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 158
      Width = 92
      Height = 30
      Caption = 'Proceed'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 108
      Top = 158
      Width = 93
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Kind = bkCancel
    end
  end
end

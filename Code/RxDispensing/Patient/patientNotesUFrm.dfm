object patientNotesFrm: TpatientNotesFrm
  Left = 449
  Top = 256
  Width = 672
  Height = 534
  Caption = 'Patient Notes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label3: TLabel
    Left = 20
    Top = 28
    Width = 32
    Height = 16
    Caption = 'Date:'
  end
  object RzDBMemo1: TRzDBMemo
    Left = 20
    Top = 69
    Width = 611
    Height = 356
    DataField = 'personCommentDescription_Str'
    DataSource = dmPatient.dsqryPersonComment
    TabOrder = 0
  end
  object edtDOB: TwwDBDateTimePicker
    Left = 59
    Top = 22
    Width = 149
    Height = 24
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.PopupYearOptions.YearsPerColumn = 20
    CalendarAttributes.PopupYearOptions.NumberColumns = 4
    CalendarAttributes.PopupYearOptions.StartYear = 1930
    DataField = 'personCommentDate_Dat'
    DataSource = dmPatient.dsqryPersonComment
    Date = 41163
    Epoch = 1920
    Time = 41163
    ShowButton = True
    TabOrder = 1
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 458
    Width = 654
    Height = 31
    DataSource = dmPatient.dsqryPersonComment
    VisibleButtons = [nbPost, nbCancel]
    Align = alBottom
    TabOrder = 2
  end
end

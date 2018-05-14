object handOverNotesFrm: ThandOverNotesFrm
  Left = 601
  Top = 298
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Handover notes'
  ClientHeight = 287
  ClientWidth = 555
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
  object RzDBMemo1: TRzDBMemo
    Left = 0
    Top = 0
    Width = 555
    Height = 237
    Align = alTop
    DataField = 'handOverNotes_str'
    DataSource = PatientDm.dsHandOvers
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 472
    Top = 248
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
end

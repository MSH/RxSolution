object frmPatientEditHistory: TfrmPatientEditHistory
  Left = 252
  Top = 177
  Width = 1310
  Height = 743
  Caption = 'Patient Edit History'
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
  object dxDBEditHistory: TdxDBGrid
    Left = 0
    Top = 0
    Width = 1292
    Height = 698
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'statushistory_id'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clBlack
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dmPatient.dsActiveStatusLog
    Filter.Active = True
    Filter.Criteria = {00000000}
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = [fsBold]
    RegistryPath = '\Software\RxSolution\1.2\Grids\Patient\PatientHistory'
    object dxDBEditHistorychangeDate_dat: TdxDBGridDateColumn
      Caption = 'Date'
      DisableEditor = True
      Width = 130
      BandIndex = 0
      RowIndex = 0
      FieldName = 'changeDate_dat'
      DisableFilter = True
    end
    object dxDBEditHistoryDescription_str: TdxDBGridColumn
      Caption = 'Description'
      DisableEditor = True
      Width = 295
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
      DisableFilter = True
    end
    object dxDBEditHistorytype_str: TdxDBGridColumn
      Caption = 'Type'
      DisableEditor = True
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'type_str'
    end
    object dxDBEditHistoryclinic_str: TdxDBGridColumn
      Caption = 'Clinic'
      DisableEditor = True
      Width = 177
      BandIndex = 0
      RowIndex = 0
      FieldName = 'clinic_str'
    end
    object dxDBEditHistoryOldPtno_str: TdxDBGridColumn
      Caption = 'Old PTNO'
      DisableEditor = True
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OldPtno_str'
      DisableFilter = True
    end
    object dxDBEditHistoryclass_str: TdxDBGridColumn
      Caption = 'Classification'
      DisableEditor = True
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'class_str'
    end
    object dxDBEditHistoryactive_bol: TdxDBGridCheckColumn
      Caption = 'Active'
      DisableEditor = True
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'active_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBEditHistorytemporary_bol: TdxDBGridCheckColumn
      Caption = 'Temporary'
      DisableEditor = True
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'temporary_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBEditHistoryusername_str: TdxDBGridColumn
      Caption = 'User'
      DisableEditor = True
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'username_str'
    end
    object dxDBEditHistoryReason_str: TdxDBGridColumn
      Caption = 'Reason'
      DisableEditor = True
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Reason_str'
    end
  end
end

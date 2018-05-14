object PatientRxFrm: TPatientRxFrm
  Left = 334
  Top = 209
  Width = 1293
  Height = 640
  Caption = 'PatientRxFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 551
    Width = 1275
    Height = 44
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    TabOrder = 0
  end
  object grdPrescriptionActive: TdxDBGrid
    Left = 11
    Top = 7
    Width = 611
    Height = 571
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'prescription_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alCustom
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsqryPrescriptionActive
    Filter.Criteria = {00000000}
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Rx\grdPrescriptionActive'
    object grdPrescriptionActiveRxDate_dat: TdxDBGridDateColumn
      Caption = 'Date'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RxDate_dat'
    end
    object grdPrescriptionActiveprescriptionNumber_Str: TdxDBGridColumn
      Caption = 'Rx Number'
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionNumber_Str'
    end
    object grdPrescriptionActivefolderNumber_Str: TdxDBGridColumn
      Caption = 'Folder No'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'folderNumber_Str'
    end
    object grdPrescriptionActivepatientName_Str: TdxDBGridColumn
      Caption = 'Patient'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'patientName_Str'
    end
    object grdPrescriptionActiveprescriberName_Str: TdxDBGridColumn
      Caption = 'Prescriber'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriberName_Str'
    end
    object grdPrescriptionActiveprescriptionCost_Mon: TdxDBGridCurrencyColumn
      Caption = 'Cost'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionCost_Mon'
      Nullable = False
    end
    object grdPrescriptionActiveprescriptionStatus_Str: TdxDBGridColumn
      Caption = 'Status'
      DisableEditor = True
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionStatus_Str'
    end
    object grdPrescriptionActiveRepeatStatus_Str: TdxDBGridColumn
      Caption = 'Repeats'
      DisableEditor = True
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RepeatStatus_Str'
    end
    object grdPrescriptionActivePosted_bol: TdxDBGridCheckColumn
      Caption = 'Posted'
      DisableEditor = True
      MinWidth = 20
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dispensingPosted_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object grdPrescriptionActivevstVisitDate_dat: TdxDBGridColumn
      Caption = 'Visit Date'
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vstVisitDate_dat'
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 642
    Top = 25
    Width = 592
    Height = 551
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'RXItem_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alCustom
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsqryPrescriptionItemActive
    Filter.Criteria = {00000000}
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoPreview, edgoRowSelect, edgoUseBitmap]
    PreviewFieldName = 'DspDirections_str'
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Rx\grdPrescriptionActive'
    object dxDBGrid1DspProduct_Str: TdxDBGridColumn
      Caption = 'Product'
      DisableEditor = True
      Sorted = csUp
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DspProduct_Str'
    end
    object dxDBGrid1DspDirections_str: TdxDBGridColumn
      Caption = 'Directions'
      DisableEditor = True
      Width = 384
      BandIndex = -1
      RowIndex = 0
      FieldName = 'DspDirections_str'
    end
  end
  object qryPrescriptionActive: TADOQuery
    Connection = dmPatient.conPatient
    CursorType = ctStatic
    DataSource = dmPatient.dsqryPersonDetail
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     * '
      'FROM         view_v01_Prescription_List'
      'WHERE  (patient_ID =:person_ID)  ')
    Left = 24
    Top = 8
    object qryPrescriptionActiveRxDate_dat: TDateTimeField
      FieldName = 'RxDate_dat'
      ReadOnly = True
    end
    object qryPrescriptionActiveRxDateRepeat_Dat: TDateTimeField
      FieldName = 'RxDateRepeat_Dat'
      ReadOnly = True
    end
    object qryPrescriptionActiveprescriptionNumber_Str: TWideStringField
      FieldName = 'prescriptionNumber_Str'
      Size = 50
    end
    object qryPrescriptionActiverepeats_Int: TIntegerField
      FieldName = 'repeats_Int'
    end
    object qryPrescriptionActiveprescriptionCost_Mon: TBCDField
      FieldName = 'prescriptionCost_Mon'
      Precision = 19
    end
    object qryPrescriptionActivepatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionActiveprescription_ID: TGuidField
      FieldName = 'prescription_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionActivepatientName_Str: TWideStringField
      FieldName = 'patientName_Str'
      Size = 50
    end
    object qryPrescriptionActiveprescriber_ID: TGuidField
      FieldName = 'prescriber_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionActiveprescriberName_Str: TWideStringField
      FieldName = 'prescriberName_Str'
      Size = 50
    end
    object qryPrescriptionActiveprescriberRXLevel_Str: TWideStringField
      FieldName = 'prescriberRXLevel_Str'
      Size = 50
    end
    object qryPrescriptionActiveprescriptionStatus_Str: TWideStringField
      FieldName = 'prescriptionStatus_Str'
      Size = 50
    end
    object qryPrescriptionActiveprescriptionActive_bol: TBooleanField
      FieldName = 'prescriptionActive_bol'
    end
    object qryPrescriptionActivedispensingPosted_bol: TBooleanField
      FieldName = 'dispensingPosted_bol'
    end
    object qryPrescriptionActivefolderNumber_Str: TWideStringField
      FieldName = 'folderNumber_Str'
      Size = 30
    end
    object qryPrescriptionActivedispenserName_Str: TWideStringField
      FieldName = 'dispenserName_Str'
      Size = 50
    end
    object qryPrescriptionActivedispenserRxLevel_Str: TWideStringField
      FieldName = 'dispenserRxLevel_Str'
      Size = 50
    end
    object qryPrescriptionActiveRepeatStatus_Str: TWideStringField
      FieldName = 'RepeatStatus_Str'
      Size = 50
    end
    object qryPrescriptionActivepersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object qryPrescriptionActivevstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object qryPrescriptionActivevstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
  end
  object dsqryPrescriptionActive: TDataSource
    DataSet = qryPrescriptionActive
    Left = 56
    Top = 8
  end
  object qryPrescriptionItemActive: TADOQuery
    Connection = dmPatient.conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'prescription_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TblRXItem.RXItem_ID, dbo.TblRXItem.DspProduct_Str, tb' +
        'lRxItem.DspDirections_str'
      'FROM         '
      '                      TblRXItem '
      'WHERE TblRXItem.RX_ID=:prescription_ID')
    Left = 24
    Top = 40
  end
  object dsqryPrescriptionItemActive: TDataSource
    DataSet = qryPrescriptionItemActive
    Left = 56
    Top = 40
  end
end

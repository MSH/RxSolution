object Form1: TForm1
  Left = 348
  Top = 185
  Width = 870
  Height = 639
  Caption = 'Application to test Prescription.dll'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object stbMain: TStatusBar
    Left = 0
    Top = 564
    Width = 854
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object dxgPatients: TdxDBGrid
    Left = 0
    Top = 0
    Width = 297
    Height = 564
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 2
    KeyField = 'person_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alLeft
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    ArrowsColor = clNavy
    BandColor = clBackground
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsqryPatient
    Filter.Active = True
    Filter.DropDownCount = 16
    Filter.Criteria = {00000000}
    GridLineColor = clInactiveCaptionText
    GroupPanelColor = 15779500
    GroupPanelFontColor = clActiveCaption
    GroupNodeColor = 16311512
    GroupNodeTextColor = clActiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clHighlight
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    IndentDesc = 10
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoHeaderButtonClicking, edgoHorzThrough, edgoImmediateEditor, edgoMultiSort, edgoShowHourGlass, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoConfirmDelete, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks, edgoUseLocate]
    OptionsView = [edgoAutoCalcPreviewLines, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = [fsItalic]
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
    ShowGrid = False
    object dxgPatientspersonDescription_str: TdxDBGridColumn
      Caption = 'Patient'
      DisableEditor = True
      Width = 184
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personDescription_str'
      DisableFilter = True
    end
    object dxgPatientspersonRefNoCurrent_str: TdxDBGridColumn
      Caption = 'IPN'
      DisableEditor = True
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personRefNoCurrent_str'
      DisableFilter = True
    end
    object dxgPatientspersonInstitution_str: TdxDBGridColumn
      Caption = 'Clinic'
      DisableEditor = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      Width = 1204
      BandIndex = 0
      RowIndex = 1
      FieldName = 'personInstitution_str'
      DisableFilter = True
      StoredRowIndex = 1
    end
  end
  object dxgRX: TdxDBGrid
    Left = 297
    Top = 0
    Width = 557
    Height = 564
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 2
    KeyField = 'prescription_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnDblClick = actRX_EditExecute
    ArrowsColor = clNavy
    BandColor = clBackground
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsqryRX
    Filter.Active = True
    Filter.DropDownCount = 16
    Filter.Criteria = {00000000}
    GridLineColor = clInactiveCaptionText
    GroupPanelColor = 15779500
    GroupPanelFontColor = clActiveCaption
    GroupNodeColor = 16311512
    GroupNodeTextColor = clActiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clHighlight
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    IndentDesc = 10
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoHeaderButtonClicking, edgoHorzThrough, edgoImmediateEditor, edgoMultiSort, edgoShowHourGlass, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoConfirmDelete, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks, edgoUseLocate]
    OptionsView = [edgoAutoCalcPreviewLines, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = [fsItalic]
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
    ShowGrid = False
    object dxgRXdate_Dat: TdxDBGridDateColumn
      Caption = 'Date'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'date_Dat'
      DisableFilter = True
    end
    object dxgRXprescriptionNumber_Str: TdxDBGridColumn
      Caption = '#'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionNumber_Str'
      DisableFilter = True
    end
    object dxgRXprescriberName_Str: TdxDBGridColumn
      Caption = 'Prescriber'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 1
      FieldName = 'prescriberName_Str'
      DisableFilter = True
      StoredRowIndex = 1
    end
    object dxgRXDemanderName_Str: TdxDBGridColumn
      Caption = 'Demander'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 1
      FieldName = 'DemanderName_Str'
      DisableFilter = True
      StoredRowIndex = 1
    end
    object dxgRXrepeats_Int: TdxDBGridMaskColumn
      Caption = 'Repeat'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'repeats_Int'
      DisableFilter = True
    end
    object dxgRXrepeatNo_Int: TdxDBGridMaskColumn
      Caption = 'Rep No'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'repeatNo_Int'
      DisableFilter = True
    end
    object dxgRXprescriptionItemsCount_Int: TdxDBGridMaskColumn
      Caption = 'Items'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionItemsCount_Int'
      DisableFilter = True
    end
    object dxgRXprescriptionStatus_Str: TdxDBGridColumn
      Caption = 'Status'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionStatus_Str'
      DisableFilter = True
    end
    object dxgRXprescriptionCost_Mon: TdxDBGridCurrencyColumn
      Caption = 'Cost'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'prescriptionCost_Mon'
      Nullable = False
      DisableFilter = True
    end
    object dxgRXColumn10: TdxDBGridCheckColumn
      Caption = 'P'
      Width = 25
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dispensingPosted_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisableFilter = True
    end
  end
  object conRX: TADOConnection
    ConnectionString = 
      'FILE NAME=C:\Users\deane\Development\Delphi\RxSolution\Code\Dll_' +
      'Prescription\Test.udl;'
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 400
    Top = 32
  end
  object dsqryRX: TDataSource
    DataSet = qryRX
    Left = 464
    Top = 64
  end
  object qryRX: TADOQuery
    Connection = conRX
    CursorType = ctStatic
    DataSource = dsqryPatient
    Parameters = <
      item
        Name = 'person_Id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{185D5B1A-2038-41EE-AFFA-0607F6BD5976}'
      end>
    SQL.Strings = (
      
        'select * from tblPrescription where (patient_ID = :person_Id) or' +
        'der by Date_dat')
    Left = 432
    Top = 64
    object qryRXprescription_ID_Original: TGuidField
      FieldName = 'prescription_ID_Original'
      FixedChar = True
      Size = 38
    end
    object qryRXrepeatDate_dat: TDateTimeField
      FieldName = 'repeatDate_dat'
    end
    object qryRXcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object qryRXdownRefferal_Str: TWideStringField
      FieldName = 'downRefferal_Str'
      Size = 50
    end
    object qryRXissuedOrCollected_Bol: TBooleanField
      FieldName = 'issuedOrCollected_Bol'
    end
    object qryRXdispensed_Bol: TBooleanField
      FieldName = 'dispensed_Bol'
    end
    object qryRXisReferred_bol: TBooleanField
      FieldName = 'isReferred_bol'
    end
    object qryRXactive_bol: TBooleanField
      FieldName = 'active_bol'
    end
    object qryRXclinic_ID: TGuidField
      FieldName = 'clinic_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXprescription_ID: TGuidField
      FieldName = 'prescription_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXprescriptionLastEdited_dat: TDateTimeField
      FieldName = 'prescriptionLastEdited_dat'
    end
    object qryRXprescriptionLastEdited_ID: TGuidField
      FieldName = 'prescriptionLastEdited_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXprescriptionLastEdited_Str: TWideStringField
      FieldName = 'prescriptionLastEdited_Str'
      Size = 100
    end
    object qryRXprescriptionNumber_Str: TWideStringField
      FieldName = 'prescriptionNumber_Str'
      Size = 50
    end
    object qryRXdate_Dat: TDateTimeField
      FieldName = 'date_Dat'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryRXpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXpatientName_Str: TWideStringField
      FieldName = 'patientName_Str'
      Size = 50
    end
    object qryRXfolderNumber_Str: TWideStringField
      FieldName = 'folderNumber_Str'
      Size = 50
    end
    object qryRXadmissionNo_Str: TWideStringField
      FieldName = 'admissionNo_Str'
      Size = 50
    end
    object qryRXprescriber_ID: TGuidField
      FieldName = 'prescriber_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXprescriberName_Str: TWideStringField
      FieldName = 'prescriberName_Str'
      Size = 50
    end
    object qryRXprescriberRXLevel_Str: TWideStringField
      FieldName = 'prescriberRXLevel_Str'
      Size = 50
    end
    object qryRXprescriberAlert_mem: TMemoField
      FieldName = 'prescriberAlert_mem'
      BlobType = ftMemo
    end
    object qryRXprescribedAuthorisedBy_Str: TWideStringField
      FieldName = 'prescribedAuthorisedBy_Str'
      Size = 120
    end
    object qryRXdispenser_ID: TGuidField
      FieldName = 'dispenser_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXdispenserName_Str: TWideStringField
      FieldName = 'dispenserName_Str'
      Size = 50
    end
    object qryRXdispenserRxLevel_Str: TWideStringField
      FieldName = 'dispenserRxLevel_Str'
      Size = 50
    end
    object qryRXdispensedAuthorisedBy_Str: TWideStringField
      FieldName = 'dispensedAuthorisedBy_Str'
      Size = 120
    end
    object qryRXrepeats_Int: TIntegerField
      FieldName = 'repeats_Int'
    end
    object qryRXrepeatNo_Int: TIntegerField
      FieldName = 'repeatNo_Int'
    end
    object qryRXprescriptionCost_Mon: TBCDField
      FieldName = 'prescriptionCost_Mon'
      DisplayFormat = 'R # ##0.00;-R # ##0.00'
      Precision = 19
    end
    object qryRXprescriptionItemsCount_Int: TIntegerField
      FieldName = 'prescriptionItemsCount_Int'
    end
    object qryRXclinic_str: TWideStringField
      FieldName = 'clinic_str'
      Size = 200
    end
    object qryRXprescriptionActive_bol: TBooleanField
      FieldName = 'prescriptionActive_bol'
    end
    object qryRXprescriptionStatus_Str: TWideStringField
      FieldName = 'prescriptionStatus_Str'
      Size = 100
    end
    object qryRXprescriptionStatus_ID: TGuidField
      FieldName = 'prescriptionStatus_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXdownRefRouteSchedule_ID: TGuidField
      FieldName = 'downRefRouteSchedule_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXbatchIsBatched_bol: TBooleanField
      FieldName = 'batchIsBatched_bol'
    end
    object qryRXprescriptionAuthorised_bol: TBooleanField
      FieldName = 'prescriptionAuthorised_bol'
    end
    object qryRXdispensingAuthorised_bol: TBooleanField
      FieldName = 'dispensingAuthorised_bol'
    end
    object qryRXdispensingCollected_bol: TBooleanField
      FieldName = 'dispensingCollected_bol'
    end
    object qryRXdispensingPicked_bol: TBooleanField
      FieldName = 'dispensingPicked_bol'
    end
    object qryRXbatchIsCollated_bol: TBooleanField
      FieldName = 'batchIsCollated_bol'
    end
    object qryRXbatchIsShipped_bol: TBooleanField
      FieldName = 'batchIsShipped_bol'
    end
    object qryRXprotocolID: TGuidField
      FieldName = 'protocolID'
      FixedChar = True
      Size = 38
    end
    object qryRXdispensingPosted_bol: TBooleanField
      FieldName = 'dispensingPosted_bol'
    end
    object qryRXnaive_bol: TBooleanField
      FieldName = 'naive_bol'
    end
    object qryRXDemanderUnique_ID: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
    object qryRXDemanderName_Str: TWideStringField
      FieldName = 'DemanderName_Str'
      FixedChar = True
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 240
    Top = 32
    object actRX_Add: TAction
      Caption = 'Add'
      Hint = 'Add|Adds a new prescription'
      ShortCut = 45
      OnExecute = actRX_AddExecute
    end
    object actRX_Edit: TAction
      Caption = 'Edit'
      Hint = 'Edit|Edits the currently selected prescription'
      ShortCut = 16453
      OnExecute = actRX_EditExecute
    end
    object actRX_Delete: TAction
      Caption = 'Delete'
      Hint = 'Deletes|Deletes the currently selected prescription'
      ShortCut = 46
      OnExecute = actRX_DeleteExecute
    end
    object actApp_Exit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object actRX_Copy: TAction
      Caption = 'Copy Selected'
      OnExecute = actRX_CopyExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 208
    Top = 32
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Action = actApp_Exit
      end
    end
    object Exit2: TMenuItem
      Caption = 'Prescription'
      object Add1: TMenuItem
        Action = actRX_Add
      end
      object Edit1: TMenuItem
        Action = actRX_Edit
      end
      object CopySelected1: TMenuItem
        Action = actRX_Copy
        ShortCut = 16451
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Delete1: TMenuItem
        Action = actRX_Delete
      end
    end
  end
  object qryPatient: TADOQuery
    Connection = conRX
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tblPerson where (personPatient_bol = 1) order by p' +
        'ersonLastName_Str')
    Left = 432
    Top = 32
    object qryPatientperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientpersonIDNumber_Str: TWideStringField
      FieldName = 'personIDNumber_Str'
    end
    object qryPatientpersonLastName_Str: TWideStringField
      FieldName = 'personLastName_Str'
      Size = 30
    end
    object qryPatientpersonFirstName_Str: TWideStringField
      FieldName = 'personFirstName_Str'
      Size = 30
    end
    object qryPatientpersonKnownName_Str: TWideStringField
      FieldName = 'personKnownName_Str'
      Size = 50
    end
    object qryPatientpersonInitials_Str: TWideStringField
      FieldName = 'personInitials_Str'
      Size = 10
    end
    object qryPatientpersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
    object qryPatientpersonGender_Str: TWideStringField
      FieldName = 'personGender_Str'
      Size = 1
    end
    object qryPatientpersonReviewed_Dat: TDateTimeField
      FieldName = 'personReviewed_Dat'
    end
    object qryPatientpersonActive_Bol: TBooleanField
      FieldName = 'personActive_Bol'
    end
    object qryPatientpersonRace_Str: TWideStringField
      FieldName = 'personRace_Str'
      Size = 50
    end
    object qryPatientpersonLanguageNarrative_Str: TWideStringField
      FieldName = 'personLanguageNarrative_Str'
      Size = 50
    end
    object qryPatientpersonLanguageWritten_Str: TWideStringField
      FieldName = 'personLanguageWritten_Str'
      Size = 50
    end
    object qryPatientpersonAgeYears_int: TIntegerField
      FieldName = 'personAgeYears_int'
    end
    object qryPatientpersonAgeMonths_int: TIntegerField
      FieldName = 'personAgeMonths_int'
    end
    object qryPatientpersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 400
    end
    object qryPatientpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
      Size = 50
    end
    object qryPatientpersonTelNoCurrent_str: TWideStringField
      FieldName = 'personTelNoCurrent_str'
      Size = 50
    end
    object qryPatientpersonCelNoCurrent_str: TWideStringField
      FieldName = 'personCelNoCurrent_str'
      Size = 50
    end
    object qryPatientpersonAddressCurrent_str: TWideStringField
      FieldName = 'personAddressCurrent_str'
      Size = 255
    end
    object qryPatientpersonRegistrationNo_str: TWideStringField
      FieldName = 'personRegistrationNo_str'
      Size = 50
    end
    object qryPatientpersonInstitution_str: TWideStringField
      FieldName = 'personInstitution_str'
      Size = 200
    end
    object qryPatientpersonPatient_bol: TBooleanField
      FieldName = 'personPatient_bol'
    end
    object qryPatientpersonPrescriber_bol: TBooleanField
      FieldName = 'personPrescriber_bol'
    end
    object qryPatientpersonDispenser_bol: TBooleanField
      FieldName = 'personDispenser_bol'
    end
    object qryPatientpersonOther_bol: TBooleanField
      FieldName = 'personOther_bol'
    end
    object qryPatientsysLastEdited_dat: TDateTimeField
      FieldName = 'sysLastEdited_dat'
    end
    object qryPatientsysLastEditedBy_ID: TGuidField
      FieldName = 'sysLastEditedBy_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientsysLastEditedBy_str: TWideStringField
      FieldName = 'sysLastEditedBy_str'
      Size = 50
    end
    object qryPatientsysDeleted_bol: TBooleanField
      FieldName = 'sysDeleted_bol'
    end
    object qryPatientpersonDateDeceased_dat: TDateTimeField
      FieldName = 'personDateDeceased_dat'
    end
    object qryPatientpersonStatus_Str: TWideStringField
      FieldName = 'personStatus_Str'
      Size = 50
    end
    object qryPatientpersonStatusChangeDate_dat: TDateTimeField
      FieldName = 'personStatusChangeDate_dat'
    end
    object qryPatientpersonPead_bol: TBooleanField
      FieldName = 'personPead_bol'
    end
    object qryPatientpersonDateJoined_dat: TDateTimeField
      FieldName = 'personDateJoined_dat'
    end
    object qryPatientpersonStatusDesc_str: TWideStringField
      FieldName = 'personStatusDesc_str'
      Size = 250
    end
    object qryPatientpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryPatientpersonInstitution_ID: TGuidField
      FieldName = 'personInstitution_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientpersonNaive_Bol: TBooleanField
      FieldName = 'personNaive_Bol'
    end
    object qryPatientpersonNaiveDate_Dat: TDateTimeField
      FieldName = 'personNaiveDate_Dat'
    end
    object qryPatientpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
    object qryPatientpersonTransferredOut_bol: TBooleanField
      FieldName = 'personTransferredOut_bol'
    end
    object qryPatientpersonClintech_ID: TIntegerField
      FieldName = 'personClintech_ID'
    end
    object qryPatientpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object qryPatientpersonDefaulted_dat: TDateTimeField
      FieldName = 'personDefaulted_dat'
    end
    object qryPatientpersonMaritalStatus_str: TWideStringField
      FieldName = 'personMaritalStatus_str'
      Size = 10
    end
    object qryPatientpersonDeceased_bol: TBooleanField
      FieldName = 'personDeceased_bol'
    end
    object qryPatientpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object qryPatientpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object qryPatientpersonRegisteredInSys_bol: TBooleanField
      FieldName = 'personRegisteredInSys_bol'
    end
    object qryPatientpersonTransferredIn_bol: TBooleanField
      FieldName = 'personTransferredIn_bol'
    end
    object qryPatientpersonPAAB_ID: TWideStringField
      FieldName = 'personPAAB_ID'
      Size = 25
    end
    object qryPatientpersonRegisteredInSys_dat: TDateTimeField
      FieldName = 'personRegisteredInSys_dat'
    end
    object qryPatientpersonDefaulted_bol: TBooleanField
      FieldName = 'personDefaulted_bol'
    end
  end
  object dsqryPatient: TDataSource
    DataSet = qryPatient
    Left = 464
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 208
    object Add2: TMenuItem
      Action = actRX_Add
    end
    object Edit2: TMenuItem
      Action = actRX_Edit
    end
    object Delete2: TMenuItem
      Action = actRX_Delete
    end
    object CopySelected2: TMenuItem
      Action = actRX_Copy
      ShortCut = 16451
    end
  end
  object iniDatabase: TRzRegIniFile
    Left = 336
    Top = 32
  end
end

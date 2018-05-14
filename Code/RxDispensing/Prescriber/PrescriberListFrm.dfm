object PrescriberList: TPrescriberList
  Left = 33
  Top = 264
  Width = 870
  Height = 640
  Caption = 'PrescriberList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      862
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1101
      Height = 45
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = clWindow
      Pen.Color = clActiveCaption
      Pen.Style = psInsideFrame
    end
    object pnlToolbar_Header_Display: TRzLabel
      Left = 8
      Top = 11
      Width = 385
      Height = 33
      Alignment = taCenter
      AutoSize = False
      Caption = 'Prescibers'
      Color = 16311512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
      FlyByColor = 12937777
      ShadowDepth = 1
      TextStyle = tsShadow
    end
  end
  object pnlHolder_Presciber_List: TPanel
    Left = 0
    Top = 55
    Width = 862
    Height = 551
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object rzgPrescribers: TRzGroupBox
      Left = 5
      Top = 40
      Width = 604
      Height = 366
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object grdPrescribers: TdxDBGrid
        Left = 1
        Top = 14
        Width = 602
        Height = 351
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'person_ID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = atnPrescriber_EditExecute
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsqryPrescriber
        Filter.Active = True
        Filter.CaseInsensitive = True
        Filter.Criteria = {00000000}
        GroupPanelColor = clInactiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdPrescriberspersonPositionNumberNo_Str: TdxDBGridColumn
          Caption = 'Presciber #'
          DisableEditor = True
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personPositionNumberNo_Str'
          DisableFilter = True
        end
        object grdPrescriberspersonPositionTitleDescription_Str: TdxDBGridColumn
          Caption = 'Title'
          Width = 20
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personPositionTitleDescription_Str'
        end
        object grdPrescriberspersonLastName_Str: TdxDBGridColumn
          Caption = 'Last Name'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personLastName_Str'
          DisableFilter = True
        end
        object grdPrescriberspersonFirstName_Str: TdxDBGridColumn
          Caption = 'First Name'
          DisableEditor = True
          Sorted = csUp
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personFirstName_Str'
          DisableFilter = True
        end
        object grdPrescriberspersonInitials_Str: TdxDBGridColumn
          Caption = 'Initials'
          DisableEditor = True
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personInitials_Str'
          DisableFilter = True
        end
        object grdPrescriberspersonGender_Str: TdxDBGridColumn
          Caption = 'Gender'
          DisableEditor = True
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personGender_Str'
        end
        object grdPrescriberspersonPositionPostDescription_str: TdxDBGridColumn
          Caption = 'Post'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personPositionPostDescription_str'
        end
        object grdPrescribersrxLevelCode_Str: TdxDBGridColumn
          Caption = 'Rx'
          DisableEditor = True
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'rxLevelCode_Str'
        end
        object grdPrescriberspersonActive_Bol: TdxDBGridCheckColumn
          Caption = 'Active'
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'personActive_Bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object pnlActivePrescribers: TPanel
      Left = 0
      Top = 0
      Width = 862
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Color = 16311512
      TabOrder = 1
      object rzlPrescriberList: TRzLabel
        Left = 5
        Top = 5
        Width = 660
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'Presciber List'
        Color = 15448477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object rzbStatusButtons: TRzDialogButtons
      Left = 0
      Top = 515
      Width = 862
      ButtonColor = clWhite
      CaptionOk = 'OK'
      CaptionCancel = 'Cancel'
      CaptionHelp = '&Help'
      ShowDivider = True
      ShowOKButton = False
      ShowCancelButton = False
      Color = clWhite
      TabOrder = 2
      object RzBitBtn1: TRzBitBtn
        Left = 13
        Top = 5
        Width = 85
        Action = atnPrescriber_Add
        Caption = 'Add...'
        Color = clInactiveCaptionText
        HotTrack = True
        ParentColor = False
        TabOrder = 3
      end
      object RzBitBtn2: TRzBitBtn
        Left = 101
        Top = 5
        Width = 85
        Action = atnPrescriber_Edit
        Caption = 'Edit...'
        Color = clInactiveCaptionText
        HotTrack = True
        ParentColor = False
        TabOrder = 4
      end
      object RzBitBtn3: TRzBitBtn
        Left = 189
        Top = 5
        Width = 85
        Action = atnPrescriber_Delete
        Caption = 'Delete'
        Color = clInactiveCaptionText
        HotTrack = True
        ParentColor = False
        TabOrder = 5
      end
      object RzMenuButton1: TRzMenuButton
        Left = 277
        Top = 5
        Width = 85
        Caption = 'Print'
        Color = clInactiveCaptionText
        HotTrack = True
        ParentColor = False
        PopupMenu = PopupMenu2
        TabOrder = 6
        DropDownMenu = PopupMenu2
      end
    end
  end
  object conPrescriber: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxDispensing;Data Source=TIG' +
      'ER'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
  end
  object rzcMain: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 8
    Top = 32
  end
  object qryPrescriber: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT dbo.tblPersonPosition.personPositionN' +
        'umberNo_Str, dbo.tblPerson.personIDNumber_Str, dbo.tblPerson.per' +
        'sonLastName_Str, '
      
        '                      dbo.tblPerson.personFirstName_Str, dbo.tbl' +
        'Person.personKnownName_Str, dbo.tblPerson.personInitials_Str, db' +
        'o.tblPerson.personDOB_Dat, '
      
        '                      dbo.tblPerson.personGender_Str, dbo.tblPer' +
        'son.personReviewed_Dat, dbo.tblPerson.personActive_Bol, dbo.tblP' +
        'erson.personRace_Str, '
      
        '                      dbo.tblPerson.personLanguageNarrative_Str,' +
        ' dbo.tblPerson.personLanguageWritten_Str, dbo.tblPersonPosition.' +
        'personPositionCurrent_bol, '
      
        '                      dbo.tblPersonPositionTitle.personPositionT' +
        'itleDescription_Str, dbo.tblRxLevel.rxLevelDescription_str, dbo.' +
        'tblPersonType.personTypeDescription_Str, '
      
        '                      dbo.tblPerson.person_ID, dbo.tblRxLevel.rx' +
        'LevelCode_Str, dbo.tblComplexSiteDepartment.departmentName_str, '
      
        '                      dbo.tblPersonPositionPost.personPositionPo' +
        'stDescription_str'
      'FROM         dbo.tblComplexSiteDepartment RIGHT OUTER JOIN'
      '                      dbo.tblPersonPositionPost RIGHT OUTER JOIN'
      
        '                      dbo.tblPersonPosition ON dbo.tblPersonPosi' +
        'tionPost.personPositionPost_ID = dbo.tblPersonPosition.personPos' +
        'itionPost_ID ON '
      
        '                      dbo.tblComplexSiteDepartment.complexSiteDe' +
        'partment_ID = dbo.tblPersonPosition.complexSiteDepartment_ID LEF' +
        'T OUTER JOIN'
      
        '                      dbo.tblRxLevel ON dbo.tblPersonPosition.rx' +
        'Level_ID = dbo.tblRxLevel.rxLevel_ID LEFT OUTER JOIN'
      
        '                      dbo.tblPersonPositionTitle ON dbo.tblPerso' +
        'nPosition.personPositionTitle_ID = dbo.tblPersonPositionTitle.pe' +
        'rsonPositionTitle_ID RIGHT OUTER JOIN'
      
        '                      dbo.tblPerson ON dbo.tblPersonPosition.per' +
        'son_ID = dbo.tblPerson.person_ID LEFT OUTER JOIN'
      
        '                      dbo.tblPersonType ON dbo.tblPersonPosition' +
        '.personType_ID = dbo.tblPersonType.personType_ID'
      
        'WHERE     (dbo.tblPersonType.personTypeDescription_Str = N'#39'Presc' +
        'riber'#39')'
      
        'ORDER BY dbo.tblPerson.personLastName_Str, dbo.tblPerson.personF' +
        'irstName_Str, dbo.tblPerson.personKnownName_Str')
    Left = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 48
    Top = 32
    object Add1: TMenuItem
      Action = atnPrescriber_Add
    end
    object Edit1: TMenuItem
      Action = atnPrescriber_Edit
    end
    object Delete1: TMenuItem
      Action = atnPrescriber_Delete
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrintPrescribersByName2: TMenuItem
      Action = atnPrntPrescribersByName
    end
    object PrintPrescribersByNumber2: TMenuItem
      Action = atnPrntPrescribersByNumber
    end
    object PrintPrescribersAllConsultants2: TMenuItem
      Action = atnPrntPrescribersByConsultant
    end
    object SelectedPrescriberBiodataSheet1: TMenuItem
      Action = atnPrintBioDataSheet
    end
    object PrintNotificationLetter1: TMenuItem
      Action = atnPrintPrescriberNotificationLetter
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 48
    Top = 64
    object PrintPrescribersByName1: TMenuItem
      Action = atnPrntPrescribersByName
    end
    object PrintPrescribersByNumber1: TMenuItem
      Action = atnPrntPrescribersByNumber
    end
    object PrintPrescribersAllConsultants1: TMenuItem
      Action = atnPrntPrescribersByConsultant
    end
    object atnPrintBioDataSheet1: TMenuItem
      Action = atnPrintBioDataSheet
    end
    object BlankBiodataSheet1: TMenuItem
      Action = atnPrintBlankBioDataSheet
    end
    object NotificationLetter1: TMenuItem
      Action = atnPrintPrescriberNotificationLetter
    end
  end
  object dsqryPrescriber: TDataSource
    DataSet = qryPrescriber
    Left = 80
  end
  object ActionList1: TActionList
    Left = 128
    object atnPrescriber_Add: TAction
      Category = 'CRUD'
      Caption = 'Add...'
      OnExecute = atnPrescriber_AddExecute
    end
    object atnPrescriber_Edit: TAction
      Category = 'CRUD'
      Caption = 'Edit...'
      OnExecute = atnPrescriber_EditExecute
    end
    object atnPrescriber_Delete: TAction
      Category = 'CRUD'
      Caption = 'Delete'
      OnExecute = atnPrescriber_DeleteExecute
    end
    object atnPrntPrescribersByName: TAction
      Category = 'Print'
      Caption = 'Print Prescribers [By Name]'
      OnExecute = atnPrntPrescribersByNameExecute
    end
    object atnPrntPrescribersByNumber: TAction
      Category = 'Print'
      Caption = 'Print Prescribers [By Number]'
      OnExecute = atnPrntPrescribersByNumberExecute
    end
    object atnPrntPrescribersByConsultant: TAction
      Category = 'Print'
      Caption = 'Print Prescribers [All Consultants]'
      OnExecute = atnPrntPrescribersByConsultantExecute
    end
    object atnPrintBioDataSheet: TAction
      Category = 'Print'
      Caption = 'Print selected Prescriber [Biodata Sheet]'
      OnExecute = atnPrintBioDataSheetExecute
    end
    object atnPrintBlankBioDataSheet: TAction
      Category = 'Print'
      Caption = 'Print Blank Biodata Sheet'
      OnExecute = atnPrintBlankBioDataSheetExecute
    end
    object atnPrintPrescriberNotificationLetter: TAction
      Category = 'Print'
      Caption = 'Print Notification Letter'
      OnExecute = atnPrintPrescriberNotificationLetterExecute
    end
  end
  object qryPrintRegisterByName: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblPerson.personIDNumber_Str, tblPerson.personLastName_St' +
        'r, tblPerson.personFirstName_Str,  tblPerson.personInitials_Str,' +
        ' tblPerson.personGender_Str, tblPerson.personActive_Bol, tblPers' +
        'onPosition.personPositionCurrent_bol,  tblPersonPosition.personP' +
        'ositionNumberNo_Str, tblPersonPosition.personPositionTitle_Str, ' +
        'tblPersonPosition.personPositionStart_Dat,  tblPersonType.person' +
        'TypeDescription_Str, tblPersonPositionTitle.personPositionTitleD' +
        'escription_Str,  tblPersonPosition.personPositionDescription_Str' +
        ', tblRxLevel.rxLevelCode_Str, tblPerson.personRegistrationNo_str' +
        ',  tblContact.contactMode_str, tblContact.contactDisplay_Str, tb' +
        'lContact.contactDetail_Str,  tblComplexSiteDepartment.department' +
        'Name_str, tblComplex.complexName_str, tblComplexSite.siteName_St' +
        'r'
      
        'FROM tblPersonPosition LEFT OUTER JOIN tblComplexSiteDepartment ' +
        'INNER JOIN tblComplex INNER JOIN tblComplexSite ON tblComplex.co' +
        'mplex_ID = tblComplexSite.complex_ID ON  tblComplexSiteDepartmen' +
        't.complexSite_ID = tblComplexSite.complexSite_ID ON  tblPersonPo' +
        'sition.complexSiteDepartment_ID = tblComplexSiteDepartment.compl' +
        'exSiteDepartment_ID LEFT OUTER JOIN tblRxLevel ON tblPersonPosit' +
        'ion.rxLevel_ID = tblRxLevel.rxLevel_ID LEFT OUTER JOIN tblPerson' +
        'PositionTitle ON tblPersonPosition.personPositionTitle_ID = tblP' +
        'ersonPositionTitle.personPositionTitle_ID RIGHT OUTER JOIN tblPe' +
        'rson LEFT OUTER JOIN tblContact ON tblPerson.person_ID = tblCont' +
        'act.linking_ID ON  tblPersonPosition.person_ID = tblPerson.perso' +
        'n_ID LEFT OUTER JOIN tblPersonType ON tblPersonPosition.personTy' +
        'pe_ID = tblPersonType.personType_ID'
      
        'WHERE (tblPersonPosition.personPositionCurrent_bol = 1) AND (tbl' +
        'PersonType.personTypeDescription_Str = N'#39'Prescriber'#39') AND  (tblC' +
        'ontact.contactMode_str = N'#39'Cell Phone'#39')'
      
        'ORDER BY tblComplex.complexName_str, tblComplexSite.siteName_Str' +
        ', tblPersonType.personTypeDescription_Str, tblPerson.personLastN' +
        'ame_Str, tblPerson.personFirstName_Str,  tblPerson.personKnownNa' +
        'me_Str')
    Left = 320
    Top = 24
  end
  object dsqryPrintRegisterByName: TDataSource
    DataSet = qryPrintRegisterByName
    Left = 352
    Top = 24
  end
  object ppDBRegisterByName: TppDBPipeline
    DataSource = dsqryPrintRegisterByName
    CloseDataSource = True
    UserName = 'DBRegisterByName'
    Left = 384
    Top = 24
    object ppDBRegisterByNameppField1: TppField
      FieldAlias = 'personIDNumber_Str'
      FieldName = 'personIDNumber_Str'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBRegisterByNameppField2: TppField
      FieldAlias = 'personLastName_Str'
      FieldName = 'personLastName_Str'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppDBRegisterByNameppField3: TppField
      FieldAlias = 'personFirstName_Str'
      FieldName = 'personFirstName_Str'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppDBRegisterByNameppField4: TppField
      FieldAlias = 'personInitials_Str'
      FieldName = 'personInitials_Str'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBRegisterByNameppField5: TppField
      FieldAlias = 'personGender_Str'
      FieldName = 'personGender_Str'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object ppDBRegisterByNameppField6: TppField
      FieldAlias = 'personActive_Bol'
      FieldName = 'personActive_Bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object ppDBRegisterByNameppField7: TppField
      FieldAlias = 'personPositionCurrent_bol'
      FieldName = 'personPositionCurrent_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object ppDBRegisterByNameppField8: TppField
      FieldAlias = 'personPositionNumberNo_Str'
      FieldName = 'personPositionNumberNo_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDBRegisterByNameppField9: TppField
      FieldAlias = 'personPositionTitle_Str'
      FieldName = 'personPositionTitle_Str'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object ppDBRegisterByNameppField10: TppField
      FieldAlias = 'personPositionStart_Dat'
      FieldName = 'personPositionStart_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppDBRegisterByNameppField11: TppField
      FieldAlias = 'personTypeDescription_Str'
      FieldName = 'personTypeDescription_Str'
      FieldLength = 100
      DisplayWidth = 100
      Position = 10
    end
    object ppDBRegisterByNameppField12: TppField
      FieldAlias = 'personPositionTitleDescription_Str'
      FieldName = 'personPositionTitleDescription_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppDBRegisterByNameppField13: TppField
      FieldAlias = 'personPositionDescription_Str'
      FieldName = 'personPositionDescription_Str'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
    object ppDBRegisterByNameppField14: TppField
      FieldAlias = 'rxLevelCode_Str'
      FieldName = 'rxLevelCode_Str'
      FieldLength = 3
      DisplayWidth = 3
      Position = 13
    end
    object ppDBRegisterByNameppField15: TppField
      FieldAlias = 'personRegistrationNo_str'
      FieldName = 'personRegistrationNo_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppDBRegisterByNameppField16: TppField
      FieldAlias = 'contactMode_str'
      FieldName = 'contactMode_str'
      FieldLength = 25
      DisplayWidth = 25
      Position = 15
    end
    object ppDBRegisterByNameppField17: TppField
      FieldAlias = 'contactDisplay_Str'
      FieldName = 'contactDisplay_Str'
      FieldLength = 250
      DisplayWidth = 250
      Position = 16
    end
    object ppDBRegisterByNameppField18: TppField
      FieldAlias = 'contactDetail_Str'
      FieldName = 'contactDetail_Str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 17
    end
    object ppDBRegisterByNameppField19: TppField
      FieldAlias = 'departmentName_str'
      FieldName = 'departmentName_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppDBRegisterByNameppField20: TppField
      FieldAlias = 'complexName_str'
      FieldName = 'complexName_str'
      FieldLength = 200
      DisplayWidth = 200
      Position = 19
    end
    object ppDBRegisterByNameppField21: TppField
      FieldAlias = 'siteName_Str'
      FieldName = 'siteName_Str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 20
    end
  end
  object ppReportRegisterByName: TppReport
    AutoStop = False
    DataPipeline = ppDBRegisterByName
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\RegisterByName.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 24
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRegisterByName'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 33073
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30692
        mmLeft = 265
        mmTop = 265
        mmWidth = 32808
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 31485
        mmLeft = 0
        mmTop = 0
        mmWidth = 182563
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 3
        Weight = 2.25
        mmHeight = 1058
        mmLeft = 34925
        mmTop = 12700
        mmWidth = 146050
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'complexName_str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 7366
        mmLeft = 108839
        mmTop = 14288
        mmWidth = 72136
        BandType = 0
      end
      object ppParameterDescription: TppMemo
        UserName = 'ParameterDescription'
        Caption = 'ParameterDescription'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '')
        Stretch = True
        Transparent = True
        mmHeight = 8731
        mmLeft = 35190
        mmTop = 21960
        mmWidth = 145786
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'Prescriber Register [ordered by Name]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 24
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 10319
        mmLeft = 35454
        mmTop = 1852
        mmWidth = 144727
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'personLastName_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 4498
        mmLeft = 17198
        mmTop = 265
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 4498
        mmLeft = 62177
        mmTop = 265
        mmWidth = 56092
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'personPositionNumberNo_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 4498
        mmLeft = 529
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'rxLevelCode_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'contactDetail_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 4498
        mmLeft = 152665
        mmTop = 265
        mmWidth = 29369
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clSilver
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 5027
        mmWidth = 182298
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 15621
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Register Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 0
        mmTop = 9500
        mmWidth = 15452
        BandType = 8
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'report_Version_Major'
        DisplayFormat = '#"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 14288
        mmTop = 9525
        mmWidth = 2646
        BandType = 8
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'report_Version_Minor'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 16669
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'report_Version_Hi'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 19050
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'report_Version_Lo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 21431
        mmTop = 9525
        mmWidth = 2910
        BandType = 8
      end
      object ppReportCopyright: TppLabel
        UserName = 'Label7'
        Caption = 'Copyright Label'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 167889
        mmTop = 9525
        mmWidth = 14817
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        Pen.Color = clSilver
        mmHeight = 8731
        mmLeft = 0
        mmTop = 1588
        mmWidth = 182563
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'There are currently '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 80698
        mmTop = 3175
        mmWidth = 33602
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'personTypeDescription_Str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 3175
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'prescribers in the register for '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 123561
        mmTop = 3175
        mmWidth = 50006
        BandType = 7
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 173832
        mmTop = 3175
        mmWidth = 7938
        BandType = 7
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'complexName_str'
      DataPipeline = ppDBRegisterByName
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRegisterByName'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppRegion1: TppRegion
          UserName = 'Region1'
          Caption = 'Region1'
          mmHeight = 7938
          mmLeft = 0
          mmTop = 0
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel2: TppLabel
            UserName = 'Label102'
            AutoSize = False
            Caption = 'Presc. #'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 10
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 4233
            mmLeft = 529
            mmTop = 1588
            mmWidth = 16404
            BandType = 3
            GroupNo = 0
          end
          object ppLabel91: TppLabel
            UserName = 'Label91'
            AutoSize = False
            Caption = 'Last Name'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 10
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 4233
            mmLeft = 17198
            mmTop = 1588
            mmWidth = 44715
            BandType = 3
            GroupNo = 0
          end
          object ppLabel92: TppLabel
            UserName = 'Label92'
            AutoSize = False
            Caption = 'First Name'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 10
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 4233
            mmLeft = 62177
            mmTop = 1588
            mmWidth = 56092
            BandType = 3
            GroupNo = 0
          end
          object ppLabel93: TppLabel
            UserName = 'Label93'
            AutoSize = False
            Caption = 'RxLevel'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 10
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 4233
            mmLeft = 118534
            mmTop = 1588
            mmWidth = 13229
            BandType = 3
            GroupNo = 0
          end
          object ppLabel94: TppLabel
            UserName = 'Label94'
            AutoSize = False
            Caption = 'Cell Phone'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 10
            Font.Style = [fsBold]
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 4233
            mmLeft = 152665
            mmTop = 1588
            mmWidth = 29369
            BandType = 3
            GroupNo = 0
          end
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 16404
        mmPrintPosition = 0
        object ppLabel12: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'There are currently '
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5821
          mmLeft = 80433
          mmTop = 1852
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'personTypeDescription_Str'
          DataPipeline = ppDBRegisterByName
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRegisterByName'
          mmHeight = 5821
          mmLeft = 114300
          mmTop = 1852
          mmWidth = 8731
          BandType = 5
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'prescribers in the register for '
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 123561
          mmTop = 8467
          mmWidth = 50006
          BandType = 5
          GroupNo = 0
        end
        object ppSystemVariable4: TppSystemVariable
          UserName = 'SystemVariable4'
          DisplayFormat = 'yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Century Gothic'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 173832
          mmTop = 8202
          mmWidth = 7938
          BandType = 5
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'complexName_str'
          DataPipeline = ppDBRegisterByName
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRegisterByName'
          mmHeight = 4911
          mmLeft = 123561
          mmTop = 2117
          mmWidth = 48302
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 2.94'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    RTF.PixelFormat = pf8bit
    RTF.PixelsPerInch = 96
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.RichEditPixelFormat = pf1bit
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.ViewerPreferences = []
    PDF.AutoEmbedFonts = True
    PDF.ImageFormat = riBitmap
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    DotMatrix.PrinterType = ptEpson
    Left = 448
    Top = 24
  end
  object qryPrintRegisterByNumber: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblPerson.personIDNumber_Str, tblPerson.personLastName_St' +
        'r, tblPerson.personFirstName_Str,  tblPerson.personInitials_Str,' +
        ' tblPerson.personGender_Str, tblPerson.personActive_Bol, tblPers' +
        'onPosition.personPositionCurrent_bol,  tblPersonPosition.personP' +
        'ositionNumberNo_Str, tblPersonPosition.personPositionTitle_Str, ' +
        'tblPersonPosition.personPositionStart_Dat,  tblPersonType.person' +
        'TypeDescription_Str, tblPersonPositionTitle.personPositionTitleD' +
        'escription_Str,  tblPersonPosition.personPositionDescription_Str' +
        ', tblRxLevel.rxLevelCode_Str, tblPerson.personRegistrationNo_str' +
        ',  tblContact.contactMode_str, tblContact.contactDisplay_Str, tb' +
        'lContact.contactDetail_Str,  tblComplexSiteDepartment.department' +
        'Name_str, tblComplex.complexName_str, tblComplexSite.siteName_St' +
        'r'
      
        'FROM tblPersonPosition LEFT OUTER JOIN tblComplexSiteDepartment ' +
        'INNER JOIN tblComplex INNER JOIN tblComplexSite ON tblComplex.co' +
        'mplex_ID = tblComplexSite.complex_ID ON  tblComplexSiteDepartmen' +
        't.complexSite_ID = tblComplexSite.complexSite_ID ON  tblPersonPo' +
        'sition.complexSiteDepartment_ID = tblComplexSiteDepartment.compl' +
        'exSiteDepartment_ID LEFT OUTER JOIN tblRxLevel ON tblPersonPosit' +
        'ion.rxLevel_ID = tblRxLevel.rxLevel_ID LEFT OUTER JOIN tblPerson' +
        'PositionTitle ON tblPersonPosition.personPositionTitle_ID = tblP' +
        'ersonPositionTitle.personPositionTitle_ID RIGHT OUTER JOIN tblPe' +
        'rson LEFT OUTER JOIN tblContact ON tblPerson.person_ID = tblCont' +
        'act.linking_ID ON  tblPersonPosition.person_ID = tblPerson.perso' +
        'n_ID LEFT OUTER JOIN tblPersonType ON tblPersonPosition.personTy' +
        'pe_ID = tblPersonType.personType_ID'
      
        'WHERE (tblPersonType.personTypeDescription_Str = N'#39'Prescriber'#39') ' +
        'AND (tblPersonPosition.personPositionCurrent_bol = 1) AND  (tblC' +
        'ontact.contactMode_str = N'#39'Cell Phone'#39')'
      
        'ORDER BY tblPersonType.personTypeDescription_Str, tblPersonPosit' +
        'ion.personPositionNumberNo_Str')
    Left = 320
    Top = 56
  end
  object dsqryPrintRegisterByNumber: TDataSource
    DataSet = qryPrintRegisterByNumber
    Left = 352
    Top = 56
  end
  object ppDBRegisterByNumber: TppDBPipeline
    DataSource = dsqryPrintRegisterByNumber
    CloseDataSource = True
    UserName = 'DBRegisterByNumber'
    Left = 384
    Top = 56
  end
  object ppReportRegisterByNumber: TppReport
    AutoStop = False
    DataPipeline = ppDBRegisterByNumber
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\RegisterByNumber.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 56
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRegisterByNumber'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 32015
        mmWidth = 182563
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30692
        mmLeft = 265
        mmTop = 265
        mmWidth = 32808
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 31485
        mmLeft = 0
        mmTop = 0
        mmWidth = 182563
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 3
        Weight = 2.25
        mmHeight = 1058
        mmLeft = 34925
        mmTop = 12700
        mmWidth = 146050
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Last Name'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 32279
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'First Name'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61648
        mmTop = 32279
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Presc. #'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 32279
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'RxLevel'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 32279
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Cell Phone'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 32279
        mmWidth = 50536
        BandType = 0
      end
      object ppMemo1: TppMemo
        UserName = 'ParameterDescription'
        Caption = 'ParameterDescription'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '')
        Stretch = True
        Transparent = True
        mmHeight = 8731
        mmLeft = 35190
        mmTop = 21696
        mmWidth = 145521
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label901'
        AutoSize = False
        Caption = 'Prescriber Register [ordered by Number]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 24
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 10319
        mmLeft = 35454
        mmTop = 1852
        mmWidth = 144727
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'complexName_str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 7366
        mmLeft = 108744
        mmTop = 14288
        mmWidth = 72136
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText2'
        DataField = 'personLastName_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 4498
        mmLeft = 26723
        mmTop = 265
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText3'
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 4498
        mmLeft = 61648
        mmTop = 265
        mmWidth = 56092
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText5'
        DataField = 'personPositionNumberNo_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 265
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText11'
        DataField = 'rxLevelCode_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText12'
        DataField = 'contactDetail_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 4498
        mmLeft = 131498
        mmTop = 265
        mmWidth = 50536
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Pen.Color = clSilver
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 5027
        mmWidth = 182298
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line2'
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 15621
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label6'
        Caption = 'Register Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 0
        mmTop = 9500
        mmWidth = 15452
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label7'
        Caption = 'Copyright Label'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 167889
        mmTop = 9525
        mmWidth = 14817
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        Pen.Color = clSilver
        mmHeight = 8731
        mmLeft = 0
        mmTop = 1588
        mmWidth = 182563
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'There are currently '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 80698
        mmTop = 3175
        mmWidth = 33602
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'personLastName_Str'
        DataPipeline = ppDBRegisterByNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRegisterByNumber'
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 3175
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'prescribers in the register for '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 123561
        mmTop = 3175
        mmWidth = 50006
        BandType = 7
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 173832
        mmTop = 3175
        mmWidth = 7938
        BandType = 7
      end
    end
    object ppPageStyle2: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppReportRegisterConsultants: TppReport
    AutoStop = False
    DataPipeline = ppDBRegisterConsultants
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\RegisterByConsultant.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 88
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRegisterConsultants'
    object ppTitleBand3: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 32015
        mmWidth = 182563
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30692
        mmLeft = 265
        mmTop = 265
        mmWidth = 32808
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 31485
        mmLeft = 0
        mmTop = 0
        mmWidth = 182563
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 3
        Weight = 2.25
        mmHeight = 1058
        mmLeft = 34925
        mmTop = 12700
        mmWidth = 146050
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Last Name'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 32279
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'First Name'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61648
        mmTop = 32279
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Presc. #'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 32279
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'RxLevel'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 32279
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Cell Phone'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 32279
        mmWidth = 50536
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label902'
        AutoSize = False
        Caption = 'Prescriber Register [Consultants]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 24
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 10319
        mmLeft = 35454
        mmTop = 1852
        mmWidth = 144727
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'complexName_str'
        DataPipeline = ppDBRegisterByName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterByName'
        mmHeight = 7366
        mmLeft = 108744
        mmTop = 14288
        mmWidth = 72136
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText2'
        DataField = 'personLastName_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 4498
        mmLeft = 26723
        mmTop = 265
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText3'
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 4498
        mmLeft = 61648
        mmTop = 265
        mmWidth = 56092
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText5'
        DataField = 'personPositionNumberNo_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 265
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText11'
        DataField = 'rxLevelCode_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText12'
        DataField = 'contactDetail_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 4498
        mmLeft = 131498
        mmTop = 265
        mmWidth = 50536
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line1'
        Pen.Color = clSilver
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 5027
        mmWidth = 182298
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line2'
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel30: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 15621
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label6'
        Caption = 'Register Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 0
        mmTop = 9500
        mmWidth = 15452
        BandType = 8
      end
      object ppLabel32: TppLabel
        UserName = 'Label7'
        Caption = 'Copyright Label'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 167889
        mmTop = 9525
        mmWidth = 14817
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        Pen.Color = clSilver
        mmHeight = 8731
        mmLeft = 0
        mmTop = 1588
        mmWidth = 182563
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'There are currently '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 80698
        mmTop = 3175
        mmWidth = 33602
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'personTypeDescription_Str'
        DataPipeline = ppDBRegisterConsultants
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRegisterConsultants'
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 3175
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'consultants in the register for '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 123561
        mmTop = 3175
        mmWidth = 50006
        BandType = 7
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Century Gothic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 173832
        mmTop = 3175
        mmWidth = 7938
        BandType = 7
      end
    end
    object ppPageStyle3: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppDBRegisterConsultants: TppDBPipeline
    DataSource = dsqryPrintRegisterConsultants
    CloseDataSource = True
    UserName = 'DBRegisterConsultants'
    Left = 384
    Top = 88
  end
  object dsqryPrintRegisterConsultants: TDataSource
    DataSet = qryPrintRegisterConsultants
    Left = 352
    Top = 88
  end
  object qryPrintRegisterConsultants: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblPerson.personIDNumber_Str, tblPerson.personLastName_St' +
        'r, tblPerson.personFirstName_Str,  tblPerson.personInitials_Str,' +
        ' tblPerson.personGender_Str, tblPerson.personActive_Bol, tblPers' +
        'onPosition.personPositionCurrent_bol,  tblPersonPosition.personP' +
        'ositionNumberNo_Str, tblPersonPosition.personPositionTitle_Str, ' +
        'tblPersonPosition.personPositionStart_Dat,  tblPersonType.person' +
        'TypeDescription_Str, tblPersonPositionTitle.personPositionTitleD' +
        'escription_Str,  tblPersonPosition.personPositionDescription_Str' +
        ', tblRxLevel.rxLevelCode_Str, tblPerson.personRegistrationNo_str' +
        ',  tblContact.contactMode_str, tblContact.contactDisplay_Str, tb' +
        'lContact.contactDetail_Str,  tblComplexSiteDepartment.department' +
        'Name_str, tblComplex.complexName_str, tblComplexSite.siteName_St' +
        'r'
      
        'FROM tblPersonPosition LEFT OUTER JOIN tblComplexSiteDepartment ' +
        'INNER JOIN tblComplex INNER JOIN tblComplexSite ON tblComplex.co' +
        'mplex_ID = tblComplexSite.complex_ID ON  tblComplexSiteDepartmen' +
        't.complexSite_ID = tblComplexSite.complexSite_ID ON  tblPersonPo' +
        'sition.complexSiteDepartment_ID = tblComplexSiteDepartment.compl' +
        'exSiteDepartment_ID LEFT OUTER JOIN tblRxLevel ON tblPersonPosit' +
        'ion.rxLevel_ID = tblRxLevel.rxLevel_ID LEFT OUTER JOIN tblPerson' +
        'PositionTitle ON tblPersonPosition.personPositionTitle_ID = tblP' +
        'ersonPositionTitle.personPositionTitle_ID RIGHT OUTER JOIN tblPe' +
        'rson LEFT OUTER JOIN tblContact ON tblPerson.person_ID = tblCont' +
        'act.linking_ID ON  tblPersonPosition.person_ID = tblPerson.perso' +
        'n_ID LEFT OUTER JOIN tblPersonType ON tblPersonPosition.personTy' +
        'pe_ID = tblPersonType.personType_ID'
      
        'WHERE (tblPersonType.personTypeDescription_Str = N'#39'Prescriber'#39') ' +
        'AND (tblPersonPosition.personPositionCurrent_bol = 1) AND  (tblC' +
        'ontact.contactMode_str = N'#39'Cell Phone'#39') AND (tblPersonPosition.p' +
        'ersonPositionNumberNo_Str LIKE '#39'C%'#39')'
      
        'ORDER BY tblPersonType.personTypeDescription_Str, tblPerson.pers' +
        'onLastName_Str, tblPerson.personFirstName_Str,  tblPerson.person' +
        'KnownName_Str')
    Left = 320
    Top = 88
  end
  object qryBioDataSheet: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PERSONID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT dbo.tblPerson.personIDNumber_Str, dbo' +
        '.tblPerson.personLastName_Str, dbo.tblPerson.personFirstName_Str' +
        ', '
      
        '                      dbo.tblPerson.personKnownName_Str, dbo.tbl' +
        'Person.personInitials_Str, dbo.tblPerson.personDOB_Dat, dbo.tblP' +
        'erson.personGender_Str, '
      
        '                      dbo.tblPerson.personReviewed_Dat, dbo.tblP' +
        'erson.personActive_Bol, dbo.tblPerson.personRace_Str, dbo.tblPer' +
        'son.personLanguageNarrative_Str, '
      
        '                      dbo.tblPerson.personLanguageWritten_Str, d' +
        'bo.tblPerson.personAgeYears_int, dbo.tblPerson.personAgeMonths_i' +
        'nt, '
      
        '                      dbo.tblPersonPosition.personPositionCurren' +
        't_bol, dbo.tblPersonPosition.personPositionNumberNo_Str, dbo.tbl' +
        'PersonPosition.personPositionTitle_Str, '
      
        '                      dbo.tblPersonPosition.personPositionStart_' +
        'Dat, dbo.tblPersonPosition.personPositionEnd_Dat, dbo.tblPersonT' +
        'ype.personTypeDescription_Str, '
      
        '                      dbo.tblPersonPhoto.personPhotoCurrent_bol,' +
        ' dbo.tblPersonPhoto.personPhotoPicture_Img, dbo.tblPersonSignatu' +
        're.personSignatureImage_Img, '
      
        '                      dbo.tblPersonSignature.personSignatureCurr' +
        'ent_bol, dbo.tblPerson.person_ID, dbo.tblPersonSignature.personS' +
        'ignatureDateRecorded_Dat, '
      
        '                      dbo.tblPersonPhoto.personPhotoDate_Dat, db' +
        'o.tblPersonPositionTitle.personPositionTitleDescription_Str, '
      
        '                      dbo.tblPersonPosition.personPositionDescri' +
        'ption_Str, dbo.tblRxLevel.rxLevelCode_Str, '
      
        '                      dbo.tblPersonQualification.personQualifica' +
        'tionDateReceived_Dat, dbo.tblPersonQualification.personQualifica' +
        'tionDescription_Str, '
      
        '                      dbo.tblPersonQualification.personQualifica' +
        'tionName_Str, dbo.tblPersonQualification.personQualificationInst' +
        'itution_Str, '
      
        '                      dbo.tblPersonQualification.personQualifica' +
        'tionDateEntered_Dat, dbo.tblPersonQualification.personQualificat' +
        'ionNumber_str, '
      
        '                      dbo.tblPerson.personRegistrationNo_str, db' +
        'o.tblComplexSiteDepartment.departmentName_str, dbo.tblComplexSit' +
        'e.siteName_Str'
      'FROM         dbo.tblPersonPhoto RIGHT OUTER JOIN'
      
        '                      dbo.tblPersonPositionTitle RIGHT OUTER JOI' +
        'N'
      '                      dbo.tblComplexSiteDepartment INNER JOIN'
      
        '                      dbo.tblComplexSite ON dbo.tblComplexSiteDe' +
        'partment.complexSite_ID = dbo.tblComplexSite.complexSite_ID INNE' +
        'R JOIN'
      '                      dbo.tblComplexSiteDepartmentAreas ON '
      
        '                      dbo.tblComplexSiteDepartment.complexSiteDe' +
        'partment_ID = dbo.tblComplexSiteDepartmentAreas.complexSiteDepar' +
        'tment_ID RIGHT OUTER JOIN'
      '                      dbo.tblRxLevel INNER JOIN'
      
        '                      dbo.tblPersonPosition ON dbo.tblRxLevel.rx' +
        'Level_ID = dbo.tblPersonPosition.rxLevel_ID ON '
      
        '                      dbo.tblComplexSiteDepartment.complexSiteDe' +
        'partment_ID = dbo.tblPersonPosition.complexSiteDepartment_ID ON '
      
        '                      dbo.tblPersonPositionTitle.personPositionT' +
        'itle_ID = dbo.tblPersonPosition.personPositionTitle_ID RIGHT OUT' +
        'ER JOIN'
      '                      dbo.tblPersonSignature RIGHT OUTER JOIN'
      '                      dbo.tblPerson LEFT OUTER JOIN'
      
        '                      dbo.tblPersonQualification ON dbo.tblPerso' +
        'n.person_ID = dbo.tblPersonQualification.person_ID ON '
      
        '                      dbo.tblPersonSignature.person_ID = dbo.tbl' +
        'Person.person_ID ON dbo.tblPersonPosition.person_ID = dbo.tblPer' +
        'son.person_ID LEFT OUTER JOIN'
      
        '                      dbo.tblPersonType ON dbo.tblPersonPosition' +
        '.personType_ID = dbo.tblPersonType.personType_ID ON '
      
        '                      dbo.tblPersonPhoto.person_ID = dbo.tblPers' +
        'on.person_ID'
      
        'WHERE     (dbo.tblPersonPhoto.personPhotoCurrent_bol = 1) AND (d' +
        'bo.tblPersonSignature.personSignatureCurrent_bol = 1) AND (dbo.t' +
        'blPerson.person_ID = :PERSONID)'
      
        'ORDER BY dbo.tblPersonType.personTypeDescription_Str, dbo.tblPer' +
        'son.personLastName_Str, dbo.tblPerson.personFirstName_Str, '
      
        '                      dbo.tblPerson.personKnownName_Str, dbo.tbl' +
        'PersonQualification.personQualificationDateReceived_Dat')
    Left = 320
    Top = 120
  end
  object dsqryBioDataSheet: TDataSource
    DataSet = qryBioDataSheet
    Left = 352
    Top = 120
  end
  object ppDBBioDataSheet: TppDBPipeline
    DataSource = dsqryBioDataSheet
    CloseDataSource = True
    UserName = 'DBBioDataSheet'
    Left = 384
    Top = 120
    object ppDBBioDataSheetppField1: TppField
      FieldAlias = 'personIDNumber_Str'
      FieldName = 'personIDNumber_Str'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBBioDataSheetppField2: TppField
      FieldAlias = 'personLastName_Str'
      FieldName = 'personLastName_Str'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppDBBioDataSheetppField3: TppField
      FieldAlias = 'personFirstName_Str'
      FieldName = 'personFirstName_Str'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppDBBioDataSheetppField4: TppField
      FieldAlias = 'personKnownName_Str'
      FieldName = 'personKnownName_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBBioDataSheetppField5: TppField
      FieldAlias = 'personInitials_Str'
      FieldName = 'personInitials_Str'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBBioDataSheetppField6: TppField
      FieldAlias = 'personDOB_Dat'
      FieldName = 'personDOB_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppDBBioDataSheetppField7: TppField
      FieldAlias = 'personGender_Str'
      FieldName = 'personGender_Str'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBBioDataSheetppField8: TppField
      FieldAlias = 'personReviewed_Dat'
      FieldName = 'personReviewed_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object ppDBBioDataSheetppField9: TppField
      FieldAlias = 'personActive_Bol'
      FieldName = 'personActive_Bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object ppDBBioDataSheetppField10: TppField
      FieldAlias = 'personRace_Str'
      FieldName = 'personRace_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppDBBioDataSheetppField11: TppField
      FieldAlias = 'personLanguageNarrative_Str'
      FieldName = 'personLanguageNarrative_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppDBBioDataSheetppField12: TppField
      FieldAlias = 'personLanguageWritten_Str'
      FieldName = 'personLanguageWritten_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppDBBioDataSheetppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'personAgeYears_int'
      FieldName = 'personAgeYears_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBBioDataSheetppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'personAgeMonths_int'
      FieldName = 'personAgeMonths_int'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBBioDataSheetppField15: TppField
      FieldAlias = 'personPositionCurrent_bol'
      FieldName = 'personPositionCurrent_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
    object ppDBBioDataSheetppField16: TppField
      FieldAlias = 'personPositionNumberNo_Str'
      FieldName = 'personPositionNumberNo_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppDBBioDataSheetppField17: TppField
      FieldAlias = 'personPositionTitle_Str'
      FieldName = 'personPositionTitle_Str'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
    object ppDBBioDataSheetppField18: TppField
      FieldAlias = 'personPositionStart_Dat'
      FieldName = 'personPositionStart_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 17
    end
    object ppDBBioDataSheetppField19: TppField
      FieldAlias = 'personPositionEnd_Dat'
      FieldName = 'personPositionEnd_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object ppDBBioDataSheetppField20: TppField
      FieldAlias = 'personTypeDescription_Str'
      FieldName = 'personTypeDescription_Str'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object ppDBBioDataSheetppField21: TppField
      FieldAlias = 'personPhotoCurrent_bol'
      FieldName = 'personPhotoCurrent_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 20
    end
    object ppDBBioDataSheetppField22: TppField
      FieldAlias = 'personPhotoPicture_Img'
      FieldName = 'personPhotoPicture_Img'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBBioDataSheetppField23: TppField
      FieldAlias = 'personSignatureImage_Img'
      FieldName = 'personSignatureImage_Img'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBBioDataSheetppField24: TppField
      FieldAlias = 'personSignatureCurrent_bol'
      FieldName = 'personSignatureCurrent_bol'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 23
    end
    object ppDBBioDataSheetppField25: TppField
      FieldAlias = 'person_ID'
      FieldName = 'person_ID'
      FieldLength = 38
      DisplayWidth = 38
      Position = 24
    end
    object ppDBBioDataSheetppField26: TppField
      FieldAlias = 'personSignatureDateRecorded_Dat'
      FieldName = 'personSignatureDateRecorded_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object ppDBBioDataSheetppField27: TppField
      FieldAlias = 'personPhotoDate_Dat'
      FieldName = 'personPhotoDate_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 26
    end
    object ppDBBioDataSheetppField28: TppField
      FieldAlias = 'personPositionTitleDescription_Str'
      FieldName = 'personPositionTitleDescription_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 27
    end
    object ppDBBioDataSheetppField29: TppField
      FieldAlias = 'personPositionDescription_Str'
      FieldName = 'personPositionDescription_Str'
      FieldLength = 200
      DisplayWidth = 200
      Position = 28
    end
    object ppDBBioDataSheetppField30: TppField
      FieldAlias = 'rxLevelCode_Str'
      FieldName = 'rxLevelCode_Str'
      FieldLength = 3
      DisplayWidth = 3
      Position = 29
    end
    object ppDBBioDataSheetppField31: TppField
      FieldAlias = 'personQualificationDateReceived_Dat'
      FieldName = 'personQualificationDateReceived_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
    object ppDBBioDataSheetppField32: TppField
      FieldAlias = 'personQualificationDescription_Str'
      FieldName = 'personQualificationDescription_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppDBBioDataSheetppField33: TppField
      FieldAlias = 'personQualificationName_Str'
      FieldName = 'personQualificationName_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppDBBioDataSheetppField34: TppField
      FieldAlias = 'personQualificationInstitution_Str'
      FieldName = 'personQualificationInstitution_Str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object ppDBBioDataSheetppField35: TppField
      FieldAlias = 'personQualificationDateEntered_Dat'
      FieldName = 'personQualificationDateEntered_Dat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 34
    end
    object ppDBBioDataSheetppField36: TppField
      FieldAlias = 'personQualificationNumber_str'
      FieldName = 'personQualificationNumber_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppDBBioDataSheetppField37: TppField
      FieldAlias = 'personRegistrationNo_str'
      FieldName = 'personRegistrationNo_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppDBBioDataSheetppField38: TppField
      FieldAlias = 'departmentName_str'
      FieldName = 'departmentName_str'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
    object ppDBBioDataSheetppField39: TppField
      FieldAlias = 'siteName_Str'
      FieldName = 'siteName_Str'
      FieldLength = 150
      DisplayWidth = 150
      Position = 38
    end
  end
  object ppReportBioDataSheet: TppReport
    AutoStop = False
    DataPipeline = ppDBBioDataSheet
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\BioDataSheet.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 120
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBBioDataSheet'
    object ppTitleBand4: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32544
      mmPrintPosition = 0
      object ppImage4: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30692
        mmLeft = 0
        mmTop = 0
        mmWidth = 32808
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clSilver
        StretchWithParent = True
        mmHeight = 32015
        mmLeft = 0
        mmTop = 0
        mmWidth = 182827
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 32279
        mmTop = 14817
        mmWidth = 149225
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'personLastName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 36
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 15579
        mmLeft = 32279
        mmTop = 0
        mmWidth = 85683
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Century Gothic'
        Font.Size = 22
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 9483
        mmLeft = 32544
        mmTop = 16933
        mmWidth = 28279
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText23'
        DataField = 'personPositionNumberNo_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'Century Gothic'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 9525
        mmLeft = 152136
        mmTop = 5027
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        Color = clSilver
        DataField = 'rxLevelCode_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 11345
        mmLeft = 176753
        mmTop = 16140
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Rx Level'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 164307
        mmTop = 17198
        mmWidth = 11113
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText21'
        DataField = 'personQualificationDateReceived_Dat'
        DataPipeline = ppDBBioDataSheet
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 4798
        mmLeft = 0
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText27'
        DataField = 'personQualificationInstitution_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 4763
        mmLeft = 70379
        mmTop = 265
        mmWidth = 60590
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText28'
        DataField = 'personQualificationName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 4798
        mmLeft = 23283
        mmTop = 265
        mmWidth = 47096
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText29'
        DataField = 'personQualificationNumber_str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 4798
        mmLeft = 131234
        mmTop = 265
        mmWidth = 50800
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line5'
        Pen.Color = clSilver
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 5291
        mmWidth = 182827
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppImage5: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          0A544A504547496D6167652A1B0000FFD8FFE000104A46494600010101006400
          640000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080048013A03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00A3E2
          0BEB9F801FB6DEB3E24D0EE6E2CFC37A678A6DF49BBB57B89248921BDB50C4B6
          E63C072ED9EC71EC2AB7C3BD4EF7E2BFED97A078D2EEEEE24B5F126A57DAB69D
          1BCD204860B79C456A7686009022079E0E464115F54F897FE09FF61E28D6FC76
          752F146BFAAE9FE2E547BC92FAF2169A39A3911E29232210015118419CFC8587
          7CD55F0E7EC067C27E26F06788B4EF14EAF1EA3E1B10C305AADD442D8C1195CA
          15F2B71F336FCFF30CE4E3151665DD16BF6A2FDB2BC47F043C7D71E1DD120F0C
          5C2D8696B7D32EA52CF3DDDCB9049411DB83E40DA061A5E0E73D39AEAFC43FB5
          6EA77DFB26C9F17BC2BA4587DBED6CE1BDBCD2F5495CA22B01BD519002C41618
          27008EB8AADF1ABF627D37E28F8F356F175A6BDAC68D77E21B38ECB5EB0B1BC1
          1417CA91F9684E509042E0601C1C74E5B2CD03F632169F01357F85179E26D613
          42B96063BAB5B9885D3C63A42EC622BE5F4E0283C0E69EA2D0E5BC01FB6C78CA
          FBE27FC3ED27C5FE16D1F4EF0DF8DED2692C27D3A79A4B8B69628C3B094B80AC
          3951851C6EFBC71CDDFDA9BF6CCF10FC14F88171E1FD06DFC312C767A60D4245
          D4A59EE2EA76393E588ADC1F246D030F2F073D31CD5587F60EBC8E7F026A2FE3
          1D72E353F07C8469F1CB770983CA2D970C042092EA023608F954743CD751F19B
          F627D3FE27F8E752F16DAEBDABE8D7BAF58C763AF58D85E08A0BE448FCB52728
          48C2E06010081D3939350D093C47FB68DBE9FF00B29DBFC59D3F41F3F54BB8ED
          618747966C46975395501A4C7DC5249CE0120638CE471DE1DFDAFF00E2745F1B
          3C1FE01F12F85FC370A6AF65FDA136A1A74B70C25877B21F255C6436548F9B20
          E33919C0D4D43F64CD47C25FB2AF8BBE1AD85BC1E3149235934EB7D62E8C6E4A
          48AC0096355DACA149438C6400DC135E1FFB3E7C12F1BBFC77F0AF8A35CD2751
          D3D74AB11A730D5F583A9DE4C77E73B87C91C4832028C72738CB1C1A8F43D3BE
          3CFEDFFAB7C3EF8A9E29F0A786F4AD0DD3C311C3F695D69EE3CFD4A578FCC68A
          DC44A55368C2EE73CB11C6391DA7C5BFDB0B54F0F7ECCDA47C5CF08689637314
          B25B0BFD2B577904B089B0BB10A632CAEC01270300FD2AFF00C6EFD8BB4DF891
          E39D43C5FA1788359F0B6ADABC51C1AC47A55DAC297EA8BB558E518ABEDC2EE5
          C71EE49AB9F103F642D3FE237C1283C0377ABEA5A45AC12C7304D2AE5544E630
          046B33CA92170080D9E092324D1A8B43CB17F6CFF8B73FC4997C091782BC2EBA
          DEA5A62EB1A3DC35EDC982280BB214986CDD236E52A0A0419E7A57A57C2AFDB1
          ADFC63FB2B6ADF16B59D1BEC97BA2DB5C3DF697692655E58999556366E81C85E
          B9DBB8F5C73CA41FB0F6A9178DF45F177FC271E201AF59695FD8CD70B790FEEE
          01195063FDC6436E632E4923CC39C63E5AED3E05FEC8BA6FC29F879E2EF006A1
          7775AFF84B5E1223C1A84CAF22A48A43A828898CE49C8E41E4628570763CAFE0
          77FC141B54F1CFC49F0E681E26D2F443A6F88A17682EB427B82FA6CA13788AE7
          CD50AD91F2EE4206E078239AE93E237ED51F143C3DF1F7C45F0CBC3FE1AF0CEA
          13C1A726A5A6DEDDCF70AA637236ACAAA096727230B803AEEE306EFC3AFD887F
          E15E78C34FBE1E29D635ED2F4C062D3ECF55BC0F0DAC678E234450ED8180589C
          0F700D69F8EBF6387D77E34DCFC44D2BC67E22B2D4EFADDAD2709770AA411142
          AAB08F2495D84EE5DC5B0C067238A350D0CBD0BF6A1F11FC67FD8B7C4FF107C3
          16D65A0F8C6CB48BC9E68E677314061F304924470496DA8590302376D0C71935
          B5FB0BFC55F1A7C49F849A64BE33115EDC2DB426DF5289A479274280EE9D9FFE
          5A13CFCBC55AF815FB24597C20F0278B3C0526A57DAAF84B5B827B6D979708D3
          C714A855D5591100CEE63D3A9357BF670FD9967FD9D6EB52B3D3B5FBED5F47B9
          31AA9D4A61248B144A5628D42AAAA850C7903273CF6C1A83B1F177ED2BA36A1A
          1FC7FF00891E24F1B58EB3E2AF0ADC936FA7F89BC2BA8196E3C38AB1E0C5E4AC
          8A10A6416562A0ED279DCD5F445B7C7F6F801FB22781754F0EDD41E3A9B54B9B
          3D0340B8BC66851DA446D8F71D5976AC6DB875CF191D6AF78F3F615975BF11F8
          DAEF45F1BF88B4AD2FC5F772DEEADA7417B1A473B4BF7D00311DAB8C8C8F9882
          4124631DA9FD8E7C2DAB7C058FE19EA6D3C5636F2C77363716531596C678F3E5
          C91B907E6196049073B8FAD161DD0EF843F193E26F8AB5ED6346F17F8434ED25
          858C72691ABD8B4AD677F332B972777CE88BFBB18C67EF7278AF2AFD8E7E2E58
          F85FE13FC51D66EF4A8B48B3F0EDF6A9A8DF69DA7CD2CE923C2BBA5746958B7C
          DB08038038E057AC7C15FD9B755F85F77AFCD79E2CD5759BBD622586E355BDBA
          12DD0088522F2BE509184049185E4F5CE00143E07FEC8B65F06EE7C63A5B6A97
          FE24F0BF895255BBB7D6A7495DFCC0C25FF571A0F9F71DDF4146A2D0F1DF84BF
          F051BD53C59E3BF0C59EBFA2E88741F11398D468D25C35D692C4663170644092
          03C02531824FA60FA07C5DFDA8BE227833F6871F0D3C3BE1FF000DEA716A7A1C
          7AC6937D793DC298D59CC67CF5453BBE78E40153B3212C30C2A0F097EC250781
          7C57617163E27D6754D034D663A7693A95EE6DAD55B8C14445326D1C2EF240FD
          6BA1F897FB20378BBE34D8FC47D37C5BAF586AD159269DE4C5750AC16D6EAB8D
          90A984B2FCC5A4E58FCEC4F4E28D43413E0C7ED85FF09CFECF3E2AF881E22D15
          2C357F0AC57ADA969D62E4C72B5B86388CB648DD8039CE0E7935CFFC1BFDA87E
          2C78E2FBC13A96B7E04D247833C441E79B53D1E599DF4F8DA12F02481F82ECC6
          3059723961818C9EA7E05FEC8B63F08B4AF1A786EE750BDF11785BC4D1C91DCD
          BEAD3A48E448184A328898DFB8E7FA5647C2DFD8C66F84FE35D1F50B0F176B3A
          B691A28963D26C755BCF321B08A4187091AAAE58AFCA0B13818F4041A868703F
          1B7FE0A13ABF817E2878BBC39E1BD1F439ED3C2B2243710EAD25C0BBD4E4DBBA
          45B7F294A47B7EE82F9C9C7183C777F1C3F6CABFF05FC0AF067C42F09787D6EE
          DBC4171047753EA71CB243A446F1EF669D61F9891D3031C83DF00D8F8C9FB136
          9FE3DF1EEABE2BD03C45ACF866EB5C545D66D34BBC5822BD28BB43728C558800
          12A4679EE49ADAF885FB27DBF8E3E1D786F428B58BFD0EF34199A7B57D2EE7CB
          52C63F2FF785D58BE073CF523E6C8241350D0D1FD94BF685BFF8FF00E16D5751
          D4AD74A866B6BE78609745B933DBCB0844DAC4B7CC8E58B1D8C1481B7239C9F9
          73C25A37897C73FF00051AF1B5C7896DB4EBDBAD024B35825B7799CE9F11B6DD
          17D98370A5B83267BB3E3AF3F4F7ECBDFB3245FB39DA6AF6F6DA85C5E26A33B5
          CCEF7120779666C6E73B55547400000565F81BF654BAF87DFB43EB1F12ACFC53
          ACEAB26B1917D0EA97513ACA02ED4184894E1170ABCF00739A034D4E0FE217ED
          A1E38B5F177C4787C11E15D1B51F0F7C3E6913546D56E265BBBD30A17B830EC1
          B630815802FBB3807BE0745F187F6C5D47C39FB35683F17BC17A458DFD95DC96
          DF6CD3B557712C4B360054D9C160C7072718E9537C5EFD88B4CF1C78D3C41E21
          D0B5FD67C3B1F89D0278834AD3AF161B6D440182581462BB870DB48DC09EE493
          6FE217EC7FA2F8DBE0C587C3C7D6F51D12D6DE54B88AD34899228A4F2C011A3E
          F8DC954C02318391D68D4343BBFD9EFE2578C7E24E87A85EF8C345D3B4891E73
          258C7A5C92C88B6C5576A4AEE06E9436EC941B718C57C1BE06FB07C3AFDA63E3
          46856DE07D6BC5BA145712696969A75F85FB3DAC8877C5BA69D4FCDC720961B7
          822BF48FE17785AF3C15E02D1F42BEB8377716102C06E5882F36D18DEC4000B1
          EA700735F3E7837F62493C13F127C53E20B5F1B7896ED3C456F2C37975797903
          DCF98EA544EA440009533F292081DC1A0133CB3FE09AD7D6DA0780BE2378AAEC
          DCC3059DE5CBDCC72C8D2C82080332A72C465033F4EB9EA78A9BE1EFFC14AF54
          F1278C3C34DAA683A28F0CEBD7E2C7ECBA74B70FA8E981D8AC524ECC82275E9B
          B6E31B87D2BDBFF66CFD9457F67DBAF14D945ABDF6B9E1FD749325AEAD3C7360
          9DDB8E1634197DD86CF5C0AE3F43FD822CFC1DE2AB29748F12EB371E17B0B96B
          AB1D06F2FB36B6EC49382AA81A40B9F943311EB9A351E84FFB51FED89AEFC1BF
          1ADAE87E1C8FC312C6749FED376D5659EE2E2662C711AC36E0B463033E649C1C
          9C74E60F885F16F4CFDA53F60FF17F8A64D3DF4EBC5D064BF6B549DBFD1EE635
          2CACAEB824065C8CF518C8AE93E33FEC59A5FC48F19B78AF4DD7757D0F51BDD3
          D34BD5AD74FBB10C37F6EA30A1BE4254E38F948E00E8724D4F04FEC5C9E1DF82
          DE22F85D3F89F588FC3BA9AEC5BAB6B9885D88FBC258C45761E411B338279A35
          168790F8EFE2C7C43F0B7FC138B41F117867588F4EBDB3B1D32D6E751F31D6EE
          3818431AF924023792C012C47CA58839C57A57C53F10EB7F143F61CF1CDF78CE
          C6DEDB5CB4D2AE2ED64D2E4952012459689D1890C48C2939E339EA2BACD0FF00
          648B2BBFD9B750F837E24D4EFAF343942A417C932FDAE35491648BE6D817E528
          800DBF7460D41A2FEC9B771FC10F107C33D4BC59AC3E99AA348F35FC1729F6C9
          CBB02E199A36508C0052A1471EFCD017478BFECFDFB5A78EBC1E9F057C35E2FD
          0F4C93C21E28D3858D8EA36F34AD7B1BC104786977008436E4E072371C9E39FB
          E410C011D0D7C67FF0C0F76DA6F8083F8CF5E7BAF06391A646D790F92A85CB31
          61E464B15D919C11F2C6A319049FB16DD674B7896409BC280D8E99C734D09DBA
          1628A28A620A28A2800A28A2800A892DA28DCBA448AE7AB05009A968A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A291982296620281924
          F6A008EEAEA1B1B792E2E2548208D4B3C92305551EA49AF33D4BE360BDBD92C7
          C2BA35CF88275E0CCAA5635F7E99C7B9C0F7AE6FC47AF2FC4ABBD46F6FEF9F4A
          F0168C499A60706E5C761EA4F181CE3238C9AF1EF14FC78D5F56DDA4782E0FF8
          467418CED416A36DC4A3FBCEE3904FB1CFA935D70A5DD5D9C73ADD9D97E67BE7
          F6B7C58BAFDE0D2F4CB407911975CFFE866A393E27F8D3C283CCF127848CB680
          65AE6C0E420F56C171F9E2BE517D2756D4A4F3EEEF259A6273BE690B367D724D
          745E1CF17F8D3C11324BA5EB53B44A726D6673242DEC51B23F1183EF5BBA2EDB
          239D5657DD9F63F83BC7FA278E6D4CBA55D8924500C96EFF002C91FD47F51915
          D1D7CB9A2DFC1F12124D6BC3108F0DFC40D393CE9B4FB63B61BE51F79A31EA7B
          83EB839CEEAF70F859F1120F889E1D5BAD820BF80F95776FD0A483AF1D707FFA
          DDAB8E74F975476D3A9CDA33B3AE1CDB58DBF8A62985F99E520931E73E5F3D3F
          FAD5DC562AF852C57506BCDA7CD6EB589B92AF89AC24BE7B649D5D9172CCA720
          7E345BF89AC2E679A349D0AC470D267E5FCEA1B6F08D8DADC4D3229DD2821BF1
          A4B6F08585AC732229C4BF7A8026B5F1469F751CD209D5228C9064638538F7A6
          45E2BD3E4D3DEF0CC1225048DC71BBD85471F83EC22B292D554F96E72686F075
          83580B42A7CA0734012C9E29B08AC16E9E50AAD8DAA4F2D9F4A5BAF14585A430
          BBCA374A4058F3F373DF1515C7842C2E6DE18594EC8BEED2DD7846C6EDE16753
          98800B4012DCF89AC6D678216943492F440791F5A57F12D8A5FA5A0995E565DC
          769CEDFAD453784EC67BD8EE594F989D293FE116B186F1EF769F33049A00B16F
          E22B2BAD49ACA1944B228C92A722B4EB88D06E74C7F14CCB676EF19C72CDEBDE
          BB7A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A002B83F8D7AF3E85E01BB1092B717AEB69195EBF364B
          7FE3A187E35DE57957ED04445A1E853C8336F1EA91799F4C1FE80D6B495E6AE6
          555DA0EC7917C5FD3352D42EBC37F0C3C3F1ACB25B5B2DE5E462554F3AE18127
          25880703240CFF0017B0AE65FE1AEADE12B7B6FB6588884EE22495644742FF00
          DDDCA4807EA6BB1F1140B17ED5CD73797305ADBC525BCFE6DCCA23408204E849
          C67AF15C96BD79A46ADE15B9D17C3A74FF000C5E58EBAB2DCC6FA9F9D0EA0325
          5648A6763BF68620C63A673DABB61371B799C138295FC8D6BFF867E24D321796
          E34EC24782E5278DCA03D090AC7039EA78A80F8035F1E215D0CE9CFF00DA6C9E
          60837AE0AE339DD9DB8FC7DBAD5DF8A3ACE9FA1F892FE4D16D2CF50D6B59D3A3
          D31B53B4D644DE529852362D00F9621818DE73D09E2BD062F8956907C48FB0FD
          A74B92E15E353ACFDBE2F2A3B02031889DDFEB7CD56C2FF75AABDB4ED7B13EC6
          17B5CF1CB08353F0F6AFFDB7A74456EB4794492BA72ABF36D2AC4766CEDF7CD7
          AAD8EA50F837E39D8DF58FEEF45F17D8ADE2A03F289482C4E3D7233FF6D0D795
          F84BC6DA5F847E1678A2DEEB40B3D42FA1F2E391D750976EA520BB552410FC60
          7CFF00260103D2BB0F11DECBA8DD7C2291B4D6D26E0472C8B6A5F7EC87285003
          9270141EA7359D47CDBAFEAD734A71E55A3FEAF63EA80430047434B5C55CCBAE
          4F7B68B013F6318270053E36D7A5D747984FD95010A0002BCF3D23B2A2B8DB27
          D7E4D4EE5E727605223C00071D2A3D35FC427EDB34C4F9BC94E063F2A00EDA8A
          E26C5FC4316957323126ECB123201EBED4D27C4116800464FDA58E1B201E2803
          B8A2B87BDFF848174AB68E1277B63CCE066A5D4FFB7B3651424F978064E0673F
          5A00ECE9929C46E719E0F15C7DF9D79F57B65427ECAB827814A875D975FCC84F
          D954617000A402E917D7373E299BCDD3C5AA818CE304FBD7635C8E8A35897C43
          2C9783F71D01C01C575D4C028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A0028A28A0028A28A0028A28A0028A28A002B91F8AFE167F18780F54D3A1
          50D7463F360FF7D4E401F5C11F8D75D475A69D9DD09A525667C8DF11ECDFC7BE
          0FD0FC6F6CAF25DD8C434BD6A203E78DD7A487D01CF5FF00697D0D79B5A78474
          B8B4F96D923668266F308672486F507B57D29E3AF08EABF0FBC4779E29F0CD9A
          6A3A75F295D5B4471F25CA9EACA3FBDC9EDDCF072457050782B40F1E17BAF036
          A9145393997C3FA8B7953C07B8427EF0CFD47FB5DABD1A552296BB1E655A726F
          4DCF2C8FC276116A9FDA0A25173C73E61C1C74E29E3C3162B7D7576164135CAE
          D90873835E813FC2AF16DBC9E5BE85745B38CA00E3F3048AD3B0F837AC2C26EF
          5B9AD7C3BA727325CDF4CA303D803D7EA4574F3D35D4E650A8DECCE33E1DFC33
          8BC41A8DBE83670B1B4793CD9D9CEE11A0396639FD3DC8AEFF00FB52D3C67F16
          2FB5A8A48E0F0DF87ADBEC16D70EC1630101DEF93C0503773E856AADD788A0BD
          D3E7F097C3A8E4FB35C61352F11CCA55A51DD63E87D47E27D771EAEFFE0849A8
          FC1ED5FC3FA4EDB7BB9A01E4997A48EAEAE439FF006B6E09F7AE39CD4A4A2F45
          B7A2EE77D0A76D59E89E06F8BFE0DF1CDD3699A0EBB05F5E411EF306C78D997A
          6E50EA370F75C8AEDB70F51F9D7CBEBA778ABC51E1DB9D174FF87A3C31AC5B69
          AF026B0F78A64F348C158CA0E030C8DC4E467A715E59E33F076B9A3E8DBADFC3
          57FA16892DD59433E932DD2937372A642EEA54955CA90BD79C64D358784DD94A
          DF34FF00CBFADCEFB1F798607B8AA1AC6BB63A0DBC53DF4DE4C52CC902B0467F
          9DCED51F2838E4F53C0EF5F18DEE83E29F0468ADE27D16C6EBC3B0DADFA45A56
          97773798C3CF88452018C8F99C09368E06CAD38FE04F8974CBE92EAD6C6E6668
          A4D2DEDA6332FCD1A18DA66C16EA0AE4E7938EF4BEAF4D6AE7FD7DFE7E7D7B05
          8FB0AFF52B6D32C2E2F6E6558AD6DE269A590F3B514649E3D8566DDF8D745B1F
          0C2788A7BF44D19D23905D6D620AB9010E00CF25876EF5F097D927D4355D3747
          B4B392E3C58B3DEC5A8DF47781DAEDBCA9132E9F7972CC4664031BB03835DBEA
          BFB3E6BD67E1C4B1D3F47B8921BCD16D64BA81A65DA6F927F98E0B7DE1193CF4
          C1C0356F0B4E0D29CFF2DAFEA163EC0BED45E27B710AF989280729824E5940C7
          B7CD927D074E6AB5EF89ED342D3EF2FB57B88EC2CED6233CB34AC311A0241271
          9F6C0E4E722A1D27C371DBE81A5DBC4CF6925B5B471290036005E8410471CE3B
          8C9E793587F107479B49F875AEFD83471E29D4648542D8DD32AACC430DA0F450
          AB92DB463A6072735E7C527248437FE17BF813FE11D1AE7FC24307F679B8FB28
          6F2A4F37CDC676795B77E71CFDDE9CF4A76A5F1D3C07A4C3A5CD73E25B448B53
          884F6CEBB9C3479DBBD8A83B1739196C0C823B1AF9A7C3FE02F12D8CBA4F89EE
          3C257DA85ED9EA52DCEA3612BC2A6E3CC84A078C062A02E400A7B01F5AA50FC2
          0F1AE83A24F6D2F859B529F5BD19EC22D9327FA04AF7324B96C9E81643D3B8AF
          4961E87F37E2BCFF00E1FCC763EB43F14BC303C603C2C35456D70E3FD1961908
          194DE32E1768CAF3C9EF5D5D7C9767F0CFC5FA3FC5CD3AEAC749BDB6BC4BC81E
          E355179BED2E2D5215465319E779DA074E31906BEB4AE3AD0842DC8EF7401451
          45738828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0064B12CC851C0653D8D798F8E7E04685E2D9DAE8DA2
          C779D44F1131BE7D723AFE39A28A69B5AA1349E8CE31FE0F78A74DCC569E2EF1
          1C307408B7CC401ED8229B6BF009F53BA49F569750D6651D1F52B96931F871FA
          E68A2AB9E5DC8F671EC7AA7867E1E5A6871463CB440830B1A280A3E80576088B
          1A8551803A0A28A8341D515C5B4577118E68D648CF556191451400971670DDC3
          E54D12C91F076B0C8E2A50000001803B51450066C5E19D2E1D49F504B1856F1C
          E5A60BF313EB5A7451400514514005145140051451401FFFD9}
        mmHeight = 10848
        mmLeft = 105569
        mmTop = 2646
        mmWidth = 62177
        BandType = 8
      end
      object ppLine12: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel36: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'ddd dd mmmm yyyy @ [hh:nn]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 53711
        BandType = 8
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label6'
        Caption = 'Report Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 9500
        mmWidth = 14288
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label7'
        Caption = 'RPM +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 176144
        mmTop = 9525
        mmWidth = 6562
        BandType = 8
      end
    end
    object ppPageStyle4: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'person_ID'
      DataPipeline = ppDBBioDataSheet
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBBioDataSheet'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 130704
        mmPrintPosition = 0
        object ppRegion3: TppRegion
          UserName = 'Region3'
          Caption = 'Region3'
          Pen.Color = clSilver
          mmHeight = 66675
          mmLeft = 0
          mmTop = 794
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel39: TppLabel
            UserName = 'Label9'
            AutoSize = False
            Caption = 'Personal Details'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Arial Narrow'
            Font.Size = 16
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 6615
            mmLeft = 1588
            mmTop = 2117
            mmWidth = 98425
            BandType = 3
            GroupNo = 0
          end
          object ppLabel40: TppLabel
            UserName = 'Label3'
            AutoSize = False
            Caption = 'Last Name :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 10
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 10319
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppDBText36: TppDBText
            UserName = 'DBText2'
            DataField = 'personLastName_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 10055
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppDBText37: TppDBText
            UserName = 'DBText3'
            DataField = 'personFirstName_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 15875
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppLabel41: TppLabel
            UserName = 'Label4'
            AutoSize = False
            Caption = 'First Name :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 10
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 16140
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion2: TppRegion
          UserName = 'Region1'
          Pen.Color = clSilver
          mmHeight = 120915
          mmLeft = 102129
          mmTop = 794
          mmWidth = 80698
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppDBImage1: TppDBImage
            UserName = 'DBImage1'
            MaintainAspectRatio = True
            Stretch = True
            Transparent = True
            DataField = 'personPhotoPicture_Img'
            DataPipeline = ppDBBioDataSheet
            GraphicType = 'Bitmap'
            ParentDataPipeline = False
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 68263
            mmLeft = 103452
            mmTop = 15875
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLabel49: TppLabel
            UserName = 'Label5'
            AutoSize = False
            Caption = 'Photograph'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Arial Narrow'
            Font.Size = 16
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 6615
            mmLeft = 103452
            mmTop = 2117
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppDBText46: TppDBText
            UserName = 'DBText20'
            DataField = 'personPhotoDate_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Name = 'Arial Narrow'
            Font.Size = 8
            Font.Style = []
            ParentDataPipeline = False
            TextAlignment = taRightJustified
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 4233
            mmLeft = 103452
            mmTop = 9790
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLine13: TppLine
            UserName = 'Line4'
            Pen.Color = clSilver
            Weight = 0.75
            mmHeight = 1058
            mmLeft = 103452
            mmTop = 14817
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppDBText47: TppDBText
            UserName = 'DBText201'
            DataField = 'personSignatureDateRecorded_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Name = 'Arial Narrow'
            Font.Size = 8
            Font.Style = []
            ParentDataPipeline = False
            TextAlignment = taRightJustified
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 4233
            mmLeft = 103452
            mmTop = 116417
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLine14: TppLine
            UserName = 'Line1'
            Pen.Color = clSilver
            Weight = 0.75
            mmHeight = 2381
            mmLeft = 103452
            mmTop = 84931
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppDBImage2: TppDBImage
            UserName = 'DBImage2'
            MaintainAspectRatio = True
            Stretch = True
            DataField = 'personSignatureImage_Img'
            DataPipeline = ppDBBioDataSheet
            GraphicType = 'Bitmap'
            ParentDataPipeline = False
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 25929
            mmLeft = 103452
            mmTop = 90223
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLabel50: TppLabel
            UserName = 'Label8'
            AutoSize = False
            Caption = 'Signature'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Name = 'Arial Narrow'
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 4498
            mmLeft = 103452
            mmTop = 85461
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion5: TppRegion
          UserName = 'Region5'
          Brush.Style = bsClear
          Caption = 'Region5'
          Pen.Color = clSilver
          Transparent = True
          mmHeight = 51065
          mmLeft = 0
          mmTop = 68792
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel51: TppLabel
            UserName = 'Label18'
            AutoSize = False
            Caption = 'Prescriber Number :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 76994
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppLabel52: TppLabel
            UserName = 'Label19'
            AutoSize = False
            Caption = 'Title :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 88636
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppLabel53: TppLabel
            UserName = 'Label20'
            AutoSize = False
            Caption = 'Description :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 94457
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppLabel54: TppLabel
            UserName = 'Label21'
            AutoSize = False
            Caption = 'Type :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 100278
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppDBText48: TppDBText
            UserName = 'DBText18'
            DataField = 'personTypeDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 100278
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppDBText49: TppDBText
            UserName = 'DBText17'
            DataField = 'personPositionDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 94457
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppDBText50: TppDBText
            UserName = 'DBText16'
            DataField = 'personPositionTitleDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 88636
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppDBText51: TppDBText
            UserName = 'DBText15'
            DataField = 'personPositionNumberNo_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 76994
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppLabel55: TppLabel
            UserName = 'Label10'
            AutoSize = False
            Caption = 'Position Details'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Arial Narrow'
            Font.Size = 12
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 5821
            mmLeft = 1588
            mmTop = 70644
            mmWidth = 98161
            BandType = 3
            GroupNo = 0
          end
          object ppLabel56: TppLabel
            UserName = 'Label23'
            AutoSize = False
            Caption = 'Current Position Started :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 106099
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppDBText52: TppDBText
            UserName = 'DBText24'
            DataField = 'personPositionStart_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 106099
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppLabel57: TppLabel
            UserName = 'Label24'
            AutoSize = False
            Caption = 'Rx Level :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 111920
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppDBText53: TppDBText
            UserName = 'DBText25'
            DataField = 'rxLevelCode_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 111920
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
          object ppLabel58: TppLabel
            UserName = 'Label26'
            AutoSize = False
            Caption = 'HPCSA Registration # :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 82815
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppDBText54: TppDBText
            UserName = 'DBText31'
            DataField = 'personRegistrationNo_str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Name = 'Arial Narrow'
            Font.Size = 11
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBBioDataSheet'
            mmHeight = 5556
            mmLeft = 40217
            mmTop = 82815
            mmWidth = 59531
            BandType = 3
            GroupNo = 0
          end
        end
        object ppLabel59: TppLabel
          UserName = 'Label101'
          AutoSize = False
          Caption = 'Qualifications'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 5821
          mmLeft = 0
          mmTop = 122238
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 34131
        mmPrintPosition = 0
        object ppRegion4: TppRegion
          UserName = 'Region4'
          Caption = 'Region4'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 33338
          mmLeft = 0
          mmTop = 0
          mmWidth = 182563
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel60: TppLabel
            UserName = 'Label17'
            Caption = 'Notes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Arial Narrow'
            Font.Size = 12
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 5027
            mmLeft = 1852
            mmTop = 1058
            mmWidth = 8996
            BandType = 5
            GroupNo = 0
          end
        end
      end
    end
  end
  object ppReportBioBlankDataSheet: TppReport
    AutoStop = False
    DataPipeline = ppDBBioDataSheet
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\BlankBioDataSheet.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 152
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBBioDataSheet'
    object ppTitleBand5: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppImage6: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30163
        mmLeft = 529
        mmTop = 794
        mmWidth = 32544
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clSilver
        StretchWithParent = True
        mmHeight = 32015
        mmLeft = 0
        mmTop = 0
        mmWidth = 182827
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 31485
        mmTop = 14023
        mmWidth = 149225
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label22'
        Caption = 'Bio Datasheet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Verdana'
        Font.Size = 26
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 11113
        mmLeft = 109009
        mmTop = 1588
        mmWidth = 71702
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 151607
        mmTop = 25400
        mmWidth = 29104
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel61: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Qualifications'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 0
        mmTop = 1058
        mmWidth = 182827
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppImage7: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          0A544A504547496D6167652A1B0000FFD8FFE000104A46494600010101006400
          640000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080048013A03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00A3E2
          0BEB9F801FB6DEB3E24D0EE6E2CFC37A678A6DF49BBB57B89248921BDB50C4B6
          E63C072ED9EC71EC2AB7C3BD4EF7E2BFED97A078D2EEEEE24B5F126A57DAB69D
          1BCD204860B79C456A7686009022079E0E464115F54F897FE09FF61E28D6FC76
          752F146BFAAE9FE2E547BC92FAF2169A39A3911E29232210015118419CFC8587
          7CD55F0E7EC067C27E26F06788B4EF14EAF1EA3E1B10C305AADD442D8C1195CA
          15F2B71F336FCFF30CE4E3151665DD16BF6A2FDB2BC47F043C7D71E1DD120F0C
          5C2D8696B7D32EA52CF3DDDCB9049411DB83E40DA061A5E0E73D39AEAFC43FB5
          6EA77DFB26C9F17BC2BA4587DBED6CE1BDBCD2F5495CA22B01BD519002C41618
          27008EB8AADF1ABF627D37E28F8F356F175A6BDAC68D77E21B38ECB5EB0B1BC1
          1417CA91F9684E509042E0601C1C74E5B2CD03F632169F01357F85179E26D613
          42B96063BAB5B9885D3C63A42EC622BE5F4E0283C0E69EA2D0E5BC01FB6C78CA
          FBE27FC3ED27C5FE16D1F4EF0DF8DED2692C27D3A79A4B8B69628C3B094B80AC
          3951851C6EFBC71CDDFDA9BF6CCF10FC14F88171E1FD06DFC312C767A60D4245
          D4A59EE2EA76393E588ADC1F246D030F2F073D31CD5587F60EBC8E7F026A2FE3
          1D72E353F07C8469F1CB770983CA2D970C042092EA023608F954743CD751F19B
          F627D3FE27F8E752F16DAEBDABE8D7BAF58C763AF58D85E08A0BE448FCB52728
          48C2E06010081D3939350D093C47FB68DBE9FF00B29DBFC59D3F41F3F54BB8ED
          618747966C46975395501A4C7DC5249CE0120638CE471DE1DFDAFF00E2745F1B
          3C1FE01F12F85FC370A6AF65FDA136A1A74B70C25877B21F255C6436548F9B20
          E33919C0D4D43F64CD47C25FB2AF8BBE1AD85BC1E3149235934EB7D62E8C6E4A
          48AC0096355DACA149438C6400DC135E1FFB3E7C12F1BBFC77F0AF8A35CD2751
          D3D74AB11A730D5F583A9DE4C77E73B87C91C4832028C72738CB1C1A8F43D3BE
          3CFEDFFAB7C3EF8A9E29F0A786F4AD0DD3C311C3F695D69EE3CFD4A578FCC68A
          DC44A55368C2EE73CB11C6391DA7C5BFDB0B54F0F7ECCDA47C5CF08689637314
          B25B0BFD2B577904B089B0BB10A632CAEC01270300FD2AFF00C6EFD8BB4DF891
          E39D43C5FA1788359F0B6ADABC51C1AC47A55DAC297EA8BB558E518ABEDC2EE5
          C71EE49AB9F103F642D3FE237C1283C0377ABEA5A45AC12C7304D2AE5544E630
          046B33CA92170080D9E092324D1A8B43CB17F6CFF8B73FC4997C091782BC2EBA
          DEA5A62EB1A3DC35EDC982280BB214986CDD236E52A0A0419E7A57A57C2AFDB1
          ADFC63FB2B6ADF16B59D1BEC97BA2DB5C3DF697692655E58999556366E81C85E
          B9DBB8F5C73CA41FB0F6A9178DF45F177FC271E201AF59695FD8CD70B790FEEE
          01195063FDC6436E632E4923CC39C63E5AED3E05FEC8BA6FC29F879E2EF006A1
          7775AFF84B5E1223C1A84CAF22A48A43A828898CE49C8E41E4628570763CAFE0
          77FC141B54F1CFC49F0E681E26D2F443A6F88A17682EB427B82FA6CA13788AE7
          CD50AD91F2EE4206E078239AE93E237ED51F143C3DF1F7C45F0CBC3FE1AF0CEA
          13C1A726A5A6DEDDCF70AA637236ACAAA096727230B803AEEE306EFC3AFD887F
          E15E78C34FBE1E29D635ED2F4C062D3ECF55BC0F0DAC678E234450ED8180589C
          0F700D69F8EBF6387D77E34DCFC44D2BC67E22B2D4EFADDAD2709770AA411142
          AAB08F2495D84EE5DC5B0C067238A350D0CBD0BF6A1F11FC67FD8B7C4FF107C3
          16D65A0F8C6CB48BC9E68E677314061F304924470496DA8590302376D0C71935
          B5FB0BFC55F1A7C49F849A64BE33115EDC2DB426DF5289A479274280EE9D9FFE
          5A13CFCBC55AF815FB24597C20F0278B3C0526A57DAAF84B5B827B6D979708D3
          C714A855D5591100CEE63D3A9357BF670FD9967FD9D6EB52B3D3B5FBED5F47B9
          31AA9D4A61248B144A5628D42AAAA850C7903273CF6C1A83B1F177ED2BA36A1A
          1FC7FF00891E24F1B58EB3E2AF0ADC936FA7F89BC2BA8196E3C38AB1E0C5E4AC
          8A10A6416562A0ED279DCD5F445B7C7F6F801FB22781754F0EDD41E3A9B54B9B
          3D0340B8BC66851DA446D8F71D5976AC6DB875CF191D6AF78F3F615975BF11F8
          DAEF45F1BF88B4AD2FC5F772DEEADA7417B1A473B4BF7D00311DAB8C8C8F9882
          4124631DA9FD8E7C2DAB7C058FE19EA6D3C5636F2C77363716531596C678F3E5
          C91B907E6196049073B8FAD161DD0EF843F193E26F8AB5ED6346F17F8434ED25
          858C72691ABD8B4AD677F332B972777CE88BFBB18C67EF7278AF2AFD8E7E2E58
          F85FE13FC51D66EF4A8B48B3F0EDF6A9A8DF69DA7CD2CE923C2BBA5746958B7C
          DB08038038E057AC7C15FD9B755F85F77AFCD79E2CD5759BBD622586E355BDBA
          12DD0088522F2BE509184049185E4F5CE00143E07FEC8B65F06EE7C63A5B6A97
          FE24F0BF895255BBB7D6A7495DFCC0C25FF571A0F9F71DDF4146A2D0F1DF84BF
          F051BD53C59E3BF0C59EBFA2E88741F11398D468D25C35D692C4663170644092
          03C02531824FA60FA07C5DFDA8BE227833F6871F0D3C3BE1FF000DEA716A7A1C
          7AC6937D793DC298D59CC67CF5453BBE78E40153B3212C30C2A0F097EC250781
          7C57617163E27D6754D034D663A7693A95EE6DAD55B8C14445326D1C2EF240FD
          6BA1F897FB20378BBE34D8FC47D37C5BAF586AD159269DE4C5750AC16D6EAB8D
          90A984B2FCC5A4E58FCEC4F4E28D43413E0C7ED85FF09CFECF3E2AF881E22D15
          2C357F0AC57ADA969D62E4C72B5B86388CB648DD8039CE0E7935CFFC1BFDA87E
          2C78E2FBC13A96B7E04D247833C441E79B53D1E599DF4F8DA12F02481F82ECC6
          3059723961818C9EA7E05FEC8B63F08B4AF1A786EE750BDF11785BC4D1C91DCD
          BEAD3A48E448184A328898DFB8E7FA5647C2DFD8C66F84FE35D1F50B0F176B3A
          B691A28963D26C755BCF321B08A4187091AAAE58AFCA0B13818F4041A868703F
          1B7FE0A13ABF817E2878BBC39E1BD1F439ED3C2B2243710EAD25C0BBD4E4DBBA
          45B7F294A47B7EE82F9C9C7183C777F1C3F6CABFF05FC0AF067C42F09787D6EE
          DBC4171047753EA71CB243A446F1EF669D61F9891D3031C83DF00D8F8C9FB136
          9FE3DF1EEABE2BD03C45ACF866EB5C545D66D34BBC5822BD28BB43728C558800
          12A4679EE49ADAF885FB27DBF8E3E1D786F428B58BFD0EF34199A7B57D2EE7CB
          52C63F2FF785D58BE073CF523E6C8241350D0D1FD94BF685BFF8FF00E16D5751
          D4AD74A866B6BE78609745B933DBCB0844DAC4B7CC8E58B1D8C1481B7239C9F9
          73C25A37897C73FF00051AF1B5C7896DB4EBDBAD024B35825B7799CE9F11B6DD
          17D98370A5B83267BB3E3AF3F4F7ECBDFB3245FB39DA6AF6F6DA85C5E26A33B5
          CCEF7120779666C6E73B55547400000565F81BF654BAF87DFB43EB1F12ACFC53
          ACEAB26B1917D0EA97513ACA02ED4184894E1170ABCF00739A034D4E0FE217ED
          A1E38B5F177C4787C11E15D1B51F0F7C3E6913546D56E265BBBD30A17B830EC1
          B630815802FBB3807BE0745F187F6C5D47C39FB35683F17BC17A458DFD95DC96
          DF6CD3B557712C4B360054D9C160C7072718E9537C5EFD88B4CF1C78D3C41E21
          D0B5FD67C3B1F89D0278834AD3AF161B6D440182581462BB870DB48DC09EE493
          6FE217EC7FA2F8DBE0C587C3C7D6F51D12D6DE54B88AD34899228A4F2C011A3E
          F8DC954C02318391D68D4343BBFD9EFE2578C7E24E87A85EF8C345D3B4891E73
          258C7A5C92C88B6C5576A4AEE06E9436EC941B718C57C1BE06FB07C3AFDA63E3
          46856DE07D6BC5BA145712696969A75F85FB3DAC8877C5BA69D4FCDC720961B7
          822BF48FE17785AF3C15E02D1F42BEB8377716102C06E5882F36D18DEC4000B1
          EA700735F3E7837F62493C13F127C53E20B5F1B7896ED3C456F2C37975797903
          DCF98EA544EA440009533F292081DC1A0133CB3FE09AD7D6DA0780BE2378AAEC
          DCC3059DE5CBDCC72C8D2C82080332A72C465033F4EB9EA78A9BE1EFFC14AF54
          F1278C3C34DAA683A28F0CEBD7E2C7ECBA74B70FA8E981D8AC524ECC82275E9B
          B6E31B87D2BDBFF66CFD9457F67DBAF14D945ABDF6B9E1FD749325AEAD3C7360
          9DDB8E1634197DD86CF5C0AE3F43FD822CFC1DE2AB29748F12EB371E17B0B96B
          AB1D06F2FB36B6EC49382AA81A40B9F943311EB9A351E84FFB51FED89AEFC1BF
          1ADAE87E1C8FC312C6749FED376D5659EE2E2662C711AC36E0B463033E649C1C
          9C74E60F885F16F4CFDA53F60FF17F8A64D3DF4EBC5D064BF6B549DBFD1EE635
          2CACAEB824065C8CF518C8AE93E33FEC59A5FC48F19B78AF4DD7757D0F51BDD3
          D34BD5AD74FBB10C37F6EA30A1BE4254E38F948E00E8724D4F04FEC5C9E1DF82
          DE22F85D3F89F588FC3BA9AEC5BAB6B9885D88FBC258C45761E411B338279A35
          168790F8EFE2C7C43F0B7FC138B41F117867588F4EBDB3B1D32D6E751F31D6EE
          3818431AF924023792C012C47CA58839C57A57C53F10EB7F143F61CF1CDF78CE
          C6DEDB5CB4D2AE2ED64D2E4952012459689D1890C48C2939E339EA2BACD0FF00
          648B2BBFD9B750F837E24D4EFAF343942A417C932FDAE35491648BE6D817E528
          800DBF7460D41A2FEC9B771FC10F107C33D4BC59AC3E99AA348F35FC1729F6C9
          CBB02E199A36508C0052A1471EFCD017478BFECFDFB5A78EBC1E9F057C35E2FD
          0F4C93C21E28D3858D8EA36F34AD7B1BC104786977008436E4E072371C9E39FB
          E410C011D0D7C67FF0C0F76DA6F8083F8CF5E7BAF06391A646D790F92A85CB31
          61E464B15D919C11F2C6A319049FB16DD674B7896409BC280D8E99C734D09DBA
          1628A28A620A28A2800A28A2800A892DA28DCBA448AE7AB05009A968A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A291982296620281924
          F6A008EEAEA1B1B792E2E2548208D4B3C92305551EA49AF33D4BE360BDBD92C7
          C2BA35CF88275E0CCAA5635F7E99C7B9C0F7AE6FC47AF2FC4ABBD46F6FEF9F4A
          F0168C499A60706E5C761EA4F181CE3238C9AF1EF14FC78D5F56DDA4782E0FF8
          467418CED416A36DC4A3FBCEE3904FB1CFA935D70A5DD5D9C73ADD9D97E67BE7
          F6B7C58BAFDE0D2F4CB407911975CFFE866A393E27F8D3C283CCF127848CB680
          65AE6C0E420F56C171F9E2BE517D2756D4A4F3EEEF259A6273BE690B367D724D
          745E1CF17F8D3C11324BA5EB53B44A726D6673242DEC51B23F1183EF5BBA2EDB
          239D5657DD9F63F83BC7FA278E6D4CBA55D8924500C96EFF002C91FD47F51915
          D1D7CB9A2DFC1F12124D6BC3108F0DFC40D393CE9B4FB63B61BE51F79A31EA7B
          83EB839CEEAF70F859F1120F889E1D5BAD820BF80F95776FD0A483AF1D707FFA
          DDAB8E74F975476D3A9CDA33B3AE1CDB58DBF8A62985F99E520931E73E5F3D3F
          FAD5DC562AF852C57506BCDA7CD6EB589B92AF89AC24BE7B649D5D9172CCA720
          7E345BF89AC2E679A349D0AC470D267E5FCEA1B6F08D8DADC4D3229DD2821BF1
          A4B6F08585AC732229C4BF7A8026B5F1469F751CD209D5228C9064638538F7A6
          45E2BD3E4D3DEF0CC1225048DC71BBD85471F83EC22B292D554F96E72686F075
          83580B42A7CA0734012C9E29B08AC16E9E50AAD8DAA4F2D9F4A5BAF14585A430
          BBCA374A4058F3F373DF1515C7842C2E6DE18594EC8BEED2DD7846C6EDE16753
          98800B4012DCF89AC6D678216943492F440791F5A57F12D8A5FA5A0995E565DC
          769CEDFAD453784EC67BD8EE594F989D293FE116B186F1EF769F33049A00B16F
          E22B2BAD49ACA1944B228C92A722B4EB88D06E74C7F14CCB676EF19C72CDEBDE
          BB7A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A002B83F8D7AF3E85E01BB1092B717AEB69195EBF364B
          7FE3A187E35DE57957ED04445A1E853C8336F1EA91799F4C1FE80D6B495E6AE6
          555DA0EC7917C5FD3352D42EBC37F0C3C3F1ACB25B5B2DE5E462554F3AE18127
          25880703240CFF0017B0AE65FE1AEADE12B7B6FB6588884EE22495644742FF00
          DDDCA4807EA6BB1F1140B17ED5CD73797305ADBC525BCFE6DCCA23408204E849
          C67AF15C96BD79A46ADE15B9D17C3A74FF000C5E58EBAB2DCC6FA9F9D0EA0325
          5648A6763BF68620C63A673DABB61371B799C138295FC8D6BFF867E24D321796
          E34EC24782E5278DCA03D090AC7039EA78A80F8035F1E215D0CE9CFF00DA6C9E
          60837AE0AE339DD9DB8FC7DBAD5DF8A3ACE9FA1F892FE4D16D2CF50D6B59D3A3
          D31B53B4D644DE529852362D00F9621818DE73D09E2BD062F8956907C48FB0FD
          A74B92E15E353ACFDBE2F2A3B02031889DDFEB7CD56C2FF75AABDB4ED7B13EC6
          17B5CF1CB08353F0F6AFFDB7A74456EB4794492BA72ABF36D2AC4766CEDF7CD7
          AAD8EA50F837E39D8DF58FEEF45F17D8ADE2A03F289482C4E3D7233FF6D0D795
          F84BC6DA5F847E1678A2DEEB40B3D42FA1F2E391D750976EA520BB552410FC60
          7CFF00260103D2BB0F11DECBA8DD7C2291B4D6D26E0472C8B6A5F7EC87285003
          9270141EA7359D47CDBAFEAD734A71E55A3FEAF63EA80430047434B5C55CCBAE
          4F7B68B013F6318270053E36D7A5D747984FD95010A0002BCF3D23B2A2B8DB27
          D7E4D4EE5E727605223C00071D2A3D35FC427EDB34C4F9BC94E063F2A00EDA8A
          E26C5FC4316957323126ECB123201EBED4D27C4116800464FDA58E1B201E2803
          B8A2B87BDFF848174AB68E1277B63CCE066A5D4FFB7B3651424F978064E0673F
          5A00ECE9929C46E719E0F15C7DF9D79F57B65427ECAB827814A875D975FCC84F
          D954617000A402E917D7373E299BCDD3C5AA818CE304FBD7635C8E8A35897C43
          2C9783F71D01C01C575D4C028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A0028A28A0028A28A0028A28A0028A28A002B91F8AFE167F18780F54D3A1
          50D7463F360FF7D4E401F5C11F8D75D475A69D9DD09A525667C8DF11ECDFC7BE
          0FD0FC6F6CAF25DD8C434BD6A203E78DD7A487D01CF5FF00697D0D79B5A78474
          B8B4F96D923668266F308672486F507B57D29E3AF08EABF0FBC4779E29F0CD9A
          6A3A75F295D5B4471F25CA9EACA3FBDC9EDDCF072457050782B40F1E17BAF036
          A9145393997C3FA8B7953C07B8427EF0CFD47FB5DABD1A552296BB1E655A726F
          4DCF2C8FC276116A9FDA0A25173C73E61C1C74E29E3C3162B7D7576164135CAE
          D90873835E813FC2AF16DBC9E5BE85745B38CA00E3F3048AD3B0F837AC2C26EF
          5B9AD7C3BA727325CDF4CA303D803D7EA4574F3D35D4E650A8DECCE33E1DFC33
          8BC41A8DBE83670B1B4793CD9D9CEE11A0396639FD3DC8AEFF00FB52D3C67F16
          2FB5A8A48E0F0DF87ADBEC16D70EC1630101DEF93C0503773E856AADD788A0BD
          D3E7F097C3A8E4FB35C61352F11CCA55A51DD63E87D47E27D771EAEFFE0849A8
          FC1ED5FC3FA4EDB7BB9A01E4997A48EAEAE439FF006B6E09F7AE39CD4A4A2F45
          B7A2EE77D0A76D59E89E06F8BFE0DF1CDD3699A0EBB05F5E411EF306C78D997A
          6E50EA370F75C8AEDB70F51F9D7CBEBA778ABC51E1DB9D174FF87A3C31AC5B69
          AF026B0F78A64F348C158CA0E030C8DC4E467A715E59E33F076B9A3E8DBADFC3
          57FA16892DD59433E932DD2937372A642EEA54955CA90BD79C64D358784DD94A
          DF34FF00CBFADCEFB1F798607B8AA1AC6BB63A0DBC53DF4DE4C52CC902B0467F
          9DCED51F2838E4F53C0EF5F18DEE83E29F0468ADE27D16C6EBC3B0DADFA45A56
          97773798C3CF88452018C8F99C09368E06CAD38FE04F8974CBE92EAD6C6E6668
          A4D2DEDA6332FCD1A18DA66C16EA0AE4E7938EF4BEAF4D6AE7FD7DFE7E7D7B05
          8FB0AFF52B6D32C2E2F6E6558AD6DE269A590F3B514649E3D8566DDF8D745B1F
          0C2788A7BF44D19D23905D6D620AB9010E00CF25876EF5F097D927D4355D3747
          B4B392E3C58B3DEC5A8DF47781DAEDBCA9132E9F7972CC4664031BB03835DBEA
          BFB3E6BD67E1C4B1D3F47B8921BCD16D64BA81A65DA6F927F98E0B7DE1193CF4
          C1C0356F0B4E0D29CFF2DAFEA163EC0BED45E27B710AF989280729824E5940C7
          B7CD927D074E6AB5EF89ED342D3EF2FB57B88EC2CED6233CB34AC311A0241271
          9F6C0E4E722A1D27C371DBE81A5DBC4CF6925B5B471290036005E8410471CE3B
          8C9E793587F107479B49F875AEFD83471E29D4648542D8DD32AACC430DA0F450
          AB92DB463A6072735E7C527248437FE17BF813FE11D1AE7FC24307F679B8FB28
          6F2A4F37CDC676795B77E71CFDDE9CF4A76A5F1D3C07A4C3A5CD73E25B448B53
          884F6CEBB9C3479DBBD8A83B1739196C0C823B1AF9A7C3FE02F12D8CBA4F89EE
          3C257DA85ED9EA52DCEA3612BC2A6E3CC84A078C062A02E400A7B01F5AA50FC2
          0F1AE83A24F6D2F859B529F5BD19EC22D9327FA04AF7324B96C9E81643D3B8AF
          4961E87F37E2BCFF00E1FCC763EB43F14BC303C603C2C35456D70E3FD1961908
          194DE32E1768CAF3C9EF5D5D7C9767F0CFC5FA3FC5CD3AEAC749BDB6BC4BC81E
          E355179BED2E2D5215465319E779DA074E31906BEB4AE3AD0842DC8EF7401451
          45738828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0064B12CC851C0653D8D798F8E7E04685E2D9DAE8DA2
          C779D44F1131BE7D723AFE39A28A69B5AA1349E8CE31FE0F78A74DCC569E2EF1
          1C307408B7CC401ED8229B6BF009F53BA49F569750D6651D1F52B96931F871FA
          E68A2AB9E5DC8F671EC7AA7867E1E5A6871463CB440830B1A280A3E80576088B
          1A8551803A0A28A8341D515C5B4577118E68D648CF556191451400971670DDC3
          E54D12C91F076B0C8E2A50000001803B51450066C5E19D2E1D49F504B1856F1C
          E5A60BF313EB5A7451400514514005145140051451401FFFD9}
        mmHeight = 10848
        mmLeft = 105569
        mmTop = 2646
        mmWidth = 62177
        BandType = 8
      end
      object ppLine16: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel62: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'ddd dd mmmm yyyy @ [hh:nn]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 53711
        BandType = 8
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel63: TppLabel
        UserName = 'Label6'
        Caption = 'Report Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 9500
        mmWidth = 14288
        BandType = 8
      end
      object ppDBText32: TppDBText
        UserName = 'DBText6'
        DataField = 'report_Version_Major'
        DisplayFormat = '#"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 14288
        mmTop = 9525
        mmWidth = 2646
        BandType = 8
      end
      object ppDBText33: TppDBText
        UserName = 'DBText7'
        DataField = 'report_Version_Minor'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 16669
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText34: TppDBText
        UserName = 'DBText8'
        DataField = 'report_Version_Hi'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 19050
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText35: TppDBText
        UserName = 'DBText9'
        DataField = 'report_Version_Lo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 21431
        mmTop = 9525
        mmWidth = 2910
        BandType = 8
      end
      object ppLabel64: TppLabel
        UserName = 'Label7'
        Caption = 'RPM +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 176144
        mmTop = 9525
        mmWidth = 6562
        BandType = 8
      end
    end
    object ppPageStyle5: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'person_ID'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 162454
        mmPrintPosition = 0
        object ppRegion6: TppRegion
          UserName = 'Region3'
          Caption = 'Region3'
          Pen.Color = clSilver
          mmHeight = 100542
          mmLeft = 0
          mmTop = 1058
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel65: TppLabel
            UserName = 'Label9'
            AutoSize = False
            Caption = 'Personal Details'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Arial Narrow'
            Font.Size = 16
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 6615
            mmLeft = 1588
            mmTop = 2381
            mmWidth = 98425
            BandType = 3
            GroupNo = 0
          end
          object ppLabel66: TppLabel
            UserName = 'Label3'
            AutoSize = False
            Caption = 'Last Name :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 10
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 10054
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppLabel67: TppLabel
            UserName = 'Label4'
            AutoSize = False
            Caption = 'First Name :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 10
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 17992
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppLabel68: TppLabel
            UserName = 'Label2'
            AutoSize = False
            Caption = 'Identity Number :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 10
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 25929
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppShape11: TppShape
            UserName = 'Shape1'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 10054
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppShape12: TppShape
            UserName = 'Shape3'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 17992
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppShape13: TppShape
            UserName = 'Shape4'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 25929
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppLabel75: TppLabel
            UserName = 'Label18'
            AutoSize = False
            Caption = 'Prescriber Number :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 34131
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppShape19: TppShape
            UserName = 'Shape10'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 34131
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppLabel82: TppLabel
            UserName = 'Label26'
            AutoSize = False
            Caption = 'HPCSA Registration # :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 42333
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppShape20: TppShape
            UserName = 'Shape101'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 42333
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppLabel69: TppLabel
            UserName = 'Label69'
            Caption = 'Instructions'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 14
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 7144
            mmLeft = 1323
            mmTop = 61119
            mmWidth = 38894
            BandType = 3
            GroupNo = 0
          end
          object ppLabel70: TppLabel
            UserName = 'Label70'
            Caption = '1) Please supply three signature samples'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            Transparent = True
            mmHeight = 3725
            mmLeft = 1323
            mmTop = 69056
            mmWidth = 59013
            BandType = 3
            GroupNo = 0
          end
          object ppLabel71: TppLabel
            UserName = 'Label71'
            Caption = '2) Please keep within the boundaries of the block'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            Transparent = True
            mmHeight = 3725
            mmLeft = 1323
            mmTop = 74083
            mmWidth = 69850
            BandType = 3
            GroupNo = 0
          end
          object ppLabel72: TppLabel
            UserName = 'Label72'
            Caption = 
              '3) In each block provide a signature and printed initials and su' +
              'rname'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            Transparent = True
            mmHeight = 3725
            mmLeft = 1323
            mmTop = 78581
            mmWidth = 97282
            BandType = 3
            GroupNo = 0
          end
          object ppLabel42: TppLabel
            UserName = 'Label42'
            AutoSize = False
            Caption = 'Staff # :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 1323
            mmTop = 50271
            mmWidth = 37571
            BandType = 3
            GroupNo = 0
          end
          object ppShape14: TppShape
            UserName = 'Shape14'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 50271
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion7: TppRegion
          UserName = 'Region1'
          Pen.Color = clSilver
          mmHeight = 100806
          mmLeft = 101865
          mmTop = 1058
          mmWidth = 80698
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel74: TppLabel
            UserName = 'Label5'
            AutoSize = False
            Caption = 'Signatures'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Arial Narrow'
            Font.Size = 16
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 6615
            mmLeft = 103188
            mmTop = 2381
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLine17: TppLine
            UserName = 'Line4'
            Pen.Color = clSilver
            Weight = 0.75
            mmHeight = 1058
            mmLeft = 103452
            mmTop = 37835
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
          object ppLine19: TppLine
            UserName = 'Line6'
            Pen.Color = clSilver
            Weight = 0.75
            mmHeight = 2381
            mmLeft = 103452
            mmTop = 71173
            mmWidth = 77788
            BandType = 3
            GroupNo = 0
          end
        end
        object ppLabel83: TppLabel
          UserName = 'Label33'
          AutoSize = False
          Caption = 'Contact Details'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 5821
          mmLeft = 0
          mmTop = 102923
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
        object ppRegion9: TppRegion
          UserName = 'Region4'
          Caption = 'Region4'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 31221
          mmLeft = 0
          mmTop = 109273
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel84: TppLabel
            UserName = 'Label17'
            Caption = 'Address (Physical)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Arial Narrow'
            Font.Size = 12
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 5027
            mmLeft = 0
            mmTop = 110331
            mmWidth = 29898
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion10: TppRegion
          UserName = 'Region2'
          Caption = 'Region2'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 31221
          mmLeft = 101865
          mmTop = 109273
          mmWidth = 80698
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel85: TppLabel
            UserName = 'Label16'
            Caption = 'Address (Postal)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Arial Narrow'
            Font.Size = 12
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 5027
            mmLeft = 105040
            mmTop = 110596
            mmWidth = 25665
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion11: TppRegion
          UserName = 'Region7'
          Caption = 'Region7'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 20373
          mmLeft = 0
          mmTop = 141023
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel86: TppLabel
            UserName = 'Label31'
            AutoSize = False
            Caption = 'Mobile Phone :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 14817
            mmTop = 142875
            mmWidth = 24077
            BandType = 3
            GroupNo = 0
          end
          object ppShape26: TppShape
            UserName = 'Shape106'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 142875
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppShape27: TppShape
            UserName = 'Shape18'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 39423
            mmTop = 151077
            mmWidth = 60325
            BandType = 3
            GroupNo = 0
          end
          object ppLabel87: TppLabel
            UserName = 'Label32'
            AutoSize = False
            Caption = 'Land Line :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 14817
            mmTop = 151077
            mmWidth = 24077
            BandType = 3
            GroupNo = 0
          end
        end
        object ppRegion12: TppRegion
          UserName = 'Region6'
          Caption = 'Region6'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 20373
          mmLeft = 101865
          mmTop = 141023
          mmWidth = 80698
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppShape28: TppShape
            UserName = 'Shape19'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 118004
            mmTop = 142875
            mmWidth = 62971
            BandType = 3
            GroupNo = 0
          end
          object ppShape29: TppShape
            UserName = 'Shape20'
            Pen.Color = clSilver
            mmHeight = 7408
            mmLeft = 118004
            mmTop = 151077
            mmWidth = 62971
            BandType = 3
            GroupNo = 0
          end
          object ppLabel88: TppLabel
            UserName = 'Label30'
            AutoSize = False
            Caption = 'eMail :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 104511
            mmTop = 151077
            mmWidth = 12435
            BandType = 3
            GroupNo = 0
          end
          object ppLabel89: TppLabel
            UserName = 'Label29'
            AutoSize = False
            Caption = 'Fax # :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 9
            Font.Style = []
            TextAlignment = taRightJustified
            Transparent = True
            mmHeight = 5556
            mmLeft = 104511
            mmTop = 142875
            mmWidth = 12435
            BandType = 3
            GroupNo = 0
          end
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppReportNotificationLetter: TppReport
    AutoStop = False
    DataPipeline = ppDBqryNoficationLetters
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 8000
    PrinterSetup.mmMarginLeft = 14000
    PrinterSetup.mmMarginRight = 14000
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'L:\My Programming\RxProjects\RxDispensing Reporter\Exe\Report Te' +
      'mplates\NotificationLetter.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 184
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBqryNoficationLetters'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand6: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32544
      mmPrintPosition = 0
      object ppImage8: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D6170FA650000424DFA650000000000004A02000028000000AD00
          0000910000000100080000000000B0630000610F0000610F0000850000000000
          000016151300191715001B1A17001D1C1900211F1C0025231F003D3D15002220
          29002B2924002C3A21002B3B3C00302E280036342E00292760002A287B002B3C
          6B003A2662003A3A6F003B6B0C00366926003C6B390035694000326A6A00396A
          6A00403D36006D3B1E00703B3B006E3A6E0045433C006C6B33004E4B44005754
          4D005F5C550068655E006F6B65007F7B750029299400293A9E00302AA0003937
          A000252AC700253BCC003939CD002C6A9A0037699D002268CE003668CF003067
          E4006C379F006838CF0069699D006767CF007D7DE8003E9A1C00398123003C9A
          3A00379A4100329A6A003B9B6800679B340052BE7800679B660070C07900289A
          9A0032828100399B9A00279ACC00399ACD003896EC0015CDCD0000C6F50032CD
          CD0033C6F500679B9A004596EC00659ACD006996EC0041EDF2004DEDF20063CD
          CC0065C6F4006FEFF300883F280089403C009E6B36008A4464009C6A6800AB6D
          4600A96E67009A6A9A00966AC90087837E009C9B63009AC27C00C79A67008D89
          85009C9895009F9B980091ABAD00A9A29F00B6B3B2009A9ACD009698EC00B89E
          E70099CA9A0099CDCC0095C6F30099F3F600BFD8C100C49B9700C99C9300C09D
          C200CBCA9A00E3C7A300C4C1C000CFCCCB00D0CDCD00DBD9D800C8C9F400C5D5
          EC00DCC7E300C8E8D300CCF8FA00D6E7E700E2C8C300E1DFDE00E9E0C900E6E5
          E500EDECEB00EFF8FB00F3F2F200F9F9F900FFFFFF0084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848484848484837E838484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848475726982848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848483230F466B8484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848022174248476A8484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848475491716164042486A
          7780848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484847B6215401509092B42454B697D84848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484844F3F390A090909091516
          4540238484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847A504015150909090909090A16402C237D8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484847577503F15090909090909090909
          091516164F697283848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848482
          828060432B0909090909090909090909090915424240177B8182828484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484622C4A41160A0909090909090909090909
          0909090A0A154048474149808484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484848472624F5041
          1616160A090909090909090909090909090909090909151616161750504F497D
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484837F7777773216163F1609090909090909090909090909090909
          0909090909090909090A163F422B0A6277777774747D83848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484848260434442160A090909
          090909090909090909090909090909090909090909090909090909090909092D
          44462B11205F7F84848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848483793E3A171732496263
          7482848484848484848484848484848484848484848484848484848484827463
          5B322C4A484741140A1515090909090909090909090909090909090909090909
          0909090909090909090909090909090A15150A0A0A1E4143474848432C2C325F
          63636472717C7C7C7C7C7C7C7372646363624B49322C1741413C3C3A37373737
          3D80848484848484848484848484848484848400000084848484848484848484
          84848484846C683E3815151515143A373D5D6868686869696969696969626262
          62626969696969696A6A69696260231F180A0A2B404015090909090909090909
          0A0A0A0A0A09090909090909090909090909090A0A15160A0909090909090909
          09090909090A0A16404040160A0A0A1C1F1F202256565B5B5B5B5B5B3D3D3D37
          37141714151515151538383636363636363E7584848484848484848484848484
          84848400000084848484848484848484848484837D3D36363636363636363636
          3636363636383A39394040401616161616161616164040403F3F4016160A0A09
          090909090909090909090909090A0A0A162B0E24240909090909090909090909
          09090A240F2B2B160A0A0A090909090909090909090909090909090909090909
          0909090909090909090909091336363636363636363636363636363636363636
          36363E7F84848484848484848484848484848400000084848484848484848484
          8484846C37363636363636363636363636363636363636363636363636360909
          09090909090909090909090909090909090909090909090909090915402D2525
          242424240E090909090909090909090909090A24242424240F2B423915090909
          0909090909090909090909090909090909090909090909090913363636363636
          363636363636363636363636363636363636363D848484848484848484848484
          8484840000008484848484848484848484846C3D363636363636363636363636
          3636363636363636363636363636130909090909090909090909090909090909
          090909090909090915162B162529242424240D0F2B3F3F3F2B2B2B2B2B2B2B2B
          3F3F2B250F0D0E240E2529162B2B400A09090909090909090909090909090909
          0909090909090909131336363636363636363636363636363636363636363636
          3636363764808484848484848484848484848400000084848484848484848483
          806C3D3636363636363636363636363636363636363636363636363636363613
          131309090909090909090909090909090909090909090915162B2F2524242525
          29292B2B42464546444444442D2B2B2B4242423F402B25292525240E252D2B16
          0A09090909090909090909090909090909090909090913133636363636363636
          36363636363636363636363636363636363636363D6875848484848484848484
          8484840000008484848484848484848271373636363636363636363636363636
          3636363636363636363636363636363636361309090909090909090909090909
          0909090909090A402B252824240E16424644444444423F424644442D0F040001
          0A0F2B46464646463F2B0E24240E0A2D2B090909090909090909090909090909
          0909090909133636363636363636363636363636363636363636363636363636
          3636363636363E82848484848484848484848400000084848484848484848484
          82756C6837363636363636363636363636363636363636363636363636363636
          363636130909090909090909090909090909090915163F4229240F2D442D4244
          422B0F2B420A2B44464444422B0A02010A04050A0A0F164245422D442B0F0E2B
          3F3F401509090909090909090909090909090913133636363636363636363636
          36363636363636363636363636363636363636363636363D8284848484848484
          8484840000008484848484848484848484848480686868686837363636363636
          3636363636363636363636363636363636363613131309090909090909090909
          09090A162B2B2B2D2D2D2B4246442B16160A021642072D44444444420F0A0402
          0A0F0F0F2B162B4242424242422B2D25252B422B160909090909090909090909
          0913133636363636363636363636363636363636363636363636363636363636
          3636363768686868838484848484848484848400000084848484848484848484
          848484848484848484683D373737363636363636363636363636363636363636
          36363636363613090909090909090909090A1642422B0F2944462D4242420A03
          01030416420F3F422B44422B0F0A0A030F16402B42422B42404042424444462D
          25072D4442161509090909090909090909133636363636363636363636363636
          363636363636363636363636363636353737373E848484848484848484848484
          8484840000008484848484848484848484848484848484848483838383723D36
          3636363636363636363636363636363636363636363636361309090909090909
          15404242250D0E424642070A4046420F040F2B42453F3F160542400A000A0A08
          2B0F0A0F422B0F0A0A404646444444462B08242D42423F150909090909091313
          363636363636363636363636363636363636363636363636363636363636355C
          7C82838384848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480756C6C3E3636363636363636363636363636
          36363636363636363613130909090A1640424225162B2D464642422B0F0F0F08
          0A40160F164542422D44422D2B2D2D2D42422B2B160A0405050A0F4244444444
          4242422B2B3F42422B0909090913133636363636363636363636363636363636
          36363636363636363636373E6C6C6C7583848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          846C3E3E373636363636363636363636363636363636363636361309090A403F
          422D2D2D3F42424442422B160A0003050F422B16163F2B2B2B2B2B2B2B2B2B2B
          3F3F3F422B160F1616160F4244422B2D4446452D2B163F4242160A0913363636
          3636363636363636363636363636363636363636363636373E3E686C84848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484848484825D3536363636363636363636
          3636363636363636363613090A2B4442422D2546442D2B3F423F04050505040A
          16424242421509090909090909090909091516454242444646423F44442B0516
          42424446420F163F424216133636363636363636363636363636363636363636
          363636363637376C848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484826323172C23373636363636363636363636363636363636361542424242
          162B44441616420F0A0F3F0A164242423F150A0A0A0909090909090909090909
          0909090A0A154044444444442D40423F160A4446464239393F42423936363636
          36363636363636363636363636363636363636363D737F838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848484822317170F1E2268683736363636
          36363636363636363636383F42423F162B4246440F0A162B1640462D42461616
          160909090909090909090909090909090909090909090A1616404244423F1640
          2B2B164244423F3F3F4242401336363636363636363636363636363636363636
          373714145F7C8484848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          848064222C170A1F638484683D373636363636363636363636363944423F4016
          424242442B0A0A2B424246423F3F090909090909091414212121212121212121
          21201409090909090915402B42420F162B2B0F2B2D4244424244423F15363636
          36363636363636363636363636373D3D3D201E17607C84848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F434A2E0B728484848484833736
          36363636363636363636394242393946442B0A4246422B042B46461509090909
          0909090914687D848484848484848484847C60090909090909090909163F460A
          010A452B0F4644444442444442383636363636363636363636363636363D8484
          5B0805115F7C8284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743506A6A7382848484848484753E373636363636363636393F42393F4242
          4216020A2D2B0A2B40151509090909090914637263115F758484848484848482
          7223226D72491409090909090915153F3F2B404242442B2D44444242423F3836
          36363636363636363636376C6C7D84847D610F2C434B17728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A69628484848484848484846C
          683E373636363636363839393F4244422B1616010F2B2B444009090909091422
          2218637D7F5F647B8484848484848483756363808260145B3D14090909090940
          42420F42422B2B2D44444442393938363636363636363636373E6C8384848484
          847B624B4B4B2C69848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A6A6260838484848484848484848484683D373636363636363944444444
          2B2B4202040F42421609090914142272721F5F74848484848484848484848484
          848484847E5F2182755C141409090915402B0F2B2B022B444444443F35363636
          3636363636373737687D8484848484848484846A6A6A43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774A6A778384848484848484848484
          848483827B3D38363636394848444444442D16012B42400A0909091468730B61
          83828283848484848484848484848484848484848483828421227F6814090909
          131542422B022D44444444423936363636363636366882828384848484848484
          8484844F4B4B0F64848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8477432C69848484848484848484848484848484836C6C683736394246464444
          44442D2B40391513091464226182647D84848484848484848484848484848484
          848484848484848472738020235B091313361742422B42444444444238363636
          36363768687F8484848484848484848484848462696A647F8484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774349728484848484848484848484
          848484848484847B683E3A393F45454444444442393636131423615F72848484
          8483726D6D647F8484848484848484848473646D64737E848484802363642136
          36361216424244444444443F383636373D3D6884848484848484848484848484
          84848475696A8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84774A7B84848484848484848484848484848484848484848484683636393F45
          44444239383636366864087284848484837F1D19520663808284848484848483
          8056195219546E808384848472637C3B3636361316444444444442393636373E
          8484848484848484848484848484848484848484776A80838484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484848477417B848484848484848484848484
          84848484848484848484826C3738383845423F36363636373D72758284848482
          6D545252525253566180848484847C6E57525252525254567584848482828374
          3D3636363615424442161538376C7D8084848484848484848484848484848484
          84848484692C2373848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          7462417B8484848484848484848484848484848484848484848484826C683B36
          393938363636373D23566D717C715C5C5752525252525252545C63727C635657
          525252525252525256648284847F6D605C3E3636363639403936363B6C828484
          84848484848484848484848484848484848484847D622C698484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848462494980848484848484848484848484
          848484848484848484848484847D61361436363636373D495452545E5E581919
          525252525252525252191D56581A1952525252525252525219546D71716D541E
          2364373636363836363637688484848484848484848484848484848484848484
          84848484847B4169848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          4F4F848484848484848484848484848484848484848484848484848484734917
          23373636363D76271A5252525252525252525252525252525252525252525252
          525252525252525252525252525252100E2C6837363636363617738484848484
          8484848484848484848484848484848484848484847B43778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484837E4C508484848484848484848484848484
          848484848484848484847561322120171C1F3D63726227241A52525252525252
          5252525252525252525252525252525252525252525252525252525252525210
          24275A3D36365C5B171773848484848484848484848484848484848484848484
          8484848484816A4B628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848264
          4B50848484848484848484848484848484848484848484848484722C17172C2C
          1C2372806F3324241A5252525252525252525253545E54535252525252525252
          52585E5E5E545252525252525252521024242749683E5F21111C497784848484
          848484848484848484848484848484848484848484816A434B84848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848483774143698484848484848484848484848484
          84848484848484848484692B2C4343432264837B2A2424241052525252525252
          5252545664836456545252525252525456748484846D54525252525252525210
          24242465808222180C0C17658484848484848484848484848484848484848484
          8484848484816A4B4B7D83848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484756243
          5077848484848484848484848484848484848484848484848484610A41434C6A
          737F772C242424240E105252525252521906728283848382751D19525252576E
          8083848484837206195252525252521024242424338480694343436984848484
          848484848484848484848484848484848484848484816A4B2C17758484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484774B4350778484848484848484848484848484
          84848484848484848464322C4343507B828377252424242424276D5452525257
          5E6480848484848483646D6D6D6D717E84848484848480645E5753535756100E
          242424242765807B694143434B80848484848484848484848484848484848484
          8484848484804F4F4B2C7B848484848484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484848484734B4A43
          4C6A8484848484848484848484848484848484848484756477492C4B434B6A84
          847765242424242424277B6D5E58586D7C848484848484848484848484848484
          84848484848484847E7158586D63242424242424242C7784804F4B2E2C69777D
          8484848484848484848484848484848484848484847B414B5043697B84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848483802C2B4A4A4A508284848484848484848484848484
          8382828282815B1841434B692164848484652424242424242427657F84848484
          8484848484828384848484848484848484848383848484848484848483652424
          242424242424778384845F174343496381828384848484848484848484848484
          84848484847B174B50432B698384848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484742C2C434A43
          4843177D84848484848484848484847D62491717414B434143436A827D828484
          84652424242424242424277784848484848484847F5C75848484848484848484
          847C6E71828484848484848465272424242424242424276584847F69414A4343
          4B32637E84848484848484848484848484848484847B414F6A50434B73848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484772E43434343504B49697B8484848484848484848469
          4B412C2C434343432C6577848484848365272424242424242424247284848484
          84836D5E5E54585E618084848484827C6D5857575E7182848484848433242424
          24242424242426658484847B694B4B4C432C49696969625F7F84848484848484
          8484848484804F6A6A6A43436280838484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484774C43434343
          4B6A6A4B6A807482848484848484846A2E4343434341434F2375848484848483
          272424242424242424242465828484827E715452525252191970757575756E58
          52525252525871718083837F33242424242424242424245A848484848372776A
          434343434341161865808484848484848484847B7B7A6A6A6A5043434B648084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484827C2C2B4A43434B66666A651F73848484848484846A
          4343434B6A1C608383848484848484832724242424242424242424306F84847C
          5852525252525252525253535352525252525252525252526D7E826027242424
          242424242424245A78848484848484741743484A4141412C2565848484848484
          8484844B4B6A6A6A504343434311738484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848274776917
          434C6A6A6A6A334B698484848484847F6943434B6A727D848484848484848065
          2724242424242424242424261B58585753525252525252525252525252525252
          5252525252525252545756110E24242424242424242424273383848484848482
          7377622C434341411762848484848484847B4B4B6A6A4B4B4343161749728084
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484847F492C43506A6A6A664B4B77818484848473
          5F43434B6A627584848484848484773326242424242424242424242410525252
          5252525252525252525252525252525252525252525252525252520D0E242424
          242424242424242427838484848484848484692C4A4343414974848484848372
          7777334C6A6A43434B6949496483848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          492C434C6A6A66664C437783848484601C43434B6A1762848484848484846524
          2424242424242424242424241052525252525253545452525252525252525252
          52525454525252525252520E2424242424242424242424242783848484848484
          84826A4A4A4343417B848484848375494B6A664C4C5043436584848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484806A4A43506A66664C4A2C7384848469
          412C434B6A6A7784848484848484652424242424242424242424242410525252
          525258717F7F61545252525252525252536D7F7D565252525252520E24242424
          24242424242424242783848484848484844B434A4A4343417B84848484724969
          6A504A5050434369828484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434A4C6666664C4B6575836249414143434B6A62648484848484846524
          24242424242424242424242410195252546D7C8284847D726D5252525252576D
          6D7F8483736D58525252520E2424242424242424242424242772808484848482
          734B4A4A4A434341497284847362436A6A504A4C43432C728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484774343434C66666666666564832C2C
          41414343436A4B6084848484848465242424242424242424242424240D1E5458
          6D848484848484848054525454195C8484848484848271585856552624242424
          2424242424242424263275848484847D49434A4A4A43434116628484644B4A6A
          6A6A4C4343431172848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          83774343434B666666666A4B4B82492C2C414343436A6A778484848484846524
          2424242424242424242424242632808484848484848484847F141F5F62143D84
          8484848484848484847634262424242424242424242424242427738484848473
          112E4C664343432C2C6583847750486A6A6A6A4B434311728484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484602C4343434B6A66666A6A6A4B172C2C
          2C434343436A6A7784848484847533240E242424242424242424242424278084
          84848484848484847F14091814093D84848484848484848484762A2424242424
          242424242424242424246584848484742C4B4C434343432C2C325F7C6A506A6A
          6A6A6A4B43432C72848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848473626A6A656583
          492C4343434B6A66666A6A6A4B162C2C43434343436A6A778484848484733224
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846526242424242424242424242424242424658484848477
          2C34664B4343432C2C2C20234B506A506A6A4C43434343778484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484825F2C2E2E2E2E734B434343434B6A666666666A50432C43
          434343434B6A6A6A848383848473332424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          242424242424242424246584848484772C4B6666434343412C2C17034B6A6A4C
          50504A434343436975757B7B7B74828484848484848484848484848484848484
          848484000000848484848484848484848484848484848482644B4B6A4143430F
          2C434343434B66666666666A504343434343434B6A6A4B4B847E808484733324
          2424242424242424242424242427808484848484848484847F14090909093D84
          8484848484848484846524242424242424242424242424242424658484848474
          174B66664343434141412C0F2E4C6A6A6A5043434343432C11202E2E2C0A7284
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F2C2C4B7B77492B2C43434343434B66666666664C43414343
          4343434C6A6B6A778463648484652E2424242424242424242424242424278084
          84848484848484847F14090909093D8484848484848484848465242424242424
          24242424242424242424658483736160726A6666434343412C2C2C0A4B6A6A6A
          6A504343434343432C2C432C2C2C2C6284848484848484848484848484848484
          84848400000084848484848484848484848484848484847B172C4B7D83611143
          43434343434B66666666664B2C41434343434A506A7782806349628484652A24
          2424242424242424242424242427808484848484848484837514090909093D84
          848483828484848484652424242424242424242424242424242465837F492023
          84696566434343412C2C2C0F4B6A6A6A6A50434343434343432C4B654B431749
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484847F172C2E628063174343434343434B66666666662C16414343
          4343506A6A7D82720517698484652A2424242424242424242424242424278084
          84848484848484827218090909093D808384807C828484848465242424242424
          242424242424242424246580641E1C23844949504343434343412C254B6A6A6A
          6A504343434343432C0F7784772C2C6284848484848484848484848484848484
          8484840000008484848484848484848484848484848484837D4B43437B620F43
          43434343434B66666666662C2B434343436A6A777C828472051C618484652A24
          24242424242424242424242424278084848484848484847F680C090909090920
          808473227D8484848465242424242424242424242424242424246572212C1749
          8480694B664B434343414143506A6A6A6A5043434343434343437B847B432C62
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484492C4369492B4343434343434B6A666666662C0F43434B
          506A777D8284847F603262848465272424242424242424242424242424278084
          84848484848484826C1409131309091480846C146C8484848465242424242424
          2424242424242424242465774B2C172384847B6A6A4B4343434343414F6A6A6A
          6A504A434343434343437B7F694A175F84848484848484848484848484848484
          84848400000084848484848484848484848484848484848484611743492C2B43
          43434343434B6A6666666A49172C434B6A4B748284848482724B4B7583652724
          2424242424242424242424242427808484848484837D6C757F1413361309145F
          807D5D376C848484846524242424242424242424242424242424657A6A431617
          84848481774F4343434343414B6A6A6A6A504A434343434343437B724B4A2C61
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484847E642C0A0F254343434343434B6666666A6A7A64012C4B
          69177284848484720A1741238065272424242424242424242424242424278084
          848484847F5F143D7F14133636093D837C5C3537758484848465242424242424
          24242424242424242424657A6A431617848484837C77504343434343414B6A6A
          6A504A434343434343437B652C43778484848484848484848484848484848484
          848484000000848484848484848484848484848484847349494B4B2C2E2C1743
          43434343434B6666666A4B7780646977757482848484848272755F1F7F652724
          2424242424242424242424242427717E84848484753713143713133636091437
          3712376C82848484846524242424242424242424242424242424657A6A434962
          8484848483827762626977772C416A6A6A504343434343434343494B432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848475601E2C2E2C4A4B5F4343434343434B6666666A4C7784836972
          82848484848484848484611E7F65272424242424242424242424242424277464
          648384846C361313131336363613131313133D84848484846432262424242424
          24242424242424242424657A6A2C6275848484848484756062778484222C6A6A
          6A5043434343434343411741432C4B6562828484848484848484848484848484
          84848400000084848484848484848484848484848484847D1F2C2E2C4A6A7443
          4343434343436666666A6676818332628484848484848484848462177F652724
          2424242424242424242424242733823D14707575683613130913363636361309
          09133D84827F75753D172724242424242424242424242424242465774F176284
          848484848484756165778481222C6A6A6A504343434343434341112C432C2525
          117F848484848484848484848484848484848400000084848484848484848484
          848484848484848262332E2C4A6A7B2C434343434343434C66666A6B7A83205F
          84848484848484848484694B826527242424242424242424242424243378835F
          14090C0C14143613133636363636130913363D836C3D0C0C6377342624242424
          2424242424242424242465774349748484848484848483804B69816A494B6A6A
          6A5043434343434341172B2C2C2C2E4B80838484848484848484848484848484
          8484840000008484848484848484848484848484848484837B4B2E2E4A6A7F5B
          434343434343434C66666A6A7683725F5F828484848484848484776A81652724
          242424242424242424242424338384755F140909091313133636363636361313
          36361422141414617F8176272424242424242424242424242424656A4A778284
          84848484848484822362816A4B6A6A6A504B4343434343434B642C2C2C2C1132
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E2E436A8064494343434343434B66666A6666768364
          23637D8384848484848477506432272424242424242424242424242433848484
          753D3D140936363636361313361313133636130909145F838484802724242424
          24242424242424242424656A437B848484848484848482756072776A6A6A6A6A
          4B434343434343434B82322C2C2C216184848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E432C658484
          492C4343434343434B666666666682847418637C8282838484846A4318112724
          242424242424242424242424338484848484845F093636363613090936091336
          36363613146384848484802724242424242424242424242424246562177B8484
          8484848482827D6280776A6A6A6A6A6A4B4343434343432C5F822C172C2C7280
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E4A2C6284847B69434343434343434B666666668284
          82757C644122728484846A434B110D2424242424242424242424242433848484
          84848468363613130909091337130909363636363D6C84848484802724242424
          24242424242424242424111C177D84848484847D175B648083776A6A6A6A6A4B
          43434343434343697F8222172C2C738384848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E4A62758484
          847743434343434343434B6666666A77848482754B17326584846A43502C0E24
          2424242424242424242424276584848484836837373E683D0909206068140909
          3D3D3736376884848484802A242424242424242424242424240E2C2C2C758384
          846262625F6475847A6A6A6A6A6A6A43434343434343657B848364492C2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652E487B84848484694143434343434343434B66664C6A
          8184848482490F2C77826A43482E272424242424242424242424244B75848484
          848037133782836109093D6C6C140914736C3E36363D8084848482342A242424
          2424242424242424240E4B5043748282771717627E8381816A6A6A6A6A6A5043
          43434343434B7D8384848469432C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484652E2C77848484
          84640A4143434343434343434B6666666A8184848023252525776A43482E2724
          24242424242424242424247284848484827C37133D827E5C0909090913090909
          5B746813363B63838484848333242424242424242424242424244B5043748277
          252C627C83847A6A6A6A6A6A6A50434343434343434B828484848469432C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484652C5B7D84848484722C4343434343434343434B666A4C
          50818484825F170F2E4B4F50502C0E2424242424242424242424247284848484
          6C37363D64216D5C0961646322633D147268686837373D828484848433242424
          242424242424242424244B50434922202C0F4983847A6A6A6A6A6A6A50434343
          434343432C17808484848462172C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848465496480848484
          84732C2C434343434343434343334B4B43696A6A69492C2C4B4B506A77320E24
          2424242424242424242427778484848468363D6C7D2372631475837432756014
          7F6C6C83683737828484848433242424242424242424242424242E4B432E1717
          2E0F21727B776A4F4B6A6A5043434343434343432C178084848484725F2C7784
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484694F848484848484732C0F2C434343434343432C0F4343
          412C434A4343434B6A6A6A777C5A272424242424242424242427628084848484
          6C376C82776782723D7D765A2465611480807B7F83683D7F8384848465272424
          242424242424242424242C434A4343434A161C216A6A4F412C4B504343434343
          434343434349828484848484772C778484848484848484848484848484848484
          84848400000084848484848484848484848484848484848484654B8484848484
          84732C0A2C4343434343434343434C4B4343434B6A6A6A6A6A6A778183652A24
          242424242424242424278283848484848071826527266F807B663326242E657F
          83332727778274617D848484826524242424242424242424242465776A6A6A50
          43434343434A4A434343414343434343434343434349828484848484772E7784
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484844949848484848484732C0F2C43434343434343434C6666
          4C4C4C506A6A6A6A4B43658484342A2424242424242424242433848484848484
          83806533333333657833272626254B8033322724337282748284848484722424
          24242424242424242424658177494B6A50505050504C4C50504B434343434343
          434343432C49828484848484772C778484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848462608484848484
          84732C162C434343434343434B6666666666666A6A6A694B432B498484652724
          242424242424242427658484848484848482272A333327337627273233273377
          272C2C242765848484848484847733262424242424242424242465847F172C4B
          4B6A6A6A6A6A6A6A6A504343434343434343432C2C49828484848484772C7384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4143434343434343434B666666
          666666666A6A491F2C2C65848465272424242424242424246584848484848484
          8483322624242765802732626232657B3327272434768484848484848484842A
          242424242424242424246584802C2C2C0F4B6A6A6A6A6A6A6A6A6A4343434343
          4343432B0F49828484848484740F728484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666666666666A7A7B642C254B8484652724
          2424242424242424658484848484848484847B332424657F8367332727337683
          6731273476818484848484848484842A242424242424242424246584802C2C49
          7475776A6A6A6A6A6A6A6A6A434343434343432C2C4982848484848482748284
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          6666666665827F692C254B8484342A2424242424242424246584848484848484
          848484652A2C748484836527256680848365333377848484848484848484842A
          242424242424242424246584802C2C4B848264496A6A6A6A6A6A6A6A4B434343
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666666665638072492C11628484652A24
          242424242424242665848484848484848484847633497584848472332E778484
          84765A2777848484848484848484842A2424242424242424242465847F171749
          838462176A6A6A6A6A6A6A6A4B4343434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          66664B698384490F2C32648484652A2424242424242424337784848484848484
          84848465240E658484843324247784848433317883848484848484848484842A
          2424242424240E0E242465847F1717497C83776A6A6A6A6A6A6A6A6A4B434343
          434343432C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B66666666664C508484622C2B627F8484652A24
          2424242424242672828484848484848484848466333274848484332424738484
          843333838484848484848484848484773324242424242424242465848372492C
          21757A6A494B6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C4343434343434343434B666666
          664C4C6A8372492C0F72848484652A2424242424242733808484848484848484
          848484807673808484844B252477848484653384848484848484848484848484
          652A242424242424242465848484621111737A6A49696A6A6A6A6A6A4B434343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C4343434343434343434B666666664A5077751717110364838484652A24
          2424242424338484848484848484848484848484848484848484652E25778484
          847774848484848484848484848484847634262424242424242465848484490F
          2E77776A6A6A6A6A6A6A6A6A4B43434343434343434982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484732C2C434343434343434B66666666
          666A7772212C0F162C49728484652A2424242424326484848484848484848484
          84848484848484848484786F497B848484838384848484848484848484848484
          8377262424242424242465848484490F2B17496A6A6A6A6A6A6A6A6A6A4B4343
          4343434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84732C112C43434343434B4C4C6666666A77622217272B2C432C628484652A24
          24242426657F8484848484848484848484848484848484848484838075828484
          84848484848484848484848484848484848265272424242424246584805F1716
          0F162C4B6A6A6A6A6A6A6A6A6A50434343434343414982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484772C112C4343434343664C4C66666A
          77722111172B2E43432C628484652A2424242633778484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484652724242424246580721E17411617172C4B6A6A6A6A6A6A6A6A504343
          434343412C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84772E43434343434343664C4C666676740711110B434A4A4341698484652A24
          2424278284848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484652424242425697217434141
          432B0F2B2C4B6A6A6A6A6A6A6A504A434343432C2C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484692543434343434B66664C4C666A4B
          2C0F627464434343434343628265312424337783848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848065272424246569414143434A432B0F2C17496A6A6A6A6A6A6A5043
          4343432C2C498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          84690F43434343434B664C4C4C664B2C0F4975848369492C4343434B806F3324
          3372848484848484848484848484848484848484848484848484848484848484
          848484848484848484848484848484848484848484836527242469774341434A
          4A2C2C49170F17326A6A6A6A6A6A6A43434343432C4982848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484690F43434343434C664C4C666A3217
          2282848484846017434A434374723324647D7D7D7D7D7D7B7B7B7B7F80808080
          8082828282828282838383838483838484848484848484848484848484848484
          84848484848484652725656941434A4A4317607D172C170C4B6A6A6A6A6A6A4B
          434343432E328284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          847743434343434C6666666A6A665F6480848484848482640B2C43431732321E
          1F202020202011171717175B5F5F5F5F60626262626262727C7C7C7E847E8084
          8484848484848484848484848484848484848484848484827327272C43434A4B
          567382838075632C0F496A6A6A6A6A6A4B4343432E2C80848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484848484848484847743434343434C66666666664B4964
          72647F848484848063172C432C434B2C49626464646464724F42424343431C2C
          47474143474347475050505050505050504949505050505050505050504F2375
          84848484817769694B2C2C41434A50777382848484837F692C4B6A6A6A6A6A6A
          4B4343432C178084848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          837743434343434C666666664B17626972646475848484848460324343434343
          4B72848484848484504644464645162B4246403F464242424646464642464646
          462B2B464646464442464646422B16778484848482774B43432C414343507784
          84848484847B777B324B6A506A6A6A6A504343432C1780848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484847C644343434343506A6A6A6A49054B77
          84845B5F8484848484846A4A4A43434A11608484848484845046464646464616
          0F450A2B46464040464646420F42464446464646464646423F424646160F467A
          84848484827C4C43434343434B808484848484848469496960625048506A6A6A
          6A50434343498284848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          624943434341434343434A4A4C4B77818484212284848484848469434A434343
          697F84848484847E230F424646420A2B2B0A3F4546464242420F3F4642464642
          0A2B4246463F1646161646464242467A8484848484824B434A6A4C507B838484
          848484848480736069320C0A0F17414350504343434B82848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848484848484844917434343434B5050505050506A8184
          7F5F23638484848484847B696A69696A8284848484848482492B424246462B42
          422B4546452B16161616424646464216020A2B4646422B16163F46464646467A
          848484848483774F4B492C4B84848484848484837580807377623232322C4343
          4B4B4B43434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          231643434A4C6A6A6A6A6A6A6A6A7A81731E6382848484848484848484848484
          84848484848484844F422D2B3F42424242424242420A0A0A0A42464646422B0A
          0A0A164646442D0A1642464646464277848484848484847D6223216284848484
          8484848269737B8181776A6A664C434343434F43434B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848423164343506A6A6A6A6A6A6A6A6A6A6A
          6A6B7A848484848484848484848484848484848484848484611C0802040A0A0A
          0A01010F2B3F3F40403F3F3F3F0A0F4242424242424244420A0F424246420172
          84848484848484848383838384848484848484816B4B4B6B6A6A6A6A6A6A6A6A
          4B434143434B8184848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          612C434C6A6A6A6A6A6A6A6A6A6A6A6A6A7A8184848484848484848484848484
          84848484848484845F0A0A1640424242400A2B424243434242424242422D2D44
          4444444646464646424242160F0A1C7384848484848484848484848484848484
          8484847B4949626A6A6A6A6A6A6A6A6A6A4B434B4B4B81848484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848480747264602C666A6A6A6A6A506A6A6A6A4B69
          7784848484848484848484848484848484848264626269694140403F45464646
          42164246464A4A4A4444444444444444444A4446424546464646422B16164150
          6B69626473828484848484848484848484848480625F49506A6A6A6A6A6A6A6A
          6A6A4B4B4B4B8184848484848484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484848484847F736223
          73641C4F6B6B6A664B434B6A6A6B2C6284848484848484848484848484848484
          84847D221F172C2C434848484848464646434646464A4A4A444444444444444A
          4A444446403F4642454646464848484E474117205F7C83848484848484848484
          8484848484613243506A6A6A6A6A6A6A6A6A6A4B434B81828284848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484848484848483226082807F72432C4F6A41492008112C43437782
          848484848484848484848484848484848484837F7F7B7B7B7B7A7A7A7B6C3F45
          48484646464A4A4A4A4A444444444444444646462B414B0A1C172C49727D7A7A
          7A7B7F7F80838484848484848484848484848484848274624B434B6A4B432C66
          6A6A6A6B77758362628484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848364737880
          613243172C4B434117182C4343497B8484848484848484848484848484848484
          84848484848484847564604B4B50474848462B4246464A4A4A4A4A4444444444
          4446464642434832171723737F82848484848484848484848484848484848484
          8484848484848275774F434B2C171132656A6A5049607C737484848484848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848482778275656422174B17172C2C432C2C434349648084
          8484848484848484848484848484848484848484848483736249172C43444848
          453F0F2B4646464A4A4A4A4A4444444A4446464245464650432C627777727582
          84848484848484848484848484848484848484848484848484692C432C17111F
          494B4B412C22647F8383757F8484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484772C74590F2C
          32647F211F171E172C2C41496484848484848484848484848484848484848484
          8484848484847D172B444850504846463F012B4246464646444A4A4A4A444446
          46463F082B42464646486A482B11237584848484848484848484848484848484
          8484848484848484845F182C4343432C2C2C2C0A16435B6D7C78236484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484640B727F73777D631C1E5B63231822777B7B80848484
          84848484848484848484848484848484848484848472172D4448464846451649
          60054246464646464646464646464646464646420F0A1646464648464843477B
          848484848484848484848484848484848484848484848484847F72722C2C2C2C
          1711111E20231E20211772808484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484755B7D848484
          7360225F6D7222185B8484848484848484848484848484848484848484848484
          8484848484692B44434B435050505F5B232B4546464246464646464646464646
          463F3F462B1617504B413F424648486274848484848484848484848484848484
          84848484848484848484838264626211225B211C226360616160647F84848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484838062617C72726317216384848484848484
          848484848484848484848484848484848484848484774A484B61617F8484835B
          40464646422B4246424646464646464648160F4646454F83642317414748482C
          6284848484848484848484848484848484848484848484848484848484847F11
          236D60205F7C7F83848364748484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848064
          727C7C2317171E72838484848484848484848484848484848484848484848484
          84848484847A6A627483838484837C4F4646462B1748442D0F4546464643413F
          51170F42464648818382828281827C4B69848484848484848484848484848484
          84848484848484848484848484847F210B1F7C7C7C7160758484838384848484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848464236264727C221E1E5B758484848484848484
          8484848484848484848484848484848484848484847449748284848484815048
          4644697269484642423F4246461640456A412C6A434246327584848484838250
          6A8484848484848484848484848484848484848484848484848484848484805B
          1F1F2321225F647F848484848484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848483645B64
          6363646020207280848484848484848484848484848484848484848484848484
          8484848484746080848484847B69464243507D827A5048464240424646174146
          50434B8369413F2B497284848484844F69848484848484848484848484848484
          848484848484848484848484848482725F2018050B2072737264808484848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848484837F7C7F807C635F6072604984848484848484848484
          848484848484848484848484848484848484848484827C8384848482622B422B
          49848484816A484240174246464F4F4648485084846011420F22848484848449
          6284848484848484848484848484848484848484848484848484848484848484
          64220C0505186060221C72828484848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484721E60646223
          727D725B62808484848484848484848484848484848484848484848484848484
          84848484848483848484845F41422C6280848484816A483F0C22434646776A46
          464A50848480640A2B4F7C838484848082848484848484848484848484848484
          8484848484848484848484848484848473636D60221762727473216384848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848464232272726264627280727D8484848484848484848484
          848484848484848484848484848484848484848484848484848484494B6A697B
          848484724948464361644F46467A692B4648508484847F6041436A8184848484
          8484848484848484848484848484848484848484848484848484848484848484
          7F73635B225B737C757220628484848484848484848484848484848484848484
          848484000000848484848484848484848484848484848484845F1F5B7D7D7383
          6249748384848484848484848484848484848484848484848484848484848484
          84848484848484848482724F6A8484848483745B16464769847E504642776417
          464650728284848463494F697F84848484848484848484848484848484848484
          84848484848484848484848484848484847F632122648382746223627F848484
          8484848484848484848484848484848484848400000084848484848484848484
          84848484848484848473230873848484725B207D848484848484848484848484
          84848484848484848484848484848484848484848484848484720A7284848484
          84821F2C484D697E848450422B77847A48463F0B73848484847C6D1C62848484
          8484848484848484848484848484848484848484848484848484848484848484
          848483235F7C84847D6262606383848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484826472737282847D21
          6373748384848484848484848484848484848484848484848484848484848484
          8484848484848484827D72808484848484834B4B6A778083848450420F728483
          7748442E7B848484848380736472848484848484848484848484848484848484
          848484848484848484848484848484848484847575715B748375201E17207384
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484847D64647582848484751C5F758484848484848484848484848484
          8484848484848484848484848484848484848484848484848282848484848484
          80724C4C6A808384848450421F748484824F434A657584848484848475748484
          8484848484848484848484848484848484848484848484848484848484848484
          848484847F645C7484825F201C1E728384848484848484848484848484848484
          8484840000008484848484848484848484848484848472237E83848484827422
          6073848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484755B434A5081848484845043607F8484
          8462414A2C628484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484847D647175808484611F236D7C
          8484848484848484848484848484848484848400000084848484848484848484
          848484848484838283848484847361717C7F8484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          755B47434183848484844F4382838484848277482C6284848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484837F6423608484827217206184848484848484848484848484848484
          8484840000008484848484848484848484848484846464808484848360236080
          8283848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848482745043328284848484624184848484
          84847A48697D8484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484847D1F226073828482726063
          8084848484848484848484848484848484848400000084848484848484848484
          8484848484235F80848484832223728384848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84834B2C328384848484624984848484848477437B8484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484847D22225B628084848475646D828484848484848484848484848484
          8484840000008484848484848484848484848484845B61848484838063728484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484832317498384848484624984848484
          8484721C74848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484231E5F758384848464
          217F848484848484848484848484848484848400000084848484848484848484
          848484837C7D8084848474227382848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84847D74748384848484807F8484848484848275828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484848484847D631F227284848464227F8484848484848484848484848484
          8484840000008484848484848484848484848483828384848484721F74848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848483828484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484847D6323648484847D
          6262758484848484848484848484848484848400000084848484848484848484
          8484848484848484848475237D84848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848364748484848480497384848484848484848484848484
          8484840000008484848484848484848484848484848484848484848384848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          84848484848484848484848484848484848484848484848484837C8084848484
          8483848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848483635F83848484848484848484848484848484848484
          8484840000008484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484846460838484
          8484848484848484848484848484848484848400000084848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          848484000000}
        mmHeight = 30692
        mmLeft = 0
        mmTop = 0
        mmWidth = 32808
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Color = clSilver
        StretchWithParent = True
        mmHeight = 32015
        mmLeft = 0
        mmTop = 0
        mmWidth = 182827
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line3'
        Pen.Color = clSilver
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1058
        mmLeft = 32279
        mmTop = 13229
        mmWidth = 149225
        BandType = 0
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 145786
        mmTop = 25665
        mmWidth = 35983
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'complexName_str'
        DataPipeline = ppDBqryNoficationLetters
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Verdana'
        Font.Size = 26
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBqryNoficationLetters'
        mmHeight = 11134
        mmLeft = 88000
        mmTop = 1852
        mmWidth = 93769
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppImage9: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          0A544A504547496D6167652A1B0000FFD8FFE000104A46494600010101006400
          640000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080048013A03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00A3E2
          0BEB9F801FB6DEB3E24D0EE6E2CFC37A678A6DF49BBB57B89248921BDB50C4B6
          E63C072ED9EC71EC2AB7C3BD4EF7E2BFED97A078D2EEEEE24B5F126A57DAB69D
          1BCD204860B79C456A7686009022079E0E464115F54F897FE09FF61E28D6FC76
          752F146BFAAE9FE2E547BC92FAF2169A39A3911E29232210015118419CFC8587
          7CD55F0E7EC067C27E26F06788B4EF14EAF1EA3E1B10C305AADD442D8C1195CA
          15F2B71F336FCFF30CE4E3151665DD16BF6A2FDB2BC47F043C7D71E1DD120F0C
          5C2D8696B7D32EA52CF3DDDCB9049411DB83E40DA061A5E0E73D39AEAFC43FB5
          6EA77DFB26C9F17BC2BA4587DBED6CE1BDBCD2F5495CA22B01BD519002C41618
          27008EB8AADF1ABF627D37E28F8F356F175A6BDAC68D77E21B38ECB5EB0B1BC1
          1417CA91F9684E509042E0601C1C74E5B2CD03F632169F01357F85179E26D613
          42B96063BAB5B9885D3C63A42EC622BE5F4E0283C0E69EA2D0E5BC01FB6C78CA
          FBE27FC3ED27C5FE16D1F4EF0DF8DED2692C27D3A79A4B8B69628C3B094B80AC
          3951851C6EFBC71CDDFDA9BF6CCF10FC14F88171E1FD06DFC312C767A60D4245
          D4A59EE2EA76393E588ADC1F246D030F2F073D31CD5587F60EBC8E7F026A2FE3
          1D72E353F07C8469F1CB770983CA2D970C042092EA023608F954743CD751F19B
          F627D3FE27F8E752F16DAEBDABE8D7BAF58C763AF58D85E08A0BE448FCB52728
          48C2E06010081D3939350D093C47FB68DBE9FF00B29DBFC59D3F41F3F54BB8ED
          618747966C46975395501A4C7DC5249CE0120638CE471DE1DFDAFF00E2745F1B
          3C1FE01F12F85FC370A6AF65FDA136A1A74B70C25877B21F255C6436548F9B20
          E33919C0D4D43F64CD47C25FB2AF8BBE1AD85BC1E3149235934EB7D62E8C6E4A
          48AC0096355DACA149438C6400DC135E1FFB3E7C12F1BBFC77F0AF8A35CD2751
          D3D74AB11A730D5F583A9DE4C77E73B87C91C4832028C72738CB1C1A8F43D3BE
          3CFEDFFAB7C3EF8A9E29F0A786F4AD0DD3C311C3F695D69EE3CFD4A578FCC68A
          DC44A55368C2EE73CB11C6391DA7C5BFDB0B54F0F7ECCDA47C5CF08689637314
          B25B0BFD2B577904B089B0BB10A632CAEC01270300FD2AFF00C6EFD8BB4DF891
          E39D43C5FA1788359F0B6ADABC51C1AC47A55DAC297EA8BB558E518ABEDC2EE5
          C71EE49AB9F103F642D3FE237C1283C0377ABEA5A45AC12C7304D2AE5544E630
          046B33CA92170080D9E092324D1A8B43CB17F6CFF8B73FC4997C091782BC2EBA
          DEA5A62EB1A3DC35EDC982280BB214986CDD236E52A0A0419E7A57A57C2AFDB1
          ADFC63FB2B6ADF16B59D1BEC97BA2DB5C3DF697692655E58999556366E81C85E
          B9DBB8F5C73CA41FB0F6A9178DF45F177FC271E201AF59695FD8CD70B790FEEE
          01195063FDC6436E632E4923CC39C63E5AED3E05FEC8BA6FC29F879E2EF006A1
          7775AFF84B5E1223C1A84CAF22A48A43A828898CE49C8E41E4628570763CAFE0
          77FC141B54F1CFC49F0E681E26D2F443A6F88A17682EB427B82FA6CA13788AE7
          CD50AD91F2EE4206E078239AE93E237ED51F143C3DF1F7C45F0CBC3FE1AF0CEA
          13C1A726A5A6DEDDCF70AA637236ACAAA096727230B803AEEE306EFC3AFD887F
          E15E78C34FBE1E29D635ED2F4C062D3ECF55BC0F0DAC678E234450ED8180589C
          0F700D69F8EBF6387D77E34DCFC44D2BC67E22B2D4EFADDAD2709770AA411142
          AAB08F2495D84EE5DC5B0C067238A350D0CBD0BF6A1F11FC67FD8B7C4FF107C3
          16D65A0F8C6CB48BC9E68E677314061F304924470496DA8590302376D0C71935
          B5FB0BFC55F1A7C49F849A64BE33115EDC2DB426DF5289A479274280EE9D9FFE
          5A13CFCBC55AF815FB24597C20F0278B3C0526A57DAAF84B5B827B6D979708D3
          C714A855D5591100CEE63D3A9357BF670FD9967FD9D6EB52B3D3B5FBED5F47B9
          31AA9D4A61248B144A5628D42AAAA850C7903273CF6C1A83B1F177ED2BA36A1A
          1FC7FF00891E24F1B58EB3E2AF0ADC936FA7F89BC2BA8196E3C38AB1E0C5E4AC
          8A10A6416562A0ED279DCD5F445B7C7F6F801FB22781754F0EDD41E3A9B54B9B
          3D0340B8BC66851DA446D8F71D5976AC6DB875CF191D6AF78F3F615975BF11F8
          DAEF45F1BF88B4AD2FC5F772DEEADA7417B1A473B4BF7D00311DAB8C8C8F9882
          4124631DA9FD8E7C2DAB7C058FE19EA6D3C5636F2C77363716531596C678F3E5
          C91B907E6196049073B8FAD161DD0EF843F193E26F8AB5ED6346F17F8434ED25
          858C72691ABD8B4AD677F332B972777CE88BFBB18C67EF7278AF2AFD8E7E2E58
          F85FE13FC51D66EF4A8B48B3F0EDF6A9A8DF69DA7CD2CE923C2BBA5746958B7C
          DB08038038E057AC7C15FD9B755F85F77AFCD79E2CD5759BBD622586E355BDBA
          12DD0088522F2BE509184049185E4F5CE00143E07FEC8B65F06EE7C63A5B6A97
          FE24F0BF895255BBB7D6A7495DFCC0C25FF571A0F9F71DDF4146A2D0F1DF84BF
          F051BD53C59E3BF0C59EBFA2E88741F11398D468D25C35D692C4663170644092
          03C02531824FA60FA07C5DFDA8BE227833F6871F0D3C3BE1FF000DEA716A7A1C
          7AC6937D793DC298D59CC67CF5453BBE78E40153B3212C30C2A0F097EC250781
          7C57617163E27D6754D034D663A7693A95EE6DAD55B8C14445326D1C2EF240FD
          6BA1F897FB20378BBE34D8FC47D37C5BAF586AD159269DE4C5750AC16D6EAB8D
          90A984B2FCC5A4E58FCEC4F4E28D43413E0C7ED85FF09CFECF3E2AF881E22D15
          2C357F0AC57ADA969D62E4C72B5B86388CB648DD8039CE0E7935CFFC1BFDA87E
          2C78E2FBC13A96B7E04D247833C441E79B53D1E599DF4F8DA12F02481F82ECC6
          3059723961818C9EA7E05FEC8B63F08B4AF1A786EE750BDF11785BC4D1C91DCD
          BEAD3A48E448184A328898DFB8E7FA5647C2DFD8C66F84FE35D1F50B0F176B3A
          B691A28963D26C755BCF321B08A4187091AAAE58AFCA0B13818F4041A868703F
          1B7FE0A13ABF817E2878BBC39E1BD1F439ED3C2B2243710EAD25C0BBD4E4DBBA
          45B7F294A47B7EE82F9C9C7183C777F1C3F6CABFF05FC0AF067C42F09787D6EE
          DBC4171047753EA71CB243A446F1EF669D61F9891D3031C83DF00D8F8C9FB136
          9FE3DF1EEABE2BD03C45ACF866EB5C545D66D34BBC5822BD28BB43728C558800
          12A4679EE49ADAF885FB27DBF8E3E1D786F428B58BFD0EF34199A7B57D2EE7CB
          52C63F2FF785D58BE073CF523E6C8241350D0D1FD94BF685BFF8FF00E16D5751
          D4AD74A866B6BE78609745B933DBCB0844DAC4B7CC8E58B1D8C1481B7239C9F9
          73C25A37897C73FF00051AF1B5C7896DB4EBDBAD024B35825B7799CE9F11B6DD
          17D98370A5B83267BB3E3AF3F4F7ECBDFB3245FB39DA6AF6F6DA85C5E26A33B5
          CCEF7120779666C6E73B55547400000565F81BF654BAF87DFB43EB1F12ACFC53
          ACEAB26B1917D0EA97513ACA02ED4184894E1170ABCF00739A034D4E0FE217ED
          A1E38B5F177C4787C11E15D1B51F0F7C3E6913546D56E265BBBD30A17B830EC1
          B630815802FBB3807BE0745F187F6C5D47C39FB35683F17BC17A458DFD95DC96
          DF6CD3B557712C4B360054D9C160C7072718E9537C5EFD88B4CF1C78D3C41E21
          D0B5FD67C3B1F89D0278834AD3AF161B6D440182581462BB870DB48DC09EE493
          6FE217EC7FA2F8DBE0C587C3C7D6F51D12D6DE54B88AD34899228A4F2C011A3E
          F8DC954C02318391D68D4343BBFD9EFE2578C7E24E87A85EF8C345D3B4891E73
          258C7A5C92C88B6C5576A4AEE06E9436EC941B718C57C1BE06FB07C3AFDA63E3
          46856DE07D6BC5BA145712696969A75F85FB3DAC8877C5BA69D4FCDC720961B7
          822BF48FE17785AF3C15E02D1F42BEB8377716102C06E5882F36D18DEC4000B1
          EA700735F3E7837F62493C13F127C53E20B5F1B7896ED3C456F2C37975797903
          DCF98EA544EA440009533F292081DC1A0133CB3FE09AD7D6DA0780BE2378AAEC
          DCC3059DE5CBDCC72C8D2C82080332A72C465033F4EB9EA78A9BE1EFFC14AF54
          F1278C3C34DAA683A28F0CEBD7E2C7ECBA74B70FA8E981D8AC524ECC82275E9B
          B6E31B87D2BDBFF66CFD9457F67DBAF14D945ABDF6B9E1FD749325AEAD3C7360
          9DDB8E1634197DD86CF5C0AE3F43FD822CFC1DE2AB29748F12EB371E17B0B96B
          AB1D06F2FB36B6EC49382AA81A40B9F943311EB9A351E84FFB51FED89AEFC1BF
          1ADAE87E1C8FC312C6749FED376D5659EE2E2662C711AC36E0B463033E649C1C
          9C74E60F885F16F4CFDA53F60FF17F8A64D3DF4EBC5D064BF6B549DBFD1EE635
          2CACAEB824065C8CF518C8AE93E33FEC59A5FC48F19B78AF4DD7757D0F51BDD3
          D34BD5AD74FBB10C37F6EA30A1BE4254E38F948E00E8724D4F04FEC5C9E1DF82
          DE22F85D3F89F588FC3BA9AEC5BAB6B9885D88FBC258C45761E411B338279A35
          168790F8EFE2C7C43F0B7FC138B41F117867588F4EBDB3B1D32D6E751F31D6EE
          3818431AF924023792C012C47CA58839C57A57C53F10EB7F143F61CF1CDF78CE
          C6DEDB5CB4D2AE2ED64D2E4952012459689D1890C48C2939E339EA2BACD0FF00
          648B2BBFD9B750F837E24D4EFAF343942A417C932FDAE35491648BE6D817E528
          800DBF7460D41A2FEC9B771FC10F107C33D4BC59AC3E99AA348F35FC1729F6C9
          CBB02E199A36508C0052A1471EFCD017478BFECFDFB5A78EBC1E9F057C35E2FD
          0F4C93C21E28D3858D8EA36F34AD7B1BC104786977008436E4E072371C9E39FB
          E410C011D0D7C67FF0C0F76DA6F8083F8CF5E7BAF06391A646D790F92A85CB31
          61E464B15D919C11F2C6A319049FB16DD674B7896409BC280D8E99C734D09DBA
          1628A28A620A28A2800A28A2800A892DA28DCBA448AE7AB05009A968A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A291982296620281924
          F6A008EEAEA1B1B792E2E2548208D4B3C92305551EA49AF33D4BE360BDBD92C7
          C2BA35CF88275E0CCAA5635F7E99C7B9C0F7AE6FC47AF2FC4ABBD46F6FEF9F4A
          F0168C499A60706E5C761EA4F181CE3238C9AF1EF14FC78D5F56DDA4782E0FF8
          467418CED416A36DC4A3FBCEE3904FB1CFA935D70A5DD5D9C73ADD9D97E67BE7
          F6B7C58BAFDE0D2F4CB407911975CFFE866A393E27F8D3C283CCF127848CB680
          65AE6C0E420F56C171F9E2BE517D2756D4A4F3EEEF259A6273BE690B367D724D
          745E1CF17F8D3C11324BA5EB53B44A726D6673242DEC51B23F1183EF5BBA2EDB
          239D5657DD9F63F83BC7FA278E6D4CBA55D8924500C96EFF002C91FD47F51915
          D1D7CB9A2DFC1F12124D6BC3108F0DFC40D393CE9B4FB63B61BE51F79A31EA7B
          83EB839CEEAF70F859F1120F889E1D5BAD820BF80F95776FD0A483AF1D707FFA
          DDAB8E74F975476D3A9CDA33B3AE1CDB58DBF8A62985F99E520931E73E5F3D3F
          FAD5DC562AF852C57506BCDA7CD6EB589B92AF89AC24BE7B649D5D9172CCA720
          7E345BF89AC2E679A349D0AC470D267E5FCEA1B6F08D8DADC4D3229DD2821BF1
          A4B6F08585AC732229C4BF7A8026B5F1469F751CD209D5228C9064638538F7A6
          45E2BD3E4D3DEF0CC1225048DC71BBD85471F83EC22B292D554F96E72686F075
          83580B42A7CA0734012C9E29B08AC16E9E50AAD8DAA4F2D9F4A5BAF14585A430
          BBCA374A4058F3F373DF1515C7842C2E6DE18594EC8BEED2DD7846C6EDE16753
          98800B4012DCF89AC6D678216943492F440791F5A57F12D8A5FA5A0995E565DC
          769CEDFAD453784EC67BD8EE594F989D293FE116B186F1EF769F33049A00B16F
          E22B2BAD49ACA1944B228C92A722B4EB88D06E74C7F14CCB676EF19C72CDEBDE
          BB7A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A002B83F8D7AF3E85E01BB1092B717AEB69195EBF364B
          7FE3A187E35DE57957ED04445A1E853C8336F1EA91799F4C1FE80D6B495E6AE6
          555DA0EC7917C5FD3352D42EBC37F0C3C3F1ACB25B5B2DE5E462554F3AE18127
          25880703240CFF0017B0AE65FE1AEADE12B7B6FB6588884EE22495644742FF00
          DDDCA4807EA6BB1F1140B17ED5CD73797305ADBC525BCFE6DCCA23408204E849
          C67AF15C96BD79A46ADE15B9D17C3A74FF000C5E58EBAB2DCC6FA9F9D0EA0325
          5648A6763BF68620C63A673DABB61371B799C138295FC8D6BFF867E24D321796
          E34EC24782E5278DCA03D090AC7039EA78A80F8035F1E215D0CE9CFF00DA6C9E
          60837AE0AE339DD9DB8FC7DBAD5DF8A3ACE9FA1F892FE4D16D2CF50D6B59D3A3
          D31B53B4D644DE529852362D00F9621818DE73D09E2BD062F8956907C48FB0FD
          A74B92E15E353ACFDBE2F2A3B02031889DDFEB7CD56C2FF75AABDB4ED7B13EC6
          17B5CF1CB08353F0F6AFFDB7A74456EB4794492BA72ABF36D2AC4766CEDF7CD7
          AAD8EA50F837E39D8DF58FEEF45F17D8ADE2A03F289482C4E3D7233FF6D0D795
          F84BC6DA5F847E1678A2DEEB40B3D42FA1F2E391D750976EA520BB552410FC60
          7CFF00260103D2BB0F11DECBA8DD7C2291B4D6D26E0472C8B6A5F7EC87285003
          9270141EA7359D47CDBAFEAD734A71E55A3FEAF63EA80430047434B5C55CCBAE
          4F7B68B013F6318270053E36D7A5D747984FD95010A0002BCF3D23B2A2B8DB27
          D7E4D4EE5E727605223C00071D2A3D35FC427EDB34C4F9BC94E063F2A00EDA8A
          E26C5FC4316957323126ECB123201EBED4D27C4116800464FDA58E1B201E2803
          B8A2B87BDFF848174AB68E1277B63CCE066A5D4FFB7B3651424F978064E0673F
          5A00ECE9929C46E719E0F15C7DF9D79F57B65427ECAB827814A875D975FCC84F
          D954617000A402E917D7373E299BCDD3C5AA818CE304FBD7635C8E8A35897C43
          2C9783F71D01C01C575D4C028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A0028A28A0028A28A0028A28A0028A28A002B91F8AFE167F18780F54D3A1
          50D7463F360FF7D4E401F5C11F8D75D475A69D9DD09A525667C8DF11ECDFC7BE
          0FD0FC6F6CAF25DD8C434BD6A203E78DD7A487D01CF5FF00697D0D79B5A78474
          B8B4F96D923668266F308672486F507B57D29E3AF08EABF0FBC4779E29F0CD9A
          6A3A75F295D5B4471F25CA9EACA3FBDC9EDDCF072457050782B40F1E17BAF036
          A9145393997C3FA8B7953C07B8427EF0CFD47FB5DABD1A552296BB1E655A726F
          4DCF2C8FC276116A9FDA0A25173C73E61C1C74E29E3C3162B7D7576164135CAE
          D90873835E813FC2AF16DBC9E5BE85745B38CA00E3F3048AD3B0F837AC2C26EF
          5B9AD7C3BA727325CDF4CA303D803D7EA4574F3D35D4E650A8DECCE33E1DFC33
          8BC41A8DBE83670B1B4793CD9D9CEE11A0396639FD3DC8AEFF00FB52D3C67F16
          2FB5A8A48E0F0DF87ADBEC16D70EC1630101DEF93C0503773E856AADD788A0BD
          D3E7F097C3A8E4FB35C61352F11CCA55A51DD63E87D47E27D771EAEFFE0849A8
          FC1ED5FC3FA4EDB7BB9A01E4997A48EAEAE439FF006B6E09F7AE39CD4A4A2F45
          B7A2EE77D0A76D59E89E06F8BFE0DF1CDD3699A0EBB05F5E411EF306C78D997A
          6E50EA370F75C8AEDB70F51F9D7CBEBA778ABC51E1DB9D174FF87A3C31AC5B69
          AF026B0F78A64F348C158CA0E030C8DC4E467A715E59E33F076B9A3E8DBADFC3
          57FA16892DD59433E932DD2937372A642EEA54955CA90BD79C64D358784DD94A
          DF34FF00CBFADCEFB1F798607B8AA1AC6BB63A0DBC53DF4DE4C52CC902B0467F
          9DCED51F2838E4F53C0EF5F18DEE83E29F0468ADE27D16C6EBC3B0DADFA45A56
          97773798C3CF88452018C8F99C09368E06CAD38FE04F8974CBE92EAD6C6E6668
          A4D2DEDA6332FCD1A18DA66C16EA0AE4E7938EF4BEAF4D6AE7FD7DFE7E7D7B05
          8FB0AFF52B6D32C2E2F6E6558AD6DE269A590F3B514649E3D8566DDF8D745B1F
          0C2788A7BF44D19D23905D6D620AB9010E00CF25876EF5F097D927D4355D3747
          B4B392E3C58B3DEC5A8DF47781DAEDBCA9132E9F7972CC4664031BB03835DBEA
          BFB3E6BD67E1C4B1D3F47B8921BCD16D64BA81A65DA6F927F98E0B7DE1193CF4
          C1C0356F0B4E0D29CFF2DAFEA163EC0BED45E27B710AF989280729824E5940C7
          B7CD927D074E6AB5EF89ED342D3EF2FB57B88EC2CED6233CB34AC311A0241271
          9F6C0E4E722A1D27C371DBE81A5DBC4CF6925B5B471290036005E8410471CE3B
          8C9E793587F107479B49F875AEFD83471E29D4648542D8DD32AACC430DA0F450
          AB92DB463A6072735E7C527248437FE17BF813FE11D1AE7FC24307F679B8FB28
          6F2A4F37CDC676795B77E71CFDDE9CF4A76A5F1D3C07A4C3A5CD73E25B448B53
          884F6CEBB9C3479DBBD8A83B1739196C0C823B1AF9A7C3FE02F12D8CBA4F89EE
          3C257DA85ED9EA52DCEA3612BC2A6E3CC84A078C062A02E400A7B01F5AA50FC2
          0F1AE83A24F6D2F859B529F5BD19EC22D9327FA04AF7324B96C9E81643D3B8AF
          4961E87F37E2BCFF00E1FCC763EB43F14BC303C603C2C35456D70E3FD1961908
          194DE32E1768CAF3C9EF5D5D7C9767F0CFC5FA3FC5CD3AEAC749BDB6BC4BC81E
          E355179BED2E2D5215465319E779DA074E31906BEB4AE3AD0842DC8EF7401451
          45738828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0064B12CC851C0653D8D798F8E7E04685E2D9DAE8DA2
          C779D44F1131BE7D723AFE39A28A69B5AA1349E8CE31FE0F78A74DCC569E2EF1
          1C307408B7CC401ED8229B6BF009F53BA49F569750D6651D1F52B96931F871FA
          E68A2AB9E5DC8F671EC7AA7867E1E5A6871463CB440830B1A280A3E80576088B
          1A8551803A0A28A8341D515C5B4577118E68D648CF556191451400971670DDC3
          E54D12C91F076B0C8E2A50000001803B51450066C5E19D2E1D49F504B1856F1C
          E5A60BF313EB5A7451400514514005145140051451401FFFD9}
        mmHeight = 10848
        mmLeft = 105569
        mmTop = 2646
        mmWidth = 62177
        BandType = 8
      end
      object ppLine21: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Weight = 1
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1000
        mmWidth = 182000
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'Label1'
        Caption = 'Printed On : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 0
        mmTop = 4000
        mmWidth = 21431
        BandType = 8
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 21696
        mmTop = 3969
        mmWidth = 15621
        BandType = 8
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5000
        mmLeft = 154517
        mmTop = 4000
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label6'
        Caption = 'Report Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 9500
        mmWidth = 14288
        BandType = 8
      end
      object ppDBText56: TppDBText
        UserName = 'DBText6'
        DataField = 'report_Version_Major'
        DisplayFormat = '#"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 14288
        mmTop = 9525
        mmWidth = 2646
        BandType = 8
      end
      object ppDBText57: TppDBText
        UserName = 'DBText7'
        DataField = 'report_Version_Minor'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 16669
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText58: TppDBText
        UserName = 'DBText8'
        DataField = 'report_Version_Hi'
        DisplayFormat = '0"."'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 19050
        mmTop = 9525
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText59: TppDBText
        UserName = 'DBText9'
        DataField = 'report_Version_Lo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 21431
        mmTop = 9525
        mmWidth = 2910
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label7'
        Caption = 'RPM +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 176144
        mmTop = 9525
        mmWidth = 6562
        BandType = 8
      end
    end
    object ppPageStyle6: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'person_ID'
      DataPipeline = ppDBqryNoficationLetters
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBqryNoficationLetters'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 191559
        mmPrintPosition = 0
        object ppRegion13: TppRegion
          UserName = 'Region3'
          Caption = 'Region3'
          Pen.Color = clSilver
          mmHeight = 189707
          mmLeft = 0
          mmTop = 529
          mmWidth = 182563
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppShape31: TppShape
            UserName = 'Shape4'
            Pen.Color = clSilver
            Pen.Style = psClear
            mmHeight = 143404
            mmLeft = 22225
            mmTop = 38364
            mmWidth = 151871
            BandType = 3
            GroupNo = 0
          end
          object ppShape32: TppShape
            UserName = 'Shape5'
            Brush.Color = clRed
            Pen.Style = psClear
            mmHeight = 8467
            mmLeft = 92604
            mmTop = 43656
            mmWidth = 10054
            BandType = 3
            GroupNo = 0
          end
          object ppShape33: TppShape
            UserName = 'Shape3'
            Brush.Color = clSilver
            Pen.Color = clSilver
            mmHeight = 11642
            mmLeft = 131498
            mmTop = 26194
            mmWidth = 43392
            BandType = 3
            GroupNo = 0
          end
          object ppMemo2: TppMemo
            UserName = 'Memo1'
            Caption = 'Memo1'
            CharWrap = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Franklin Gothic Book'
            Font.Size = 12
            Font.Style = []
            Lines.Strings = (
              
                'This entitles you to prescribe level            drugs as reflect' +
                'ed in the institution'#39's formulary for the period of your employm' +
                'ent.'
              ''
              ''
              
                'Prescriptions will be issued in accordance with the rules and re' +
                'gulations oultined in the prescriber guidelines'
              ''
              ''
              
                'If you have any queries please do not hesitate to contact the De' +
                'partment of Pharmacology.'
              '')
            TextAlignment = taFullJustified
            Transparent = True
            mmHeight = 64823
            mmLeft = 23548
            mmTop = 45773
            mmWidth = 151607
            BandType = 3
            GroupNo = 0
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmLeading = 0
          end
          object ppDBText60: TppDBText
            UserName = 'DBText26'
            Color = clSilver
            DataField = 'rxLevelCode_Str'
            DataPipeline = ppDBqryNoficationLetters
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Century Gothic'
            Font.Size = 16
            Font.Style = [fsBold]
            ParentDataPipeline = False
            TextAlignment = taCentered
            Transparent = True
            DataPipelineName = 'ppDBqryNoficationLetters'
            mmHeight = 6632
            mmLeft = 95779
            mmTop = 44450
            mmWidth = 3969
            BandType = 3
            GroupNo = 0
          end
          object ppLabel11: TppLabel
            UserName = 'Label2'
            AutoSize = False
            Caption = 'Dear'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Century Gothic'
            Font.Size = 12
            Font.Style = []
            Transparent = True
            mmHeight = 5292
            mmLeft = 1852
            mmTop = 4762
            mmWidth = 11906
            BandType = 3
            GroupNo = 0
          end
          object ppDBText61: TppDBText
            UserName = 'DBText1'
            AutoSize = True
            DataField = 'personPositionTitleDescription_Str'
            DataPipeline = ppDBqryNoficationLetters
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Century Gothic'
            Font.Size = 18
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBqryNoficationLetters'
            mmHeight = 7408
            mmLeft = 15081
            mmTop = 3440
            mmWidth = 15875
            BandType = 3
            GroupNo = 0
          end
          object ppDBText62: TppDBText
            UserName = 'DBText19'
            DataField = 'personLastName_Str'
            DataPipeline = ppDBqryNoficationLetters
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Century Gothic'
            Font.Size = 18
            Font.Style = [fsBold]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBqryNoficationLetters'
            mmHeight = 6350
            mmLeft = 32808
            mmTop = 3704
            mmWidth = 138377
            BandType = 3
            GroupNo = 0
          end
          object ppDBText63: TppDBText
            UserName = 'DBText22'
            AutoSize = True
            DataField = 'personFirstName_Str'
            DataPipeline = ppDBqryNoficationLetters
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Name = 'Century Gothic'
            Font.Size = 14
            Font.Style = [fsBold, fsItalic]
            ParentDataPipeline = False
            Transparent = True
            DataPipelineName = 'ppDBqryNoficationLetters'
            mmHeight = 6054
            mmLeft = 32544
            mmTop = 10319
            mmWidth = 39243
            BandType = 3
            GroupNo = 0
          end
          object ppLine22: TppLine
            UserName = 'Line1'
            Weight = 0.75
            mmHeight = 2910
            mmLeft = 1588
            mmTop = 23813
            mmWidth = 178859
            BandType = 3
            GroupNo = 0
          end
          object ppShape34: TppShape
            UserName = 'Shape1'
            Pen.Color = clSilver
            mmHeight = 11642
            mmLeft = 22225
            mmTop = 26194
            mmWidth = 109009
            BandType = 3
            GroupNo = 0
          end
          object ppDBText64: TppDBText
            UserName = 'DBText23'
            Color = clSilver
            DataField = 'personPositionNumberNo_Str'
            DataPipeline = ppDBqryNoficationLetters
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Name = 'Century Gothic'
            Font.Size = 14
            Font.Style = [fsBold]
            ParentDataPipeline = False
            TextAlignment = taCentered
            Transparent = True
            DataPipelineName = 'ppDBqryNoficationLetters'
            mmHeight = 5821
            mmLeft = 132821
            mmTop = 29104
            mmWidth = 40481
            BandType = 3
            GroupNo = 0
          end
          object ppLabel95: TppLabel
            UserName = 'Label13'
            AutoSize = False
            Caption = 'Your prescriber number for this Complex is'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Franklin Gothic Book'
            Font.Size = 12
            Font.Style = []
            Transparent = True
            mmHeight = 5292
            mmLeft = 23283
            mmTop = 29104
            mmWidth = 107156
            BandType = 3
            GroupNo = 0
          end
          object ppLine23: TppLine
            UserName = 'Line4'
            Weight = 0.75
            mmHeight = 1852
            mmLeft = 22490
            mmTop = 35719
            mmWidth = 152136
            BandType = 3
            GroupNo = 0
          end
          object ppMemo3: TppMemo
            UserName = 'Memo2'
            Caption = 'Memo2'
            CharWrap = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Franklin Gothic Book'
            Font.Size = 12
            Font.Style = []
            Lines.Strings = (
              'Contact Mark Paterson'
              'Telephone 043-7082244 or email at patersm@hlthcmh.ecape.gov.za')
            TextAlignment = taFullJustified
            Transparent = True
            Visible = False
            mmHeight = 18521
            mmLeft = 23813
            mmTop = 111390
            mmWidth = 151607
            BandType = 3
            GroupNo = 0
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmLeading = 0
          end
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 34131
        mmPrintPosition = 0
        object ppRegion14: TppRegion
          UserName = 'Region4'
          Caption = 'Region4'
          Pen.Color = clSilver
          StretchWithParent = True
          mmHeight = 33338
          mmLeft = 0
          mmTop = 0
          mmWidth = 182563
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel96: TppLabel
            UserName = 'Label17'
            Caption = 'Yours Faithfully'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Century Gothic'
            Font.Size = 12
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 5292
            mmLeft = 0
            mmTop = 1058
            mmWidth = 35454
            BandType = 5
            GroupNo = 0
          end
          object ppLabel97: TppLabel
            UserName = 'Label3'
            Caption = 'ELHC PTC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Name = 'Century Gothic'
            Font.Size = 12
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 5027
            mmLeft = 161396
            mmTop = 26458
            mmWidth = 18785
            BandType = 5
            GroupNo = 0
          end
        end
      end
    end
  end
  object ppDBqryNoficationLetters: TppDBPipeline
    DataSource = dsqryNoficationLetter
    UserName = 'DBqryNoficationLetters'
    Left = 384
    Top = 184
  end
  object dsqryNoficationLetter: TDataSource
    DataSet = qryNoficationLetter
    Left = 352
    Top = 184
  end
  object qryNoficationLetter: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PERSONID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblPerson.personIDNumber_Str, tblPerson.personLastName_St' +
        'r, tblPerson.personFirstName_Str,  tblPerson.personInitials_Str,' +
        ' tblPersonPosition.personPositionCurrent_bol, tblPersonPosition.' +
        'personPositionNumberNo_Str,  tblPersonPosition.personPositionTit' +
        'le_Str, tblPersonPosition.personPositionStart_Dat, tblPersonPosi' +
        'tion.personPositionEnd_Dat,  tblPersonType.personTypeDescription' +
        '_Str, tblPerson.person_ID, tblPersonPositionTitle.personPosition' +
        'TitleDescription_Str,  tblPersonPosition.personPositionDescripti' +
        'on_Str, tblRxLevel.rxLevelCode_Str, tblPerson.personRegistration' +
        'No_str,  tblComplex.complexName_str'
      
        'FROM tblComplex INNER JOIN tblComplexSiteDepartment INNER JOIN t' +
        'blComplexSite ON tblComplexSiteDepartment.complexSite_ID = tblCo' +
        'mplexSite.complexSite_ID ON  tblComplex.complex_ID = tblComplexS' +
        'ite.complex_ID RIGHT OUTER JOIN tblRxLevel INNER JOIN tblPersonP' +
        'osition ON tblRxLevel.rxLevel_ID = tblPersonPosition.rxLevel_ID ' +
        'ON  tblComplexSiteDepartment.complexSiteDepartment_ID = tblPerso' +
        'nPosition.complexSiteDepartment_ID LEFT OUTER JOIN tblPersonPosi' +
        'tionTitle ON tblPersonPosition.personPositionTitle_ID = tblPerso' +
        'nPositionTitle.personPositionTitle_ID RIGHT OUTER JOIN tblPerson' +
        ' ON tblPersonPosition.person_ID = tblPerson.person_ID LEFT OUTER' +
        ' JOIN tblPersonType ON tblPersonPosition.personType_ID = tblPers' +
        'onType.personType_ID'
      'WHERE (dbo.tblPerson.person_ID = :PERSONID)'
      
        'ORDER BY tblPersonType.personTypeDescription_Str, tblPerson.pers' +
        'onLastName_Str, tblPerson.personFirstName_Str,  tblPerson.person' +
        'KnownName_Str')
    Left = 320
    Top = 184
  end
end

object dmPerson: TdmPerson
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 284
  Top = 105
  Height = 714
  Width = 731
  object conPrescriber: TADOConnection
    CommandTimeout = 180
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxNew;Data Source=SIFISOM'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 48
  end
  object qryPersonDetail: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    BeforePost = qryPersonDetailBeforePost
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblPerson where (person_ID = :person_ID)')
    Left = 192
    Top = 48
  end
  object dsqryPersonDetail: TDataSource
    DataSet = qryPersonDetail
    Left = 312
    Top = 48
  end
  object qryPersonDetailPhoto: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    OnNewRecord = qryPersonDetailPhotoNewRecord
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
      
        'select * from tblPersonPhoto where (person_ID = :person_ID) orde' +
        'r by personPhotoDate_Dat DESC')
    Left = 192
    Top = 104
  end
  object dsqryPersonDetailPhoto: TDataSource
    DataSet = qryPersonDetailPhoto
    Left = 312
    Top = 104
  end
  object qryPersonSignature: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    OnNewRecord = qryPersonSignatureNewRecord
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
      
        'select * from tblPersonSignature where (person_ID = :person_ID) ' +
        'order by personSignatureDateRecorded_Dat DESC')
    Left = 192
    Top = 152
  end
  object dsqryPersonSignature: TDataSource
    DataSet = qryPersonSignature
    Left = 312
    Top = 152
  end
  object qryPersonQualification: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    OnNewRecord = qryPersonQualificationNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblPersonQualification where (person_ID = :person_' +
        'ID)')
    Left = 192
    Top = 200
  end
  object dsqryPersonQualification: TDataSource
    DataSet = qryPersonQualification
    Left = 312
    Top = 200
  end
  object qryPersonComment: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    OnNewRecord = qryPersonCommentNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblPersonComment where (person_ID = :person_ID)')
    Left = 192
    Top = 248
  end
  object qryPersonContact: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    BeforePost = qryPersonContactBeforePost
    AfterScroll = qryPersonContactAfterScroll
    OnNewRecord = qryPersonContactNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblContact where (linking_ID = :person_ID)')
    Left = 192
    Top = 296
    object qryPersonContactcontact_ID: TGuidField
      FieldName = 'contact_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonContactlinking_ID: TGuidField
      FieldName = 'linking_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonContactcontactType_Str: TWideStringField
      FieldName = 'contactType_Str'
      Size = 25
    end
    object qryPersonContactcontactDetailOrder_Int: TIntegerField
      FieldName = 'contactDetailOrder_Int'
    end
    object qryPersonContactcontactDetail_Str: TWideStringField
      FieldName = 'contactDetail_Str'
      Size = 50
    end
    object qryPersonContactcontactDescription_Str: TWideStringField
      FieldName = 'contactDescription_Str'
      Size = 100
    end
    object qryPersonContactcontactDisplay_Str: TWideStringField
      FieldName = 'contactDisplay_Str'
      Size = 250
    end
    object qryPersonContactcontactLine01_str: TWideStringField
      FieldName = 'contactLine01_str'
      Size = 75
    end
    object qryPersonContactcontactLine02_str: TWideStringField
      FieldName = 'contactLine02_str'
      Size = 75
    end
    object qryPersonContactcontactLine03_str: TWideStringField
      FieldName = 'contactLine03_str'
      Size = 75
    end
    object qryPersonContactcontactLine04_str: TWideStringField
      FieldName = 'contactLine04_str'
      Size = 75
    end
    object qryPersonContactcontactMode_str: TWideStringField
      FieldName = 'contactMode_str'
      Size = 25
    end
  end
  object dsqryPersonComment: TDataSource
    DataSet = qryPersonComment
    Left = 312
    Top = 248
  end
  object dsqryPersonContact: TDataSource
    DataSet = qryPersonContact
    Left = 312
    Top = 296
  end
  object qryPersonPosition: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    BeforePost = qryPersonPositionBeforePost
    OnNewRecord = qryPersonPositionNewRecord
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
      
        'select * from tblPersonPosition where (person_ID= :person_ID) or' +
        'der by personPositionStart_Dat DESC')
    Left = 192
    Top = 344
  end
  object dsqryPersonPosition: TDataSource
    DataSet = qryPersonPosition
    Left = 312
    Top = 344
  end
  object qrySpecialisation: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSpecialisation')
    Left = 472
    Top = 112
  end
  object qrySiteDepartment: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tblComplexSiteDepartment where (clinicDepartment_b' +
        'ol = 1)')
    Left = 472
    Top = 160
  end
  object qryPersonType: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonType')
    Left = 472
    Top = 216
  end
  object qryRxLevel: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblRxLevel Order By rxLevelOrder_int')
    Left = 472
    Top = 264
  end
  object dsqrySpecialisation: TDataSource
    DataSet = qrySpecialisation
    Left = 576
    Top = 112
  end
  object dsqrySiteDepartment: TDataSource
    DataSet = qrySiteDepartment
    Left = 576
    Top = 160
  end
  object dsqryPersonType: TDataSource
    DataSet = qryPersonType
    Left = 576
    Top = 208
  end
  object dsqryRxLevel: TDataSource
    DataSet = qryRxLevel
    Left = 576
    Top = 264
  end
  object qryPersonPositionTitle: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonPositionTitle '
      ''
      'order by personPositionTitleDescription_Str')
    Left = 472
    Top = 320
    object qryPersonPositionTitlepersonPositionTitle_ID: TGuidField
      FieldName = 'personPositionTitle_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonPositionTitlepersonPositionTitleDescription_Str: TWideStringField
      FieldName = 'personPositionTitleDescription_Str'
      Size = 50
    end
  end
  object dsqryPersonPositionTitle: TDataSource
    DataSet = qryPersonPositionTitle
    Left = 576
    Top = 320
  end
  object qryNumbering: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSystemRecordNumbering')
    Left = 472
    Top = 424
  end
  object tblRace: TADOTable
    Connection = conPrescriber
    TableName = 'tlkSystemRace'
    Left = 472
    Top = 480
  end
  object tblLanguage: TADOTable
    Connection = conPrescriber
    TableName = 'tlkSystemLanguage'
    Left = 472
    Top = 536
  end
  object dstblRace: TDataSource
    DataSet = tblRace
    Left = 568
    Top = 480
  end
  object dstblLanguage: TDataSource
    DataSet = tblLanguage
    Left = 568
    Top = 536
  end
  object qryPersonPost: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonPositionPost')
    Left = 472
    Top = 368
  end
  object dsqryPersonPost: TDataSource
    DataSet = qryPersonPost
    Left = 576
    Top = 368
  end
  object qryPersonPositionRotation: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    BeforePost = qryPersonPositionRotationBeforePost
    AfterPost = qryPersonPositionRotationAfterPost
    OnNewRecord = qryPersonPositionRotationNewRecord
    DataSource = dsqryPersonPosition
    Parameters = <
      item
        Name = 'personPosition_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblPersonPositionRotation where personPosition_ID ' +
        '= :personPosition_ID')
    Left = 192
    Top = 392
  end
  object dsqryPersonPositionRotation: TDataSource
    DataSet = qryPersonPositionRotation
    Left = 312
    Top = 392
  end
  object qryBioDataSheet: TADOQuery
    Connection = conPrescriber
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT      TOP 100 PERCENT dbo.tblSystem.provincialLogo_img, db' +
        'o.tblPerson.personIDNumber_Str, dbo.tblPerson.personLastName_Str' +
        ', dbo.tblPerson.personFirstName_Str, '
      
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
      
        'FROM           dbo.tblSystem, dbo.tblPersonPhoto RIGHT OUTER JOI' +
        'N'
      
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
        'blPerson.person_ID = :person_ID)'
      
        'ORDER BY dbo.tblPersonType.personTypeDescription_Str, dbo.tblPer' +
        'son.personLastName_Str, dbo.tblPerson.personFirstName_Str, '
      
        '                      dbo.tblPerson.personKnownName_Str, dbo.tbl' +
        'PersonQualification.personQualificationDateReceived_Dat')
    Left = 55
    Top = 464
  end
  object dsqryBioDataSheet: TDataSource
    DataSet = qryBioDataSheet
    Left = 155
    Top = 464
  end
  object ppDBBioDataSheet: TppDBPipeline
    DataSource = dsqryBioDataSheet
    CloseDataSource = True
    UserName = 'DBBioDataSheet'
    Left = 262
    Top = 464
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
    PrinterSetup.SaveDeviceSettings = False
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
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 368
    Top = 463
    Version = '11.03'
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
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personLastName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 36
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 15558
        mmLeft = 32279
        mmTop = 0
        mmWidth = 123952
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Name = 'Century Gothic'
        Font.Size = 22
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 9525
        mmLeft = 32544
        mmTop = 16933
        mmWidth = 75290
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPositionNumberNo_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'rxLevelCode_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial Narrow'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 11345
        mmLeft = 116851
        mmTop = 16140
        mmWidth = 64389
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rx Level'
        Font.Charset = ANSI_CHARSET
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
      object ppDBImage6: TppDBImage
        UserName = 'DBImage6'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'provincialLogo_img'
        DataPipeline = ppDBBioDataSheet
        GraphicType = 'Bitmap'
        DataPipelineName = 'ppDBBioDataSheet'
        mmHeight = 30427
        mmLeft = 265
        mmTop = 794
        mmWidth = 31221
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personQualificationDateReceived_Dat'
        DataPipeline = ppDBBioDataSheet
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personQualificationInstitution_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personQualificationName_Str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personQualificationNumber_str'
        DataPipeline = ppDBBioDataSheet
        Font.Charset = ANSI_CHARSET
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
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On : '
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd dd mmmm yyyy @ [hh:nn]'
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Report Version'
        Font.Charset = ANSI_CHARSET
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RPM +'
        Font.Charset = ANSI_CHARSET
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
      NewFile = False
      StartOnOddPage = False
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Personal Details'
            Color = clSilver
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Last Name :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personLastName_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personFirstName_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'First Name :'
            Font.Charset = ANSI_CHARSET
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
            AlignHorizontal = ahCenter
            AlignVertical = avCenter
            MaintainAspectRatio = True
            Stretch = True
            Transparent = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Photograph'
            Color = clSilver
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personPhotoDate_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = ANSI_CHARSET
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
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personSignatureDateRecorded_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = ANSI_CHARSET
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
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
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
            AlignHorizontal = ahCenter
            AlignVertical = avCenter
            MaintainAspectRatio = True
            Stretch = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Signature'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Prescriber Number :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Title :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Description :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Type :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personTypeDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personPositionDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personPositionTitleDescription_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personPositionNumberNo_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Position Details'
            Color = clSilver
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Current Position Started :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personPositionStart_Dat'
            DataPipeline = ppDBBioDataSheet
            DisplayFormat = 'mmmm d, yyyy'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Rx Level :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'rxLevelCode_Str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'HPCSA Registration # :'
            Font.Charset = ANSI_CHARSET
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'personRegistrationNo_str'
            DataPipeline = ppDBBioDataSheet
            Font.Charset = ANSI_CHARSET
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
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qualifications'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
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
        HideWhenOneDetail = False
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
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Notes'
            Font.Charset = ANSI_CHARSET
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
    object ppParameterList1: TppParameterList
    end
  end
end

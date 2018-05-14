object dmPerson: TdmPerson
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 477
  Top = 126
  Height = 714
  Width = 731
  object conPerson: TADOConnection
    CommandTimeout = 120
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxNew;Data Source=(local)'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 48
  end
  object qryPersonDetail: TADOQuery
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
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
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSpecialisation')
    Left = 472
    Top = 112
  end
  object qrySiteDepartment: TADOQuery
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tblComplexSiteDepartment where (clinicDepartment_b' +
        'ol = 1)')
    Left = 472
    Top = 160
  end
  object qryPersonType: TADOQuery
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonType')
    Left = 472
    Top = 216
  end
  object qryRxLevel: TADOQuery
    Connection = conPerson
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
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonPositionTitle ')
    Left = 472
    Top = 320
  end
  object dsqryPersonPositionTitle: TDataSource
    DataSet = qryPersonPositionTitle
    Left = 576
    Top = 320
  end
  object qryNumbering: TADOQuery
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSystemRecordNumbering')
    Left = 472
    Top = 424
  end
  object tblRace: TADOTable
    Connection = conPerson
    TableName = 'tlkSystemRace'
    Left = 472
    Top = 480
  end
  object tblLanguage: TADOTable
    Connection = conPerson
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
    Connection = conPerson
    Parameters = <
      item
        Name = 'prmpersonPositionPostArea_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblPersonPositionPost WHERE personPositionPostArea' +
        '_str = :prmpersonPositionPostArea_str')
    Left = 472
    Top = 368
  end
  object dsqryPersonPost: TDataSource
    DataSet = qryPersonPost
    Left = 576
    Top = 368
  end
  object qryPersonPositionRotation: TADOQuery
    Connection = conPerson
    CursorType = ctStatic
    BeforePost = qryPersonPositionRotationBeforePost
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
  object qryDemanders: TADOQuery
    Connection = conPerson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select DemanderUnique_ID, Name_Str '
      'From tblDemander'
      'Where CanDispense_bol = 1'
      'Order By Name_str')
    Left = 472
    Top = 592
  end
  object dsqryDemanders: TDataSource
    DataSet = qryDemanders
    Left = 568
    Top = 592
  end
end

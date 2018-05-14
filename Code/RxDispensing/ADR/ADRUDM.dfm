object ADRDM: TADRDM
  OldCreateOrder = False
  Left = 390
  Top = 257
  Height = 395
  Width = 428
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxNew;Data Source=(local)'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object tblPatients: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select personRefNoCurrent_str, personLastName_Str +'#39', '#39'+ personF' +
        'irstName_Str AS personName, person_ID,  '
      
        '((CONVERT(int, GETDATE() - tblPerson.personDOB_Dat) / 365 )) AS ' +
        'Age,'
      'personGender_Str, personDOB_Dat'
      'from TblPerson'
      'ORDER BY  personLastName_Str')
    Left = 24
    Top = 64
    object tblPatientspersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object tblPatientspersonName: TWideStringField
      FieldName = 'personName'
      ReadOnly = True
      Size = 62
    end
    object tblPatientsperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object tblPatientsAge: TIntegerField
      FieldName = 'Age'
      ReadOnly = True
    end
    object tblPatientspersonGender_Str: TWideStringField
      FieldName = 'personGender_Str'
      Size = 1
    end
    object tblPatientspersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
  end
  object DSPatients: TDataSource
    DataSet = tblPatients
    Left = 96
    Top = 64
  end
  object tblADR: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = tblADRAfterScroll
    DataSource = DSPatients
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT * FROM tblADR'
      'WHERE person_ID=:person_ID')
    Left = 24
    Top = 120
  end
  object DSADR: TDataSource
    DataSet = tblADR
    Left = 104
    Top = 120
  end
  object ADRDetail: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = dsADRWorker
    Parameters = <
      item
        Name = 'ADR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * from tblADRDetail'
      'WHERE ADR_ID=:ADR_ID')
    Left = 24
    Top = 248
  end
  object DSADRDetail: TDataSource
    DataSet = ADRDetail
    Left = 104
    Top = 248
  end
  object addProducts: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = '@ADR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = '@ProdCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = '@DailyDosage_dbl'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = '@DateStarted_dat'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO TblADRDetail'
      '           (ADR_ID'
      '           ,ProductDescription_str'
      '           ,ProdCode_ID'
      '           ,BatchNumber_str'
      '           ,ExpiryDate_dat'
      '           ,DailyDosage_dbl'
      '           ,Route_str'
      '           ,DosageForm_str'
      '           ,Strength_dbl'
      '           ,DateStarted_dat'
      '           ,DateStopped_dat'
      '           ,ReasonForUse_str'
      '           ,PackSize_dbl'
      '           ,Container_str'
      '           ,ProductAvailable_bol)'
      '     VALUES'
      '           (:@ADR_ID'
      '           ,:@ProductDescription_str'
      '           ,:@ProdCode_ID'
      '           ,:@BatchNumber_str'
      '           ,:@ExpiryDate_dat'
      '           ,:@DailyDosage_dbl'
      '           ,:@Route_str'
      '           ,:@DosageForm_str'
      '           ,:@Strength_dbl'
      '           ,:@DateStarted_dat'
      '           ,:@DateStopped_dat'
      '           ,:@ReasonForUse_str'
      '           ,:@PackSize_dbl'
      '           ,:@Container_str'
      '           ,:@ProductAvailable_bol)')
    Left = 328
    Top = 136
  end
  object addProductsFrmRx: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = '@ADR_ID'
        Size = -1
        Value = Null
      end
      item
        Name = '@RX_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO TblADRDetail'
      '           (ADR_ID'
      '            ,ProductDescription_str'
      '           ,Product_ID'
      '           ,DailyDosage_dbl'
      '           ,Route_str'
      '           ,DosageForm_str'
      '           ,Strength_dbl'
      '           ,DateStarted_dat'
      '           ,PackSize_dbl'
      '           ,Container_str'
      '           )'
      '          ('
      '          SELECT :@ADR_ID'
      #9',tblRxItem.FrmFormulation_Str'
      '                ,tblRxItem.DspProduct_ID'
      '                ,tblRxItem.FrmDailyDoseCalc_Dbl'
      '                ,ISNULL(tblProductPackSize.Route_str, '#39'PO'#39')'
      
        '                ,ISNULL(tblRxItem.FrmAdministrationUnit_Str, tbl' +
        'ProductPackSize.Form_str)'
      
        '                ,ISNULL(tblRxItem.FrmDoseCalc_Dbl, tblProductPac' +
        'kSize.StrengthValue_dbl)'
      '                ,GETDate()'
      '                ,tblRxItem.DspSKUActual_Dbl'
      '                ,tblProductPackSize.PackContainer_str'
      
        '  FROM TblRXItem LEFT OUTER JOIN tblProductPackSize ON TblRXItem' +
        '.DspProduct_ID=tblProductPackSize.productPackSize_ID'
      '  WHERE DspNotDispensed_Bol = 0'
      '  AND RX_ID=:@RX_ID'
      '  AND DspProduct_ID IS NOT NULL'
      '  )')
    Left = 328
    Top = 200
  end
  object tblADRWorker: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DSADR
    Parameters = <
      item
        Name = '@ADR_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from tblADR'
      'WHERE ADR_ID=:@ADR_ID')
    Left = 24
    Top = 184
  end
  object dsADRWorker: TDataSource
    DataSet = tblADRWorker
    Left = 104
    Top = 184
  end
end

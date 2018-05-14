object dmStdReg: TdmStdReg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 692
  Top = 261
  Height = 586
  Width = 985
  object conStdReg: TADOConnection
    CommandTimeout = 120
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=rxbarcoding;Data Source=.\sqlexpre' +
      'ss'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 32
  end
  object qryProtocol: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    BeforePost = qryProtocolBeforePost
    OnNewRecord = qryProtocolNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from TblStdProtocol order by Name_Str')
    Left = 144
    Top = 88
  end
  object qryStdRegimen: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    BeforePost = qryStdRegimenBeforePost
    OnNewRecord = qryStdRegimenNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from TblStdRegimen'
      'Order By FrmDescription_Str')
    Left = 312
    Top = 88
    object qryStdRegimenStdRegimen_ID: TGuidField
      FieldName = 'StdRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryStdRegimenFrmFormulation_Str: TWideStringField
      FieldName = 'FrmFormulation_Str'
      OnChange = StdRegimenFieldsChanged
      Size = 250
    end
    object qryStdRegimenFrmAdministration_Str: TWideStringField
      FieldName = 'FrmAdministration_Str'
      Size = 35
    end
    object qryStdRegimenFrmSKU_Dbl: TFloatField
      FieldName = 'FrmSKU_Dbl'
      OnChange = StdRegimenFieldsChanged
    end
    object qryStdRegimenFrmInterval_Str: TWideStringField
      FieldName = 'FrmInterval_Str'
      OnChange = StdRegimenFieldsChanged
    end
    object qryStdRegimenFrmAdministrationUnit_Str: TWideStringField
      FieldName = 'FrmAdministrationUnit_Str'
      Size = 35
    end
    object qryStdRegimenFrmDailyDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDailyDoseCalc_Dbl'
    end
    object qryStdRegimenFrmDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDoseCalc_Dbl'
    end
    object qryStdRegimenFrmSKUTotal_Dbl: TFloatField
      FieldName = 'FrmSKUTotal_Dbl'
    end
    object qryStdRegimenFrmDuration_Dbl: TFloatField
      FieldName = 'FrmDuration_Dbl'
      OnChange = StdRegimenFieldsChanged
    end
    object qryStdRegimenFrmRepeat_Dbl: TFloatField
      FieldName = 'FrmRepeat_Dbl'
    end
    object qryStdRegimenFrmDirections_Str: TWideStringField
      FieldName = 'FrmDirections_Str'
      OnChange = StdRegimenFieldsChanged
      Size = 30
    end
    object qryStdRegimenFrmICDCode_Str: TWideStringField
      FieldName = 'FrmICDCode_Str'
      Size = 30
    end
    object qryStdRegimenFrmDescription_Str: TWideStringField
      FieldName = 'FrmDescription_Str'
      Size = 500
    end
    object qryStdRegimenFrmProtocol_ID: TGuidField
      FieldName = 'FrmProtocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryStdRegimenDspDescription_Str: TWideStringField
      FieldName = 'DspDescription_Str'
      Size = 500
    end
    object qryStdRegimenDspProduct_ID: TGuidField
      FieldName = 'DspProduct_ID'
      FixedChar = True
      Size = 38
    end
    object qryStdRegimenDspProduct_Str: TWideStringField
      FieldName = 'DspProduct_Str'
      OnChange = StdRegimenFieldsChanged
      Size = 250
    end
    object qryStdRegimenDspSKUActual_Dbl: TFloatField
      FieldName = 'DspSKUActual_Dbl'
      OnChange = StdRegimenFieldsChanged
    end
    object qryStdRegimenDspProductCalc_Dbl: TFloatField
      FieldName = 'DspProductCalc_Dbl'
    end
    object qryStdRegimenDspProductBreakPack_Bol: TBooleanField
      FieldName = 'DspProductBreakPack_Bol'
      OnChange = StdRegimenFieldsChanged
    end
    object qryStdRegimenDspWarning_Str: TWideStringField
      FieldName = 'DspWarning_Str'
      OnChange = StdRegimenFieldsChanged
      Size = 150
    end
    object qryStdRegimenDspDirections_Str: TWideStringField
      FieldName = 'DspDirections_Str'
      OnChange = StdRegimenFieldsChanged
      Size = 250
    end
    object qryStdRegimenDspLabel01_Str: TWideStringField
      FieldName = 'DspLabel01_Str'
      Size = 350
    end
    object qryStdRegimenDspLabel02_Str: TWideStringField
      FieldName = 'DspLabel02_Str'
      Size = 350
    end
    object qryStdRegimenDspLabel03_Str: TWideStringField
      FieldName = 'DspLabel03_Str'
      Size = 350
    end
    object qryStdRegimenDspLabel04_Str: TWideStringField
      FieldName = 'DspLabel04_Str'
      Size = 350
    end
    object qryStdRegimenDspLabel05_Str: TWideStringField
      FieldName = 'DspLabel05_Str'
      Size = 350
    end
    object qryStdRegimenDspLabel06_Str: TWideStringField
      FieldName = 'DspLabel06_Str'
      Size = 350
    end
    object qryStdRegimenItemPreview_Str: TWideStringField
      FieldName = 'ItemPreview_Str'
      Size = 650
    end
    object qryStdRegimenDspDirectionsAuto_Bol: TBooleanField
      FieldName = 'DspDirectionsAuto_Bol'
      OnChange = StdRegimenFieldsChanged
    end
  end
  object qryProductFormulation: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT GenericName_str, strengthExtraDescription_str, r' +
        'oute_str, StrengthValue_dbl, DispensingValue_dbl, DispensingUnit' +
        '_str, Administration_str, StrengthUnit_Str, Form_str'
      'FROM  tblProductPackSize '
      
        'WHERE ((InstitutionEDL_bol = 1) AND (IsAvailableForDispensing_Bo' +
        'l = 1))'
      'ORDER BY strengthExtraDescription_str')
    Left = 520
    Top = 88
  end
  object qryProductPacks: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    DataSource = dsqryProductFormulation
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Abacavir'
      end
      item
        Name = 'route_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'PO'
      end
      item
        Name = 'Form_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'Liquid, Internal'
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblProductPackSize '
      
        'WHERE ((GenericName_str = :GenericName_str) and (route_str = :ro' +
        'ute_str)  and (Form_str = :Form_str) and (IsAvailableForDispensi' +
        'ng_Bol = 1) and (InstitutionEDL_bol = 1)) '
      'ORDER BY packDescription_Str')
    Left = 520
    Top = 144
  end
  object qryICD10: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tblICD10 where (active_bol = 1) order by Descripti' +
        'on_str')
    Left = 520
    Top = 192
  end
  object qryRegiminInterval: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from TblAbbreviations where (abbreviationType_str = '#39'In' +
        'terval'#39')')
    Left = 520
    Top = 240
    object qryRegiminIntervalabbreviation_Str: TWideStringField
      FieldName = 'abbreviation_Str'
      Size = 50
    end
    object qryRegiminIntervalabbreviationDescription_Str: TWideStringField
      FieldName = 'abbreviationDescription_Str'
      Size = 255
    end
    object qryRegiminIntervalabbreviationValue_dbl: TFloatField
      FieldName = 'abbreviationValue_dbl'
    end
    object qryRegiminIntervalabbreviationValueUnit_Str: TWideStringField
      FieldName = 'abbreviationValueUnit_Str'
      Size = 15
    end
    object qryRegiminIntervalabbreviationValueRatio_dbl: TFloatField
      FieldName = 'abbreviationValueRatio_dbl'
    end
    object qryRegiminIntervalabbreviationType_Str: TWideStringField
      FieldName = 'abbreviationType_Str'
      Size = 50
    end
    object qryRegiminIntervalabbreviationValueRatioUnit_Str: TWideStringField
      FieldName = 'abbreviationValueRatioUnit_Str'
      Size = 15
    end
    object qryRegiminIntervalabbreviationInstruction_Str: TWideStringField
      FieldName = 'abbreviationInstruction_Str'
      Size = 255
    end
    object qryRegiminIntervalabbreviationLanguage_str: TWideStringField
      FieldName = 'abbreviationLanguage_str'
      Size = 75
    end
  end
  object qryRegiminInstruction: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from TblAbbreviations where (abbreviationType_str = '#39'Ad' +
        'ditional Directions'#39')')
    Left = 520
    Top = 288
  end
  object dsqryProductFormulation: TDataSource
    DataSet = qryProductFormulation
    Left = 660
    Top = 80
  end
  object qryRXItem_Worker: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    OnNewRecord = qryRXItem_WorkerNewRecord
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
      'Select * from TblRXItem where (RX_ID = :prescription_ID) ')
    Left = 320
    Top = 160
  end
  object qryProtocolRegimen: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    DataSource = dsqryProtocol
    Parameters = <
      item
        Name = 'Protocol_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{C548E33A-E2A6-4E00-B034-2C37F18F108F}'
      end>
    SQL.Strings = (
      
        'SELECT TblProtocolRegimen.Protocol_ID, TblProtocolRegimen.InputO' +
        'rder_int, TblProtocolRegimen.ProtocolRegimen_ID,  TblStdRegimen.' +
        '*'
      'FROM TblStdRegimen INNER JOIN'
      
        '                      TblProtocolRegimen ON TblStdRegimen.StdReg' +
        'imen_ID = TblProtocolRegimen.StdRegimen_ID'
      'WHERE (TblProtocolRegimen.Protocol_ID = :Protocol_ID)'
      'ORDER BY TblProtocolRegimen.InputOrder_int ASC')
    Left = 144
    Top = 144
    object qryProtocolRegimenProtocol_ID: TGuidField
      FieldName = 'Protocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenProtocolRegimen_ID: TGuidField
      FieldName = 'ProtocolRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenStdRegimen_ID: TGuidField
      FieldName = 'StdRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenFrmFormulation_Str: TWideStringField
      FieldName = 'FrmFormulation_Str'
      Size = 250
    end
    object qryProtocolRegimenFrmAdministration_Str: TWideStringField
      FieldName = 'FrmAdministration_Str'
      Size = 35
    end
    object qryProtocolRegimenFrmSKU_Dbl: TFloatField
      FieldName = 'FrmSKU_Dbl'
    end
    object qryProtocolRegimenFrmInterval_Str: TWideStringField
      FieldName = 'FrmInterval_Str'
    end
    object qryProtocolRegimenFrmAdministrationUnit_Str: TWideStringField
      FieldName = 'FrmAdministrationUnit_Str'
      Size = 35
    end
    object qryProtocolRegimenFrmDailyDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDailyDoseCalc_Dbl'
    end
    object qryProtocolRegimenFrmDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDoseCalc_Dbl'
    end
    object qryProtocolRegimenFrmSKUTotal_Dbl: TFloatField
      FieldName = 'FrmSKUTotal_Dbl'
    end
    object qryProtocolRegimenFrmDuration_Dbl: TFloatField
      FieldName = 'FrmDuration_Dbl'
    end
    object qryProtocolRegimenFrmRepeat_Dbl: TFloatField
      FieldName = 'FrmRepeat_Dbl'
    end
    object qryProtocolRegimenFrmDirections_Str: TWideStringField
      FieldName = 'FrmDirections_Str'
      Size = 30
    end
    object qryProtocolRegimenFrmICDCode_Str: TWideStringField
      FieldName = 'FrmICDCode_Str'
      Size = 30
    end
    object qryProtocolRegimenFrmDescription_Str: TWideStringField
      FieldName = 'FrmDescription_Str'
      Size = 500
    end
    object qryProtocolRegimenFrmProtocol_ID: TGuidField
      FieldName = 'FrmProtocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDspDescription_Str: TWideStringField
      FieldName = 'DspDescription_Str'
      Size = 500
    end
    object qryProtocolRegimenDspProduct_ID: TGuidField
      FieldName = 'DspProduct_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDspProduct_Str: TWideStringField
      FieldName = 'DspProduct_Str'
      Size = 250
    end
    object qryProtocolRegimenDspSKUActual_Dbl: TFloatField
      FieldName = 'DspSKUActual_Dbl'
    end
    object qryProtocolRegimenDspProductCalc_Dbl: TFloatField
      FieldName = 'DspProductCalc_Dbl'
    end
    object qryProtocolRegimenDspProductBreakPack_Bol: TBooleanField
      FieldName = 'DspProductBreakPack_Bol'
    end
    object qryProtocolRegimenDspWarning_Str: TWideStringField
      FieldName = 'DspWarning_Str'
      Size = 150
    end
    object qryProtocolRegimenDspDirections_Str: TWideStringField
      FieldName = 'DspDirections_Str'
      Size = 250
    end
    object qryProtocolRegimenDspLabel01_Str: TWideStringField
      FieldName = 'DspLabel01_Str'
      Size = 350
    end
    object qryProtocolRegimenDspLabel02_Str: TWideStringField
      FieldName = 'DspLabel02_Str'
      Size = 350
    end
    object qryProtocolRegimenDspLabel03_Str: TWideStringField
      FieldName = 'DspLabel03_Str'
      Size = 350
    end
    object qryProtocolRegimenDspLabel04_Str: TWideStringField
      FieldName = 'DspLabel04_Str'
      Size = 350
    end
    object qryProtocolRegimenDspLabel05_Str: TWideStringField
      FieldName = 'DspLabel05_Str'
      Size = 350
    end
    object qryProtocolRegimenDspLabel06_Str: TWideStringField
      FieldName = 'DspLabel06_Str'
      Size = 350
    end
    object qryProtocolRegimenItemPreview_Str: TWideStringField
      FieldName = 'ItemPreview_Str'
      Size = 650
    end
    object qryProtocolRegimenDspDirectionsAuto_Bol: TBooleanField
      FieldName = 'DspDirectionsAuto_Bol'
    end
    object qryProtocolRegimenInputOrder_int: TIntegerField
      FieldName = 'InputOrder_int'
    end
  end
  object dsqryProtocol: TDataSource
    DataSet = qryProtocol
    Left = 208
    Top = 88
  end
  object qryProtocolRegimen_Worker: TADOQuery
    Connection = conStdReg
    DataSource = dsqryProtocol
    Parameters = <
      item
        Name = 'Protocol_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TblProtocolRegimen'
      'WHERE (Protocol_ID = :Protocol_ID)'
      '')
    Left = 144
    Top = 200
    object qryProtocolRegimen_WorkerProtocolRegimen_ID: TGuidField
      FieldName = 'ProtocolRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimen_WorkerProtocol_ID: TGuidField
      FieldName = 'Protocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimen_WorkerStdRegimen_ID: TGuidField
      FieldName = 'StdRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimen_WorkerInputOrder_int: TIntegerField
      FieldName = 'InputOrder_int'
    end
  end
  object qryProtocolRegimenDescription_Worker: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    DataSource = dsqryProtocol
    Parameters = <
      item
        Name = 'Protocol_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{C548E33A-E2A6-4E00-B034-2C37F18F108F}'
      end>
    SQL.Strings = (
      
        'SELECT TblProtocolRegimen.Protocol_ID, TblProtocolRegimen.InputO' +
        'rder_int, TblProtocolRegimen.ProtocolRegimen_ID,  TblStdRegimen.' +
        '*'
      'FROM TblStdRegimen INNER JOIN'
      
        '                      TblProtocolRegimen ON TblStdRegimen.StdReg' +
        'imen_ID = TblProtocolRegimen.StdRegimen_ID'
      'WHERE (TblProtocolRegimen.Protocol_ID = :Protocol_ID)')
    Left = 144
    Top = 256
    object qryProtocolRegimenDescription_WorkerProtocol_ID: TGuidField
      FieldName = 'Protocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDescription_WorkerProtocolRegimen_ID: TGuidField
      FieldName = 'ProtocolRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDescription_WorkerStdRegimen_ID: TGuidField
      FieldName = 'StdRegimen_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDescription_WorkerFrmFormulation_Str: TWideStringField
      FieldName = 'FrmFormulation_Str'
      Size = 250
    end
    object qryProtocolRegimenDescription_WorkerFrmAdministration_Str: TWideStringField
      FieldName = 'FrmAdministration_Str'
      Size = 35
    end
    object qryProtocolRegimenDescription_WorkerFrmSKU_Dbl: TFloatField
      FieldName = 'FrmSKU_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmInterval_Str: TWideStringField
      FieldName = 'FrmInterval_Str'
    end
    object qryProtocolRegimenDescription_WorkerFrmAdministrationUnit_Str: TWideStringField
      FieldName = 'FrmAdministrationUnit_Str'
      Size = 35
    end
    object qryProtocolRegimenDescription_WorkerFrmDailyDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDailyDoseCalc_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmDoseCalc_Dbl: TFloatField
      FieldName = 'FrmDoseCalc_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmSKUTotal_Dbl: TFloatField
      FieldName = 'FrmSKUTotal_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmDuration_Dbl: TFloatField
      FieldName = 'FrmDuration_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmRepeat_Dbl: TFloatField
      FieldName = 'FrmRepeat_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerFrmDirections_Str: TWideStringField
      FieldName = 'FrmDirections_Str'
      Size = 30
    end
    object qryProtocolRegimenDescription_WorkerFrmICDCode_Str: TWideStringField
      FieldName = 'FrmICDCode_Str'
      Size = 30
    end
    object qryProtocolRegimenDescription_WorkerFrmDescription_Str: TWideStringField
      FieldName = 'FrmDescription_Str'
      Size = 500
    end
    object qryProtocolRegimenDescription_WorkerFrmProtocol_ID: TGuidField
      FieldName = 'FrmProtocol_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDescription_WorkerDspDescription_Str: TWideStringField
      FieldName = 'DspDescription_Str'
      Size = 500
    end
    object qryProtocolRegimenDescription_WorkerDspProduct_ID: TGuidField
      FieldName = 'DspProduct_ID'
      FixedChar = True
      Size = 38
    end
    object qryProtocolRegimenDescription_WorkerDspProduct_Str: TWideStringField
      FieldName = 'DspProduct_Str'
      Size = 250
    end
    object qryProtocolRegimenDescription_WorkerDspSKUActual_Dbl: TFloatField
      FieldName = 'DspSKUActual_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerDspProductCalc_Dbl: TFloatField
      FieldName = 'DspProductCalc_Dbl'
    end
    object qryProtocolRegimenDescription_WorkerDspProductBreakPack_Bol: TBooleanField
      FieldName = 'DspProductBreakPack_Bol'
    end
    object qryProtocolRegimenDescription_WorkerDspWarning_Str: TWideStringField
      FieldName = 'DspWarning_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspDirections_Str: TWideStringField
      FieldName = 'DspDirections_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel01_Str: TWideStringField
      FieldName = 'DspLabel01_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel02_Str: TWideStringField
      FieldName = 'DspLabel02_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel03_Str: TWideStringField
      FieldName = 'DspLabel03_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel04_Str: TWideStringField
      FieldName = 'DspLabel04_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel05_Str: TWideStringField
      FieldName = 'DspLabel05_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerDspLabel06_Str: TWideStringField
      FieldName = 'DspLabel06_Str'
      Size = 150
    end
    object qryProtocolRegimenDescription_WorkerItemPreview_Str: TWideStringField
      FieldName = 'ItemPreview_Str'
      Size = 300
    end
    object qryProtocolRegimenDescription_WorkerDspDirectionsAuto_Bol: TBooleanField
      FieldName = 'DspDirectionsAuto_Bol'
    end
  end
  object qryCheckIfRegimenBeingUsed: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@StdRegimenID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT StdRegimen_ID '
      ''
      'FROM TblProtocolRegimen'
      ''
      'WHERE StdRegimen_ID=:@StdRegimenID')
    Left = 280
    Top = 376
  end
  object qryRx_UpdateProtocolID: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    OnNewRecord = qryRXItem_WorkerNewRecord
    Parameters = <
      item
        Name = 'protocolID'
        Size = -1
        Value = Null
      end
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
      'UPDATE TblPrescription '
      'SET protocol_ID =:protocolID'
      'WHERE (prescription_ID =:prescription_ID) ')
    Left = 144
    Top = 328
  end
  object qryRegimenID: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    OnNewRecord = qryStdRegimenNewRecord
    Parameters = <
      item
        Name = 'StdRegimenID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from TblStdRegimen'
      'Where StdRegimen_ID=:StdRegimenID'
      'Order By FrmDescription_Str')
    Left = 528
    Top = 368
  end
  object qryHideDailyDDosage: TADOQuery
    Connection = conStdReg
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT doNotShowDailyDefinedDose_bol '
      'FROM tblSystem')
    Left = 792
    Top = 80
    object qryHideDailyDDosagedoNotShowDailyDefinedDose_bol: TBooleanField
      FieldName = 'doNotShowDailyDefinedDose_bol'
    end
  end
  object stp_CopyProtocol: TADOQuery
    Connection = conStdReg
    Parameters = <
      item
        Name = 'Protocol_ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @New_ProID uniqueidentifier'
      'DECLARE @Current_ProID uniqueidentifier'
      'SET @New_ProID = NEWID() '
      ''
      'SET @Current_ProID =:Protocol_ID'
      ''
      'INSERT INTO TblStdProtocol'
      '           ( TblStdProtocol.Protocol_ID'
      '           , TblStdProtocol.Name_Str'
      '           , TblStdProtocol.Code_Str'
      '           , TblStdProtocol.Indication_Str'
      '           , TblStdProtocol.IndicationCode_Str'
      '           , TblStdProtocol.ItemPreview_Str'
      '           , TblStdProtocol.GroupCode_Str)'
      '('
      '      SELECT @New_ProID'
      '      , '#39'COPY '#39' + TblStdProtocol.Name_Str'
      '      , '#39'COPY '#39' + TblStdProtocol.Code_Str'
      '      , TblStdProtocol.Indication_Str'
      '      , TblStdProtocol.IndicationCode_Str'
      '      , TblStdProtocol.ItemPreview_Str'
      '      , TblStdProtocol.GroupCode_Str'
      '  FROM TblStdProtocol'
      '  WHERE  TblStdProtocol.Protocol_ID = @Current_ProID'
      ')'
      ''
      'INSERT INTO TblProtocolRegimen'
      '           (ProtocolRegimen_ID'
      '           ,Protocol_ID'
      '           ,StdRegimen_ID'
      '           ,InputOrder_int)'
      '('
      '       SELECT NEWID()'
      '      , @New_ProID'
      '      , TblProtocolRegimen.StdRegimen_ID'
      '      , TblProtocolRegimen.InputOrder_int'
      '  FROM TblProtocolRegimen'
      '  WHERE  TblProtocolRegimen.Protocol_ID =@Current_ProID'
      ' )')
    Left = 656
    Top = 160
  end
  object tblProtocolEditLog: TADOQuery
    Connection = conStdReg
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM tblProtocolEditLog ')
    Left = 792
    Top = 160
    object tblProtocolEditLogProtocolChange_ID: TAutoIncField
      FieldName = 'ProtocolChange_ID'
      ReadOnly = True
    end
    object tblProtocolEditLogDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object tblProtocolEditLogDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 500
    end
    object tblProtocolEditLogProtocol_ID: TGuidField
      FieldName = 'Protocol_ID'
      FixedChar = True
      Size = 38
    end
    object tblProtocolEditLogRegimen_ID: TGuidField
      FieldName = 'Regimen_ID'
      FixedChar = True
      Size = 38
    end
    object tblProtocolEditLogType_str: TWideStringField
      FieldName = 'Type_str'
    end
    object tblProtocolEditLogMode_str: TWideStringField
      FieldName = 'Mode_str'
    end
    object tblProtocolEditLogUser_str: TWideStringField
      FieldName = 'User_str'
      Size = 50
    end
  end
  object qryUserDetail: TADOQuery
    Connection = conStdReg
    Parameters = <
      item
        Name = 'userID'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT UserID, dispenser_ID, prescriber_ID, lastName_str + '#39', '#39' ' +
        '+ firstname_str AS FullName, userNo_int'
      'FROM TblSystem_User'
      'WHERE userName_str =:userID')
    Left = 792
    Top = 232
  end
  object QryInputNumberMax: TADOQuery
    Connection = conStdReg
    Parameters = <
      item
        Name = 'RX_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ISNULL(MAX(InputOrder_int) , 0) AS ItemsMax'
      'FROM tblRxItem '
      'WHERE RX_ID =:RX_ID')
    Left = 784
    Top = 368
  end
end

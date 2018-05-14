object DemanderTypeDM: TDemanderTypeDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 217
  Top = 155
  Height = 564
  Width = 572
  object dsDemandersType: TDataSource
    DataSet = strdprc_DemanderTypes
    Left = 216
    Top = 72
  end
  object ADODemanderTypeConnection: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 17
  end
  object strdprc_DemanderTypes: TADOTable
    Connection = ADODemanderTypeConnection
    TableName = 'strdprc_DemanderTypes'
    Left = 88
    Top = 72
  end
end

object DemanderAuthorityDM: TDemanderAuthorityDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 464
  Top = 254
  Height = 209
  Width = 400
  object dsDemandersAuthority: TDataSource
    DataSet = strdprc_DemandersAuthority
    Left = 232
    Top = 72
  end
  object ADODemanderAuthority: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 89
    Top = 16
  end
  object strdprc_DemandersAuthority: TADOTable
    Connection = ADODemanderAuthority
    CursorType = ctStatic
    TableName = 'strdprc_DemandersAuthority'
    Left = 88
    Top = 72
  end
end

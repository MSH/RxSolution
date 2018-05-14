object DemanderStocktakingDM: TDemanderStocktakingDM
  OldCreateOrder = False
  Left = 472
  Top = 120
  Height = 746
  Width = 1178
  object ADODStocktake: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=rxDev;Data Source=.;Use Procedure ' +
      'for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation I' +
      'D=ZA-SMAHLABA;Use Encryption for Data=False;Tag with column coll' +
      'ation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 16
  end
  object tblDemanderStocktake: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    AfterScroll = tblDemanderStocktakeAfterScroll
    Parameters = <
      item
        Name = 'StartDate'
        DataType = ftDateTime
        Size = 16
        Value = 40576d
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        Size = 16
        Value = 40950d
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM TblDemanderStockTaking'
      'WHERE Created_dat>:StartDate'
      'AND Created_dat<:EndDate'
      'ORDER BY Created_dat')
    Left = 56
    Top = 96
    object tblDemanderStocktakeStockTakeDemander_ID: TAutoIncField
      FieldName = 'StockTakeDemander_ID'
      ReadOnly = True
    end
    object tblDemanderStocktakeSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object tblDemanderStocktakeSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object tblDemanderStocktakeCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object tblDemanderStocktakeDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object tblDemanderStocktakeDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object tblDemanderStocktakeVerifiedBy_str: TStringField
      FieldName = 'VerifiedBy_str'
      Size = 50
    end
    object tblDemanderStocktakeVerifiedDate_Dat: TDateTimeField
      FieldName = 'VerifiedDate_Dat'
    end
    object tblDemanderStocktakeReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object tblDemanderStocktakeRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object tblDemanderStocktakeStockCapturedBy_str: TStringField
      FieldName = 'StockCapturedBy_str'
      Size = 50
    end
    object tblDemanderStocktakeStockCaptured_dat: TDateTimeField
      FieldName = 'StockCaptured_dat'
    end
    object tblDemanderStocktakeTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object tblDemanderStocktakeItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblDemanderStocktakeLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object tblDemanderStocktakeLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object tblDemanderStocktakeLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object tblDemanderStocktakePosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object tblDemanderStocktakePosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object tblDemanderStocktakePostedBy_str: TWideStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object tblDemanderStocktakeCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object tblDemanderStocktakeCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object tblDemanderStocktakeCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object tblDemanderStocktakeCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object tblDemanderStocktakeReferenceNo_str: TWideStringField
      FieldName = 'ReferenceNo_str'
      Size = 30
    end
  end
  object dsDemanderStocktake: TDataSource
    DataSet = tblDemanderStocktake
    Left = 176
    Top = 96
  end
  object qryIsDemanderValid: TADOQuery
    Tag = 1
    Connection = ADODStocktake
    Parameters = <
      item
        Name = '@DemanderID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT Demander_ID FROM tblDemander'
      'WHERE Demander_ID=:@DemanderID)'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 679
    Top = 32
  end
  object dsqryADOSystemWharehouse: TDataSource
    DataSet = stpSystemWharehouse
    Left = 499
    Top = 16
  end
  object stpSystemWharehouse: TADOTable
    Connection = ADODStocktake
    CursorType = ctStatic
    TableName = 'strdprc_SystemWharehouse'
    Left = 360
    Top = 17
    object stpSystemWharehouseSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseSystemAccount_ID: TAutoIncField
      FieldName = 'SystemAccount_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpSystemWharehouseDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpSystemWharehouseAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpSystemWharehouseAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpSystemWharehouseDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object tblSystemUsers: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') + N'#39'(' +
        ' '#39' + ISNULL(tblSystem_User.position_str, N'#39#39') + N'#39' )'#39' AS Descrip' +
        'tion'
      
        'FROM tblSystem_User INNER JOIN tblSystem_User_Access ON tblSyste' +
        'm_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 31) AND (tblSystem_' +
        'User_Access.accessLevel_int >2) AND (tblSystem_User.Active_bol =' +
        ' 1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 360
    Top = 76
  end
  object dsUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 488
    Top = 76
  end
  object tblDemanders: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Demander_ID, Code_str, Name_str, DemanderUnique_ID'
      'FROM tblDemander'
      'WHERE Active_bol = 1'
      'ORDER BY Code_str')
    Left = 360
    Top = 132
    object tblDemandersDemander_ID: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
    object tblDemandersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object tblDemandersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object tblDemandersDemanderUnique_ID: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsDemandersFrom: TDataSource
    DataSet = tblDemanders
    Left = 496
    Top = 132
  end
  object qryDemanderUsers: TADOStoredProc
    Connection = ADODStocktake
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemandersUsers;1'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 20
      end>
    Left = 360
    Top = 250
    object qryDemanderUsersDemanderUser_ID: TAutoIncField
      FieldName = 'DemanderUser_ID'
      ReadOnly = True
    end
    object qryDemanderUsersDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryDemanderUsersTitle_str: TStringField
      FieldName = 'Title_str'
      Size = 15
    end
    object qryDemanderUsersFirstName_str: TStringField
      FieldName = 'FirstName_str'
    end
    object qryDemanderUsersLastName_str: TStringField
      FieldName = 'LastName_str'
      Size = 25
    end
    object qryDemanderUsersInitials_str: TStringField
      FieldName = 'Initials_str'
      Size = 5
    end
    object qryDemanderUsersPosition_str: TStringField
      FieldName = 'Position_str'
    end
    object qryDemanderUsersUserLevel_str: TStringField
      FieldName = 'UserLevel_str'
      Size = 3
    end
    object qryDemanderUsersLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryDemanderUsersPhone_str: TStringField
      FieldName = 'Phone_str'
      Size = 25
    end
    object qryDemanderUsersCellPhone_str: TStringField
      FieldName = 'CellPhone_str'
      Size = 25
    end
    object qryDemanderUsersFax_str: TStringField
      FieldName = 'Fax_str'
      Size = 25
    end
    object qryDemanderUsersEMail_str: TStringField
      FieldName = 'EMail_str'
      Size = 50
    end
    object qryDemanderUsersDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 75
    end
    object qryDemanderUserspersonDescription_str: TStringField
      FieldName = 'personDescription_str'
      ReadOnly = True
      Size = 71
    end
  end
  object dsDemanderUsers: TDataSource
    DataSet = qryDemanderUsers
    Left = 504
    Top = 248
  end
  object AdoAddSingleItem: TADOCommand
    CommandText = 'strdprc_DemanderStocktakeADD_Single'
    CommandType = cmdStoredProc
    Connection = ADODStocktake
    Prepared = True
    Parameters = <
      item
        Name = '@DemanderStocktakeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 200
    Top = 391
  end
  object stpDeleteAllItems: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM TblDemanderStockTakingItems'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 352
    Top = 399
    object AutoIncField2: TAutoIncField
      FieldName = 'DemanderTransferItems_ID'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'DemanderTransfer_ID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object WideStringField3: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object WideStringField4: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object WideStringField5: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object WideStringField6: TWideStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object FloatField1: TFloatField
      FieldName = 'PackCost_mon'
    end
    object FloatField2: TFloatField
      FieldName = 'ExtendedCost_mon'
    end
    object FloatField3: TFloatField
      FieldName = 'SKU_dbl'
    end
    object FloatField4: TFloatField
      FieldName = 'RequestedQty_dbl'
    end
    object IntegerField3: TIntegerField
      FieldName = 'QtyOnHand_int'
      ReadOnly = True
    end
  end
  object stp_AddDemanderItems: TADOStoredProc
    Connection = ADODStocktake
    ProcedureName = 'strdprc_StocktakingADDDemanderItems;1'
    Parameters = <
      item
        Name = '@DemanderStocktakeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 200
    Top = 455
  end
  object qryStocktakeWorker: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    BeforePost = qryStocktakeWorkerBeforePost
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM TblDemanderStockTaking'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 64
    Top = 168
    object qryStocktakeWorkerStockTakeDemander_ID: TAutoIncField
      FieldName = 'StockTakeDemander_ID'
      ReadOnly = True
    end
    object qryStocktakeWorkerSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryStocktakeWorkerSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryStocktakeWorkerCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object qryStocktakeWorkerDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
      OnChange = qryStocktakeWorkerDemander_IDChange
    end
    object qryStocktakeWorkerDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object qryStocktakeWorkerVerifiedBy_str: TStringField
      FieldName = 'VerifiedBy_str'
      Size = 50
    end
    object qryStocktakeWorkerVerifiedDate_Dat: TDateTimeField
      FieldName = 'VerifiedDate_Dat'
    end
    object qryStocktakeWorkerReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryStocktakeWorkerRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryStocktakeWorkerStockCapturedBy_str: TStringField
      FieldName = 'StockCapturedBy_str'
      Size = 50
    end
    object qryStocktakeWorkerStockCaptured_dat: TDateTimeField
      FieldName = 'StockCaptured_dat'
    end
    object qryStocktakeWorkerTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryStocktakeWorkerItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryStocktakeWorkerLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryStocktakeWorkerLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryStocktakeWorkerLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryStocktakeWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryStocktakeWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryStocktakeWorkerPostedBy_str: TWideStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryStocktakeWorkerCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryStocktakeWorkerCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryStocktakeWorkerCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryStocktakeWorkerCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryStocktakeWorkerReferenceNo_str: TWideStringField
      FieldName = 'ReferenceNo_str'
      Size = 30
    end
  end
  object dsStocktakeWorker: TDataSource
    DataSet = qryStocktakeWorker
    Left = 184
    Top = 168
  end
  object qryStocktakeItems: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    BeforePost = qryStocktakeItemsBeforePost
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM TblDemanderStockTakingItems'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 64
    Top = 240
    object qryStocktakeItemsStockTakeDemanderItem_ID: TAutoIncField
      FieldName = 'StockTakeDemanderItem_ID'
      ReadOnly = True
    end
    object qryStocktakeItemsStockTakeDemander_ID: TIntegerField
      FieldName = 'StockTakeDemander_ID'
    end
    object qryStocktakeItemsFullPackQty_int: TIntegerField
      FieldName = 'FullPackQty_int'
    end
    object qryStocktakeItemsBrokenPackQty_dbl: TFloatField
      FieldName = 'BrokenPackQty_dbl'
    end
    object qryStocktakeItemsOldFullPackQty_int: TIntegerField
      FieldName = 'OldFullPackQty_int'
    end
    object qryStocktakeItemsOldBrokenPackQty_dbl: TFloatField
      FieldName = 'OldBrokenPackQty_dbl'
    end
    object qryStocktakeItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryStocktakeItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryStocktakeItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryStocktakeItemsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryStocktakeItemsNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryStocktakeItemsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryStocktakeItemsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryStocktakeItemsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryStocktakeItemsLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryStocktakeItemsLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryStocktakeItemsPackSizeValue_dbl: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object qryStocktakeItemsSKUCost_mon: TBCDField
      FieldName = 'SKUCost_mon'
      Precision = 19
    end
    object qryStocktakeItemsSKUUnit_str: TWideStringField
      FieldName = 'SKUUnit_str'
      Size = 30
    end
  end
  object dsStocktakeItems: TDataSource
    DataSet = qryStocktakeItems
    Left = 184
    Top = 240
  end
  object qryEditHistory: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TblDemanderStockTakingEditHistory'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 64
    Top = 296
    object qryEditHistoryStockTakeDemanderHistory_ID: TAutoIncField
      FieldName = 'StockTakeDemanderHistory_ID'
      ReadOnly = True
    end
    object qryEditHistoryStockTakeDemander_ID: TIntegerField
      FieldName = 'StockTakeDemander_ID'
    end
    object qryEditHistoryDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 255
    end
    object qryEditHistoryUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object qryEditHistoryDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object qryEditHistoryProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryEditHistoryStockTakeDemanderItem_ID: TIntegerField
      FieldName = 'StockTakeDemanderItem_ID'
    end
    object qryEditHistoryType_str: TStringField
      FieldName = 'Type_str'
      Size = 25
    end
    object qryEditHistoryUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
    object qryEditHistoryItem_ID: TIntegerField
      FieldName = 'Item_ID'
    end
  end
  object dsEditHistory: TDataSource
    DataSet = qryEditHistory
    Left = 184
    Top = 296
  end
  object ActionList1: TActionList
    Left = 184
    Top = 25
    object atnSaveAndClose: TAction
      Caption = '&Close'
      OnExecute = atnSaveAndCloseExecute
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsStocktakeItems
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsStocktakeItems
    end
    object atnPostAndClose: TAction
      Caption = 'Post'
      OnExecute = atnPostAndCloseExecute
    end
    object atnDeleteAllItems: TAction
      Caption = 'Dele&te (ALL Products from this list?)'
      ShortCut = 16468
      OnExecute = atnDeleteAllItemsExecute
    end
    object atnAddSingleItem: TAction
      Caption = '&Add (Single Product)'
      ShortCut = 45
      OnExecute = atnAddSingleItemExecute
    end
    object AtnAddDemanderItems: TAction
      Caption = 'Add (Demander A&uthorised Products)'
      ShortCut = 16469
      OnExecute = AtnAddDemanderItemsExecute
    end
    object atnDeleteItem: TAction
      Caption = 'atnDeleteItem'
      OnExecute = atnDeleteItemExecute
    end
    object atnPrintMainReport: TAction
      Caption = 'Print Main Report'
      ShortCut = 16464
      OnExecute = atnPrintMainReportExecute
    end
    object atnPrintDifferences: TAction
      Caption = 'Print &Anomalies'
      ShortCut = 16449
      OnExecute = atnPrintDifferencesExecute
    end
  end
  object qryIsRecordLocked: TADOQuery
    Connection = ADODStocktake
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOut_bol'
      'FROM TblDemanderStockTaking'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 680
    Top = 96
    object qryIsRecordLockedCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
  end
  object stp_Totals: TADOStoredProc
    Connection = ADODStocktake
    ProcedureName = 'strdprc_StockControlDemanderStocktakingItemsTotals;1'
    Parameters = <
      item
        Name = '@StockTakeDemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 1
      end>
    Left = 512
    Top = 320
    object stp_TotalsCountOfItem_ID: TIntegerField
      FieldName = 'CountOfItem_ID'
      ReadOnly = True
    end
    object stp_TotalsSumOfExtendedCost_mon: TBCDField
      FieldName = 'SumOfExtendedCost_mon'
      ReadOnly = True
      Precision = 19
    end
  end
  object qryReportDataMain: TADOStoredProc
    Connection = ADODStocktake
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemanderStocktakingReportMain;1'
    Parameters = <
      item
        Name = '@DemanderStocktakeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 1
      end>
    Left = 200
    Top = 527
    object qryReportDataMainStockTakeDemander_ID: TAutoIncField
      FieldName = 'StockTakeDemander_ID'
      ReadOnly = True
    end
    object qryReportDataMainSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryReportDataMainSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryReportDataMainReferenceNo_str: TWideStringField
      FieldName = 'ReferenceNo_str'
      Size = 30
    end
    object qryReportDataMainCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object qryReportDataMainDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryReportDataMainDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object qryReportDataMainVerifiedBy_str: TStringField
      FieldName = 'VerifiedBy_str'
      Size = 50
    end
    object qryReportDataMainVerifiedDate_Dat: TDateTimeField
      FieldName = 'VerifiedDate_Dat'
    end
    object qryReportDataMainReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryReportDataMainRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReportDataMainStockCapturedBy_str: TStringField
      FieldName = 'StockCapturedBy_str'
      Size = 50
    end
    object qryReportDataMainStockCaptured_dat: TDateTimeField
      FieldName = 'StockCaptured_dat'
    end
    object qryReportDataMainTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReportDataMainItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReportDataMainLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryReportDataMainLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryReportDataMainLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryReportDataMainPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReportDataMainPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReportDataMainPostedBy_str: TWideStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryReportDataMainCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryReportDataMainCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryReportDataMainCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryReportDataMainCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryReportDataMainICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryReportDataMainECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryReportDataMainNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryReportDataMainDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryReportDataMainSKUUnit_str: TWideStringField
      FieldName = 'SKUUnit_str'
      Size = 30
    end
    object qryReportDataMainPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReportDataMainFullPackQty_int: TIntegerField
      FieldName = 'FullPackQty_int'
    end
    object qryReportDataMainBrokenPackQty_dbl: TFloatField
      FieldName = 'BrokenPackQty_dbl'
    end
    object qryReportDataMainOldFullPackQty_int: TIntegerField
      FieldName = 'OldFullPackQty_int'
    end
    object qryReportDataMainOldBrokenPackQty_dbl: TFloatField
      FieldName = 'OldBrokenPackQty_dbl'
    end
    object qryReportDataMainExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReportDataMainFullPackQtyDiff_int: TIntegerField
      FieldName = 'FullPackQtyDiff_int'
      ReadOnly = True
    end
    object qryReportDataMainBrokenPackQtyDiff_int: TFloatField
      FieldName = 'BrokenPackQtyDiff_int'
      ReadOnly = True
    end
    object qryReportDataMainSKUCost_mon: TBCDField
      FieldName = 'SKUCost_mon'
      Precision = 19
    end
    object qryReportDataMainPackSizeValue_dbl: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object qryReportDataMainFullCostDiff_mon: TBCDField
      FieldName = 'FullCostDiff_mon'
      ReadOnly = True
      Precision = 19
    end
    object qryReportDataMainBrokenPackCostDiff_mon: TFloatField
      FieldName = 'BrokenPackCostDiff_mon'
      ReadOnly = True
    end
  end
  object dsReportDataMain: TDataSource
    DataSet = qryReportDataMain
    Left = 328
    Top = 527
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 546
    Top = 533
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReferenceNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 19844
        mmTop = 9790
        mmWidth = 55033
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Created_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3683
        mmLeft = 19844
        mmTop = 21167
        mmWidth = 55033
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Items No.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 21167
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 9790
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 15346
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Captured By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 19844
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'StockCapturedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 111390
        mmTop = 19844
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'StockCaptured_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 111390
        mmTop = 24342
        mmWidth = 26607
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 111390
        mmTop = 15346
        mmWidth = 27390
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ItemsNo_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 19844
        mmTop = 26723
        mmWidth = 42069
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 36248
        mmWidth = 266436
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 37042
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander Stocktaking'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 529
        mmTop = 0
        mmWidth = 68813
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219869
        mmTop = 529
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 24342
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander Details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 91811
        mmTop = 9790
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pack Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 171980
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 44979
        mmTop = 38365
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 3704
        mmTop = 38365
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 22225
        mmTop = 38365
        mmWidth = 17198
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 43127
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 257969
        mmTop = 38365
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 33
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 205582
        mmTop = 529
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 15346
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Reason_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 19844
        mmTop = 15346
        mmWidth = 55033
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 19844
        mmTop = 31485
        mmWidth = 21146
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 31485
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Verified By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 19844
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'VerifiedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 176213
        mmTop = 19844
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'VerifiedDate_Dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176213
        mmTop = 24606
        mmWidth = 23199
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        SaveOrder = 32
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 24606
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 10583
        mmWidth = 13494
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'Posted_bol'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 170657
        mmTop = 9790
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 10583
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Posted_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 192617
        mmTop = 10583
        mmWidth = 17727
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 529
        mmTop = 7673
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pack Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 209550
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SKU Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 224896
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 44715
        mmTop = 0
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 168148
        mmTop = 265
        mmWidth = 18119
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4000
        mmLeft = 22225
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BrokenPackQty_dbl'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 226484
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 241660
        mmTop = 265
        mmWidth = 23982
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FullPackQty_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 211138
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel68: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 529
        mmTop = 1852
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReferenceNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 1852
        mmWidth = 41540
        BandType = 8
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 266436
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 233893
        mmTop = 1588
        mmWidth = 31750
        BandType = 8
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 211138
        mmTop = 6615
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 255853
        mmTop = 9525
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 255588
        mmTop = 12965
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 3.00'
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
    Left = 792
    Top = 32
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReportDataMain
    UserName = 'DBPipeline1'
    Left = 432
    Top = 527
  end
  object stp_DSMarkComplete: TADOStoredProc
    Connection = ADODStocktake
    ProcedureName = 'strdprc_DStocktake_MarkComplete;1'
    Parameters = <
      item
        Name = '@StocktakeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@UserName'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end>
    Left = 672
    Top = 184
  end
  object qryProductPack: TADOQuery
    Connection = ADODStocktake
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT productPackSize_ID, ProductCode_ID, ISNULL(PackSizeValue_' +
        'dbl, 1) AS PackSizeValue_dbl'
      'FROM tblProductPackSize'
      'WHERE ProductCode_ID=:ProductCodeID')
    Left = 352
    Top = 312
  end
  object stpStockDemanderAudit: TADOStoredProc
    Connection = ADODStocktake
    ProcedureName = 'strdprc_AuditAPPENDDemanderStock;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DemanderFromUniqueID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Quantity'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@QtyUnits'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Reference'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = '@User'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VoucherNo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 100
        Value = Null
      end
      item
        Name = '@itemID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SystemStoreID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@SupplierID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PackValueCost'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 512
    Top = 375
  end
  object ppReportAnomalies: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 546
    Top = 588
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReferenceNo_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 19844
        mmTop = 9790
        mmWidth = 55033
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Created_dat'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 19844
        mmTop = 21167
        mmWidth = 55033
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Items No.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 21167
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 9790
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 15346
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Captured By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 19844
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'StockCapturedBy_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 111390
        mmTop = 19844
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'StockCaptured_dat'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 111390
        mmTop = 24342
        mmWidth = 26607
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 111390
        mmTop = 15346
        mmWidth = 27390
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 36248
        mmWidth = 266436
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 37042
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander Stocktaking - Anomalies Report'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 529
        mmTop = 0
        mmWidth = 128545
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219869
        mmTop = 529
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 24342
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander Details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 91811
        mmTop = 9790
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 44979
        mmTop = 42863
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 3704
        mmTop = 42863
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 22225
        mmTop = 42863
        mmWidth = 17198
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 47625
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 257969
        mmTop = 42863
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 33
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 202407
        mmTop = 529
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 15346
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Reason_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 19844
        mmTop = 15346
        mmWidth = 55033
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalCost_mon'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 19844
        mmTop = 31485
        mmWidth = 21146
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 31485
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Verified By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 19844
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'VerifiedBy_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 176213
        mmTop = 19844
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'VerifiedDate_Dat'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'd-mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 176213
        mmTop = 24606
        mmWidth = 23199
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        SaveOrder = 32
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 24606
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 10583
        mmWidth = 13494
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'Posted_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 170657
        mmTop = 9790
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 10583
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Posted_dat'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 192617
        mmTop = 10583
        mmWidth = 17727
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 529
        mmTop = 7673
        mmWidth = 266436
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'New Pack Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 8996
        mmLeft = 177536
        mmTop = 38365
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'New SKU Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 9260
        mmLeft = 224896
        mmTop = 38100
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Old Pack Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 8731
        mmLeft = 164042
        mmTop = 38365
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Old SKU Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 8731
        mmLeft = 209286
        mmTop = 38365
        mmWidth = 12965
        BandType = 0
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        SaveOrder = 34
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        LookAhead = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 26723
        mmWidth = 55033
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 44715
        mmTop = 0
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4000
        mmLeft = 22225
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BrokenPackQty_dbl'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 226484
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 529
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 241395
        mmTop = 265
        mmWidth = 23982
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FullPackQty_int'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 179123
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OldFullPackQty_int'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OldBrokenPackQty_dbl'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 209286
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 529
        mmTop = 1852
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText32: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ReferenceNo_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 1852
        mmWidth = 41540
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 266436
        BandType = 8
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 233893
        mmTop = 1588
        mmWidth = 31750
        BandType = 8
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 210609
        mmTop = 6615
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 255323
        mmTop = 9525
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 255059
        mmTop = 12965
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryLastItemPrice: TADOQuery
    Connection = ADODStocktake
    Parameters = <>
    Left = 344
    Top = 472
  end
  object UpdatePriceToLastIssue: TADOQuery
    Connection = ADODStocktake
    Parameters = <>
    Left = 672
    Top = 440
  end
  object stp_LastItemPrice: TADOStoredProc
    Connection = ADODStocktake
    ProcedureName = 'strdprc_UpdateLastPriceDemStockItems;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 464
    Top = 472
    object stp_LastItemPriceLastPrice: TBCDField
      FieldName = 'LastPrice'
      ReadOnly = True
      Precision = 22
      Size = 5
    end
  end
  object checkUnPosted_Req: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblRequisition.*'
      'FROM tblRequisition'
      'WHERE (tblRequisition.Activated_bol = 0)'
      'ORDER BY Requisition_dat DESC')
    Left = 672
    Top = 240
    object checkUnPosted_ReqActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object checkUnPosted_ReqDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object checkUnPosted_ReqRequisition_ID: TAutoIncField
      FieldName = 'Requisition_ID'
      ReadOnly = True
    end
    object checkUnPosted_ReqDemander_Str: TStringField
      FieldName = 'Demander_Str'
      Size = 100
    end
    object checkUnPosted_ReqSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object checkUnPosted_ReqSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object checkUnPosted_ReqRequisition_str: TStringField
      FieldName = 'Requisition_str'
      Size = 50
    end
    object checkUnPosted_ReqRequisition_dat: TDateTimeField
      FieldName = 'Requisition_dat'
    end
    object checkUnPosted_ReqVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 50
    end
    object checkUnPosted_ReqOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object checkUnPosted_ReqOrderedBy_str: TStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object checkUnPosted_ReqAuthorizedBy_str: TStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object checkUnPosted_ReqAuthorized_Dat: TDateTimeField
      FieldName = 'Authorized_Dat'
    end
    object checkUnPosted_ReqCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object checkUnPosted_ReqTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object checkUnPosted_ReqItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object checkUnPosted_ReqRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object checkUnPosted_ReqActivatedBy_str: TStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object checkUnPosted_ReqActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object checkUnPosted_ReqIssuedBy_str: TStringField
      FieldName = 'IssuedBy_str'
      Size = 50
    end
    object checkUnPosted_ReqIssued_Dat: TDateTimeField
      FieldName = 'Issued_Dat'
    end
    object checkUnPosted_ReqReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object checkUnPosted_ReqReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object checkUnPosted_ReqLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object checkUnPosted_ReqCode_str: TStringField
      FieldName = 'Code_str'
      Size = 12
    end
    object checkUnPosted_ReqLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object checkUnPosted_ReqLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object checkUnPosted_ReqCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object checkUnPosted_ReqItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object checkUnPosted_ReqPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object checkUnPosted_ReqCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object checkUnPosted_ReqCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object checkUnPosted_ReqCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object checkUnPosted_ReqCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object checkUnPosted_ReqSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object checkUnPosted_ReqSupplier_Str: TWideStringField
      FieldName = 'Supplier_Str'
      Size = 30
    end
  end
  object qryDemanderItems: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StockTakeDemander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM TblDemanderStockTakingItems'
      'WHERE StockTakeDemander_ID=:StockTakeDemander_ID')
    Left = 64
    Top = 360
    object AutoIncField1: TAutoIncField
      FieldName = 'StockTakeDemanderItem_ID'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'StockTakeDemander_ID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FullPackQty_int'
    end
    object FloatField5: TFloatField
      FieldName = 'BrokenPackQty_dbl'
    end
    object IntegerField6: TIntegerField
      FieldName = 'OldFullPackQty_int'
    end
    object FloatField6: TFloatField
      FieldName = 'OldBrokenPackQty_dbl'
    end
    object BCDField1: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object BCDField2: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object IntegerField7: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object WideStringField2: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object WideStringField7: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object StringField1: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object IntegerField8: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object WideStringField8: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object FloatField7: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object BCDField3: TBCDField
      FieldName = 'SKUCost_mon'
      Precision = 19
    end
    object WideStringField9: TWideStringField
      FieldName = 'SKUUnit_str'
      Size = 30
    end
  end
  object checkUnPostedTransfers: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblDemanderTransfer.*'
      'FROM tblDemanderTransfer'
      
        'WHERE (tblDemanderTransfer.Posted_bol IS NULL OR tblDemanderTran' +
        'sfer.Posted_bol = 0)'
      'ORDER BY Created_dat DESC')
    Left = 680
    Top = 366
    object checkUnPostedTransfersDemanderTransfer_ID: TAutoIncField
      FieldName = 'DemanderTransfer_ID'
      ReadOnly = True
    end
    object checkUnPostedTransfersCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object checkUnPostedTransfersDemanderTransferRefNo_str: TWideStringField
      FieldName = 'DemanderTransferRefNo_str'
      Size = 50
    end
    object checkUnPostedTransfersDemanderFrom_ID: TIntegerField
      FieldName = 'DemanderFrom_ID'
    end
    object checkUnPostedTransfersDemanderTo_ID: TIntegerField
      FieldName = 'DemanderTo_ID'
    end
    object checkUnPostedTransfersLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object checkUnPostedTransfersLastUpdatedBy_str: TWideStringField
      FieldName = 'LastUpdatedBy_str'
      Size = 50
    end
    object checkUnPostedTransfersLastEditedBy_ID: TIntegerField
      FieldName = 'LastEditedBy_ID'
    end
    object checkUnPostedTransfersAccount_ID: TIntegerField
      FieldName = 'Account_ID'
    end
    object checkUnPostedTransfersAccountName_str: TWideStringField
      FieldName = 'AccountName_str'
      Size = 50
    end
    object checkUnPostedTransfersReference_str: TWideStringField
      FieldName = 'Reference_str'
      Size = 50
    end
    object checkUnPostedTransfersRequestedDate_dat: TDateTimeField
      FieldName = 'RequestedDate_dat'
    end
    object checkUnPostedTransfersPostedDate_dat: TDateTimeField
      FieldName = 'PostedDate_dat'
    end
    object checkUnPostedTransfersPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object checkUnPostedTransfersAuthorisedBy_str: TWideStringField
      FieldName = 'AuthorisedBy_str'
      Size = 50
    end
    object checkUnPostedTransfersRequestedBy_str: TWideStringField
      FieldName = 'RequestedBy_str'
      Size = 50
    end
    object checkUnPostedTransfersIssuedBy_str: TWideStringField
      FieldName = 'IssuedBy_str'
      Size = 50
    end
    object checkUnPostedTransfersIssuedDate_dat: TDateTimeField
      FieldName = 'IssuedDate_dat'
    end
    object checkUnPostedTransfersDemanderFrom_str: TWideStringField
      FieldName = 'DemanderFrom_str'
      Size = 50
    end
    object checkUnPostedTransfersDemanderTo_str: TWideStringField
      FieldName = 'DemanderTo_str'
      Size = 50
    end
    object checkUnPostedTransfersAuthorisedDate_dat: TDateTimeField
      FieldName = 'AuthorisedDate_dat'
    end
    object checkUnPostedTransfersCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object checkUnPostedTransfersCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 30
    end
    object checkUnPostedTransfersCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object checkUnPostedTransfersCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object checkUnPostedTransfersSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object checkUnPostedTransfersActive_bol: TBooleanField
      FieldName = 'Active_bol'
    end
    object checkUnPostedTransfersRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object checkUnPostedTransfersItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object checkUnPostedTransfersTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object checkUnPostedTransfersUseSKUOnly_bol: TBooleanField
      FieldName = 'UseSKUOnly_bol'
    end
  end
  object checkUnpostedCredits: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblCredit.*'
      'FROM tblCredit'
      'WHERE (tblCredit.Posted_bol = 0 OR tblCredit.Posted_bol IS NULL)'
      'ORDER BY Credit_dat DESC')
    Left = 672
    Top = 296
    object checkUnpostedCreditsPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object checkUnpostedCreditsDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object checkUnpostedCreditsCredit_ID: TAutoIncField
      FieldName = 'Credit_ID'
      ReadOnly = True
    end
    object checkUnpostedCreditsDemander_Str: TStringField
      FieldName = 'Demander_Str'
      Size = 100
    end
    object checkUnpostedCreditsSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object checkUnpostedCreditsSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object checkUnpostedCreditsCredit_str: TStringField
      FieldName = 'Credit_str'
      Size = 50
    end
    object checkUnpostedCreditsCredit_dat: TDateTimeField
      FieldName = 'Credit_dat'
    end
    object checkUnpostedCreditsVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 50
    end
    object checkUnpostedCreditsAuthorizedBy_str: TStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object checkUnpostedCreditsAuthorized_Dat: TDateTimeField
      FieldName = 'Authorized_Dat'
    end
    object checkUnpostedCreditsTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object checkUnpostedCreditsItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object checkUnpostedCreditsRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object checkUnpostedCreditsPostedBy_str: TStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object checkUnpostedCreditsPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object checkUnpostedCreditsReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object checkUnpostedCreditsReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object checkUnpostedCreditsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object checkUnpostedCreditsUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
    object checkUnpostedCreditsUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object checkUnpostedCreditsPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object checkUnpostedCreditsCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object checkUnpostedCreditsCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object checkUnpostedCreditsCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object checkUnpostedCreditsCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object checkUnpostedCreditsReturnedBy_str: TWideStringField
      FieldName = 'ReturnedBy_str'
      Size = 50
    end
    object checkUnpostedCreditsReturnedBy_id: TIntegerField
      FieldName = 'ReturnedBy_id'
    end
    object checkUnpostedCreditsReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 200
    end
    object checkUnpostedCreditsRequisitionRef_id: TIntegerField
      FieldName = 'RequisitionRef_id'
    end
    object checkUnpostedCreditsRequisitionRef_str: TWideStringField
      FieldName = 'RequisitionRef_str'
    end
    object checkUnpostedCreditsReturned_dat: TDateTimeField
      FieldName = 'Returned_dat'
    end
    object checkUnpostedCreditsAccount_ID: TIntegerField
      FieldName = 'Account_ID'
    end
    object checkUnpostedCreditsAccountName_str: TWideStringField
      FieldName = 'AccountName_str'
    end
  end
  object qryReportAnomalies: TADOStoredProc
    Connection = ADODStocktake
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemanderStocktakingReportAnomalies;1'
    Parameters = <
      item
        Name = '@DemanderStocktakeID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 1
      end>
    Left = 204
    Top = 582
    object qryReportAnomaliesStockTakeDemander_ID: TAutoIncField
      FieldName = 'StockTakeDemander_ID'
      ReadOnly = True
    end
    object qryReportAnomaliesSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryReportAnomaliesSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryReportAnomaliesReferenceNo_str: TWideStringField
      FieldName = 'ReferenceNo_str'
      Size = 30
    end
    object qryReportAnomaliesCreated_dat: TDateTimeField
      FieldName = 'Created_dat'
    end
    object qryReportAnomaliesDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryReportAnomaliesDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object qryReportAnomaliesVerifiedBy_str: TStringField
      FieldName = 'VerifiedBy_str'
      Size = 50
    end
    object qryReportAnomaliesVerifiedDate_Dat: TDateTimeField
      FieldName = 'VerifiedDate_Dat'
    end
    object qryReportAnomaliesReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 250
    end
    object qryReportAnomaliesRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryReportAnomaliesStockCapturedBy_str: TStringField
      FieldName = 'StockCapturedBy_str'
      Size = 50
    end
    object qryReportAnomaliesStockCaptured_dat: TDateTimeField
      FieldName = 'StockCaptured_dat'
    end
    object qryReportAnomaliesTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryReportAnomaliesItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryReportAnomaliesLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryReportAnomaliesLastUpdateBy_str: TStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object qryReportAnomaliesLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object qryReportAnomaliesPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryReportAnomaliesPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryReportAnomaliesPostedBy_str: TWideStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryReportAnomaliesCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryReportAnomaliesCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryReportAnomaliesCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryReportAnomaliesCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryReportAnomaliesICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryReportAnomaliesECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryReportAnomaliesNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryReportAnomaliesDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryReportAnomaliesSKUUnit_str: TWideStringField
      FieldName = 'SKUUnit_str'
      Size = 30
    end
    object qryReportAnomaliesPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryReportAnomaliesSKUCost_mon: TBCDField
      FieldName = 'SKUCost_mon'
      Precision = 19
    end
    object qryReportAnomaliesPackSizeValue_dbl: TFloatField
      FieldName = 'PackSizeValue_dbl'
    end
    object qryReportAnomaliesFullPackQty_int: TIntegerField
      FieldName = 'FullPackQty_int'
    end
    object qryReportAnomaliesBrokenPackQty_dbl: TFloatField
      FieldName = 'BrokenPackQty_dbl'
    end
    object qryReportAnomaliesOldFullPackQty_int: TIntegerField
      FieldName = 'OldFullPackQty_int'
    end
    object qryReportAnomaliesOldBrokenPackQty_dbl: TFloatField
      FieldName = 'OldBrokenPackQty_dbl'
    end
    object qryReportAnomaliesExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryReportAnomaliesFullPackQtyDiff_int: TIntegerField
      FieldName = 'FullPackQtyDiff_int'
      ReadOnly = True
    end
    object qryReportAnomaliesBrokenPackQtyDiff_int: TFloatField
      FieldName = 'BrokenPackQtyDiff_int'
      ReadOnly = True
    end
    object qryReportAnomaliesFullCostDiff_mon: TBCDField
      FieldName = 'FullCostDiff_mon'
      ReadOnly = True
      Precision = 19
    end
    object qryReportAnomaliesBrokenPackCostDiff_mon: TFloatField
      FieldName = 'BrokenPackCostDiff_mon'
      ReadOnly = True
    end
  end
  object dsReportAnomalies: TDataSource
    DataSet = qryReportAnomalies
    Left = 336
    Top = 582
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsReportAnomalies
    UserName = 'DBPipeline2'
    Left = 432
    Top = 582
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'StockTakeDemander_ID'
      FieldName = 'StockTakeDemander_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'SystemStore_ID'
      FieldName = 'SystemStore_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'SystemStore_str'
      FieldName = 'SystemStore_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'ReferenceNo_str'
      FieldName = 'ReferenceNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'Created_dat'
      FieldName = 'Created_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'Demander_ID'
      FieldName = 'Demander_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'DemanderName_str'
      FieldName = 'DemanderName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'VerifiedBy_str'
      FieldName = 'VerifiedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'VerifiedDate_Dat'
      FieldName = 'VerifiedDate_Dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'Reason_str'
      FieldName = 'Reason_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'Remarks_mem'
      FieldName = 'Remarks_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'StockCapturedBy_str'
      FieldName = 'StockCapturedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'StockCaptured_dat'
      FieldName = 'StockCaptured_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'TotalCost_mon'
      FieldName = 'TotalCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'ItemsNo_int'
      FieldName = 'ItemsNo_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'LastUpdate_dat'
      FieldName = 'LastUpdate_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'LastUpdateBy_str'
      FieldName = 'LastUpdateBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'LastUpdateBy_dbl'
      FieldName = 'LastUpdateBy_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'Posted_bol'
      FieldName = 'Posted_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField20: TppField
      FieldAlias = 'Posted_dat'
      FieldName = 'Posted_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField21: TppField
      FieldAlias = 'PostedBy_str'
      FieldName = 'PostedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField22: TppField
      FieldAlias = 'CheckedOutBy_ID'
      FieldName = 'CheckedOutBy_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField23: TppField
      FieldAlias = 'CheckedOutName_str'
      FieldName = 'CheckedOutName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField24: TppField
      FieldAlias = 'CheckedOut_bol'
      FieldName = 'CheckedOut_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField25: TppField
      FieldAlias = 'CheckedOut_dat'
      FieldName = 'CheckedOut_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField26: TppField
      FieldAlias = 'ICN_str'
      FieldName = 'ICN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField27: TppField
      FieldAlias = 'ECN_str'
      FieldName = 'ECN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField28: TppField
      FieldAlias = 'NSN_str'
      FieldName = 'NSN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField29: TppField
      FieldAlias = 'Description_str'
      FieldName = 'Description_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField30: TppField
      FieldAlias = 'SKUUnit_str'
      FieldName = 'SKUUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField31: TppField
      FieldAlias = 'PackCost_mon'
      FieldName = 'PackCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField32: TppField
      FieldAlias = 'FullPackQty_int'
      FieldName = 'FullPackQty_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField33: TppField
      FieldAlias = 'BrokenPackQty_dbl'
      FieldName = 'BrokenPackQty_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField34: TppField
      FieldAlias = 'OldFullPackQty_int'
      FieldName = 'OldFullPackQty_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField35: TppField
      FieldAlias = 'OldBrokenPackQty_dbl'
      FieldName = 'OldBrokenPackQty_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField36: TppField
      FieldAlias = 'ExtendedCost_mon'
      FieldName = 'ExtendedCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField37: TppField
      FieldAlias = 'FullPackQtyDiff_int'
      FieldName = 'FullPackQtyDiff_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField38: TppField
      FieldAlias = 'BrokenPackQtyDiff_int'
      FieldName = 'BrokenPackQtyDiff_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField39: TppField
      FieldAlias = 'SKUCost_mon'
      FieldName = 'SKUCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField40: TppField
      FieldAlias = 'PackSizeValue_dbl'
      FieldName = 'PackSizeValue_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField41: TppField
      FieldAlias = 'FullCostDiff_mon'
      FieldName = 'FullCostDiff_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField42: TppField
      FieldAlias = 'BrokenPackCostDiff_mon'
      FieldName = 'BrokenPackCostDiff_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipelineRequisitions: TppDBPipeline
    DataSource = dsReqs
    UserName = 'DBPipelineRequisitions'
    Left = 889
    Top = 240
  end
  object ppDBPipelineCredits: TppDBPipeline
    DataSource = dsCredits
    UserName = 'DBPipelineCredits'
    Left = 889
    Top = 304
  end
  object ppDBPipelineTransfers: TppDBPipeline
    DataSource = dsTransfers
    UserName = 'DBPipelineTransfers'
    Left = 889
    Top = 366
  end
  object dsReqs: TDataSource
    DataSet = checkUnPosted_Req
    Left = 776
    Top = 240
  end
  object dsCredits: TDataSource
    DataSet = checkUnpostedCredits
    Left = 776
    Top = 301
  end
  object dsTransfers: TDataSource
    DataSet = checkUnPostedTransfers
    Left = 776
    Top = 366
  end
  object ppReportRequisitions: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineRequisitions
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1016
    Top = 232
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineRequisitions'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 0
        mmLeft = 0
        mmTop = 12700
        mmWidth = 258498
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'The following are unposted Requisitions '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 2381
        mmTop = 3440
        mmWidth = 124090
        BandType = 0
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable18'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 7408
        mmWidth = 34660
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2381
        mmTop = 19844
        mmWidth = 194205
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference Number:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 15610
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 11377
        mmTop = 15610
        mmWidth = 6287
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label1301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 101600
        mmTop = 15610
        mmWidth = 14182
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'requisition_str'
        DataPipeline = ppDBPipelineRequisitions
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineRequisitions'
        mmHeight = 4255
        mmLeft = 43656
        mmTop = 0
        mmWidth = 33359
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Requisition_dat'
        DataPipeline = ppDBPipelineRequisitions
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineRequisitions'
        mmHeight = 4255
        mmLeft = 11377
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Demander_Str'
        DataPipeline = ppDBPipelineRequisitions
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineRequisitions'
        mmHeight = 4255
        mmLeft = 101600
        mmTop = 0
        mmWidth = 75142
        BandType = 4
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Requisition_ID'
        DataPipeline = ppDBPipelineRequisitions
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineRequisitions'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2381
        mmTop = 265
        mmWidth = 194206
        BandType = 8
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 139436
        mmTop = 1852
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 184150
        mmTop = 4763
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 183886
        mmTop = 8202
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppReportCredits: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineCredits
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1016
    Top = 304
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineCredits'
    object ppHeaderBand4: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 0
        mmLeft = 0
        mmTop = 12700
        mmWidth = 258498
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'The following are unposted Returns From Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 2381
        mmTop = 3440
        mmWidth = 161661
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable18'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 166159
        mmTop = 7408
        mmWidth = 28046
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2381
        mmTop = 19844
        mmWidth = 194205
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference Number:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 15610
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 11377
        mmTop = 15610
        mmWidth = 6287
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label1301'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 101600
        mmTop = 15610
        mmWidth = 14182
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText35: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Credit_str'
        DataPipeline = ppDBPipelineCredits
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCredits'
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 0
        mmWidth = 56886
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Credit_dat'
        DataPipeline = ppDBPipelineCredits
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCredits'
        mmHeight = 4255
        mmLeft = 11377
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Demander_Str'
        DataPipeline = ppDBPipelineCredits
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCredits'
        mmHeight = 4255
        mmLeft = 101600
        mmTop = 0
        mmWidth = 75142
        BandType = 4
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Credit_ID'
        DataPipeline = ppDBPipelineCredits
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineCredits'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2381
        mmTop = 265
        mmWidth = 194206
        BandType = 8
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 139436
        mmTop = 2117
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 184150
        mmTop = 5027
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 183886
        mmTop = 8467
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppReportTransfers: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineTransfers
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1016
    Top = 368
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineTransfers'
    object ppHeaderBand5: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine13: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 0
        mmLeft = 0
        mmTop = 12700
        mmWidth = 258498
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'The following are unposted Demander Transfers'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 2381
        mmTop = 3440
        mmWidth = 149225
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable18'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 7408
        mmWidth = 28046
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2381
        mmTop = 19844
        mmWidth = 194205
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference Number:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 15610
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 11377
        mmTop = 15610
        mmWidth = 6287
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label1301'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 101600
        mmTop = 15610
        mmWidth = 14182
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderTransferRefNo_str'
        DataPipeline = ppDBPipelineTransfers
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineTransfers'
        mmHeight = 4255
        mmLeft = 43656
        mmTop = 0
        mmWidth = 45508
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Created_dat'
        DataPipeline = ppDBPipelineTransfers
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineTransfers'
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderFrom_str'
        DataPipeline = ppDBPipelineTransfers
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineTransfers'
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 0
        mmWidth = 90752
        BandType = 4
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Requisition_ID'
        DataPipeline = ppDBPipelineTransfers
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineTransfers'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine16: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2381
        mmTop = 265
        mmWidth = 194206
        BandType = 8
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 137584
        mmTop = 1588
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 182298
        mmTop = 4498
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 182034
        mmTop = 7938
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object tblDemanderNames: TADOQuery
    Connection = ADODStocktake
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Demander_ID, Code_str, Name_str, DemanderUnique_ID'
      'FROM tblDemander'
      'WHERE Active_bol = 1'
      'ORDER BY Name_str')
    Left = 360
    Top = 192
    object AutoIncField3: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
    object WideStringField10: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object WideStringField11: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object GuidField1: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsDemandersNames: TDataSource
    DataSet = tblDemanderNames
    Left = 496
    Top = 192
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 784
    Top = 152
  end
  object qryDemanderName: TADOQuery
    Connection = ADODStocktake
    Parameters = <
      item
        Name = 'Demander_ID'
        DataType = ftString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      'SELECT Name_str'
      'FROM tblDemander'
      'WHERE Demander_ID=:Demander_ID')
    Left = 568
    Top = 80
  end
end

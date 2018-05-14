object OrderDM: TOrderDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 318
  Top = 73
  Height = 915
  Width = 1068
  object ADOOrdersConnection: TADOConnection
    CommandTimeout = 320
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=rxbarcoding;Data Source=.\sqlexpre' +
      'ss;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=AMD-XP2K-DVD;Use Encryption for Data=False;Ta' +
      'g with column collation when possible=False'
    ConnectionTimeout = 60
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 23
  end
  object dstblOrderList: TDataSource
    DataSet = stpOrderList
    Left = 288
    Top = 120
  end
  object dstblOrderListReport: TDataSource
    DataSet = stpOrderListReport
    Left = 576
    Top = 112
  end
  object dstblOrderListReportOutstanding: TDataSource
    DataSet = stpOrderListReportOutstanding
    Left = 576
    Top = 160
  end
  object tblGeneralProductStockDetails: TADOTable
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    TableName = 'strdprc_GeneralProductStockDetails'
    Left = 80
    Top = 320
  end
  object stpStockControlOrder: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    BeforePost = stpStockControlOrderBeforePost
    OnNewRecord = stpStockControlOrderNewRecord
    ProcedureName = 'strdprc_StockControlOrder'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 376
    object stpStockControlOrderOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object stpStockControlOrderSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object stpStockControlOrderSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
      OnChange = stpStockControlOrderSystemStore_IDChange
    end
    object stpStockControlOrderSupplier_Str: TWideStringField
      FieldName = 'Supplier_Str'
      Size = 100
    end
    object stpStockControlOrderSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
      OnChange = stpStockControlOrderSupplier_IDChange
    end
    object stpStockControlOrderOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpStockControlOrderOrder_dat: TDateTimeField
      FieldName = 'Order_dat'
    end
    object stpStockControlOrderVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpStockControlOrderType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpStockControlOrderItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpStockControlOrderCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpStockControlOrderEstimatedCost_mon: TBCDField
      FieldName = 'EstimatedCost_mon'
      Precision = 19
    end
    object stpStockControlOrderItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpStockControlOrderActivatedBy_str: TWideStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpStockControlOrderActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpStockControlOrderActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpStockControlOrderOrderedBy_str: TWideStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object stpStockControlOrderOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpStockControlOrderAuthorizedBy_str: TWideStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object stpStockControlOrderAuthorized_dat: TDateTimeField
      FieldName = 'Authorized_dat'
    end
    object stpStockControlOrderRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object stpStockControlOrderLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpStockControlOrderSupplierCode_str: TWideStringField
      FieldName = 'SupplierCode_str'
      Size = 14
    end
    object stpStockControlOrderChargeCode_Str: TWideStringField
      FieldName = 'ChargeCode_Str'
      Size = 14
    end
    object stpStockControlOrderLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object stpStockControlOrderLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object stpStockControlOrderItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object stpStockControlOrderCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object stpStockControlOrderCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object stpStockControlOrderCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object stpStockControlOrderCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object stpStockControlOrderExpDelivery_dat: TDateTimeField
      FieldName = 'ExpDelivery_dat'
    end
    object stpStockControlOrderDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
      OnChange = stpStockControlOrderDemander_IDChange
    end
    object stpStockControlOrderDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpStockControlOrderDemanderAccount_str: TWideStringField
      FieldName = 'DemanderAccount_str'
      Size = 30
    end
  end
  object stpStockControlOrderItems: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    AfterOpen = stpStockControlOrderItemsAfterOpen
    BeforePost = stpStockControlOrderItemsBeforePost
    AfterPost = stpStockControlOrderItemsAfterPost
    AfterDelete = stpStockControlOrderItemsAfterDelete
    OnNewRecord = stpStockControlOrderItemsNewRecord
    OnPostError = stpStockControlOrderItemsPostError
    ProcedureName = 'strdprc_StockControlOrderItems'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 424
    object stpStockControlOrderItemsOrderItemsNo_ID: TAutoIncField
      FieldName = 'OrderItemsNo_ID'
      ReadOnly = True
    end
    object stpStockControlOrderItemsOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpStockControlOrderItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpStockControlOrderItemsQtyCalculated_int: TIntegerField
      FieldName = 'QtyCalculated_int'
    end
    object stpStockControlOrderItemsTradeName_str: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object stpStockControlOrderItemsQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpStockControlOrderItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object stpStockControlOrderItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object stpStockControlOrderItemsQtyReceivedCum_int: TIntegerField
      FieldName = 'QtyReceivedCum_int'
    end
    object stpStockControlOrderItemsCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object stpStockControlOrderItemsBarCode_str: TStringField
      FieldName = 'BarCode_str'
      Size = 25
    end
    object stpStockControlOrderItemsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpStockControlOrderItemsLastUpdatedBy_int: TIntegerField
      FieldName = 'LastUpdatedBy_int'
    end
    object stpStockControlOrderItemsLastUpdatedBy_str: TWideStringField
      FieldName = 'LastUpdatedBy_str'
      Size = 50
    end
    object stpStockControlOrderItemsReceiptNo_Str: TWideStringField
      FieldName = 'ReceiptNo_Str'
      Size = 25
    end
    object stpStockControlOrderItemsOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 14
    end
    object stpStockControlOrderItemsProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpStockControlOrderItemsNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object stpStockControlOrderItemsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object stpStockControlOrderItemsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object stpStockControlOrderItemsChargeCode_str: TWideStringField
      FieldName = 'ChargeCode_str'
      Size = 25
    end
    object stpStockControlOrderItemsLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object stpStockControlOrderItemsLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object stpStockControlOrderItemsDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object stpStockControlOrderItemsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object stpStockControlOrderItemsMinStockSet_int: TIntegerField
      FieldName = 'MinStockSet_int'
    end
    object stpStockControlOrderItemsMaxStockSet_int: TIntegerField
      FieldName = 'MaxStockSet_int'
    end
    object stpStockControlOrderItemsOnStock: TIntegerField
      DefaultExpression = '0'
      FieldKind = fkLookup
      FieldName = 'OnStock'
      LookupDataSet = qryTotalQtyonHand
      LookupKeyFields = 'ProductCode_ID'
      LookupResultField = 'QtyAvailable'
      KeyFields = 'ProductCode_ID'
      Lookup = True
    end
    object stpStockControlOrderItemsOnOrder: TIntegerField
      FieldKind = fkLookup
      FieldName = 'OnOrder'
      LookupDataSet = qryOnOrder
      LookupKeyFields = 'ProductCode_ID'
      LookupResultField = 'QtyOnOrder_int'
      KeyFields = 'productCode_ID'
      Lookup = True
    end
    object stpStockControlOrderItemsDemanderQtyOnHand_int: TIntegerField
      FieldName = 'DemanderQtyOnHand_int'
    end
  end
  object stpStockControlOrderItemsTotals: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlOrderItemsTotals'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 472
    object stpStockControlOrderItemsTotalsCountOfOrderItemsNo_ID: TIntegerField
      FieldName = 'CountOfOrderItemsNo_ID'
      ReadOnly = True
    end
    object stpStockControlOrderItemsTotalsSumOfExtendedCost_mon: TBCDField
      FieldName = 'SumOfExtendedCost_mon'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsstpStockControlOrder: TDataSource
    DataSet = stpStockControlOrder
    Left = 304
    Top = 376
  end
  object dsstpStockControlOrderItems: TDataSource
    DataSet = stpStockControlOrderItems
    Left = 304
    Top = 424
  end
  object dsstpStockControlOrderItemsTotals: TDataSource
    DataSet = stpStockControlOrderItemsTotals
    Left = 304
    Top = 472
  end
  object stpOrderEditHistory: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderEditHistory'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 520
    object stpOrderEditHistoryOrderHistory_ID: TAutoIncField
      FieldName = 'OrderHistory_ID'
      ReadOnly = True
    end
    object stpOrderEditHistoryOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpOrderEditHistoryDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 255
    end
    object stpOrderEditHistoryUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object stpOrderEditHistoryDate_dat: TDateTimeField
      FieldName = 'Date_dat'
    end
    object stpOrderEditHistoryProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpOrderEditHistoryOrderItem_ID: TIntegerField
      FieldName = 'OrderItem_ID'
    end
    object stpOrderEditHistoryType_str: TStringField
      FieldName = 'Type_str'
      Size = 50
    end
    object stpOrderEditHistoryItem_ID: TIntegerField
      FieldName = 'Item_ID'
    end
    object stpOrderEditHistoryUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
  end
  object dsstpOrderEditHistory: TDataSource
    DataSet = stpOrderEditHistory
    Left = 304
    Top = 520
  end
  object stpOrderItemsDELETE_NoOrders: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsDELETE_NoOrders'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 576
  end
  object stpOrderItemsAPPEND_Audit: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsAPPEND_Audit'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 3
      end>
    Left = 80
    Top = 624
  end
  object stpOrderItemsAPPEND_GeneratePO: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsAPPEND_GeneratePO'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 80
    Top = 672
  end
  object stpOrderItemsDELETE_AllItems: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsDELETE_AllItems'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 80
    Top = 720
  end
  object cmdOrderItemsAPPEND_Single: TADOCommand
    CommandText = 'strdprc_OrderItemsAPPEND_Single'
    CommandType = cmdStoredProc
    Connection = ADOOrdersConnection
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'LastUpdate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'QtyOrdered'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'QtyCalc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'QtyRec'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 80
    Top = 576
  end
  object dstblSystemUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 520
    Top = 24
  end
  object stpOrderListRequisitions: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    AfterPost = stpOrderListRequisitionsAfterPost
    AfterDelete = stpOrderListRequisitionsAfterDelete
    OnNewRecord = stpOrderListRequisitionsNewRecord
    ProcedureName = 'strdprc_OrderListRequisitions'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 304
    Top = 521
    object stpOrderListRequisitionsCombinedRequisition_ID: TAutoIncField
      FieldName = 'CombinedRequisition_ID'
      ReadOnly = True
    end
    object stpOrderListRequisitionsRequisition_ID: TIntegerField
      FieldName = 'Requisition_ID'
    end
    object stpOrderListRequisitionsOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpOrderListRequisitionsDescriptionOne: TWideStringField
      FieldName = 'DescriptionOne'
      ReadOnly = True
      Size = 151
    end
    object stpOrderListRequisitionsRequisition_str: TStringField
      FieldName = 'Requisition_str'
      Size = 50
    end
    object stpOrderListRequisitionsPotCost_mon: TBCDField
      FieldName = 'PotCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListRequisitionsPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
  end
  object dsstpOrderListRequisitions: TDataSource
    DataSet = stpOrderListRequisitions
    Left = 584
    Top = 441
  end
  object dsstpOrderListRequisitionsItems: TDataSource
    DataSet = stpOrderListRequisitionsItems
    Left = 584
    Top = 489
  end
  object stpOrderListRequisitionsItems: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Filter = 'SumOfQtyOrdered_int > 0'
    Filtered = True
    ProcedureName = 'strdprc_OrderListRequisitionsItems'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = 0
      end>
    Left = 304
    Top = 569
    object stpOrderListRequisitionsItemsProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpOrderListRequisitionsItemsDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 470
    end
    object stpOrderListRequisitionsItemsSumOfQtyOrdered_int: TIntegerField
      FieldName = 'SumOfQtyOrdered_int'
      ReadOnly = True
    end
    object stpOrderListRequisitionsItemsSumOfQtyIssued_int: TIntegerField
      FieldName = 'SumOfQtyIssued_int'
      ReadOnly = True
    end
    object stpOrderListRequisitionsItemsMaxOfPackCost_mon: TBCDField
      FieldName = 'MaxOfPackCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListRequisitionsItemsSumOfExtendedCost_mon: TBCDField
      FieldName = 'SumOfExtendedCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListRequisitionsItemsProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object stpOrderListRequisitionsItemsICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object stpOrderListRequisitionsItemsECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
  end
  object dsstpOrderListRequisitionsAvailable: TDataSource
    DataSet = tblOrderListRequisitionsAvailable
    Left = 584
    Top = 393
  end
  object stpOrderListRequisitionDelete: TADOCommand
    CommandText = 'strdprc_OrderListRequisitionDelete'
    CommandType = cmdStoredProc
    Connection = ADOOrdersConnection
    Parameters = <
      item
        Name = 'CombinedRequisitionID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 304
    Top = 312
  end
  object stpOrderListReport: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderListReport'
    Parameters = <
      item
        Name = 'OrdID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 392
    Top = 112
    object stpOrderListReportOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object stpOrderListReportSupplier_ID: TAutoIncField
      FieldName = 'Supplier_ID'
      ReadOnly = True
    end
    object stpOrderListReportOrderItemsNo_ID: TAutoIncField
      FieldName = 'OrderItemsNo_ID'
      ReadOnly = True
    end
    object stpOrderListReportProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object stpOrderListReportOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpOrderListReportCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object stpOrderListReportType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpOrderListReportItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpOrderListReportCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpOrderListReportEstimatedCost_mon: TBCDField
      FieldName = 'EstimatedCost_mon'
      Precision = 19
    end
    object stpOrderListReportItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpOrderListReportActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpOrderListReportActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpOrderListReportOrderedBy_str: TWideStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object stpOrderListReportOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpOrderListReportAuthorizedBy_str: TWideStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object stpOrderListReportAuthorized_dat: TDateTimeField
      FieldName = 'Authorized_dat'
    end
    object stpOrderListReportTradeName_str: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object stpOrderListReportQtyCalculated_int: TIntegerField
      FieldName = 'QtyCalculated_int'
    end
    object stpOrderListReportQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpOrderListReportPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object stpOrderListReportExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object stpOrderListReportNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object stpOrderListReportICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object stpOrderListReportECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object stpOrderListReportGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object stpOrderListReportStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object stpOrderListReportForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object stpOrderListReportRoute_str: TWideStringField
      FieldName = 'Route_str'
      Size = 50
    end
    object stpOrderListReportCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object stpOrderListReportPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object stpOrderListReportPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object stpOrderListReportName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object stpOrderListReportAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 100
    end
    object stpOrderListReportAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 100
    end
    object stpOrderListReportAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 100
    end
    object stpOrderListReportAddress4_str: TWideStringField
      FieldName = 'Address4_str'
      Size = 100
    end
    object stpOrderListReportPostalCode_str: TWideStringField
      FieldName = 'PostalCode_str'
      Size = 10
    end
    object stpOrderListReportDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpOrderListReportDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpOrderListReportActivatedBy_str: TWideStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpOrderListReportQtyReceivedCum_int: TIntegerField
      FieldName = 'QtyReceivedCum_int'
    end
    object stpOrderListReportCompleted_bol: TBooleanField
      FieldName = 'Completed_bol'
    end
    object stpOrderListReportQtyOnOrder_int: TIntegerField
      FieldName = 'QtyOnOrder_int'
    end
    object stpOrderListReportSysAddress1_str: TWideStringField
      FieldName = 'SysAddress1_str'
      Size = 150
    end
    object stpOrderListReportSysAddress2_str: TWideStringField
      FieldName = 'SysAddress2_str'
      Size = 150
    end
    object stpOrderListReportSysAddress3_str: TWideStringField
      FieldName = 'SysAddress3_str'
      Size = 150
    end
    object stpOrderListReportSysCity_str: TWideStringField
      FieldName = 'SysCity_str'
      Size = 150
    end
    object stpOrderListReportProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpOrderListReportSystemCode_str: TStringField
      FieldName = 'SystemCode_str'
      Size = 13
    end
    object stpOrderListReportAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpOrderListReportAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpOrderListReportDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 470
    end
    object stpOrderListReportPackSize: TWideStringField
      FieldName = 'PackSize'
      ReadOnly = True
      Size = 101
    end
    object stpOrderListReportProvincialLogo_img: TBlobField
      FieldName = 'ProvincialLogo_img'
    end
    object stpOrderListReportQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
      ReadOnly = True
    end
    object stpOrderListReportSumQtyOrder_int: TIntegerField
      FieldName = 'SumQtyOrder_int'
      ReadOnly = True
    end
    object stpOrderListReportDemanderAccount_str: TWideStringField
      FieldName = 'DemanderAccount_str'
      Size = 30
    end
    object stpOrderListReportDemander: TWideStringField
      FieldName = 'Demander'
      Size = 50
    end
    object stpOrderListReportVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
  end
  object stpOrderListReportOutstanding: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderListReportOutstanding'
    Parameters = <
      item
        Name = 'OrdID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 392
    Top = 168
    object stpOrderListReportOutstandingStrength_str: TWideStringField
      FieldName = 'Strength_str'
      Size = 30
    end
    object stpOrderListReportOutstandingForm_str: TWideStringField
      FieldName = 'Form_str'
      Size = 30
    end
    object stpOrderListReportOutstandingGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object stpOrderListReportOutstandingPackSize_str: TWideStringField
      FieldName = 'PackSize_str'
      Size = 50
    end
    object stpOrderListReportOutstandingPackSizeUnit_str: TWideStringField
      FieldName = 'PackSizeUnit_str'
      Size = 50
    end
    object stpOrderListReportOutstandingCost_mon: TBCDField
      FieldName = 'Cost_mon'
      Precision = 19
    end
    object stpOrderListReportOutstandingProductCode_str: TWideStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpOrderListReportOutstandingQtyOnHand_int: TIntegerField
      FieldName = 'QtyOnHand_int'
    end
    object stpOrderListReportOutstandingQtyOnOrder_int: TIntegerField
      FieldName = 'QtyOnOrder_int'
    end
    object stpOrderListReportOutstandingNSN_str: TWideStringField
      FieldName = 'NSN_str'
      Size = 13
    end
    object stpOrderListReportOutstandingICN_str: TWideStringField
      FieldName = 'ICN_str'
      Size = 13
    end
    object stpOrderListReportOutstandingBarCode_str: TWideStringField
      FieldName = 'BarCode_str'
      Size = 12
    end
    object stpOrderListReportOutstandingInstitutionEDL_bol: TBooleanField
      FieldName = 'InstitutionEDL_bol'
    end
    object stpOrderListReportOutstandingECN_str: TWideStringField
      FieldName = 'ECN_str'
      Size = 13
    end
    object stpOrderListReportOutstandingQtyOrdered_int: TIntegerField
      FieldName = 'QtyOrdered_int'
    end
    object stpOrderListReportOutstandingQtyReceivedCum_int: TIntegerField
      FieldName = 'QtyReceivedCum_int'
    end
    object stpOrderListReportOutstandingQtyOutstanding: TIntegerField
      FieldName = 'QtyOutstanding'
      ReadOnly = True
    end
    object stpOrderListReportOutstandingTradeName_str: TStringField
      FieldName = 'TradeName_str'
      Size = 80
    end
    object stpOrderListReportOutstandingOrderNo_ID: TIntegerField
      FieldName = 'OrderNo_ID'
    end
    object stpOrderListReportOutstandingProductCode_ID: TAutoIncField
      FieldName = 'ProductCode_ID'
      ReadOnly = True
    end
    object stpOrderListReportOutstandingOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpOrderListReportOutstandingVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpOrderListReportOutstandingOrderedBy_str: TWideStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object stpOrderListReportOutstandingOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpOrderListReportOutstandingCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object stpOrderListReportOutstandingName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
    object stpOrderListReportOutstandingShortName_str: TWideStringField
      FieldName = 'ShortName_str'
      Size = 50
    end
    object stpOrderListReportOutstandingAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 100
    end
    object stpOrderListReportOutstandingAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 100
    end
    object stpOrderListReportOutstandingAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 100
    end
    object stpOrderListReportOutstandingAddress4_str: TWideStringField
      FieldName = 'Address4_str'
      Size = 100
    end
    object stpOrderListReportOutstandingDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpOrderListReportOutstandingDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpOrderListReportOutstandingSysAddress1_str: TWideStringField
      FieldName = 'SysAddress1_str'
      Size = 150
    end
    object stpOrderListReportOutstandingSysAddress2_str: TWideStringField
      FieldName = 'SysAddress2_str'
      Size = 150
    end
    object stpOrderListReportOutstandingSysAddress3_str: TWideStringField
      FieldName = 'SysAddress3_str'
      Size = 150
    end
    object stpOrderListReportOutstandingSysCity_str: TWideStringField
      FieldName = 'SysCity_str'
      Size = 150
    end
    object stpOrderListReportOutstandingSystemCode_str: TStringField
      FieldName = 'SystemCode_str'
      Size = 13
    end
    object stpOrderListReportOutstandingAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpOrderListReportOutstandingAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpOrderListReportOutstandingDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 470
    end
    object stpOrderListReportOutstandingPackSize: TWideStringField
      FieldName = 'PackSize'
      ReadOnly = True
      Size = 101
    end
    object stpOrderListReportOutstandingProvincialLogo_img: TBlobField
      FieldName = 'ProvincialLogo_img'
    end
  end
  object AddOrderListReq: TADOCommand
    CommandText = 'strdprc_OrderListRequisitionAPPEND_Single'
    CommandType = cmdStoredProc
    Connection = ADOOrdersConnection
    Parameters = <
      item
        Name = 'ReqID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'OrdID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 448
    Top = 433
  end
  object dstblOrderListUniqueSuppliers: TDataSource
    DataSet = tblOrderListUniqueSuppliers
    Left = 168
    Top = 128
  end
  object stpOrderList: TADOStoredProc
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderList'
    Parameters = <
      item
        Name = 'StartDate'
        DataType = ftDateTime
        Value = 37257d
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        Value = 37289d
      end>
    Left = 24
    Top = 96
    object stpOrderListOrder_dat: TDateTimeField
      FieldName = 'Order_dat'
    end
    object stpOrderListActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpOrderListOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpOrderListOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpOrderListVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpOrderListOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object stpOrderListSupplierCode_str: TWideStringField
      FieldName = 'SupplierCode_str'
      Size = 14
    end
    object stpOrderListSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object stpOrderListType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpOrderListItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpOrderListCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpOrderListEstimatedCost_mon: TBCDField
      FieldName = 'EstimatedCost_mon'
      Precision = 19
    end
    object stpOrderListItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpOrderListActivatedBy_str: TWideStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpOrderListOrderedBy_str: TWideStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object stpOrderListAuthorizedBy_str: TWideStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object stpOrderListAuthorized_dat: TDateTimeField
      FieldName = 'Authorized_dat'
    end
    object stpOrderListLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpOrderListChargeCode_Str: TWideStringField
      FieldName = 'ChargeCode_Str'
      Size = 14
    end
    object stpOrderListActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpOrderListSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object stpOrderListSupplier_Str: TWideStringField
      FieldName = 'Supplier_Str'
      Size = 100
    end
    object stpOrderListItemsComplete_bol: TBooleanField
      FieldName = 'ItemsComplete_bol'
    end
    object stpOrderListDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpOrderListDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object stpOrderListCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object stpOrderListCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object stpOrderListCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
  end
  object tblOrderListRequisitionsAvailable: TADOTable
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    TableName = 'strdprc_OrderListRequisitionsAvailable'
    Left = 304
    Top = 473
    object tblOrderListRequisitionsAvailableRequisition_ID: TIntegerField
      FieldName = 'Requisition_ID'
    end
    object tblOrderListRequisitionsAvailableCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object tblOrderListRequisitionsAvailableName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object tblOrderListRequisitionsAvailableRequisition_str: TStringField
      FieldName = 'Requisition_str'
      Size = 50
    end
    object tblOrderListRequisitionsAvailablePOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object tblOrderListRequisitionsAvailableTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object tblOrderListRequisitionsAvailableItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object tblOrderListRequisitionsAvailableDescriptionOne: TWideStringField
      FieldName = 'DescriptionOne'
      ReadOnly = True
      Size = 140
    end
    object tblOrderListRequisitionsAvailablePotCost_mon: TBCDField
      FieldName = 'PotCost_mon'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsstpSystemWharehouse: TDataSource
    DataSet = stpSystemWharehouse
    Left = 168
    Top = 208
  end
  object stpOrdersMarkAsComplete: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrdersMarkAsComplete'
    Parameters = <
      item
        Name = 'OrderID'
        DataType = ftFloat
        Value = Null
      end>
    Left = 576
    Top = 312
  end
  object stpStockControlOrderItemsComplete: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_StockControlOrderItemsComplete'
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Prepared = True
    Left = 576
    Top = 560
  end
  object DBUpdater: TADOCommand
    Connection = ADOOrdersConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    Left = 672
    Top = 313
  end
  object ADOCommand_General: TADOCommand
    Connection = ADOOrdersConnection
    Parameters = <>
    Left = 448
    Top = 312
  end
  object stpOrderListReportRxCosting: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_OrderListReportRxCosting'
    Parameters = <
      item
        Name = 'OrdID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 392
    Top = 224
    object stpOrderListReportRxCostingOrderNo_ID: TAutoIncField
      FieldName = 'OrderNo_ID'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingSystemStore_str: TWideStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object stpOrderListReportRxCostingSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object stpOrderListReportRxCostingSupplier_Str: TWideStringField
      FieldName = 'Supplier_Str'
      Size = 100
    end
    object stpOrderListReportRxCostingSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object stpOrderListReportRxCostingOrderNo_str: TWideStringField
      FieldName = 'OrderNo_str'
      Size = 25
    end
    object stpOrderListReportRxCostingOrder_dat: TDateTimeField
      FieldName = 'Order_dat'
    end
    object stpOrderListReportRxCostingVoucherNo_str: TWideStringField
      FieldName = 'VoucherNo_str'
      Size = 25
    end
    object stpOrderListReportRxCostingType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 1
    end
    object stpOrderListReportRxCostingItemsCost_mon: TBCDField
      FieldName = 'ItemsCost_mon'
      Precision = 19
    end
    object stpOrderListReportRxCostingCharges_mon: TBCDField
      FieldName = 'Charges_mon'
      Precision = 19
    end
    object stpOrderListReportRxCostingEstimatedCost_mon: TBCDField
      FieldName = 'EstimatedCost_mon'
      Precision = 19
    end
    object stpOrderListReportRxCostingItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object stpOrderListReportRxCostingActivatedBy_str: TWideStringField
      FieldName = 'ActivatedBy_str'
      Size = 50
    end
    object stpOrderListReportRxCostingActivated_dat: TDateTimeField
      FieldName = 'Activated_dat'
    end
    object stpOrderListReportRxCostingActivated_bol: TBooleanField
      FieldName = 'Activated_bol'
    end
    object stpOrderListReportRxCostingOrderedBy_str: TWideStringField
      FieldName = 'OrderedBy_str'
      Size = 50
    end
    object stpOrderListReportRxCostingOrdered_dat: TDateTimeField
      FieldName = 'Ordered_dat'
    end
    object stpOrderListReportRxCostingAuthorizedBy_str: TWideStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object stpOrderListReportRxCostingAuthorized_dat: TDateTimeField
      FieldName = 'Authorized_dat'
    end
    object stpOrderListReportRxCostingLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object stpOrderListReportRxCostingSupplierCode_str: TWideStringField
      FieldName = 'SupplierCode_str'
      Size = 14
    end
    object stpOrderListReportRxCostingSumOfQtyDemanderOnHand_int: TIntegerField
      FieldName = 'SumOfQtyDemanderOnHand_int'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingSumOfQtyOrdered_int: TIntegerField
      FieldName = 'SumOfQtyOrdered_int'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingSumOfQtyIssued_int: TIntegerField
      FieldName = 'SumOfQtyIssued_int'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingSumOfQtyAuthorized_int: TIntegerField
      FieldName = 'SumOfQtyAuthorized_int'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingMaxOfPackCost_mon: TBCDField
      FieldName = 'MaxOfPackCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListReportRxCostingSumOfExtendedCost_mon: TBCDField
      FieldName = 'SumOfExtendedCost_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListReportRxCostingProductCode_str: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object stpOrderListReportRxCostingNSN_str: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object stpOrderListReportRxCostingICN_str: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object stpOrderListReportRxCostingECN_str: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object stpOrderListReportRxCostingSumOfExtendedCostPot_mon: TBCDField
      FieldName = 'SumOfExtendedCostPot_mon'
      ReadOnly = True
      Precision = 19
    end
    object stpOrderListReportRxCostingSumOfQtyCostingRequest_int: TIntegerField
      FieldName = 'SumOfQtyCostingRequest_int'
      ReadOnly = True
    end
    object stpOrderListReportRxCostingDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 250
    end
  end
  object dsstpOrderListReportRxCosting: TDataSource
    DataSet = stpOrderListReportRxCosting
    Left = 536
    Top = 224
  end
  object ADOQuery1_stp: TADOStoredProc
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    DataSource = dsstpStockControlOrderItems
    ProcedureName = 'ADODelphiQuery;1'
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 272
    Top = 192
  end
  object ADOQuery1: TADOQuery
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    DataSource = dsstpStockControlOrderItems
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT TblProductPackSize.ProductCode_ID, TblProductPackSize.Cos' +
        't_mon, ISNULL(view_ProductQtyOnHand.TotalQtyOnHand_int , 0) AS Q' +
        'tyOnHand_int, TblProductPackSize.NSN_str, TblProductPackSize.ICN' +
        '_str, TblProductPackSize.ECN_str, TblProductPackSize.QtyOnOrder_' +
        'int, TblProductPackSize.ProductCode_Str'
      
        'FROM TblProductPackSize  LEFT OUTER JOIN view_ProductQtyOnHand O' +
        'N view_ProductQtyOnHand.ProductCode_ID = TblProductPackSize.Prod' +
        'uctCode_ID'
      'WHERE (((TblProductPackSize.ProductCode_ID)=:ProductCode_ID));')
    Left = 160
    Top = 257
  end
  object dstblProductGroup2: TDataSource
    DataSet = tblProductGroup2
    Left = 688
    Top = 640
  end
  object tblProductGroup2: TADOTable
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'TlkProductPackSizeGroup2'
    Left = 568
    Top = 640
    object tblProductGroup2Code_str: TWideStringField
      FieldName = 'Code_str'
      Size = 50
    end
    object tblProductGroup2Description_str: TWideStringField
      FieldName = 'Description_str'
      Size = 120
    end
  end
  object stpOrderItemsAPPEND_GeneratePOGroup2: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsAPPEND_GeneratePOGroup2;1'
    Parameters = <
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Group2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 336
    Top = 616
  end
  object stpOrderItemsAddInstitutionEDL: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemsAdd_InstitutionEDL;1'
    Parameters = <
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 288
    Top = 696
  end
  object stpUpdateCompleteStatus: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_StockControlOrderUpdateCompleteStatus;1'
    Parameters = <>
    Prepared = True
    Left = 688
    Top = 712
  end
  object stpProductCurrentOnOrder: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_ProductCurrentOnOrder'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 552
    Top = 712
    object stpProductCurrentOnOrderProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object stpProductCurrentOnOrderSumOfQtyOrdered_int: TIntegerField
      FieldName = 'SumOfQtyOrdered_int'
      ReadOnly = True
    end
  end
  object tblAuthorisedSystemUsers: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') + N'#39'(' +
        ' '#39' + ISNULL(tblSystem_User.position_str, N'#39#39') '
      '                      + N'#39' )'#39' AS Description'
      
        'FROM tblSystem_User INNER JOIN tblSystem_User_Access ON tblSyste' +
        'm_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 7) AND (tblSystem_U' +
        'ser_Access.accessLevel_int >2) AND (tblSystem_User.Active_bol = ' +
        '1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 664
    Top = 24
    object tblAuthorisedSystemUsersUserID: TGuidField
      FieldName = 'UserID'
      FixedChar = True
      Size = 38
    end
    object tblAuthorisedSystemUsersDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 66
    end
  end
  object dstblAuthorisedSystemUsers: TDataSource
    DataSet = tblAuthorisedSystemUsers
    Left = 664
    Top = 80
  end
  object stp_CustomReport: TADOQuery
    Tag = 1
    Connection = ADOOrdersConnection
    Parameters = <>
    Left = 728
    Top = 160
  end
  object qrySqlStatements: TADOTable
    Connection = ADOOrdersConnection
    TableName = 'tblReport_Queries'
    Left = 816
    Top = 216
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 824
    Top = 344
  end
  object dsstp_CustomReport: TDataSource
    DataSet = stp_CustomReport
    Left = 832
    Top = 160
  end
  object qryTotalQtyonHand: TADOQuery
    Tag = 1
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT (ISNULL(view_ProductQtyOnHand.TotalQtyOnHand_int, 0)) AS ' +
        'QtyAvailable, tblProductPackSize.ProductCode_ID'
      
        'FROM tblProductPackSize LEFT OUTER JOIN view_ProductQtyOnHand ON' +
        ' view_ProductQtyOnHand.ProductCode_ID = tblProductPackSize.Produ' +
        'ctCode_ID')
    Left = 816
    Top = 456
  end
  object qryOnOrder: TADOQuery
    Tag = 1
    Connection = ADOOrdersConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT (ISNULL(view_ProductQtyOnOrder.SumOfQtyOrdered_int, 0)) A' +
        'S QtyOnOrder_int, tblProductPackSize.ProductCode_ID'
      
        'FROM tblProductPackSize LEFT OUTER JOIN view_ProductQtyOnOrder O' +
        'N view_ProductQtyOnOrder.ProductCode_ID = tblProductPackSize.Pro' +
        'ductCode_ID')
    Left = 816
    Top = 520
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'in'
    Filter = 'in|in'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 816
    Top = 40
  end
  object tblSystemUsers: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') + N'#39'(' +
        ' '#39' + ISNULL(tblSystem_User.position_str, N'#39#39') '
      '                      + N'#39' )'#39' AS Description'
      
        'FROM tblSystem_User LEFT OUTER JOIN tblSystem_User_Access ON tbl' +
        'System_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 7) AND (tblSystem_U' +
        'ser_Access.accessLevel_int >1) AND (tblSystem_User.Active_bol = ' +
        '1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 424
    Top = 24
    object GuidField1: TGuidField
      FieldName = 'UserID'
      FixedChar = True
      Size = 38
    end
    object WideStringField1: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 66
    end
  end
  object qryIsRecordLocked: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OrderNo_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOut_bol'
      'FROM tblOrder'
      'WHERE OrderNo_ID=:OrderNo_ID')
    Left = 816
    Top = 592
  end
  object qryDemanders: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Demander_ID, Code_str, Name_str, Account_str'
      'FROM tblDemander'
      'WHERE active_bol=1'
      'ORDER BY Code_str'
      '')
    Left = 816
    Top = 280
    object qryDemandersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object qryDemandersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object qryDemandersAccount_str: TWideStringField
      FieldName = 'Account_str'
      Size = 50
    end
    object qryDemandersDemander_ID: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
  end
  object dsDemanders: TDataSource
    DataSet = qryDemanders
    Left = 896
    Top = 280
  end
  object tblOrderListUniqueSuppliers: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Filtered = True
    OnFilterRecord = tblOrderListUniqueSuppliersFilterRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT Supplier_ID, Code_str, Name_str'
      'FROM         dbo.TblSupplier'
      'WHERE     (Active_bol = 1)'
      'ORDER BY Name_str')
    Left = 63
    Top = 139
    object tblOrderListUniqueSuppliersSupplier_ID: TAutoIncField
      FieldName = 'Supplier_ID'
      ReadOnly = True
    end
    object tblOrderListUniqueSuppliersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 7
    end
    object tblOrderListUniqueSuppliersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
  end
  object stpSystemWharehouse: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT    dbo.TblSystem.SystemStore_ID, dbo.TblSystemAccounts.Sy' +
        'stemAccount_ID, dbo.TblSystem.DemanderName_str, '
      
        '                      dbo.TblSystem.DemanderCode_str, dbo.TblSys' +
        'temAccounts.AccountName_str, dbo.TblSystemAccounts.Account_str, '
      
        '                      dbo.TblSystemAccounts.Account_str + N'#39' '#39' +' +
        ' dbo.TblSystemAccounts.AccountName_str AS Description'
      'FROM         dbo.TblSystem INNER JOIN'
      
        '                      dbo.TblSystemAccounts ON dbo.TblSystem.Sys' +
        'temStore_ID = dbo.TblSystemAccounts.SystemStore_ID'
      
        'ORDER BY dbo.TblSystemAccounts.AccountName_str, dbo.TblSystem.De' +
        'manderName_str, dbo.TblSystem.DemanderCode_str')
    Left = 46
    Top = 195
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
  object stpOrderItemsAddDemanderAuthorizedProducts: TADOStoredProc
    Tag = 1
    Connection = ADOOrdersConnection
    ProcedureName = 'strdprc_OrderItemAdd_Demander_Authorized_Items;1'
    Parameters = <
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 232
    Top = 776
  end
  object dsstpOrderItemsAddDemanderAuthorizedProducts: TDataSource
    DataSet = stpOrderItemsAddDemanderAuthorizedProducts
    Left = 480
    Top = 784
  end
  object qrySupplierDescription: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'supplierID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Name_str+ '#39' ['#39' + Code_str + '#39']'#39' AS Description '
      'FROM tblSupplier'
      'WHERE supplier_ID=:supplierID')
    Left = 864
    Top = 712
  end
  object qryAccountDescription: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TblSystemAccounts.Account_str + N'#39' '#39' + dbo.TblSystemAccou' +
        'nts.AccountName_str AS Description'
      'FROM TblSystemAccounts'
      'WHERE TblSystemAccounts.SystemAccount_ID=:AccountID')
    Left = 872
    Top = 768
  end
  object stpSystemWharehouseCode: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT    dbo.TblSystem.SystemStore_ID, dbo.TblSystemAccounts.Sy' +
        'stemAccount_ID, dbo.TblSystem.DemanderName_str, '
      
        '                      dbo.TblSystem.DemanderCode_str, dbo.TblSys' +
        'temAccounts.AccountName_str, dbo.TblSystemAccounts.Account_str, '
      
        '                      dbo.TblSystemAccounts.Account_str + N'#39' '#39' +' +
        ' dbo.TblSystemAccounts.AccountName_str AS Description'
      'FROM         dbo.TblSystem INNER JOIN'
      
        '                      dbo.TblSystemAccounts ON dbo.TblSystem.Sys' +
        'temStore_ID = dbo.TblSystemAccounts.SystemStore_ID'
      
        'ORDER BY dbo.TblSystemAccounts.Account_str, dbo.TblSystemAccount' +
        's.AccountName_str, dbo.TblSystem.DemanderName_str, dbo.TblSystem' +
        '.DemanderCode_str')
    Left = 328
    Top = 48
    object stpSystemWharehouseCodeSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseCodeSystemAccount_ID: TAutoIncField
      FieldName = 'SystemAccount_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseCodeDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpSystemWharehouseCodeDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpSystemWharehouseCodeAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpSystemWharehouseCodeAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpSystemWharehouseCodeDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object tblOrderListUniqueSuppliersCode: TADOQuery
    Connection = ADOOrdersConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT Supplier_ID, Code_str, Name_str'
      'FROM         dbo.TblSupplier'
      'WHERE     (Active_bol = 1)'
      'ORDER BY Code_str')
    Left = 216
    Top = 16
    object tblOrderListUniqueSuppliersCodeSupplier_ID: TAutoIncField
      FieldName = 'Supplier_ID'
      ReadOnly = True
    end
    object tblOrderListUniqueSuppliersCodeCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 50
    end
    object tblOrderListUniqueSuppliersCodeName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 100
    end
  end
  object dsstpSystemWharehouseCode: TDataSource
    DataSet = stpSystemWharehouseCode
    Left = 240
    Top = 80
  end
  object dstblOrderListUniqueSuppliersCode: TDataSource
    DataSet = tblOrderListUniqueSuppliersCode
    Left = 128
    Top = 64
  end
  object qryBlankNSNICNPresent: TADOQuery
    Connection = ADOOrdersConnection
    Parameters = <
      item
        Name = 'OrderNo_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblORderITems'
      
        'WHERE OrderNo_ID=:OrderNo_ID  AND (NSN_str IS NULL OR ICN_str IS' +
        ' NULL)')
    Left = 712
    Top = 800
  end
end

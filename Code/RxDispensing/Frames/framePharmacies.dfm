object frmePharmacies: TfrmePharmacies
  Left = 0
  Top = 0
  Width = 1014
  Height = 704
  TabOrder = 0
  OnResize = FrameResize
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      1014
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1253
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
      Caption = 'Pharmacy Manager'
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
  object Panel4: TPanel
    Left = 0
    Top = 55
    Width = 1014
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 1
    object rzLblPharmacies: TRzLabel
      Left = 5
      Top = 5
      Width = 660
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'List of Pharmacies'
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
  object pnlHolder_Pharmacy_Site: TPanel
    Left = 0
    Top = 90
    Width = 1014
    Height = 614
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object RzLabel9: TRzLabel
      Left = 5
      Top = 5
      Width = 225
      Height = 19
      AutoSize = False
      Caption = 'Complex Pharmacy List'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object rzlRxStoreProductDetail: TRzLabel
      Left = 235
      Top = 5
      Width = 703
      Height = 19
      AutoSize = False
      Caption = 'RxStore Product Detail'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object rzlblPharmacyDetail: TRzLabel
      Left = 5
      Top = 198
      Width = 228
      Height = 19
      AutoSize = False
      Caption = 'Pharmacy Detail'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object rzLblRxStoreSetup: TRzLabel
      Left = 5
      Top = 263
      Width = 224
      Height = 19
      AutoSize = False
      Caption = 'RxStore Setup'
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object rzgPharmacyList: TRzGroupBox
      Left = 5
      Top = 25
      Width = 225
      Height = 168
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object grdPharmacy: TdxDBGrid
        Left = 5
        Top = 11
        Width = 215
        Height = 126
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'complexPharmacy_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsqryComplexPharmacy
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdPharmacycomplexPharmacyName_str: TdxDBGridColumn
          Caption = 'List'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'complexPharmacyName_str'
        end
      end
      object rznPharmcyList: TRzDBNavigator
        Left = 5
        Top = 147
        Width = 210
        Height = 18
        DataSource = dsqryComplexPharmacy
        TabOrder = 1
      end
    end
    object rzgPharmacyDetail: TRzGroupBox
      Left = 5
      Top = 219
      Width = 225
      Height = 41
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label12: TLabel
        Left = 5
        Top = 11
        Width = 65
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Name'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzDBEdit20: TRzDBEdit
        Left = 71
        Top = 11
        Width = 149
        Height = 21
        DataSource = dsqryComplexPharmacy
        DataField = 'complexPharmacyName_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 0
      end
    end
    object rzgRxStoreSetup: TRzGroupBox
      Left = 5
      Top = 283
      Width = 225
      Height = 103
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 5
        Top = 33
        Width = 65
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Server name'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 55
        Width = 65
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Database'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 11
        Width = 65
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Demander'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 77
        Width = 65
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Use RxStore'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 71
        Top = 11
        Width = 149
        Height = 21
        Ctl3D = False
        DataField = 'rxStoreDemander_ID'
        DataSource = dsqryComplexPharmacy
        DropDownRows = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Demander_ID'
        ListField = 'Name_str'
        ListSource = dsqryRxStore_Demanders
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        FrameController = rzcMain
      end
      object RzDBEdit1: TRzDBEdit
        Left = 71
        Top = 55
        Width = 149
        Height = 21
        DataSource = dsqryComplexPharmacy
        DataField = 'rxStoreDB_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 1
      end
      object RzDBEdit2: TRzDBEdit
        Left = 71
        Top = 33
        Width = 149
        Height = 21
        DataSource = dsqryComplexPharmacy
        DataField = 'rxStoreServer_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 2
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 73
        Top = 78
        Width = 41
        Height = 17
        DataField = 'rxStoreUseDB_bol'
        DataSource = dsqryComplexPharmacy
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Caption = '?'
        TabOrder = 3
      end
    end
    object pgeRxStore: TdxPageControl
      Left = 236
      Top = 26
      Width = 705
      Height = 353
      ActivePage = tbsProductsToOrder
      OnResize = pgeRxStoreResize
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 3
      TabPosition = dxtpTop
      TabWidth = 0
      object tbsProductsToOrder: TdxTabSheet
        Caption = 'Authorised Items'
        object rzlProductToOrder: TRzLabel
          Left = 6
          Top = 4
          Width = 723
          Height = 19
          AutoSize = False
          Caption = 'Available Products'
          Color = 4227072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlack
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgProductsToOrder: TRzGroupBox
          Left = 6
          Top = 25
          Width = 698
          Height = 289
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object dxDBGrid2: TdxDBGrid
            Left = 1
            Top = 14
            Width = 696
            Height = 274
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'DemanderItems_ID'
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
            TabOrder = 0
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryRxStore_DemandersItems
            Filter.Criteria = {00000000}
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxDBGridMaskColumn1: TdxDBGridMaskColumn
              Caption = 'Description'
              DisableEditor = True
              Sorted = csUp
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Description_str'
            end
            object dxDBGridColumn2: TdxDBGridColumn
              Caption = 'ICN'
              DisableEditor = True
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ICN_str'
            end
            object dxDBGridColumn3: TdxDBGridColumn
              Caption = 'NSN'
              DisableEditor = True
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NSN_str'
            end
            object dxDBGridColumn4: TdxDBGridColumn
              Caption = 'ECN'
              DisableEditor = True
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ECN_str'
            end
            object dxDBGridMaskColumn2: TdxDBGridMaskColumn
              Caption = 'Qty Auth.'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QtyAuthorized_int'
            end
            object dxDBGridMaskColumn3: TdxDBGridMaskColumn
              Caption = 'Min'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MinStockSet_int'
            end
            object dxDBGridMaskColumn4: TdxDBGridMaskColumn
              Caption = 'Max'
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MaxStockSet_int'
            end
            object dxDBGridMaskColumn5: TdxDBGridMaskColumn
              Caption = 'PP'
              DisableEditor = True
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ProcurementPeriod_int'
            end
            object dxDBGridMaskColumn6: TdxDBGridMaskColumn
              Caption = 'LT'
              DisableEditor = True
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LeadTime_int'
            end
          end
        end
      end
      object tbsProductsOrdered: TdxTabSheet
        Caption = 'Requisitions'
        object rzLblRequisitions: TRzLabel
          Left = 5
          Top = 4
          Width = 689
          Height = 19
          AutoSize = False
          Caption = 'Requisitions [RxStore Only]'
          Color = 4227072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlack
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzlRequisitionsList: TRzLabel
          Left = 5
          Top = 25
          Width = 300
          Height = 19
          AutoSize = False
          Caption = 'RxStore Requisitions'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzlRequisitionsItemsList: TRzLabel
          Left = 310
          Top = 25
          Width = 295
          Height = 19
          AutoSize = False
          Caption = 'RxStore Requisition Items'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgRequisitionsList: TRzGroupBox
          Left = 5
          Top = 45
          Width = 300
          Height = 290
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object grdRequisitions: TdxDBGrid
            Left = 1
            Top = 14
            Width = 298
            Height = 275
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'Requisition_ID'
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
            TabOrder = 0
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryRxStore_Requisitions
            Filter.Criteria = {00000000}
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdRequisitionsRequisition_str: TdxDBGridMaskColumn
              Caption = 'Requisition #'
              DisableEditor = True
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Requisition_str'
            end
            object grdRequisitionsReceivedBy_str: TdxDBGridMaskColumn
              Caption = 'Received By'
              DisableEditor = True
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReceivedBy_str'
            end
            object grdRequisitionsReceived_dat: TdxDBGridDateColumn
              Caption = 'Rec. date'
              DisableEditor = True
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Received_dat'
            end
          end
        end
        object rzgRequisitionsItemsList: TRzGroupBox
          Left = 310
          Top = 45
          Width = 691
          Height = 290
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object grdRequisitionItems: TdxDBGrid
            Left = 1
            Top = 14
            Width = 689
            Height = 275
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'RequisitionItems_ID'
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
            TabOrder = 0
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dsqryRxStore_RequisitionItems
            Filter.Criteria = {00000000}
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdRequisitionItemsDescription_str: TdxDBGridMaskColumn
              Caption = 'Product'
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Description_str'
            end
            object grdRequisitionItemsQtyDemanderOnHand_int: TdxDBGridMaskColumn
              Caption = 'Qty OnHand'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QtyDemanderOnHand_int'
            end
            object grdRequisitionItemsQtyOrdered_int: TdxDBGridMaskColumn
              Caption = 'Qty Ordered'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QtyOrdered_int'
            end
            object grdRequisitionItemsQtyIssued_int: TdxDBGridMaskColumn
              Caption = 'Qty Issued'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QtyIssued_int'
            end
            object grdRequisitionItemsQtyOnHand_int: TdxDBGridMaskColumn
              Caption = 'Qty Available'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QtyOnHand_int'
            end
          end
        end
      end
      object tbsRxProcessed: TdxTabSheet
        Caption = 'Scripts Processed'
        object rzlRxProcessed: TRzLabel
          Left = 5
          Top = 5
          Width = 300
          Height = 19
          AutoSize = False
          Caption = 'Scripts Processed for this Pharmacy'
          Color = 15448477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlue
          ShadowDepth = 1
          TextStyle = tsShadow
        end
        object rzgRxProcessed: TRzGroupBox
          Left = 5
          Top = 25
          Width = 300
          Height = 290
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 1
            Top = 14
            Width = 298
            Height = 19
            Align = alTop
            AutoSize = False
            Caption = 'Available Soon'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clMaroon
            ShadowDepth = 1
            TextStyle = tsShadow
          end
          object grdRxProcessed: TdxDBGrid
            Left = 1
            Top = 33
            Width = 298
            Height = 256
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
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
            TabOrder = 0
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            Filter.Criteria = {00000000}
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
          end
        end
      end
    end
  end
  object conRxStore: TADOConnection
    CommandTimeout = 5
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 96
  end
  object qryRxStore_Demanders: TADOQuery
    Connection = conRxStore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblDemander order by Name_str')
    Left = 56
    Top = 128
  end
  object dsqryRxStore_Demanders: TDataSource
    DataSet = qryRxStore_Demanders
    Left = 88
    Top = 128
  end
  object qryRxStore_DemandersItems: TADOQuery
    Connection = conRxStore
    CursorType = ctStatic
    DataSource = dsqryRxStore_Demanders
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 420
      end>
    SQL.Strings = (
      
        'SELECT     dbo.TBLDemanderItems.Demander_ID, dbo.TBLDemanderItem' +
        's.QtyAuthorized_int, dbo.TBLDemanderItems.MinStockSet_int, '
      
        '                      dbo.TBLDemanderItems.MaxStockSet_int, dbo.' +
        'TBLDemanderItems.ProcurementPeriod_int, dbo.TBLDemanderItems.Lea' +
        'dTime_int, '
      
        '                      dbo.TblProductPackSize.ICN_str, dbo.TblPro' +
        'ductPackSize.NSN_str, dbo.TblProductPackSize.ECN_str, dbo.TblPro' +
        'ductPackSize.Description_str, '
      '                      dbo.TBLDemanderItems.DemanderItems_ID'
      'FROM         dbo.TBLDemanderItems INNER JOIN'
      
        '                      dbo.TblProductPackSize ON dbo.TBLDemanderI' +
        'tems.ProductCode_ID = dbo.TblProductPackSize.ProductCode_ID'
      'WHERE dbo.TBLDemanderItems.Demander_ID = :Demander_ID')
    Left = 56
    Top = 160
  end
  object dsqryRxStore_DemandersItems: TDataSource
    DataSet = qryRxStore_DemandersItems
    Left = 88
    Top = 160
  end
  object qryRxStore_Requisitions: TADOQuery
    Connection = conRxStore
    CursorType = ctStatic
    DataSource = dsqryRxStore_Demanders
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 420
      end>
    SQL.Strings = (
      'select * from TblRequisition '
      'where Demander_ID = :Demander_ID'
      'order by Requisition_dat desc')
    Left = 56
    Top = 192
  end
  object dsqryRxStore_Requisitions: TDataSource
    DataSet = qryRxStore_Requisitions
    Left = 88
    Top = 192
  end
  object dsqryRxStore_RequisitionItems: TDataSource
    DataSet = qryRxStore_RequisitionItems
    Left = 88
    Top = 224
  end
  object qryRxStore_RequisitionItems: TADOQuery
    Connection = conRxStore
    CursorType = ctStatic
    DataSource = dsqryRxStore_Requisitions
    Parameters = <
      item
        Name = 'Requisition_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.TblProductPackSize.ICN_str, dbo.TblProductPackSiz' +
        'e.NSN_str, dbo.TblProductPackSize.ECN_str, dbo.TblProductPackSiz' +
        'e.Description_str, '
      
        '                      dbo.TblRequisitionItems.Requisition_ID, db' +
        'o.TblRequisitionItems.RequisitionItems_ID, dbo.TblRequisitionIte' +
        'ms.ProductCode_ID, '
      
        '                      dbo.TblRequisitionItems.QtyDemanderOnHand_' +
        'int, dbo.TblRequisitionItems.QtyOrdered_int, dbo.TblRequisitionI' +
        'tems.QtyIssued_int, '
      
        '                      dbo.TblRequisitionItems.QtyAuthorized_int,' +
        ' dbo.TblRequisitionItems.PackCost_mon, dbo.TblRequisitionItems.L' +
        'astUpdate_dat, '
      
        '                      dbo.TblRequisitionItems.ExtendedCost_mon, ' +
        'dbo.TblRequisitionItems.LastUpdate_int, dbo.TblRequisitionItems.' +
        'QtyOnHand_int, '
      
        '                      dbo.TblRequisitionItems.QtyOnOrder_int, db' +
        'o.TblRequisitionItems.Requisition_str, dbo.TblProductPackSize.Pr' +
        'oductCode_str, '
      
        '                      dbo.TblRequisitionItems.DeliveryDate_dat, ' +
        'dbo.TblRequisitionItems.ExtendedCostPot_mon, dbo.TblRequisitionI' +
        'tems.Completed_bol, '
      
        '                      dbo.TblRequisitionItems.QtyCostingRequest_' +
        'int'
      'FROM         dbo.TblProductPackSize INNER JOIN'
      
        '                      dbo.TblRequisitionItems ON dbo.TblProductP' +
        'ackSize.ProductCode_ID = dbo.TblRequisitionItems.ProductCode_ID'
      'WHERE Requisition_ID = :Requisition_ID')
    Left = 56
    Top = 224
  end
  object conPharmacy: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=RxDispensing;Data Source=COUGAR'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 16
  end
  object qryComplex: TADOQuery
    Connection = conPharmacy
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblComplex order by complexName_str')
    Left = 56
    Top = 16
  end
  object dsqryComplex: TDataSource
    DataSet = qryComplex
    Left = 88
    Top = 16
  end
  object qryComplexPharmacy: TADOQuery
    Connection = conPharmacy
    CursorType = ctStatic
    AfterScroll = qryComplexPharmacyAfterScroll
    OnNewRecord = qryComplexPharmacyNewRecord
    DataSource = dsqryComplex
    Parameters = <
      item
        Name = 'complex_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{65A99FDC-219F-42EB-A264-9E82AC0B7853}'
      end>
    SQL.Strings = (
      'select * from tblComplexPharmacy where complex_ID = :complex_ID')
    Left = 56
    Top = 48
    object qryComplexPharmacycomplexPharmacy_ID: TGuidField
      FieldName = 'complexPharmacy_ID'
      FixedChar = True
      Size = 38
    end
    object qryComplexPharmacycomplexPharmacyName_str: TWideStringField
      FieldName = 'complexPharmacyName_str'
      Size = 50
    end
    object qryComplexPharmacyrxStoreDemander_ID: TIntegerField
      FieldName = 'rxStoreDemander_ID'
    end
    object qryComplexPharmacyrxStoreServer_str: TWideStringField
      FieldName = 'rxStoreServer_str'
      Size = 50
    end
    object qryComplexPharmacyrxStoreDB_str: TWideStringField
      FieldName = 'rxStoreDB_str'
      Size = 50
    end
    object qryComplexPharmacyrxStoreUseDB_bol: TBooleanField
      FieldName = 'rxStoreUseDB_bol'
    end
    object qryComplexPharmacycomplex_ID: TGuidField
      FieldName = 'complex_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsqryComplexPharmacy: TDataSource
    DataSet = qryComplexPharmacy
    Left = 88
    Top = 48
  end
  object dsqryComplexPharmacyLookup: TDataSource
    DataSet = qryComplexPharmacy
    Left = 120
    Top = 48
  end
  object rzcMain: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 16
    Top = 48
  end
  object qryRxProcessed: TADOQuery
    Connection = conPharmacy
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'complex_ID'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblComplexPharmacy where complex_ID = :complex_ID')
    Left = 176
    Top = 48
  end
end

object frmeClinic: TfrmeClinic
  Left = 0
  Top = 0
  Width = 1016
  Height = 702
  TabOrder = 0
  OnResize = FrameResize
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      1016
      55)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 5
      Top = 5
      Width = 1255
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
      Caption = 'Clinic Manager'
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
    Width = 1016
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 1
    object rzLblClinics: TRzLabel
      Left = 5
      Top = 5
      Width = 660
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Clinics'
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
  object pnlHolder_Clinic: TPanel
    Left = 0
    Top = 90
    Width = 1016
    Height = 612
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object rzlClinicList: TRzLabel
      Left = 235
      Top = 5
      Width = 508
      Height = 19
      AutoSize = False
      Caption = 'Clinic List'
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
    object RZlBLComplexSiteDetails: TRzLabel
      Left = 5
      Top = 5
      Width = 225
      Height = 19
      AutoSize = False
      Caption = 'Clinic Detail'
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
    object rzgClinicDetails: TRzGroupBox
      Left = 5
      Top = 24
      Width = 225
      Height = 529
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 5
        Top = 11
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Name'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 133
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Classification'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 5
        Top = 155
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub-District'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 177
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Location'
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
        Top = 33
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'District Mun.'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 5
        Top = 61
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Batch Route'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 83
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Days'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 5
        Top = 105
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Electoral Ward'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 5
        Top = 299
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telephone'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 5
        Top = 205
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Address'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 227
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Suburb'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 5
        Top = 249
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'City'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 271
        Width = 70
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Code'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzDBEdit2: TRzDBEdit
        Left = 77
        Top = 177
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicLocation_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 0
      end
      object RzDBEdit9: TRzDBEdit
        Left = 77
        Top = 155
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicHealthSubDistrict_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 1
      end
      object RzDBEdit13: TRzDBEdit
        Left = 77
        Top = 133
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicClassification_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 2
      end
      object RzDBEdit6: TRzDBEdit
        Left = 77
        Top = 33
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicDistrictMunicipality_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 3
      end
      object RzDBEdit3: TRzDBEdit
        Left = 77
        Top = 11
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicName_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 4
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 77
        Top = 61
        Width = 144
        Height = 21
        Ctl3D = False
        DataField = 'downRefRoute_ID'
        DataSource = dsqryClinic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'downRefRoute_ID'
        ListField = 'routeName_str'
        ListSource = dsqryLUBatchRoute
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        FrameController = rzcMain
      end
      object rznClinics: TRzDBNavigator
        Left = 5
        Top = 503
        Width = 210
        Height = 18
        DataSource = dsqryClinic
        TabOrder = 6
        OnResize = rznClinicsResize
      end
      object RzDBEdit1: TRzDBEdit
        Left = 77
        Top = 83
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicDays_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 7
      end
      object RzDBEdit4: TRzDBEdit
        Left = 77
        Top = 105
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicElectoralWard_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 8
      end
      object RzDBEdit7: TRzDBEdit
        Left = 77
        Top = 299
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicTelephone_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 9
      end
      object RzDBEdit8: TRzDBEdit
        Left = 77
        Top = 205
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicAddress01_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 10
      end
      object RzDBEdit10: TRzDBEdit
        Left = 77
        Top = 227
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicAddress02_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 11
      end
      object RzDBEdit11: TRzDBEdit
        Left = 77
        Top = 249
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicAddress03_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 12
      end
      object RzDBEdit12: TRzDBEdit
        Left = 77
        Top = 271
        Width = 144
        Height = 21
        DataSource = dsqryClinic
        DataField = 'clinicAddress04_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 13
      end
    end
    object rzgClinicList: TRzGroupBox
      Left = 235
      Top = 25
      Width = 750
      Height = 528
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object grdClinicList: TdxDBGrid
        Left = 1
        Top = 14
        Width = 748
        Height = 513
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'clinic_ID'
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
        TabOrder = 0
        BandColor = 16776176
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsqryClinic
        Filter.Criteria = {00000000}
        GroupPanelColor = clInactiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdClinicListclinicName_str: TdxDBGridColumn
          Caption = 'Name'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicName_str'
        end
        object grdClinicListclinicClassification_str: TdxDBGridColumn
          Caption = 'Classification'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicClassification_str'
        end
        object grdClinicListclinicDistrictPharmacist_str: TdxDBGridColumn
          Caption = 'Pharmacist'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicDistrictPharmacist_str'
        end
        object grdClinicListclinicDistrictMunicipality_str: TdxDBGridColumn
          Caption = 'District Municipality'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicDistrictMunicipality_str'
        end
        object grdClinicListclinicHealthSubDistrict_str: TdxDBGridColumn
          Caption = 'Sub District'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicHealthSubDistrict_str'
        end
        object grdClinicListclinicLocation_str: TdxDBGridColumn
          Caption = 'Location'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicLocation_str'
        end
        object grdClinicListbatchRouteName_str: TdxDBGridColumn
          Caption = 'Batch Route'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'batchRouteName_str'
        end
      end
    end
  end
  object conClinic: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=RxDispensing;Data Source=tiger'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 696
    Top = 32
  end
  object rzcMain: TRzFrameController
    FrameColor = 16744576
    FrameHotStyle = fsFlat
    FrameStyle = fsNone
    FrameVisible = True
    Left = 728
    Top = 32
  end
  object qryClinic: TADOQuery
    Connection = conClinic
    CursorType = ctStatic
    BeforePost = qryClinicBeforePost
    OnNewRecord = qryClinicNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from tblClinic order by clinicName_str')
    Left = 768
    Top = 32
  end
  object dsqryClinic: TDataSource
    DataSet = qryClinic
    Left = 800
    Top = 32
  end
  object qryLUBatchRoute: TADOQuery
    Connection = conClinic
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblDRRoute order by routeName_str')
    Left = 768
    Top = 64
  end
  object dsqryLUBatchRoute: TDataSource
    DataSet = qryLUBatchRoute
    Left = 800
    Top = 64
  end
end

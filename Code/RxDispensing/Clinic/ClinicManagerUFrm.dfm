object ClinicManagerFrm: TClinicManagerFrm
  Left = 318
  Top = 98
  Width = 1392
  Height = 734
  Caption = 'ClinicManagerFrm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object pnlToolbar_Header: TPanel
    Left = 0
    Top = 0
    Width = 1374
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      1374
      68)
    object pnlToolbar_Header_ShapeBorder: TShape
      Left = 6
      Top = 6
      Width = 1939
      Height = 56
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = clWindow
      Pen.Color = clActiveCaption
      Pen.Style = psInsideFrame
    end
    object pnlToolbar_Header_Display: TRzLabel
      Left = 10
      Top = 14
      Width = 828
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'Clinic Manager'
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -25
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
  object pnlHolder_Clinic: TPanel
    Left = 0
    Top = 68
    Width = 1374
    Height = 621
    Align = alClient
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 1
    object rzlClinicList: TRzLabel
      Left = 405
      Top = 6
      Width = 837
      Height = 24
      AutoSize = False
      Color = 15448477
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object RZlBLComplexSiteDetails: TRzLabel
      Left = 6
      Top = 6
      Width = 399
      Height = 24
      AutoSize = False
      Caption = 'Clinic Detail'
      Color = 15448477
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlue
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object rzgClinicDetails: TRzGroupBox
      Left = 6
      Top = 30
      Width = 399
      Height = 651
      Color = 16311512
      FlatColor = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 6
        Top = 43
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Name'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 6
        Top = 193
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Classification'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 6
        Top = 220
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub-District'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 247
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Location'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 70
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'District Mun.'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 133
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Batch Route'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 160
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Days'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 97
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Contact Person'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 6
        Top = 395
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telephone'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 6
        Top = 282
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Address'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 6
        Top = 309
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Suburb'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 6
        Top = 336
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'City'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 6
        Top = 363
        Width = 196
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Code'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzDBEdit2: TRzDBEdit
        Left = 203
        Top = 247
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicLocation_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 7
      end
      object RzDBEdit9: TRzDBEdit
        Left = 203
        Top = 220
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicHealthSubDistrict_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 6
      end
      object RzDBEdit13: TRzDBEdit
        Left = 203
        Top = 193
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicClassification_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 5
      end
      object RzDBEdit3: TRzDBEdit
        Left = 203
        Top = 43
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicName_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 203
        Top = 133
        Width = 192
        Height = 24
        Ctl3D = False
        DataField = 'downRefRoute_ID'
        DataSource = dsqryClinic
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'downRefRoute_ID'
        ListField = 'routeName_str'
        ListSource = dsqryLUBatchRoute
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        FrameController = rzcMain
      end
      object rznClinics: TRzDBNavigator
        Left = 1
        Top = 17
        Width = 397
        Height = 22
        DataSource = dsqryClinic
        Align = alTop
        TabOrder = 13
      end
      object RzDBEdit1: TRzDBEdit
        Left = 203
        Top = 160
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicDays_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 4
      end
      object RzDBEdit4: TRzDBEdit
        Left = 203
        Top = 97
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicDistrictPharmacist_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 2
      end
      object RzDBEdit7: TRzDBEdit
        Left = 203
        Top = 395
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicTelephone_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 12
      end
      object RzDBEdit8: TRzDBEdit
        Left = 203
        Top = 282
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicAddress01_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 8
      end
      object RzDBEdit10: TRzDBEdit
        Left = 203
        Top = 309
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicAddress02_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 9
      end
      object RzDBEdit11: TRzDBEdit
        Left = 203
        Top = 336
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicAddress03_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 10
      end
      object RzDBEdit12: TRzDBEdit
        Left = 203
        Top = 363
        Width = 192
        Height = 24
        DataSource = dsqryClinic
        DataField = 'clinicAddress04_str'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 11
      end
      object RzDBLookupComboBox2: TRzDBLookupComboBox
        Left = 203
        Top = 70
        Width = 192
        Height = 24
        Ctl3D = False
        DataField = 'clinicDistrictMunicipality_str'
        DataSource = dsqryClinic
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Name_str'
        ListField = 'Name_str'
        ListSource = dsMagisterialDistrict
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        FrameColor = 16744576
        FrameHotStyle = fsFlat
        FrameStyle = fsNone
        FrameVisible = True
      end
    end
    object rzgClinicList: TRzGroupBox
      Left = 404
      Top = 31
      Width = 838
      Height = 650
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object gxdClinicList: TdxDBGrid
        Left = 1
        Top = 17
        Width = 836
        Height = 632
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'clinic_ID'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandColor = 16776176
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsqryClinic
        Filter.Criteria = {00000000}
        GroupPanelColor = clInactiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        RegistryPath = '\Software\RxSolution\1.2\Grids\Clinic\gxdClinicList'
        ShowRowFooter = True
        object gxdClinicListclinicName_str: TdxDBGridColumn
          Caption = 'Name'
          DisableEditor = True
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicName_str'
          SummaryFooterType = cstCount
          SummaryType = cstCount
          SummaryFormat = 'Number of Clinics: #'
        end
        object gxdClinicListclinicClassification_str: TdxDBGridColumn
          Caption = 'Classification'
          DisableEditor = True
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicClassification_str'
        end
        object gxdClinicListclinicDistrictPharmacist_str: TdxDBGridColumn
          Caption = 'Contact Person'
          DisableEditor = True
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicDistrictPharmacist_str'
        end
        object gxdClinicListclinicDistrictMunicipality_str: TdxDBGridColumn
          Caption = 'District Municipality'
          DisableEditor = True
          Sorted = csUp
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicDistrictMunicipality_str'
        end
        object gxdClinicListclinicHealthSubDistrict_str: TdxDBGridColumn
          Caption = 'Sub District'
          DisableEditor = True
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicHealthSubDistrict_str'
        end
        object gxdClinicListclinicLocation_str: TdxDBGridColumn
          Caption = 'Location'
          DisableEditor = True
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'clinicLocation_str'
        end
        object gxdClinicListbatchRouteName_str: TdxDBGridColumn
          Caption = 'Batch Route'
          DisableEditor = True
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'batchRouteName_str'
        end
      end
    end
  end
  object conClinic: TADOConnection
    CommandTimeout = 60
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxSolution;Data Source=sifis' +
      'om'
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
    object qryClinicclinic_ID: TGuidField
      FieldName = 'clinic_ID'
      FixedChar = True
      Size = 38
    end
    object qryClinicclinicName_str: TWideStringField
      FieldName = 'clinicName_str'
      Size = 50
    end
    object qryClinicclinicClassification_str: TWideStringField
      FieldName = 'clinicClassification_str'
      Size = 25
    end
    object qryClinicclinicDistrictPharmacist_str: TWideStringField
      FieldName = 'clinicDistrictPharmacist_str'
      Size = 50
    end
    object qryClinicclinicDistrictMunicipality_str: TWideStringField
      FieldName = 'clinicDistrictMunicipality_str'
      Size = 50
    end
    object qryClinicclinicHealthSubDistrict_str: TWideStringField
      FieldName = 'clinicHealthSubDistrict_str'
      Size = 50
    end
    object qryClinicclinicLocation_str: TWideStringField
      FieldName = 'clinicLocation_str'
      Size = 50
    end
    object qryClinicdownRefRoute_ID: TGuidField
      FieldName = 'downRefRoute_ID'
      FixedChar = True
      Size = 38
    end
    object qryClinicbatchRouteName_str: TWideStringField
      FieldName = 'batchRouteName_str'
      OnChange = qryClinicbatchRouteName_strChange
      Size = 100
    end
    object qryClinicclinicAddress01_str: TWideStringField
      FieldName = 'clinicAddress01_str'
      Size = 100
    end
    object qryClinicclinicAddress02_str: TWideStringField
      FieldName = 'clinicAddress02_str'
      Size = 100
    end
    object qryClinicclinicAddress03_str: TWideStringField
      FieldName = 'clinicAddress03_str'
      Size = 100
    end
    object qryClinicclinicAddress04_str: TWideStringField
      FieldName = 'clinicAddress04_str'
      Size = 100
    end
    object qryClinicclinicDays_str: TWideStringField
      FieldName = 'clinicDays_str'
      Size = 200
    end
    object qryClinicclinicElectoralWard_str: TWideStringField
      FieldName = 'clinicElectoralWard_str'
      Size = 50
    end
    object qryClinicclinicTelephone_str: TWideStringField
      FieldName = 'clinicTelephone_str'
      Size = 50
    end
  end
  object dsqryClinic: TDataSource
    DataSet = qryClinic
    Left = 800
    Top = 32
  end
  object dsqryLUBatchRoute: TDataSource
    DataSet = qryLUBatchRoute
    Left = 800
    Top = 64
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
  object ImageList2: TImageList
    Left = 72
    Top = 16
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B000000730000007300000073000000730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000100000004A0000005A00000052000000310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B000039D66B0039CE6B0039CE630031C65A00000000000000
      0000000000000000000000000000000000000000000000000000000000000008
      000000730000108C0000088C00001884000031730000316B0000216B0000005A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B000042DE730039D66B0039D66B0031C66300000000000000
      0000000000000000000000000000000000000000000000000000001000000094
      0000009C0000009C0000009C0000009400000094000000940000316B0000316B
      0000006300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B00004ADE7B0042D6730039D66B0031C66300000000000000
      00000000000000000000000000000000000000000000000000000894080008A5
      100008A5100008A510008CC68C00EFEFEF00FFF7FF0018BD310000940000187B
      0000316B00000052000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B000052E7840042DE730042D6730039CE6300000000000000
      00000000000000000000000000000000000000000000005A000018AD290008AD
      180008AD210008A5180094C69400F7F7F700FFFFFF0018BD3100009C00000094
      0000396B0000296B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094FFB50042DE730042DE
      730042DE730042DE730042DE7B0042DE730042DE730039D66B0039CE630039CE
      630031C6630031C66300006B00000000000000000000109C180008AD210018BD
      310021CE4A0029CE520084B58400F7F7F700FFFFFF0021CE4A0018BD310018BD
      3100009400003173000000310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094FFB50063EF8C005AEF
      8C0052E7840052E7840052E77B004ADE7B0042DE730042DE730042D6730042D6
      730039D66B0031CE630000730000000000000000000039BD520010B531000073
      0000EFE7EF00EFE7EF00F7EFEF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFF7
      F700009C000031730000005A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFB5006BEF940063EF
      8C0063EF8C005AEF8C0052E7840052E77B004ADE7B0042DE730042DE730042D6
      730039D66B0039CE6B000073000000000000000000004AC6630029BD4A00006B
      0000E7DEE700E7E7E700EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00009C0000297B000000630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFB5008CF7A50084F7
      A50084F7A50084F7A50063EF8C0052E7840052E77B004ADE7B005AE7840052DE
      7B004ADE7B0039D66B0000730000000000000000000039B54A005AD67B000073
      000084B5840084B58400B5D6B500E7E7E700F7EFF7008CB58C009CC69C0094CE
      9400009C080018840000004A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C0000008C0000008C
      0000008C0000008400007BF79C005AEF8C0052E7840042DE7300007B0000007B
      0000007B000000730000007300000000000000000000008400007BDE940029CE
      5A0031CE630029C65A0073AD7300E7E7E700F7E7EF0029CE520010AD210008A5
      1800009C08002184000000100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000084F7A50063EF8C0052E7840042D66B00000000000000
      00000000000000000000000000000000000000000000000000007BE79C0073DE
      9C0031CE630031CE63006BAD6B00DEDEDE00EFE7EF0021CE4A0010AD290008A5
      180000A50800007B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008C000084F7A50063EF8C005AEF8C0042D66B00000000000000
      0000000000000000000000000000000000000000000000000000006B00007BE7
      A50073DE940031CE63000073000000730000006B000021C6420010AD290008A5
      1800089C08000008000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008C00008CF7A5006BEF940063EF8C0042D67300000000000000
      000000000000000000000000000000000000000000000000000000000000006B
      00007BE7A5007BDE9C004ACE730021C64A0018BD420010B5310010AD29000894
      1000001800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008C00009CFFB5009CFFB50094FFB50094FFAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008C000042BD5A005AD67B004AC66300189C2100006300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000F81FF80F00000000
      F81FE00700000000F81FC00300000000F81FC001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000F81FC00300000000F81FC00300000000F81FE00700000000
      F81FF81F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object dsMagisterialDistrict: TDataSource
    DataSet = MainDm.tlkMagisterialDistrict
    Left = 800
    Top = 96
  end
end

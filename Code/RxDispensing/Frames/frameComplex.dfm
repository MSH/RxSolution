object frmeComplex: TfrmeComplex
  Left = 0
  Top = 0
  Width = 1016
  Height = 702
  TabOrder = 0
  OnResize = FrameResize
  object RzSeparator2: TRzSeparator
    Left = 0
    Top = 90
    Width = 1016
    Height = 1
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ParentColor = False
  end
  object RzSeparator1: TRzSeparator
    Left = 0
    Top = 245
    Width = 1016
    Height = 1
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ParentColor = False
  end
  object RzSeparator3: TRzSeparator
    Left = 0
    Top = 281
    Width = 1016
    Height = 1
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ParentColor = False
  end
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
      Caption = 'Complex Manager'
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
  object pnlComplexname: TPanel
    Left = 0
    Top = 55
    Width = 1016
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 1
    object rzDBLblComplexname: TRzDBLabel
      Left = 5
      Top = 5
      Width = 660
      Height = 25
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
      DataField = 'complexName_str'
      DataSource = dsqryComplex
    end
  end
  object pnlHolder_Complex_Sites: TPanel
    Left = 0
    Top = 91
    Width = 1016
    Height = 154
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object RzLabel9: TRzLabel
      Left = 5
      Top = 5
      Width = 225
      Height = 19
      AutoSize = False
      Caption = 'Complex Pharmacies'
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
      Left = 235
      Top = 5
      Width = 703
      Height = 19
      AutoSize = False
      Caption = 'Complex Site Details'
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
    object rzgComplexSiteDetails: TRzGroupBox
      Left = 235
      Top = 24
      Width = 703
      Height = 125
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 218
        Top = 11
        Width = 75
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
        Left = 218
        Top = 55
        Width = 75
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Phone'
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
        Left = 218
        Top = 77
        Width = 75
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax'
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
        Left = 218
        Top = 99
        Width = 75
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'eMail'
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
        Left = 447
        Top = 11
        Width = 75
        Height = 87
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Address'
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
        Left = 218
        Top = 33
        Width = 75
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Type'
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
        Left = 448
        Top = 99
        Width = 75
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Superintendent'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object grdComplexSite: TdxDBGrid
        Left = 6
        Top = 11
        Width = 210
        Height = 90
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'complexSite_ID'
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
        DataSource = dsqryComplexSite
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdComplexSitesiteName_Str: TdxDBGridColumn
          Caption = 'Site'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'siteName_Str'
        end
      end
      object RzDBNavigator1: TRzDBNavigator
        Left = 5
        Top = 103
        Width = 210
        Height = 18
        DataSource = dsqryComplexSite
        TabOrder = 1
      end
      object RzDBEdit2: TRzDBEdit
        Left = 524
        Top = 11
        Width = 174
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteAddress01_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 2
      end
      object RzDBEdit15: TRzDBEdit
        Left = 524
        Top = 55
        Width = 174
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteAddress03_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 3
      end
      object RzDBEdit9: TRzDBEdit
        Left = 295
        Top = 99
        Width = 150
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteEmail_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 4
      end
      object RzDBEdit13: TRzDBEdit
        Left = 295
        Top = 77
        Width = 150
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteFax_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 5
      end
      object RzDBEdit6: TRzDBEdit
        Left = 295
        Top = 55
        Width = 150
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'sitePhone_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 6
      end
      object RzDBEdit3: TRzDBEdit
        Left = 295
        Top = 11
        Width = 150
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteName_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 7
      end
      object RzDBEdit14: TRzDBEdit
        Left = 524
        Top = 33
        Width = 174
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteAddress02_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 8
      end
      object RzDBEdit16: TRzDBEdit
        Left = 524
        Top = 77
        Width = 174
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteAddress04_Str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 9
      end
      object RzDBComboBox1: TRzDBComboBox
        Left = 295
        Top = 33
        Width = 150
        Height = 21
        DataField = 'siteType_str'
        DataSource = dsqryComplexSite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Items.Strings = (
          'Hospital'
          'Clinic'
          'Unit')
      end
      object RzDBEdit21: TRzDBEdit
        Left = 524
        Top = 99
        Width = 174
        Height = 21
        DataSource = dsqryComplexSite
        DataField = 'siteSuperintendent_str'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FrameController = rzcMain
        ParentFont = False
        TabOrder = 11
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 5
      Top = 25
      Width = 225
      Height = 125
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object grdPharmacy: TdxDBGrid
        Left = 5
        Top = 11
        Width = 215
        Height = 90
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
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdPharmacycomplexPharmacyName_str: TdxDBGridColumn
          Caption = 'List'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'complexPharmacyName_str'
        end
      end
      object RzDBNavigator3: TRzDBNavigator
        Left = 5
        Top = 103
        Width = 210
        Height = 18
        DataSource = dsqryComplexPharmacy
        TabOrder = 1
      end
    end
  end
  object pnlComplexDepartments: TPanel
    Left = 0
    Top = 246
    Width = 1016
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16311512
    TabOrder = 3
    object rzLblComplexDepartments: TRzLabel
      Left = 5
      Top = 5
      Width = 660
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Site Departments'
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
  object pnlHolder_Complex_Sites_Departments: TPanel
    Left = 0
    Top = 282
    Width = 1016
    Height = 420
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
    object rzLblDepartment: TRzLabel
      Left = 5
      Top = 5
      Width = 450
      Height = 19
      AutoSize = False
      Caption = 'Departments'
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
    object rzLblAreas: TRzLabel
      Left = 460
      Top = 5
      Width = 450
      Height = 19
      AutoSize = False
      Caption = 'Areas / Rooms / Wards'
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
    object rzgDepartment: TRzGroupBox
      Left = 5
      Top = 27
      Width = 450
      Height = 366
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object grdComplexSiteDepartment: TdxDBGrid
        Left = 5
        Top = 10
        Width = 210
        Height = 330
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'complexSiteDepartment_ID'
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
        DataSource = dsqryComplexSiteDepartment
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdComplexSiteDepartmentdepartmentName_str: TdxDBGridColumn
          Caption = 'Dept.'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'departmentName_str'
        end
      end
      object rzgDepartmentDetail: TRzGroupBox
        Left = 220
        Top = 10
        Width = 225
        Height = 352
        Caption = 'Department Detail'
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label16: TLabel
          Left = 5
          Top = 16
          Width = 69
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
        object Label18: TLabel
          Left = 5
          Top = 38
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Room'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label19: TLabel
          Left = 5
          Top = 60
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Authorise Rx'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 5
          Top = 82
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Authorise Disp'
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
          Top = 104
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Clinical Site'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RzDBEdit1: TRzDBEdit
          Left = 75
          Top = 16
          Width = 144
          Height = 21
          DataSource = dsqryComplexSiteDepartment
          DataField = 'departmentName_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          ParentFont = False
          TabOrder = 0
        end
        object RzDBEdit4: TRzDBEdit
          Left = 75
          Top = 38
          Width = 144
          Height = 21
          DataSource = dsqryComplexSiteDepartment
          DataField = 'departmentRoom_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 75
          Top = 63
          Width = 93
          Height = 17
          DataField = 'authorizePrescription_bol'
          DataSource = dsqryComplexSiteDepartment
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 75
          Top = 84
          Width = 93
          Height = 17
          DataField = 'authorizeDispensing_bol'
          DataSource = dsqryComplexSiteDepartment
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 75
          Top = 105
          Width = 93
          Height = 17
          DataField = 'clinicDepartment_bol'
          DataSource = dsqryComplexSiteDepartment
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object rznDepartment: TRzDBNavigator
        Left = 5
        Top = 345
        Width = 210
        Height = 18
        DataSource = dsqryComplexSiteDepartment
        TabOrder = 2
      end
    end
    object rzgAreas: TRzGroupBox
      Left = 460
      Top = 27
      Width = 450
      Height = 366
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rzgDepartmentAreaDetail: TRzGroupBox
        Left = 220
        Top = 10
        Width = 225
        Height = 352
        Caption = 'Detail'
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 5
          Top = 15
          Width = 60
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
        object Label6: TLabel
          Left = 5
          Top = 37
          Width = 60
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
        object Label21: TLabel
          Left = 5
          Top = 59
          Width = 60
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Room No'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label22: TLabel
          Left = 5
          Top = 81
          Width = 60
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Type'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label23: TLabel
          Left = 5
          Top = 103
          Width = 60
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ward?'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label24: TLabel
          Left = 5
          Top = 125
          Width = 60
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pharmacy?'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RzDBEdit5: TRzDBEdit
          Left = 66
          Top = 15
          Width = 156
          Height = 21
          DataSource = dsqryComplexSiteDepartmentAreas
          DataField = 'departmentAreaCode_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          ParentFont = False
          TabOrder = 0
        end
        object RzDBEdit11: TRzDBEdit
          Left = 66
          Top = 37
          Width = 156
          Height = 21
          DataSource = dsqryComplexSiteDepartmentAreas
          DataField = 'departmentAreaName_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox4: TDBCheckBox
          Left = 66
          Top = 103
          Width = 103
          Height = 17
          DataField = 'isHospitalWard_bol'
          DataSource = dsqryComplexSiteDepartmentAreas
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RzDBEdit12: TRzDBEdit
          Left = 66
          Top = 59
          Width = 156
          Height = 21
          DataSource = dsqryComplexSiteDepartmentAreas
          DataField = 'departmentAreaRoomNo_str'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameController = rzcMain
          ParentFont = False
          TabOrder = 3
        end
        object RzDBEdit17: TRzDBEdit
          Left = 66
          Top = 81
          Width = 156
          Height = 21
          DataSource = dsqryComplexSiteDepartmentAreas
          DataField = 'departmentAreaRoomType_str'
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
          Left = 67
          Top = 125
          Width = 155
          Height = 21
          Ctl3D = False
          DataField = 'complexPharmacy_ID'
          DataSource = dsqryComplexSiteDepartmentAreas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'complexPharmacy_ID'
          ListField = 'complexPharmacyName_str'
          ListSource = dsqryComplexPharmacyLookup
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          FrameController = rzcMain
        end
      end
      object grdComplexSiteDepartmentArea: TdxDBGrid
        Left = 5
        Top = 10
        Width = 210
        Height = 330
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'complexSiteDepartmentArea_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsqryComplexSiteDepartmentAreas
        Filter.Criteria = {00000000}
        HeaderColor = clInfoBk
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clInactiveCaption
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdComplexSiteDepartmentAreadepartmentAreaName_str: TdxDBGridColumn
          Caption = 'Name'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'departmentAreaName_str'
        end
        object grdComplexSiteDepartmentAreadepartmentAreaRoomNo_str: TdxDBGridColumn
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Width = 25
          BandIndex = 0
          RowIndex = 0
          FieldName = 'departmentAreaRoomNo_str'
        end
      end
      object rznDepartmentArea: TRzDBNavigator
        Left = 5
        Top = 342
        Width = 210
        Height = 18
        DataSource = dsqryComplexSiteDepartmentAreas
        TabOrder = 2
      end
    end
  end
  object conComplex: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxDispensing;Data Source=(lo' +
      'cal)'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 32
  end
  object rzcMain: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 40
    Top = 64
  end
  object qryComplexSite: TADOQuery
    Connection = conComplex
    CursorType = ctStatic
    AfterPost = qryComplexSiteAfterPost
    OnNewRecord = qryComplexSiteNewRecord
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
      'select * from tblComplexSite where complex_ID = :complex_ID')
    Left = 80
    Top = 64
  end
  object qryComplex: TADOQuery
    Connection = conComplex
    CursorType = ctStatic
    AfterPost = qryComplexAfterPost
    OnNewRecord = qryComplexNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from tblComplex order by complexName_str')
    Left = 80
    Top = 32
  end
  object dsqryComplex: TDataSource
    DataSet = qryComplex
    Left = 112
    Top = 32
  end
  object dsqryComplexSite: TDataSource
    DataSet = qryComplexSite
    Left = 112
    Top = 64
  end
  object qryComplexSiteDepartment: TADOQuery
    Connection = conComplex
    CursorType = ctStatic
    BeforePost = qryComplexSiteDepartmentBeforePost
    AfterPost = qryComplexSiteDepartmentAfterPost
    OnNewRecord = qryComplexSiteDepartmentNewRecord
    DataSource = dsqryComplexSite
    Parameters = <
      item
        Name = 'complexSite_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{CA9F0E60-A304-4EFC-B0E7-36006295A959}'
      end>
    SQL.Strings = (
      
        'select * from tblComplexSiteDepartment where complexSite_ID = :c' +
        'omplexSite_ID')
    Left = 80
    Top = 96
  end
  object dsqryComplexSiteDepartment: TDataSource
    DataSet = qryComplexSiteDepartment
    Left = 112
    Top = 96
  end
  object qryComplexPharmacy: TADOQuery
    Connection = conComplex
    CursorType = ctStatic
    AfterPost = qryComplexPharmacyAfterPost
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
    Left = 240
    Top = 32
  end
  object dsqryComplexPharmacy: TDataSource
    DataSet = qryComplexPharmacy
    Left = 280
    Top = 32
  end
  object dsqryComplexPharmacyLookup: TDataSource
    DataSet = qryComplexPharmacy
    Left = 312
    Top = 32
  end
  object qryComplexSiteDepartmentAreas: TADOQuery
    Connection = conComplex
    CursorType = ctStatic
    AfterPost = qryComplexSiteDepartmentAreasAfterPost
    OnNewRecord = qryComplexSiteDepartmentAreasNewRecord
    DataSource = dsqryComplexSiteDepartment
    Parameters = <
      item
        Name = 'complexSiteDepartment_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{473007A9-F64F-420F-B42E-8ADFBC06F55F}'
      end>
    SQL.Strings = (
      
        'select * from tblComplexSiteDepartmentAreas where complexSiteDep' +
        'artment_ID = :complexSiteDepartment_ID')
    Left = 80
    Top = 128
  end
  object dsqryComplexSiteDepartmentAreas: TDataSource
    DataSet = qryComplexSiteDepartmentAreas
    Left = 112
    Top = 128
  end
end

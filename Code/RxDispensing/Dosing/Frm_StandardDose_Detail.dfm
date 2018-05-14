object Form1: TForm1
  Left = 858
  Top = 271
  Width = 1142
  Height = 656
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox5: TRzGroupBox
    Left = 149
    Top = 8
    Width = 457
    Height = 193
    Caption = 'Detail'
    Color = clInactiveCaptionText
    TabOrder = 0
    object lblRoute: TLabel
      Left = 5
      Top = 17
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Route'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 5
      Top = 39
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Eccentric'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDoseA: TLabel
      Left = 5
      Top = 59
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Dose'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 81
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Unit'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblIntervalA: TLabel
      Left = 5
      Top = 103
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Interval'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDuration: TLabel
      Left = 5
      Top = 125
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Duration'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDoseB: TLabel
      Left = 230
      Top = 59
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Dose B'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblIntervalB: TLabel
      Left = 230
      Top = 81
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Interval B'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object rzluRoute: TRzDBLookupComboBox
      Left = 65
      Top = 17
      Width = 164
      Height = 19
      Ctl3D = False
      DataField = 'routeRecommended_str'
      DataSource = dsqryDosing
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Code_str'
      ListField = 'Code_str'
      ListSource = dsqryRoute
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      FramingPreference = fpCustomFraming
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 72
      Top = 40
      Width = 164
      Height = 17
      DataField = 'isEccentric_bol'
      DataSource = dsqryDosing
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'is dosing eccentric?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
    end
    object RzDBEdit6: TRzDBEdit
      Left = 65
      Top = 59
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'doseRecommendedA_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 2
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 65
      Top = 81
      Width = 164
      Height = 19
      Ctl3D = False
      DataField = 'doseUnit_str'
      DataSource = dsqryDosing
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'abbreviation_Str'
      ListField = 'abbreviation_Str'
      ListSource = dsqryUnit
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      FramingPreference = fpCustomFraming
    end
    object RzDBLookupComboBox4: TRzDBLookupComboBox
      Left = 65
      Top = 103
      Width = 164
      Height = 19
      Ctl3D = False
      DataField = 'intervalRecommendedA_str'
      DataSource = dsqryDosing
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'abbreviation_Str'
      ListField = 'abbreviation_Str'
      ListSource = dsqryInterval
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      FramingPreference = fpCustomFraming
    end
    object edtDuration: TRzDBEdit
      Left = 65
      Top = 125
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'durationRecommended_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 5
    end
    object edtIntervalB: TRzDBLookupComboBox
      Left = 290
      Top = 81
      Width = 164
      Height = 19
      Ctl3D = False
      DataField = 'intervalRecommendedB_str'
      DataSource = dsqryDosing
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'abbreviation_Str'
      ListField = 'abbreviation_Str'
      ListSource = dsqryInterval
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      FramingPreference = fpCustomFraming
    end
    object edtDoseB: TRzDBEdit
      Left = 290
      Top = 59
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'doseRecommendedB_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 7
    end
    object RzDBLookupComboBox3: TRzDBLookupComboBox
      Left = 22
      Top = 156
      Width = 347
      Height = 19
      Ctl3D = False
      DataField = 'doseIndication_str'
      DataSource = dsqryDosing
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Description_str'
      ListField = 'Description_str'
      ListSource = dsqryIndication
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      FramingPreference = fpCustomFraming
    end
  end
  object RzGroupBox4: TRzGroupBox
    Left = 627
    Top = 16
    Width = 235
    Height = 153
    Caption = 'Anthropometric'
    Color = clInactiveCaptionText
    TabOrder = 1
    object Label3: TLabel
      Left = 5
      Top = 16
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Weight Lo'
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
      Top = 38
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Weight Hi'
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
      Top = 60
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Age Hi'
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
      Top = 82
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Age Lo'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RzDBEdit2: TRzDBEdit
      Left = 65
      Top = 16
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'weightLo_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 0
    end
    object RzDBEdit1: TRzDBEdit
      Left = 65
      Top = 38
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'weightHi_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 1
    end
    object RzDBEdit3: TRzDBEdit
      Left = 65
      Top = 60
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'ageHi_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit4: TRzDBEdit
      Left = 65
      Top = 82
      Width = 164
      Height = 21
      DataSource = dsqryDosing
      DataField = 'ageLo_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 3
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 149
    Top = 218
    Width = 698
    Height = 79
    Caption = 'Force Rx Description'
    Color = clInactiveCaptionText
    TabOrder = 2
    object Label8: TLabel
      Left = 5
      Top = 15
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Rx'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RzDBEdit5: TRzDBEdit
      Left = 65
      Top = 15
      Width = 627
      Height = 21
      DataSource = dsqryDosing
      DataField = 'freeForm_str'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 0
    end
  end
  object RzGroupBox3: TRzGroupBox
    Left = 141
    Top = 316
    Width = 699
    Height = 129
    Caption = 'Dispense the following product...'
    Color = clInactiveCaptionText
    TabOrder = 3
    object Label6: TLabel
      Left = 5
      Top = 15
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Product'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 37
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Items'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 261
      Top = 37
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Break'
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
      Top = 59
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Instruction'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 5
      Top = 81
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Additional'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 5
      Top = 103
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Warning'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 114
      Top = 37
      Width = 59
      Height = 21
      AutoSize = False
      Caption = 'Packs'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RzDBLookupComboBox2: TRzDBLookupComboBox
      Left = 65
      Top = 15
      Width = 574
      Height = 19
      Ctl3D = False
      DataField = 'DefaultProductID'
      DataSource = dsqryDosing
      DropDownRows = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'productPackSize_ID'
      ListField = 'Description_str'
      ListSource = dsqryProductList
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      FramingPreference = fpCustomFraming
    end
    object RzDBEdit7: TRzDBEdit
      Left = 65
      Top = 37
      Width = 48
      Height = 21
      DataSource = dsqryDosing
      DataField = 'productItemsToDispense_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 1
    end
    object RzDBCheckBox2: TRzDBCheckBox
      Left = 326
      Top = 37
      Width = 19
      Height = 17
      DataField = 'ProductBreakPack_bol'
      DataSource = dsqryDosing
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      HotTrack = True
      TabOrder = 2
    end
    object RzDBEdit8: TRzDBEdit
      Left = 65
      Top = 59
      Width = 629
      Height = 21
      DataSource = dsqryDosing
      DataField = 'productLabelInstruction_str'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit9: TRzDBEdit
      Left = 65
      Top = 81
      Width = 629
      Height = 21
      DataSource = dsqryDosing
      DataField = 'productLabelInstructionAdditional_str'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 4
    end
    object RzDBEdit10: TRzDBEdit
      Left = 65
      Top = 103
      Width = 280
      Height = 21
      DataSource = dsqryDosing
      DataField = 'productLabelWarning_str'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 5
    end
    object RzDBCheckBox3: TRzDBCheckBox
      Left = 645
      Top = 16
      Width = 46
      Height = 17
      DataField = 'usePreselectedProduct_bol'
      DataSource = dsqryDosing
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'Use!'
      HotTrack = True
      TabOrder = 6
    end
    object RzDBEdit11: TRzDBEdit
      Left = 174
      Top = 37
      Width = 48
      Height = 21
      DataSource = dsqryDosing
      DataField = 'productPackToDispense_dbl'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 7
    end
  end
  object conProductDosing: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=RxSolution;Data Source=cougar;Use Proce' +
      'dure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstat' +
      'ion ID=CHEETAH;Use Encryption for Data=False;Tag with column col' +
      'lation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 16
  end
  object qryGenericNames: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ProductGenericList_EDL')
    Left = 8
    Top = 48
  end
  object dsqryGenericNames: TDataSource
    DataSet = qryGenericNames
    Left = 40
    Top = 48
  end
  object dsqryDosing: TDataSource
    DataSet = qryDosing
    Left = 40
    Top = 80
  end
  object qryDosing: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    DataSource = dsqryGenericNames
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = 'Acarbose'
      end>
    SQL.Strings = (
      
        'select * from view_v01_Dosing_RxList where genericName_str = :Ge' +
        'nericName_str')
    Left = 8
    Top = 80
  end
  object qryRoute: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlkRoute order by code_str')
    Left = 8
    Top = 112
  end
  object dsqryRoute: TDataSource
    DataSet = qryRoute
    Left = 40
    Top = 112
  end
  object qryInterval: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Interval'#39)
    Left = 8
    Top = 144
  end
  object dsqryInterval: TDataSource
    DataSet = qryInterval
    Left = 40
    Top = 144
  end
  object qryUnit: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TblAbbreviations'
      'where abbreviationType_Str = '#39'Unit'#39)
    Left = 8
    Top = 176
  end
  object dsqryUnit: TDataSource
    DataSet = qryUnit
    Left = 40
    Top = 176
  end
  object dsqryIndication: TDataSource
    DataSet = qryIndication
    Left = 40
    Top = 208
  end
  object qryIndication: TADOQuery
    Connection = conProductDosing
    Parameters = <>
    SQL.Strings = (
      'select * from view_v01_ICD10_List_Active')
    Left = 8
    Top = 208
  end
  object qryProductList: TADOQuery
    Connection = conProductDosing
    CursorType = ctStatic
    DataSource = dsqryGenericNames
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from view_v01_Dosing_ProductList  where GenericName_str' +
        ' = :GenericName_str'
      '')
    Left = 8
    Top = 240
  end
  object dsqryProductList: TDataSource
    DataSet = qryProductList
    Left = 40
    Top = 240
  end
end

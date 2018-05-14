object LabResultsFrm: TLabResultsFrm
  Left = 386
  Top = 325
  Width = 915
  Height = 421
  Caption = 'Lab Results'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGridLabs: TdxDBGrid
    Left = 0
    Top = 57
    Width = 907
    Height = 294
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'lbResultID'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = PatientDm.dsLaboratoryResults
    Filter.Active = True
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    RegistryPath = '\Software\RxSolutionAPM\PatientLabTests'
    object dxDBGridLabstestDate_dat: TdxDBGridDateColumn
      Caption = 'Test Date'
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testDate_dat'
      SummaryFooterType = cstCount
      SummaryFooterFormat = 'Tests:#'
      SaveTime = False
    end
    object dxDBGridLabstestCode_str: TdxDBGridPickColumn
      Caption = 'Test Code'
      Width = 143
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testCode_str'
      ImmediateDropDown = False
    end
    object dxDBGridLabstestName_str: TdxDBGridColumn
      Caption = 'Test Name'
      Width = 115
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testName_str'
    end
    object dxDBGridLabstestPostive_bol: TdxDBGridCheckColumn
      Caption = 'Positive?'
      MinWidth = 20
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testPostive_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGridLabstestResult_dbl: TdxDBGridMaskColumn
      Caption = 'Result'
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testResult_dbl'
    end
    object dxDBGridLabstestBarCode_str: TdxDBGridColumn
      Caption = 'Bar Code'
      Width = 104
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testBarCode_str'
    end
    object dxDBGridLabstestPlace_str: TdxDBGridColumn
      Caption = 'Location / Comments'
      Width = 228
      BandIndex = 0
      RowIndex = 0
      FieldName = 'testPlace_str'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label7: TLabel
      Left = 5
      Top = 8
      Width = 58
      Height = 16
      Caption = 'Lab Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dteLabTest: TDateTimePicker
      Left = 64
      Top = 4
      Width = 84
      Height = 21
      CalAlignment = dtaLeft
      Date = 40242.4454440394
      Time = 40242.4454440394
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      OnChange = dteLabTestChange
    end
    object Button1: TButton
      Left = 152
      Top = 2
      Width = 84
      Height = 25
      Action = atnAddLab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 31
      Width = 905
      Height = 25
      DataSource = PatientDm.dsLaboratoryResults
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 2
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 351
    Width = 907
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 480
    object atnAddLab: TAction
      Caption = 'Add'
      OnExecute = atnAddLabExecute
    end
    object atnDeleteLab: TAction
      Caption = 'Delete'
    end
  end
end

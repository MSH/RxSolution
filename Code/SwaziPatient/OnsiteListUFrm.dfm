object OnSiteFrm: TOnSiteFrm
  Left = 460
  Top = 220
  Width = 614
  Height = 547
  Caption = 'Patient On site'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxOnSiteList: TdxDBGrid
    Left = 0
    Top = 0
    Width = 598
    Height = 457
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'person_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    TabOrder = 0
    DataSource = PatientDm.dsOnSiteList
    Filter.Active = True
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoCaseInsensitive, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    RegistryPath = '\Software\RxSolutionAPM\OnSiteList'
    ShowPreviewGrid = False
    object dxOnSiteListvstIsOnSite_bol: TdxDBGridCheckColumn
      Caption = 'On Site?'
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vstIsOnSite_bol'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxOnSiteListpersonRefNoCurrent_str: TdxDBGridColumn
      Caption = 'ART No.'
      Width = 136
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personRefNoCurrent_str'
    end
    object dxOnSiteListpersonLastName_str: TdxDBGridColumn
      Caption = 'Last Name'
      Width = 137
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personLastName_str'
    end
    object dxOnSiteListpersonFirstName_str: TdxDBGridColumn
      Caption = 'First Name'
      Width = 137
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personFirstName_str'
    end
    object dxOnSiteListpersonPAS_str: TdxDBGridColumn
      Caption = 'Serial No.'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'personPAS_str'
    end
  end
  object Button1: TButton
    Left = 16
    Top = 472
    Width = 75
    Height = 25
    Action = atnBringOffSite
    TabOrder = 1
  end
  object Button2: TButton
    Left = 112
    Top = 472
    Width = 89
    Height = 25
    Action = atnDeSellectAll
    TabOrder = 2
  end
  object Button3: TButton
    Left = 232
    Top = 472
    Width = 75
    Height = 25
    Action = atnCancel
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 472
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkClose
  end
  object ActionList1: TActionList
    Left = 504
    Top = 152
    object atnDeSellectAll: TAction
      Caption = 'Make All Off site'
      OnExecute = atnDeSellectAllExecute
    end
    object atnBringOffSite: TAction
      Caption = 'Save'
      OnExecute = atnBringOffSiteExecute
    end
    object atnCancel: TAction
      Caption = 'Cancel'
      OnExecute = atnCancelExecute
    end
  end
end

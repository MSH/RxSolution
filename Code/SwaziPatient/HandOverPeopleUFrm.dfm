object HandOverPeopleFrm: THandOverPeopleFrm
  Left = 407
  Top = 238
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Handover to....'
  ClientHeight = 286
  ClientWidth = 808
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
  object dxGridHandoverPeople: TdxDBGrid
    Left = 0
    Top = 0
    Width = 808
    Height = 233
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'username_str'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    TabOrder = 0
    DataSource = PatientDm.dsqryHandOverPeople
    Filter.Active = True
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoCaseInsensitive, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    RegistryPath = '\Software\RxSolutionAPM\HandoverPeople'
    ShowPreviewGrid = False
    object dxGridHandoverPeopleusername_str: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'username_str'
    end
    object dxGridHandoverPeopleFirstname_str: TdxDBGridColumn
      Caption = 'First Name'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Firstname_str'
    end
    object dxGridHandoverPeopleLastname_str: TdxDBGridColumn
      Caption = 'Last Name'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Lastname_str'
    end
    object dxGridHandoverPeoplePosition_str: TdxDBGridColumn
      Caption = 'Position'
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Position_str'
    end
  end
  object Button1: TButton
    Left = 600
    Top = 248
    Width = 75
    Height = 25
    Action = atnSaveHandOver
    TabOrder = 1
  end
  object Button2: TButton
    Left = 704
    Top = 248
    Width = 89
    Height = 25
    Action = atnCancel
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 8
    Top = 240
    object atnSaveHandOver: TAction
      Caption = 'Ok'
      OnExecute = atnSaveHandOverExecute
    end
    object atnCancel: TAction
      Caption = 'Cancel && Close'
      OnExecute = atnCancelExecute
    end
  end
end

object CopyUserRightsfrm: TCopyUserRightsfrm
  Left = 626
  Top = 267
  Width = 529
  Height = 529
  Caption = 'System users'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 459
    Width = 521
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    TabOrder = 0
  end
  object grdUsers: TdxDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 459
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'UserID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = Security_AdministratorFrm.dsotherusers
    Filter.Active = True
    Filter.CaseInsensitive = True
    Filter.Criteria = {00000000}
    GroupPanelColor = clInactiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clInactiveCaption
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Security\dxGridOtherUsers'
    object grdUsersfirstName_str: TdxDBGridColumn
      Caption = 'First name'
      DisableEditor = True
      Width = 224
      BandIndex = 0
      RowIndex = 0
      FieldName = 'firstName_str'
      SummaryFooterType = cstCount
      SummaryFooterFormat = 'Users:#'
      DisableFilter = True
    end
    object grdUserslastName_str: TdxDBGridColumn
      Caption = 'Last Name'
      DisableEditor = True
      Width = 297
      BandIndex = 0
      RowIndex = 0
      FieldName = 'lastName_str'
      DisableFilter = True
    end
  end
end

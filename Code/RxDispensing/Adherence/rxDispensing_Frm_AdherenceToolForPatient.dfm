object frmAdherencePatient: TfrmAdherencePatient
  Left = 144
  Top = 97
  Width = 686
  Height = 483
  Caption = 'frmAdherencePatient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolbar_Header_Prescription: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    DesignSize = (
      678
      55)
    object pnlToolbar_Header_ShapeBorder_Prescriptions: TShape
      Left = 5
      Top = 5
      Width = 669
      Height = 45
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = clWindow
      Pen.Color = clActiveCaption
      Pen.Style = psInsideFrame
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 55
    Width = 678
    Height = 358
    Align = alClient
    TabOrder = 1
    object RzSeparator1: TRzSeparator
      Left = 209
      Top = 1
      Width = 3
      Height = 356
      Orientation = orVertical
      ShowGradient = True
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
    end
    object Panel3: TPanel
      Left = 212
      Top = 1
      Width = 465
      Height = 356
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 0
      object Panel4: TPanel
        Left = 3
        Top = 0
        Width = 458
        Height = 349
        BevelOuter = bvNone
        Color = clInactiveCaptionText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          458
          349)
        object Label2: TLabel
          Left = 5
          Top = 4
          Width = 447
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Caption = 'Adherence Tool'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 386
          Top = 170
          Width = 0
          Height = 18
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Code_str'#9'8'#9'Code'#9'T'
            'Description_str'#9'75'#9'Description'#9'T')
          DataField = 'Group2_str'
          LookupField = 'Code_str'
          Options = [loFixedDropDownHeight, loSearchOnBackspace]
          Style = csDropDownList
          DropDownCount = 20
          ButtonEffects.Flat = True
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          AllowClearKey = False
        end
        object RzGroupBox1: TRzGroupBox
          Left = 5
          Top = 24
          Width = 448
          Height = 322
          Caption = 'Plan Detail'
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label3: TLabel
            Left = 5
            Top = 15
            Width = 65
            Height = 21
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Name:'
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
            Left = 5
            Top = 37
            Width = 142
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Date'
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
            Left = 148
            Top = 37
            Width = 162
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tool'
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label14: TLabel
            Left = 311
            Top = 37
            Width = 65
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Score'
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 377
            Top = 37
            Width = 65
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Patient Score'
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object RzDBLabel3: TRzDBLabel
            Left = 72
            Top = 15
            Width = 129
            Height = 21
            DataField = 'personLastName_Str'
            DataSource = dmMain.dsqryPerson
          end
          object RzDBLabel4: TRzDBLabel
            Left = 208
            Top = 15
            Width = 209
            Height = 21
            DataField = 'personFirstName_Str'
            DataSource = dmMain.dsqryPerson
          end
          object RzDBDateTimeEdit1: TRzDBDateTimeEdit
            Left = 5
            Top = 59
            Width = 142
            Height = 21
            DataSource = dmMain.dsqryAdherencePatient
            DataField = 'toolPatientDate_Dte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 0
            CalendarColors.Days = clWindowText
            CalendarColors.FillDays = clBtnShadow
            CalendarColors.DaysOfWeek = clWindowText
            CalendarColors.Lines = clBtnShadow
            CalendarColors.SelectedDateBack = clHighlight
            CalendarColors.SelectedDateFore = clHighlightText
            CalendarColors.TodaysDateFrame = clMaroon
            ClockFaceColors.Face = clBtnFace
            ClockFaceColors.Hands = clWindowText
            ClockFaceColors.Numbers = clWindowText
            ClockFaceColors.HourTicks = clBtnShadow
            ClockFaceColors.MinuteTicks = clWindowText
            EditType = etDate
            FlatButtons = True
          end
          object RzDBNumericEdit1: TRzDBNumericEdit
            Left = 377
            Top = 59
            Width = 65
            Height = 21
            DataSource = dmMain.dsqryAdherencePatient
            DataField = 'toolPatientScore_Dbl'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 1
            DisplayFormat = ',0;(,0)'
          end
          object RzDBNumericEdit4: TRzDBNumericEdit
            Left = 311
            Top = 59
            Width = 65
            Height = 21
            DataSource = dmMain.dsqryAdherencePatient
            DataField = 'toolPatientPotentialScore_Dbl'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 2
            DisplayFormat = ',0;(,0)'
          end
          object grdPatientDetail: TdxDBGrid
            Left = 5
            Top = 82
            Width = 437
            Height = 231
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'toolPatientDetCode_Str'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = dmMain.dsqryAdherencePatientDetail
            Filter.Criteria = {00000000}
            HeaderColor = clInfoBk
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clInactiveCaption
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfFlat
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grdPatientDetailtoolPatientDetAnswerDescription_Str: TdxDBGridColumn
              Caption = 'Description'
              Sorted = csUp
              Width = 307
              BandIndex = 0
              RowIndex = 0
              FieldName = 'toolPatientDetAnswerDescription_Str'
            end
            object grdPatientDetailtoolPatientDetScore_Int: TdxDBGridMaskColumn
              Caption = 'Score'
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'toolPatientDetScore_Int'
            end
            object grdPatientDetailtoolPatientDetScorePercent_dbl: TdxDBGridMaskColumn
              Caption = '%'
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'toolPatientDetScorePercent_dbl'
            end
          end
          object RzDBCheckBox1: TRzDBCheckBox
            Left = 419
            Top = 14
            Width = 19
            Height = 17
            DataField = 'toolPatientCompliant_Bol'
            DataSource = dmMain.dsqryAdherencePatient
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            TabOrder = 4
          end
          object RzDBLookupComboBox2: TRzDBLookupComboBox
            Left = 148
            Top = 59
            Width = 162
            Height = 21
            Ctl3D = False
            DataField = 'toolCode_Str'
            DataSource = dmMain.dsqryAdherencePatient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'toolCode_Str'
            ListField = 'toolDescription_Str'
            ListSource = dmMain.dsqryTool
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            FrameController = rzcMain
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 356
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object grdPatientAdherence: TdxDBGrid
        Left = 0
        Top = 0
        Width = 208
        Height = 331
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'toolPatientCode_Str'
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
        DataSource = dmMain.dsqryAdherencePatient
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
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object grdPatientAdherencetoolCode_Str: TdxDBGridColumn
          Caption = 'Code'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'toolCode_Str'
        end
        object grdPatientAdherencetoolPatientScore_Dbl: TdxDBGridMaskColumn
          Caption = 'Score'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'toolPatientScore_Dbl'
        end
        object grdPatientAdherencetoolPatientCompliant_Bol: TdxDBGridCheckColumn
          Caption = 'Compliant'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'toolPatientCompliant_Bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object RzDBNavigator5: TRzDBNavigator
        Left = 0
        Top = 331
        Width = 208
        Height = 25
        DataSource = dmMain.dsqryAdherencePatient
        Align = alBottom
        TabOrder = 1
        Color = clInactiveCaptionText
      end
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 413
    Width = 678
    ButtonColor = clInactiveCaptionText
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    HotTrack = True
    ShowGlyphs = True
    Color = clInactiveCaptionText
    TabOrder = 2
  end
  object rzcMain: TRzFrameController
    FrameStyle = fsNone
    FrameVisible = True
    Left = 552
    Top = 16
  end
end

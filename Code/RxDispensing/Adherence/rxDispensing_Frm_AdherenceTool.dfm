object frmAdherenceTool: TfrmAdherenceTool
  Left = 250
  Top = 280
  Width = 686
  Height = 480
  Caption = 'Adherence Tools'
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
    Height = 355
    Align = alClient
    TabOrder = 1
    object RzSeparator1: TRzSeparator
      Left = 209
      Top = 1
      Width = 3
      Height = 353
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
      Height = 353
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
        object RzGroupBox1: TRzGroupBox
          Left = 5
          Top = 23
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
          TabOrder = 0
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
          object Label5: TLabel
            Left = 5
            Top = 59
            Width = 65
            Height = 21
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Date:'
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
            Width = 65
            Height = 21
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Description'
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
            Left = 261
            Top = 59
            Width = 89
            Height = 21
            Alignment = taRightJustify
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
          object RzDBEdit1: TRzDBEdit
            Left = 136
            Top = 15
            Width = 306
            Height = 21
            DataSource = dmMain.dsqryTool
            DataField = 'toolName_Str'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 0
          end
          object RzDBEdit2: TRzDBEdit
            Left = 71
            Top = 37
            Width = 371
            Height = 21
            DataSource = dmMain.dsqryTool
            DataField = 'toolDescription_Str'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 1
          end
          object RzDBDateTimeEdit1: TRzDBDateTimeEdit
            Left = 71
            Top = 59
            Width = 189
            Height = 21
            DataSource = dmMain.dsqryTool
            DataField = 'toolDate_Dte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 2
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
            Left = 351
            Top = 59
            Width = 91
            Height = 21
            DataSource = dmMain.dsqryTool
            DataField = 'toolTotalScore_Int'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 3
            DisplayFormat = ',0;(,0)'
          end
          object dxPageControl1: TdxPageControl
            Left = 6
            Top = 81
            Width = 435
            Height = 235
            ActivePage = dxtJournals
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 4
            TabPosition = dxtpTop
            TabWidth = 0
            object dxtEvaluations: TdxTabSheet
              Caption = 'Evaluation questions'
              object Label4: TLabel
                Left = 143
                Top = 141
                Width = 160
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Scale:'
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
                Left = -1
                Top = 97
                Width = 65
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Question'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label8: TLabel
                Left = -1
                Top = 119
                Width = 65
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Description'
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
                Left = 0
                Top = 141
                Width = 142
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Criteria'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label11: TLabel
                Left = 304
                Top = 141
                Width = 65
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Threshold'
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
                Left = 370
                Top = 141
                Width = 65
                Height = 21
                Alignment = taCenter
                AutoSize = False
                Caption = 'Order'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object grdToolEvaluation: TdxDBGrid
                Left = 0
                Top = 0
                Width = 435
                Height = 96
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'toolEvalCode_Str'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alTop
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
                DataSource = dmMain.dsqryToolEval
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
                object grdToolEvaluationtoolEvalQuestion_Str: TdxDBGridColumn
                  Caption = 'Question'
                  Width = 194
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'toolEvalQuestion_Str'
                end
              end
              object RzDBLookupComboBox1: TRzDBLookupComboBox
                Left = 143
                Top = 163
                Width = 160
                Height = 21
                Ctl3D = False
                DataField = 'toolEvalScaleCode_Str'
                DataSource = dmMain.dsqryToolEval
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'toolEvalScaleCode_Str'
                ListField = 'toolEvalScaleDescription_Str'
                ListSource = dmMain.dsqryToolEvalScale
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                FrameController = rzcMain
              end
              object RzDBEdit4: TRzDBEdit
                Left = 65
                Top = 97
                Width = 72
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalCode_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit5: TRzDBEdit
                Left = 65
                Top = 119
                Width = 370
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalDescription_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit6: TRzDBEdit
                Left = 0
                Top = 163
                Width = 142
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalCriteriaType_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 4
              end
              object RzDBEdit7: TRzDBEdit
                Left = 138
                Top = 97
                Width = 297
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalQuestion_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 5
              end
              object RzDBNumericEdit2: TRzDBNumericEdit
                Left = 304
                Top = 163
                Width = 65
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalThresholdScore_dbl'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 6
                DisplayFormat = ',0;(,0)'
              end
              object RzDBNumericEdit3: TRzDBNumericEdit
                Left = 370
                Top = 163
                Width = 65
                Height = 21
                DataSource = dmMain.dsqryToolEval
                DataField = 'toolEvalDisplayOrder_int'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 7
                DisplayFormat = ',0;(,0)'
              end
              object RzDBNavigator4: TRzDBNavigator
                Left = 0
                Top = 187
                Width = 435
                Height = 25
                DataSource = dmMain.dsqryToolEval
                Align = alBottom
                TabOrder = 8
                Color = clInactiveCaptionText
              end
            end
            object dxtEvidence: TdxTabSheet
              Caption = 'Evidence'
              object Label13: TLabel
                Left = 175
                Top = 25
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Journal name'
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
                Left = 175
                Top = 4
                Width = 260
                Height = 18
                Alignment = taCenter
                AutoSize = False
                Caption = 'Select Journal Article'
                Color = clGradientInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label14: TLabel
                Left = 175
                Top = 47
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Article Heading'
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
                Left = 175
                Top = 69
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Pages'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label16: TLabel
                Left = 175
                Top = 91
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Author'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object dxtScales: TdxTabSheet
              Caption = 'Evaluation Scale'
              object Label17: TLabel
                Left = 175
                Top = 4
                Width = 260
                Height = 18
                Alignment = taCenter
                AutoSize = False
                Caption = 'Evaluation Scale Data'
                Color = clGradientInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label18: TLabel
                Left = 175
                Top = 25
                Width = 80
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
              object Label19: TLabel
                Left = 175
                Top = 47
                Width = 80
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
              object Label20: TLabel
                Left = 175
                Top = 69
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Description'
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
                Left = 175
                Top = 91
                Width = 80
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
              object Label22: TLabel
                Left = 175
                Top = 113
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Score Hi, Low'
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
                Left = 175
                Top = 135
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Labels'
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
                Left = 359
                Top = 113
                Width = 35
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Order'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object grdEvaluationScale: TdxDBGrid
                Left = 0
                Top = 0
                Width = 172
                Height = 187
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'toolEvalScaleCode_Str'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alLeft
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
                DataSource = dmMain.dsqryToolEvalScale
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
                object grdEvaluationScaletoolEvalScaleName_Str: TdxDBGridColumn
                  Caption = 'Name'
                  Width = 103
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'toolEvalScaleName_Str'
                end
                object grdEvaluationScaletoolEvalScaleScoreType_Str: TdxDBGridColumn
                  Caption = 'Type'
                  Width = 69
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'toolEvalScaleScoreType_Str'
                end
              end
              object RzDBNavigator3: TRzDBNavigator
                Left = 0
                Top = 187
                Width = 435
                Height = 25
                DataSource = dmMain.dsqryToolEvalScale
                Align = alBottom
                TabOrder = 1
                Color = clInactiveCaptionText
              end
              object RzDBEdit11: TRzDBEdit
                Left = 256
                Top = 47
                Width = 179
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleName_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit12: TRzDBEdit
                Left = 256
                Top = 69
                Width = 179
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleDescription_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit13: TRzDBEdit
                Left = 256
                Top = 91
                Width = 179
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleScoreType_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 4
              end
              object RzDBEdit14: TRzDBEdit
                Left = 256
                Top = 25
                Width = 179
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleCode_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 5
              end
              object RzDBSpinEdit1: TRzDBSpinEdit
                Left = 256
                Top = 113
                Width = 50
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleScoreHi_Dbl'
                Alignment = taRightJustify
                FrameController = rzcMain
                TabOrder = 6
                Value = 1
                FlatButtons = True
              end
              object RzDBSpinEdit2: TRzDBSpinEdit
                Left = 308
                Top = 113
                Width = 50
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleScoreLow_Dbl'
                Alignment = taRightJustify
                FrameController = rzcMain
                TabOrder = 7
                Value = 2
                FlatButtons = True
              end
              object RzDBEdit15: TRzDBEdit
                Left = 256
                Top = 135
                Width = 179
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleDisplayLabel_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 8
              end
              object RzDBNumericEdit4: TRzDBNumericEdit
                Left = 395
                Top = 113
                Width = 40
                Height = 21
                DataSource = dmMain.dsqryToolEvalScale
                DataField = 'toolEvalScaleDisplayOrder_Int'
                FrameController = rzcMain
                TabOrder = 9
                DisplayFormat = ',0;(,0)'
              end
            end
            object dxtJournals: TdxTabSheet
              Caption = 'Journals'
              object Label25: TLabel
                Left = 175
                Top = 4
                Width = 260
                Height = 18
                Alignment = taCenter
                AutoSize = False
                Caption = 'Journal Evidence'
                Color = clGradientInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label26: TLabel
                Left = 175
                Top = 25
                Width = 80
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
              object Label27: TLabel
                Left = 175
                Top = 47
                Width = 80
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
              object Label28: TLabel
                Left = 175
                Top = 69
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Volume'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label29: TLabel
                Left = 175
                Top = 91
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Author'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label30: TLabel
                Left = 175
                Top = 113
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Study Design'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label32: TLabel
                Left = 175
                Top = 135
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Heading'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label33: TLabel
                Left = 175
                Top = 157
                Width = 80
                Height = 21
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Publication Date'
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object grdJournals: TdxDBGrid
                Left = 0
                Top = 0
                Width = 172
                Height = 187
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'jnlCode_Str'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alLeft
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
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                object grdJournalsjnl_Str: TdxDBGridColumn
                  Caption = 'Journal'
                  Width = 123
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'jnl_Str'
                end
                object grdJournalsvolume_Str: TdxDBGridColumn
                  Caption = 'Volume'
                  Width = 49
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'volume_Str'
                end
              end
              object RzDBNavigator2: TRzDBNavigator
                Left = 0
                Top = 187
                Width = 435
                Height = 25
                Align = alBottom
                TabOrder = 1
                Color = clInactiveCaptionText
              end
              object RzDBEdit16: TRzDBEdit
                Left = 256
                Top = 25
                Width = 179
                Height = 21
                DataField = 'jnlCode_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit17: TRzDBEdit
                Left = 256
                Top = 47
                Width = 179
                Height = 21
                DataField = 'jnl_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit18: TRzDBEdit
                Left = 256
                Top = 69
                Width = 179
                Height = 21
                DataField = 'volume_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 4
              end
              object RzDBEdit19: TRzDBEdit
                Left = 256
                Top = 91
                Width = 179
                Height = 21
                DataField = 'author_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 5
              end
              object RzDBEdit20: TRzDBEdit
                Left = 256
                Top = 135
                Width = 179
                Height = 21
                DataField = 'jnlHeading_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 6
              end
              object RzDBDateTimeEdit2: TRzDBDateTimeEdit
                Left = 256
                Top = 157
                Width = 179
                Height = 21
                DataField = 'publication_Dte'
                FrameController = rzcMain
                TabOrder = 7
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
              object RzDBEdit21: TRzDBEdit
                Left = 256
                Top = 113
                Width = 179
                Height = 21
                DataField = 'studyDesign_Str'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clInactiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                FrameController = rzcMain
                ParentFont = False
                TabOrder = 8
              end
            end
          end
          object RzDBEdit3: TRzDBEdit
            Left = 71
            Top = 15
            Width = 64
            Height = 21
            DataSource = dmMain.dsqryTool
            DataField = 'toolCode_Str'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FrameController = rzcMain
            ParentFont = False
            TabOrder = 5
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 353
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object grdTools: TdxDBGrid
        Left = 0
        Top = 0
        Width = 208
        Height = 328
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'toolCode_Str'
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
        DataSource = dmMain.dsqryTool
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
        object grdToolstoolCode_Str: TdxDBGridColumn
          Caption = 'Code'
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'toolCode_Str'
        end
        object grdToolstoolName_Str: TdxDBGridColumn
          Caption = 'Name'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'toolName_Str'
        end
      end
      object RzDBNavigator5: TRzDBNavigator
        Left = 0
        Top = 328
        Width = 208
        Height = 25
        DataSource = dmMain.dsqryTool
        Align = alBottom
        TabOrder = 1
        Color = clInactiveCaptionText
      end
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 410
    Width = 678
    ButtonColor = clInactiveCaptionText
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
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
  object ActionList1: TActionList
    Left = 584
    Top = 16
    object atnAddCounselPlan: TAction
      Caption = 'New Plan'
    end
  end
end
